; ModuleID = '/llk/IR_all_yes/net/tipc/msg.c_pt.bc'
source_filename = "../net/tipc/msg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.126, %union.anon.127, [48 x i8], %union.anon.128, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.130, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.126 = type { ptr }
%union.anon.127 = type { i64 }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, ptr }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.132, i32, i32, i32, i16, i16, %union.anon.134, i32, %union.anon.135, %union.anon.136, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.132 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.anon.95 = type { ptr, ptr }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.msghdr = type { ptr, i32, %struct.iov_iter, %union.anon.105, i8, i32, i32, ptr }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.83, %union.anon.84 }
%union.anon.83 = type { ptr }
%union.anon.84 = type { i64 }
%union.anon.105 = type { ptr }
%struct.sk_buff_list = type { ptr, ptr }
%struct.tipc_msg = type { [15 x i32] }
%struct.tipc_socket_addr = type { i32, i32 }
%struct.tipc_uaddr = type { i16, i8, i8, %union.anon.152 }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { %struct.tipc_service_addr, i32 }
%struct.tipc_service_addr = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.96 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.tipc_net = type { [16 x i8], i32, i32, i32, [33 x i8], i32, i32, i8, %struct.spinlock, [512 x %struct.hlist_head], %struct.list_head, i32, i32, [3 x ptr], i32, [4 x ptr], %struct.spinlock, ptr, ptr, %struct.rhashtable, %struct.spinlock, ptr, ptr, %struct.atomic_t, i16, %struct.packet_type, ptr, %struct.work_struct, %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }

@one_page_mtu = dso_local constant { i32, [28 x i8] } { i32 3584, [28 x i8] zeroinitializer }, align 32
@tipc_msg_skb_clone._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.tipc_msg_skb_clone = private unnamed_addr constant [19 x i8] c"tipc_msg_skb_clone\00", align 1
@tipc_msg_skb_clone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.tipc_msg_skb_clone, ptr @.str.2, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013tipc: Failed to clone buffer chain\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/tipc/msg.c\00", [17 x i8] zeroinitializer }, align 32
@tipc_msg_skb_clone._entry_ptr = internal global ptr @tipc_msg_skb_clone._entry, section ".printk_index", align 4
@tipc_msg_assemble._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014tipc: Failed do assemble buffer\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tipc_msg_assemble\00", [46 x i8] zeroinitializer }, align 32
@tipc_msg_assemble._entry_ptr = internal global ptr @tipc_msg_assemble._entry, section ".printk_index", align 4
@tipc_msg_reassemble._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014tipc: Failed do clone local mcast rcv buffer\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tipc_msg_reassemble\00", [44 x i8] zeroinitializer }, align 32
@tipc_msg_reassemble._entry_ptr = internal global ptr @tipc_msg_reassemble._entry, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@msg_set_importance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.12, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014tipc: Trying to set illegal importance in message\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"msg_set_importance\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"net/tipc/msg.h\00", [17 x i8] zeroinitializer }, align 32
@msg_set_importance._entry_ptr = internal global ptr @msg_set_importance._entry, section ".printk_index", align 4
@tipc_net_id = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 12]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 12]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 10, i64 12]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 32, i64 6, i64 12]
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"one_page_mtu\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 54, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 681, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 753, i32 2 }
@___asan_gen_.55 = private constant [18 x i8] c"../net/tipc/msg.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 792, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 230, i32 6 }
@___asan_gen_.61 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 214, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [18 x i8] c"../net/tipc/msg.h\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 577, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 45, i32 7 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 695, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 723, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @msg_set_importance._entry, ptr @msg_set_importance._entry_ptr, ptr @tipc_msg_assemble._entry, ptr @tipc_msg_assemble._entry_ptr, ptr @tipc_msg_reassemble._entry, ptr @tipc_msg_reassemble._entry_ptr, ptr @tipc_msg_skb_clone._entry, ptr @tipc_msg_skb_clone._entry_ptr, ptr @one_page_mtu, ptr @tipc_msg_skb_clone._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @one_page_mtu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_msg_skb_clone._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_msg_skb_clone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_msg_assemble._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tipc_msg_reassemble._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msg_set_importance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tipc_buf_acquire(i32 noundef %size, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %size, 224
  %call.i = tail call ptr @__alloc_skb(i32 noundef %add, i32 noundef %gfp, i32 noundef 1, i32 noundef -1) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 208
  store ptr %add.ptr.i, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %3, i32 208
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %call1 = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef %size) #9
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %call.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @tipc_msg_init(i32 noundef %own_node, ptr nocapture noundef %m, i32 noundef %user, i32 noundef %type, i32 noundef %hsize, i32 noundef %dnode) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %m, i32 0, i32 %hsize)
  %1 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %m, align 4
  %and2.i.i = and i32 %2, 1966080
  %and.i.i = shl i32 %user, 25
  %shl.i.i = and i32 %and.i.i, 503316480
  %3 = shl i32 %hsize, 19
  %shl.i.i15 = and i32 %3, 31457280
  %or.i.i = or i32 %shl.i.i, %hsize
  %or.i.i14 = or i32 %or.i.i, %shl.i.i15
  %or.i.i17 = or i32 %or.i.i14, %and2.i.i
  %or.i = or i32 %or.i.i17, 1073741824
  store i32 %or.i, ptr %m, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %m, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %own_node, ptr %arrayidx.i.i, align 4
  %and.i.i18 = shl i32 %type, 29
  %arrayidx.i.i19 = getelementptr [15 x i32], ptr %m, i32 0, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i19, align 4
  %and2.i.i20 = and i32 %6, 536870911
  %or.i.i21 = or i32 %and2.i.i20, %and.i.i18
  store i32 %or.i.i21, ptr %arrayidx.i.i19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %hsize)
  %cmp = icmp ugt i32 %hsize, 24
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i22 = getelementptr [15 x i32], ptr %m, i32 0, i32 6
  %7 = ptrtoint ptr %arrayidx.i.i22 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %own_node, ptr %arrayidx.i.i22, align 4
  %arrayidx.i.i23 = getelementptr [15 x i32], ptr %m, i32 0, i32 7
  %8 = ptrtoint ptr %arrayidx.i.i23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %dnode, ptr %arrayidx.i.i23, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tipc_msg_create(i32 noundef %user, i32 noundef %type, i32 noundef %hdr_sz, i32 noundef %data_sz, i32 noundef %dnode, i32 noundef %onode, i32 noundef %dport, i32 noundef %oport, i32 noundef %errcode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %data_sz, %hdr_sz
  %add.i = add i32 %add, 224
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 1, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %0 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 208
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %3, i32 208
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add) #9
  %4 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %call.i.i, align 8
  %5 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i, align 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 %hdr_sz)
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %6, align 4
  %and2.i.i.i = and i32 %9, 1966080
  %and.i.i.i = shl i32 %user, 25
  %shl.i.i.i = and i32 %and.i.i.i, 503316480
  %10 = shl i32 %hdr_sz, 19
  %shl.i.i15.i = and i32 %10, 31457280
  %or.i.i.i = or i32 %shl.i.i.i, %hdr_sz
  %or.i.i14.i = or i32 %or.i.i.i, %shl.i.i15.i
  %or.i.i17.i = or i32 %or.i.i14.i, %and2.i.i.i
  %or.i.i = or i32 %or.i.i17.i, 1073741824
  store i32 %or.i.i, ptr %6, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %6, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %onode, ptr %arrayidx.i.i.i, align 4
  %and.i.i18.i = shl i32 %type, 29
  %arrayidx.i.i19.i = getelementptr [15 x i32], ptr %6, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i19.i, align 4
  %and2.i.i20.i = and i32 %13, 536870911
  %or.i.i21.i = or i32 %and2.i.i20.i, %and.i.i18.i
  store i32 %or.i.i21.i, ptr %arrayidx.i.i19.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %hdr_sz)
  %cmp.i = icmp ugt i32 %hdr_sz, 24
  br i1 %cmp.i, label %if.then.i16, label %if.end.tipc_msg_init.exit_crit_edge

if.end.tipc_msg_init.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_msg_init.exit

if.then.i16:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i22.i = getelementptr [15 x i32], ptr %6, i32 0, i32 6
  %14 = ptrtoint ptr %arrayidx.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %onode, ptr %arrayidx.i.i22.i, align 4
  %arrayidx.i.i23.i = getelementptr [15 x i32], ptr %6, i32 0, i32 7
  %15 = ptrtoint ptr %arrayidx.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dnode, ptr %arrayidx.i.i23.i, align 4
  br label %tipc_msg_init.exit

tipc_msg_init.exit:                               ; preds = %if.then.i16, %if.end.tipc_msg_init.exit_crit_edge
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %6, align 4
  %and.i = and i32 %17, -131072
  %or.i = or i32 %and.i, %add
  store i32 %or.i, ptr %6, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %6, i32 0, i32 4
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %oport, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i17 = getelementptr [15 x i32], ptr %6, i32 0, i32 5
  %19 = ptrtoint ptr %arrayidx.i.i17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %dport, ptr %arrayidx.i.i17, align 4
  %and.i.i = shl i32 %errcode, 25
  %shl.i.i = and i32 %and.i.i, 503316480
  %20 = ptrtoint ptr %arrayidx.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i.i19.i, align 4
  %and2.i.i = and i32 %21, -503316481
  %or.i.i19 = or i32 %and2.i.i, %shl.i.i
  store i32 %or.i.i19, ptr %arrayidx.i.i19.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %tipc_msg_init.exit, %entry.cleanup_crit_edge
  ret ptr %call.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_buf_append(ptr nocapture noundef %headbuf, ptr nocapture noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  %head = alloca ptr, align 4
  %delta = alloca i32, align 4
  %headstolen = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %head) #9
  %0 = ptrtoint ptr %headbuf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %headbuf, align 4
  %2 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %head, align 4
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %buf, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %delta) #9
  %5 = ptrtoint ptr %delta to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %delta, align 4, !annotation !54
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %headstolen) #9
  %6 = ptrtoint ptr %headstolen to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %headstolen, align 1, !annotation !54
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %4, align 8
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %8, align 4
  %14 = lshr i32 %13, 19
  %shl.i = and i32 %14, 60
  %call3 = tail call ptr @skb_pull(ptr noundef nonnull %4, i32 noundef %shl.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %10)
  %cmp = icmp ult i32 %10, 536870912
  %tobool5.not = icmp eq ptr %1, null
  br i1 %cmp, label %if.then4, label %if.end28

if.then4:                                         ; preds = %if.end
  br i1 %tobool5.not, label %if.end9, label %if.then4.err_crit_edge, !prof !55

if.then4.err_crit_edge:                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end9:                                          ; preds = %if.then4
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %buf, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 17
  %16 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i, align 4
  %frag_list.i = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %frag_list.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %frag_list.i, align 8
  %cmp.i.not = icmp eq ptr %19, null
  br i1 %cmp.i.not, label %if.end9.if.end14_crit_edge, label %land.lhs.true

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end9
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 7
  %20 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data_len.i, align 8
  %call.i = tail call ptr @__pskb_pull_tail(ptr noundef nonnull %4, i32 noundef %21) #9
  %tobool.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.not, label %land.lhs.true.err_crit_edge, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end14:                                         ; preds = %land.lhs.true.if.end14_crit_edge, %if.end9.if.end14_crit_edge
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 12
  %22 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %if.end14.if.end26_crit_edge, label %skb_cloned.exit.i

if.end14.if.end26_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

skb_cloned.exit.i:                                ; preds = %if.end14
  %23 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %end.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %24, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #9
  %25 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %26, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.if.end26_crit_edge, label %if.then6.i

skb_cloned.exit.i.if.end26_crit_edge:             ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then6.i:                                       ; preds = %skb_cloned.exit.i
  %call7.i = tail call ptr @skb_copy(ptr noundef nonnull %4, i32 noundef 2592) #9
  %tobool8.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool8.not.i, label %skb_unshare.exit, label %if.then11.i, !prof !56

if.then11.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @consume_skb(ptr noundef nonnull %4) #9
  br label %if.end26

skb_unshare.exit:                                 ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree_skb_reason(ptr noundef nonnull %4, i32 noundef 0) #9
  br label %err

if.end26:                                         ; preds = %if.then11.i, %skb_cloned.exit.i.if.end26_crit_edge, %if.end14.if.end26_crit_edge
  %skb.addr.0.i.ph = phi ptr [ %4, %if.end14.if.end26_crit_edge ], [ %call7.i, %if.then11.i ], [ %4, %skb_cloned.exit.i.if.end26_crit_edge ]
  %27 = ptrtoint ptr %headbuf to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %skb.addr.0.i.ph, ptr %headbuf, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.ph, i32 0, i32 3
  %28 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %cb, align 8
  br label %cleanup

