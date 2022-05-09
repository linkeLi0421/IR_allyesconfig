; ModuleID = '/llk/IR_all_yes/net/ipv6/seg6.c_pt.bc'
source_filename = "../net/ipv6/seg6.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.8 }
%union.anon.8 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.ipv6_sr_hdr = type { i8, i8, i8, i8, i8, i8, i16, [0 x %struct.in6_addr] }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct.sr6_tlv = type { i8, i8, [0 x i8] }
%struct.sk_buff = type { %union.anon.0, %union.anon.126, %union.anon.127, [48 x i8], %union.anon.128, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.130, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
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
%struct.inet6_skb_parm = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.20, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.98, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.98 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
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
%struct.seg6_hmac_info = type { %struct.rhash_head, %struct.callback_head, i32, [64 x i8], i8, i8 }
%struct.rhash_head = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.sock_common = type { %union.anon.99, %union.anon.101, %union.anon.102, i16, i8, i8, i32, %union.anon.104, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.107, [0 x i32], %union.anon.108, i16, i16, %union.anon.109, %struct.refcount_struct, [0 x i32], %union.anon.110 }
%union.anon.99 = type { i64 }
%union.anon.101 = type { i32 }
%union.anon.102 = type { i32 }
%union.anon.104 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.107 = type { i32 }
%union.anon.108 = type { %struct.hlist_node }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.115 }
%union.anon.115 = type { [6 x i32], [24 x i8] }
%struct.seg6_pernet_data = type { %struct.mutex, ptr, %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@seg6_genl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"SEG6\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, i32 7, i32 0, i8 -64, i8 4, i8 0, i8 0, ptr @seg6_genl_policy, ptr null, ptr null, ptr @seg6_genl_ops, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@ip6_segments_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @seg6_net_init, ptr null, ptr @seg6_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@seg6_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016Segment Routing with IPv6\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"seg6_init\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/ipv6/seg6.c\00", [16 x i8] zeroinitializer }, align 32
@seg6_init._entry_ptr = internal global ptr @seg6_init._entry, section ".printk_index", align 4
@seg6_genl_policy = internal constant { [8 x %struct.nla_policy], [32 x i8] } { [8 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 11, i8 0, i16 16, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.27 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@seg6_genl_ops = internal constant { [4 x %struct.genl_ops], [48 x i8] } { [4 x %struct.genl_ops] [%struct.genl_ops { ptr @seg6_genl_sethmac, ptr null, ptr null, ptr null, ptr null, i32 0, i8 1, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr null, ptr @seg6_genl_dumphmac_start, ptr @seg6_genl_dumphmac, ptr @seg6_genl_dumphmac_done, ptr null, i32 0, i8 2, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @seg6_genl_set_tunsrc, ptr null, ptr null, ptr null, ptr null, i32 0, i8 3, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @seg6_genl_get_tunsrc, ptr null, ptr null, ptr null, ptr null, i32 0, i8 4, i8 0, i8 1, i8 3 }], [48 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@seg6_genl_get_tunsrc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@seg6_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&sdata->lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.10 = private unnamed_addr constant [17 x i8] c"ip6_segments_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 458, i32 33 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 533, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [17 x i8] c"seg6_genl_policy\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 139, i32 32 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"seg6_genl_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 463, i32 30 }
@___asan_gen_.32 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 991, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 277, i32 12 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 695, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 723, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [19 x i8] c"../net/ipv6/seg6.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 425, i32 2 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @seg6_init._entry, ptr @seg6_init._entry_ptr, ptr @ip6_segments_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @seg6_genl_policy, ptr @seg6_genl_ops, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @seg6_net_init.__key, ptr @.str.8], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ip6_segments_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seg6_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seg6_genl_policy to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seg6_genl_ops to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seg6_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @seg6_validate_srh(ptr nocapture noundef readonly %srh, i32 noundef %len, i1 noundef zeroext %reduced) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %srh, i32 0, i32 2
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %1)
  %cmp.not = icmp eq i8 %1, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup55_crit_edge

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup55

if.end:                                           ; preds = %entry
  %hdrlen = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %srh, i32 0, i32 1
  %2 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hdrlen, align 1
  %conv2 = zext i8 %3 to i32
  %add = shl nuw nsw i32 %conv2, 3
  %shl = add nuw nsw i32 %add, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %len)
  %cmp3.not = icmp eq i32 %shl, %len
  br i1 %cmp3.not, label %if.end6, label %if.end.cleanup55_crit_edge

if.end.cleanup55_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup55

if.end6:                                          ; preds = %if.end
  br i1 %reduced, label %if.end6.if.else_crit_edge, label %land.lhs.true

if.end6.if.else_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end6
  %segments_left = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %srh, i32 0, i32 3
  %4 = ptrtoint ptr %segments_left to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %segments_left, align 1
  %first_segment = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %srh, i32 0, i32 4
  %6 = ptrtoint ptr %first_segment to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %first_segment, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp9 = icmp ugt i8 %5, %7
  br i1 %cmp9, label %land.lhs.true.cleanup55_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true.cleanup55_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup55

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end6.if.else_crit_edge
  %8 = lshr i8 %3, 1
  %first_segment14 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %srh, i32 0, i32 4
  %9 = ptrtoint ptr %first_segment14 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %first_segment14, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %10)
  %cmp16.not = icmp ugt i8 %8, %10
  br i1 %cmp16.not, label %if.end19, label %if.else.cleanup55_crit_edge

if.else.cleanup55_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup55

if.end19:                                         ; preds = %if.else
  %conv15 = zext i8 %10 to i32
  %segments_left20 = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %srh, i32 0, i32 3
  %11 = ptrtoint ptr %segments_left20 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %segments_left20, align 1
  %conv21 = zext i8 %12 to i32
  %add24 = add nuw nsw i32 %conv15, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add24, i32 %conv21)
  %cmp25 = icmp ult i32 %add24, %conv21
  br i1 %cmp25, label %if.end19.cleanup55_crit_edge, label %if.end29

if.end19.cleanup55_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup55

if.end29:                                         ; preds = %if.end19
  %shl33 = shl nuw nsw i32 %add24, 4
  %add34 = or i32 %shl33, 8
  %sub35 = sub i32 %len, %add34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub35)
  %cmp36 = icmp slt i32 %sub35, 0
  br i1 %cmp36, label %if.end29.cleanup55_crit_edge, label %if.end29.while.cond_crit_edge

