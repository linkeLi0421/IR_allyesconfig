; ModuleID = '/llk/IR_all_yes/net/netfilter/nfnetlink_cttimeout.c_pt.bc'
source_filename = "../net/netfilter/nfnetlink_cttimeout.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfnetlink_subsystem = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nfnl_callback = type { ptr, ptr, i32, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ctnl_timeout = type { %struct.list_head, %struct.callback_head, %struct.refcount_struct, [32 x i8], %struct.nf_ct_timeout }
%struct.callback_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nf_ct_timeout = type { i16, ptr, [0 x i8] }
%struct.nfnl_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.nf_conntrack_l4proto = type { i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.171, ptr }
%struct.anon.171 = type { ptr, ptr, i16, i16, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.149, %union.anon.150, [48 x i8], %union.anon.151, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.153, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.149 = type { ptr }
%union.anon.150 = type { i64 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, ptr }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.155, i32, i32, i32, i16, i16, %union.anon.157, i32, %union.anon.158, %union.anon.159, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.155 = type { i32 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i16 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.sock_common = type { %union.anon.122, %union.anon.124, %union.anon.125, i16, i8, i8, i32, %union.anon.127, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.130, [0 x i32], %union.anon.131, i16, i16, %union.anon.132, %struct.refcount_struct, [0 x i32], %union.anon.133 }
%union.anon.122 = type { i64 }
%union.anon.124 = type { i32 }
%union.anon.125 = type { i32 }
%union.anon.127 = type { %struct.hlist_node }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.130 = type { i32 }
%union.anon.131 = type { %struct.hlist_node }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.138 }
%union.anon.138 = type { [6 x i32], [24 x i8] }

@__UNIQUE_ID_file592 = internal constant [59 x i8] c"nfnetlink_cttimeout.file=net/netfilter/nfnetlink_cttimeout\00", section ".modinfo", align 1
@__UNIQUE_ID_license593 = internal constant [32 x i8] c"nfnetlink_cttimeout.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author594 = internal constant [67 x i8] c"nfnetlink_cttimeout.author=Pablo Neira Ayuso <pablo@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description595 = internal constant [97 x i8] c"nfnetlink_cttimeout.description=cttimeout: Extended Netfilter Connection Tracking timeout tuning\00", section ".modinfo", align 1
@__UNIQUE_ID_alias602 = internal constant [45 x i8] c"nfnetlink_cttimeout.alias=nfnetlink-subsys-8\00", section ".modinfo", align 1
@cttimeout_subsys = internal constant { %struct.nfnetlink_subsystem, [32 x i8] } { %struct.nfnetlink_subsystem { ptr @.str, i8 8, i8 5, ptr @cttimeout_cb, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@cttimeout_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @cttimeout_net_init, ptr null, ptr @cttimeout_net_exit, ptr null, ptr @nfct_timeout_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@nf_ct_timeout_find_get_hook = external dso_local global ptr, align 4
@nf_ct_timeout_put_hook = external dso_local global ptr, align 4
@__initcall__kmod_nfnetlink_cttimeout__608_641_cttimeout_init6 = internal global ptr @cttimeout_init, section ".initcall6.init", align 4
@__exitcall_cttimeout_exit = internal global ptr @cttimeout_exit, section ".exitcall.exit", align 4
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"conntrack_timeout\00", [46 x i8] zeroinitializer }, align 32
@cttimeout_cb = internal constant { [5 x %struct.nfnl_callback], [48 x i8] } { [5 x %struct.nfnl_callback] [%struct.nfnl_callback { ptr @cttimeout_new_timeout, ptr @cttimeout_nla_policy, i32 1, i16 5 }, %struct.nfnl_callback { ptr @cttimeout_get_timeout, ptr @cttimeout_nla_policy, i32 1, i16 5 }, %struct.nfnl_callback { ptr @cttimeout_del_timeout, ptr @cttimeout_nla_policy, i32 1, i16 5 }, %struct.nfnl_callback { ptr @cttimeout_default_set, ptr @cttimeout_nla_policy, i32 1, i16 5 }, %struct.nfnl_callback { ptr @cttimeout_default_get, ptr @cttimeout_nla_policy, i32 1, i16 5 }], [48 x i8] zeroinitializer }, align 32
@cttimeout_nla_policy = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 10, i8 0, i16 31, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy zeroinitializer], [48 x i8] zeroinitializer }, align 32
@nfct_timeout_id = internal global i32 0, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__const.cttimeout_get_timeout.c = private unnamed_addr constant %struct.netlink_dump_control { ptr null, ptr @ctnl_timeout_dump, ptr null, ptr null, ptr null, i32 0 }, align 4
@ctnl_timeout_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"net/netfilter/nfnetlink_cttimeout.c\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@cttimeout_default_get.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Missing timeouts for proto %d\00", [34 x i8] zeroinitializer }, align 32
@cttimeout_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.6, i32 619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013cttimeout_init: cannot register cttimeout with nfnetlink.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cttimeout_init\00", [17 x i8] zeroinitializer }, align 32
@cttimeout_init._entry_ptr = internal global ptr @cttimeout_init._entry, section ".printk_index", align 4
@ctnl_timeout_find_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 8, i64 1, i64 6, i64 17, i64 33, i64 47, i64 58, i64 132, i64 136, i64 255]
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"cttimeout_subsys\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 567, i32 41 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"cttimeout_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 601, i32 33 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 568, i32 13 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"cttimeout_cb\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 534, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"cttimeout_nla_policy\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 44, i32 32 }
@___asan_gen_.31 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 45, i32 7 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 695, i32 2 }
@___asan_gen_.40 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 723, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 229, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 991, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 474, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.60 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.61 = private constant [39 x i8] c"../net/netfilter/nfnetlink_cttimeout.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 618, i32 3 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_alias602, ptr @__UNIQUE_ID_author594, ptr @__UNIQUE_ID_description595, ptr @__UNIQUE_ID_file592, ptr @__UNIQUE_ID_license593, ptr @__exitcall_cttimeout_exit, ptr @__initcall__kmod_nfnetlink_cttimeout__608_641_cttimeout_init6, ptr @cttimeout_exit, ptr @cttimeout_init._entry, ptr @cttimeout_init._entry_ptr, ptr @cttimeout_subsys, ptr @cttimeout_ops, ptr @.str, ptr @cttimeout_cb, ptr @cttimeout_nla_policy, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cttimeout_subsys to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cttimeout_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cttimeout_cb to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cttimeout_nla_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cttimeout_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cttimeout_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @nfnetlink_subsys_unregister(ptr noundef nonnull @cttimeout_subsys) #11
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @cttimeout_ops) #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_ct_timeout_find_get_hook to i32))
  store volatile ptr null, ptr @nf_ct_timeout_find_get_hook, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_ct_timeout_put_hook to i32))
  store volatile ptr null, ptr @nf_ct_timeout_put_hook, align 4
  tail call void @synchronize_rcu() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_subsys_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cttimeout_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @cttimeout_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nfnetlink_subsys_register(ptr noundef nonnull @cttimeout_subsys) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %do.end, label %do.body11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #14
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @cttimeout_ops) #11
  br label %cleanup

