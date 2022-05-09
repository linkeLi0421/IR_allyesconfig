; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_synproxy.c_pt.bc'
source_filename = "../net/netfilter/nft_synproxy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_object_type = type { ptr, ptr, %struct.list_head, i32, i32, ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.30 }
%union.anon.30 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nft_object_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nf_synproxy_info = type { i8, i8, i16 }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
%struct.synproxy_options = type { i8, i8, i16, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.sk_buff = type { %union.anon.3, %union.anon.179, %union.anon.180, [48 x i8], %union.anon.181, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.183, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.179 = type { ptr }
%union.anon.180 = type { i64 }
%union.anon.181 = type { %struct.anon.182 }
%struct.anon.182 = type { i32, ptr }
%union.anon.183 = type { %struct.anon.184 }
%struct.anon.184 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.185, i32, i32, i32, i16, i16, %union.anon.187, i32, %union.anon.188, %union.anon.189, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.185 = type { i32 }
%union.anon.187 = type { i32 }
%union.anon.188 = type { i32 }
%union.anon.189 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.synproxy_net = type { ptr, ptr, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.107, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.107 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.97, i32, %struct.spinlock }
%union.anon.97 = type { %struct.anon.98 }
%struct.anon.98 = type { ptr, ptr }
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
%struct.nft_object = type { %struct.list_head, %struct.rhlist_head, %struct.nft_object_hash_key, i32, i64, i16, ptr, [80 x i8], ptr, [4 x i8], [0 x i8], [120 x i8] }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.nft_object_hash_key = type { ptr, ptr }

@nft_synproxy_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_synproxy_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_synproxy_policy, i32 3, i8 0, i8 0 }, section ".data..read_mostly", align 4
@nft_synproxy_obj_type = internal global %struct.nft_object_type { ptr null, ptr @nft_synproxy_obj_ops, %struct.list_head zeroinitializer, i32 10, i32 3, ptr null, ptr @nft_synproxy_policy }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_synproxy__734_386_nft_synproxy_module_init6 = internal global ptr @nft_synproxy_module_init, section ".initcall6.init", align 4
@__exitcall_nft_synproxy_module_exit = internal global ptr @nft_synproxy_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file735 = internal constant [45 x i8] c"nft_synproxy.file=net/netfilter/nft_synproxy\00", section ".modinfo", align 1
@__UNIQUE_ID_license736 = internal constant [25 x i8] c"nft_synproxy.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author737 = internal constant [62 x i8] c"nft_synproxy.author=Fernando Fernandez <ffmancera@riseup.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias738 = internal constant [37 x i8] c"nft_synproxy.alias=nft-expr-synproxy\00", section ".modinfo", align 1
@__UNIQUE_ID_alias739 = internal constant [30 x i8] c"nft_synproxy.alias=nft-obj-10\00", section ".modinfo", align 1
@__UNIQUE_ID_description740 = internal constant [62 x i8] c"nft_synproxy.description=nftables SYNPROXY expression support\00", section ".modinfo", align 1
@nft_synproxy_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_synproxy_eval, ptr null, i32 16, ptr @nft_synproxy_init, ptr null, ptr null, ptr @nft_synproxy_destroy, ptr null, ptr @nft_synproxy_dump, ptr @nft_synproxy_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_synproxy_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"synproxy\00", [23 x i8] zeroinitializer }, align 32
@nft_synproxy_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.30 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.30 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.30 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@synproxy_net_id = external dso_local local_unnamed_addr global i32, align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nft_synproxy_obj_ops = internal constant { %struct.nft_object_ops, [36 x i8] } { %struct.nft_object_ops { ptr @nft_synproxy_obj_eval, i32 4, ptr @nft_synproxy_obj_init, ptr @nft_synproxy_obj_destroy, ptr @nft_synproxy_obj_dump, ptr @nft_synproxy_obj_update, ptr @nft_synproxy_obj_type }, [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 7, i64 10]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 7, i64 10]
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"nft_synproxy_ops\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 283, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 295, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"nft_synproxy_policy\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 17, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 45, i32 7 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 695, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.30 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 723, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [21 x i8] c"nft_synproxy_obj_ops\00", align 1
@___asan_gen_.33 = private constant [32 x i8] c"../net/netfilter/nft_synproxy.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 343, i32 36 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias738, ptr @__UNIQUE_ID_alias739, ptr @__UNIQUE_ID_author737, ptr @__UNIQUE_ID_description740, ptr @__UNIQUE_ID_file735, ptr @__UNIQUE_ID_license736, ptr @__exitcall_nft_synproxy_module_exit, ptr @__initcall__kmod_nft_synproxy__734_386_nft_synproxy_module_init6, ptr @nft_synproxy_module_exit, ptr @nft_synproxy_ops, ptr @.str, ptr @nft_synproxy_policy, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @nft_synproxy_obj_ops], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_synproxy_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_synproxy_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_synproxy_obj_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_synproxy_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_synproxy_type) #7
  tail call void @nft_unregister_obj(ptr noundef nonnull @nft_synproxy_obj_type) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_synproxy_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_obj(ptr noundef nonnull @nft_synproxy_obj_type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_synproxy_type) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %err5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