if.end29.while.cond_crit_edge:                    ; preds = %if.end29
  br label %while.cond

if.end29.cleanup55_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup55

while.cond:                                       ; preds = %cleanup.while.cond_crit_edge, %if.end29.while.cond_crit_edge
  %tlv_offset.0 = phi i32 [ %spec.select, %cleanup.while.cond_crit_edge ], [ %add34, %if.end29.while.cond_crit_edge ]
  %trailing.0 = phi i32 [ %sub48, %cleanup.while.cond_crit_edge ], [ %sub35, %if.end29.while.cond_crit_edge ]
  %13 = zext i32 %trailing.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %trailing.0, label %cleanup [
    i32 0, label %while.cond.cleanup55.loopexit_crit_edge
    i32 1, label %while.cond.cleanup55_crit_edge
  ]

while.cond.cleanup55_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup55

while.cond.cleanup55.loopexit_crit_edge:          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup55.loopexit

cleanup:                                          ; preds = %while.cond
  %add.ptr = getelementptr i8, ptr %srh, i32 %tlv_offset.0
  %len45 = getelementptr inbounds %struct.sr6_tlv, ptr %add.ptr, i32 0, i32 1
  %14 = ptrtoint ptr %len45 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %len45, align 1
  %conv46 = zext i8 %15 to i32
  %add47 = add nuw nsw i32 %conv46, 2
  %sub48 = sub nsw i32 %trailing.0, %add47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub48)
  %cmp49 = icmp slt i32 %sub48, 0
  %add53 = select i1 %cmp49, i32 0, i32 %add47
  %spec.select = add i32 %add53, %tlv_offset.0
  br i1 %cmp49, label %cleanup.cleanup55.loopexit_crit_edge, label %cleanup.while.cond_crit_edge

cleanup.while.cond_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

cleanup.cleanup55.loopexit_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup55.loopexit

cleanup55.loopexit:                               ; preds = %cleanup.cleanup55.loopexit_crit_edge, %while.cond.cleanup55.loopexit_crit_edge
  %retval.2.ph = phi i1 [ true, %while.cond.cleanup55.loopexit_crit_edge ], [ false, %cleanup.cleanup55.loopexit_crit_edge ]
  br label %cleanup55

cleanup55:                                        ; preds = %cleanup55.loopexit, %while.cond.cleanup55_crit_edge, %if.end29.cleanup55_crit_edge, %if.end19.cleanup55_crit_edge, %if.else.cleanup55_crit_edge, %land.lhs.true.cleanup55_crit_edge, %if.end.cleanup55_crit_edge, %entry.cleanup55_crit_edge
  %retval.2 = phi i1 [ false, %entry.cleanup55_crit_edge ], [ false, %if.end.cleanup55_crit_edge ], [ false, %land.lhs.true.cleanup55_crit_edge ], [ false, %if.else.cleanup55_crit_edge ], [ false, %if.end19.cleanup55_crit_edge ], [ false, %if.end29.cleanup55_crit_edge ], [ %retval.2.ph, %cleanup55.loopexit ], [ false, %while.cond.cleanup55_crit_edge ]
  ret i1 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @seg6_get_srh(ptr noundef %skb, i32 noundef %flags) local_unnamed_addr #2 align 64 {