do.body11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_ct_timeout_find_get_hook to i32))
  store volatile ptr @ctnl_timeout_find_get, ptr @nf_ct_timeout_find_get_hook, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @nf_ct_timeout_put_hook to i32))
  store volatile ptr @ctnl_timeout_put, ptr @nf_ct_timeout_put_hook, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body11, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %do.body11 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cttimeout_new_timeout(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %cda) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call = tail call fastcc ptr @nfct_timeout_pernet(ptr noundef %1)
  %arrayidx = getelementptr ptr, ptr %cda, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %cda, i32 2
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %cda, i32 3
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %arrayidx7 = getelementptr ptr, ptr %cda, i32 4
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %lor.lhs.false6.cleanup_crit_edge, label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr.i.i139 = getelementptr i8, ptr %7, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i139 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.i.i139, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %timeout.0.in = phi ptr [ %call, %if.end ], [ %timeout.0, %for.body.for.cond_crit_edge ]
  %14 = ptrtoint ptr %timeout.0.in to i32
  call void @__asan_load4_noabort(i32 %14)
  %timeout.0 = load ptr, ptr %timeout.0.in, align 4
  %cmp.not = icmp eq ptr %timeout.0, %call
  br i1 %cmp.not, label %for.cond.if.end60_crit_edge, label %for.body

for.cond.if.end60_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

for.body:                                         ; preds = %for.cond
  %name16 = getelementptr inbounds %struct.ctnl_timeout, ptr %timeout.0, i32 0, i32 3
  %call17 = tail call i32 @strncmp(ptr noundef %name16, ptr noundef %add.ptr.i, i32 noundef 32)
  %cmp18.not = icmp eq i32 %call17, 0
  br i1 %cmp18.not, label %if.end20, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.end20:                                         ; preds = %for.body
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %15 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nlh, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nlmsg_flags, align 2
  %19 = and i16 %18, 512
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool21.not = icmp eq i16 %19, 0
  br i1 %tobool21.not, label %for.end, label %if.end20.cleanup_crit_edge

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.end:                                          ; preds = %if.end20
  %tobool29.not = icmp eq ptr %timeout.0, null
  br i1 %tobool29.not, label %for.end.if.end60_crit_edge, label %if.then30

for.end.if.end60_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then30:                                        ; preds = %for.end
  %20 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nlh, align 4
  %nlmsg_flags32 = getelementptr inbounds %struct.nlmsghdr, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %nlmsg_flags32 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %nlmsg_flags32, align 2
  %24 = and i16 %23, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool35.not = icmp eq i16 %24, 0
  br i1 %tobool35.not, label %if.then30.cleanup_crit_edge, label %if.then36

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then36:                                        ; preds = %if.then30
  %timeout37 = getelementptr inbounds %struct.ctnl_timeout, ptr %timeout.0, i32 0, i32 4
  %25 = ptrtoint ptr %timeout37 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %timeout37, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %11)
  %cmp41.not = icmp eq i16 %26, %11
  br i1 %cmp41.not, label %lor.lhs.false43, label %if.then36.cleanup_crit_edge

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false43:                                  ; preds = %if.then36
  %l4proto45 = getelementptr inbounds %struct.ctnl_timeout, ptr %timeout.0, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %l4proto45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %l4proto45, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %30, i8 %13)
  %cmp49.not = icmp eq i8 %30, %13
  br i1 %cmp49.not, label %if.end52, label %lor.lhs.false43.cleanup_crit_edge

lor.lhs.false43.cleanup_crit_edge:                ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end52:                                         ; preds = %lor.lhs.false43
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.ctnl_timeout, ptr %timeout.0, i32 1
  %31 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %info, align 4
  %call58 = tail call fastcc i32 @ctnl_timeout_parse_policy(ptr noundef %data, ptr noundef %28, ptr noundef %32, ptr noundef nonnull %9)
  br label %cleanup

