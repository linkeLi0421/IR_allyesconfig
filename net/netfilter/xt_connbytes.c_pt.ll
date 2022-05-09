; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_connbytes.c_pt.bc'
source_filename = "../net/netfilter/xt_connbytes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xt_action_param = type { %union.anon.151, %union.anon.152, ptr, i32, i16, i8 }
%union.anon.151 = type { ptr }
%union.anon.152 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.134, %union.anon.135, [48 x i8], %union.anon.136, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.138, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.134 = type { ptr }
%union.anon.135 = type { i64 }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type { i32, ptr }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.140, i32, i32, i32, i16, i16, %union.anon.142, i32, %union.anon.143, %union.anon.144, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.140 = type { i32 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.144 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.172, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.164 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.164 = type { %union.nf_inet_addr, %union.anon.165, i8, i8 }
%union.anon.165 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.172 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.xt_connbytes_info = type { %struct.anon.157, i8, i8 }
%struct.anon.157 = type { i64, i64 }
%struct.nf_conn_counter = type { %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.104, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.104 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }

@__UNIQUE_ID_file582 = internal constant [45 x i8] c"xt_connbytes.file=net/netfilter/xt_connbytes\00", section ".modinfo", align 1
@__UNIQUE_ID_license583 = internal constant [25 x i8] c"xt_connbytes.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author584 = internal constant [57 x i8] c"xt_connbytes.author=Harald Welte <laforge@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description585 = internal constant [82 x i8] c"xt_connbytes.description=Xtables: Number of packets/bytes per connection matching\00", section ".modinfo", align 1
@__UNIQUE_ID_alias586 = internal constant [33 x i8] c"xt_connbytes.alias=ipt_connbytes\00", section ".modinfo", align 1
@__UNIQUE_ID_alias587 = internal constant [34 x i8] c"xt_connbytes.alias=ip6t_connbytes\00", section ".modinfo", align 1
@connbytes_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"connbytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @connbytes_mt, ptr @connbytes_mt_check, ptr @connbytes_mt_destroy, ptr null, ptr null, i32 24, i32 0, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_connbytes__588_156_connbytes_mt_init6 = internal global ptr @connbytes_mt_init, section ".initcall6.init", align 4
@__exitcall_connbytes_mt_exit = internal global ptr @connbytes_mt_exit, section ".exitcall.exit", align 4
@connbytes_mt_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.connbytes_mt_check = private unnamed_addr constant [19 x i8] c"connbytes_mt_check\00", align 1
@connbytes_mt_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.connbytes_mt_check, ptr @.str.2, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016xt_connbytes: cannot load conntrack support for proto=%u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net/netfilter/xt_connbytes.c\00", [35 x i8] zeroinitializer }, align 32
@connbytes_mt_check._entry_ptr = internal global ptr @connbytes_mt_check._entry, section ".printk_index", align 4
@connbytes_mt_check._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @__func__.connbytes_mt_check, ptr @.str.2, i32 123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\014xt_connbytes: Forcing CT accounting to be enabled\0A\00", [43 x i8] zeroinitializer }, align 32
@connbytes_mt_check._entry_ptr.5 = internal global ptr @connbytes_mt_check._entry.3, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.6 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.9 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 115, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [32 x i8] c"../net/netfilter/xt_connbytes.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 123, i32 3 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias586, ptr @__UNIQUE_ID_alias587, ptr @__UNIQUE_ID_author584, ptr @__UNIQUE_ID_description585, ptr @__UNIQUE_ID_file582, ptr @__UNIQUE_ID_license583, ptr @__exitcall_connbytes_mt_exit, ptr @__initcall__kmod_xt_connbytes__588_156_connbytes_mt_init6, ptr @connbytes_mt_check._entry, ptr @connbytes_mt_check._entry.3, ptr @connbytes_mt_check._entry_ptr, ptr @connbytes_mt_check._entry_ptr.5, ptr @connbytes_mt_exit, ptr @connbytes_mt_check._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connbytes_mt_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connbytes_mt_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connbytes_mt_check._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @connbytes_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_match(ptr noundef nonnull @connbytes_mt_reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @connbytes_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @connbytes_mt_reg) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @connbytes_mt(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %3 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %4, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = inttoptr i32 %and1.i to ptr
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i.i, label %if.end.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.end
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.i.i.not.i.i = icmp eq i8 %9, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, label %nf_conn_acct_find.exit

nf_ct_ext_exist.exit.i.i.cleanup_crit_edge:       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nf_conn_acct_find.exit:                           ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %tobool2.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool2.not, label %nf_conn_acct_find.exit.cleanup_crit_edge, label %if.end4

nf_conn_acct_find.exit.cleanup_crit_edge:         ; preds = %nf_conn_acct_find.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %nf_conn_acct_find.exit
  %what5 = getelementptr inbounds %struct.xt_connbytes_info, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %what5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %what5, align 8
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %if.end4.sw.epilog77_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb20
    i8 2, label %sw.bb40
  ]