entry:
  %flags.addr = alloca i32, align 4
  %srhoff = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flags.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %srhoff) #10
  %1 = ptrtoint ptr %srhoff to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %srhoff, align 4
  %call = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef nonnull %srhoff, i32 noundef 43, ptr noundef null, ptr noundef nonnull %flags.addr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %srhoff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %srhoff, align 4
  %add = add i32 %3, 8
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %5, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %if.end.if.end3_crit_edge, !prof !39

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add)
  %cmp3.i = icmp ult i32 %5, %add
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !39

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub i32 %add, %sub.i.i
  %call13.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #10
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end3_crit_edge

pskb_may_pull.exit.if.end3_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %pskb_may_pull.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = ptrtoint ptr %srhoff to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %srhoff, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %11
  %hdrlen = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %add.ptr, i32 0, i32 1
  %12 = ptrtoint ptr %hdrlen to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hdrlen, align 1
  %conv = zext i8 %13 to i32
  %add4 = shl nuw nsw i32 %conv, 3
  %shl = add nuw nsw i32 %add4, 8
  %add5 = add i32 %shl, %11
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i, align 4
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i25 = sub i32 %15, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add5, i32 %sub.i.i25)
  %cmp.not.i26 = icmp ugt i32 %add5, %sub.i.i25
  br i1 %cmp.not.i26, label %if.end.i28, label %if.end3.if.end8_crit_edge, !prof !39

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.end.i28:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add5)
  %cmp3.i27 = icmp ult i32 %15, %add5
  br i1 %cmp3.i27, label %if.end.i28.cleanup_crit_edge, label %pskb_may_pull.exit34, !prof !39

if.end.i28.cleanup_crit_edge:                     ; preds = %if.end.i28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

pskb_may_pull.exit34:                             ; preds = %if.end.i28
  %sub.i29 = sub i32 %add5, %sub.i.i25
  %call13.i30 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i29) #10
  %cmp14.i31.not = icmp eq ptr %call13.i30, null
  br i1 %cmp14.i31.not, label %pskb_may_pull.exit34.cleanup_crit_edge, label %pskb_may_pull.exit34.if.end8_crit_edge

pskb_may_pull.exit34.if.end8_crit_edge:           ; preds = %pskb_may_pull.exit34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

pskb_may_pull.exit34.cleanup_crit_edge:           ; preds = %pskb_may_pull.exit34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %pskb_may_pull.exit34.if.end8_crit_edge, %if.end3.if.end8_crit_edge
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = ptrtoint ptr %srhoff to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %srhoff, align 4
  %add.ptr10 = getelementptr i8, ptr %19, i32 %21
  %type.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %add.ptr10, i32 0, i32 2
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %23)
  %cmp.not.i35 = icmp eq i8 %23, 4
  br i1 %cmp.not.i35, label %if.end.i36, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i36:                                       ; preds = %if.end8
  %hdrlen.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %add.ptr10, i32 0, i32 1
  %24 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hdrlen.i, align 1
  %conv2.i = zext i8 %25 to i32
  %add.i = shl nuw nsw i32 %conv2.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add4)
  %cmp3.not.i = icmp eq i32 %add.i, %add4
  br i1 %cmp3.not.i, label %if.end6.i, label %if.end.i36.cleanup_crit_edge

if.end.i36.cleanup_crit_edge:                     ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6.i:                                        ; preds = %if.end.i36
  %26 = lshr i8 %25, 1
  %first_segment14.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %add.ptr10, i32 0, i32 4
  %27 = ptrtoint ptr %first_segment14.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %first_segment14.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %28)
  %cmp16.not.i = icmp ugt i8 %26, %28
  br i1 %cmp16.not.i, label %if.end19.i, label %if.end6.i.cleanup_crit_edge

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19.i:                                       ; preds = %if.end6.i
  %conv15.i = zext i8 %28 to i32
  %segments_left20.i = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %add.ptr10, i32 0, i32 3
  %29 = ptrtoint ptr %segments_left20.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %segments_left20.i, align 1
  %conv21.i = zext i8 %30 to i32
  %add24.i = add nuw nsw i32 %conv15.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add24.i, i32 %conv21.i)
  %cmp25.i = icmp ult i32 %add24.i, %conv21.i
  br i1 %cmp25.i, label %if.end19.i.cleanup_crit_edge, label %if.end29.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29.i:                                       ; preds = %if.end19.i
  %shl33.i = shl nuw nsw i32 %add24.i, 4
  %add34.i = or i32 %shl33.i, 8
  %sub35.i = sub nsw i32 %shl, %add34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub35.i)
  %cmp36.i = icmp slt i32 %sub35.i, 0
  br i1 %cmp36.i, label %if.end29.i.cleanup_crit_edge, label %if.end29.i.while.cond.i_crit_edge