if.end60:                                         ; preds = %for.end.if.end60_crit_edge, %for.cond.if.end60_crit_edge
  %call61 = tail call ptr @nf_ct_l4proto_find(i8 noundef zeroext %13) #11
  %33 = ptrtoint ptr %call61 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %call61, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %13)
  %cmp65.not = icmp eq i8 %34, %13
  br i1 %cmp65.not, label %if.end8.i.i, label %if.end60.cleanup_crit_edge

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end60
  %obj_size = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call61, i32 0, i32 10, i32 2
  %35 = ptrtoint ptr %obj_size to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %obj_size, align 4
  %conv69 = zext i16 %36 to i32
  %add = add nuw nsw i32 %conv69, 60
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #15
  %cmp71 = icmp eq ptr %call9.i.i, null
  br i1 %cmp71, label %if.end8.i.i.cleanup_crit_edge, label %if.end74

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end74:                                         ; preds = %if.end8.i.i
  %data76 = getelementptr inbounds %struct.ctnl_timeout, ptr %call9.i.i, i32 1
  %37 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %info, align 4
  %39 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx7, align 4
  %call79 = tail call fastcc i32 @ctnl_timeout_parse_policy(ptr noundef %data76, ptr noundef %call61, ptr noundef %38, ptr noundef %40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %err, label %if.end83

if.end83:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  %timeout75 = getelementptr inbounds %struct.ctnl_timeout, ptr %call9.i.i, i32 0, i32 4
  %name84 = getelementptr inbounds %struct.ctnl_timeout, ptr %call9.i.i, i32 0, i32 3
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i140 = getelementptr i8, ptr %42, i32 4
  %call88 = tail call ptr @strcpy(ptr noundef %name84, ptr noundef %add.ptr.i140) #16
  %43 = ptrtoint ptr %timeout75 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %11, ptr %timeout75, align 4
  %l4proto92 = getelementptr inbounds %struct.ctnl_timeout, ptr %call9.i.i, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %l4proto92 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call61, ptr %l4proto92, align 8
  %refcnt = getelementptr inbounds %struct.ctnl_timeout, ptr %call9.i.i, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  %45 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile i32 1, ptr %refcnt, align 16
  tail call fastcc void @list_add_tail_rcu(ptr noundef nonnull %call9.i.i, ptr noundef %call)
  br label %cleanup

err:                                              ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end83, %if.end8.i.i.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %if.end52, %lor.lhs.false43.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %if.then30.cleanup_crit_edge, %if.end20.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call58, %if.end52 ], [ 0, %if.end83 ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -17, %if.end20.cleanup_crit_edge ], [ -22, %lor.lhs.false43.cleanup_crit_edge ], [ -22, %if.then36.cleanup_crit_edge ], [ -16, %if.then30.cleanup_crit_edge ], [ %call79, %err ], [ -95, %if.end60.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cttimeout_get_timeout(ptr noundef %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %cda) #2 align 64 {
entry:
  %c = alloca %struct.netlink_dump_control, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call = tail call fastcc ptr @nfct_timeout_pernet(ptr noundef %1)
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nlh, align 4
  %nlmsg_flags = getelementptr inbounds %struct.nlmsghdr, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nlmsg_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nlmsg_flags, align 2
  %6 = and i16 %5, 768
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.end, label %netlink_dump_start.exit

netlink_dump_start.exit:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #11
  %7 = call ptr @memcpy(ptr %c, ptr @__const.cttimeout_get_timeout.c, i32 24)
  %sk = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sk, align 4
  %module.i = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 4
  %10 = ptrtoint ptr %module.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %module.i, align 4
  %call.i = call i32 @__netlink_dump_start(ptr noundef %9, ptr noundef %skb, ptr noundef %3, ptr noundef nonnull %c) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #11
  br label %cleanup39

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %cda, i32 1
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %12, null
  br i1 %tobool3.not, label %if.end.cleanup39_crit_edge, label %if.end5

if.end.cleanup39_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup39

if.end5:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end5
  %cur.0.in = phi ptr [ %call, %if.end5 ], [ %cur.0, %for.body.for.cond_crit_edge ]
  %13 = ptrtoint ptr %cur.0.in to i32
  call void @__asan_load4_noabort(i32 %13)
  %cur.0 = load ptr, ptr %cur.0.in, align 4
  %cmp.not = icmp eq ptr %cur.0, %call
  br i1 %cmp.not, label %for.cond.cleanup39_crit_edge, label %for.body

for.cond.cleanup39_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup39

for.body:                                         ; preds = %for.cond
  %name10 = getelementptr inbounds %struct.ctnl_timeout, ptr %cur.0, i32 0, i32 3
  %call11 = tail call i32 @strncmp(ptr noundef %name10, ptr noundef %add.ptr.i, i32 noundef 32)
  %cmp12.not = icmp eq i32 %call11, 0
  br i1 %cmp12.not, label %if.end15, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.end15:                                         ; preds = %for.body
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %cmp17 = icmp eq ptr %call.i.i, null
  br i1 %cmp17, label %if.end15.cleanup39_crit_edge, label %if.end20

if.end15.cleanup39_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup39

if.end20:                                         ; preds = %if.end15
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %14 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %portid, align 4
  %16 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nlmsg_seq, align 4
  %call25 = tail call fastcc i32 @ctnl_timeout_fill_info(ptr noundef nonnull %call.i.i, i32 noundef %15, i32 noundef %19, ptr noundef %cur.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 1
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #11
  br label %cleanup39

if.end29:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %info, align 4
  %22 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %portid, align 4
  %call33 = tail call i32 @nfnetlink_unicast(ptr noundef nonnull %call.i.i, ptr noundef %21, i32 noundef %23) #11
  br label %cleanup39

cleanup39:                                        ; preds = %if.end29, %if.then28, %if.end15.cleanup39_crit_edge, %for.cond.cleanup39_crit_edge, %if.end.cleanup39_crit_edge, %netlink_dump_start.exit
  %retval.0 = phi i32 [ %call.i, %netlink_dump_start.exit ], [ -22, %if.end.cleanup39_crit_edge ], [ -12, %if.end15.cleanup39_crit_edge ], [ %call33, %if.end29 ], [ %call25, %if.then28 ], [ -2, %for.cond.cleanup39_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cttimeout_del_timeout(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %cda) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %call = tail call fastcc ptr @nfct_timeout_pernet(ptr noundef %1)
  %arrayidx = getelementptr ptr, ptr %cda, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %cmp.not84 = icmp eq ptr %5, %call
  br i1 %cmp.not84, label %if.then.cleanup_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %ctnl_timeout_try_del.exit.for.body_crit_edge, %if.then.for.body_crit_edge
  %cur.085 = phi ptr [ %tmp.0, %ctnl_timeout_try_del.exit.for.body_crit_edge ], [ %5, %if.then.for.body_crit_edge ]
  %6 = ptrtoint ptr %cur.085 to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp.0 = load ptr, ptr %cur.085, align 4
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  %refcnt.i = getelementptr inbounds %struct.ctnl_timeout, ptr %cur.085, i32 0, i32 2
  %call.i = tail call zeroext i1 @refcount_dec_if_one(ptr noundef %refcnt.i) #11
  br i1 %call.i, label %if.then.i, label %for.body.ctnl_timeout_try_del.exit_crit_edge

for.body.ctnl_timeout_try_del.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %ctnl_timeout_try_del.exit

if.then.i:                                        ; preds = %for.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cur.085) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_rcu.exit.i_crit_edge

if.then.i.list_del_rcu.exit.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %cur.085, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %cur.085 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.085, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.then.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cur.085, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %timeout1.i = getelementptr inbounds %struct.ctnl_timeout, ptr %cur.085, i32 0, i32 4
  tail call void @nf_ct_untimeout(ptr noundef %8, ptr noundef %timeout1.i) #11
  %tobool.not.i = icmp eq ptr %cur.085, null
  br i1 %tobool.not.i, label %list_del_rcu.exit.i.ctnl_timeout_try_del.exit_crit_edge, label %do.end.i

list_del_rcu.exit.i.ctnl_timeout_try_del.exit_crit_edge: ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ctnl_timeout_try_del.exit

do.end.i:                                         ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %callback_head.i = getelementptr inbounds %struct.ctnl_timeout, ptr %cur.085, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %callback_head.i, ptr noundef nonnull inttoptr (i32 8 to ptr)) #11
  br label %ctnl_timeout_try_del.exit

ctnl_timeout_try_del.exit:                        ; preds = %do.end.i, %list_del_rcu.exit.i.ctnl_timeout_try_del.exit_crit_edge, %for.body.ctnl_timeout_try_del.exit_crit_edge
  %cmp.not = icmp eq ptr %tmp.0, %call
  br i1 %cmp.not, label %ctnl_timeout_try_del.exit.cleanup_crit_edge, label %ctnl_timeout_try_del.exit.for.body_crit_edge

ctnl_timeout_try_del.exit.for.body_crit_edge:     ; preds = %ctnl_timeout_try_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

ctnl_timeout_try_del.exit.cleanup_crit_edge:      ; preds = %ctnl_timeout_try_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  br label %for.cond22

for.cond22:                                       ; preds = %for.body27.for.cond22_crit_edge, %if.end
  %cur.1.in = phi ptr [ %call, %if.end ], [ %cur.1, %for.body27.for.cond22_crit_edge ]
  %16 = ptrtoint ptr %cur.1.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %cur.1 = load ptr, ptr %cur.1.in, align 4
  %cmp25.not = icmp eq ptr %cur.1, %call
  br i1 %cmp25.not, label %for.cond22.cleanup_crit_edge, label %for.body27

for.cond22.cleanup_crit_edge:                     ; preds = %for.cond22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body27:                                       ; preds = %for.cond22
  %name28 = getelementptr inbounds %struct.ctnl_timeout, ptr %cur.1, i32 0, i32 3
  %call29 = tail call i32 @strncmp(ptr noundef %name28, ptr noundef %add.ptr.i, i32 noundef 32)
  %cmp30.not = icmp eq i32 %call29, 0
  br i1 %cmp30.not, label %if.end32, label %for.body27.for.cond22_crit_edge

for.body27.for.cond22_crit_edge:                  ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond22

if.end32:                                         ; preds = %for.body27
  %17 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info, align 4
  %refcnt.i64 = getelementptr inbounds %struct.ctnl_timeout, ptr %cur.1, i32 0, i32 2
  %call.i65 = tail call zeroext i1 @refcount_dec_if_one(ptr noundef %refcnt.i64) #11
  br i1 %call.i65, label %if.then.i67, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i67:                                      ; preds = %if.end32
  %call.i.i.i66 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cur.1) #11
  br i1 %call.i.i.i66, label %if.end.i.i.i70, label %if.then.i67.list_del_rcu.exit.i74_crit_edge