err5:                                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nft_unregister_obj(ptr noundef nonnull @nft_synproxy_obj_type) #7
  br label %cleanup

cleanup:                                          ; preds = %err5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %err5 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_synproxy_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  tail call fastcc void @nft_synproxy_do_eval(ptr noundef %data.i, ptr noundef %regs, ptr noundef %pkt)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_synproxy_init(ptr nocapture noundef readonly %ctx, ptr nocapture noundef writeonly %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %call1 = tail call fastcc i32 @nft_synproxy_do_init(ptr noundef %ctx, ptr noundef %tb, ptr noundef %data.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_synproxy_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @nft_synproxy_do_destroy(ptr noundef %ctx)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_synproxy_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %tmp.i14.i = alloca i32, align 4
  %tmp.i12.i = alloca i8, align 1
  %tmp.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %mss.i = getelementptr inbounds %struct.nf_synproxy_info, ptr %data.i, i32 0, i32 2
  %0 = ptrtoint ptr %mss.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mss.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #7
  %2 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %tmp.i.i, align 2
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.nla_put_failure.i_crit_edge

entry.nla_put_failure.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure.i

lor.lhs.false.i:                                  ; preds = %entry
  %wscale.i = getelementptr inbounds %struct.nf_synproxy_info, ptr %data.i, i32 0, i32 1
  %3 = ptrtoint ptr %wscale.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wscale.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i12.i) #7
  %5 = ptrtoint ptr %tmp.i12.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %tmp.i12.i, align 1
  %call.i13.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i12.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i12.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %tobool3.not.i = icmp eq i32 %call.i13.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.nla_put_failure.i_crit_edge

lor.lhs.false.i.nla_put_failure.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure.i

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data.i, align 2
  %conv.i = zext i8 %7 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i14.i) #7
  %8 = ptrtoint ptr %tmp.i14.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv.i, ptr %tmp.i14.i, align 4
  %call.i15.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i14.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i14.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool7.not.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false4.i.nft_synproxy_do_dump.exit_crit_edge, label %lor.lhs.false4.i.nla_put_failure.i_crit_edge

lor.lhs.false4.i.nla_put_failure.i_crit_edge:     ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure.i

lor.lhs.false4.i.nft_synproxy_do_dump.exit_crit_edge: ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nft_synproxy_do_dump.exit

nla_put_failure.i:                                ; preds = %lor.lhs.false4.i.nla_put_failure.i_crit_edge, %lor.lhs.false.i.nla_put_failure.i_crit_edge, %entry.nla_put_failure.i_crit_edge
  br label %nft_synproxy_do_dump.exit

