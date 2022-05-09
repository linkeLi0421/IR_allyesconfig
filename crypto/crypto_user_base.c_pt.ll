; ModuleID = '/llk/IR_all_yes/crypto/crypto_user_base.c_pt.bc'
source_filename = "../crypto/crypto_user_base.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.netlink_kernel_cfg = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.crypto_link = type { ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.74 }
%union.anon.74 = type { i32 }
%struct.crypto_user_alg = type { [64 x i8], [64 x i8], [64 x i8], i32, i32, i32, i32 }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.130, ptr, ptr, ptr, ptr, %union.anon.131, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.130 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.131 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.15, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.sk_buff_head = type { %union.anon.76, i32, %struct.spinlock }
%union.anon.76 = type { %struct.anon.77 }
%struct.anon.77 = type { ptr, ptr }
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
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.sk_buff = type { %union.anon.48, %union.anon.51, %union.anon.52, [48 x i8], %union.anon.53, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.55, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { ptr, ptr, %union.anon.50 }
%union.anon.50 = type { ptr }
%union.anon.51 = type { ptr }
%union.anon.52 = type { i64 }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { i32, ptr }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.57, i32, i32, i32, i16, i16, %union.anon.59, i32, %union.anon.60, %union.anon.61, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.57 = type { i32 }
%union.anon.59 = type { i32 }
%union.anon.60 = type { i32 }
%union.anon.61 = type { i16 }
%struct.sock_common = type { %union.anon.38, %union.anon.40, %union.anon.41, i16, i8, i8, i32, %union.anon.43, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.70, [0 x i32], %union.anon.71, i16, i16, %union.anon.72, %struct.refcount_struct, [0 x i32], %union.anon.73 }
%union.anon.38 = type { i64 }
%union.anon.40 = type { i32 }
%union.anon.41 = type { i32 }
%union.anon.43 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.69 }
%union.anon.69 = type { [4 x i32] }
%union.anon.70 = type { i32 }
%union.anon.71 = type { %struct.hlist_node }
%union.anon.72 = type { i32 }
%union.anon.73 = type { i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.crypto_dump_info = type { ptr, ptr, i32, i16 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.138 }
%union.anon.138 = type { [6 x i32], [24 x i8] }
%struct.crypto_report_comp = type { [64 x i8] }
%struct.crypto_report_cipher = type { [64 x i8], i32, i32, i32 }
%struct.crypto_report_larval = type { [64 x i8] }
%struct.module = type { i32, %struct.list_head, [60 x i8], [20 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i8, i32, ptr, ptr, [112 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, ptr, i32, [48 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.crypto_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }

@crypto_alg_sem = external dso_local global %struct.rw_semaphore, align 4
@crypto_alg_list = external dso_local global %struct.list_head, align 4
@crypto_netlink_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @crypto_netlink_init, ptr null, ptr @crypto_netlink_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_crypto_user__459_511_crypto_user_init6 = internal global ptr @crypto_user_init, section ".initcall6.init", align 4
@__exitcall_crypto_user_exit = internal global ptr @crypto_user_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file460 = internal constant [36 x i8] c"crypto_user.file=crypto/crypto_user\00", section ".modinfo", align 1
@__UNIQUE_ID_license461 = internal constant [24 x i8] c"crypto_user.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author462 = internal constant [67 x i8] c"crypto_user.author=Steffen Klassert <steffen.klassert@secunet.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description463 = internal constant [59 x i8] c"crypto_user.description=Crypto userspace configuration API\00", section ".modinfo", align 1
@__UNIQUE_ID_alias464 = internal constant [37 x i8] c"crypto_user.alias=net-pf-16-proto-21\00", section ".modinfo", align 1
@__const.crypto_netlink_init.cfg = private unnamed_addr constant %struct.netlink_kernel_cfg { i32 0, i32 0, ptr @crypto_netlink_rcv, ptr null, ptr null, ptr null, ptr null }, align 4
@crypto_cfg_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @crypto_cfg_mutex, i64 52), ptr getelementptr (i8, ptr @crypto_cfg_mutex, i64 52) }, ptr @crypto_cfg_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"crypto_cfg_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"crypto_cfg_mutex\00", [47 x i8] zeroinitializer }, align 32
@crypto_dispatch = internal constant { [6 x %struct.crypto_link], [56 x i8] } { [6 x %struct.crypto_link] [%struct.crypto_link { ptr @crypto_add_alg, ptr null, ptr null }, %struct.crypto_link { ptr @crypto_del_alg, ptr null, ptr null }, %struct.crypto_link { ptr @crypto_update_alg, ptr null, ptr null }, %struct.crypto_link { ptr @crypto_report, ptr @crypto_dump_report, ptr @crypto_dump_report_done }, %struct.crypto_link { ptr @crypto_del_rng, ptr null, ptr null }, %struct.crypto_link { ptr @crypto_reportstat, ptr null, ptr null }], [56 x i8] zeroinitializer }, align 32
@crypto_msg_min = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 208, i32 208, i32 208, i32 208, i32 0, i32 208], [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"larval\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cipher\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"compression\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@crypto_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, [20 x %struct.nla_policy] }>, [48 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, [20 x %struct.nla_policy] }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.74 zeroinitializer }, [20 x %struct.nla_policy] zeroinitializer }>, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967206]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.9 = private unnamed_addr constant [23 x i8] c"crypto_netlink_net_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 496, i32 33 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"crypto_cfg_mutex\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 27, i32 8 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"crypto_dispatch\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 411, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"crypto_msg_min\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 392, i32 18 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 107, i32 33 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 121, i32 20 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 78, i32 24 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 94, i32 22 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 991, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"crypto_policy\00", align 1
@___asan_gen_.43 = private constant [29 x i8] c"../crypto/crypto_user_base.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 401, i32 32 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_alias464, ptr @__UNIQUE_ID_author462, ptr @__UNIQUE_ID_description463, ptr @__UNIQUE_ID_file460, ptr @__UNIQUE_ID_license461, ptr @__exitcall_crypto_user_exit, ptr @__initcall__kmod_crypto_user__459_511_crypto_user_init6, ptr @crypto_user_exit, ptr @crypto_netlink_net_ops, ptr @crypto_cfg_mutex, ptr @.str, ptr @.str.1, ptr @crypto_dispatch, ptr @crypto_msg_min, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @crypto_policy], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_netlink_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_cfg_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_dispatch to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_msg_min to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crypto_policy to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @crypto_alg_match(ptr nocapture noundef readonly %p, i32 noundef %exact) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @crypto_alg_sem) #7
  %cru_type = getelementptr inbounds %struct.crypto_user_alg, ptr %p, i32 0, i32 3
  %cru_mask = getelementptr inbounds %struct.crypto_user_alg, ptr %p, i32 0, i32 4
  %cru_driver_name = getelementptr inbounds %struct.crypto_user_alg, ptr %p, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %exact)
  %tobool13.not = icmp eq i32 %exact, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @crypto_alg_list to i32))
  %q.057 = load ptr, ptr @crypto_alg_list, align 4
  %cmp.not58 = icmp eq ptr %q.057, @crypto_alg_list
  br i1 %cmp.not58, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry.for.body_crit_edge
  %q.059 = phi ptr [ %q.0, %cleanup.for.body_crit_edge ], [ %q.057, %entry.for.body_crit_edge ]
  %cra_flags.i = getelementptr inbounds %struct.crypto_alg, ptr %q.059, i32 0, i32 2
  %0 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cra_flags.i, align 16
  %and.i = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %cru_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cru_type, align 4
  %xor = xor i32 %3, %1
  %4 = ptrtoint ptr %cru_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cru_mask, align 4
  %and = and i32 %xor, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %6 = ptrtoint ptr %cru_driver_name to i32
  call void @__asan_load1_noabort(i32 %6)
  %char0 = load i8, ptr %cru_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool5.not = icmp eq i8 %char0, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end3
  %cra_driver_name = getelementptr inbounds %struct.crypto_alg, ptr %q.059, i32 0, i32 9
  %call10 = tail call i32 @strcmp(ptr noundef %cra_driver_name, ptr noundef %cru_driver_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then6.if.end25_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.if.end25_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.else:                                          ; preds = %if.end3
  br i1 %tobool13.not, label %if.end22, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22:                                         ; preds = %if.else
  %cra_name = getelementptr inbounds %struct.crypto_alg, ptr %q.059, i32 0, i32 8
  %call17 = tail call i32 @strcmp(ptr noundef %cra_name, ptr noundef %p) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end22.if.end25_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end22.if.end25_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.end25:                                         ; preds = %if.end22.if.end25_crit_edge, %if.then6.if.end25_crit_edge
  %call26 = tail call ptr @crypto_mod_get(ptr noundef %q.059) #7
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %if.end25.for.end_crit_edge

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end25.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %7 = ptrtoint ptr %q.059 to i32
  call void @__asan_load4_noabort(i32 %7)
  %q.0 = load ptr, ptr %q.059, align 4
  %cmp.not = icmp eq ptr %q.0, @crypto_alg_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end25.for.end_crit_edge, %entry.for.end_crit_edge
  %alg.2 = phi ptr [ null, %entry.for.end_crit_edge ], [ null, %cleanup.for.end_crit_edge ], [ %q.059, %if.end25.for.end_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #7
  ret ptr %alg.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_mod_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @crypto_user_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @crypto_netlink_net_ops) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_user_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @crypto_netlink_net_ops) #7
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_netlink_init(ptr noundef %net) #0 align 64 {
entry:
  %cfg = alloca %struct.netlink_kernel_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %cfg) #7
  %0 = call ptr @memcpy(ptr %cfg, ptr @__const.crypto_netlink_init.cfg, i32 28)
  %call.i = call ptr @__netlink_kernel_create(ptr noundef %net, i32 noundef 21, ptr noundef null, ptr noundef nonnull %cfg) #7
  %crypto_nlsk = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 53
  %1 = ptrtoint ptr %crypto_nlsk to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %crypto_nlsk, align 4
  %cmp = icmp eq ptr %call.i, null
  %cond = select i1 %cmp, i32 -12, i32 0
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %cfg) #7
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_netlink_exit(ptr nocapture noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %crypto_nlsk = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 53
  %0 = ptrtoint ptr %crypto_nlsk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crypto_nlsk, align 4
  tail call void @netlink_kernel_release(ptr noundef %1) #7
  %2 = ptrtoint ptr %crypto_nlsk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %crypto_nlsk, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crypto_netlink_rcv(ptr noundef %skb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @crypto_cfg_mutex, i32 noundef 0) #7
  %call = tail call i32 @netlink_rcv_skb(ptr noundef %skb, ptr noundef nonnull @crypto_user_rcv_msg) #7
  tail call void @mutex_unlock(ptr noundef nonnull @crypto_cfg_mutex) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_rcv_skb(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_user_rcv_msg(ptr noundef %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %attrs = alloca [22 x ptr], align 4
  %c = alloca %struct.netlink_dump_control, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %attrs) #7
  %5 = call ptr @memset(ptr %attrs, i32 255, i32 88)
  %nlmsg_type = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 1
  %6 = ptrtoint ptr %nlmsg_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nlmsg_type, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 21, i16 %7)
  %cmp = icmp ugt i16 %7, 21
  br i1 %cmp, label %entry.cleanup38_crit_edge, label %if.end

entry.cleanup38_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

if.end:                                           ; preds = %entry
  %conv = zext i16 %7 to i32
  %sub = add nsw i32 %conv, -16
  %arrayidx = getelementptr [6 x %struct.crypto_link], ptr @crypto_dispatch, i32 0, i32 %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp2 = icmp eq i32 %sub, 3
  br i1 %cmp2, label %land.lhs.true, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

land.lhs.true:                                    ; preds = %if.end
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %nlh, i32 0, i32 2
  %8 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nlmsg_flags, align 2
  %10 = and i16 %9, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.not = icmp eq i16 %10, 0
  br i1 %tobool.not, label %land.lhs.true.if.end24_crit_edge, label %if.end9

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.end9:                                          ; preds = %land.lhs.true
  tail call void @down_read(ptr noundef nonnull @crypto_alg_sem) #7
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %if.end9
  %alg.0.in = phi ptr [ @crypto_alg_list, %if.end9 ], [ %alg.0, %for.cond.for.cond_crit_edge ]
  %dump_alloc.0 = phi i32 [ 0, %if.end9 ], [ %add, %for.cond.for.cond_crit_edge ]
  %11 = ptrtoint ptr %alg.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %alg.0 = load ptr, ptr %alg.0.in, align 4
  %cmp10.not = icmp eq ptr %alg.0, @crypto_alg_list
  %add = add i32 %dump_alloc.0, 352
  br i1 %cmp10.not, label %netlink_dump_start.exit, label %for.cond.for.cond_crit_edge

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

netlink_dump_start.exit:                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #7
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #7
  %12 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 1
  %13 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 2
  %14 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 3
  %15 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 4
  %16 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 5
  %17 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %c, align 4
  %18 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @crypto_dump_report, ptr %12, align 4
  %19 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @crypto_dump_report_done, ptr %13, align 4
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %14, align 4
  %21 = tail call i32 @llvm.umin.i32(i32 %dump_alloc.0, i32 65535)
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %16, align 4
  %crypto_nlsk = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 53
  %23 = ptrtoint ptr %crypto_nlsk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %crypto_nlsk, align 4
  %25 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %15, align 4
  %call.i = call i32 @__netlink_dump_start(ptr noundef %24, ptr noundef %skb, ptr noundef %nlh, ptr noundef nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #7
  br label %cleanup38

if.end24:                                         ; preds = %land.lhs.true.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %arrayidx25 = getelementptr [6 x i32], ptr @crypto_msg_min, i32 0, i32 %sub
  %26 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx25, align 4
  %28 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nlh, align 4
  %add.i.i.i = add i32 %27, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %add.i.i.i)
  %cmp.i.i = icmp ult i32 %29, %add.i.i.i
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse_deprecated.exit

do.body.i.i:                                      ; preds = %if.end24
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #7
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.i.i.cleanup38_crit_edge, label %if.then1.i.i

do.body.i.i.cleanup38_crit_edge:                  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

if.then1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %cleanup38

nlmsg_parse_deprecated.exit:                      ; preds = %if.end24
  %add.ptr.i.i.i.i = getelementptr i8, ptr %nlh, i32 16
  %sub.i.i.i = add i32 %27, 3
  %and.i.i.i = and i32 %sub.i.i.i, -4
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %and.i.i.i
  %sub.i.i.i.i = add i32 %29, -16
  %sub1.i.i.i = sub i32 %sub.i.i.i.i, %and.i.i.i
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 21, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @crypto_policy, i32 noundef 0, ptr noundef %extack) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp27 = icmp slt i32 %call5.i.i, 0
  br i1 %cmp27, label %nlmsg_parse_deprecated.exit.cleanup38_crit_edge, label %if.end30