if.end28:                                         ; preds = %if.end
  br i1 %tobool5.not, label %if.end28.err_crit_edge, label %if.end31

if.end28.err_crit_edge:                           ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end31:                                         ; preds = %if.end28
  %call32 = call zeroext i1 @skb_try_coalesce(ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %headstolen, ptr noundef nonnull %delta) #9
  br i1 %call32, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %headstolen to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %headstolen, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool34 = icmp ne i8 %30, 0
  call void @kfree_skb_partial(ptr noundef nonnull %4, i1 noundef zeroext %tobool34) #9
  br label %if.end52

if.else:                                          ; preds = %if.end31
  %cb35 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %end.i.i106 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 17
  %31 = ptrtoint ptr %end.i.i106 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i.i106, align 4
  %frag_list.i107 = getelementptr inbounds %struct.skb_shared_info, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %frag_list.i107 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %frag_list.i107, align 8
  %cmp.i108.not = icmp eq ptr %34, null
  br i1 %cmp.i108.not, label %if.else.if.end43_crit_edge, label %if.else41

if.else.if.end43_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.else41:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %cb35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cb35, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %if.else.if.end43_crit_edge
  %.sink = phi ptr [ %36, %if.else41 ], [ %frag_list.i107, %if.else.if.end43_crit_edge ]
  %37 = ptrtoint ptr %.sink to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %4, ptr %.sink, align 8
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 20
  %38 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %truesize, align 8
  %truesize44 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %40 = ptrtoint ptr %truesize44 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %truesize44, align 8
  %add = add i32 %41, %39
  store i32 %add, ptr %truesize44, align 8
  %len = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 6
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %44 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_len, align 8
  %add45 = add i32 %45, %43
  store i32 %add45, ptr %data_len, align 8
  %46 = load i32, ptr %len, align 4
  %len47 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %47 = ptrtoint ptr %len47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %len47, align 4
  %add48 = add i32 %48, %46
  store i32 %add48, ptr %len47, align 4
  %49 = ptrtoint ptr %cb35 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %4, ptr %cb35, align 8
  br label %if.end52

if.end52:                                         ; preds = %if.end43, %if.then33
  %shr.i.i.mask = and i32 %10, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.i.i.mask)
  %cmp53 = icmp eq i32 %shr.i.i.mask, 1073741824
  br i1 %cmp53, label %if.then54, label %if.end71

if.then54:                                        ; preds = %if.end52
  %50 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 26
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %50, align 2
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %50, align 2
  %call57 = call zeroext i1 @tipc_msg_validate(ptr noundef nonnull %head)
  br i1 %call57, label %if.end67, label %if.then54.err_crit_edge, !prof !55

if.then54.err_crit_edge:                          ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end67:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %head, align 4
  %54 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %buf, align 4
  %cb68 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 3
  %55 = ptrtoint ptr %cb68 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %cb68, align 8
  %56 = ptrtoint ptr %headbuf to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %headbuf, align 4
  br label %cleanup

if.end71:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %buf, align 4
  br label %cleanup

err:                                              ; preds = %if.then54.err_crit_edge, %if.end28.err_crit_edge, %skb_unshare.exit, %land.lhs.true.err_crit_edge, %if.then4.err_crit_edge, %entry.err_crit_edge
  %58 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %buf, align 4
  call void @kfree_skb_reason(ptr noundef %59, i32 noundef 0) #9
  %60 = ptrtoint ptr %headbuf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %headbuf, align 4
  call void @kfree_skb_reason(ptr noundef %61, i32 noundef 0) #9
  %62 = ptrtoint ptr %headbuf to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %headbuf, align 4
  %63 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %buf, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end71, %if.end67, %if.end26
  %retval.0 = phi i32 [ 0, %err ], [ 0, %if.end26 ], [ 1, %if.end67 ], [ 0, %if.end71 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %headstolen) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %delta) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @skb_try_coalesce(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_partial(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_msg_validate(ptr nocapture noundef %_skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %_skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_skb, align 4
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %truesize, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i, align 4
  %6 = add i32 %5, 1024
  %mul.i = and i32 %6, -1024
  %div = udiv i32 %3, %mul.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %div)
  %cmp = icmp ugt i32 %div, 3
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge, !prof !56

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %call2 = tail call ptr @skb_copy_expand(ptr noundef %1, i32 noundef 208, i32 noundef 0, i32 noundef 2592) #9
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %_skb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_skb, align 4
  tail call void @kfree_skb_reason(ptr noundef %8, i32 noundef 0) #9
  %9 = ptrtoint ptr %_skb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %_skb, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  %skb.0 = phi ptr [ %call2, %if.end ], [ %1, %entry.if.end5_crit_edge ]
  %10 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 26
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %10, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool6.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool6.not, label %if.end14, label %if.end5.cleanup_crit_edge, !prof !55

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %12 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 7
  %14 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %13, %15
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 24
  br i1 %cmp.not.i, label %if.end.i, label %if.end14.if.end25_crit_edge, !prof !56

if.end14.if.end25_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %13)
  %cmp3.i = icmp ult i32 %13, 24
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !56

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 24, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb.0, i32 noundef %sub.i) #9
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end25_crit_edge, !prof !56

pskb_may_pull.exit.if.end25_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end25:                                         ; preds = %pskb_may_pull.exit.if.end25_crit_edge, %if.end14.if.end25_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %20 = lshr i32 %19, 19
  %shl.i = and i32 %20, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %shl.i)
  %cmp28 = icmp ult i32 %shl.i, 24
  br i1 %cmp28, label %if.end25.cleanup_crit_edge, label %if.end37, !prof !58

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %if.end25
  %21 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i.i, align 4
  %23 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i117 = sub i32 %22, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %sub.i.i117)
  %cmp.not.i118 = icmp ugt i32 %shl.i, %sub.i.i117
  br i1 %cmp.not.i118, label %if.end.i120, label %if.end37.if.end48_crit_edge, !prof !56

if.end37.if.end48_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end.i120:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %shl.i)
  %cmp3.i119 = icmp ult i32 %22, %shl.i
  br i1 %cmp3.i119, label %if.end.i120.cleanup_crit_edge, label %pskb_may_pull.exit126, !prof !56

if.end.i120.cleanup_crit_edge:                    ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

pskb_may_pull.exit126:                            ; preds = %if.end.i120
  %sub.i121 = sub i32 %shl.i, %sub.i.i117
  %call13.i122 = tail call ptr @__pskb_pull_tail(ptr noundef %skb.0, i32 noundef %sub.i121) #9
  %cmp14.i123.not = icmp eq ptr %call13.i122, null
  br i1 %cmp14.i123.not, label %pskb_may_pull.exit126.cleanup_crit_edge, label %pskb_may_pull.exit126.if.end48_crit_edge, !prof !56

pskb_may_pull.exit126.if.end48_crit_edge:         ; preds = %pskb_may_pull.exit126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

pskb_may_pull.exit126.cleanup_crit_edge:          ; preds = %pskb_may_pull.exit126
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %pskb_may_pull.exit126.if.end48_crit_edge, %if.end37.if.end48_crit_edge
  %25 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 4
  %shr.i.i.mask = and i32 %28, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %shr.i.i.mask)
  %cmp51.not = icmp eq i32 %shr.i.i.mask, 1073741824
  br i1 %cmp51.not, label %if.end59, label %if.end48.cleanup_crit_edge, !prof !55

if.end48.cleanup_crit_edge:                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59:                                         ; preds = %if.end48
  %and.i.i = and i32 %28, 131071
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %shl.i)
  %cmp61 = icmp ult i32 %and.i.i, %shl.i
  %sub = sub nsw i32 %and.i.i, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 66000, i32 %sub)
  %cmp70 = icmp ugt i32 %sub, 66000
  %or.cond114 = or i1 %cmp61, %cmp70
  br i1 %or.cond114, label %if.end59.cleanup_crit_edge, label %if.end78, !prof !59

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end78:                                         ; preds = %if.end59
  %29 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %and.i.i)
  %cmp79 = icmp ult i32 %30, %and.i.i
  br i1 %cmp79, label %if.end78.cleanup_crit_edge, label %if.end87, !prof !56

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end87:                                         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %31)
  %bf.load90 = load i8, ptr %10, align 2
  %bf.set = or i8 %bf.load90, -128
  store i8 %bf.set, ptr %10, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %if.end78.cleanup_crit_edge, %if.end59.cleanup_crit_edge, %if.end48.cleanup_crit_edge, %pskb_may_pull.exit126.cleanup_crit_edge, %if.end.i120.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end87 ], [ false, %if.then.cleanup_crit_edge ], [ true, %if.end5.cleanup_crit_edge ], [ false, %pskb_may_pull.exit.cleanup_crit_edge ], [ false, %if.end25.cleanup_crit_edge ], [ false, %pskb_may_pull.exit126.cleanup_crit_edge ], [ false, %if.end48.cleanup_crit_edge ], [ false, %if.end59.cleanup_crit_edge ], [ false, %if.end78.cleanup_crit_edge ], [ false, %if.end.i.cleanup_crit_edge ], [ false, %if.end.i120.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_msg_append(ptr nocapture noundef readonly %_hdr, ptr noundef %m, i32 noundef %dlen, i32 noundef %mss, ptr noundef %txq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %prev.i = getelementptr inbounds %struct.anon.95, ptr %txq, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i = icmp eq ptr %1, %txq
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %1
  %tobool.not = icmp eq ptr %spec.store.select.i, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i.i.i = lshr i32 %5, 10
  %div1.i = and i32 %and.i.i.i, 127
  %add.i = add nuw nsw i32 %div1.i, 1
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %add.i, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %add.i72 = add i32 %mss, 224
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %txq, i32 0, i32 1
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %m, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %if.end23.do.body_crit_edge, %cond.end
  %skb.0 = phi ptr [ %spec.store.select.i, %cond.end ], [ %skb.1, %if.end23.do.body_crit_edge ]
  %total.0 = phi i32 [ %cond, %cond.end ], [ %add29, %if.end23.do.body_crit_edge ]
  %rem.0 = phi i32 [ %dlen, %cond.end ], [ %sub26, %if.end23.do.body_crit_edge ]
  %tobool3.not = icmp eq ptr %skb.0, null
  br i1 %tobool3.not, label %do.body.if.then_crit_edge, label %lor.lhs.false

do.body.if.then_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %do.body
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 6
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %mss)
  %cmp.not = icmp ult i32 %7, %mss
  br i1 %cmp.not, label %lor.lhs.false.if.end11_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.if.end11_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %do.body.if.then_crit_edge
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i72, i32 noundef 3264, i32 noundef 1, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 208
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %11, i32 208
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %mss) #9
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %call.i.i, align 8
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 4, i32 0, i32 1
  %13 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i73 = icmp eq ptr %14, null
  br i1 %tobool.not.i73, label %do.body.i, label %if.then.i74

if.then.i74:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %14(ptr noundef nonnull %call.i.i) #9
  %15 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %destructor.i, align 4
  %16 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %16, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.end
  %18 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %tobool3.not.i = icmp eq ptr %20, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !55

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #9, !srcloc !60
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i74
  tail call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef 24) #9
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i, align 4
  %23 = call ptr @memcpy(ptr %22, ptr %_hdr, i32 24)
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %22, align 4
  %and2.i.i = and i32 %25, -31588352
  %or.i = or i32 %and2.i.i, 12582936
  store i32 %or.i, ptr %22, align 4
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %28 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %txq, ptr %call.i.i, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %call.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %prev10.i.i.i, align 4
  store volatile ptr %call.i.i, ptr %prev.i, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %call.i.i, ptr %27, align 4
  %31 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %32, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %add = add i32 %total.0, 1
  br label %if.end11