nft_synproxy_do_dump.exit:                        ; preds = %nla_put_failure.i, %lor.lhs.false4.i.nft_synproxy_do_dump.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %nla_put_failure.i ], [ 0, %lor.lhs.false4.i.nft_synproxy_do_dump.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_synproxy_validate(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %expr, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %call = tail call i32 @nft_chain_validate_hooks(ptr noundef %1, i32 noundef 6) #7
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nft_synproxy_do_eval(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) unnamed_addr #2 align 64 {
entry:
  %info.i = alloca %struct.nf_synproxy_info, align 4
  %opts = alloca %struct.synproxy_options, align 4
  %_tcph = alloca %struct.tcphdr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %opts) #7
  %0 = call ptr @memset(ptr %opts, i32 0, i32 16)
  %1 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pkt, align 4
  %thoff.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %3 = ptrtoint ptr %thoff.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %thoff.i, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph) #7
  %tprot = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %5 = call ptr @memset(ptr %_tcph, i32 255, i32 20)
  %6 = ptrtoint ptr %tprot to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tprot, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %7)
  %cmp.not = icmp eq i8 %7, 6
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %state.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv.i = zext i8 %12 to i32
  %call4 = tail call zeroext i16 @nf_ip_checksum(ptr noundef %2, i32 noundef %conv.i, i32 noundef %4, i8 noundef zeroext 6) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call4)
  %tobool.not = icmp eq i16 %call4, 0
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %regs, align 4
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 6
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i, align 8
  %18 = add i32 %4, %17
  %sub.i1.i = sub i32 %15, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 19
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !48

if.end.i.i:                                       ; preds = %if.end7
  %tobool2.not.i.i = icmp eq ptr %2, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then10_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then10_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %2, i32 noundef %4, ptr noundef nonnull %_tcph, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then10_crit_edge, label %lor.lhs.false.i.i.if.end12_crit_edge

lor.lhs.false.i.i.if.end12_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

lor.lhs.false.i.i.if.then10_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

skb_header_pointer.exit:                          ; preds = %if.end7
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 19
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 %4
  %tobool9.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool9.not, label %skb_header_pointer.exit.if.then10_crit_edge, label %skb_header_pointer.exit.if.end12_crit_edge

skb_header_pointer.exit.if.end12_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

skb_header_pointer.exit.if.then10_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then10

if.then10:                                        ; preds = %skb_header_pointer.exit.if.then10_crit_edge, %lor.lhs.false.i.i.if.then10_crit_edge, %if.end.i.i.if.then10_crit_edge
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %regs, align 4
  br label %cleanup

if.end12:                                         ; preds = %skb_header_pointer.exit.if.end12_crit_edge, %lor.lhs.false.i.i.if.end12_crit_edge
  %retval.0.i.i50 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.if.end12_crit_edge ], [ %_tcph, %lor.lhs.false.i.i.if.end12_crit_edge ]
  %call13 = call zeroext i1 @synproxy_parse_options(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %retval.0.i.i50, ptr noundef nonnull %opts) #7
  br i1 %call13, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %regs, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15, i32 0, i32 18
  %23 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %protocol, align 8
  %25 = zext i16 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i16 %24, label %sw.epilog [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb18
  ]

sw.bb:                                            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @nft_synproxy_eval_v4(ptr noundef %priv, ptr noundef %regs, ptr noundef %pkt, ptr noundef nonnull %retval.0.i.i50, ptr noundef nonnull %opts)
  br label %cleanup

sw.bb18:                                          ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info.i) #7
  %26 = getelementptr inbounds %struct.nf_synproxy_info, ptr %info.i, i32 0, i32 2
  %27 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %priv, align 2
  %29 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %info.i, align 4
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %state.i, align 4
  %net.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %net.i.i, align 4
  %call2.i = call fastcc ptr @synproxy_pernet(ptr noundef %33) #7
  %34 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pkt, align 4
  %syn.i = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i50, i32 0, i32 4
  %36 = ptrtoint ptr %syn.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %bf.load.i = load i16, ptr %syn.i, align 4
  %37 = and i16 %bf.load.i, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool.not.i = icmp eq i16 %37, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.bb18
  %38 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !49
  %stats.i.i = getelementptr inbounds %struct.synproxy_net, ptr %call2.i, i32 0, i32 1
  %39 = ptrtoint ptr %stats.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %stats.i.i, align 4
  %41 = ptrtoint ptr %40 to i32
  %42 = call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %45
  %46 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %47, %41
  %48 = inttoptr i32 %add.i.i to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add13.i.i = add i32 %50, 1
  store i32 %add13.i.i, ptr %48, align 4
  %51 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !50
  %and.i.i.i.i = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i44, label %if.then.i.do.end28.i.i_crit_edge, !prof !51

if.then.i.do.end28.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28.i.i

if.then.i.i44:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @warn_bogus_irq_restore() #7
  br label %do.end28.i.i