nlmsg_parse_deprecated.exit.cleanup38_crit_edge:  ; preds = %nlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

if.end30:                                         ; preds = %nlmsg_parse_deprecated.exit
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %cmp31 = icmp eq ptr %32, null
  br i1 %cmp31, label %if.end30.cleanup38_crit_edge, label %if.end34

if.end30.cleanup38_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup38

if.end34:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call37 = call i32 %32(ptr noundef %skb, ptr noundef %nlh, ptr noundef nonnull %attrs) #7
  br label %cleanup38

cleanup38:                                        ; preds = %if.end34, %if.end30.cleanup38_crit_edge, %nlmsg_parse_deprecated.exit.cleanup38_crit_edge, %if.then1.i.i, %do.body.i.i.cleanup38_crit_edge, %netlink_dump_start.exit, %entry.cleanup38_crit_edge
  %retval.1 = phi i32 [ %call37, %if.end34 ], [ -22, %entry.cleanup38_crit_edge ], [ %call.i, %netlink_dump_start.exit ], [ %call5.i.i, %nlmsg_parse_deprecated.exit.cleanup38_crit_edge ], [ -22, %if.end30.cleanup38_crit_edge ], [ -22, %if.then1.i.i ], [ -22, %do.body.i.i.cleanup38_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %attrs) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_add_alg(ptr noundef %skb, ptr noundef %nlh, ptr nocapture noundef readonly %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %arrayidx = getelementptr ptr, ptr %attrs, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 12) #7
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @strnlen(ptr noundef %add.ptr.i, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call2)
  %cmp = icmp ult i32 %call2, 64
  br i1 %cmp, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %cru_driver_name = getelementptr i8, ptr %nlh, i32 80
  %call4 = tail call i32 @strnlen(ptr noundef %cru_driver_name, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call4)
  %cmp5 = icmp ult i32 %call4, 64
  br i1 %cmp5, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %cru_driver_name to i32
  call void @__asan_load1_noabort(i32 %2)
  %char0 = load i8, ptr %cru_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool.not = icmp ne i8 %char0, 0
  %tobool13.not = icmp eq ptr %1, null
  %brmerge = select i1 %tobool13.not, i1 true, i1 %tobool.not
  br i1 %brmerge, label %if.end16, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %spec.select = zext i1 %tobool.not to i32
  %call17 = tail call ptr @crypto_alg_match(ptr noundef %add.ptr.i, i32 noundef %spec.select)
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end20, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_mod_put(ptr noundef nonnull %call17) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %3 = ptrtoint ptr %cru_driver_name to i32
  call void @__asan_load1_noabort(i32 %3)
  %char060 = load i8, ptr %cru_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char060)
  %tobool24.not = icmp eq i8 %char060, 0
  %call.cru_driver_name = select i1 %tobool24.not, ptr %add.ptr.i, ptr %cru_driver_name
  %cru_type = getelementptr i8, ptr %nlh, i32 208
  %4 = ptrtoint ptr %cru_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cru_type, align 4
  %cru_mask = getelementptr i8, ptr %nlh, i32 212
  %6 = ptrtoint ptr %cru_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cru_mask, align 4
  %call31 = tail call ptr @crypto_alg_mod_lookup(ptr noundef %call.cru_driver_name, i32 noundef %5, i32 noundef %7) #7
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end35:                                         ; preds = %if.end20
  tail call void @down_write(ptr noundef nonnull @crypto_alg_sem) #7
  br i1 %tobool13.not, label %if.end35.if.end39_crit_edge, label %if.then37