if.end11:                                         ; preds = %skb_orphan.exit, %lor.lhs.false.if.end11_crit_edge
  %skb.1 = phi ptr [ %call.i.i, %skb_orphan.exit ], [ %skb.0, %lor.lhs.false.if.end11_crit_edge ]
  %total.1 = phi i32 [ %add, %skb_orphan.exit ], [ %total.0, %lor.lhs.false.if.end11_crit_edge ]
  %data.i77 = getelementptr inbounds %struct.sk_buff, ptr %skb.1, i32 0, i32 19
  %33 = ptrtoint ptr %data.i77 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i77, align 4
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %and.i.i.i78 = lshr i32 %36, 10
  %div1.i79 = and i32 %and.i.i.i78, 127
  %and.i.i = and i32 %36, 131071
  %sub = sub i32 %mss, %and.i.i
  %37 = tail call i32 @llvm.umin.i32(i32 %rem.0, i32 %sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp9.i.i = icmp slt i32 %37, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end11
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !55

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end11
  %add.ptr = getelementptr i8, ptr %34, i32 %and.i.i
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %37, i1 noundef zeroext false) #9
  %call3.i = tail call i32 @_copy_from_iter(ptr noundef %add.ptr, i32 noundef %37, ptr noundef %msg_iter) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %call3.i)
  %cmp21.not = icmp eq i32 %37, %call3.i
  br i1 %cmp21.not, label %if.end23, label %if.then.i.i.i.cleanup_crit_edge

if.then.i.i.i.cleanup_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.then.i.i.i
  %add24 = add nuw i32 %37, %and.i.i
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %34, align 4
  %and.i81 = and i32 %39, -131072
  %or.i82 = or i32 %and.i81, %add24
  store i32 %or.i82, ptr %34, align 4
  %call25 = tail call ptr @skb_put(ptr noundef nonnull %skb.1, i32 noundef %37) #9
  %sub26 = sub i32 %rem.0, %37
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %34, align 4
  %and.i.i.i83 = lshr i32 %41, 10
  %div1.i84 = and i32 %and.i.i.i83, 127
  %sub28 = sub nsw i32 %div1.i84, %div1.i79
  %add29 = add i32 %sub28, %total.1
  %cmp30 = icmp sgt i32 %sub26, 0
  br i1 %cmp30, label %if.end23.do.body_crit_edge, label %do.end

if.end23.do.body_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.end:                                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  %sub31 = sub i32 %add29, %cond
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.then.i.i.i.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub31, %do.end ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ -12, %if.then.cleanup_crit_edge ], [ -14, %if.then.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy_expand(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_msg_fragment(ptr noundef %skb, ptr nocapture noundef readonly %hdr, i32 noundef %pktmax, ptr noundef %frags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i, label %entry.if.end_crit_edge, label %cond.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.true.i:                                      ; preds = %entry
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %1) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.cleanup_crit_edge, label %cond.true.i.if.end_crit_edge

cond.true.i.if.end_crit_edge:                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.true.i.cleanup_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %cond.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %data1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and.i.i = and i32 %5, 131071
  %sub = add i32 %pktmax, -40
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %sub)
  %cmp.not = icmp sle i32 %and.i.i, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool4.not = icmp eq i32 %sub, 0
  %or.cond = or i1 %tobool4.not, %cmp.not
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %and.i.i.frozen = freeze i32 %and.i.i
  %div = sdiv i32 %and.i.i.frozen, %sub
  %add = add nsw i32 %div, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %div)
  %cmp7.not66 = icmp slt i32 %div, 0
  br i1 %cmp7.not66, label %if.end6.cleanup_crit_edge, label %for.body.lr.ph

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end6
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %frags, i32 0, i32 1
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %frags, i32 0, i32 1
  %and.i.i58 = and i32 %add, 65535
  br label %for.body

for.body:                                         ; preds = %skb_orphan.exit.for.body_crit_edge, %for.body.lr.ph
  %data.068 = phi ptr [ %3, %for.body.lr.ph ], [ %add.ptr, %skb_orphan.exit.for.body_crit_edge ]
  %pktno.067 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %skb_orphan.exit.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pktno.067, i32 %div)
  %cmp8.not = icmp sgt i32 %pktno.067, %div
  %6 = mul i32 %div, %sub
  %rem.decomposed = sub i32 %and.i.i.frozen, %6
  %eat.0 = select i1 %cmp8.not, i32 %rem.decomposed, i32 %sub
  %add11 = add i32 %eat.0, 40
  %add.i = add i32 %eat.0, 264
  %call.i.i51 = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 1, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i.i51, null
  br i1 %tobool.not.i, label %error, label %if.end15

if.end15:                                         ; preds = %for.body
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i51, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 208
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i51, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %10, i32 208
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i51, i32 noundef %add11) #9
  %11 = ptrtoint ptr %call.i.i51 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %call.i.i51, align 8
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i51, i32 0, i32 4, i32 0, i32 1
  %12 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i52 = icmp eq ptr %13, null
  br i1 %tobool.not.i52, label %do.body.i, label %if.then.i53

if.then.i53:                                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %13(ptr noundef nonnull %call.i.i51) #9
  %14 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %destructor.i, align 4
  %15 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i51, i32 0, i32 1
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %15, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.end15
  %17 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i51, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool3.not.i = icmp eq ptr %19, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !55

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #9, !srcloc !60
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i53
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %call.i.i51 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %frags, ptr %call.i.i51, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %call.i.i51, i32 0, i32 1
  %23 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %prev10.i.i.i, align 4
  store volatile ptr %call.i.i51, ptr %prev.i.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call.i.i51, ptr %21, align 4
  %25 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %26, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %29 = call ptr @memcpy(ptr %28, ptr %hdr, i32 40)
  %30 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 40
  %31 = call ptr @memcpy(ptr %add.ptr.i, ptr %data.068, i32 %eat.0)
  %add.ptr = getelementptr i8, ptr %data.068, i32 %eat.0
  %32 = load ptr, ptr %data.i.i, align 4
  %and.i.i57 = shl i32 %pktno.067, 16
  %arrayidx.i.i = getelementptr [15 x i32], ptr %32, i32 0, i32 4
  %or.i.i61 = or i32 %and.i.i57, %and.i.i58
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or.i.i61, ptr %arrayidx.i.i, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %32, align 4
  %and.i = and i32 %35, -131072
  %or.i = or i32 %and.i, %add11
  store i32 %or.i, ptr %32, align 4
  %inc = add i32 %pktno.067, 1
  %cmp7.not = icmp sgt i32 %inc, %add
  br i1 %cmp7.not, label %skb_orphan.exit.cleanup_crit_edge, label %skb_orphan.exit.for.body_crit_edge

skb_orphan.exit.for.body_crit_edge:               ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

skb_orphan.exit.cleanup_crit_edge:                ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

error:                                            ; preds = %for.body
  %36 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %frags, align 4
  %cmp.i.i2.i = icmp eq ptr %37, %frags
  %tobool.not.i13.i = icmp eq ptr %37, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %error.__skb_queue_purge.exit_crit_edge, label %error.while.body.i_crit_edge

error.while.body.i_crit_edge:                     ; preds = %error
  br label %while.body.i

error.__skb_queue_purge.exit_crit_edge:           ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_queue_purge.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %error.while.body.i_crit_edge
  %38 = phi ptr [ %48, %while.body.i.while.body.i_crit_edge ], [ %37, %error.while.body.i_crit_edge ]
  %39 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %40, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %38, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %38, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon, ptr %42, i32 0, i32 1
  %45 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %44, ptr %prev17.i.i.i, align 4
  %46 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %42, ptr %44, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %38, i32 noundef 0) #9
  %47 = ptrtoint ptr %frags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %frags, align 4
  %cmp.i.i.i = icmp eq ptr %48, %frags
  %tobool.not.i1.i = icmp eq ptr %48, null
  %tobool.not.i.i63 = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i63, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %error.__skb_queue_purge.exit_crit_edge
  %49 = ptrtoint ptr %frags to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %frags, ptr %frags, align 4
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %frags, ptr %prev.i.i, align 4
  %51 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %qlen.i.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %__skb_queue_purge.exit, %skb_orphan.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %cond.true.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %__skb_queue_purge.exit ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %cond.true.i.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %skb_orphan.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tipc_msg_build(ptr nocapture noundef %mhdr, ptr noundef %m, i32 noundef %offset, i32 noundef %dsz, i32 noundef %pktmax, ptr noundef %list) local_unnamed_addr #0 align 64 {
entry:
  %pkthdr = alloca %struct.tipc_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mhdr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mhdr, align 4
  %2 = lshr i32 %1, 19
  %shl.i = and i32 %2, 60
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %pkthdr) #9
  %3 = getelementptr inbounds i8, ptr %pkthdr, i32 40
  %4 = call ptr @memset(ptr %3, i32 255, i32 20)
  %add = add i32 %shl.i, %dsz
  %and.i = and i32 %1, -131072
  %or.i = or i32 %add, %and.i
  %5 = ptrtoint ptr %mhdr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i, ptr %mhdr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %pktmax)
  %cmp.not = icmp sgt i32 %add, %pktmax
  br i1 %cmp.not, label %if.end26, label %if.then, !prof !56

if.then:                                          ; preds = %entry
  %add.i = add i32 %add, 224
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 3264, i32 noundef 1, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then12, label %if.end22

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 66060, i32 %pktmax)
  %cmp13.not = icmp eq i32 %pktmax, 66060
  br i1 %cmp13.not, label %if.end, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then12
  %call15 = tail call i32 @tipc_msg_build(ptr noundef %mhdr, ptr noundef %m, i32 noundef %offset, i32 noundef %dsz, i32 noundef 3584, ptr noundef %list)
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %dsz)
  %cmp16.not = icmp eq i32 %call15, %dsz
  br i1 %cmp16.not, label %if.end18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call zeroext i1 @tipc_msg_assemble(ptr noundef %list)
  %dsz. = select i1 %call19, i32 %dsz, i32 -12
  br label %cleanup

if.end22:                                         ; preds = %if.then
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 208
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %9, i32 208
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %add) #9
  %10 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %call.i.i, align 8
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 4, i32 0, i32 1
  %11 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i160 = icmp eq ptr %12, null
  br i1 %tobool.not.i160, label %do.body.i, label %if.then.i161

if.then.i161:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %12(ptr noundef nonnull %call.i.i) #9
  %13 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %destructor.i, align 4
  %14 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %14, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.end22
  %16 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %tobool3.not.i = icmp eq ptr %18, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !55

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #9, !srcloc !60
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i161
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %list, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %list, ptr %call.i.i, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %call.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %prev10.i.i.i, align 4
  store volatile ptr %call.i.i, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call.i.i, ptr %20, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %24 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %25, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  %26 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i, align 4
  %28 = call ptr @memcpy(ptr %27, ptr %mhdr, i32 %shl.i)
  %msg_iter = getelementptr inbounds %struct.msghdr, ptr %m, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dsz)
  %cmp9.i.i.i = icmp slt i32 %dsz, 0
  br i1 %cmp9.i.i.i, label %land.rhs16.i.i.i, label %if.then.i.i.i.i

land.rhs16.i.i.i:                                 ; preds = %skb_orphan.exit
  %.b1.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge, label %if.then27.i.i.i, !prof !55

land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge: ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_iter.exit.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %copy_from_iter.exit.i

if.then.i.i.i.i:                                  ; preds = %skb_orphan.exit
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %add.ptr = getelementptr i8, ptr %30, i32 %shl.i
  tail call void @__check_object_size(ptr noundef %add.ptr, i32 noundef %dsz, i1 noundef zeroext false) #9
  %call3.i.i = tail call i32 @_copy_from_iter(ptr noundef %add.ptr, i32 noundef %dsz, ptr noundef %msg_iter) #9
  br label %copy_from_iter.exit.i

copy_from_iter.exit.i:                            ; preds = %if.then.i.i.i.i, %if.then27.i.i.i, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call3.i.i, %if.then.i.i.i.i ], [ 0, %if.then27.i.i.i ], [ 0, %land.rhs16.i.i.i.copy_from_iter.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %dsz)
  %cmp.i = icmp eq i32 %retval.0.i.i, %dsz
  br i1 %cmp.i, label %copy_from_iter.exit.i.cleanup_crit_edge, label %copy_from_iter_full.exit, !prof !55

copy_from_iter.exit.i.cleanup_crit_edge:          ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_from_iter_full.exit:                         ; preds = %copy_from_iter.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iov_iter_revert(ptr noundef %msg_iter, i32 noundef %retval.0.i.i) #9
  br label %error