if.then.i67.list_del_rcu.exit.i74_crit_edge:      ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit.i74

if.end.i.i.i70:                                   ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i68 = getelementptr inbounds %struct.list_head, ptr %cur.1, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i68, align 4
  %21 = ptrtoint ptr %cur.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cur.1, align 4
  %prev1.i.i.i.i69 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i69 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i69, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del_rcu.exit.i74

list_del_rcu.exit.i74:                            ; preds = %if.end.i.i.i70, %if.then.i67.list_del_rcu.exit.i74_crit_edge
  %prev.i.i71 = getelementptr inbounds %struct.list_head, ptr %cur.1, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i71 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i71, align 4
  %timeout1.i72 = getelementptr inbounds %struct.ctnl_timeout, ptr %cur.1, i32 0, i32 4
  tail call void @nf_ct_untimeout(ptr noundef %18, ptr noundef %timeout1.i72) #11
  %tobool.not.i73 = icmp eq ptr %cur.1, null
  br i1 %tobool.not.i73, label %list_del_rcu.exit.i74.cleanup_crit_edge, label %do.end.i76

list_del_rcu.exit.i74.cleanup_crit_edge:          ; preds = %list_del_rcu.exit.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end.i76:                                       ; preds = %list_del_rcu.exit.i74
  call void @__sanitizer_cov_trace_pc() #13
  %callback_head.i75 = getelementptr inbounds %struct.ctnl_timeout, ptr %cur.1, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %callback_head.i75, ptr noundef nonnull inttoptr (i32 8 to ptr)) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end.i76, %list_del_rcu.exit.i74.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %for.cond22.cleanup_crit_edge, %ctnl_timeout_try_del.exit.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.end32.cleanup_crit_edge ], [ 0, %do.end.i76 ], [ 0, %list_del_rcu.exit.i74.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %ctnl_timeout_try_del.exit.cleanup_crit_edge ], [ -2, %for.cond22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cttimeout_default_set(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %cda) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %cda, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %cda, i32 3
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %cda, i32 4
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i.i, align 1
  %call7 = tail call ptr @nf_ct_l4proto_find(i8 noundef zeroext %7) #11
  %8 = ptrtoint ptr %call7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call7, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %7)
  %cmp.not = icmp eq i8 %9, %7
  br i1 %cmp.not, label %if.end12, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end12:                                         ; preds = %if.end
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx4, align 4
  %ctnl_timeout.i = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call7, i32 0, i32 10
  %nlattr_max.i = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call7, i32 0, i32 10, i32 3
  %14 = ptrtoint ptr %nlattr_max.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nlattr_max.i, align 2
  %conv.i = zext i16 %15 to i32
  %add.i = shl nuw nsw i32 %conv.i, 2
  %16 = add nuw nsw i32 %add.i, 4
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #15
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end12.err_crit_edge, label %if.end.i

if.end12.err_crit_edge:                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end.i:                                         ; preds = %if.end12
  %17 = ptrtoint ptr %nlattr_max.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %nlattr_max.i, align 2
  %conv3.i = zext i16 %18 to i32
  %nla_policy.i = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call7, i32 0, i32 10, i32 4
  %19 = ptrtoint ptr %nla_policy.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nla_policy.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %13, i32 4
  %21 = ptrtoint ptr %13 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %13, align 2
  %conv.i.i.i = zext i16 %22 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = tail call i32 @__nla_parse(ptr noundef nonnull %call8.i.i.i, i32 noundef %conv3.i, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef %20, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %ctnl_timeout_parse_policy.exit.thread30, label %ctnl_timeout_parse_policy.exit

ctnl_timeout_parse_policy.exit.thread30:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #11
  br label %err

ctnl_timeout_parse_policy.exit:                   ; preds = %if.end.i
  %23 = ptrtoint ptr %ctnl_timeout.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctnl_timeout.i, align 4
  %call10.i = tail call i32 %24(ptr noundef nonnull %call8.i.i.i, ptr noundef %11, ptr noundef null) #11
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp15 = icmp slt i32 %call10.i, 0
  br i1 %cmp15, label %ctnl_timeout_parse_policy.exit.err_crit_edge, label %ctnl_timeout_parse_policy.exit.cleanup_crit_edge

ctnl_timeout_parse_policy.exit.cleanup_crit_edge: ; preds = %ctnl_timeout_parse_policy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

ctnl_timeout_parse_policy.exit.err_crit_edge:     ; preds = %ctnl_timeout_parse_policy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

err:                                              ; preds = %ctnl_timeout_parse_policy.exit.err_crit_edge, %ctnl_timeout_parse_policy.exit.thread30, %if.end12.err_crit_edge, %if.end.err_crit_edge
  %ret.0 = phi i32 [ %call10.i, %ctnl_timeout_parse_policy.exit.err_crit_edge ], [ -95, %if.end.err_crit_edge ], [ %call2.i.i, %ctnl_timeout_parse_policy.exit.thread30 ], [ -12, %if.end12.err_crit_edge ]
  br label %cleanup

cleanup:                                          ; preds = %err, %ctnl_timeout_parse_policy.exit.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ 0, %ctnl_timeout_parse_policy.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cttimeout_default_get(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %cda) #2 align 64 {
entry:
  %tmp.i1.i = alloca i8, align 1
  %tmp.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %cda, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %cda, i32 3
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr.i.i134 = getelementptr i8, ptr %3, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i134 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.i.i134, align 1
  %call6 = tail call ptr @nf_ct_l4proto_find(i8 noundef zeroext %7) #11
  %8 = ptrtoint ptr %call6 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %call6, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %7)
  %cmp.not = icmp eq i8 %9, %7
  br i1 %cmp.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %10 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %land.end [
    i8 1, label %sw.bb
    i8 6, label %sw.bb15
    i8 17, label %if.end11.sw.bb19_crit_edge
    i8 -120, label %if.end11.sw.bb19_crit_edge140
    i8 33, label %sw.bb24
    i8 58, label %sw.bb28
    i8 -124, label %sw.bb32
    i8 47, label %sw.bb37
    i8 -1, label %sw.bb42
  ]

if.end11.sw.bb19_crit_edge140:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb19

if.end11.sw.bb19_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb19

sw.bb:                                            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  %icmp.i = getelementptr inbounds %struct.net, ptr %12, i32 0, i32 40, i32 10, i32 3
  br label %sw.epilog

sw.bb15:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info, align 4
  %tcp.i = getelementptr inbounds %struct.net, ptr %14, i32 0, i32 40, i32 10, i32 1
  br label %sw.epilog

sw.bb19:                                          ; preds = %if.end11.sw.bb19_crit_edge, %if.end11.sw.bb19_crit_edge140
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info, align 4
  %udp.i = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 40, i32 10, i32 2
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info, align 4
  %dccp_timeout = getelementptr inbounds %struct.net, ptr %18, i32 0, i32 40, i32 10, i32 5, i32 1
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %info, align 4
  %icmpv6.i = getelementptr inbounds %struct.net, ptr %20, i32 0, i32 40, i32 10, i32 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info, align 4
  %sctp.i = getelementptr inbounds %struct.net, ptr %22, i32 0, i32 40, i32 10, i32 6
  br label %sw.epilog