if.end35.if.end39_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  %cra_priority = getelementptr inbounds %struct.crypto_alg, ptr %call31, i32 0, i32 6
  %11 = ptrtoint ptr %cra_priority to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cra_priority, align 32
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end35.if.end39_crit_edge
  tail call void @up_write(ptr noundef nonnull @crypto_alg_sem) #7
  tail call void @crypto_mod_put(ptr noundef %call31) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %if.then33, %if.then19, %if.end7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -17, %if.then19 ], [ %8, %if.then33 ], [ 0, %if.end39 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_del_alg(ptr noundef %skb, ptr nocapture noundef readonly %nlh, ptr nocapture noundef readnone %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 12) #7
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %call2 = tail call i32 @strnlen(ptr noundef %add.ptr.i, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call2)
  %cmp = icmp ult i32 %call2, 64
  br i1 %cmp, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %cru_driver_name = getelementptr i8, ptr %nlh, i32 80
  %call4 = tail call i32 @strnlen(ptr noundef %cru_driver_name, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call4)
  %cmp5 = icmp ult i32 %call4, 64
  br i1 %cmp5, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  tail call void @down_read(ptr noundef nonnull @crypto_alg_sem) #7
  %cru_type.i = getelementptr i8, ptr %nlh, i32 208
  %cru_mask.i = getelementptr i8, ptr %nlh, i32 212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @crypto_alg_list to i32))
  %q.0.i30 = load ptr, ptr @crypto_alg_list, align 4
  %cmp.not.i31 = icmp eq ptr %q.0.i30, @crypto_alg_list
  br i1 %cmp.not.i31, label %if.end7.crypto_alg_match.exit.thread_crit_edge, label %if.end7.for.body.i_crit_edge

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