if.end29.i.while.cond.i_crit_edge:                ; preds = %if.end29.i
  br label %while.cond.i

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.i:                                     ; preds = %cleanup.i.while.cond.i_crit_edge, %if.end29.i.while.cond.i_crit_edge
  %tlv_offset.0.i = phi i32 [ %spec.select.i, %cleanup.i.while.cond.i_crit_edge ], [ %add34.i, %if.end29.i.while.cond.i_crit_edge ]
  %trailing.0.i = phi i32 [ %sub48.i, %cleanup.i.while.cond.i_crit_edge ], [ %sub35.i, %if.end29.i.while.cond.i_crit_edge ]
  %31 = zext i32 %trailing.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %trailing.0.i, label %cleanup.i [
    i32 0, label %while.cond.i.cleanup.loopexit_crit_edge
    i32 1, label %while.cond.i.cleanup_crit_edge
  ]

while.cond.i.cleanup_crit_edge:                   ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.i.cleanup.loopexit_crit_edge:          ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.loopexit

cleanup.i:                                        ; preds = %while.cond.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr10, i32 %tlv_offset.0.i
  %len45.i = getelementptr inbounds %struct.sr6_tlv, ptr %add.ptr.i, i32 0, i32 1
  %32 = ptrtoint ptr %len45.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %len45.i, align 1
  %conv46.i = zext i8 %33 to i32
  %add47.i = add nuw nsw i32 %conv46.i, 2
  %sub48.i = sub nsw i32 %trailing.0.i, %add47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub48.i)
  %cmp49.i = icmp slt i32 %sub48.i, 0
  %add53.i = select i1 %cmp49.i, i32 0, i32 %add47.i
  %spec.select.i = add i32 %add53.i, %tlv_offset.0.i
  br i1 %cmp49.i, label %cleanup.i.cleanup.loopexit_crit_edge, label %cleanup.i.while.cond.i_crit_edge

cleanup.i.while.cond.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

cleanup.i.cleanup.loopexit_crit_edge:             ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.loopexit

cleanup.loopexit:                                 ; preds = %cleanup.i.cleanup.loopexit_crit_edge, %while.cond.i.cleanup.loopexit_crit_edge
  %retval.0.ph = phi ptr [ %add.ptr10, %while.cond.i.cleanup.loopexit_crit_edge ], [ null, %cleanup.i.cleanup.loopexit_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %while.cond.i.cleanup_crit_edge, %if.end29.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end.i36.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %pskb_may_pull.exit34.cleanup_crit_edge, %if.end.i28.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %pskb_may_pull.exit.cleanup_crit_edge ], [ null, %pskb_may_pull.exit34.cleanup_crit_edge ], [ null, %if.end.i.cleanup_crit_edge ], [ null, %if.end.i28.cleanup_crit_edge ], [ null, %if.end8.cleanup_crit_edge ], [ null, %if.end.i36.cleanup_crit_edge ], [ null, %if.end6.i.cleanup_crit_edge ], [ null, %if.end19.i.cleanup_crit_edge ], [ null, %if.end29.i.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.loopexit ], [ null, %while.cond.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %srhoff) #10
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @seg6_icmp_srh(ptr noundef %skb, ptr nocapture noundef %opt) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %network_header1 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %0 = ptrtoint ptr %network_header1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %network_header1, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  store i16 %conv.i, ptr %network_header1, align 4
  %call = tail call ptr @seg6_get_srh(ptr noundef %skb, i32 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.ipv6_sr_hdr, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %7)
  %cmp.not = icmp eq i8 %7, 4
  br i1 %cmp.not, label %if.end4, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.inet6_skb_parm, ptr %opt, i32 0, i32 7
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 4
  %10 = or i16 %9, 256
  store i16 %10, ptr %flags, align 4
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %12 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv7 = trunc i32 %sub.ptr.sub to i16
  %srhoff = getelementptr inbounds %struct.inet6_skb_parm, ptr %opt, i32 0, i32 10
  %13 = ptrtoint ptr %srhoff to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv7, ptr %srhoff, align 2
  br label %out

out:                                              ; preds = %if.end4, %if.end.out_crit_edge, %entry.out_crit_edge
  %14 = ptrtoint ptr %network_header1 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %1, ptr %network_header1, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @seg6_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @seg6_genl_family) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @ip6_segments_ops) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.out_unregister_genl_crit_edge

if.end.out_unregister_genl_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unregister_genl

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @seg6_iptunnel_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.out_unregister_pernet_crit_edge

if.end4.out_unregister_pernet_crit_edge:          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unregister_pernet

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @seg6_local_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.out_unregister_pernet_crit_edge

if.end8.out_unregister_pernet_crit_edge:          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unregister_pernet

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @seg6_hmac_init() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.end, label %out_unregister_iptun

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %out

out:                                              ; preds = %out_unregister_genl, %do.end, %entry.out_crit_edge
  %err.0 = phi i32 [ %call, %entry.out_crit_edge ], [ %err.2, %out_unregister_genl ], [ 0, %do.end ]
  ret i32 %err.0

out_unregister_iptun:                             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @seg6_local_exit() #10
  tail call void @seg6_iptunnel_exit() #10
  br label %out_unregister_pernet