if.end26:                                         ; preds = %entry
  %arrayidx.i.i = getelementptr [15 x i32], ptr %mhdr, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i, align 4
  %arrayidx.i.i162 = getelementptr [15 x i32], ptr %mhdr, i32 0, i32 7
  %33 = ptrtoint ptr %arrayidx.i.i162 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i162, align 4
  %35 = getelementptr inbounds i8, ptr %pkthdr, i32 8
  %36 = call ptr @memset(ptr %35, i32 0, i32 32)
  %arrayidx.i.i.i = getelementptr inbounds [15 x i32], ptr %pkthdr, i32 0, i32 3
  %37 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %32, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i19.i = getelementptr inbounds [15 x i32], ptr %pkthdr, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx.i.i19.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %arrayidx.i.i19.i, align 4
  %arrayidx.i.i22.i = getelementptr inbounds [15 x i32], ptr %pkthdr, i32 0, i32 6
  %39 = ptrtoint ptr %arrayidx.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %32, ptr %arrayidx.i.i22.i, align 4
  %arrayidx.i.i23.i = getelementptr inbounds [15 x i32], ptr %pkthdr, i32 0, i32 7
  %40 = ptrtoint ptr %arrayidx.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %34, ptr %arrayidx.i.i23.i, align 4
  %or.i166 = or i32 %pktmax, 1497366528
  %41 = ptrtoint ptr %pkthdr to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i166, ptr %pkthdr, align 4
  %arrayidx.i.i167 = getelementptr inbounds [15 x i32], ptr %pkthdr, i32 0, i32 4
  %42 = ptrtoint ptr %arrayidx.i.i167 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 65536, ptr %arrayidx.i.i167, align 4
  %call29 = tail call fastcc i32 @msg_importance(ptr noundef %mhdr), !range !61
  call fastcc void @msg_set_importance(ptr noundef nonnull %pkthdr, i32 noundef %call29)
  %call30 = tail call ptr @tipc_buf_acquire(i32 noundef %pktmax, i32 noundef 3264)
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end26.cleanup_crit_edge, label %if.end33

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %if.end26
  %destructor.i169 = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 4, i32 0, i32 1
  %43 = ptrtoint ptr %destructor.i169 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %destructor.i169, align 4
  %tobool.not.i170 = icmp eq ptr %44, null
  br i1 %tobool.not.i170, label %do.body.i173, label %if.then.i171

if.then.i171:                                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %44(ptr noundef nonnull %call30) #9
  %45 = ptrtoint ptr %destructor.i169 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %destructor.i169, align 4
  %46 = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %46, align 4
  br label %skb_orphan.exit175

do.body.i173:                                     ; preds = %if.end33
  %48 = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 1
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %tobool3.not.i172 = icmp eq ptr %50, null
  br i1 %tobool3.not.i172, label %do.body.i173.skb_orphan.exit175_crit_edge, label %do.body7.i174, !prof !55

do.body.i173.skb_orphan.exit175_crit_edge:        ; preds = %do.body.i173
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_orphan.exit175

do.body7.i174:                                    ; preds = %do.body.i173
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #9, !srcloc !60
  unreachable

skb_orphan.exit175:                               ; preds = %do.body.i173.skb_orphan.exit175_crit_edge, %if.then.i171
  %prev.i.i176 = getelementptr inbounds %struct.sk_buff_list, ptr %list, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i.i176 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i176, align 4
  %53 = ptrtoint ptr %call30 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %list, ptr %call30, align 8
  %prev10.i.i.i177 = getelementptr inbounds %struct.anon, ptr %call30, i32 0, i32 1
  %54 = ptrtoint ptr %prev10.i.i.i177 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %prev10.i.i.i177, align 4
  store volatile ptr %call30, ptr %prev.i.i176, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %call30, ptr %52, align 4
  %qlen.i.i.i178 = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %56 = ptrtoint ptr %qlen.i.i.i178 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %qlen.i.i.i178, align 4
  %add.i.i.i179 = add i32 %57, 1
  store volatile i32 %add.i.i.i179, ptr %qlen.i.i.i178, align 4
  %data34 = getelementptr inbounds %struct.sk_buff, ptr %call30, i32 0, i32 19
  %58 = ptrtoint ptr %data34 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %data34, align 4
  %60 = call ptr @memcpy(ptr %59, ptr %pkthdr, i32 40)
  %add.ptr35 = getelementptr i8, ptr %59, i32 40
  %sub = add i32 %pktmax, -40
  %61 = load ptr, ptr %data34, align 4
  %add.ptr.i = getelementptr i8, ptr %61, i32 40
  %62 = call ptr @memcpy(ptr %add.ptr.i, ptr %mhdr, i32 %shl.i)
  %add.ptr36 = getelementptr i8, ptr %add.ptr35, i32 %shl.i
  %sub37 = sub i32 %sub, %shl.i
  %msg_iter41 = getelementptr inbounds %struct.msghdr, ptr %m, i32 0, i32 2
  br label %do.body

do.body:                                          ; preds = %skb_orphan.exit188, %skb_orphan.exit175
  %pktrem.0 = phi i32 [ %sub37, %skb_orphan.exit175 ], [ %sub60, %skb_orphan.exit188 ]
  %skb.0 = phi ptr [ %call30, %skb_orphan.exit175 ], [ %call54, %skb_orphan.exit188 ]
  %drem.0 = phi i32 [ %dsz, %skb_orphan.exit175 ], [ %sub45, %skb_orphan.exit188 ]
  %pktno.0 = phi i32 [ 1, %skb_orphan.exit175 ], [ %inc, %skb_orphan.exit188 ]
  %pktpos.0 = phi ptr [ %add.ptr36, %skb_orphan.exit175 ], [ %add.ptr59, %skb_orphan.exit188 ]
  %63 = tail call i32 @llvm.smin.i32(i32 %drem.0, i32 %pktrem.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp9.i.i.i145 = icmp slt i32 %63, 0
  br i1 %cmp9.i.i.i145, label %land.rhs16.i.i.i148, label %if.then.i.i.i.i151

land.rhs16.i.i.i148:                              ; preds = %do.body
  %.b1.i.i.i147 = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i.i147, label %land.rhs16.i.i.i148.copy_from_iter.exit.i156_crit_edge, label %if.then27.i.i.i149, !prof !55

land.rhs16.i.i.i148.copy_from_iter.exit.i156_crit_edge: ; preds = %land.rhs16.i.i.i148
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_iter.exit.i156

if.then27.i.i.i149:                               ; preds = %land.rhs16.i.i.i148
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %copy_from_iter.exit.i156

if.then.i.i.i.i151:                               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__check_object_size(ptr noundef %pktpos.0, i32 noundef %63, i1 noundef zeroext false) #9
  %call3.i.i152 = tail call i32 @_copy_from_iter(ptr noundef %pktpos.0, i32 noundef %63, ptr noundef %msg_iter41) #9
  br label %copy_from_iter.exit.i156

copy_from_iter.exit.i156:                         ; preds = %if.then.i.i.i.i151, %if.then27.i.i.i149, %land.rhs16.i.i.i148.copy_from_iter.exit.i156_crit_edge
  %retval.0.i.i154 = phi i32 [ %call3.i.i152, %if.then.i.i.i.i151 ], [ 0, %if.then27.i.i.i149 ], [ 0, %land.rhs16.i.i.i148.copy_from_iter.exit.i156_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i154, i32 %63)
  %cmp.i155 = icmp eq i32 %retval.0.i.i154, %63
  br i1 %cmp.i155, label %if.end44, label %copy_from_iter_full.exit158, !prof !55

copy_from_iter_full.exit158:                      ; preds = %copy_from_iter.exit.i156
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iov_iter_revert(ptr noundef %msg_iter41, i32 noundef %retval.0.i.i154) #9
  br label %error

if.end44:                                         ; preds = %copy_from_iter.exit.i156
  %sub45 = sub i32 %drem.0, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub45)
  %tobool46.not = icmp eq i32 %sub45, 0
  br i1 %tobool46.not, label %do.end, label %if.end48

if.end48:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_cmp4(i32 %sub45, i32 %sub)
  %cmp50 = icmp slt i32 %sub45, %sub
  %add52 = add i32 %sub45, 40
  %pktsz.0 = select i1 %cmp50, i32 %add52, i32 %pktmax
  %call54 = tail call ptr @tipc_buf_acquire(i32 noundef %pktsz.0, i32 noundef 3264)
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %if.end48.error_crit_edge, label %if.end57

if.end48.error_crit_edge:                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end57:                                         ; preds = %if.end48
  %destructor.i182 = getelementptr inbounds %struct.sk_buff, ptr %call54, i32 0, i32 4, i32 0, i32 1
  %64 = ptrtoint ptr %destructor.i182 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %destructor.i182, align 4
  %tobool.not.i183 = icmp eq ptr %65, null
  br i1 %tobool.not.i183, label %do.body.i186, label %if.then.i184

if.then.i184:                                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %65(ptr noundef nonnull %call54) #9
  %66 = ptrtoint ptr %destructor.i182 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %destructor.i182, align 4
  %67 = getelementptr inbounds %struct.sk_buff, ptr %call54, i32 0, i32 1
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr null, ptr %67, align 4
  br label %skb_orphan.exit188

do.body.i186:                                     ; preds = %if.end57
  %69 = getelementptr inbounds %struct.sk_buff, ptr %call54, i32 0, i32 1
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %tobool3.not.i185 = icmp eq ptr %71, null
  br i1 %tobool3.not.i185, label %do.body.i186.skb_orphan.exit188_crit_edge, label %do.body7.i187, !prof !55

do.body.i186.skb_orphan.exit188_crit_edge:        ; preds = %do.body.i186
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_orphan.exit188

do.body7.i187:                                    ; preds = %do.body.i186
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #9, !srcloc !60
  unreachable

skb_orphan.exit188:                               ; preds = %do.body.i186.skb_orphan.exit188_crit_edge, %if.then.i184
  %72 = ptrtoint ptr %prev.i.i176 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i.i176, align 4
  %74 = ptrtoint ptr %call54 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %list, ptr %call54, align 8
  %prev10.i.i.i190 = getelementptr inbounds %struct.anon, ptr %call54, i32 0, i32 1
  %75 = ptrtoint ptr %prev10.i.i.i190 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %73, ptr %prev10.i.i.i190, align 4
  store volatile ptr %call54, ptr %prev.i.i176, align 4
  %76 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %call54, ptr %73, align 4
  %77 = ptrtoint ptr %qlen.i.i.i178 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %qlen.i.i.i178, align 4
  %add.i.i.i192 = add i32 %78, 1
  store volatile i32 %add.i.i.i192, ptr %qlen.i.i.i178, align 4
  %79 = ptrtoint ptr %arrayidx.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx.i.i19.i, align 4
  %and2.i.i194 = and i32 %80, 536870911
  %or.i.i195 = or i32 %and2.i.i194, 536870912
  store i32 %or.i.i195, ptr %arrayidx.i.i19.i, align 4
  %81 = ptrtoint ptr %pkthdr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %pkthdr, align 4
  %and.i196 = and i32 %82, -131072
  %or.i197 = or i32 %and.i196, %pktsz.0
  store i32 %or.i197, ptr %pkthdr, align 4
  %inc = add i32 %pktno.0, 1
  %and.i.i = shl i32 %inc, 16
  %83 = ptrtoint ptr %arrayidx.i.i167 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i.i167, align 4
  %and2.i.i199 = and i32 %84, 65535
  %or.i.i200 = or i32 %and2.i.i199, %and.i.i
  store i32 %or.i.i200, ptr %arrayidx.i.i167, align 4
  %data.i201 = getelementptr inbounds %struct.sk_buff, ptr %call54, i32 0, i32 19
  %85 = ptrtoint ptr %data.i201 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i201, align 4
  %87 = call ptr @memcpy(ptr %86, ptr %pkthdr, i32 40)
  %88 = load ptr, ptr %data.i201, align 4
  %add.ptr59 = getelementptr i8, ptr %88, i32 40
  %sub60 = add i32 %pktsz.0, -40
  br label %do.body

do.end:                                           ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %data.i202 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %89 = ptrtoint ptr %data.i202 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i202, align 4
  %arrayidx.i.i203 = getelementptr [15 x i32], ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %arrayidx.i.i203 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx.i.i203, align 4
  %and2.i.i204 = and i32 %92, 536870911
  %or.i.i205 = or i32 %and2.i.i204, 1073741824
  store i32 %or.i.i205, ptr %arrayidx.i.i203, align 4
  br label %cleanup

error:                                            ; preds = %if.end48.error_crit_edge, %copy_from_iter_full.exit158, %copy_from_iter_full.exit
  %rc.0 = phi i32 [ -14, %copy_from_iter_full.exit ], [ -14, %copy_from_iter_full.exit158 ], [ -12, %if.end48.error_crit_edge ]
  %93 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %list, align 4
  %cmp.i.i2.i = icmp eq ptr %94, %list
  %tobool.not.i13.i = icmp eq ptr %94, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %error.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