if.end7.crypto_alg_match.exit.thread_crit_edge:   ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %crypto_alg_match.exit.thread

crypto_alg_match.exit.thread:                     ; preds = %cleanup.i.crypto_alg_match.exit.thread_crit_edge, %if.end7.crypto_alg_match.exit.thread_crit_edge
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #7
  br label %cleanup

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %q.0.i32 = phi ptr [ %q.0.i, %cleanup.i.for.body.i_crit_edge ], [ %q.0.i30, %if.end7.for.body.i_crit_edge ]
  %cra_flags.i.i = getelementptr inbounds %struct.crypto_alg, ptr %q.0.i32, i32 0, i32 2
  %0 = ptrtoint ptr %cra_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cra_flags.i.i, align 16
  %and.i.i = and i32 %1, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %2 = ptrtoint ptr %cru_type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cru_type.i, align 4
  %xor.i = xor i32 %3, %1
  %4 = ptrtoint ptr %cru_mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cru_mask.i, align 4
  %and.i = and i32 %xor.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end3.i:                                        ; preds = %if.end.i
  %6 = ptrtoint ptr %cru_driver_name to i32
  call void @__asan_load1_noabort(i32 %6)
  %char0.i = load i8, ptr %cru_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool5.not.i = icmp eq i8 %char0.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.cleanup.i_crit_edge, label %if.then6.i

if.end3.i.cleanup.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.then6.i:                                       ; preds = %if.end3.i
  %cra_driver_name.i = getelementptr inbounds %struct.crypto_alg, ptr %q.0.i32, i32 0, i32 9
  %call10.i = tail call i32 @strcmp(ptr noundef %cra_driver_name.i, ptr noundef %cru_driver_name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end25.i, label %if.then6.i.cleanup.i_crit_edge

if.then6.i.cleanup.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end25.i:                                       ; preds = %if.then6.i
  %call26.i = tail call ptr @crypto_mod_get(ptr noundef %q.0.i32) #7
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %if.end25.i.cleanup.i_crit_edge, label %crypto_alg_match.exit

if.end25.i.cleanup.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end25.i.cleanup.i_crit_edge, %if.then6.i.cleanup.i_crit_edge, %if.end3.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %7 = ptrtoint ptr %q.0.i32 to i32
  call void @__asan_load4_noabort(i32 %7)
  %q.0.i = load ptr, ptr %q.0.i32, align 4
  %cmp.not.i = icmp eq ptr %q.0.i, @crypto_alg_list
  br i1 %cmp.not.i, label %cleanup.i.crypto_alg_match.exit.thread_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup.i.crypto_alg_match.exit.thread_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %crypto_alg_match.exit.thread

crypto_alg_match.exit:                            ; preds = %if.end25.i
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #7
  %tobool.not = icmp eq ptr %q.0.i32, null
  br i1 %tobool.not, label %crypto_alg_match.exit.cleanup_crit_edge, label %if.end10

crypto_alg_match.exit.cleanup_crit_edge:          ; preds = %crypto_alg_match.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %crypto_alg_match.exit
  %cra_flags.i.i.le = getelementptr inbounds %struct.crypto_alg, ptr %q.0.i32, i32 0, i32 2
  %8 = ptrtoint ptr %cra_flags.i.i.le to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cra_flags.i.i.le, align 16
  %and = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %if.end10.drop_alg_crit_edge, label %if.end13

if.end10.drop_alg_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop_alg

if.end13:                                         ; preds = %if.end10
  %cra_refcnt = getelementptr inbounds %struct.crypto_alg, ptr %q.0.i32, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cra_refcnt, i32 noundef 4) #7
  %10 = ptrtoint ptr %cra_refcnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %cra_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp15 = icmp ugt i32 %11, 2
  br i1 %cmp15, label %if.end13.drop_alg_crit_edge, label %if.end17

if.end13.drop_alg_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %drop_alg

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_instance(ptr noundef nonnull %q.0.i32) #7
  br label %drop_alg

drop_alg:                                         ; preds = %if.end17, %if.end13.drop_alg_crit_edge, %if.end10.drop_alg_crit_edge
  %err.0 = phi i32 [ -16, %if.end13.drop_alg_crit_edge ], [ 0, %if.end17 ], [ -22, %if.end10.drop_alg_crit_edge ]
  tail call void @crypto_mod_put(ptr noundef nonnull %q.0.i32) #7
  br label %cleanup