out_unregister_pernet:                            ; preds = %out_unregister_iptun, %if.end8.out_unregister_pernet_crit_edge, %if.end4.out_unregister_pernet_crit_edge
  %err.1 = phi i32 [ %call5, %if.end4.out_unregister_pernet_crit_edge ], [ %call9, %if.end8.out_unregister_pernet_crit_edge ], [ %call13, %out_unregister_iptun ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip6_segments_ops) #10
  br label %out_unregister_genl

out_unregister_genl:                              ; preds = %out_unregister_pernet, %if.end.out_unregister_genl_crit_edge
  %err.2 = phi i32 [ %call1, %if.end.out_unregister_genl_crit_edge ], [ %err.1, %out_unregister_pernet ]
  %call18 = tail call i32 @genl_unregister_family(ptr noundef nonnull @seg6_genl_family) #10
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seg6_iptunnel_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seg6_local_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seg6_hmac_init() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @seg6_local_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seg6_iptunnel_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @seg6_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @seg6_hmac_exit() #10
  tail call void @seg6_iptunnel_exit() #10
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @ip6_segments_ops) #10
  %call = tail call i32 @genl_unregister_family(ptr noundef nonnull @seg6_genl_family) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seg6_hmac_exit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_genl_sethmac(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i, align 4
  %seg6_data.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 34
  %2 = ptrtoint ptr %seg6_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %seg6_data.i, align 32
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx3 = getelementptr ptr, ptr %5, i32 5
  %8 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %arrayidx7 = getelementptr ptr, ptr %5, i32 6
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %lor.lhs.false5.cleanup_crit_edge, label %if.end

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false5
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  %add.ptr.i.i94 = getelementptr i8, ptr %9, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i94 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %add.ptr.i.i94, align 1
  %add.ptr.i.i95 = getelementptr i8, ptr %11, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i95 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %add.ptr.i.i95, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %conv = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %15)
  %cmp20 = icmp ugt i8 %15, 64
  br i1 %cmp20, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #10
  %call24 = tail call ptr @seg6_hmac_info_lookup(ptr noundef %1, i32 noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool25.not = icmp eq i8 %15, 0
  br i1 %tobool25.not, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %call27 = tail call i32 @seg6_hmac_info_del(ptr noundef %1, i32 noundef %13) #10
  br label %out_unlock

if.end28:                                         ; preds = %if.end23
  %18 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %attrs, align 4
  %arrayidx30 = getelementptr ptr, ptr %19, i32 4
  %20 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %21, null
  br i1 %tobool31.not, label %if.end28.out_unlock_crit_edge, label %if.end33

if.end28.out_unlock_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end33:                                         ; preds = %if.end28
  %tobool34.not = icmp eq ptr %call24, null
  br i1 %tobool34.not, label %if.end33.if.end40_crit_edge, label %if.then35

if.end33.if.end40_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then35:                                        ; preds = %if.end33
  %call36 = tail call i32 @seg6_hmac_info_del(ptr noundef %1, i32 noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then35.if.end40_crit_edge, label %if.then35.out_unlock_crit_edge

if.then35.out_unlock_crit_edge:                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then35.if.end40_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.end40:                                         ; preds = %if.then35.if.end40_crit_edge, %if.end33.if.end40_crit_edge
  %22 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %attrs, align 4
  %arrayidx42 = getelementptr ptr, ptr %23, i32 4
  %24 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx42, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %26 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %26, i32 noundef 3520, i32 noundef 84) #14
  %tobool45.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool45.not, label %if.end40.out_unlock_crit_edge, label %if.end47

if.end40.out_unlock_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.end47:                                         ; preds = %if.end40
  %add.ptr.i = getelementptr i8, ptr %25, i32 4
  %secret48 = getelementptr inbounds %struct.seg6_hmac_info, ptr %call7.i.i, i32 0, i32 3
  %27 = call ptr @memcpy(ptr %secret48, ptr %add.ptr.i, i32 %conv)
  %slen50 = getelementptr inbounds %struct.seg6_hmac_info, ptr %call7.i.i, i32 0, i32 4
  %28 = ptrtoint ptr %slen50 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %15, ptr %slen50, align 8
  %alg_id = getelementptr inbounds %struct.seg6_hmac_info, ptr %call7.i.i, i32 0, i32 5
  %29 = ptrtoint ptr %alg_id to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %17, ptr %alg_id, align 1
  %hmackeyid51 = getelementptr inbounds %struct.seg6_hmac_info, ptr %call7.i.i, i32 0, i32 2
  %30 = ptrtoint ptr %hmackeyid51 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %13, ptr %hmackeyid51, align 4
  %call52 = tail call i32 @seg6_hmac_info_add(ptr noundef %1, i32 noundef %13, ptr noundef nonnull %call7.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end47.out_unlock_crit_edge, label %if.then54

if.end47.out_unlock_crit_edge:                    ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unlock

if.then54:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %out_unlock

out_unlock:                                       ; preds = %if.then54, %if.end47.out_unlock_crit_edge, %if.end40.out_unlock_crit_edge, %if.then35.out_unlock_crit_edge, %if.end28.out_unlock_crit_edge, %if.then26
  %err.0 = phi i32 [ %call36, %if.then35.out_unlock_crit_edge ], [ %call52, %if.then54 ], [ 0, %if.end47.out_unlock_crit_edge ], [ %call27, %if.then26 ], [ -22, %if.end28.out_unlock_crit_edge ], [ -12, %if.end40.out_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %3) #10
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.end19.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_unlock ], [ -22, %lor.lhs.false5.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_genl_dumphmac_start(ptr nocapture noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %2 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %skc_net.i, align 4
  %seg6_data.i = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 36, i32 34
  %7 = ptrtoint ptr %seg6_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %seg6_data.i, align 32
  %9 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %12 = inttoptr i32 %11 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3264, i32 noundef 36) #14
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %call7.i to i32
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %9, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  %iter.0 = phi ptr [ %12, %entry.if.end6_crit_edge ], [ %call7.i, %if.end ]
  %hmac_infos = getelementptr inbounds %struct.seg6_pernet_data, ptr %8, i32 0, i32 2
  tail call void @rhashtable_walk_enter(ptr noundef %hmac_infos, ptr noundef %iter.0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_genl_dumphmac(ptr noundef %skb, ptr nocapture noundef readonly %cb) #2 align 64 {
entry:
  %tmp.i19.i.i = alloca i8, align 1
  %tmp.i17.i.i = alloca i8, align 1
  %tmp.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = inttoptr i32 %2 to ptr
  %call.i = tail call i32 @rhashtable_walk_start_check(ptr noundef %3) #10
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %entry
  %call = call ptr @rhashtable_walk_next(ptr noundef %3) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %for.cond
  %cmp = icmp eq ptr %call, inttoptr (i32 -11 to ptr)
  br i1 %cmp, label %if.then.for.cond.backedge_crit_edge, label %done.loopexit.split.loop.exit

if.then.for.cond.backedge_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %__seg6_genl_dumphmac_element.exit, %if.then.for.cond.backedge_crit_edge
  br label %for.cond

if.else:                                          ; preds = %for.cond
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.end, label %if.end7

if.end7:                                          ; preds = %if.else
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 3, i32 12
  %6 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %portid, align 4
  %8 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nlmsg_seq, align 4
  %call.i24 = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %7, i32 noundef %11, ptr noundef nonnull @seg6_genl_family, i32 noundef 2, i8 noundef zeroext 2) #10
  %tobool.not.i = icmp eq ptr %call.i24, null
  br i1 %tobool.not.i, label %if.end7.done_crit_edge, label %if.end.i

if.end7.done_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.end.i:                                         ; preds = %if.end7
  %hmackeyid.i.i = getelementptr inbounds %struct.seg6_hmac_info, ptr %call, i32 0, i32 2
  %12 = ptrtoint ptr %hmackeyid.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hmackeyid.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #10
  %14 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i.i.i, align 4
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.end.i
  %slen.i.i = getelementptr inbounds %struct.seg6_hmac_info, ptr %call, i32 0, i32 4
  %15 = ptrtoint ptr %slen.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %slen.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i17.i.i) #10
  %17 = ptrtoint ptr %tmp.i17.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tmp.i17.i.i, align 1
  %call.i18.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i17.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i17.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i18.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i18.i.i, 0
  br i1 %tobool2.not.i.i, label %lor.lhs.false3.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i.i
  %18 = ptrtoint ptr %slen.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %slen.i.i, align 4
  %conv.i.i = zext i8 %19 to i32
  %secret.i.i = getelementptr inbounds %struct.seg6_hmac_info, ptr %call, i32 0, i32 3
  %call5.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef %conv.i.i, ptr noundef %secret.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %__seg6_hmac_fill_info.exit.i, label %lor.lhs.false3.i.i.if.then.i.i_crit_edge

lor.lhs.false3.i.i.if.then.i.i_crit_edge:         ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

__seg6_hmac_fill_info.exit.i:                     ; preds = %lor.lhs.false3.i.i
  %alg_id.i.i = getelementptr inbounds %struct.seg6_hmac_info, ptr %call, i32 0, i32 5
  %20 = ptrtoint ptr %alg_id.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %alg_id.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i19.i.i) #10
  %22 = ptrtoint ptr %tmp.i19.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %tmp.i19.i.i, align 1
  %call.i20.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i19.i.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i19.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i.i)
  %tobool9.not.i.not.i = icmp eq i32 %call.i20.i.i, 0
  br i1 %tobool9.not.i.not.i, label %__seg6_genl_dumphmac_element.exit, label %__seg6_hmac_fill_info.exit.i.if.then.i.i_crit_edge