if.end4.sw.epilog77_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog77

sw.bb:                                            ; preds = %if.end4
  %direction = getelementptr inbounds %struct.xt_connbytes_info, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %direction, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.6)
  switch i8 %14, label %sw.bb.sw.epilog77_crit_edge [
    i8 0, label %sw.bb7
    i8 1, label %sw.bb9
    i8 2, label %sw.bb13
  ]

sw.bb.sw.epilog77_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog77

sw.bb7:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %add.ptr.i.i, i32 noundef 8) #4
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef nonnull %add.ptr.i.i) #4
  br label %sw.epilog77

sw.bb9:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx10 = getelementptr %struct.nf_conn_counter, ptr %add.ptr.i.i, i32 1
  %call.i.i140 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx10, i32 noundef 8) #4
  %call.i141 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx10) #4
  br label %sw.epilog77

sw.bb13:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i142 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %add.ptr.i.i, i32 noundef 8) #4
  %call.i143 = tail call i64 @generic_atomic64_read(ptr noundef nonnull %add.ptr.i.i) #4
  %arrayidx17 = getelementptr %struct.nf_conn_counter, ptr %add.ptr.i.i, i32 1
  %call.i.i144 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx17, i32 noundef 8) #4
  %call.i145 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx17) #4
  %add = add i64 %call.i145, %call.i143
  br label %sw.epilog77

sw.bb20:                                          ; preds = %if.end4
  %direction21 = getelementptr inbounds %struct.xt_connbytes_info, ptr %2, i32 0, i32 2
  %16 = ptrtoint ptr %direction21 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %direction21, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %17, label %sw.bb20.sw.epilog77_crit_edge [
    i8 0, label %sw.bb23
    i8 1, label %sw.bb27
    i8 2, label %sw.bb31
  ]

sw.bb20.sw.epilog77_crit_edge:                    ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog77

sw.bb23:                                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #6
  %bytes25 = getelementptr inbounds %struct.nf_conn_counter, ptr %add.ptr.i.i, i32 0, i32 1
  %call.i.i146 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes25, i32 noundef 8) #4
  %call.i147 = tail call i64 @generic_atomic64_read(ptr noundef %bytes25) #4
  br label %sw.epilog77

sw.bb27:                                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #6
  %bytes29 = getelementptr %struct.nf_conn_counter, ptr %add.ptr.i.i, i32 1, i32 1
  %call.i.i148 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes29, i32 noundef 8) #4
  %call.i149 = tail call i64 @generic_atomic64_read(ptr noundef %bytes29) #4
  br label %sw.epilog77

sw.bb31:                                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #6
  %bytes33 = getelementptr inbounds %struct.nf_conn_counter, ptr %add.ptr.i.i, i32 0, i32 1
  %call.i.i150 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes33, i32 noundef 8) #4
  %call.i151 = tail call i64 @generic_atomic64_read(ptr noundef %bytes33) #4
  %bytes36 = getelementptr %struct.nf_conn_counter, ptr %add.ptr.i.i, i32 1, i32 1
  %call.i.i152 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes36, i32 noundef 8) #4
  %call.i153 = tail call i64 @generic_atomic64_read(ptr noundef %bytes36) #4
  %add38 = add i64 %call.i153, %call.i151
  br label %sw.epilog77

sw.bb40:                                          ; preds = %if.end4
  %direction41 = getelementptr inbounds %struct.xt_connbytes_info, ptr %2, i32 0, i32 2
  %19 = ptrtoint ptr %direction41 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %direction41, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %20, label %sw.bb40.sw.epilog77_crit_edge [
    i8 0, label %sw.bb43
    i8 1, label %sw.bb50
    i8 2, label %sw.bb57
  ]

sw.bb40.sw.epilog77_crit_edge:                    ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog77

sw.bb43:                                          ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #6
  %bytes45 = getelementptr inbounds %struct.nf_conn_counter, ptr %add.ptr.i.i, i32 0, i32 1
  %call.i.i154 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes45, i32 noundef 8) #4
  %call.i155 = tail call i64 @generic_atomic64_read(ptr noundef %bytes45) #4
  %call.i.i156 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %add.ptr.i.i, i32 noundef 8) #4
  %call.i157 = tail call i64 @generic_atomic64_read(ptr noundef nonnull %add.ptr.i.i) #4
  br label %sw.epilog72