cleanup:                                          ; preds = %drop_alg, %crypto_alg_match.exit.cleanup_crit_edge, %crypto_alg_match.exit.thread, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %drop_alg ], [ -1, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -2, %crypto_alg_match.exit.cleanup_crit_edge ], [ -2, %crypto_alg_match.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_update_alg(ptr noundef %skb, ptr nocapture noundef readonly %nlh, ptr nocapture noundef readonly %attrs) #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %attrs, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #7
  %2 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %2, align 4
  %call1 = call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 12) #7
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  %call2 = call i32 @strnlen(ptr noundef %add.ptr.i, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call2)
  %cmp = icmp ult i32 %call2, 64
  br i1 %cmp, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %cru_driver_name = getelementptr i8, ptr %nlh, i32 80
  %call4 = call i32 @strnlen(ptr noundef %cru_driver_name, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call4)
  %cmp5 = icmp ult i32 %call4, 64
  br i1 %cmp5, label %if.end7, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end7.if.end13_crit_edge, label %land.lhs.true

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %5 = ptrtoint ptr %cru_driver_name to i32
  call void @__asan_load1_noabort(i32 %5)
  %char0 = load i8, ptr %cru_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool11.not = icmp eq i8 %char0, 0
  br i1 %tobool11.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  call void @down_read(ptr noundef nonnull @crypto_alg_sem) #7
  %cru_type.i = getelementptr i8, ptr %nlh, i32 208
  %cru_mask.i = getelementptr i8, ptr %nlh, i32 212
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @crypto_alg_list to i32))
  %q.0.i37 = load ptr, ptr @crypto_alg_list, align 4
  %cmp.not.i38 = icmp eq ptr %q.0.i37, @crypto_alg_list
  br i1 %cmp.not.i38, label %if.end13.crypto_alg_match.exit.thread_crit_edge, label %if.end13.for.body.i_crit_edge

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

if.end13.crypto_alg_match.exit.thread_crit_edge:  ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %crypto_alg_match.exit.thread

crypto_alg_match.exit.thread:                     ; preds = %cleanup.i.crypto_alg_match.exit.thread_crit_edge, %if.end13.crypto_alg_match.exit.thread_crit_edge
  call void @up_read(ptr noundef nonnull @crypto_alg_sem) #7
  br label %cleanup

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %q.0.i39 = phi ptr [ %q.0.i, %cleanup.i.for.body.i_crit_edge ], [ %q.0.i37, %if.end13.for.body.i_crit_edge ]
  %cra_flags.i.i = getelementptr inbounds %struct.crypto_alg, ptr %q.0.i39, i32 0, i32 2
  %6 = ptrtoint ptr %cra_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_flags.i.i, align 16
  %and.i.i = and i32 %7, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %8 = ptrtoint ptr %cru_type.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cru_type.i, align 4
  %xor.i = xor i32 %9, %7
  %10 = ptrtoint ptr %cru_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cru_mask.i, align 4
  %and.i = and i32 %xor.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end3.i:                                        ; preds = %if.end.i
  %12 = ptrtoint ptr %cru_driver_name to i32
  call void @__asan_load1_noabort(i32 %12)
  %char0.i = load i8, ptr %cru_driver_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool5.not.i = icmp eq i8 %char0.i, 0
  br i1 %tobool5.not.i, label %if.end3.i.cleanup.i_crit_edge, label %if.then6.i

if.end3.i.cleanup.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.then6.i:                                       ; preds = %if.end3.i
  %cra_driver_name.i = getelementptr inbounds %struct.crypto_alg, ptr %q.0.i39, i32 0, i32 9
  %call10.i = call i32 @strcmp(ptr noundef %cra_driver_name.i, ptr noundef %cru_driver_name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end25.i, label %if.then6.i.cleanup.i_crit_edge

if.then6.i.cleanup.i_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end25.i:                                       ; preds = %if.then6.i
  %call26.i = call ptr @crypto_mod_get(ptr noundef %q.0.i39) #7
  %tobool27.not.i = icmp eq ptr %call26.i, null
  br i1 %tobool27.not.i, label %if.end25.i.cleanup.i_crit_edge, label %crypto_alg_match.exit

if.end25.i.cleanup.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end25.i.cleanup.i_crit_edge, %if.then6.i.cleanup.i_crit_edge, %if.end3.i.cleanup.i_crit_edge, %if.end.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %13 = ptrtoint ptr %q.0.i39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %q.0.i = load ptr, ptr %q.0.i39, align 4
  %cmp.not.i = icmp eq ptr %q.0.i, @crypto_alg_list
  br i1 %cmp.not.i, label %cleanup.i.crypto_alg_match.exit.thread_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup.i.crypto_alg_match.exit.thread_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %crypto_alg_match.exit.thread

crypto_alg_match.exit:                            ; preds = %if.end25.i
  call void @up_read(ptr noundef nonnull @crypto_alg_sem) #7
  %tobool15.not = icmp eq ptr %q.0.i39, null
  br i1 %tobool15.not, label %crypto_alg_match.exit.cleanup_crit_edge, label %if.end17

crypto_alg_match.exit.cleanup_crit_edge:          ; preds = %crypto_alg_match.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %crypto_alg_match.exit
  call void @down_write(ptr noundef nonnull @crypto_alg_sem) #7
  call void @crypto_remove_spawns(ptr noundef nonnull %q.0.i39, ptr noundef nonnull %list, ptr noundef null) #7
  br i1 %tobool.not, label %if.end17.if.end21_crit_edge, label %if.then19

if.end17.if.end21_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i, align 4
  %cra_priority = getelementptr inbounds %struct.crypto_alg, ptr %q.0.i39, i32 0, i32 6
  %16 = ptrtoint ptr %cra_priority to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %cra_priority, align 32
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end17.if.end21_crit_edge
  call void @up_write(ptr noundef nonnull @crypto_alg_sem) #7
  call void @crypto_mod_put(ptr noundef nonnull %q.0.i39) #7
  call void @crypto_remove_final(ptr noundef nonnull %list) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %crypto_alg_match.exit.cleanup_crit_edge, %crypto_alg_match.exit.thread, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -2, %crypto_alg_match.exit.cleanup_crit_edge ], [ -2, %crypto_alg_match.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_report(ptr noundef %in_skb, ptr nocapture noundef readonly %in_nlh, ptr nocapture noundef readnone %attrs) #0 align 64 {
entry:
  %info = alloca %struct.crypto_dump_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %add.ptr.i = getelementptr i8, ptr %in_nlh, i32 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #7
  %5 = getelementptr inbounds i8, ptr %info, i32 12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %call2 = tail call i32 @strnlen(ptr noundef %add.ptr.i, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call2)
  %cmp = icmp ult i32 %call2, 64
  br i1 %cmp, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cru_driver_name = getelementptr i8, ptr %in_nlh, i32 80
  %call4 = tail call i32 @strnlen(ptr noundef %cru_driver_name, i32 noundef 64) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call4)
  %cmp5 = icmp ult i32 %call4, 64
  br i1 %cmp5, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call6 = tail call ptr @crypto_alg_match(ptr noundef %add.ptr.i, i32 noundef 0)
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #7
  %tobool10.not = icmp eq ptr %call.i.i, null
  br i1 %tobool10.not, label %drop_alg.thread, label %drop_alg