__seg6_hmac_fill_info.exit.i.if.then.i.i_crit_edge: ; preds = %__seg6_hmac_fill_info.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %__seg6_hmac_fill_info.exit.i.if.then.i.i_crit_edge, %lor.lhs.false3.i.i.if.then.i.i_crit_edge, %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %add.ptr1.i2.i = getelementptr i8, ptr %call.i24, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i2.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.done_crit_edge, label %if.then.i.i.i.i

if.then.i.i.done_crit_edge:                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %done

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %23 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %24, %add.ptr1.i2.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !39

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %25 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i2.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #10
  br label %done

__seg6_genl_dumphmac_element.exit:                ; preds = %__seg6_hmac_fill_info.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i.i = getelementptr i8, ptr %call.i24, i32 -20
  %27 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %29 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  br label %for.cond.backedge

for.end:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %30 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len, align 4
  br label %done

done.loopexit.split.loop.exit:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %call to i32
  br label %done

done:                                             ; preds = %done.loopexit.split.loop.exit, %for.end, %if.end.i.i.i.i, %if.then.i.i.done_crit_edge, %if.end7.done_crit_edge
  %ret.0 = phi i32 [ %31, %for.end ], [ -90, %if.end.i.i.i.i ], [ -90, %if.then.i.i.done_crit_edge ], [ %32, %done.loopexit.split.loop.exit ], [ -12, %if.end7.done_crit_edge ]
  call void @rhashtable_walk_stop(ptr noundef %3) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_genl_dumphmac_done(ptr nocapture noundef readonly %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  %3 = inttoptr i32 %2 to ptr
  tail call void @rhashtable_walk_exit(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_genl_set_tunsrc(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i, align 4
  %seg6_data.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 34
  %2 = ptrtoint ptr %seg6_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %seg6_data.i, align 32
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %call5 = tail call ptr @kmemdup(ptr noundef %add.ptr.i, i32 noundef 16, i32 noundef 3264) #10
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_lock_nested(ptr noundef %3, i32 noundef 0) #10
  %tun_src = getelementptr inbounds %struct.seg6_pernet_data, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %tun_src to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tun_src, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !40
  %10 = ptrtoint ptr %tun_src to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call5, ptr %tun_src, align 4
  tail call void @mutex_unlock(ptr noundef %3) #10
  tail call void @synchronize_net() #10
  tail call void @kfree(ptr noundef %9) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_genl_get_tunsrc(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i, align 4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3844, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snd_portid, align 4
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 4
  %call2 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef %3, i32 noundef %5, ptr noundef nonnull @seg6_genl_family, i32 noundef 0, i8 noundef zeroext 4) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.free_msg_crit_edge, label %if.end5

if.end.free_msg_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_msg

if.end5:                                          ; preds = %if.end
  %6 = tail call i32 @llvm.read_register.i32(metadata !29) #10
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !41
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.end5.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end5.rcu_read_lock.exit_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end5
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end5.rcu_read_lock.exit_crit_edge
  %seg6_data.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 34
  %10 = ptrtoint ptr %seg6_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %seg6_data.i, align 32
  %tun_src7 = getelementptr inbounds %struct.seg6_pernet_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %tun_src7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %tun_src7, align 4
  %call9 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end18_crit_edge

rcu_read_lock.exit.do.end18_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true
  %.b37 = load i1, ptr @seg6_genl_get_tunsrc.__warned, align 1
  br i1 %.b37, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @seg6_genl_get_tunsrc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 277, ptr noundef nonnull @.str.4) #10
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true.do.end18_crit_edge, %rcu_read_lock.exit.do.end18_crit_edge
  %call20 = tail call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 16, ptr noundef %13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  %call.i38 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %tobool21.not, label %if.end23, label %nla_put_failure

if.end23:                                         ; preds = %do.end18
  br i1 %call.i38, label %if.end23.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i41

if.end23.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i41:                                ; preds = %if.end23
  %call1.i39 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i39)
  %tobool.not.i40 = icmp eq i32 %call1.i39, 0
  br i1 %tobool.not.i40, label %land.lhs.true.i41.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i43

land.lhs.true.i41.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i41
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i43:                               ; preds = %land.lhs.true.i41
  %.b4.i42 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i42, label %land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge, label %if.then.i44

land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i44:                                      ; preds = %land.lhs.true2.i43
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i44, %land.lhs.true2.i43.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i41.rcu_read_unlock.exit_crit_edge, %if.end23.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !42
  %14 = tail call i32 @llvm.read_register.i32(metadata !29) #10
  %and.i.i.i.i.i45 = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i45 to ptr
  %preempt_count.i.i.i.i46 = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i46, align 4
  %sub.i.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i46, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %add.ptr1.i = getelementptr i8, ptr %call2, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %18 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %20 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %21 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %_net.i, align 4
  %23 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %22, i32 0, i32 21
  %25 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i47 = tail call i32 @netlink_unicast(ptr noundef %26, ptr noundef nonnull %call.i.i.i, i32 noundef %24, i32 noundef 64) #10
  %27 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i47, i32 0) #10
  br label %cleanup