sw.bb37:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %23 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %info, align 4
  %timeouts40 = getelementptr inbounds %struct.net, ptr %24, i32 0, i32 40, i32 10, i32 7, i32 1
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %info, align 4
  %nf_ct_proto.i = getelementptr inbounds %struct.net, ptr %26, i32 0, i32 40, i32 10
  br label %sw.epilog

land.end:                                         ; preds = %if.end11
  %.b133 = load i1, ptr @cttimeout_default_get.__already_done, align 1
  br i1 %.b133, label %land.end.cleanup_crit_edge, label %if.then52, !prof !62

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then52:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @cttimeout_default_get.__already_done, align 1
  %conv63 = zext i8 %7 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 474, i32 noundef 9, ptr noundef nonnull @.str.9, i32 noundef %conv63) #11
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb42, %sw.bb37, %sw.bb32, %sw.bb28, %sw.bb24, %sw.bb19, %sw.bb15, %sw.bb
  %timeouts.0 = phi ptr [ %nf_ct_proto.i, %sw.bb42 ], [ %timeouts40, %sw.bb37 ], [ %sctp.i, %sw.bb32 ], [ %icmpv6.i, %sw.bb28 ], [ %dccp_timeout, %sw.bb24 ], [ %udp.i, %sw.bb19 ], [ %tcp.i, %sw.bb15 ], [ %icmp.i, %sw.bb ]
  %tobool84.not = icmp eq ptr %timeouts.0, null
  br i1 %tobool84.not, label %sw.epilog.cleanup_crit_edge, label %if.end86

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end86:                                         ; preds = %sw.epilog
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #11
  %tobool88.not = icmp eq ptr %call.i.i, null
  br i1 %tobool88.not, label %if.end86.cleanup_crit_edge, label %if.end90

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end90:                                         ; preds = %if.end86
  %portid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %27 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %portid, align 4
  %nlh = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 2
  %29 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %nlmsg_seq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i = icmp eq i32 %28, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 2
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.i.not.i.i.i.i = icmp eq i32 %34, 0
  br i1 %tobool.i.not.i.i.i.i, label %skb_tailroom.exit.i.i.i, label %if.end90.if.then97_crit_edge

if.end90.if.then97_crit_edge:                     ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then97

skb_tailroom.exit.i.i.i:                          ; preds = %if.end90
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %35 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %37 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.ptr.sub.i.i.i.i, 20
  br i1 %cmp.i.i.i, label %skb_tailroom.exit.i.i.i.if.then97_crit_edge, label %nlmsg_put.exit.i.i, !prof !63

skb_tailroom.exit.i.i.i.if.then97_crit_edge:      ; preds = %skb_tailroom.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then97

nlmsg_put.exit.i.i:                               ; preds = %skb_tailroom.exit.i.i.i
  %call3.i.i.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %28, i32 noundef %32, i32 noundef 2051, i32 noundef 4, i32 noundef %cond.i) #11
  %tobool.not.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %tobool.not.i.i, label %nlmsg_put.exit.i.i.if.then97_crit_edge, label %if.end.i

nlmsg_put.exit.i.i.if.then97_crit_edge:           ; preds = %nlmsg_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then97

if.end.i:                                         ; preds = %nlmsg_put.exit.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 16
  %39 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %39, i32 4)
  store i32 0, ptr %add.ptr.i.i.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #11
  %40 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %5, ptr %tmp.i.i, align 2
  %call.i.i135 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i135)
  %tobool5.not.i = icmp eq i32 %call.i.i135, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i, label %if.end.i.if.then.i.i.i_crit_edge

if.end.i.if.then.i.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %41 = ptrtoint ptr %call6 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %call6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i1.i) #11
  %43 = ptrtoint ptr %tmp.i1.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %tmp.i1.i, align 1
  %call.i2.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i1.i) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i1.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2.i)
  %tobool8.not.i = icmp eq i32 %call.i2.i, 0
  br i1 %tobool8.not.i, label %if.end10.i, label %lor.lhs.false.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.end10.i:                                       ; preds = %lor.lhs.false.i
  %44 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i.i.i.i, align 8
  %call1.i.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 32772, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i4.i = icmp slt i32 %call1.i.i.i, 0
  %tobool12.not17.i = icmp eq ptr %45, null
  %tobool12.not.i = select i1 %cmp.i.i4.i, i1 true, i1 %tobool12.not17.i
  br i1 %tobool12.not.i, label %if.end10.i.if.then.i.i.i_crit_edge, label %if.end14.i

if.end10.i.if.then.i.i.i_crit_edge:               ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.end14.i:                                       ; preds = %if.end10.i
  %obj_to_nlattr.i = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call6, i32 0, i32 10, i32 1
  %46 = ptrtoint ptr %obj_to_nlattr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %obj_to_nlattr.i, align 4
  %call15.i = call i32 %47(ptr noundef nonnull %call.i.i, ptr noundef nonnull %timeouts.0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp.i = icmp slt i32 %call15.i, 0
  br i1 %cmp.i, label %if.end14.i.if.then.i.i.i_crit_edge, label %cttimeout_default_fill_info.exit

if.end14.i.if.then.i.i.i_crit_edge:               ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end14.i.if.then.i.i.i_crit_edge, %if.end10.i.if.then.i.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i.i_crit_edge, %if.end.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %48 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i9.i = icmp ugt ptr %49, %call3.i.i.i
  br i1 %cmp.i.i9.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !63

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %50 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %call3.i.i.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i.i) #11
  br label %if.then97

cttimeout_default_fill_info.exit:                 ; preds = %if.end14.i
  %52 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %54 = ptrtoint ptr %45 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i.i, ptr %45, align 2
  %55 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i6.i = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i7.i = ptrtoint ptr %call3.i.i.i to i32
  %sub.ptr.sub.i8.i = sub i32 %sub.ptr.lhs.cast.i6.i, %sub.ptr.rhs.cast.i7.i
  %56 = ptrtoint ptr %call3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %sub.ptr.sub.i8.i, ptr %call3.i.i.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %57 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %58)
  %cmp95 = icmp slt i32 %58, 1
  br i1 %cmp95, label %cttimeout_default_fill_info.exit.if.then97_crit_edge, label %if.end98

cttimeout_default_fill_info.exit.if.then97_crit_edge: ; preds = %cttimeout_default_fill_info.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then97

if.then97:                                        ; preds = %cttimeout_default_fill_info.exit.if.then97_crit_edge, %if.end.i.i.i, %nlmsg_put.exit.i.i.if.then97_crit_edge, %skb_tailroom.exit.i.i.i.if.then97_crit_edge, %if.end90.if.then97_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #11
  br label %cleanup