drop_alg.thread:                                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_mod_put(ptr noundef nonnull %call6) #7
  br label %if.then17

drop_alg:                                         ; preds = %if.end8
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %in_skb, ptr %info, align 4
  %out_skb = getelementptr inbounds %struct.crypto_dump_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %out_skb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i.i, ptr %out_skb, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %in_nlh, i32 0, i32 3
  %9 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nlmsg_seq, align 4
  %nlmsg_seq14 = getelementptr inbounds %struct.crypto_dump_info, ptr %info, i32 0, i32 2
  %11 = ptrtoint ptr %nlmsg_seq14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %nlmsg_seq14, align 4
  %nlmsg_flags = getelementptr inbounds %struct.crypto_dump_info, ptr %info, i32 0, i32 3
  %12 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %nlmsg_flags, align 4
  %call15 = call fastcc i32 @crypto_report_alg(ptr noundef nonnull %call6, ptr noundef nonnull %info)
  tail call void @crypto_mod_put(ptr noundef nonnull %call6) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %drop_alg.if.then17_crit_edge

drop_alg.if.then17_crit_edge:                     ; preds = %drop_alg
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

if.then17:                                        ; preds = %drop_alg.if.then17_crit_edge, %drop_alg.thread
  %err.038 = phi i32 [ -12, %drop_alg.thread ], [ %call15, %drop_alg.if.then17_crit_edge ]
  tail call void @kfree_skb_reason(ptr noundef %call.i.i, i32 noundef 0) #7
  br label %cleanup

if.end18:                                         ; preds = %drop_alg
  call void @__sanitizer_cov_trace_pc() #9
  %crypto_nlsk = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 53
  %13 = ptrtoint ptr %crypto_nlsk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %crypto_nlsk, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %in_skb, i32 0, i32 3, i32 12
  %15 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %portid, align 4
  %call.i = tail call i32 @netlink_unicast(ptr noundef %14, ptr noundef nonnull %call.i.i, i32 noundef %16, i32 noundef 64) #7
  %17 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.then17, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.038, %if.then17 ], [ %17, %if.end18 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_dump_report(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  %info = alloca %struct.crypto_dump_info, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info) #7
  %3 = getelementptr inbounds i8, ptr %info, i32 12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cb, align 4
  %7 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %info, align 4
  %out_skb = getelementptr inbounds %struct.crypto_dump_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %out_skb to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %skb, ptr %out_skb, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %9 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nlmsg_seq, align 4
  %nlmsg_seq2 = getelementptr inbounds %struct.crypto_dump_info, ptr %info, i32 0, i32 2
  %13 = ptrtoint ptr %nlmsg_seq2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %nlmsg_seq2, align 4
  %nlmsg_flags = getelementptr inbounds %struct.crypto_dump_info, ptr %info, i32 0, i32 3
  %14 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %nlmsg_flags, align 4
  tail call void @down_read(ptr noundef nonnull @crypto_alg_sem) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @crypto_alg_list to i32))
  %alg.025 = load ptr, ptr @crypto_alg_list, align 4
  %cmp.not26 = icmp eq ptr %alg.025, @crypto_alg_list
  br i1 %cmp.not26, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end8.for.body_crit_edge, %entry.for.body_crit_edge
  %alg.029 = phi ptr [ %alg.0, %if.end8.for.body_crit_edge ], [ %alg.025, %entry.for.body_crit_edge ]
  %pos.027 = phi i32 [ %inc, %if.end8.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.027, i32 %2)
  %cmp3.not = icmp ult i32 %pos.027, %2
  br i1 %cmp3.not, label %for.body.if.end8_crit_edge, label %if.then

for.body.if.end8_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then:                                          ; preds = %for.body
  %call = call fastcc i32 @crypto_report_alg(ptr noundef %alg.029, ptr noundef nonnull %info)
  %15 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %if.then.out_crit_edge [
    i32 -90, label %if.then.for.end_crit_edge
    i32 0, label %if.then.if.end8_crit_edge
  ]

if.then.if.end8_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end8:                                          ; preds = %if.then.if.end8_crit_edge, %for.body.if.end8_crit_edge
  %inc = add i32 %pos.027, 1
  %16 = ptrtoint ptr %alg.029 to i32
  call void @__asan_load4_noabort(i32 %16)
  %alg.0 = load ptr, ptr %alg.029, align 4
  %cmp.not = icmp eq ptr %alg.0, @crypto_alg_list
  br i1 %cmp.not, label %if.end8.for.end_crit_edge, label %if.end8.for.body_crit_edge

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end8.for.end_crit_edge, %if.then.for.end_crit_edge, %entry.for.end_crit_edge
  %pos.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %pos.027, %if.then.for.end_crit_edge ], [ %inc, %if.end8.for.end_crit_edge ]
  %17 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %pos.0.lcssa, ptr %0, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  br label %out