error.__skb_queue_purge.exit_crit_edge:           ; preds = %error
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %error
  %qlen.i.i.i206 = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %95 = phi ptr [ %94, %while.body.lr.ph.i ], [ %105, %while.body.i.while.body.i_crit_edge ]
  %96 = ptrtoint ptr %qlen.i.i.i206 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %qlen.i.i.i206, align 4
  %sub.i.i.i = add i32 %97, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i206, align 4
  %98 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %95, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon, ptr %95, i32 0, i32 1
  %100 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %95, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon, ptr %99, i32 0, i32 1
  %102 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %101, ptr %prev17.i.i.i, align 4
  %103 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %99, ptr %101, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %95, i32 noundef 0) #9
  %104 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %list, align 4
  %cmp.i.i.i207 = icmp eq ptr %105, %list
  %tobool.not.i1.i = icmp eq ptr %105, null
  %tobool.not.i.i = or i1 %cmp.i.i.i207, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %error.__skb_queue_purge.exit_crit_edge
  %106 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.95, ptr %list, i32 0, i32 1
  %107 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %list, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %108 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %qlen.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %__skb_queue_purge.exit, %do.end, %if.end26.cleanup_crit_edge, %copy_from_iter.exit.i.cleanup_crit_edge, %if.end18, %if.end.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %__skb_queue_purge.exit ], [ %dsz, %do.end ], [ -12, %if.then12.cleanup_crit_edge ], [ %call15, %if.end.cleanup_crit_edge ], [ %dsz., %if.end18 ], [ -12, %if.end26.cleanup_crit_edge ], [ %dsz, %copy_from_iter.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %pkthdr) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_msg_assemble(ptr noundef %list) local_unnamed_addr #0 align 64 {
entry:
  %skb = alloca ptr, align 4
  %tmp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %skb) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #9
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %tmp, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp = icmp eq i32 %2, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %entry.while.cond_crit_edge

entry.while.cond_crit_edge:                       ; preds = %entry
  br label %while.cond

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond:                                       ; preds = %if.end5.while.cond_crit_edge, %entry.while.cond_crit_edge
  %3 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %4, %list
  %tobool.not.i22 = icmp eq ptr %4, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i22
  br i1 %tobool.not.i, label %__skb_dequeue.exit.thread, label %while.body

__skb_dequeue.exit.thread:                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %skb, align 4
  br label %while.end

while.body:                                       ; preds = %while.cond
  %6 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %7, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %4, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  %prev17.i.i = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %11, ptr %prev17.i.i, align 4
  %13 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %9, ptr %11, align 8
  %14 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %4, ptr %skb, align 4
  store ptr null, ptr %4, align 8
  %call2 = call i32 @tipc_buf_append(ptr noundef nonnull %tmp, ptr noundef nonnull %skb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then4

if.then4:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %skb, align 4
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %list, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %list, ptr %16, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %16, i32 0, i32 1
  %20 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %prev10.i.i.i, align 4
  store volatile ptr %16, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %16, ptr %18, align 4
  %22 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  br label %cleanup

if.end5:                                          ; preds = %while.body
  %24 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tmp, align 4
  %tobool6.not = icmp eq ptr %25, null
  br i1 %tobool6.not, label %if.end5.while.end_crit_edge, label %if.end5.while.cond_crit_edge

if.end5.while.cond_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

if.end5.while.end_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end5.while.end_crit_edge, %__skb_dequeue.exit.thread
  %26 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %list, align 4
  %cmp.i.i2.i = icmp eq ptr %27, %list
  %tobool.not.i13.i = icmp eq ptr %27, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %while.end.__skb_queue_purge.exit_crit_edge, label %while.end.while.body.i_crit_edge

while.end.while.body.i_crit_edge:                 ; preds = %while.end
  br label %while.body.i

while.end.__skb_queue_purge.exit_crit_edge:       ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_queue_purge.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.end.while.body.i_crit_edge
  %28 = phi ptr [ %38, %while.body.i.while.body.i_crit_edge ], [ %27, %while.end.while.body.i_crit_edge ]
  %29 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %qlen.i, align 4
  %sub.i.i.i = add i32 %30, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %28, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %28, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon, ptr %32, i32 0, i32 1
  %35 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %34, ptr %prev17.i.i.i, align 4
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %32, ptr %34, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %28, i32 noundef 0) #9
  %37 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %list, align 4
  %cmp.i.i.i = icmp eq ptr %38, %list
  %tobool.not.i1.i = icmp eq ptr %38, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %while.end.__skb_queue_purge.exit_crit_edge
  %39 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.95, ptr %list, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %list, ptr %prev.i, align 4
  %41 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %qlen.i, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #12
  br label %cleanup

cleanup:                                          ; preds = %__skb_queue_purge.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then4 ], [ false, %__skb_queue_purge.exit ], [ true, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %skb) #9
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msg_set_importance(ptr nocapture noundef %m, i32 noundef %i) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m, align 4
  %shr.i.i = lshr i32 %1, 25
  %and.i.i = and i32 %shr.i.i, 15
  %2 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i, label %if.else [
    i32 12, label %entry.if.then_crit_edge
    i32 6, label %entry.if.then_crit_edge14
  ]

entry.if.then_crit_edge14:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %entry.if.then_crit_edge, %entry.if.then_crit_edge14
  %and.i = and i32 %i, 7
  %arrayidx.i = getelementptr [15 x i32], ptr %m, i32 0, i32 9
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %and2.i = and i32 %4, -8
  %or.i = or i32 %and2.i, %and.i
  store i32 %or.i, ptr %arrayidx.i, align 4
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i)
  %cmp3 = icmp ult i32 %i, 4
  br i1 %cmp3, label %if.then4, label %do.end

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %and.i.i13 = shl nuw nsw i32 %i, 25
  %shl.i.i = and i32 %and.i.i13, 503316480
  %and2.i.i = and i32 %1, -503316481
  %or.i.i = or i32 %and2.i.i, %shl.i.i
  %5 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or.i.i, ptr %m, align 4
  br label %if.end7

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.then4, %if.then
  ret void
}

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @msg_importance(ptr nocapture noundef readonly %m) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m, align 4
  %shr.i.i = lshr i32 %1, 25
  %and.i.i = and i32 %shr.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i.i)
  %cmp = icmp ult i32 %and.i.i, 4
  br i1 %cmp, label %land.rhs, label %entry.if.end_crit_edge, !prof !55

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs:                                         ; preds = %entry
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %m, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i, align 4
  %4 = and i32 %3, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.if.end_crit_edge, !prof !55

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %and.i.i, label %if.end.cleanup_crit_edge [
    i32 12, label %if.end.if.then7_crit_edge
    i32 6, label %if.end.if.then7_crit_edge17
  ]

if.end.if.then7_crit_edge17:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end.if.then7_crit_edge, %if.end.if.then7_crit_edge17
  %arrayidx.i.i = getelementptr [15 x i32], ptr %m, i32 0, i32 9
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %and.i = and i32 %7, 7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %if.end.cleanup_crit_edge, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ %and.i, %if.then7 ], [ %and.i.i, %land.rhs.cleanup_crit_edge ], [ 4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_msg_try_bundle(ptr noundef %tskb, ptr nocapture noundef %skb, i32 noundef %mss, i32 noundef %dnode, ptr nocapture noundef writeonly %new_bundle) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %shr.i.i = lshr i32 %5, 25
  %and.i.i = and i32 %shr.i.i, 15
  %6 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %and.i.i, label %if.end9 [
    i32 12, label %entry.cleanup_crit_edge
    i32 10, label %entry.cleanup_crit_edge125
    i32 5, label %entry.cleanup_crit_edge126
  ]

entry.cleanup_crit_edge126:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge125:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %entry
  %and.i.i96 = and i32 %5, 131071
  %add = add nuw nsw i32 %and.i.i96, 40
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %mss)
  %cmp11.not = icmp ult i32 %add, %mss
  br i1 %cmp11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %tobool.not = icmp eq ptr %tskb, null
  br i1 %tobool.not, label %if.end13.cleanup_crit_edge, label %if.end18, !prof !56

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %data.i97 = getelementptr inbounds %struct.sk_buff, ptr %tskb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i97 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i97, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = and i32 %10, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 201326592, i32 %11)
  %cmp21 = icmp eq i32 %11, 201326592
  br i1 %cmp21, label %if.end18.bundle_crit_edge, label %if.end23

if.end18.bundle_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %bundle

if.end23:                                         ; preds = %if.end18
  %and.i.i101 = and i32 %10, 131071
  %add26 = add nuw nsw i32 %and.i.i101, 40
  %add27 = add nuw nsw i32 %and.i.i101, 43
  %and = and i32 %add27, 262140
  %add29 = add nuw nsw i32 %and, %and.i.i96
  call void @__sanitizer_cov_trace_cmp4(i32 %add29, i32 %mss)
  %cmp30 = icmp ugt i32 %add29, %mss
  br i1 %cmp30, label %if.end23.cleanup_crit_edge, label %if.end38, !prof !56

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end38:                                         ; preds = %if.end23
  %sub = add i32 %mss, -40
  %sub39 = sub i32 %sub, %and.i.i101
  %call40 = tail call i32 @pskb_expand_head(ptr noundef nonnull %tskb, i32 noundef 40, i32 noundef %sub39, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end49, label %if.end38.cleanup_crit_edge, !prof !55

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end49:                                         ; preds = %if.end38
  %12 = ptrtoint ptr %data.i97 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i97, align 4
  %call51 = tail call ptr @skb_push(ptr noundef nonnull %tskb, i32 noundef 40) #9
  %14 = ptrtoint ptr %data.i97 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i97, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %13, i32 0, i32 3
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %18 = getelementptr inbounds i8, ptr %15, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 32)
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1296039976, ptr %15, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %15, i32 0, i32 3
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %17, ptr %arrayidx.i.i.i, align 4
  %arrayidx.i.i19.i = getelementptr [15 x i32], ptr %15, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx.i.i19.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %arrayidx.i.i19.i, align 4
  %arrayidx.i.i22.i = getelementptr [15 x i32], ptr %15, i32 0, i32 6
  %23 = ptrtoint ptr %arrayidx.i.i22.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %17, ptr %arrayidx.i.i22.i, align 4
  %arrayidx.i.i23.i = getelementptr [15 x i32], ptr %15, i32 0, i32 7
  %24 = ptrtoint ptr %arrayidx.i.i23.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %dnode, ptr %arrayidx.i.i23.i, align 4
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %13, align 4
  %shr.i.i.i = lshr i32 %26, 25
  %and.i.i.i = and i32 %shr.i.i.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i.i.i)
  %cmp.i = icmp ult i32 %and.i.i.i, 4
  br i1 %cmp.i, label %land.rhs.i, label %if.end49.if.end.i_crit_edge, !prof !55

if.end49.if.end.i_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i:                                       ; preds = %if.end49
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %13, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %29 = and i32 %28, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i = icmp eq i32 %29, 0
  br i1 %tobool.not.i, label %land.rhs.i.if.then.i_crit_edge, label %land.rhs.i.if.end.i_crit_edge, !prof !55

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.rhs.i.if.then.i_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.end.i:                                         ; preds = %land.rhs.i.if.end.i_crit_edge, %if.end49.if.end.i_crit_edge
  %30 = zext i32 %and.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %and.i.i.i, label %if.end.i.if.then.i_crit_edge [
    i32 12, label %if.end.i.if.then7.i_crit_edge
    i32 6, label %if.end.i.if.then7.i_crit_edge127
  ]

if.end.i.if.then7.i_crit_edge127:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then7.i

if.end.i.if.then.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then7.i:                                       ; preds = %if.end.i.if.then7.i_crit_edge, %if.end.i.if.then7.i_crit_edge127
  %arrayidx.i.i.i105 = getelementptr [15 x i32], ptr %13, i32 0, i32 9
  %31 = ptrtoint ptr %arrayidx.i.i.i105 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i.i105, align 4
  %and.i.i106 = and i32 %32, 7
  br label %if.then.i

if.then.i:                                        ; preds = %if.then7.i, %if.end.i.if.then.i_crit_edge, %land.rhs.i.if.then.i_crit_edge
  %retval.0.i = phi i32 [ %and.i.i106, %if.then7.i ], [ %and.i.i.i, %land.rhs.i.if.then.i_crit_edge ], [ 4, %if.end.i.if.then.i_crit_edge ]
  %arrayidx.i.i110 = getelementptr [15 x i32], ptr %15, i32 0, i32 9
  %33 = ptrtoint ptr %arrayidx.i.i110 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i110, align 4
  %and2.i.i = and i32 %34, 65528
  %or.i.i111 = or i32 %and2.i.i, %retval.0.i
  %35 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %15, align 4
  %and.i = and i32 %36, -131072
  %or.i = or i32 %and.i, %add26
  store i32 %or.i, ptr %15, align 4
  %or.i.i115 = or i32 %or.i.i111, 65536
  store i32 %or.i.i115, ptr %arrayidx.i.i110, align 4
  br label %bundle