nla_put_failure:                                  ; preds = %do.end18
  br i1 %call.i38, label %nla_put_failure.rcu_read_unlock.exit58_crit_edge, label %land.lhs.true.i51

nla_put_failure.rcu_read_unlock.exit58_crit_edge: ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit58

land.lhs.true.i51:                                ; preds = %nla_put_failure
  %call1.i49 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i49)
  %tobool.not.i50 = icmp eq i32 %call1.i49, 0
  br i1 %tobool.not.i50, label %land.lhs.true.i51.rcu_read_unlock.exit58_crit_edge, label %land.lhs.true2.i53

land.lhs.true.i51.rcu_read_unlock.exit58_crit_edge: ; preds = %land.lhs.true.i51
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit58

land.lhs.true2.i53:                               ; preds = %land.lhs.true.i51
  %.b4.i52 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i52, label %land.lhs.true2.i53.rcu_read_unlock.exit58_crit_edge, label %if.then.i54

land.lhs.true2.i53.rcu_read_unlock.exit58_crit_edge: ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit58

if.then.i54:                                      ; preds = %land.lhs.true2.i53
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #10
  br label %rcu_read_unlock.exit58

rcu_read_unlock.exit58:                           ; preds = %if.then.i54, %land.lhs.true2.i53.rcu_read_unlock.exit58_crit_edge, %land.lhs.true.i51.rcu_read_unlock.exit58_crit_edge, %nla_put_failure.rcu_read_unlock.exit58_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !42
  %28 = tail call i32 @llvm.read_register.i32(metadata !29) #10
  %and.i.i.i.i.i55 = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i55 to ptr
  %preempt_count.i.i.i.i56 = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i56 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i56, align 4
  %sub.i.i.i57 = add i32 %31, -1
  store volatile i32 %sub.i.i.i57, ptr %preempt_count.i.i.i.i56, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %free_msg