out:                                              ; preds = %for.end, %if.then.out_crit_edge
  %res.0 = phi i32 [ %19, %for.end ], [ %call, %if.then.out_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @crypto_alg_sem) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info) #7
  ret i32 %res.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crypto_dump_report_done(ptr nocapture noundef readnone %cb) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crypto_del_rng(ptr noundef %skb, ptr nocapture noundef readnone %nlh, ptr nocapture noundef readnone %attrs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 12) #7
  br i1 %call, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @crypto_del_default_rng() #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_reportstat(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_mod_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alg_mod_lookup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_instance(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_remove_spawns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_remove_final(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crypto_report_alg(ptr noundef %alg, ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  %rcomp.i.i = alloca %struct.crypto_report_comp, align 1
  %rcipher.i.i = alloca %struct.crypto_report_cipher, align 4
  %tmp.i.i = alloca i32, align 4
  %rl.i = alloca %struct.crypto_report_larval, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %out_skb = getelementptr inbounds %struct.crypto_dump_info, ptr %info, i32 0, i32 1
  %2 = ptrtoint ptr %out_skb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %out_skb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 12
  %4 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %portid, align 4
  %nlmsg_seq = getelementptr inbounds %struct.crypto_dump_info, ptr %info, i32 0, i32 2
  %6 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlmsg_seq, align 4
  %nlmsg_flags = getelementptr inbounds %struct.crypto_dump_info, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %nlmsg_flags, align 4
  %conv = zext i16 %9 to i32
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

skb_tailroom.exit.i:                              ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 17
  %12 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 224
  br i1 %cmp.i, label %skb_tailroom.exit.i.out_crit_edge, label %nlmsg_put.exit, !prof !46

skb_tailroom.exit.i.out_crit_edge:                ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %3, i32 noundef %5, i32 noundef %7, i32 noundef 19, i32 noundef 208, i32 noundef %conv) #7
  %tobool.not = icmp eq ptr %call3.i, null
  br i1 %tobool.not, label %nlmsg_put.exit.out_crit_edge, label %if.end

nlmsg_put.exit.out_crit_edge:                     ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %16 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 208)
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 8
  %call.i = tail call i32 @strscpy(ptr noundef %add.ptr.i, ptr noundef %cra_name.i, i32 noundef 64) #7
  %cru_driver_name.i = getelementptr i8, ptr %call3.i, i32 80
  %cra_driver_name.i = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 9
  %call4.i = tail call i32 @strscpy(ptr noundef %cru_driver_name.i, ptr noundef %cra_driver_name.i, i32 noundef 64) #7
  %cru_module_name.i = getelementptr i8, ptr %call3.i, i32 144
  %cra_module.i = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 15
  %17 = ptrtoint ptr %cra_module.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cra_module.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  %name.i = getelementptr inbounds %struct.module, ptr %18, i32 0, i32 2
  %spec.select.i = select i1 %tobool.not.i, ptr @.str.2, ptr %name.i
  %call7.i = tail call i32 @strscpy(ptr noundef %cru_module_name.i, ptr noundef %spec.select.i, i32 noundef 64) #7
  %cru_type.i = getelementptr i8, ptr %call3.i, i32 208
  %19 = ptrtoint ptr %cru_type.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %cru_type.i, align 4
  %cru_mask.i = getelementptr i8, ptr %call3.i, i32 212
  %20 = ptrtoint ptr %cru_mask.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %cru_mask.i, align 4
  %cra_flags.i = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 2
  %21 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cra_flags.i, align 16
  %cru_flags.i = getelementptr i8, ptr %call3.i, i32 220
  %23 = ptrtoint ptr %cru_flags.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %cru_flags.i, align 4
  %cra_refcnt.i = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 7
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %cra_refcnt.i, i32 noundef 4) #7
  %24 = ptrtoint ptr %cra_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %cra_refcnt.i, align 4
  %cru_refcnt.i = getelementptr i8, ptr %call3.i, i32 216
  %26 = ptrtoint ptr %cru_refcnt.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %cru_refcnt.i, align 4
  %cra_priority.i = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 6
  %27 = ptrtoint ptr %cra_priority.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cra_priority.i, align 32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #7
  %29 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %3, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool10.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool10.not.i, label %if.end.i17, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end.i17:                                       ; preds = %if.end
  %30 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cra_flags.i, align 16
  %and.i = and i32 %31, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %if.end20.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end.i17
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rl.i) #7
  %32 = call ptr @memset(ptr %rl.i, i32 0, i32 64)
  %call15.i = call i32 @strscpy(ptr noundef nonnull %rl.i, ptr noundef nonnull @.str.3, i32 noundef 64) #7
  %call16.i = call i32 @nla_put(ptr noundef %3, i32 noundef 2, i32 noundef 64, ptr noundef nonnull %rl.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rl.i) #7
  br i1 %tobool17.not.i, label %if.then13.i.if.end6_crit_edge, label %if.then13.i.if.then.i.i_crit_edge

if.then13.i.if.then.i.i_crit_edge:                ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then13.i.if.end6_crit_edge:                    ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end20.i:                                       ; preds = %if.end.i17
  %cra_type.i = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 10
  %33 = ptrtoint ptr %cra_type.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cra_type.i, align 8
  %tobool21.not.i = icmp eq ptr %34, null
  br i1 %tobool21.not.i, label %if.end20.i.if.end31.i_crit_edge, label %land.lhs.true.i

if.end20.i.if.end31.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %if.end20.i
  %report.i = getelementptr inbounds %struct.crypto_type, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %report.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %report.i, align 4
  %tobool23.not.i = icmp eq ptr %36, null
  br i1 %tobool23.not.i, label %land.lhs.true.i.if.end31.i_crit_edge, label %if.then24.i

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end31.i

if.then24.i:                                      ; preds = %land.lhs.true.i
  %call27.i = call i32 %36(ptr noundef %3, ptr noundef %alg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.then24.i.if.end6_crit_edge, label %if.then24.i.if.then.i.i_crit_edge

if.then24.i.if.then.i.i_crit_edge:                ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then24.i.if.end6_crit_edge:                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.end31.i:                                       ; preds = %land.lhs.true.i.if.end31.i_crit_edge, %if.end20.i.if.end31.i_crit_edge
  %and33.i = and i32 %31, 31
  %37 = zext i32 %and33.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %and33.i, label %if.end31.i.if.end6_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb38.i
  ]