sw.bb50:                                          ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx51 = getelementptr %struct.nf_conn_counter, ptr %add.ptr.i.i, i32 1
  %bytes52 = getelementptr %struct.nf_conn_counter, ptr %add.ptr.i.i, i32 1, i32 1
  %call.i.i158 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes52, i32 noundef 8) #4
  %call.i159 = tail call i64 @generic_atomic64_read(ptr noundef %bytes52) #4
  %call.i.i160 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx51, i32 noundef 8) #4
  %call.i161 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx51) #4
  br label %sw.epilog72

sw.bb57:                                          ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #6
  %bytes59 = getelementptr inbounds %struct.nf_conn_counter, ptr %add.ptr.i.i, i32 0, i32 1
  %call.i.i162 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes59, i32 noundef 8) #4
  %call.i163 = tail call i64 @generic_atomic64_read(ptr noundef %bytes59) #4
  %arrayidx61 = getelementptr %struct.nf_conn_counter, ptr %add.ptr.i.i, i32 1
  %bytes62 = getelementptr %struct.nf_conn_counter, ptr %add.ptr.i.i, i32 1, i32 1
  %call.i.i164 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes62, i32 noundef 8) #4
  %call.i165 = tail call i64 @generic_atomic64_read(ptr noundef %bytes62) #4
  %add64 = add i64 %call.i165, %call.i163
  %call.i.i166 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %add.ptr.i.i, i32 noundef 8) #4
  %call.i167 = tail call i64 @generic_atomic64_read(ptr noundef nonnull %add.ptr.i.i) #4
  %call.i.i168 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx61, i32 noundef 8) #4
  %call.i169 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx61) #4
  %add71 = add i64 %call.i169, %call.i167
  br label %sw.epilog72

sw.epilog72:                                      ; preds = %sw.bb57, %sw.bb50, %sw.bb43
  %bytes.0 = phi i64 [ %add64, %sw.bb57 ], [ %call.i159, %sw.bb50 ], [ %call.i155, %sw.bb43 ]
  %pkts.0 = phi i64 [ %add71, %sw.bb57 ], [ %call.i161, %sw.bb50 ], [ %call.i157, %sw.bb43 ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %pkts.0)
  %cmp.not = icmp eq i64 %pkts.0, 0
  br i1 %cmp.not, label %sw.epilog72.sw.epilog77_crit_edge, label %if.then74

sw.epilog72.sw.epilog77_crit_edge:                ; preds = %sw.epilog72
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog77

if.then74:                                        ; preds = %sw.epilog72
  call void @__sanitizer_cov_trace_pc() #6
  %call75 = tail call i64 @div64_u64(i64 noundef %bytes.0, i64 noundef %pkts.0) #4
  br label %sw.epilog77

sw.epilog77:                                      ; preds = %if.then74, %sw.epilog72.sw.epilog77_crit_edge, %sw.bb40.sw.epilog77_crit_edge, %sw.bb31, %sw.bb27, %sw.bb23, %sw.bb20.sw.epilog77_crit_edge, %sw.bb13, %sw.bb9, %sw.bb7, %sw.bb.sw.epilog77_crit_edge, %if.end4.sw.epilog77_crit_edge
  %what.0 = phi i64 [ 0, %if.end4.sw.epilog77_crit_edge ], [ %call75, %if.then74 ], [ 0, %sw.epilog72.sw.epilog77_crit_edge ], [ 0, %sw.bb20.sw.epilog77_crit_edge ], [ %add38, %sw.bb31 ], [ %call.i149, %sw.bb27 ], [ %call.i147, %sw.bb23 ], [ 0, %sw.bb.sw.epilog77_crit_edge ], [ %add, %sw.bb13 ], [ %call.i141, %sw.bb9 ], [ %call.i, %sw.bb7 ], [ 0, %sw.bb40.sw.epilog77_crit_edge ]
  %to = getelementptr inbounds %struct.anon.157, ptr %2, i32 0, i32 1
  %22 = ptrtoint ptr %to to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %to, align 8
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %25)
  %cmp79.not = icmp ult i64 %23, %25
  br i1 %cmp79.not, label %if.else, label %if.then81

if.then81:                                        ; preds = %sw.epilog77
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %what.0, i64 %23)
  %cmp84.not = icmp ule i64 %what.0, %23
  call void @__sanitizer_cov_trace_cmp8(i64 %what.0, i64 %25)
  %cmp88 = icmp uge i64 %what.0, %25
  %spec.select = select i1 %cmp84.not, i1 %cmp88, i1 false
  br label %cleanup