bundle:                                           ; preds = %if.then.i, %if.end18.bundle_crit_edge
  %storemerge = phi i8 [ 1, %if.then.i ], [ 0, %if.end18.bundle_crit_edge ]
  %37 = ptrtoint ptr %new_bundle to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %storemerge, ptr %new_bundle, align 1
  %38 = ptrtoint ptr %data.i97 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i97, align 4
  %40 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %3, align 4
  %and.i.i.i116 = and i32 %41, 131071
  %42 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %39, align 4
  %and.i.i42.i = and i32 %43, 131071
  %add.i = add nuw nsw i32 %and.i.i42.i, 3
  %and.i117 = and i32 %add.i, 262140
  %sub.i = sub nsw i32 %and.i117, %and.i.i42.i
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %tskb, i32 0, i32 7
  %44 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.i.not.i.i = icmp eq i32 %45, 0
  br i1 %tobool.i.not.i.i, label %cond.false.i.i, label %bundle.skb_tailroom.exit.i_crit_edge

bundle.skb_tailroom.exit.i_crit_edge:             ; preds = %bundle
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_tailroom.exit.i

cond.false.i.i:                                   ; preds = %bundle
  call void @__sanitizer_cov_trace_pc() #11
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %tskb, i32 0, i32 17
  %46 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %tskb, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %47 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  br label %skb_tailroom.exit.i

skb_tailroom.exit.i:                              ; preds = %cond.false.i.i, %bundle.skb_tailroom.exit.i_crit_edge
  %cond.i.i = phi i32 [ %sub.ptr.sub.i.i, %cond.false.i.i ], [ 0, %bundle.skb_tailroom.exit.i_crit_edge ]
  %add4.i = add nsw i32 %sub.i, %and.i.i.i116
  call void @__sanitizer_cov_trace_cmp4(i32 %cond.i.i, i32 %add4.i)
  %cmp.i118 = icmp ult i32 %cond.i.i, %add4.i
  br i1 %cmp.i118, label %skb_tailroom.exit.i.cleanup_crit_edge, label %if.end.i119, !prof !56

skb_tailroom.exit.i.cleanup_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i119:                                      ; preds = %skb_tailroom.exit.i
  %add6.i = add nuw nsw i32 %and.i117, %and.i.i.i116
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %mss)
  %cmp7.i = icmp ugt i32 %add6.i, %mss
  br i1 %cmp7.i, label %if.end.i119.cleanup_crit_edge, label %if.then63, !prof !56

if.end.i119.cleanup_crit_edge:                    ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then63:                                        ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #11
  %call17.i = tail call ptr @skb_put(ptr noundef nonnull %tskb, i32 noundef %add4.i) #9
  %50 = ptrtoint ptr %data.i97 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i97, align 4
  %add.ptr.i.i = getelementptr i8, ptr %51, i32 %and.i117
  %52 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %3, i32 %and.i.i.i116)
  %53 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %39, align 4
  %and.i.i120 = and i32 %54, -131072
  %or.i.i121 = or i32 %and.i.i120, %add6.i
  store i32 %or.i.i121, ptr %39, align 4
  %arrayidx.i.i.i.i122 = getelementptr [15 x i32], ptr %39, i32 0, i32 9
  %55 = ptrtoint ptr %arrayidx.i.i.i.i122 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i.i.i122, align 4
  %57 = add i32 %56, 65536
  store i32 %57, ptr %arrayidx.i.i.i.i122, align 4
  %58 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %skb, align 4
  tail call void @consume_skb(ptr noundef %59) #9
  %60 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.end.i119.cleanup_crit_edge, %skb_tailroom.exit.i.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge125, %entry.cleanup_crit_edge126
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.end9.cleanup_crit_edge ], [ true, %if.end13.cleanup_crit_edge ], [ true, %if.end23.cleanup_crit_edge ], [ true, %if.end38.cleanup_crit_edge ], [ true, %if.then63 ], [ true, %skb_tailroom.exit.i.cleanup_crit_edge ], [ true, %if.end.i119.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge125 ], [ false, %entry.cleanup_crit_edge126 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_msg_extract(ptr noundef %skb, ptr nocapture noundef %iskb, ptr nocapture noundef %pos) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iskb to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %iskb, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %1 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %entry.if.end_crit_edge, label %cond.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.true.i:                                      ; preds = %entry
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %2) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.none_crit_edge, label %cond.true.i.if.end_crit_edge

cond.true.i.if.end_crit_edge:                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.true.i.none_crit_edge:                       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %none

if.end:                                           ; preds = %cond.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i, align 4
  %5 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pos, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %and.i.i.i = and i32 %8, 131071
  %9 = lshr i32 %8, 19
  %shl.i.i = and i32 %9, 60
  %sub.i = sub nsw i32 %and.i.i.i, %shl.i.i
  %sub = add nsw i32 %sub.i, -24
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %sub)
  %cmp = icmp ugt i32 %6, %sub
  br i1 %cmp, label %if.end.none_crit_edge, label %if.end12, !prof !56

if.end.none_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %none

if.end12:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %4, i32 %shl.i.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %6
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  %and.i.i = and i32 %11, 131071
  %add = add i32 %and.i.i, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i)
  %cmp16 = icmp ugt i32 %add, %sub.i
  br i1 %cmp16, label %if.end12.none_crit_edge, label %if.end18

if.end12.none_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %none

if.end18:                                         ; preds = %if.end12
  %add.i = add nuw nsw i32 %and.i.i, 224
  %call.i.i59 = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 1, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i.i59, null
  br i1 %tobool.not.i, label %tipc_buf_acquire.exit.thread, label %if.end22

tipc_buf_acquire.exit.thread:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %iskb to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %iskb, align 4
  br label %none

if.end22:                                         ; preds = %if.end18
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i59, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 208
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i59, i32 0, i32 16
  %15 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %16, i32 208
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i59, i32 noundef %and.i.i) #9
  %17 = ptrtoint ptr %call.i.i59 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %call.i.i59, align 8
  %18 = ptrtoint ptr %iskb to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i59, ptr %iskb, align 4
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i.i, align 4
  %21 = call ptr @memcpy(ptr %20, ptr %add.ptr, i32 %and.i.i)
  %call23 = tail call zeroext i1 @tipc_msg_validate(ptr noundef %iskb)
  br i1 %call23, label %if.end33, label %if.end22.none_crit_edge, !prof !55

if.end22.none_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %none

if.end33:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %add34 = add nuw nsw i32 %and.i.i, 3
  %and = and i32 %add34, 262140
  %22 = ptrtoint ptr %pos to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pos, align 4
  %add35 = add i32 %23, %and
  store i32 %add35, ptr %pos, align 4
  br label %cleanup

none:                                             ; preds = %if.end22.none_crit_edge, %tipc_buf_acquire.exit.thread, %if.end12.none_crit_edge, %if.end.none_crit_edge, %cond.true.i.none_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  %24 = ptrtoint ptr %iskb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iskb, align 4
  tail call void @kfree_skb_reason(ptr noundef %25, i32 noundef 0) #9
  %26 = ptrtoint ptr %iskb to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %iskb, align 4
  br label %cleanup

cleanup:                                          ; preds = %none, %if.end33
  %retval.0 = phi i1 [ false, %none ], [ true, %if.end33 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_msg_reverse(i32 noundef %own_node, ptr nocapture noundef %skb, i32 noundef %err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skb, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i, label %entry.if.end_crit_edge, label %cond.true.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.true.i:                                      ; preds = %entry
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %1, i32 noundef %3) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.exit_crit_edge, label %cond.true.i.if.end_crit_edge

cond.true.i.if.end_crit_edge:                     ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cond.true.i.exit_crit_edge:                       ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %cond.true.i.if.end_crit_edge, %entry.if.end_crit_edge
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and.i.i.i = and i32 %7, 131071
  %8 = lshr i32 %7, 19
  %shl.i.i = and i32 %8, 60
  %sub.i = sub nsw i32 %and.i.i.i, %shl.i.i
  %9 = tail call i32 @llvm.umin.i32(i32 %sub.i, i32 1024)
  %10 = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end7:                                          ; preds = %if.end
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i.i, align 4
  %13 = and i32 %12, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool9.not = icmp eq i32 %13, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.exit_crit_edge

if.end7.exit_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %shl.i.i)
  %cmp12 = icmp eq i32 %shl.i.i, 24
  %spec.store.select = select i1 %cmp12, i32 32, i32 %shl.i.i
  %14 = and i32 %7, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool16.not = icmp ne i32 %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %err)
  %cmp17 = icmp eq i32 %err, 4
  %or.cond = and i1 %cmp17, %tobool16.not
  %dlen.0 = select i1 %or.cond, i32 0, i32 %9
  %add = add nuw nsw i32 %dlen.0, %spec.store.select
  %add.i = add nuw nsw i32 %add, 224
  %call.i.i79 = tail call ptr @__alloc_skb(i32 noundef %add.i, i32 noundef 2592, i32 noundef 1, i32 noundef -1) #9
  %tobool.not.i = icmp eq ptr %call.i.i79, null
  br i1 %tobool.not.i, label %tipc_buf_acquire.exit.thread, label %if.end23

tipc_buf_acquire.exit.thread:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %skb, align 4
  br label %exit

if.end23:                                         ; preds = %if.end11
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i79, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 208
  store ptr %add.ptr.i.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i79, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %19, i32 208
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call1.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i79, i32 noundef %add) #9
  %20 = ptrtoint ptr %call.i.i79 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %call.i.i79, align 8
  %21 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i.i79, ptr %skb, align 4
  %22 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i, align 4
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %5, align 4
  %28 = lshr i32 %27, 19
  %shl.i80 = and i32 %28, 60
  %29 = call ptr @memcpy(ptr %23, ptr %25, i32 %shl.i80)
  %30 = load ptr, ptr %skb, align 4
  %data26 = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 19
  %31 = ptrtoint ptr %data26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data26, align 4
  %add.ptr = getelementptr i8, ptr %32, i32 %spec.store.select
  %33 = load i32, ptr %5, align 4
  %34 = lshr i32 %33, 19
  %shl.i.i81 = and i32 %34, 60
  %add.ptr.i = getelementptr i8, ptr %5, i32 %shl.i.i81
  %35 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr.i, i32 %dlen.0)
  %36 = load ptr, ptr %skb, align 4
  %data.i82 = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 19
  %37 = ptrtoint ptr %data.i82 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i82, align 4
  %39 = shl nuw nsw i32 %spec.store.select, 19
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %38, align 4
  %and2.i.i = and i32 %41, -31457281
  %or.i.i = or i32 %and2.i.i, %39
  %and.i.i84 = shl i32 %err, 25
  %shl.i.i85 = and i32 %and.i.i84, 503316480
  %arrayidx.i.i = getelementptr [15 x i32], ptr %38, i32 0, i32 1
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i, align 4
  %and2.i.i86 = and i32 %43, -503316481
  %or.i.i87 = or i32 %and2.i.i86, %shl.i.i85
  store i32 %or.i.i87, ptr %arrayidx.i.i, align 4
  %and2.i.i88 = and i32 %or.i.i, -1048577
  store i32 %and2.i.i88, ptr %38, align 4
  %arrayidx.i.i89 = getelementptr [15 x i32], ptr %5, i32 0, i32 5
  %44 = ptrtoint ptr %arrayidx.i.i89 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i.i89, align 4
  %arrayidx.i.i90 = getelementptr [15 x i32], ptr %38, i32 0, i32 4
  %46 = ptrtoint ptr %arrayidx.i.i90 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx.i.i90, align 4
  %47 = load i32, ptr %5, align 4
  %48 = and i32 %47, 503316480
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %48)
  %cmp.i = icmp eq i32 %48, 402653184
  %49 = lshr i32 %47, 19
  %shl.i.i.i.i = and i32 %49, 60
  %m.addr.0.idx.i = select i1 %cmp.i, i32 %shl.i.i.i.i, i32 0
  %m.addr.0.i = getelementptr i8, ptr %5, i32 %m.addr.0.idx.i
  %arrayidx.i.i91 = getelementptr [15 x i32], ptr %m.addr.0.i, i32 0, i32 4
  %50 = ptrtoint ptr %arrayidx.i.i91 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i91, align 4
  %arrayidx.i.i92 = getelementptr [15 x i32], ptr %38, i32 0, i32 5
  %52 = ptrtoint ptr %arrayidx.i.i92 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx.i.i92, align 4
  %arrayidx.i.i93 = getelementptr [15 x i32], ptr %5, i32 0, i32 3
  %53 = ptrtoint ptr %arrayidx.i.i93 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i93, align 4
  %arrayidx.i.i94 = getelementptr [15 x i32], ptr %38, i32 0, i32 7
  %55 = ptrtoint ptr %arrayidx.i.i94 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx.i.i94, align 4
  %arrayidx.i.i95 = getelementptr [15 x i32], ptr %38, i32 0, i32 3
  %56 = ptrtoint ptr %arrayidx.i.i95 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %own_node, ptr %arrayidx.i.i95, align 4
  %arrayidx.i.i96 = getelementptr [15 x i32], ptr %38, i32 0, i32 6
  %57 = ptrtoint ptr %arrayidx.i.i96 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %own_node, ptr %arrayidx.i.i96, align 4
  %and.i = and i32 %or.i.i, -1179648
  %or.i = or i32 %and.i, %add
  %58 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or.i, ptr %38, align 4
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 4, i32 0, i32 1
  %59 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %destructor.i, align 4
  %tobool.not.i97 = icmp eq ptr %60, null
  br i1 %tobool.not.i97, label %do.body.i, label %if.then.i98