do.end28.i.i:                                     ; preds = %if.then.i.i44, %if.then.i.do.end28.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %38) #7, !srcloc !52
  %52 = ptrtoint ptr %syn.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %bf.load.i.i = load i16, ptr %syn.i, align 4
  %53 = and i16 %bf.load.i.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %53)
  %.not.i.i = icmp eq i16 %53, 192
  br i1 %.not.i.i, label %if.then42.i.i, label %do.end28.i.i.if.end45.i.i_crit_edge

do.end28.i.i.if.end45.i.i_crit_edge:              ; preds = %do.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i.i

if.then42.i.i:                                    ; preds = %do.end28.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %opts to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %opts, align 4
  %56 = or i8 %55, 16
  store i8 %56, ptr %opts, align 4
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then42.i.i, %do.end28.i.i.if.end45.i.i_crit_edge
  %57 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %priv, align 2
  %59 = ptrtoint ptr %opts to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %opts, align 4
  %and72.i.i = and i8 %60, %58
  store i8 %and72.i.i, ptr %opts, align 4
  %mss_option.i.i = getelementptr inbounds %struct.synproxy_options, ptr %opts, i32 0, i32 2
  %61 = ptrtoint ptr %mss_option.i.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %mss_option.i.i, align 2
  %mss_encode.i.i = getelementptr inbounds %struct.synproxy_options, ptr %opts, i32 0, i32 3
  %63 = ptrtoint ptr %mss_encode.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %62, ptr %mss_encode.i.i, align 4
  %64 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %26, align 2
  store i16 %65, ptr %mss_option.i.i, align 2
  %66 = and i8 %and72.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool56.not.i.i = icmp eq i8 %66, 0
  br i1 %tobool56.not.i.i, label %if.else.i.i, label %if.then57.i.i

if.then57.i.i:                                    ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @synproxy_init_timestamp_cookie(ptr noundef nonnull %info.i, ptr noundef nonnull %opts) #7
  br label %nft_synproxy_tcp_options.exit.i

if.else.i.i:                                      ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and60.i.i = and i8 %and72.i.i, -23
  %67 = ptrtoint ptr %opts to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %and60.i.i, ptr %opts, align 4
  br label %nft_synproxy_tcp_options.exit.i

nft_synproxy_tcp_options.exit.i:                  ; preds = %if.else.i.i, %if.then57.i.i
  call void @synproxy_send_client_synack_ipv6(ptr noundef %33, ptr noundef %35, ptr noundef nonnull %retval.0.i.i50, ptr noundef nonnull %opts) #7
  br label %if.end15.sink.split.i.sink.split

if.else.i:                                        ; preds = %sw.bb18
  %68 = and i16 %bf.load.i, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool7.not.i = icmp eq i16 %68, 0
  br i1 %tobool7.not.i, label %if.else.i.nft_synproxy_eval_v6.exit_crit_edge, label %if.then8.i

if.else.i.nft_synproxy_eval_v6.exit_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nft_synproxy_eval_v6.exit

if.then8.i:                                       ; preds = %if.else.i
  %seq.i = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i50, i32 0, i32 2
  %69 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %seq.i, align 4
  %call9.i = call zeroext i1 @synproxy_recv_client_ack_ipv6(ptr noundef %33, ptr noundef %35, ptr noundef nonnull %retval.0.i.i50, ptr noundef nonnull %opts, i32 noundef %70) #7
  br i1 %call9.i, label %if.then8.i.if.end15.sink.split.i.sink.split_crit_edge, label %if.then8.i.if.end15.sink.split.i_crit_edge

if.then8.i.if.end15.sink.split.i_crit_edge:       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i

if.then8.i.if.end15.sink.split.i.sink.split_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split.i.sink.split

if.end15.sink.split.i.sink.split:                 ; preds = %if.then8.i.if.end15.sink.split.i.sink.split_crit_edge, %nft_synproxy_tcp_options.exit.i
  call void @consume_skb(ptr noundef %35) #7
  br label %if.end15.sink.split.i

if.end15.sink.split.i:                            ; preds = %if.end15.sink.split.i.sink.split, %if.then8.i.if.end15.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.then8.i.if.end15.sink.split.i_crit_edge ], [ 2, %if.end15.sink.split.i.sink.split ]
  %71 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink.i, ptr %regs, align 4
  br label %nft_synproxy_eval_v6.exit