if.end98:                                         ; preds = %cttimeout_default_fill_info.exit
  call void @__sanitizer_cov_trace_pc() #13
  %59 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %info, align 4
  %61 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %portid, align 4
  %call102 = call i32 @nfnetlink_unicast(ptr noundef nonnull %call.i.i, ptr noundef %60, i32 noundef %62) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.then97, %if.end86.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then52, %land.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then97 ], [ %call102, %if.end98 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -95, %sw.epilog.cleanup_crit_edge ], [ -12, %if.end86.cleanup_crit_edge ], [ -95, %if.then52 ], [ -95, %land.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfct_timeout_pernet(ptr noundef %net) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nfct_timeout_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !52) #11
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !64
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 45, ptr noundef nonnull @.str.2) #11
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !65
  %9 = tail call i32 @llvm.read_register.i32(metadata !52) #11
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %8
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnl_timeout_parse_policy(ptr noundef %timeout, ptr nocapture noundef readonly %l4proto, ptr noundef %net, ptr noundef %attr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ctnl_timeout = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %l4proto, i32 0, i32 10
  %nlattr_max = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %l4proto, i32 0, i32 10, i32 3
  %0 = ptrtoint ptr %nlattr_max to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nlattr_max, align 2
  %conv = zext i16 %1 to i32
  %add = shl nuw nsw i32 %conv, 2
  %2 = add nuw nsw i32 %add, 4
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef 3520) #15
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %nlattr_max to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %nlattr_max, align 2
  %conv3 = zext i16 %4 to i32
  %nla_policy = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %l4proto, i32 0, i32 10, i32 4
  %5 = ptrtoint ptr %nla_policy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nla_policy, align 4
  %add.ptr.i.i = getelementptr i8, ptr %attr, i32 4
  %7 = ptrtoint ptr %attr to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %attr, align 2
  %conv.i.i = zext i16 %8 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = tail call i32 @__nla_parse(ptr noundef nonnull %call8.i.i, i32 noundef %conv3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef %6, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.err_crit_edge, label %if.end8

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %ctnl_timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctnl_timeout, align 4
  %call10 = tail call i32 %10(ptr noundef nonnull %call8.i.i, ptr noundef %net, ptr noundef %timeout) #11
  br label %err

err:                                              ; preds = %if.end8, %if.end.err_crit_edge
  %ret.0 = phi i32 [ %call2.i, %if.end.err_crit_edge ], [ %call10, %if.end8 ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_l4proto_find(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %1, ptr noundef %head) #11
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !66
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %1, align 4
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctnl_timeout_dump(ptr noundef %skb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %arrayidx = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx1, align 4
  %9 = inttoptr i32 %8 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool3.not = icmp eq i32 %8, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx1, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  %11 = tail call i32 @llvm.read_register.i32(metadata !52) #11
  %and.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %14, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !64
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %if.end6.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end6.rcu_read_lock.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end6
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end6.rcu_read_lock.exit_crit_edge
  %call7 = tail call fastcc ptr @nfct_timeout_pernet(ptr noundef %4)
  %call8 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true12

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b70 = load i1, ptr @ctnl_timeout_dump.__warned, align 1
  br i1 %.b70, label %land.lhs.true12.do.end_crit_edge, label %if.then14

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ctnl_timeout_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 229, ptr noundef nonnull @.str.7) #11
  br label %do.end

do.end:                                           ; preds = %if.then14, %land.lhs.true12.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %15 = ptrtoint ptr %call7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %cur.081 = load volatile ptr, ptr %call7, align 4
  %cmp.not82 = icmp eq ptr %cur.081, %call7
  br i1 %cmp.not82, label %do.end.for.endthread-pre-split_crit_edge, label %for.body.lr.ph

do.end.for.endthread-pre-split_crit_edge:         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.endthread-pre-split

for.body.lr.ph:                                   ; preds = %do.end
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %cur.084 = phi ptr [ %cur.081, %for.body.lr.ph ], [ %cur.0, %for.inc.for.body_crit_edge ]
  %last.083 = phi ptr [ %9, %for.body.lr.ph ], [ %last.2, %for.inc.for.body_crit_edge ]
  %tobool21.not = icmp eq ptr %last.083, null
  %cmp23.not = icmp eq ptr %cur.084, %last.083
  %or.cond = select i1 %tobool21.not, i1 true, i1 %cmp23.not
  br i1 %or.cond, label %if.end26, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end26:                                         ; preds = %for.body
  %16 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 3, i32 12
  %18 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %portid, align 4
  %20 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nlmsg_seq, align 4
  %call30 = tail call fastcc i32 @ctnl_timeout_fill_info(ptr noundef %skb, i32 noundef %19, i32 noundef %23, ptr noundef %cur.084)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then33, label %if.end26.for.inc_crit_edge

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then33:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %cur.084 to i32
  %25 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx1, align 4
  br label %for.end

for.inc:                                          ; preds = %if.end26.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %last.2 = phi ptr [ null, %if.end26.for.inc_crit_edge ], [ %last.083, %for.body.for.inc_crit_edge ]
  %26 = ptrtoint ptr %cur.084 to i32
  call void @__asan_load4_noabort(i32 %26)
  %cur.0 = load volatile ptr, ptr %cur.084, align 4
  %cmp.not = icmp eq ptr %cur.0, %call7
  br i1 %cmp.not, label %for.inc.for.endthread-pre-split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.endthread-pre-split_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.endthread-pre-split

for.endthread-pre-split:                          ; preds = %for.inc.for.endthread-pre-split_crit_edge, %do.end.for.endthread-pre-split_crit_edge
  %27 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr = load i32, ptr %arrayidx1, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.then33
  %28 = phi i32 [ %.pr, %for.endthread-pre-split ], [ %24, %if.then33 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool46.not = icmp eq i32 %28, 0
  br i1 %tobool46.not, label %if.then47, label %for.end.if.end49_crit_edge

for.end.if.end49_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then47:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %arrayidx, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %for.end.if.end49_crit_edge
  %call.i71 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i71, label %if.end49.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i74

if.end49.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i74:                                ; preds = %if.end49
  %call1.i72 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i72)
  %tobool.not.i73 = icmp eq i32 %call1.i72, 0
  br i1 %tobool.not.i73, label %land.lhs.true.i74.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i76

land.lhs.true.i74.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i74
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i76:                               ; preds = %land.lhs.true.i74
  %.b4.i75 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i75, label %land.lhs.true2.i76.rcu_read_unlock.exit_crit_edge, label %if.then.i77

land.lhs.true2.i76.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i76
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i77:                                      ; preds = %land.lhs.true2.i76
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i77, %land.lhs.true2.i76.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i74.rcu_read_unlock.exit_crit_edge, %if.end49.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !65
  %30 = tail call i32 @llvm.read_register.i32(metadata !52) #11
  %and.i.i.i.i.i78 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i78 to ptr
  %preempt_count.i.i.i.i79 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i79 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i79, align 4
  %sub.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i79, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %34 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %35, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ctnl_timeout_fill_info(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef %timeout) unnamed_addr #2 align 64 {
entry:
  %tmp.i4 = alloca i32, align 4
  %tmp.i2 = alloca i8, align 1
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %portid)
  %tobool.not = icmp eq i32 %portid, 0
  %cond = select i1 %tobool.not, i32 0, i32 2
  %timeout1 = getelementptr inbounds %struct.ctnl_timeout, ptr %timeout, i32 0, i32 4
  %l4proto2 = getelementptr inbounds %struct.ctnl_timeout, ptr %timeout, i32 0, i32 4, i32 1
  %0 = ptrtoint ptr %l4proto2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l4proto2, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i.i.i, label %skb_tailroom.exit.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

skb_tailroom.exit.i.i:                            ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i)
  %cmp.i.i = icmp slt i32 %sub.ptr.sub.i.i.i, 20
  br i1 %cmp.i.i, label %skb_tailroom.exit.i.i.cleanup_crit_edge, label %nlmsg_put.exit.i, !prof !63