if.else:                                          ; preds = %sw.epilog77
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %what.0, i64 %23)
  %cmp92 = icmp ult i64 %what.0, %23
  call void @__sanitizer_cov_trace_cmp8(i64 %what.0, i64 %25)
  %cmp96 = icmp ugt i64 %what.0, %25
  %spec.select139 = select i1 %cmp92, i1 true, i1 %cmp96
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then81, %nf_conn_acct_find.exit.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %spec.select, %if.then81 ], [ %spec.select139, %if.else ], [ false, %entry.cleanup_crit_edge ], [ false, %nf_conn_acct_find.exit.cleanup_crit_edge ], [ false, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @connbytes_mt_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %what = getelementptr inbounds %struct.xt_connbytes_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %what to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %what, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %switch = icmp ult i8 %3, 3
  br i1 %switch, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %direction = getelementptr inbounds %struct.xt_connbytes_info, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %direction to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %direction, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %5)
  %switch58 = icmp ult i8 %5, 3
  br i1 %switch58, label %if.end25, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25:                                         ; preds = %if.end
  %6 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 6
  %8 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %family, align 4
  %call = tail call i32 @nf_ct_netns_get(ptr noundef %7, i8 noundef zeroext %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp26 = icmp slt i32 %call, 0
  br i1 %cmp26, label %if.then28, label %if.end25.if.end35_crit_edge

if.end25.if.end35_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then28:                                        ; preds = %if.end25
  %call29 = tail call i32 @___ratelimit(ptr noundef nonnull @connbytes_mt_check._rs, ptr noundef nonnull @__func__.connbytes_mt_check) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool.not = icmp eq i32 %call29, 0
  br i1 %tobool.not, label %if.then28.if.end35_crit_edge, label %do.end

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

do.end:                                           ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %family, align 4
  %conv32 = zext i8 %11 to i32
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv32) #7
  br label %if.end35

if.end35:                                         ; preds = %do.end, %if.then28.if.end35_crit_edge, %if.end25.if.end35_crit_edge
  %12 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %par, align 4
  %sysctl_acct.i = getelementptr inbounds %struct.net, ptr %13, i32 0, i32 40, i32 3
  %14 = ptrtoint ptr %sysctl_acct.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sysctl_acct.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i.not = icmp eq i8 %15, 0
  br i1 %cmp.i.not, label %do.end41, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #7
  %16 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par, align 4
  %sysctl_acct.i59 = getelementptr inbounds %struct.net, ptr %17, i32 0, i32 40, i32 3
  %18 = ptrtoint ptr %sysctl_acct.i59 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %sysctl_acct.i59, align 1
  br label %cleanup

cleanup:                                          ; preds = %do.end41, %if.end35.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call, %do.end41 ], [ %call, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @connbytes_mt_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 3
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 4
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext %3) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_netns_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_netns_put(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__UNIQUE_ID_file582, !1, !"__UNIQUE_ID_file582", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_connbytes.c", i32 14, i32 1}
!2 = !{ptr @__UNIQUE_ID_license583, !1, !"__UNIQUE_ID_license583", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author584, !4, !"__UNIQUE_ID_author584", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_connbytes.c", i32 15, i32 1}
!5 = !{ptr @__UNIQUE_ID_description585, !6, !"__UNIQUE_ID_description585", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_connbytes.c", i32 16, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias586, !8, !"__UNIQUE_ID_alias586", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_connbytes.c", i32 17, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias587, !10, !"__UNIQUE_ID_alias587", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_connbytes.c", i32 18, i32 1}
!11 = !{ptr @__initcall__kmod_xt_connbytes__588_156_connbytes_mt_init6, !12, !"__initcall__kmod_xt_connbytes__588_156_connbytes_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_connbytes.c", i32 156, i32 1}
!13 = !{ptr @__exitcall_connbytes_mt_exit, !14, !"__exitcall_connbytes_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_connbytes.c", i32 157, i32 1}
!15 = !{ptr @connbytes_mt_reg, !16, !"connbytes_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_connbytes.c", i32 135, i32 24}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_connbytes.c", i32 115, i32 3}
!19 = !{ptr @connbytes_mt_check._rs, !18, !"_rs", i1 false, i1 false}
!20 = !{ptr @__func__.connbytes_mt_check, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @connbytes_mt_check._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @connbytes_mt_check._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/netfilter/xt_connbytes.c", i32 123, i32 3}
!27 = !{ptr @connbytes_mt_check._entry.3, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @connbytes_mt_check._entry_ptr.5, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