free_msg:                                         ; preds = %rcu_read_unlock.exit58, %if.end.free_msg_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %free_msg, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %free_msg ], [ %27, %rcu_read_unlock.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seg6_hmac_info_lookup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seg6_hmac_info_del(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seg6_hmac_info_add(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_enter(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rhashtable_walk_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rhashtable_walk_start_check(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rhashtable_walk_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seg6_net_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 324) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @seg6_net_init.__key) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 16) #14
  %tun_src = getelementptr inbounds %struct.seg6_pernet_data, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %tun_src to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i23, ptr %tun_src, align 4
  %tobool3.not = icmp eq ptr %call7.i.i23, null
  br i1 %tobool3.not, label %do.body.cleanup.sink.split_crit_edge, label %if.end5

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end5:                                          ; preds = %do.body
  %seg6_data = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 34
  %3 = ptrtoint ptr %seg6_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %seg6_data, align 32
  %call6 = tail call i32 @seg6_hmac_net_init(ptr noundef %net) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.cleanup_crit_edge, label %if.then8

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %tun_src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %tun_src, align 4
  tail call void @kfree(ptr noundef %5) #10
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then8, %do.body.cleanup.sink.split_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ], [ -12, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @seg6_net_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %seg6_data.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 34
  %0 = ptrtoint ptr %seg6_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %seg6_data.i, align 32
  tail call void @seg6_hmac_net_exit(ptr noundef %net) #10
  %tun_src = getelementptr inbounds %struct.seg6_pernet_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tun_src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %tun_src, align 4
  tail call void @kfree(ptr noundef %3) #10
  tail call void @kfree(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seg6_hmac_net_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seg6_hmac_net_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !23, !24, !26, !28}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv6/seg6.c", i32 533, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @seg6_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @seg6_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @seg6_genl_family, !7, !"seg6_genl_family", i1 false, i1 false}
!7 = !{!"../net/ipv6/seg6.c", i32 492, i32 27}
!8 = !{ptr @seg6_genl_policy, !9, !"seg6_genl_policy", i1 false, i1 false}
!9 = !{!"../net/ipv6/seg6.c", i32 139, i32 32}
!10 = !{ptr @seg6_genl_ops, !11, !"seg6_genl_ops", i1 false, i1 false}
!11 = !{!"../net/ipv6/seg6.c", i32 463, i32 30}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/net/netlink.h", i32 991, i32 3}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../net/ipv6/seg6.c", i32 277, i32 12}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!19 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ip6_segments_ops, !25, !"ip6_segments_ops", i1 false, i1 false}
!25 = !{!"../net/ipv6/seg6.c", i32 458, i32 33}
!26 = !{ptr @seg6_net_init.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../net/ipv6/seg6.c", i32 425, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{i64 2157659389}
!41 = !{i64 2149333007}
!42 = !{i64 2149333273}