skb_tailroom.exit.i.i.cleanup_crit_edge:          ; preds = %skb_tailroom.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

nlmsg_put.exit.i:                                 ; preds = %skb_tailroom.exit.i.i
  %call3.i.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef 2048, i32 noundef 4, i32 noundef %cond) #11
  %tobool.not.i = icmp eq ptr %call3.i.i, null
  br i1 %tobool.not.i, label %nlmsg_put.exit.i.cleanup_crit_edge, label %if.end

nlmsg_put.exit.i.cleanup_crit_edge:               ; preds = %nlmsg_put.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit.i
  %add.ptr.i.i.i = getelementptr i8, ptr %call3.i.i, i32 16
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %add.ptr.i.i.i, align 2
  %name = getelementptr inbounds %struct.ctnl_timeout, ptr %timeout, i32 0, i32 3
  %call.i = tail call i32 @strlen(ptr noundef %name) #17
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i, ptr noundef %name) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool7.not = icmp eq i32 %call1.i, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false:                                    ; preds = %if.end
  %9 = ptrtoint ptr %timeout1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %timeout1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #11
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %tmp.i, align 2
  %call.i1 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool10.not = icmp eq i32 %call.i1, 0
  br i1 %tobool10.not, label %lor.lhs.false11, label %lor.lhs.false.if.then.i.i_crit_edge

lor.lhs.false.if.then.i.i_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i2) #11
  %14 = ptrtoint ptr %tmp.i2 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tmp.i2, align 1
  %call.i3 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i2) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3)
  %tobool14.not = icmp eq i32 %call.i3, 0
  br i1 %tobool14.not, label %lor.lhs.false15, label %lor.lhs.false11.if.then.i.i_crit_edge

lor.lhs.false11.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

lor.lhs.false15:                                  ; preds = %lor.lhs.false11
  %refcnt = getelementptr inbounds %struct.ctnl_timeout, ptr %timeout, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #11
  %15 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %refcnt, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i4) #11
  %17 = ptrtoint ptr %tmp.i4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i4, align 4
  %call.i5 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i4) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5)
  %tobool18.not = icmp eq i32 %call.i5, 0
  br i1 %tobool18.not, label %if.end20, label %lor.lhs.false15.if.then.i.i_crit_edge

lor.lhs.false15.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end20:                                         ; preds = %lor.lhs.false15
  %18 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32772, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i7 = icmp slt i32 %call1.i.i, 0
  %tobool22.not20 = icmp eq ptr %19, null
  %tobool22.not = select i1 %cmp.i.i7, i1 true, i1 %tobool22.not20
  br i1 %tobool22.not, label %if.end20.if.then.i.i_crit_edge, label %if.end24

if.end20.if.then.i.i_crit_edge:                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end24:                                         ; preds = %if.end20
  %obj_to_nlattr = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %1, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %obj_to_nlattr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %obj_to_nlattr, align 4
  %data = getelementptr inbounds %struct.ctnl_timeout, ptr %timeout, i32 1
  %call26 = call i32 %21(ptr noundef %skb, ptr noundef %data) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp = icmp slt i32 %call26, 0
  br i1 %cmp, label %if.end24.if.then.i.i_crit_edge, label %if.end29

if.end24.if.then.i.i_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %23 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv.i, ptr %19, align 2
  %25 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i9 = ptrtoint ptr %25 to i32
  %sub.ptr.rhs.cast.i10 = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.sub.i11 = sub i32 %sub.ptr.lhs.cast.i9, %sub.ptr.rhs.cast.i10
  %26 = ptrtoint ptr %call3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub.ptr.sub.i11, ptr %call3.i.i, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %27 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %len, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end24.if.then.i.i_crit_edge, %if.end20.if.then.i.i_crit_edge, %lor.lhs.false15.if.then.i.i_crit_edge, %lor.lhs.false11.if.then.i.i_crit_edge, %lor.lhs.false.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i12 = icmp ugt ptr %30, %call3.i.i
  br i1 %cmp.i.i12, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !63

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %call3.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end29, %nlmsg_put.exit.i.cleanup_crit_edge, %skb_tailroom.exit.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %if.end29 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %skb_tailroom.exit.i.i.cleanup_crit_edge ], [ -1, %nlmsg_put.exit.i.cleanup_crit_edge ], [ -1, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_unicast(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_dump_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_if_one(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_untimeout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cttimeout_net_init(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nfct_timeout_pernet(ptr noundef %net)
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %call, ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %prev.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cttimeout_net_exit(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nfct_timeout_pernet(ptr noundef %net)
  tail call void @nf_ct_unconfirmed_destroy(ptr noundef %net) #11
  tail call void @nf_ct_untimeout(ptr noundef %net, ptr noundef null) #11
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %cmp.not33 = icmp eq ptr %1, %call
  br i1 %cmp.not33, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %cur.034 = phi ptr [ %tmp.036, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %cur.034 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp.036 = load ptr, ptr %cur.034, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cur.034) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_rcu.exit_crit_edge

for.body.list_del_rcu.exit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cur.034, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %cur.034 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cur.034, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %for.body.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cur.034, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %refcnt = getelementptr inbounds %struct.ctnl_timeout, ptr %cur.034, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !68
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.for.inc_crit_edge, label %if.then10.i.i.i, !prof !62

if.end5.i.i.i.for.inc_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #11
  br label %for.inc

refcount_dec_and_test.exit:                       ; preds = %list_del_rcu.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !69
  %tobool.not.not = icmp eq ptr %cur.034, null
  br i1 %tobool.not.not, label %refcount_dec_and_test.exit.for.inc_crit_edge, label %do.end

refcount_dec_and_test.exit.for.inc_crit_edge:     ; preds = %refcount_dec_and_test.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end:                                           ; preds = %refcount_dec_and_test.exit
  call void @__sanitizer_cov_trace_pc() #13
  %callback_head = getelementptr inbounds %struct.ctnl_timeout, ptr %cur.034, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 8 to ptr)) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end, %refcount_dec_and_test.exit.for.inc_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.for.inc_crit_edge
  %cmp.not = icmp eq ptr %tmp.036, %call
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_unconfirmed_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_subsys_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ctnl_timeout_find_get(ptr noundef %net, ptr nocapture noundef readonly %name) #2 align 64 {
entry:
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nfct_timeout_pernet(ptr noundef %net)
  %call1 = tail call i32 @rcu_read_lock_any_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.for.cond.preheader_crit_edge

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.for.cond.preheader_crit_edge, label %land.lhs.true4

land.lhs.true.for.cond.preheader_crit_edge:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b39 = load i1, ptr @ctnl_timeout_find_get.__warned, align 1
  br i1 %.b39, label %land.lhs.true4.for.cond.preheader_crit_edge, label %if.then

land.lhs.true4.for.cond.preheader_crit_edge:      ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ctnl_timeout_find_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 505, ptr noundef nonnull @.str.7) #11
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.then, %land.lhs.true4.for.cond.preheader_crit_edge, %land.lhs.true.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %for.cond.preheader
  %timeout.0.in = phi ptr [ %timeout.0, %for.body.for.cond_crit_edge ], [ %call, %for.cond.preheader ]
  %0 = ptrtoint ptr %timeout.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %timeout.0 = load volatile ptr, ptr %timeout.0.in, align 4
  %cmp.not = icmp eq ptr %timeout.0, %call
  br i1 %cmp.not, label %for.cond.err_crit_edge, label %for.body

for.cond.err_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

for.body:                                         ; preds = %for.cond
  %name11 = getelementptr inbounds %struct.ctnl_timeout, ptr %timeout.0, i32 0, i32 3
  %call12 = tail call i32 @strncmp(ptr noundef %name11, ptr noundef %name, i32 noundef 32)
  %cmp13.not = icmp eq i32 %call12, 0
  br i1 %cmp13.not, label %if.end15, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

if.end15:                                         ; preds = %for.body
  %call16 = tail call zeroext i1 @try_module_get(ptr noundef null) #11
  br i1 %call16, label %if.end18, label %if.end15.err_crit_edge

if.end15.err_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.end18:                                         ; preds = %if.end15
  %refcnt = getelementptr inbounds %struct.ctnl_timeout, ptr %timeout.0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #11
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %refcnt, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end18
  %3 = phi i32 [ %2, %if.end18 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %4 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.i.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %3, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #11
  %5 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %7 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 %6, i32 %add.i.i.i, ptr elementtype(i32) %refcnt) #11, !srcloc !70
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %7, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %6
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !62

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %8 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %9, 1
  %10 = or i32 %add5.i.i.i, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !62

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 0) #11
  %11 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %12 = phi i32 [ %9, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool12.i.i.i.not = icmp eq i32 %12, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #11
  br i1 %tobool12.i.i.i.not, label %if.then20, label %refcount_inc_not_zero.exit.err_crit_edge

refcount_inc_not_zero.exit.err_crit_edge:         ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %err

if.then20:                                        ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @module_put(ptr noundef null) #11
  br label %err

err:                                              ; preds = %if.then20, %refcount_inc_not_zero.exit.err_crit_edge, %if.end15.err_crit_edge, %for.cond.err_crit_edge
  %matching.0 = phi ptr [ null, %if.then20 ], [ null, %if.end15.err_crit_edge ], [ %timeout.0, %refcount_inc_not_zero.exit.err_crit_edge ], [ null, %for.cond.err_crit_edge ]
  %tobool31.not = icmp eq ptr %matching.0, null
  %timeout32 = getelementptr inbounds %struct.ctnl_timeout, ptr %matching.0, i32 0, i32 4
  %spec.select = select i1 %tobool31.not, ptr null, ptr %timeout32
  ret ptr %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ctnl_timeout_put(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr i8, ptr %t, i32 -36
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #11
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #11, !srcloc !68
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %refcount_dec_and_test.exit, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end5_crit_edge, label %if.then10.i.i.i, !prof !62

if.end5.i.i.i.if.end5_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #11
  br label %if.end5

refcount_dec_and_test.exit:                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !69
  %add.ptr = getelementptr i8, ptr %t, i32 -52
  %tobool.not.not = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.not, label %refcount_dec_and_test.exit.if.end5_crit_edge, label %do.end

refcount_dec_and_test.exit.if.end5_crit_edge:     ; preds = %refcount_dec_and_test.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

do.end:                                           ; preds = %refcount_dec_and_test.exit
  call void @__sanitizer_cov_trace_pc() #13
  %callback_head = getelementptr i8, ptr %t, i32 -44
  tail call void @kvfree_call_rcu(ptr noundef %callback_head, ptr noundef nonnull inttoptr (i32 8 to ptr)) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %refcount_dec_and_test.exit.if.end5_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.if.end5_crit_edge
  tail call void @module_put(ptr noundef null) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nobuiltin }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !34, !36, !37, !38, !40, !42, !43, !45, !47, !48, !49, !50}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__UNIQUE_ID_file592, !1, !"__UNIQUE_ID_file592", i1 false, i1 false}