nft_synproxy_eval_v6.exit:                        ; preds = %if.end15.sink.split.i, %if.else.i.nft_synproxy_eval_v6.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %nft_synproxy_eval_v6.exit, %sw.bb, %if.then14, %if.then10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %opts) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nf_ip_checksum(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @synproxy_parse_options(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nft_synproxy_eval_v4(ptr nocapture noundef readonly %priv, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt, ptr noundef %tcp, ptr noundef %opts) unnamed_addr #2 align 64 {
entry:
  %info = alloca %struct.nf_synproxy_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #7
  %0 = getelementptr inbounds %struct.nf_synproxy_info, ptr %info, i32 0, i32 2
  %1 = ptrtoint ptr %priv to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %priv, align 2
  %3 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %info, align 4
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net.i, align 4
  %call2 = tail call fastcc ptr @synproxy_pernet(ptr noundef %7)
  %8 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pkt, align 4
  %syn = getelementptr inbounds %struct.tcphdr, ptr %tcp, i32 0, i32 4
  %10 = ptrtoint ptr %syn to i32
  call void @__asan_load2_noabort(i32 %10)
  %bf.load = load i16, ptr %syn, align 4
  %11 = and i16 %bf.load, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool.not = icmp eq i16 %11, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #7, !srcloc !49
  %stats.i = getelementptr inbounds %struct.synproxy_net, ptr %call2, i32 0, i32 1
  %13 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stats.i, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %21, %15
  %22 = inttoptr i32 %add.i to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %add13.i = add i32 %24, 1
  store i32 %add13.i, ptr %22, align 4
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #7, !srcloc !50
  %and.i.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.do.end28.i_crit_edge, !prof !51

if.then.do.end28.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end28.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @warn_bogus_irq_restore() #7
  br label %do.end28.i

do.end28.i:                                       ; preds = %if.then.i, %if.then.do.end28.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #7, !srcloc !52
  %26 = ptrtoint ptr %syn to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load.i = load i16, ptr %syn, align 4
  %27 = and i16 %bf.load.i, 192
  call void @__sanitizer_cov_trace_const_cmp2(i16 192, i16 %27)
  %.not.i = icmp eq i16 %27, 192
  br i1 %.not.i, label %if.then42.i, label %do.end28.i.if.end45.i_crit_edge

do.end28.i.if.end45.i_crit_edge:                  ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

if.then42.i:                                      ; preds = %do.end28.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %opts to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %opts, align 4
  %30 = or i8 %29, 16
  store i8 %30, ptr %opts, align 4
  br label %if.end45.i

if.end45.i:                                       ; preds = %if.then42.i, %do.end28.i.if.end45.i_crit_edge
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %priv, align 2
  %33 = ptrtoint ptr %opts to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %opts, align 4
  %and72.i = and i8 %34, %32
  store i8 %and72.i, ptr %opts, align 4
  %mss_option.i = getelementptr inbounds %struct.synproxy_options, ptr %opts, i32 0, i32 2
  %35 = ptrtoint ptr %mss_option.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %mss_option.i, align 2
  %mss_encode.i = getelementptr inbounds %struct.synproxy_options, ptr %opts, i32 0, i32 3
  %37 = ptrtoint ptr %mss_encode.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %mss_encode.i, align 4
  %38 = ptrtoint ptr %0 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %0, align 2
  store i16 %39, ptr %mss_option.i, align 2
  %40 = and i8 %and72.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool56.not.i = icmp eq i8 %40, 0
  br i1 %tobool56.not.i, label %if.else.i, label %if.then57.i

if.then57.i:                                      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @synproxy_init_timestamp_cookie(ptr noundef nonnull %info, ptr noundef %opts) #7
  br label %nft_synproxy_tcp_options.exit

if.else.i:                                        ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  %and60.i = and i8 %and72.i, -23
  %41 = ptrtoint ptr %opts to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %and60.i, ptr %opts, align 4
  br label %nft_synproxy_tcp_options.exit

nft_synproxy_tcp_options.exit:                    ; preds = %if.else.i, %if.then57.i
  call void @synproxy_send_client_synack(ptr noundef %7, ptr noundef %9, ptr noundef %tcp, ptr noundef %opts) #7
  call void @consume_skb(ptr noundef %9) #7
  br label %if.end15.sink.split

if.else:                                          ; preds = %entry
  %42 = and i16 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool7.not = icmp eq i16 %42, 0
  br i1 %tobool7.not, label %if.else.if.end15_crit_edge, label %if.then8

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then8:                                         ; preds = %if.else
  %seq = getelementptr inbounds %struct.tcphdr, ptr %tcp, i32 0, i32 2
  %43 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %seq, align 4
  %call9 = tail call zeroext i1 @synproxy_recv_client_ack(ptr noundef %7, ptr noundef %9, ptr noundef %tcp, ptr noundef %opts, i32 noundef %44) #7
  br i1 %call9, label %if.then10, label %if.then8.if.end15.sink.split_crit_edge

if.then8.if.end15.sink.split_crit_edge:           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.sink.split

if.then10:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @consume_skb(ptr noundef %9) #7
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.then10, %if.then8.if.end15.sink.split_crit_edge, %nft_synproxy_tcp_options.exit
  %.sink = phi i32 [ 2, %if.then10 ], [ 2, %nft_synproxy_tcp_options.exit ], [ 0, %if.then8.if.end15.sink.split_crit_edge ]
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %.sink, ptr %regs, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.else.if.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @synproxy_pernet(ptr noundef %net) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synproxy_net_id to i32))
  %0 = load i32, ptr @synproxy_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !53
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 45, ptr noundef nonnull @.str.2) #7
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #7
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !54
  %9 = tail call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #7
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synproxy_send_client_synack(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @synproxy_recv_client_ack(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synproxy_init_timestamp_cookie(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synproxy_send_client_synack_ipv6(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @synproxy_recv_client_ack_ipv6(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nft_synproxy_do_init(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %tb, ptr nocapture noundef writeonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call fastcc ptr @synproxy_pernet(ptr noundef %1)
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  %mss = getelementptr inbounds %struct.nf_synproxy_info, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %mss to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %mss, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 2
  %7 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i84 = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i84 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %add.ptr.i.i84, align 1
  %wscale = getelementptr inbounds %struct.nf_synproxy_info, ptr %priv, i32 0, i32 1
  %11 = ptrtoint ptr %wscale to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %wscale, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %arrayidx10 = getelementptr ptr, ptr %tb, i32 3
  %12 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %if.end9.if.end19_crit_edge, label %if.then12

if.end9.if.end19_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then12:                                        ; preds = %if.end9
  %add.ptr.i.i85 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i85 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %15)
  %tobool15.not = icmp ult i32 %15, 16
  br i1 %tobool15.not, label %if.end17, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %conv = trunc i32 %15 to i8
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %priv, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.end17, %if.end9.if.end19_crit_edge
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %19 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %family, align 2
  %call21 = tail call i32 @nf_ct_netns_get(ptr noundef %18, i8 noundef zeroext %20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %21 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %family, align 2
  %23 = zext i8 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %22, label %if.end24.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb32
    i8 1, label %if.end24.sw.bb38_crit_edge
    i8 7, label %if.end24.sw.bb38_crit_edge86
  ]

if.end24.sw.bb38_crit_edge86:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb38

if.end24.sw.bb38_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb38

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %if.end24
  %24 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctx, align 4
  %call28 = tail call i32 @nf_synproxy_ipv4_init(ptr noundef %call, ptr noundef %25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.nf_ct_failure_crit_edge

sw.bb.nf_ct_failure_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_ct_failure

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb32:                                          ; preds = %if.end24
  %26 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx, align 4
  %call34 = tail call i32 @nf_synproxy_ipv6_init(ptr noundef %call, ptr noundef %27) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %sw.bb32.cleanup_crit_edge, label %sw.bb32.nf_ct_failure_crit_edge

sw.bb32.nf_ct_failure_crit_edge:                  ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_ct_failure

sw.bb32.cleanup_crit_edge:                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb38:                                          ; preds = %if.end24.sw.bb38_crit_edge, %if.end24.sw.bb38_crit_edge86
  %28 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctx, align 4
  %call40 = tail call i32 @nf_synproxy_ipv4_init(ptr noundef %call, ptr noundef %29) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %sw.bb38.nf_ct_failure_crit_edge

sw.bb38.nf_ct_failure_crit_edge:                  ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #9
  br label %nf_ct_failure

if.end43:                                         ; preds = %sw.bb38
  %30 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctx, align 4
  %call45 = tail call i32 @nf_synproxy_ipv6_init(ptr noundef %call, ptr noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end43.cleanup_crit_edge, label %if.then47

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then47:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctx, align 4
  tail call void @nf_synproxy_ipv4_fini(ptr noundef %call, ptr noundef %33) #7
  br label %nf_ct_failure

nf_ct_failure:                                    ; preds = %if.then47, %sw.bb38.nf_ct_failure_crit_edge, %sw.bb32.nf_ct_failure_crit_edge, %sw.bb.nf_ct_failure_crit_edge
  %err.0 = phi i32 [ %call40, %sw.bb38.nf_ct_failure_crit_edge ], [ %call45, %if.then47 ], [ %call34, %sw.bb32.nf_ct_failure_crit_edge ], [ %call28, %sw.bb.nf_ct_failure_crit_edge ]
  %34 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx, align 4
  %36 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %family, align 2
  tail call void @nf_ct_netns_put(ptr noundef %35, i8 noundef zeroext %37) #7
  br label %cleanup

cleanup:                                          ; preds = %nf_ct_failure, %if.end43.cleanup_crit_edge, %sw.bb32.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.then12.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %nf_ct_failure ], [ -95, %if.then12.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ], [ 0, %if.end43.cleanup_crit_edge ], [ 0, %sw.bb32.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_netns_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_synproxy_ipv4_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_synproxy_ipv6_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_synproxy_ipv4_fini(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_netns_put(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nft_synproxy_do_destroy(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %call = tail call fastcc ptr @synproxy_pernet(ptr noundef %1)
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 2
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %3, label %entry.sw.epilog_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb2
    i8 1, label %entry.sw.bb4_crit_edge
    i8 7, label %entry.sw.bb4_crit_edge19
  ]

entry.sw.bb4_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.bb4_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  tail call void @nf_synproxy_ipv4_fini(ptr noundef %call, ptr noundef %6) #7
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctx, align 4
  tail call void @nf_synproxy_ipv6_fini(ptr noundef %call, ptr noundef %8) #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry.sw.bb4_crit_edge, %entry.sw.bb4_crit_edge19
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctx, align 4
  tail call void @nf_synproxy_ipv4_fini(ptr noundef %call, ptr noundef %10) #7
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  tail call void @nf_synproxy_ipv6_fini(ptr noundef %call, ptr noundef %12) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  %13 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctx, align 4
  %15 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %family, align 2
  tail call void @nf_ct_netns_put(ptr noundef %14, i8 noundef zeroext %16) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_synproxy_ipv6_fini(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_chain_validate_hooks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_synproxy_obj_eval(ptr nocapture noundef readonly %obj, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  tail call fastcc void @nft_synproxy_do_eval(ptr noundef %data.i, ptr noundef %regs, ptr noundef %pkt)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_synproxy_obj_init(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %tb, ptr nocapture noundef writeonly %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %call1 = tail call fastcc i32 @nft_synproxy_do_init(ptr noundef %ctx, ptr noundef %tb, ptr noundef %data.i)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_synproxy_obj_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @nft_synproxy_do_destroy(ptr noundef %ctx)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_synproxy_obj_dump(ptr noundef %skb, ptr nocapture noundef readonly %obj, i1 noundef zeroext %reset) #2 align 64 {
entry:
  %tmp.i14.i = alloca i32, align 4
  %tmp.i12.i = alloca i8, align 1
  %tmp.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %mss.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 2
  %0 = ptrtoint ptr %mss.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mss.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #7
  %2 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %tmp.i.i, align 2
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.nla_put_failure.i_crit_edge

entry.nla_put_failure.i_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure.i

lor.lhs.false.i:                                  ; preds = %entry
  %wscale.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 1
  %3 = ptrtoint ptr %wscale.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %wscale.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i12.i) #7
  %5 = ptrtoint ptr %tmp.i12.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %tmp.i12.i, align 1
  %call.i13.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i12.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i12.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13.i)
  %tobool3.not.i = icmp eq i32 %call.i13.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false4.i, label %lor.lhs.false.i.nla_put_failure.i_crit_edge

lor.lhs.false.i.nla_put_failure.i_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure.i

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data.i, align 2
  %conv.i = zext i8 %7 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i14.i) #7
  %8 = ptrtoint ptr %tmp.i14.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv.i, ptr %tmp.i14.i, align 4
  %call.i15.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i14.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i14.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15.i)
  %tobool7.not.i = icmp eq i32 %call.i15.i, 0
  br i1 %tobool7.not.i, label %lor.lhs.false4.i.nft_synproxy_do_dump.exit_crit_edge, label %lor.lhs.false4.i.nla_put_failure.i_crit_edge

lor.lhs.false4.i.nla_put_failure.i_crit_edge:     ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nla_put_failure.i

lor.lhs.false4.i.nft_synproxy_do_dump.exit_crit_edge: ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nft_synproxy_do_dump.exit

nla_put_failure.i:                                ; preds = %lor.lhs.false4.i.nla_put_failure.i_crit_edge, %lor.lhs.false.i.nla_put_failure.i_crit_edge, %entry.nla_put_failure.i_crit_edge
  br label %nft_synproxy_do_dump.exit

nft_synproxy_do_dump.exit:                        ; preds = %nla_put_failure.i, %lor.lhs.false4.i.nft_synproxy_do_dump.exit_crit_edge
  %retval.0.i = phi i32 [ -1, %nla_put_failure.i ], [ 0, %lor.lhs.false4.i.nft_synproxy_do_dump.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nft_synproxy_obj_update(ptr nocapture noundef writeonly %obj, ptr nocapture noundef readonly %newobj) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %newobj, i32 0, i32 10
  %data.i3 = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %1 = load i32, ptr %data.i, align 2
  %2 = ptrtoint ptr %data.i3 to i32
  call void @__asan_storeN_noabort(i32 %2, i32 4)
  store i32 %1, ptr %data.i3, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !27, !28, !29, !31, !32, !34, !36}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__initcall__kmod_nft_synproxy__734_386_nft_synproxy_module_init6, !1, !"__initcall__kmod_nft_synproxy__734_386_nft_synproxy_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_synproxy.c", i32 386, i32 1}
!2 = !{ptr @__exitcall_nft_synproxy_module_exit, !3, !"__exitcall_nft_synproxy_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_synproxy.c", i32 387, i32 1}
!4 = !{ptr @__UNIQUE_ID_file735, !5, !"__UNIQUE_ID_file735", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_synproxy.c", i32 389, i32 1}
!6 = !{ptr @__UNIQUE_ID_license736, !5, !"__UNIQUE_ID_license736", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author737, !8, !"__UNIQUE_ID_author737", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_synproxy.c", i32 390, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias738, !10, !"__UNIQUE_ID_alias738", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_synproxy.c", i32 391, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias739, !12, !"__UNIQUE_ID_alias739", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_synproxy.c", i32 392, i32 1}
!13 = !{ptr @__UNIQUE_ID_description740, !14, !"__UNIQUE_ID_description740", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_synproxy.c", i32 393, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_synproxy.c", i32 295, i32 11}
!17 = !{ptr @nft_synproxy_type, !18, !"nft_synproxy_type", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_synproxy.c", i32 293, i32 29}
!19 = !{ptr @nft_synproxy_ops, !20, !"nft_synproxy_ops", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_synproxy.c", i32 283, i32 34}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!23 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nft_synproxy_policy, !33, !"nft_synproxy_policy", i1 false, i1 false}
!33 = !{!"../net/netfilter/nft_synproxy.c", i32 17, i32 32}
!34 = !{ptr @nft_synproxy_obj_type, !35, !"nft_synproxy_obj_type", i1 false, i1 false}
!35 = !{!"../net/netfilter/nft_synproxy.c", i32 353, i32 31}
!36 = !{ptr @nft_synproxy_obj_ops, !37, !"nft_synproxy_obj_ops", i1 false, i1 false}
!37 = !{!"../net/netfilter/nft_synproxy.c", i32 343, i32 36}
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
!48 = !{!"branch_weights", i32 2000, i32 1}
!49 = !{i64 772979, i64 773040}
!50 = !{i64 775711}
!51 = !{!"branch_weights", i32 1, i32 2000}
!52 = !{i64 775996}
!53 = !{i64 2149677135}
!54 = !{i64 2149677401}