if.then.i98:                                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %60(ptr noundef %1) #9
  %61 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %destructor.i, align 4
  %62 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %62, align 4
  br label %skb_orphan.exit

do.body.i:                                        ; preds = %if.end23
  %64 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %64, align 4
  %tobool3.not.i = icmp eq ptr %66, null
  br i1 %tobool3.not.i, label %do.body.i.skb_orphan.exit_crit_edge, label %do.body7.i, !prof !55

do.body.i.skb_orphan.exit_crit_edge:              ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_orphan.exit

do.body7.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2859, 0\0A.popsection", ""() #9, !srcloc !60
  unreachable

skb_orphan.exit:                                  ; preds = %do.body.i.skb_orphan.exit_crit_edge, %if.then.i98
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #9
  br label %cleanup

exit:                                             ; preds = %tipc_buf_acquire.exit.thread, %if.end7.exit_crit_edge, %if.end.exit_crit_edge, %cond.true.i.exit_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %1, i32 noundef 0) #9
  %67 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %skb, align 4
  br label %cleanup

cleanup:                                          ; preds = %exit, %skb_orphan.exit
  %retval.0 = phi i1 [ false, %exit ], [ true, %skb_orphan.exit ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_msg_skb_clone(ptr noundef readonly %msg, ptr noundef %cpy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %skb.016 = load ptr, ptr %msg, align 4
  %cmp.not17 = icmp eq ptr %skb.016, %msg
  br i1 %cmp.not17, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %cpy, i32 0, i32 1
  %qlen.i.i.i13 = getelementptr inbounds %struct.sk_buff_head, ptr %cpy, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %for.body.lr.ph
  %skb.018 = phi ptr [ %skb.016, %for.body.lr.ph ], [ %skb.0, %if.end5.for.body_crit_edge ]
  %call = tail call ptr @skb_clone(ptr noundef %skb.018, i32 noundef 2592) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %for.body
  %1 = ptrtoint ptr %cpy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cpy, align 4
  %cmp.i.i2.i = icmp eq ptr %2, %cpy
  %tobool.not.i13.i = icmp eq ptr %2, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %if.then.__skb_queue_purge.exit_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.__skb_queue_purge.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_queue_purge.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %3 = phi ptr [ %13, %while.body.i.while.body.i_crit_edge ], [ %2, %if.then.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %qlen.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qlen.i.i.i13, align 4
  %sub.i.i.i = add i32 %5, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i13, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %3, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %9, ptr %prev17.i.i.i, align 4
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %7, ptr %9, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %3, i32 noundef 0) #9
  %12 = ptrtoint ptr %cpy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpy, align 4
  %cmp.i.i.i = icmp eq ptr %13, %cpy
  %tobool.not.i1.i = icmp eq ptr %13, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %if.then.__skb_queue_purge.exit_crit_edge
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @tipc_msg_skb_clone._rs, ptr noundef nonnull @__func__.tipc_msg_skb_clone) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %__skb_queue_purge.exit.cleanup_crit_edge, label %do.end

__skb_queue_purge.exit.cleanup_crit_edge:         ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end5:                                          ; preds = %for.body
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %cpy, ptr %call, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %prev10.i.i.i, align 4
  store volatile ptr %call, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %call, ptr %15, align 4
  %19 = ptrtoint ptr %qlen.i.i.i13 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qlen.i.i.i13, align 4
  %add.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i13, align 4
  %21 = ptrtoint ptr %skb.018 to i32
  call void @__asan_load4_noabort(i32 %21)
  %skb.0 = load ptr, ptr %skb.018, align 4
  %cmp.not = icmp eq ptr %skb.0, %msg
  br i1 %cmp.not, label %if.end5.cleanup_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end5.cleanup_crit_edge, %do.end, %__skb_queue_purge.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.not15 = phi i1 [ false, %__skb_queue_purge.exit.cleanup_crit_edge ], [ false, %do.end ], [ true, %entry.cleanup_crit_edge ], [ true, %if.end5.cleanup_crit_edge ]
  ret i1 %cmp.not15
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_msg_lookup_dest(ptr noundef %net, ptr noundef %skb, ptr nocapture noundef writeonly %err) local_unnamed_addr #0 align 64 {
entry:
  %sk = alloca %struct.tipc_socket_addr, align 4
  %ua = alloca %struct.tipc_uaddr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i.i = getelementptr [15 x i32], ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i.i, align 4
  %shr.i.i = lshr i32 %3, 19
  %and.i.i = and i32 %shr.i.i, 3
  %call2 = tail call fastcc i32 @tipc_own_addr(ptr noundef %net)
  %arrayidx.i.i = getelementptr [15 x i32], ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sk) #9
  %6 = ptrtoint ptr %sk to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %sk, align 4, !annotation !54
  %7 = getelementptr inbounds %struct.tipc_socket_addr, ptr %sk, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ua) #9
  %8 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 1
  %9 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 2
  %10 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3
  %11 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3, i32 0, i32 0, i32 1
  %12 = getelementptr inbounds %struct.tipc_uaddr, ptr %ua, i32 0, i32 3, i32 0, i32 1
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %1, align 4
  %15 = and i32 %14, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i.not = icmp eq i32 %15, 0
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %16 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i.i, align 4
  %18 = and i32 %17, -33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 1073741824, i32 %18)
  %19 = icmp eq i32 %18, 1073741824
  br i1 %19, label %if.end12, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %20 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %err, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %21 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i, label %if.end12.if.end16_crit_edge, label %cond.true.i

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

cond.true.i:                                      ; preds = %if.end12
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %22) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.cleanup_crit_edge, label %cond.true.i.if.end16_crit_edge

cond.true.i.if.end16_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

cond.true.i.cleanup_crit_edge:                    ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %cond.true.i.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i.i60 = getelementptr [15 x i32], ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i.i60, align 4
  %27 = and i32 %26, 31457280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool19.not = icmp eq i32 %27, 0
  br i1 %tobool19.not, label %if.end21, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %arrayidx.i.i63 = getelementptr [15 x i32], ptr %24, i32 0, i32 8
  %28 = ptrtoint ptr %arrayidx.i.i63 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i63, align 4
  %30 = ptrtoint ptr %ua to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 30, ptr %ua, align 4
  %31 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %8, align 2
  %conv1.i = trunc i32 %and.i.i to i8
  %32 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv1.i, ptr %9, align 1
  %33 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %29, ptr %10, align 4
  %34 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %5, ptr %11, align 4
  %35 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %5, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i.i)
  %cmp.not.i = icmp eq i32 %and.i.i, 3
  br i1 %cmp.not.i, label %cond.false.i, label %if.end21.tipc_scope2node.exit_crit_edge

if.end21.tipc_scope2node.exit_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_scope2node.exit

cond.false.i:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call fastcc i32 @tipc_own_addr(ptr noundef %net) #9
  br label %tipc_scope2node.exit

tipc_scope2node.exit:                             ; preds = %cond.false.i, %if.end21.tipc_scope2node.exit_crit_edge
  %cond.i64 = phi i32 [ %call.i, %cond.false.i ], [ 0, %if.end21.tipc_scope2node.exit_crit_edge ]
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond.i64, ptr %7, align 4
  %call24 = call zeroext i1 @tipc_nametbl_lookup_anycast(ptr noundef %net, ptr noundef nonnull %ua, ptr noundef nonnull %sk) #9
  br i1 %call24, label %if.end26, label %tipc_scope2node.exit.cleanup_crit_edge

tipc_scope2node.exit.cleanup_crit_edge:           ; preds = %tipc_scope2node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %tipc_scope2node.exit
  %37 = ptrtoint ptr %arrayidx.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i.i60, align 4
  %39 = add i32 %38, 2097152
  %shl.i.i = and i32 %39, 31457280
  %and2.i.i = and i32 %38, -31457281
  %or.i.i = or i32 %shl.i.i, %and2.i.i
  store i32 %or.i.i, ptr %arrayidx.i.i.i60, align 4
  %40 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %call2)
  %cmp.not = icmp eq i32 %41, %call2
  br i1 %cmp.not, label %if.end26.if.end29_crit_edge, label %if.then28

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i66 = getelementptr [15 x i32], ptr %24, i32 0, i32 3
  %42 = ptrtoint ptr %arrayidx.i.i66 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call2, ptr %arrayidx.i.i66, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26.if.end29_crit_edge
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %7, align 4
  %arrayidx.i.i67 = getelementptr [15 x i32], ptr %24, i32 0, i32 7
  %45 = ptrtoint ptr %arrayidx.i.i67 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %arrayidx.i.i67, align 4
  %46 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %sk, align 4
  %arrayidx.i.i68 = getelementptr [15 x i32], ptr %24, i32 0, i32 5
  %48 = ptrtoint ptr %arrayidx.i.i68 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %arrayidx.i.i68, align 4
  %49 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %tipc_scope2node.exit.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %cond.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end29 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %if.end16.cleanup_crit_edge ], [ false, %tipc_scope2node.exit.cleanup_crit_edge ], [ false, %cond.true.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ua) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sk) #9
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tipc_own_addr(ptr noundef %net) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @tipc_net_id to i32))
  %0 = load i32, ptr @tipc_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !62
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 696, ptr noundef nonnull @.str.16) #9
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %gen.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i.i, align 128
  %call.i.i = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 45, ptr noundef nonnull @.str.14) #9
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge
  %arrayidx.i.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i10.i.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i10.i.i, label %do.end7.i.i.tipc_net.exit_crit_edge, label %land.lhs.true.i13.i.i

do.end7.i.i.tipc_net.exit_crit_edge:              ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_net.exit

land.lhs.true.i13.i.i:                            ; preds = %do.end7.i.i
  %call1.i11.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.tipc_net.exit_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.tipc_net.exit_crit_edge:    ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_net.exit

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.tipc_net.exit_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.tipc_net.exit_crit_edge:   ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tipc_net.exit

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.15, i32 noundef 724, ptr noundef nonnull @.str.17) #9
  br label %tipc_net.exit

tipc_net.exit:                                    ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.tipc_net.exit_crit_edge, %land.lhs.true.i13.i.i.tipc_net.exit_crit_edge, %do.end7.i.i.tipc_net.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !63
  %9 = tail call i32 @llvm.read_register.i32(metadata !44) #9
  %and.i.i.i.i.i17.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %node_addr = getelementptr inbounds %struct.tipc_net, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %node_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %node_addr, align 4
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tipc_nametbl_lookup_anycast(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_msg_reassemble(ptr noundef readonly %list, ptr noundef %rcvq) local_unnamed_addr #0 align 64 {
entry:
  %frag = alloca ptr, align 4
  %head = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frag) #9
  %0 = ptrtoint ptr %frag to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %frag, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %head) #9
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %head, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %2 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.for.cond_crit_edge

entry.for.cond_crit_edge:                         ; preds = %entry
  br label %for.cond

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %cmp.i = icmp eq ptr %5, %list
  %spec.store.select.i = select i1 %cmp.i, ptr null, ptr %5
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 18
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %12 = lshr i32 %11, 19
  %shl.i = and i32 %12, 60
  %add = add i32 %sub.ptr.sub.i, %shl.i
  %call.i = tail call ptr @__pskb_copy_fclone(ptr noundef %spec.store.select.i, i32 noundef %add, i32 noundef 2592, i1 noundef zeroext false) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %rcvq, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %rcvq, ptr %call.i, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %prev10.i.i.i, align 4
  store volatile ptr %call.i, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call.i, ptr %14, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %rcvq, i32 0, i32 1
  %18 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %cleanup