!1 = !{!"../net/netfilter/nfnetlink_cttimeout.c", i32 40, i32 1}
!2 = !{ptr @__UNIQUE_ID_license593, !1, !"__UNIQUE_ID_license593", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author594, !4, !"__UNIQUE_ID_author594", i1 false, i1 false}
!4 = !{!"../net/netfilter/nfnetlink_cttimeout.c", i32 41, i32 1}
!5 = !{ptr @__UNIQUE_ID_description595, !6, !"__UNIQUE_ID_description595", i1 false, i1 false}
!6 = !{!"../net/netfilter/nfnetlink_cttimeout.c", i32 42, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias602, !8, !"__UNIQUE_ID_alias602", i1 false, i1 false}
!8 = !{!"../net/netfilter/nfnetlink_cttimeout.c", i32 574, i32 1}
!9 = !{ptr @__initcall__kmod_nfnetlink_cttimeout__608_641_cttimeout_init6, !10, !"__initcall__kmod_nfnetlink_cttimeout__608_641_cttimeout_init6", i1 false, i1 false}
!10 = !{!"../net/netfilter/nfnetlink_cttimeout.c", i32 641, i32 1}
!11 = !{ptr @__exitcall_cttimeout_exit, !12, !"__exitcall_cttimeout_exit", i1 false, i1 false}
!12 = !{!"../net/netfilter/nfnetlink_cttimeout.c", i32 642, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nfnetlink_cttimeout.c", i32 568, i32 13}
!15 = !{ptr @cttimeout_subsys, !16, !"cttimeout_subsys", i1 false, i1 false}
!16 = !{!"../net/netfilter/nfnetlink_cttimeout.c", i32 567, i32 41}
!17 = !{ptr @cttimeout_cb, !18, !"cttimeout_cb", i1 false, i1 false}
!18 = !{!"../net/netfilter/nfnetlink_cttimeout.c", i32 534, i32 35}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @nfct_timeout_id, !31, !"nfct_timeout_id", i1 false, i1 false}
!31 = !{!"../net/netfilter/nfnetlink_cttimeout.c", i32 34, i32 21}
!32 = !{ptr @cttimeout_nla_policy, !33, !"cttimeout_nla_policy", i1 false, i1 false}
!33 = !{!"../net/netfilter/nfnetlink_cttimeout.c", i32 44, i32 32}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/netfilter/nfnetlink_cttimeout.c", i32 229, i32 2}
!36 = !{ptr @.str.6, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/net/netlink.h", i32 991, i32 3}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../net/netfilter/nfnetlink_cttimeout.c", i32 474, i32 3}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cttimeout_ops, !44, !"cttimeout_ops", i1 false, i1 false}
!44 = !{!"../net/netfilter/nfnetlink_cttimeout.c", i32 601, i32 33}
!45 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/netfilter/nfnetlink_cttimeout.c", i32 618, i32 3}
!47 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @cttimeout_init._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @cttimeout_init._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/netfilter/nfnetlink_cttimeout.c", i32 505, i32 2}
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
!62 = !{!"branch_weights", i32 2000, i32 1}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{i64 2149370140}
!65 = !{i64 2149370406}
!66 = !{i64 2151565605}
!67 = !{i64 2148456020}
!68 = !{i64 2148370460, i64 2148370492, i64 2148370521, i64 2148370555, i64 2148370586, i64 2148370609}
!69 = !{i64 2149319650}
!70 = !{i64 850998, i64 851022, i64 851043, i64 851060, i64 851077}