if.end31.i.if.end6_crit_edge:                     ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb.i:                                          ; preds = %if.end31.i
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %rcipher.i.i) #7
  %38 = call ptr @memset(ptr %rcipher.i.i, i32 0, i32 76)
  %call.i70.i = call i32 @strscpy(ptr noundef nonnull %rcipher.i.i, ptr noundef nonnull @.str.4, i32 noundef 64) #7
  %cra_blocksize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 3
  %39 = ptrtoint ptr %cra_blocksize.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cra_blocksize.i.i, align 4
  %blocksize.i.i = getelementptr inbounds %struct.crypto_report_cipher, ptr %rcipher.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %blocksize.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %blocksize.i.i, align 4
  %cra_u.i.i = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 11
  %42 = ptrtoint ptr %cra_u.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cra_u.i.i, align 4
  %min_keysize.i.i = getelementptr inbounds %struct.crypto_report_cipher, ptr %rcipher.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %min_keysize.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %min_keysize.i.i, align 4
  %cia_max_keysize.i.i = getelementptr inbounds %struct.crypto_alg, ptr %alg, i32 0, i32 11, i32 0, i32 1
  %45 = ptrtoint ptr %cia_max_keysize.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cia_max_keysize.i.i, align 4
  %max_keysize.i.i = getelementptr inbounds %struct.crypto_report_cipher, ptr %rcipher.i.i, i32 0, i32 3
  %47 = ptrtoint ptr %max_keysize.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %max_keysize.i.i, align 4
  %call2.i.i = call i32 @nla_put(ptr noundef %3, i32 noundef 8, i32 noundef 76, ptr noundef nonnull %rcipher.i.i) #7
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %rcipher.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool35.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool35.not.i, label %sw.bb.i.if.end6_crit_edge, label %sw.bb.i.if.then.i.i_crit_edge

sw.bb.i.if.then.i.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

sw.bb.i.if.end6_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

sw.bb38.i:                                        ; preds = %if.end31.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rcomp.i.i) #7
  %48 = call ptr @memset(ptr %rcomp.i.i, i32 0, i32 64)
  %call.i71.i = call i32 @strscpy(ptr noundef nonnull %rcomp.i.i, ptr noundef nonnull @.str.5, i32 noundef 64) #7
  %call1.i.i = call i32 @nla_put(ptr noundef %3, i32 noundef 6, i32 noundef 64, ptr noundef nonnull %rcomp.i.i) #7
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rcomp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool40.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool40.not.i, label %sw.bb38.i.if.end6_crit_edge, label %sw.bb38.i.if.then.i.i_crit_edge

sw.bb38.i.if.then.i.i_crit_edge:                  ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

sw.bb38.i.if.end6_crit_edge:                      ; preds = %sw.bb38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then.i.i:                                      ; preds = %sw.bb38.i.if.then.i.i_crit_edge, %sw.bb.i.if.then.i.i_crit_edge, %if.then24.i.if.then.i.i_crit_edge, %if.then13.i.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %49 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %50, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !46

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #7
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %51 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i19 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i20 = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i.i21 = sub i32 %sub.ptr.lhs.cast.i.i19, %sub.ptr.rhs.cast.i.i20
  call void @skb_trim(ptr noundef %3, i32 noundef %sub.ptr.sub.i.i21) #7
  br label %out

if.end6:                                          ; preds = %sw.bb38.i.if.end6_crit_edge, %sw.bb.i.if.end6_crit_edge, %if.end31.i.if.end6_crit_edge, %if.then24.i.if.end6_crit_edge, %if.then13.i.if.end6_crit_edge
  %53 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %54 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %55 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %out

out:                                              ; preds = %if.end6, %nlmsg_cancel.exit, %nlmsg_put.exit.out_crit_edge, %skb_tailroom.exit.i.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end6 ], [ -90, %nlmsg_put.exit.out_crit_edge ], [ -90, %skb_tailroom.exit.i.out_crit_edge ], [ -90, %entry.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_del_default_rng() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_dump_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netlink_kernel_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netlink_kernel_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nobuiltin }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_crypto_user__459_511_crypto_user_init6, !1, !"__initcall__kmod_crypto_user__459_511_crypto_user_init6", i1 false, i1 false}
!1 = !{!"../crypto/crypto_user_base.c", i32 511, i32 1}
!2 = !{ptr @__exitcall_crypto_user_exit, !3, !"__exitcall_crypto_user_exit", i1 false, i1 false}
!3 = !{!"../crypto/crypto_user_base.c", i32 512, i32 1}
!4 = !{ptr @__UNIQUE_ID_file460, !5, !"__UNIQUE_ID_file460", i1 false, i1 false}
!5 = !{!"../crypto/crypto_user_base.c", i32 513, i32 1}
!6 = !{ptr @__UNIQUE_ID_license461, !5, !"__UNIQUE_ID_license461", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author462, !8, !"__UNIQUE_ID_author462", i1 false, i1 false}
!8 = !{!"../crypto/crypto_user_base.c", i32 514, i32 1}
!9 = !{ptr @__UNIQUE_ID_description463, !10, !"__UNIQUE_ID_description463", i1 false, i1 false}
!10 = !{!"../crypto/crypto_user_base.c", i32 515, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias464, !12, !"__UNIQUE_ID_alias464", i1 false, i1 false}
!12 = !{!"../crypto/crypto_user_base.c", i32 516, i32 1}
!13 = !{ptr @crypto_netlink_net_ops, !14, !"crypto_netlink_net_ops", i1 false, i1 false}
!14 = !{!"../crypto/crypto_user_base.c", i32 496, i32 33}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../crypto/crypto_user_base.c", i32 27, i32 8}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @crypto_cfg_mutex, !16, !"crypto_cfg_mutex", i1 false, i1 false}
!19 = !{ptr @crypto_dispatch, !20, !"crypto_dispatch", i1 false, i1 false}
!20 = !{!"../crypto/crypto_user_base.c", i32 411, i32 3}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../crypto/crypto_user_base.c", i32 107, i32 33}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../crypto/crypto_user_base.c", i32 121, i32 20}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../crypto/crypto_user_base.c", i32 78, i32 24}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../crypto/crypto_user_base.c", i32 94, i32 22}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/net/netlink.h", i32 991, i32 3}
!31 = !{ptr @__nlmsg_parse.__msg, !32, !"__msg", i1 false, i1 false}
!32 = !{!"../include/net/netlink.h", i32 729, i32 3}
!33 = !{ptr @crypto_msg_min, !34, !"crypto_msg_min", i1 false, i1 false}
!34 = !{!"../crypto/crypto_user_base.c", i32 392, i32 18}
!35 = !{ptr @crypto_policy, !36, !"crypto_policy", i1 false, i1 false}
!36 = !{!"../crypto/crypto_user_base.c", i32 401, i32 32}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 1, i32 2000}