for.cond:                                         ; preds = %if.end17.for.cond_crit_edge, %entry.for.cond_crit_edge
  %skb.0.in = phi ptr [ %skb.0, %if.end17.for.cond_crit_edge ], [ %list, %entry.for.cond_crit_edge ]
  %20 = ptrtoint ptr %skb.0.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %skb.0 = load ptr, ptr %skb.0.in, align 4
  %cmp8.not = icmp eq ptr %skb.0, %list
  br i1 %cmp8.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call9 = tail call ptr @skb_clone(ptr noundef %skb.0, i32 noundef 2592) #9
  %21 = ptrtoint ptr %frag to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9, ptr %frag, align 4
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %for.body.do.end_crit_edge, label %if.end12

for.body.do.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.end12:                                         ; preds = %for.body
  %22 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %call9, align 8
  %call14 = call i32 @tipc_buf_append(ptr noundef nonnull %head, ptr noundef nonnull %frag)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end17:                                         ; preds = %if.end12
  %23 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %head, align 4
  %tobool18.not = icmp eq ptr %24, null
  br i1 %tobool18.not, label %if.end17.do.end_crit_edge, label %if.end17.for.cond_crit_edge

if.end17.for.cond_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end17.do.end_crit_edge:                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.end:                                          ; preds = %if.end12.for.end_crit_edge, %for.cond.for.end_crit_edge
  %25 = ptrtoint ptr %frag to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %frag, align 4
  %prev.i.i38 = getelementptr inbounds %struct.sk_buff_list, ptr %rcvq, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i38, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %rcvq, ptr %26, align 8
  %prev10.i.i.i39 = getelementptr inbounds %struct.anon, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %prev10.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %prev10.i.i.i39, align 4
  store volatile ptr %26, ptr %prev.i.i38, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %26, ptr %28, align 4
  %qlen.i.i.i40 = getelementptr inbounds %struct.sk_buff_head, ptr %rcvq, i32 0, i32 1
  %32 = ptrtoint ptr %qlen.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %qlen.i.i.i40, align 4
  %add.i.i.i41 = add i32 %33, 1
  store volatile i32 %add.i.i.i41, ptr %qlen.i.i.i40, align 4
  br label %cleanup

do.end:                                           ; preds = %if.end17.do.end_crit_edge, %for.body.do.end_crit_edge
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  %34 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %head, align 4
  tail call void @kfree_skb_reason(ptr noundef %35, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end, %if.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end ], [ true, %for.end ], [ false, %do.end ], [ false, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %head) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frag) #9
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @tipc_msg_pskb_copy(i32 noundef %dst, ptr noundef readonly %msg, ptr noundef %cpy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %skb.014 = load ptr, ptr %msg, align 4
  %cmp.not15 = icmp eq ptr %skb.014, %msg
  br i1 %cmp.not15, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %cpy, i32 0, i32 1
  %qlen.i.i.i10 = getelementptr inbounds %struct.sk_buff_head, ptr %cpy, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %skb.016 = phi ptr [ %skb.014, %for.body.lr.ph ], [ %skb.0, %if.end.for.body_crit_edge ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.016, i32 0, i32 19
  %1 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.016, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %2 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %call.i.i = tail call ptr @__pskb_copy_fclone(ptr noundef %skb.016, i32 noundef %sub.ptr.sub.i.i, i32 noundef 2592, i1 noundef zeroext false) #9
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %5 = ptrtoint ptr %cpy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cpy, align 4
  %cmp.i.i2.i = icmp eq ptr %6, %cpy
  %tobool.not.i13.i = icmp eq ptr %6, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %if.then.cleanup_crit_edge, label %if.then.while.body.i_crit_edge

if.then.while.body.i_crit_edge:                   ; preds = %if.then
  br label %while.body.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.while.body.i_crit_edge
  %7 = phi ptr [ %17, %while.body.i.while.body.i_crit_edge ], [ %6, %if.then.while.body.i_crit_edge ]
  %8 = ptrtoint ptr %qlen.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i.i.i10, align 4
  %sub.i.i.i = add i32 %9, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i10, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %7, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %13, ptr %prev17.i.i.i, align 4
  %15 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %11, ptr %13, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %7, i32 noundef 0) #9
  %16 = ptrtoint ptr %cpy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cpy, align 4
  %cmp.i.i.i = icmp eq ptr %17, %cpy
  %tobool.not.i1.i = icmp eq ptr %17, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.cleanup_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

while.body.i.cleanup_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %arrayidx.i.i = getelementptr [15 x i32], ptr %19, i32 0, i32 7
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %dst, ptr %arrayidx.i.i, align 4
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %cpy, ptr %call.i.i, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %call.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %prev10.i.i.i, align 4
  store volatile ptr %call.i.i, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %call.i.i, ptr %22, align 4
  %26 = ptrtoint ptr %qlen.i.i.i10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qlen.i.i.i10, align 4
  %add.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i10, align 4
  %28 = ptrtoint ptr %skb.016 to i32
  call void @__asan_load4_noabort(i32 %28)
  %skb.0 = load ptr, ptr %skb.016, align 4
  %cmp.not = icmp eq ptr %skb.0, %msg
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.body.i.cleanup_crit_edge, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.not13 = phi i1 [ false, %if.then.cleanup_crit_edge ], [ true, %entry.cleanup_crit_edge ], [ false, %while.body.i.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ]
  ret i1 %cmp.not13
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__tipc_skb_queue_sorted(ptr noundef %list, i16 noundef zeroext %seqno, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.i = icmp eq ptr %1, %list
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [15 x i32], ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %conv.i.i = trunc i32 %5 to i16
  %6 = xor i16 %conv.i.i, -1
  %7 = add i16 %6, %seqno
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %tobool.not.i = icmp sgt i16 %7, -1
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i.i, i16 %seqno)
  %cmp.i44 = icmp eq i16 %conv.i.i, %seqno
  %tobool4.not = or i1 %cmp.i44, %tobool.not.i
  br i1 %tobool4.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 1
  %9 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %prev10.i.i.i, align 4
  %prev17.i.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %skb, ptr %prev17.i.i.i, align 4
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %skb, ptr %list, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %12 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %prev.i = getelementptr inbounds %struct.anon.95, ptr %list, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %prev.i, align 4
  %cmp.i45 = icmp eq ptr %15, %list
  %spec.store.select.i46 = select i1 %cmp.i45, ptr null, ptr %15
  %data.i.i47 = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i46, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i47 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i47, align 4
  %arrayidx.i.i.i.i48 = getelementptr [15 x i32], ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx.i.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i.i.i48, align 4
  %conv.i.i49 = trunc i32 %19 to i16
  %20 = sub i16 %conv.i.i49, %seqno
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %20)
  %tobool8.not = icmp sgt i16 %20, -1
  br i1 %tobool8.not, label %if.end.for.cond_crit_edge, label %if.then9

if.end.for.cond_crit_edge:                        ; preds = %if.end
  br label %for.cond

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i, align 4
  %23 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list, ptr %skb, align 8
  %prev10.i.i.i50 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 1
  %24 = ptrtoint ptr %prev10.i.i.i50 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %prev10.i.i.i50, align 4
  store volatile ptr %skb, ptr %prev.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %skb, ptr %22, align 4
  %qlen.i.i.i51 = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %26 = ptrtoint ptr %qlen.i.i.i51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qlen.i.i.i51, align 4
  %add.i.i.i52 = add i32 %27, 1
  store volatile i32 %add.i.i.i52, ptr %qlen.i.i.i51, align 4
  br label %cleanup

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end.for.cond_crit_edge
  %_skb.0 = phi ptr [ %tmp.0, %for.body.for.cond_crit_edge ], [ %1, %if.end.for.cond_crit_edge ]
  %cmp.not = icmp eq ptr %_skb.0, %list
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %28 = ptrtoint ptr %_skb.0 to i32
  call void @__asan_load4_noabort(i32 %28)
  %tmp.0 = load ptr, ptr %_skb.0, align 8
  %data.i.i53 = getelementptr inbounds %struct.sk_buff, ptr %_skb.0, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i53, align 4
  %arrayidx.i.i.i.i54 = getelementptr [15 x i32], ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %arrayidx.i.i.i.i54 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i.i.i54, align 4
  %conv.i.i55 = trunc i32 %32 to i16
  %33 = sub i16 %conv.i.i55, %seqno
  %tobool14.not = icmp sgt i16 %33, -1
  br i1 %tobool14.not, label %if.end16, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.end16:                                         ; preds = %for.body
  %conv.i.i55.le = trunc i32 %32 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %conv.i.i55.le, i16 %seqno)
  %cmp19 = icmp eq i16 %conv.i.i55.le, %seqno
  br i1 %cmp19, label %if.end16.for.end_crit_edge, label %if.end22

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i60 = getelementptr inbounds %struct.sk_buff_list, ptr %_skb.0, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i60 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i60, align 4
  %36 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %_skb.0, ptr %skb, align 8
  %prev10.i.i = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 1
  %37 = ptrtoint ptr %prev10.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %prev10.i.i, align 4
  store volatile ptr %skb, ptr %prev.i60, align 4
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %skb, ptr %35, align 4
  %qlen.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %39 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %qlen.i.i, align 4
  %add.i.i = add i32 %40, 1
  store volatile i32 %add.i.i, ptr %qlen.i.i, align 4
  br label %cleanup

for.end:                                          ; preds = %if.end16.for.end_crit_edge, %for.cond.for.end_crit_edge
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end22, %if.then9, %if.then
  %retval.0 = phi i1 [ true, %if.then ], [ true, %if.then9 ], [ false, %for.end ], [ true, %if.end22 ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tipc_skb_reject(ptr noundef %net, i32 noundef %err, ptr noundef %skb, ptr noundef %xmitq) local_unnamed_addr #0 align 64 {
entry:
  %skb.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %skb.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %skb, ptr %skb.addr, align 4
  %call = tail call fastcc i32 @tipc_own_addr(ptr noundef %net)
  %call1 = call zeroext i1 @tipc_msg_reverse(i32 noundef %call, ptr noundef nonnull %skb.addr, i32 noundef %err)
  br i1 %call1, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = ptrtoint ptr %skb.addr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %skb.addr, align 4
  %prev.i.i = getelementptr inbounds %struct.sk_buff_list, ptr %xmitq, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %xmitq, ptr %2, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon, ptr %2, i32 0, i32 1
  %6 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %4, ptr %prev10.i.i.i, align 4
  store volatile ptr %2, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %2, ptr %4, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.sk_buff_head, ptr %xmitq, i32 0, i32 1
  %8 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_copy_from_iter(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_revert(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_copy_fclone(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !24, !25, !27, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43}
!llvm.named.register.sp = !{!44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @one_page_mtu, !1, !"one_page_mtu", i1 false, i1 false}
!1 = !{!"../net/tipc/msg.c", i32 54, i32 11}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/tipc/msg.c", i32 681, i32 4}
!4 = !{ptr @tipc_msg_skb_clone._rs, !3, !"_rs", i1 false, i1 false}
!5 = !{ptr @__func__.tipc_msg_skb_clone, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tipc_msg_skb_clone._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @tipc_msg_skb_clone._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/tipc/msg.c", i32 753, i32 2}
!12 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @tipc_msg_assemble._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @tipc_msg_assemble._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/tipc/msg.c", i32 792, i32 2}
!17 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @tipc_msg_reassemble._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @tipc_msg_reassemble._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/skbuff.h", i32 1846, i32 2}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/tipc/msg.h", i32 577, i32 3}
!29 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @msg_set_importance._entry, !28, !"_entry", i1 false, i1 false}
!32 = !{ptr @msg_set_importance._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!35 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{!"sp"}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"auto-init"}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{!"branch_weights", i32 1, i32 2000}
!57 = !{i8 0, i8 2}
!58 = !{!"branch_weights", i32 2002, i32 2000}
!59 = !{!"branch_weights", i32 4001, i32 4000000}
!60 = !{i64 2155059459, i64 2155059947, i64 2155059496, i64 2155059552, i64 2155059586, i64 2155059610, i64 2155059651, i64 2155059672, i64 2155059700, i64 2155059734}
!61 = !{i32 0, i32 131072}
!62 = !{i64 2149366898}
!63 = !{i64 2149367164}
