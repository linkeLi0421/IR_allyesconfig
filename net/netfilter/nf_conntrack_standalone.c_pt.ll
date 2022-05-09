; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_conntrack_standalone.c_pt.bc'
source_filename = "../net/netfilter/nf_conntrack_standalone.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+print_tuple\22, \22a\22\09"
module asm "\09.weak\09__crc_print_tuple\09\09\09\09"
module asm "\09.long\09__crc_print_tuple\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_print_tuple:\09\09\09\09\09"
module asm "\09.asciz \09\22print_tuple\22\09\09\09\09\09"
module asm "__kstrtabns_print_tuple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nf_conntrack_count\22, \22a\22\09"
module asm "\09.weak\09__crc_nf_conntrack_count\09\09\09\09"
module asm "\09.long\09__crc_nf_conntrack_count\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nf_conntrack_count:\09\09\09\09\09"
module asm "\09.asciz \09\22nf_conntrack_count\22\09\09\09\09\09"
module asm "__kstrtabns_nf_conntrack_count:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.150 }
%union.anon.150 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.105 }
%struct.anon.105 = type { %union.nf_inet_addr, %union.anon.106, i8, i8 }
%union.anon.106 = type { i16 }
%struct.anon.109 = type { i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nf_conntrack_net = type { %struct.atomic_t, i32, i8, i8, i32, i32, i32, ptr, %struct.delayed_work, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.ct_iter_state = type { %struct.seq_net_private, ptr, i32, i32, i64 }
%struct.seq_net_private = type { ptr, ptr }
%struct.hlist_nulls_head = type { ptr }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.113, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.possible_net_t = type { ptr }
%struct.anon.113 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.nf_conntrack_l4proto = type { i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.171, ptr }
%struct.anon.171 = type { ptr, ptr, i16, i16, ptr }
%struct.nf_conn_counter = type { %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ip_conntrack_stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID_enable_hooks588 = internal constant [61 x i8] c"nf_conntrack.parm=enable_hooks:Always enable conntrack hooks\00", section ".modinfo", align 1
@__param_str_enable_hooks = internal constant [26 x i8] c"nf_conntrack.enable_hooks\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable_hooks = internal global i8 0, section ".data..read_mostly", align 1
@__param_enable_hooks = internal constant %struct.kernel_param { ptr @__param_str_enable_hooks, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.150 { ptr @enable_hooks } }, section "__param", align 4
@__UNIQUE_ID_enable_hookstype589 = internal constant [40 x i8] c"nf_conntrack.parmtype=enable_hooks:bool\00", section ".modinfo", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"src=%pI4 dst=%pI4 \00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"src=%pI6 dst=%pI6 \00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"type=%u code=%u id=%u \00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sport=%hu dport=%hu \00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"srckey=0x%x dstkey=0x%x \00", [39 x i8] zeroinitializer }, align 32
@__kstrtab_print_tuple = external dso_local constant [0 x i8], align 1
@__kstrtabns_print_tuple = external dso_local constant [0 x i8], align 1
@__ksymtab_print_tuple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @print_tuple to i32), ptr @__kstrtab_print_tuple, ptr @__kstrtabns_print_tuple }, section "___ksymtab_gpl+print_tuple", align 4
@__kstrtab_nf_conntrack_count = external dso_local constant [0 x i8], align 1
@__kstrtabns_nf_conntrack_count = external dso_local constant [0 x i8], align 1
@__ksymtab_nf_conntrack_count = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nf_conntrack_count to i32), ptr @__kstrtab_nf_conntrack_count, ptr @__kstrtabns_nf_conntrack_count }, section "___ksymtab_gpl+nf_conntrack_count", align 4
@nf_conntrack_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @nf_conntrack_pernet_init, ptr null, ptr null, ptr @nf_conntrack_pernet_exit, ptr @nf_conntrack_net_id, i32 132 }, [32 x i8] zeroinitializer }, align 32
@nf_ct_netfilter_header = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_nf_conntrack__598_1267_nf_conntrack_standalone_init6 = internal global ptr @nf_conntrack_standalone_init, section ".initcall6.init", align 4
@__exitcall_nf_conntrack_standalone_fini = internal global ptr @nf_conntrack_standalone_fini, section ".exitcall.exit", align 4
@nf_conntrack_net_id = dso_local global i32 0, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nf_ct_sysctl_table = internal global { [52 x %struct.ctl_table], [464 x i8] } { [52 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.11, ptr @nf_conntrack_max, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.12, ptr null, i32 4, i16 292, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.13, ptr @nf_conntrack_htable_size_user, i32 4, i16 420, ptr null, ptr @nf_conntrack_hash_sysctl, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.14, ptr getelementptr (i8, ptr @init_net, i64 2934), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.15, ptr getelementptr (i8, ptr @init_net, i64 2929), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.16, ptr @nf_ct_expect_max, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.17, ptr getelementptr (i8, ptr @init_net, i64 2931), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.18, ptr null, i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.19, ptr getelementptr (i8, ptr @init_net, i64 2930), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.20, ptr getelementptr (i8, ptr @init_net, i64 2933), i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.21, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.22, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.23, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.24, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.25, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.26, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.27, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.28, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.29, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.30, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.31, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.32, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.33, ptr null, i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.34, ptr null, i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.35, ptr null, i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.36, ptr null, i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.37, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.38, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.39, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.40, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.41, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.42, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.43, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.44, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.45, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.46, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.47, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.48, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.49, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.50, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.51, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.52, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.53, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.54, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.55, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.56, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.57, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.58, ptr null, i32 1, i16 420, ptr null, ptr @proc_dou8vec_minmax, ptr null, ptr getelementptr (i8, ptr @sysctl_vals, i64 4), ptr getelementptr (i8, ptr @sysctl_vals, i64 8) }, %struct.ctl_table { ptr @.str.59, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.60, ptr null, i32 4, i16 420, ptr null, ptr @proc_dointvec_jiffies, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.61, ptr null, i32 4, i16 420, ptr null, ptr @nf_hooks_lwtunnel_sysctl_handler, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [464 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net/netfilter\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"nf_conntrack_max\00", [47 x i8] zeroinitializer }, align 32
@nf_conntrack_max = external dso_local global i32, align 4
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nf_conntrack_count\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"nf_conntrack_buckets\00", [43 x i8] zeroinitializer }, align 32
@nf_conntrack_htable_size_user = internal global i32 0, section ".data..read_mostly", align 4
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nf_conntrack_checksum\00", [42 x i8] zeroinitializer }, align 32
@sysctl_vals = external dso_local constant [0 x i32], align 4
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nf_conntrack_log_invalid\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nf_conntrack_expect_max\00", [40 x i8] zeroinitializer }, align 32
@nf_ct_expect_max = external dso_local global i32, align 4
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nf_conntrack_acct\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nf_conntrack_helper\00", [44 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"nf_conntrack_events\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nf_conntrack_timestamp\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nf_conntrack_generic_timeout\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nf_conntrack_tcp_timeout_syn_sent\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nf_conntrack_tcp_timeout_syn_recv\00", [62 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nf_conntrack_tcp_timeout_established\00", [59 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nf_conntrack_tcp_timeout_fin_wait\00", [62 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nf_conntrack_tcp_timeout_close_wait\00", [60 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nf_conntrack_tcp_timeout_last_ack\00", [62 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nf_conntrack_tcp_timeout_time_wait\00", [61 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nf_conntrack_tcp_timeout_close\00", [33 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"nf_conntrack_tcp_timeout_max_retrans\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nf_conntrack_tcp_timeout_unacknowledged\00", [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nf_flowtable_tcp_timeout\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"nf_conntrack_tcp_loose\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nf_conntrack_tcp_be_liberal\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"nf_conntrack_tcp_ignore_invalid_rst\00", [60 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nf_conntrack_tcp_max_retrans\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nf_conntrack_udp_timeout\00", [39 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nf_conntrack_udp_timeout_stream\00", [32 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nf_flowtable_udp_timeout\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nf_conntrack_icmp_timeout\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nf_conntrack_icmpv6_timeout\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nf_conntrack_sctp_timeout_closed\00", [63 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nf_conntrack_sctp_timeout_cookie_wait\00", [58 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nf_conntrack_sctp_timeout_cookie_echoed\00", [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"nf_conntrack_sctp_timeout_established\00", [58 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nf_conntrack_sctp_timeout_shutdown_sent\00", [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"nf_conntrack_sctp_timeout_shutdown_recd\00", [56 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"nf_conntrack_sctp_timeout_shutdown_ack_sent\00", [52 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nf_conntrack_sctp_timeout_heartbeat_sent\00", [55 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"nf_conntrack_sctp_timeout_heartbeat_acked\00", [54 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nf_conntrack_dccp_timeout_request\00", [62 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nf_conntrack_dccp_timeout_respond\00", [62 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nf_conntrack_dccp_timeout_partopen\00", [61 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nf_conntrack_dccp_timeout_open\00", [33 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nf_conntrack_dccp_timeout_closereq\00", [61 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nf_conntrack_dccp_timeout_closing\00", [62 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"nf_conntrack_dccp_timeout_timewait\00", [61 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nf_conntrack_dccp_loose\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"nf_conntrack_gre_timeout\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"nf_conntrack_gre_timeout_stream\00", [32 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nf_hooks_lwtunnel\00", [46 x i8] zeroinitializer }, align 32
@nf_conntrack_htable_size = external dso_local local_unnamed_addr global i32, align 4
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"nf_conntrack\00", [19 x i8] zeroinitializer }, align 32
@ct_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ct_seq_start, ptr @ct_seq_stop, ptr @ct_seq_next, ptr @ct_seq_show }, [16 x i8] zeroinitializer }, align 32
@ct_cpu_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @ct_cpu_seq_start, ptr @ct_cpu_seq_stop, ptr @ct_cpu_seq_next, ptr @ct_cpu_seq_show }, [16 x i8] zeroinitializer }, align 32
@nf_conntrack_generation = external dso_local global %struct.seqcount_spinlock, align 4
@nf_conntrack_hash = external dso_local local_unnamed_addr global ptr, align 4
@ct_get_first.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"net/netfilter/nf_conntrack_standalone.c\00", [56 x i8] zeroinitializer }, align 32
@ct_get_next.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ct_get_next.__warned.64 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.65 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%-8s %u %-8s %u \00", [47 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%ld \00", [27 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"[UNREPLIED] \00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"[HW_OFFLOAD] \00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[OFFLOAD] \00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"[ASSURED] \00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mark=%u \00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"use=%u\0A\00", [24 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.73 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv4\00", [27 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ipv6\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"icmp\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tcp\00", [28 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"udp\00", [28 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dccp\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"gre\00", [28 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sctp\00", [27 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"udplite\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"icmpv6\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"zone=%u \00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"zone-orig=%u \00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"zone-reply=%u \00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"packets=%llu bytes=%llu \00", [39 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"secctx=%s \00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"delta-time=%llu \00", [47 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@.str.91 = internal constant { [166 x i8], [58 x i8] } { [166 x i8] c"entries  clashres found new invalid ignore delete chainlength insert insert_failed drop early_drop icmp_error  expect_new expect_create expect_delete search_restart\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"%08x  %08x %08x %08x %08x %08x %08x %08x %08x %08x %08x %08x %08x  %08x %08x %08x %08x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"net\00", [28 x i8] zeroinitializer }, align 32
@nf_ct_netfilter_table = internal global { [2 x %struct.ctl_table], [56 x i8] } { [2 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.11, ptr @nf_conntrack_max, i32 4, i16 420, ptr null, ptr @proc_dointvec, ptr null, ptr null, ptr null }, %struct.ctl_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@nf_conntrack_standalone_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.63, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013nf_conntrack: can't register to sysctl.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nf_conntrack_standalone_init\00", [35 x i8] zeroinitializer }, align 32
@nf_conntrack_standalone_init._entry_ptr = internal global ptr @nf_conntrack_standalone_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.96 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 6, i64 17, i64 33, i64 47, i64 58, i64 132, i64 136]
@__sancov_gen_cov_switch_values.97 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 6, i64 17, i64 33, i64 47, i64 58, i64 132, i64 136]
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 43, i32 17 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 47, i32 17 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 56, i32 17 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 62, i32 17 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 90, i32 17 }
@___asan_gen_.113 = private unnamed_addr constant [21 x i8] c"nf_conntrack_net_ops\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1213, i32 33 }
@___asan_gen_.116 = private unnamed_addr constant [23 x i8] c"nf_ct_netfilter_header\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 551, i32 33 }
@___asan_gen_.123 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 45, i32 7 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 695, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 723, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant [19 x i8] c"nf_ct_sysctl_table\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 627, i32 25 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1128, i32 49 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 629, i32 15 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 636, i32 15 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 642, i32 21 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 649, i32 15 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 658, i32 15 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 665, i32 15 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 672, i32 15 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 681, i32 15 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 690, i32 15 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 701, i32 15 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 711, i32 15 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 717, i32 15 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 723, i32 15 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 729, i32 15 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 735, i32 15 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 741, i32 15 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 747, i32 15 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 753, i32 15 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 759, i32 15 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 765, i32 15 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 771, i32 15 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 778, i32 15 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 785, i32 15 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 793, i32 21 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 801, i32 15 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 809, i32 15 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 815, i32 15 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 821, i32 15 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 828, i32 15 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 835, i32 15 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 841, i32 15 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 848, i32 15 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 854, i32 15 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 860, i32 15 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 866, i32 15 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 872, i32 15 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 878, i32 15 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 884, i32 15 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 890, i32 15 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 896, i32 21 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 904, i32 15 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 910, i32 15 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 916, i32 15 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 922, i32 15 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 928, i32 15 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 934, i32 15 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 940, i32 15 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 946, i32 15 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 956, i32 21 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 962, i32 21 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 970, i32 15 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 478, i32 8 }
@___asan_gen_.296 = private unnamed_addr constant [11 x i8] c"ct_seq_ops\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 384, i32 36 }
@___asan_gen_.299 = private unnamed_addr constant [15 x i8] c"ct_cpu_seq_ops\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 465, i32 36 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 116, i32 7 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 324, i32 16 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 329, i32 17 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 346, i32 15 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 356, i32 15 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 358, i32 15 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 360, i32 15 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 366, i32 16 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 373, i32 16 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 255, i32 23 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 256, i32 24 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 259, i32 9 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 265, i32 28 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 266, i32 27 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 267, i32 27 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 268, i32 28 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 269, i32 27 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 270, i32 28 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 271, i32 31 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 272, i32 30 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 206, i32 17 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 209, i32 17 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 212, i32 17 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 289, i32 16 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 186, i32 16 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 240, i32 17 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 435, i32 17 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 441, i32 18 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1230, i32 34 }
@___asan_gen_.389 = private unnamed_addr constant [22 x i8] c"nf_ct_netfilter_table\00", align 1
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 980, i32 25 }
@___asan_gen_.392 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.399 = private constant [43 x i8] c"../net/netfilter/nf_conntrack_standalone.c\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1232, i32 3 }
@llvm.compiler.used = appending global [110 x ptr] [ptr @__UNIQUE_ID_enable_hooks588, ptr @__UNIQUE_ID_enable_hookstype589, ptr @__exitcall_nf_conntrack_standalone_fini, ptr @__initcall__kmod_nf_conntrack__598_1267_nf_conntrack_standalone_init6, ptr @__ksymtab_nf_conntrack_count, ptr @__ksymtab_print_tuple, ptr @__param_enable_hooks, ptr @nf_conntrack_standalone_fini, ptr @nf_conntrack_standalone_init._entry, ptr @nf_conntrack_standalone_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nf_conntrack_net_ops, ptr @nf_ct_netfilter_header, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @nf_ct_sysctl_table, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @ct_seq_ops, ptr @ct_cpu_seq_ops, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @nf_ct_netfilter_table, ptr @.str.94, ptr @.str.95], section "llvm.metadata"
@0 = internal global [101 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_ct_netfilter_header to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_ct_sysctl_table to i32), i32 1872, i32 2336, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ct_cpu_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 166, i32 224, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_ct_netfilter_table to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nf_conntrack_standalone_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @print_tuple(ptr noundef %s, ptr noundef %tuple, ptr nocapture noundef readonly %l4proto) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %l3num = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 2
  %0 = ptrtoint ptr %l3num to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %l3num, align 2
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %1, label %entry.sw.epilog_crit_edge [
    i16 2, label %entry.sw.epilog.sink.split_crit_edge
    i16 10, label %sw.bb3
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3, %entry.sw.epilog.sink.split_crit_edge
  %.str.1.sink = phi ptr [ @.str.1, %sw.bb3 ], [ @.str, %entry.sw.epilog.sink.split_crit_edge ]
  %dst6 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull %.str.1.sink, ptr noundef %tuple, ptr noundef %dst6) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  %3 = ptrtoint ptr %l4proto to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %l4proto, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.96)
  switch i8 %4, label %sw.epilog.sw.epilog77_crit_edge [
    i8 1, label %sw.bb11
    i8 6, label %sw.bb20
    i8 -120, label %sw.epilog.sw.bb28_crit_edge
    i8 17, label %sw.epilog.sw.bb28_crit_edge106
    i8 33, label %sw.bb37
    i8 -124, label %sw.bb46
    i8 58, label %sw.bb55
    i8 47, label %sw.bb68
  ]

sw.epilog.sw.bb28_crit_edge106:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb28

sw.epilog.sw.bb28_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb28

sw.epilog.sw.epilog77_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog77

sw.bb11:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %u = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %u to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %u, align 4
  %conv13 = zext i8 %7 to i32
  %code = getelementptr inbounds %struct.anon.109, ptr %u, i32 0, i32 1
  %8 = ptrtoint ptr %code to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %code, align 1
  %conv16 = zext i8 %9 to i32
  %u18 = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %10 = ptrtoint ptr %u18 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %u18, align 4
  %conv19 = zext i16 %11 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.2, i32 noundef %conv13, i32 noundef %conv16, i32 noundef %conv19) #11
  br label %sw.epilog77

sw.bb20:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %u22 = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %12 = ptrtoint ptr %u22 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %u22, align 4
  %conv23 = zext i16 %13 to i32
  %u25 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %u25 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %u25, align 4
  %conv27 = zext i16 %15 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv23, i32 noundef %conv27) #11
  br label %sw.epilog77

sw.bb28:                                          ; preds = %sw.epilog.sw.bb28_crit_edge, %sw.epilog.sw.bb28_crit_edge106
  %u30 = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %16 = ptrtoint ptr %u30 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %u30, align 4
  %conv32 = zext i16 %17 to i32
  %u34 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %u34 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %u34, align 4
  %conv36 = zext i16 %19 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv32, i32 noundef %conv36) #11
  br label %sw.epilog77

sw.bb37:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %u39 = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %20 = ptrtoint ptr %u39 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %u39, align 4
  %conv41 = zext i16 %21 to i32
  %u43 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %u43 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %u43, align 4
  %conv45 = zext i16 %23 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv41, i32 noundef %conv45) #11
  br label %sw.epilog77

sw.bb46:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %u48 = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %24 = ptrtoint ptr %u48 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %u48, align 4
  %conv50 = zext i16 %25 to i32
  %u52 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %u52 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %u52, align 4
  %conv54 = zext i16 %27 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.3, i32 noundef %conv50, i32 noundef %conv54) #11
  br label %sw.epilog77

sw.bb55:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %u57 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %u57 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %u57, align 4
  %conv59 = zext i8 %29 to i32
  %code62 = getelementptr inbounds %struct.anon.109, ptr %u57, i32 0, i32 1
  %30 = ptrtoint ptr %code62 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %code62, align 1
  %conv63 = zext i8 %31 to i32
  %u65 = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %32 = ptrtoint ptr %u65 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %u65, align 4
  %conv67 = zext i16 %33 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.2, i32 noundef %conv59, i32 noundef %conv63, i32 noundef %conv67) #11
  br label %sw.epilog77

sw.bb68:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %u70 = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple, i32 0, i32 1
  %34 = ptrtoint ptr %u70 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %u70, align 4
  %conv71 = zext i16 %35 to i32
  %u73 = getelementptr inbounds %struct.nf_conntrack_tuple, ptr %tuple, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %u73 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %u73, align 4
  %conv75 = zext i16 %37 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.4, i32 noundef %conv71, i32 noundef %conv75) #11
  br label %sw.epilog77

sw.epilog77:                                      ; preds = %sw.bb68, %sw.bb55, %sw.bb46, %sw.bb37, %sw.bb28, %sw.bb20, %sw.bb11, %sw.epilog.sw.epilog77_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_conntrack_count(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @nf_ct_pernet(ptr noundef %net)
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %call, i32 noundef 4) #11
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %call, align 4
  ret i32 %1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nf_ct_pernet(ptr noundef %net) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load i32, ptr @nf_conntrack_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !230) #11
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !240
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #11
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 45, ptr noundef nonnull @.str.6) #11
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #11
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !241
  %9 = tail call i32 @llvm.read_register.i32(metadata !230) #11
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
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_conntrack_standalone_fini() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nf_conntrack_cleanup_start() #11
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @nf_conntrack_net_ops) #11
  %0 = load ptr, ptr @nf_ct_netfilter_header, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %0) #11
  tail call void @nf_conntrack_cleanup_end() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_cleanup_start() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_cleanup_end() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_conntrack_standalone_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nf_conntrack_init_start() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %entry
  %call1 = tail call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull @.str.93, ptr noundef nonnull @nf_ct_netfilter_table) #11
  store ptr %call1, ptr @nf_ct_netfilter_header, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end5, label %if.end7

do.end5:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #14
  br label %out_sysctl

if.end7:                                          ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_conntrack_htable_size to i32))
  %0 = load i32, ptr @nf_conntrack_htable_size, align 4
  store i32 %0, ptr @nf_conntrack_htable_size_user, align 4
  %call8 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @nf_conntrack_net_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %out_pernet, label %if.end11

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nf_conntrack_init_end() #11
  br label %cleanup

out_pernet:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %1 = load ptr, ptr @nf_ct_netfilter_header, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %1) #11
  br label %out_sysctl

out_sysctl:                                       ; preds = %out_pernet, %do.end5
  %ret.0 = phi i32 [ %call8, %out_pernet ], [ -12, %do.end5 ]
  tail call void @nf_conntrack_cleanup_end() #11
  br label %cleanup

cleanup:                                          ; preds = %out_sysctl, %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call, %entry.cleanup_crit_edge ], [ %ret.0, %out_sysctl ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
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
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_conntrack_pernet_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sysctl_checksum = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 6
  %0 = ptrtoint ptr %sysctl_checksum to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %sysctl_checksum, align 2
  %call.i = tail call fastcc ptr @nf_ct_pernet(ptr noundef %net) #11
  %call2.i = tail call ptr @kmemdup(ptr noundef nonnull @nf_ct_sysctl_table, i32 noundef 1872, i32 noundef 3264) #11
  %tobool.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %udp.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 2
  %data.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 1, i32 1
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %data.i, align 4
  %data4.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 3, i32 1
  %2 = ptrtoint ptr %data4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sysctl_checksum, ptr %data4.i, align 4
  %sysctl_log_invalid.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 1
  %data7.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 4, i32 1
  %3 = ptrtoint ptr %data7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %sysctl_log_invalid.i, ptr %data7.i, align 4
  %sysctl_acct.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 3
  %data10.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 6, i32 1
  %4 = ptrtoint ptr %data10.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sysctl_acct.i, ptr %data10.i, align 4
  %sysctl_auto_assign_helper.i = getelementptr inbounds %struct.nf_conntrack_net, ptr %call.i, i32 0, i32 2
  %data12.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 7, i32 1
  %5 = ptrtoint ptr %data12.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %sysctl_auto_assign_helper.i, ptr %data12.i, align 4
  %sysctl_events.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 2
  %data15.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 8, i32 1
  %6 = ptrtoint ptr %data15.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %sysctl_events.i, ptr %data15.i, align 4
  %sysctl_tstamp.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 5
  %data18.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 9, i32 1
  %7 = ptrtoint ptr %data18.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sysctl_tstamp.i, ptr %data18.i, align 4
  %nf_ct_proto.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10
  %data21.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 10, i32 1
  %8 = ptrtoint ptr %data21.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %nf_ct_proto.i.i, ptr %data21.i, align 4
  %icmp.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 3
  %data25.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 29, i32 1
  %9 = ptrtoint ptr %data25.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %icmp.i.i, ptr %data25.i, align 4
  %icmpv6.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 4
  %data29.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 30, i32 1
  %10 = ptrtoint ptr %data29.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %icmpv6.i.i, ptr %data29.i, align 4
  %data32.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 26, i32 1
  %11 = ptrtoint ptr %data32.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %udp.i.i, ptr %data32.i, align 4
  %arrayidx34.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 2, i32 0, i32 1
  %data36.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 27, i32 1
  %12 = ptrtoint ptr %data36.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx34.i, ptr %data36.i, align 4
  %offload_timeout.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 2, i32 1
  %data38.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 28, i32 1
  %13 = ptrtoint ptr %data38.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %offload_timeout.i, ptr %data38.i, align 4
  %arrayidx.i.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 1
  %data.i.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 11, i32 1
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.i.i, ptr %data.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 2
  %data5.i.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 12, i32 1
  %15 = ptrtoint ptr %data5.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %arrayidx3.i.i, ptr %data5.i.i, align 4
  %arrayidx7.i.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 3
  %data9.i.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 13, i32 1
  %16 = ptrtoint ptr %data9.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx7.i.i, ptr %data9.i.i, align 4
  %arrayidx11.i.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 4
  %data13.i.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 14, i32 1
  %17 = ptrtoint ptr %data13.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx11.i.i, ptr %data13.i.i, align 4
  %arrayidx15.i.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 5
  %data17.i.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 15, i32 1
  %18 = ptrtoint ptr %data17.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx15.i.i, ptr %data17.i.i, align 4
  %arrayidx19.i.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 6
  %data21.i.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 16, i32 1
  %19 = ptrtoint ptr %data21.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %arrayidx19.i.i, ptr %data21.i.i, align 4
  %arrayidx23.i.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 7
  %data25.i.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 17, i32 1
  %20 = ptrtoint ptr %data25.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx23.i.i, ptr %data25.i.i, align 4
  %arrayidx27.i.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 8
  %data29.i.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 18, i32 1
  %21 = ptrtoint ptr %data29.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %arrayidx27.i.i, ptr %data29.i.i, align 4
  %arrayidx31.i.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 12
  %data33.i.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 19, i32 1
  %22 = ptrtoint ptr %data33.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx31.i.i, ptr %data33.i.i, align 4
  %arrayidx35.i.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 0, i32 13
  %data37.i.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 20, i32 1
  %23 = ptrtoint ptr %data37.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx35.i.i, ptr %data37.i.i, align 4
  %tcp_loose.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 1
  %data39.i.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 22, i32 1
  %24 = ptrtoint ptr %data39.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %tcp_loose.i.i, ptr %data39.i.i, align 4
  %tcp_be_liberal.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 2
  %data41.i.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 23, i32 1
  %25 = ptrtoint ptr %data41.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %tcp_be_liberal.i.i, ptr %data41.i.i, align 4
  %tcp_max_retrans.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 3
  %data43.i.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 25, i32 1
  %26 = ptrtoint ptr %data43.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %tcp_max_retrans.i.i, ptr %data43.i.i, align 4
  %tcp_ignore_invalid_rst.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 4
  %data45.i.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 24, i32 1
  %27 = ptrtoint ptr %data45.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %tcp_ignore_invalid_rst.i.i, ptr %data45.i.i, align 4
  %offload_timeout.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 1, i32 5
  %data47.i.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 21, i32 1
  %28 = ptrtoint ptr %data47.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %offload_timeout.i.i, ptr %data47.i.i, align 4
  %arrayidx.i97.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6, i32 0, i32 1
  %data.i98.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 31, i32 1
  %29 = ptrtoint ptr %data.i98.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx.i97.i, ptr %data.i98.i, align 4
  %arrayidx3.i99.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6, i32 0, i32 2
  %data5.i100.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 32, i32 1
  %30 = ptrtoint ptr %data5.i100.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx3.i99.i, ptr %data5.i100.i, align 4
  %arrayidx7.i101.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6, i32 0, i32 3
  %data9.i102.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 33, i32 1
  %31 = ptrtoint ptr %data9.i102.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %arrayidx7.i101.i, ptr %data9.i102.i, align 4
  %arrayidx11.i103.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6, i32 0, i32 4
  %data13.i104.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 34, i32 1
  %32 = ptrtoint ptr %data13.i104.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %arrayidx11.i103.i, ptr %data13.i104.i, align 4
  %arrayidx15.i105.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6, i32 0, i32 5
  %data17.i106.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 35, i32 1
  %33 = ptrtoint ptr %data17.i106.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %arrayidx15.i105.i, ptr %data17.i106.i, align 4
  %arrayidx19.i107.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6, i32 0, i32 6
  %data21.i108.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 36, i32 1
  %34 = ptrtoint ptr %data21.i108.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %arrayidx19.i107.i, ptr %data21.i108.i, align 4
  %arrayidx23.i109.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6, i32 0, i32 7
  %data25.i110.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 37, i32 1
  %35 = ptrtoint ptr %data25.i110.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %arrayidx23.i109.i, ptr %data25.i110.i, align 4
  %arrayidx27.i111.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6, i32 0, i32 8
  %data29.i112.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 38, i32 1
  %36 = ptrtoint ptr %data29.i112.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx27.i111.i, ptr %data29.i112.i, align 4
  %arrayidx31.i113.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 6, i32 0, i32 9
  %data33.i114.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 39, i32 1
  %37 = ptrtoint ptr %data33.i114.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %arrayidx31.i113.i, ptr %data33.i114.i, align 4
  %dccp.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5
  %arrayidx.i115.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 1
  %data.i116.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 40, i32 1
  %38 = ptrtoint ptr %data.i116.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %arrayidx.i115.i, ptr %data.i116.i, align 4
  %arrayidx3.i117.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 2
  %data5.i118.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 41, i32 1
  %39 = ptrtoint ptr %data5.i118.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %arrayidx3.i117.i, ptr %data5.i118.i, align 4
  %arrayidx7.i119.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 3
  %data9.i120.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 42, i32 1
  %40 = ptrtoint ptr %data9.i120.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %arrayidx7.i119.i, ptr %data9.i120.i, align 4
  %arrayidx11.i121.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 4
  %data13.i122.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 43, i32 1
  %41 = ptrtoint ptr %data13.i122.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %arrayidx11.i121.i, ptr %data13.i122.i, align 4
  %arrayidx15.i123.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 5
  %data17.i124.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 44, i32 1
  %42 = ptrtoint ptr %data17.i124.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %arrayidx15.i123.i, ptr %data17.i124.i, align 4
  %arrayidx19.i125.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 6
  %data21.i126.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 45, i32 1
  %43 = ptrtoint ptr %data21.i126.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %arrayidx19.i125.i, ptr %data21.i126.i, align 4
  %arrayidx23.i127.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 5, i32 1, i32 7
  %data25.i128.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 46, i32 1
  %44 = ptrtoint ptr %data25.i128.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %arrayidx23.i127.i, ptr %data25.i128.i, align 4
  %data27.i.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 47, i32 1
  %45 = ptrtoint ptr %data27.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dccp.i.i.i, ptr %data27.i.i, align 4
  %timeouts.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 7, i32 1
  %data.i129.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 48, i32 1
  %46 = ptrtoint ptr %data.i129.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %timeouts.i.i, ptr %data.i129.i, align 4
  %arrayidx3.i130.i = getelementptr %struct.net, ptr %net, i32 0, i32 40, i32 10, i32 7, i32 1, i32 1
  %data5.i131.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 49, i32 1
  %47 = ptrtoint ptr %data5.i131.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %arrayidx3.i130.i, ptr %data5.i131.i, align 4
  %cmp.i.not.i = icmp eq ptr %net, @init_net
  br i1 %cmp.i.not.i, label %if.end.i.if.end47.i_crit_edge, label %if.then41.i

if.end.i.if.end47.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47.i

if.then41.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %mode.i = getelementptr inbounds %struct.ctl_table, ptr %call2.i, i32 0, i32 3
  %48 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 292, ptr %mode.i, align 4
  %mode44.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 5, i32 3
  %49 = ptrtoint ptr %mode44.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 292, ptr %mode44.i, align 4
  %mode46.i = getelementptr %struct.ctl_table, ptr %call2.i, i32 2, i32 3
  %50 = ptrtoint ptr %mode46.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 292, ptr %mode46.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then41.i, %if.end.i.if.end47.i_crit_edge
  %call48.i = tail call ptr @register_net_sysctl(ptr noundef %net, ptr noundef nonnull @.str.10, ptr noundef nonnull %call2.i) #11
  %sysctl_header.i = getelementptr inbounds %struct.nf_conntrack_net, ptr %call.i, i32 0, i32 7
  %51 = ptrtoint ptr %sysctl_header.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call48.i, ptr %sysctl_header.i, align 4
  %tobool50.not.i = icmp eq ptr %call48.i, null
  br i1 %tobool50.not.i, label %out_unregister_netfilter.i, label %if.end

out_unregister_netfilter.i:                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %call2.i) #11
  br label %cleanup

if.end:                                           ; preds = %if.end47.i
  %proc_net.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %52 = ptrtoint ptr %proc_net.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %proc_net.i, align 4
  %call.i27 = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.62, i16 noundef zeroext 288, ptr noundef %53, ptr noundef nonnull @ct_seq_ops, i32 noundef 32, ptr noundef null) #11
  %tobool.not.i28 = icmp eq ptr %call.i27, null
  br i1 %tobool.not.i28, label %if.end.out_proc_crit_edge, label %if.end.i30

if.end.out_proc_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_proc

if.end.i30:                                       ; preds = %if.end
  %user_ns.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 11
  %54 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %user_ns.i, align 4
  %call1.i = tail call i32 @make_kuid(ptr noundef %55, i32 noundef 0) #11
  %56 = ptrtoint ptr %user_ns.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %user_ns.i, align 4
  %call4.i = tail call i32 @make_kgid(ptr noundef %57, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i)
  %cmp.i.not.i29 = icmp eq i32 %call1.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4.i)
  %cmp.i36.not.i = icmp eq i32 %call4.i, -1
  %or.cond.i = select i1 %cmp.i.not.i29, i1 true, i1 %cmp.i36.not.i
  br i1 %or.cond.i, label %if.end.i30.if.end13.i_crit_edge, label %if.then10.i

if.end.i30.if.end13.i_crit_edge:                  ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13.i

if.then10.i:                                      ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #13
  %.fca.0.insert25.i = insertvalue [1 x i32] poison, i32 %call1.i, 0
  %.fca.0.insert.i = insertvalue [1 x i32] poison, i32 %call4.i, 0
  tail call void @proc_set_user(ptr noundef nonnull %call.i27, [1 x i32] %.fca.0.insert25.i, [1 x i32] %.fca.0.insert.i) #11
  br label %if.end13.i

if.end13.i:                                       ; preds = %if.then10.i, %if.end.i30.if.end13.i_crit_edge
  %proc_net_stat.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 18
  %58 = ptrtoint ptr %proc_net_stat.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %proc_net_stat.i, align 8
  %call14.i = tail call ptr @proc_create_net_data(ptr noundef nonnull @.str.62, i16 noundef zeroext 292, ptr noundef %59, ptr noundef nonnull @ct_cpu_seq_ops, i32 noundef 8, ptr noundef null) #11
  %tobool15.not.i = icmp eq ptr %call14.i, null
  br i1 %tobool15.not.i, label %if.end13.i.out_proc.sink.split_crit_edge, label %if.end4

if.end13.i.out_proc.sink.split_crit_edge:         ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_proc.sink.split

if.end4:                                          ; preds = %if.end13.i
  %call5 = tail call i32 @nf_conntrack_init_net(ptr noundef %net) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.out_init_net_crit_edge, label %if.end8

if.end4.out_init_net_crit_edge:                   ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_init_net

if.end8:                                          ; preds = %if.end4
  %60 = load i8, ptr @enable_hooks, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not = icmp eq i8 %60, 0
  br i1 %tobool.not, label %if.end8.cleanup_crit_edge, label %if.then9

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then9:                                         ; preds = %if.end8
  %call10 = tail call i32 @nf_ct_netns_get(ptr noundef %net, i8 noundef zeroext 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %out_hooks, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

out_hooks:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nf_conntrack_cleanup_net(ptr noundef %net) #11
  br label %out_init_net

out_init_net:                                     ; preds = %out_hooks, %if.end4.out_init_net_crit_edge
  %ret.0 = phi i32 [ %call5, %if.end4.out_init_net_crit_edge ], [ %call10, %out_hooks ]
  %61 = ptrtoint ptr %proc_net_stat.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %proc_net_stat.i, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.62, ptr noundef %62) #11
  br label %out_proc.sink.split

out_proc.sink.split:                              ; preds = %out_init_net, %if.end13.i.out_proc.sink.split_crit_edge
  %ret.1.ph = phi i32 [ %ret.0, %out_init_net ], [ -12, %if.end13.i.out_proc.sink.split_crit_edge ]
  %63 = ptrtoint ptr %proc_net.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %proc_net.i, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.62, ptr noundef %64) #11
  br label %out_proc

out_proc:                                         ; preds = %out_proc.sink.split, %if.end.out_proc_crit_edge
  %ret.1 = phi i32 [ -12, %if.end.out_proc_crit_edge ], [ %ret.1.ph, %out_proc.sink.split ]
  %call.i34 = tail call fastcc ptr @nf_ct_pernet(ptr noundef %net) #11
  %sysctl_header.i35 = getelementptr inbounds %struct.nf_conntrack_net, ptr %call.i34, i32 0, i32 7
  %65 = ptrtoint ptr %sysctl_header.i35 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sysctl_header.i35, align 4
  %ctl_table_arg.i = getelementptr inbounds %struct.ctl_table_header, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %ctl_table_arg.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ctl_table_arg.i, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %66) #11
  tail call void @kfree(ptr noundef %68) #11
  br label %cleanup

cleanup:                                          ; preds = %out_proc, %if.then9.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %out_unregister_netfilter.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %out_proc ], [ 0, %if.then9.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ], [ -12, %out_unregister_netfilter.i ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nf_conntrack_pernet_exit(ptr noundef %net_exit_list) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %net_exit_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn10 = load ptr, ptr %net_exit_list, align 4
  %cmp.not11 = icmp eq ptr %.pn10, %net_exit_list
  br i1 %cmp.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %nf_conntrack_fini_net.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn12 = phi ptr [ %.pn, %nf_conntrack_fini_net.exit.for.body_crit_edge ], [ %.pn10, %entry.for.body_crit_edge ]
  %net.0 = getelementptr i8, ptr %.pn12, i32 -116
  %1 = load i8, ptr @enable_hooks, align 1, !range !242
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %for.body.nf_conntrack_fini_net.exit_crit_edge, label %if.then.i

for.body.nf_conntrack_fini_net.exit_crit_edge:    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %nf_conntrack_fini_net.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @nf_ct_netns_put(ptr noundef %net.0, i8 noundef zeroext 1) #11
  br label %nf_conntrack_fini_net.exit

nf_conntrack_fini_net.exit:                       ; preds = %if.then.i, %for.body.nf_conntrack_fini_net.exit_crit_edge
  %proc_net_stat.i.i = getelementptr i8, ptr %.pn12, i32 180
  %2 = ptrtoint ptr %proc_net_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_net_stat.i.i, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.62, ptr noundef %3) #11
  %proc_net.i.i = getelementptr i8, ptr %.pn12, i32 176
  %4 = ptrtoint ptr %proc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %proc_net.i.i, align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.62, ptr noundef %5) #11
  %call.i.i = tail call fastcc ptr @nf_ct_pernet(ptr noundef %net.0) #11
  %sysctl_header.i.i = getelementptr inbounds %struct.nf_conntrack_net, ptr %call.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %sysctl_header.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sysctl_header.i.i, align 4
  %ctl_table_arg.i.i = getelementptr inbounds %struct.ctl_table_header, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %ctl_table_arg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctl_table_arg.i.i, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %7) #11
  tail call void @kfree(ptr noundef %9) #11
  %10 = ptrtoint ptr %.pn12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn12, align 4
  %cmp.not = icmp eq ptr %.pn, %net_exit_list
  br i1 %cmp.not, label %nf_conntrack_fini_net.exit.for.end_crit_edge, label %nf_conntrack_fini_net.exit.for.body_crit_edge

nf_conntrack_fini_net.exit.for.body_crit_edge:    ; preds = %nf_conntrack_fini_net.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

nf_conntrack_fini_net.exit.for.end_crit_edge:     ; preds = %nf_conntrack_fini_net.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %nf_conntrack_fini_net.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @nf_conntrack_cleanup_net_list(ptr noundef %net_exit_list) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_init_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_netns_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_cleanup_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_conntrack_hash_sysctl(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_conntrack_htable_size to i32))
  %0 = load i32, ptr @nf_conntrack_htable_size, align 4
  store i32 %0, ptr @nf_conntrack_htable_size_user, align 4
  %call = tail call i32 @proc_dointvec(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %1 = load i32, ptr @nf_conntrack_htable_size_user, align 4
  %call1 = tail call i32 @nf_conntrack_hash_resize(i32 noundef %1) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_conntrack_htable_size to i32))
  %2 = load i32, ptr @nf_conntrack_htable_size, align 4
  store i32 %2, ptr @nf_conntrack_htable_size_user, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dou8vec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_jiffies(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_hooks_lwtunnel_sysctl_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_hash_resize(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_net_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kuid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @make_kgid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_set_user(ptr noundef, [1 x i32], [1 x i32]) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ct_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %call.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #11
  %time_now = getelementptr inbounds %struct.ct_iter_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %time_now to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %call.i.i, ptr %time_now, align 8
  %3 = tail call i32 @llvm.read_register.i32(metadata !230) #11
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !240
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %hash = getelementptr inbounds %struct.ct_iter_state, ptr %1, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %while.end.i.do.body.i_crit_edge, %rcu_read_lock.exit
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !243
  %and.i.i.i = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  %8 = tail call ptr @llvm.returnaddress(i32 0) #11
  %9 = ptrtoint ptr %8 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.seqcount_spinlock, ptr @nf_conntrack_generation, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %9) #11
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.seqcount_spinlock, ptr @nf_conntrack_generation, i32 0, i32 0, i32 1), i32 noundef %9) #11
  tail call void @trace_hardirqs_on() #11
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %10 = tail call ptr @llvm.returnaddress(i32 0) #11
  %11 = ptrtoint ptr %10 to i32
  tail call void @lock_acquire(ptr noundef getelementptr inbounds (%struct.seqcount_spinlock, ptr @nf_conntrack_generation, i32 0, i32 0, i32 1), i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %11) #11
  tail call void @lock_release(ptr noundef getelementptr inbounds (%struct.seqcount_spinlock, ptr @nf_conntrack_generation, i32 0, i32 0, i32 1), i32 noundef %11) #11
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !244
  %and.i.i.i.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !245

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #11, !srcloc !246
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_conntrack_generation to i32))
  %13 = load volatile i32, ptr @nf_conntrack_generation, align 4
  %and24.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool.not25.i = icmp eq i32 %and24.i, 0
  br i1 %tobool.not25.i, label %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !247
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #11, !srcloc !248
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_conntrack_generation to i32))
  %14 = load volatile i32, ptr @nf_conntrack_generation, align 4
  %and.i = and i32 %14, 1
  %tobool.not.i5 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i5, label %do.end.i.while.end.i_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.end.i.while.end.i_crit_edge:                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end.i

while.end.i:                                      ; preds = %do.end.i.while.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge
  %.lcssa.i = phi i32 [ %13, %seqcount_lockdep_reader_access.exit.i.while.end.i_crit_edge ], [ %14, %do.end.i.while.end.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !249
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_conntrack_htable_size to i32))
  %15 = load i32, ptr @nf_conntrack_htable_size, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_conntrack_hash to i32))
  %16 = load ptr, ptr @nf_conntrack_hash, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !250
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_conntrack_generation to i32))
  %17 = load volatile i32, ptr @nf_conntrack_generation, align 4
  %cmp.i.i.not.i = icmp eq i32 %17, %.lcssa.i
  br i1 %cmp.i.i.not.i, label %nf_conntrack_get_ht.exit, label %while.end.i.do.body.i_crit_edge

while.end.i.do.body.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

nf_conntrack_get_ht.exit:                         ; preds = %while.end.i
  %htable_size = getelementptr inbounds %struct.ct_iter_state, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %hash to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %hash, align 4
  %19 = ptrtoint ptr %htable_size to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %htable_size, align 4
  %20 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %pos, align 8
  %22 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %private, align 8
  %bucket.i.i = getelementptr inbounds %struct.ct_iter_state, ptr %23, i32 0, i32 3
  %htable_size.i.i = getelementptr inbounds %struct.ct_iter_state, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %bucket.i.i, align 8
  %25 = ptrtoint ptr %htable_size.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %htable_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp24.not.i.i = icmp eq i32 %26, 0
  br i1 %cmp24.not.i.i, label %nf_conntrack_get_ht.exit.ct_get_idx.exit_crit_edge, label %for.body.lr.ph.i.i

nf_conntrack_get_ht.exit.ct_get_idx.exit_crit_edge: ; preds = %nf_conntrack_get_ht.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ct_get_idx.exit

for.body.lr.ph.i.i:                               ; preds = %nf_conntrack_get_ht.exit
  %hash.i.i = getelementptr inbounds %struct.ct_iter_state, ptr %23, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %storemerge25.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %27 = ptrtoint ptr %hash.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hash.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.hlist_nulls_head, ptr %28, i32 %storemerge25.i.i
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %arrayidx.i.i, align 4
  %call.i.i6 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6)
  %tobool.not.i.i7 = icmp eq i32 %call.i.i6, 0
  br i1 %tobool.not.i.i7, label %land.lhs.true.i.i, label %for.body.i.i.do.end9.i.i_crit_edge

for.body.i.i.do.end9.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %call4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.do.end9.i.i_crit_edge, label %land.lhs.true6.i.i

land.lhs.true.i.i.do.end9.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i

land.lhs.true6.i.i:                               ; preds = %land.lhs.true.i.i
  %.b23.i.i = load i1, ptr @ct_get_first.__warned, align 1
  br i1 %.b23.i.i, label %land.lhs.true6.i.i.do.end9.i.i_crit_edge, label %if.then.i.i8

land.lhs.true6.i.i.do.end9.i.i_crit_edge:         ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end9.i.i

if.then.i.i8:                                     ; preds = %land.lhs.true6.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ct_get_first.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 117, ptr noundef nonnull @.str.6) #11
  br label %do.end9.i.i

do.end9.i.i:                                      ; preds = %if.then.i.i8, %land.lhs.true6.i.i.do.end9.i.i_crit_edge, %land.lhs.true.i.i.do.end9.i.i_crit_edge, %for.body.i.i.do.end9.i.i_crit_edge
  %31 = ptrtoint ptr %30 to i32
  %and.i.i.i9 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i9)
  %tobool12.not.i.i = icmp eq i32 %and.i.i.i9, 0
  br i1 %tobool12.not.i.i, label %ct_get_first.exit.i, label %for.inc.i.i

for.inc.i.i:                                      ; preds = %do.end9.i.i
  %32 = ptrtoint ptr %bucket.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %bucket.i.i, align 8
  %inc.i.i = add i32 %33, 1
  store i32 %inc.i.i, ptr %bucket.i.i, align 8
  %34 = ptrtoint ptr %htable_size.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %htable_size.i.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %35
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.ct_get_idx.exit_crit_edge

for.inc.i.i.ct_get_idx.exit_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ct_get_idx.exit

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

ct_get_first.exit.i:                              ; preds = %do.end9.i.i
  %tobool.not.i10 = icmp eq ptr %30, null
  br i1 %tobool.not.i10, label %ct_get_first.exit.i.ct_get_idx.exit_crit_edge, label %while.cond.preheader.i

ct_get_first.exit.i.ct_get_idx.exit_crit_edge:    ; preds = %ct_get_first.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ct_get_idx.exit

while.cond.preheader.i:                           ; preds = %ct_get_first.exit.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %21)
  %tobool1.not22.i = icmp eq i64 %21, 0
  br i1 %tobool1.not22.i, label %while.cond.preheader.i.ct_get_idx.exit_crit_edge, label %while.cond.preheader.i.land.rhs.i_crit_edge

while.cond.preheader.i.land.rhs.i_crit_edge:      ; preds = %while.cond.preheader.i
  br label %land.rhs.i

while.cond.preheader.i.ct_get_idx.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ct_get_idx.exit

while.cond.i:                                     ; preds = %land.rhs.i
  %dec.i = add i64 %pos.addr.023.i, -1
  %tobool1.not.i = icmp eq i64 %dec.i, 0
  br i1 %tobool1.not.i, label %while.cond.i.ct_get_idx.exit_crit_edge, label %while.cond.i.land.rhs.i_crit_edge

while.cond.i.land.rhs.i_crit_edge:                ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.rhs.i

while.cond.i.ct_get_idx.exit_crit_edge:           ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ct_get_idx.exit

land.rhs.i:                                       ; preds = %while.cond.i.land.rhs.i_crit_edge, %while.cond.preheader.i.land.rhs.i_crit_edge
  %head.024.i = phi ptr [ %call2.i, %while.cond.i.land.rhs.i_crit_edge ], [ %30, %while.cond.preheader.i.land.rhs.i_crit_edge ]
  %pos.addr.023.i = phi i64 [ %dec.i, %while.cond.i.land.rhs.i_crit_edge ], [ %21, %while.cond.preheader.i.land.rhs.i_crit_edge ]
  %call2.i = tail call fastcc ptr @ct_get_next(ptr noundef %seq, ptr noundef nonnull %head.024.i) #11
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %land.rhs.i.ct_get_idx.exit_crit_edge, label %while.cond.i

land.rhs.i.ct_get_idx.exit_crit_edge:             ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ct_get_idx.exit

ct_get_idx.exit:                                  ; preds = %land.rhs.i.ct_get_idx.exit_crit_edge, %while.cond.i.ct_get_idx.exit_crit_edge, %while.cond.preheader.i.ct_get_idx.exit_crit_edge, %ct_get_first.exit.i.ct_get_idx.exit_crit_edge, %for.inc.i.i.ct_get_idx.exit_crit_edge, %nf_conntrack_get_ht.exit.ct_get_idx.exit_crit_edge
  %36 = phi ptr [ null, %nf_conntrack_get_ht.exit.ct_get_idx.exit_crit_edge ], [ null, %ct_get_first.exit.i.ct_get_idx.exit_crit_edge ], [ %30, %while.cond.preheader.i.ct_get_idx.exit_crit_edge ], [ %call2.i, %while.cond.i.ct_get_idx.exit_crit_edge ], [ null, %land.rhs.i.ct_get_idx.exit_crit_edge ], [ null, %for.inc.i.i.ct_get_idx.exit_crit_edge ]
  ret ptr %36
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ct_seq_stop(ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !241
  %0 = tail call i32 @llvm.read_register.i32(metadata !230) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ct_seq_next(ptr nocapture noundef readonly %s, ptr noundef %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %call = tail call fastcc ptr @ct_get_next(ptr noundef %s, ptr noundef %v)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_seq_show(ptr noundef %s, ptr noundef %v) #0 align 64 {
entry:
  %remainder.i.i = alloca i32, align 4
  %len.i = alloca i32, align 4
  %secctx.i = alloca ptr, align 4
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dir.i = getelementptr inbounds %struct.nf_conntrack_tuple_hash, ptr %v, i32 0, i32 1, i32 1, i32 3
  %0 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dir.i, align 1
  %conv.i = zext i8 %1 to i32
  %.neg.i = mul nsw i32 %conv.i, -48
  %idx.neg.i = add nsw i32 %.neg.i, -56
  %add.ptr.i = getelementptr i8, ptr %v, i32 %idx.neg.i
  %private.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %2 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !245

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.63, i32 noundef 305, i32 noundef 9, ptr noundef null) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #11
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 4) #11
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %add.ptr.i, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.end
  %8 = phi i32 [ %7, %if.end ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %8, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.i, i32 noundef 4) #11
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #11
  %10 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %add.ptr.i, i32 1, i32 3, i32 1) #11
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %12 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %add.ptr.i, ptr %add.ptr.i, i32 %11, i32 %add.i.i.i, ptr elementtype(i32) %add.ptr.i) #11, !srcloc !251
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %12, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %11
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !252

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %13 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %14, 1
  %15 = or i32 %add5.i.i.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %.not.i.i.i = icmp sgt i32 %15, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !252

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef %add.ptr.i, i32 noundef 0) #11
  %16 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %17 = phi i32 [ %14, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool12.i.i.i.not = icmp eq i32 %17, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #11
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.cleanup_crit_edge, label %if.end32, !prof !245

refcount_inc_not_zero.exit.cleanup_crit_edge:     ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end32:                                         ; preds = %refcount_inc_not_zero.exit
  %timeout.i.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 2
  %18 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %timeout.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %19, %20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 1
  br i1 %cmp.i.i, label %land.lhs.true.i, label %if.end32.if.end36_crit_edge

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

land.lhs.true.i:                                  ; preds = %if.end32
  %status.i.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 5
  %21 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %status.i.i, align 4
  %23 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end36_crit_edge, label %nf_ct_should_gc.exit

land.lhs.true.i.if.end36_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

nf_ct_should_gc.exit:                             ; preds = %land.lhs.true.i
  %24 = ptrtoint ptr %status.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %status.i.i, align 4
  %26 = and i32 %25, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool3.not.i = icmp eq i32 %26, 0
  br i1 %tobool3.not.i, label %if.then34, label %nf_ct_should_gc.exit.if.end36_crit_edge

nf_ct_should_gc.exit.if.end36_crit_edge:          ; preds = %nf_ct_should_gc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end36

if.then34:                                        ; preds = %nf_ct_should_gc.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = call zeroext i1 @nf_ct_delete(ptr noundef %add.ptr.i, i32 noundef 0, i32 noundef 0) #11
  br label %release

if.end36:                                         ; preds = %nf_ct_should_gc.exit.if.end36_crit_edge, %land.lhs.true.i.if.end36_crit_edge, %if.end32.if.end36_crit_edge
  %27 = ptrtoint ptr %dir.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dir.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool37.not = icmp eq i8 %28, 0
  br i1 %tobool37.not, label %if.end39, label %if.end36.release_crit_edge

if.end36.release_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %release

if.end39:                                         ; preds = %if.end36
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 7
  %29 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ct_net.i, align 4
  %cmp.i.not = icmp eq ptr %30, %5
  br i1 %cmp.i.not, label %if.end44, label %if.end39.release_crit_edge

if.end39.release_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  br label %release

if.end44:                                         ; preds = %if.end39
  %protonum.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %31 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %protonum.i, align 2
  %call46 = call ptr @nf_ct_l4proto_find(i8 noundef zeroext %32) #11
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %33 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %l3num.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %34)
  %switch.selectcmp.i = icmp eq i16 %34, 10
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.74, ptr @.str.75
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %34)
  %switch.selectcmp2.i = icmp eq i16 %34, 2
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @.str.73, ptr %switch.select.i
  %conv50 = zext i16 %34 to i32
  %35 = ptrtoint ptr %call46 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %call46, align 4
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %36, label %sw.epilog.i [
    i8 1, label %if.end44.l4proto_name.exit_crit_edge
    i8 6, label %sw.bb1.i
    i8 17, label %sw.bb2.i
    i8 33, label %sw.bb3.i
    i8 47, label %sw.bb4.i
    i8 -124, label %sw.bb5.i
    i8 -120, label %sw.bb6.i
    i8 58, label %sw.bb7.i
  ]

if.end44.l4proto_name.exit_crit_edge:             ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %l4proto_name.exit

sw.bb1.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %l4proto_name.exit

sw.bb2.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %l4proto_name.exit

sw.bb3.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %l4proto_name.exit

sw.bb4.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %l4proto_name.exit

sw.bb5.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %l4proto_name.exit

sw.bb6.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %l4proto_name.exit

sw.bb7.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %l4proto_name.exit

sw.epilog.i:                                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %l4proto_name.exit

l4proto_name.exit:                                ; preds = %sw.epilog.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end44.l4proto_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.75, %sw.epilog.i ], [ @.str.83, %sw.bb7.i ], [ @.str.82, %sw.bb6.i ], [ @.str.81, %sw.bb5.i ], [ @.str.80, %sw.bb4.i ], [ @.str.79, %sw.bb3.i ], [ @.str.78, %sw.bb2.i ], [ @.str.77, %sw.bb1.i ], [ @.str.76, %if.end44.l4proto_name.exit_crit_edge ]
  %38 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %protonum.i, align 2
  %conv55 = zext i8 %39 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.65, ptr noundef nonnull %switch.select3.i, i32 noundef %conv50, ptr noundef nonnull %retval.0.i, i32 noundef %conv55) #11
  %status = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 5
  %40 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %status, align 4
  %42 = and i32 %41, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool57.not = icmp eq i32 %42, 0
  br i1 %tobool57.not, label %if.then58, label %l4proto_name.exit.if.end60_crit_edge

l4proto_name.exit.if.end60_crit_edge:             ; preds = %l4proto_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then58:                                        ; preds = %l4proto_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %timeout.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %45 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %44, %45
  %46 = call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #11
  %div = udiv i32 %46, 100
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.66, i32 noundef %div) #11
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %l4proto_name.exit.if.end60_crit_edge
  %print_conntrack = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call46, i32 0, i32 11
  %47 = ptrtoint ptr %print_conntrack to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %print_conntrack, align 4
  %tobool61.not = icmp eq ptr %48, null
  br i1 %tobool61.not, label %if.end60.if.end64_crit_edge, label %if.then62

if.end60.if.end64_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.then62:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  call void %48(ptr noundef %s, ptr noundef %add.ptr.i) #11
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %if.end60.if.end64_crit_edge
  %tuple65 = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 4, i32 0, i32 1
  call void @print_tuple(ptr noundef %s, ptr noundef %tuple65, ptr noundef %call46)
  %zone.i.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 3
  %dir1.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 3, i32 2
  %49 = ptrtoint ptr %dir1.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %dir1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %50)
  %cmp.not.i = icmp eq i8 %50, 1
  br i1 %cmp.not.i, label %cleanup.sink.split.i, label %if.end64.ct_show_zone.exit_crit_edge

if.end64.ct_show_zone.exit_crit_edge:             ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %ct_show_zone.exit

cleanup.sink.split.i:                             ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %51 = ptrtoint ptr %zone.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %zone.i.i, align 2
  %conv5.i = zext i16 %52 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.85, i32 noundef %conv5.i) #11
  br label %ct_show_zone.exit

ct_show_zone.exit:                                ; preds = %cleanup.sink.split.i, %if.end64.ct_show_zone.exit_crit_edge
  %count.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 3
  %53 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %count.i, align 4
  %size.i = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 1
  %55 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp.i181 = icmp eq i32 %54, %56
  br i1 %cmp.i181, label %ct_show_zone.exit.release_crit_edge, label %if.end68

ct_show_zone.exit.release_crit_edge:              ; preds = %ct_show_zone.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %release

if.end68:                                         ; preds = %ct_show_zone.exit
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 13
  %57 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %58, null
  br i1 %tobool.not.i.i.i.i, label %if.end68.seq_print_acct.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.end68.seq_print_acct.exit_crit_edge:           ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #13
  br label %seq_print_acct.exit

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.end68
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.i.i.not.i.i.i = icmp eq i8 %60, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.seq_print_acct.exit_crit_edge, label %nf_conn_acct_find.exit.i

nf_ct_ext_exist.exit.i.i.i.seq_print_acct.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seq_print_acct.exit

nf_conn_acct_find.exit.i:                         ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %60 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %58, i32 %conv.i.i.i
  %tobool.not.i182 = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool.not.i182, label %nf_conn_acct_find.exit.i.seq_print_acct.exit_crit_edge, label %if.end.i183

nf_conn_acct_find.exit.i.seq_print_acct.exit_crit_edge: ; preds = %nf_conn_acct_find.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %seq_print_acct.exit

if.end.i183:                                      ; preds = %nf_conn_acct_find.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %add.ptr.i.i.i, i32 noundef 8) #11
  %call.i.i = call i64 @generic_atomic64_read(ptr noundef nonnull %add.ptr.i.i.i) #11
  %bytes.i = getelementptr %struct.nf_conn_counter, ptr %add.ptr.i.i.i, i32 0, i32 1
  %call.i.i1.i = call zeroext i1 @__kasan_check_read(ptr noundef %bytes.i, i32 noundef 8) #11
  %call.i2.i = call i64 @generic_atomic64_read(ptr noundef %bytes.i) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.87, i64 noundef %call.i.i, i64 noundef %call.i2.i) #11
  br label %seq_print_acct.exit

seq_print_acct.exit:                              ; preds = %if.end.i183, %nf_conn_acct_find.exit.i.seq_print_acct.exit_crit_edge, %nf_ct_ext_exist.exit.i.i.i.seq_print_acct.exit_crit_edge, %if.end68.seq_print_acct.exit_crit_edge
  %61 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %status, align 4
  %63 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool75.not = icmp eq i32 %63, 0
  br i1 %tobool75.not, label %if.then76, label %seq_print_acct.exit.if.end77_crit_edge

seq_print_acct.exit.if.end77_crit_edge:           ; preds = %seq_print_acct.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77

if.then76:                                        ; preds = %seq_print_acct.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull @.str.67) #11
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %seq_print_acct.exit.if.end77_crit_edge
  %tuple80 = getelementptr %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 4, i32 1, i32 1
  call void @print_tuple(ptr noundef %s, ptr noundef %tuple80, ptr noundef %call46)
  %64 = ptrtoint ptr %dir1.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %dir1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %65)
  %cmp.not.i187 = icmp eq i8 %65, 2
  br i1 %cmp.not.i187, label %cleanup.sink.split.i193, label %if.end77.ct_show_zone.exit194_crit_edge

if.end77.ct_show_zone.exit194_crit_edge:          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  br label %ct_show_zone.exit194

cleanup.sink.split.i193:                          ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %zone.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %zone.i.i, align 2
  %conv5.i192 = zext i16 %67 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.86, i32 noundef %conv5.i192) #11
  br label %ct_show_zone.exit194

ct_show_zone.exit194:                             ; preds = %cleanup.sink.split.i193, %if.end77.ct_show_zone.exit194_crit_edge
  %68 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i196 = icmp eq ptr %69, null
  br i1 %tobool.not.i.i.i.i196, label %ct_show_zone.exit194.seq_print_acct.exit210_crit_edge, label %nf_ct_ext_exist.exit.i.i.i199

ct_show_zone.exit194.seq_print_acct.exit210_crit_edge: ; preds = %ct_show_zone.exit194
  call void @__sanitizer_cov_trace_pc() #13
  br label %seq_print_acct.exit210

nf_ct_ext_exist.exit.i.i.i199:                    ; preds = %ct_show_zone.exit194
  %arrayidx.i.i.i.i.i197 = getelementptr [10 x i8], ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %arrayidx.i.i.i.i.i197 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx.i.i.i.i.i197, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.i.i.not.i.i.i198 = icmp eq i8 %71, 0
  br i1 %tobool.i.i.not.i.i.i198, label %nf_ct_ext_exist.exit.i.i.i199.seq_print_acct.exit210_crit_edge, label %nf_conn_acct_find.exit.i203

nf_ct_ext_exist.exit.i.i.i199.seq_print_acct.exit210_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i199
  call void @__sanitizer_cov_trace_pc() #13
  br label %seq_print_acct.exit210

nf_conn_acct_find.exit.i203:                      ; preds = %nf_ct_ext_exist.exit.i.i.i199
  %conv.i.i.i200 = zext i8 %71 to i32
  %add.ptr.i.i.i201 = getelementptr i8, ptr %69, i32 %conv.i.i.i200
  %tobool.not.i202 = icmp eq ptr %add.ptr.i.i.i201, null
  br i1 %tobool.not.i202, label %nf_conn_acct_find.exit.i203.seq_print_acct.exit210_crit_edge, label %if.end.i209

nf_conn_acct_find.exit.i203.seq_print_acct.exit210_crit_edge: ; preds = %nf_conn_acct_find.exit.i203
  call void @__sanitizer_cov_trace_pc() #13
  br label %seq_print_acct.exit210

if.end.i209:                                      ; preds = %nf_conn_acct_find.exit.i203
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.nf_conn_counter, ptr %add.ptr.i.i.i201, i32 1
  %call.i.i.i204 = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i, i32 noundef 8) #11
  %call.i.i205 = call i64 @generic_atomic64_read(ptr noundef %arrayidx.i) #11
  %bytes.i206 = getelementptr %struct.nf_conn_counter, ptr %add.ptr.i.i.i201, i32 1, i32 1
  %call.i.i1.i207 = call zeroext i1 @__kasan_check_read(ptr noundef %bytes.i206, i32 noundef 8) #11
  %call.i2.i208 = call i64 @generic_atomic64_read(ptr noundef %bytes.i206) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.87, i64 noundef %call.i.i205, i64 noundef %call.i2.i208) #11
  br label %seq_print_acct.exit210

seq_print_acct.exit210:                           ; preds = %if.end.i209, %nf_conn_acct_find.exit.i203.seq_print_acct.exit210_crit_edge, %nf_ct_ext_exist.exit.i.i.i199.seq_print_acct.exit210_crit_edge, %ct_show_zone.exit194.seq_print_acct.exit210_crit_edge
  %72 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %status, align 4
  %74 = and i32 %73, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool87.not = icmp eq i32 %74, 0
  br i1 %tobool87.not, label %if.else, label %seq_print_acct.exit210.if.end100.sink.split_crit_edge

seq_print_acct.exit210.if.end100.sink.split_crit_edge: ; preds = %seq_print_acct.exit210
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100.sink.split

if.else:                                          ; preds = %seq_print_acct.exit210
  %75 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %status, align 4
  %77 = and i32 %76, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool91.not = icmp eq i32 %77, 0
  br i1 %tobool91.not, label %if.else93, label %if.else.if.end100.sink.split_crit_edge

if.else.if.end100.sink.split_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100.sink.split

if.else93:                                        ; preds = %if.else
  %78 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %status, align 4
  %80 = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool96.not = icmp eq i32 %80, 0
  br i1 %tobool96.not, label %if.else93.if.end100_crit_edge, label %if.else93.if.end100.sink.split_crit_edge

if.else93.if.end100.sink.split_crit_edge:         ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100.sink.split

if.else93.if.end100_crit_edge:                    ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end100

if.end100.sink.split:                             ; preds = %if.else93.if.end100.sink.split_crit_edge, %if.else.if.end100.sink.split_crit_edge, %seq_print_acct.exit210.if.end100.sink.split_crit_edge
  %.str.69.sink = phi ptr [ @.str.68, %seq_print_acct.exit210.if.end100.sink.split_crit_edge ], [ @.str.69, %if.else.if.end100.sink.split_crit_edge ], [ @.str.70, %if.else93.if.end100.sink.split_crit_edge ]
  call void @seq_puts(ptr noundef %s, ptr noundef nonnull %.str.69.sink) #11
  br label %if.end100

if.end100:                                        ; preds = %if.end100.sink.split, %if.else93.if.end100_crit_edge
  %81 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %count.i, align 4
  %83 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp.i213 = icmp eq i32 %82, %84
  br i1 %cmp.i213, label %if.end100.release_crit_edge, label %if.end103

if.end100.release_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #13
  br label %release

if.end103:                                        ; preds = %if.end100
  %mark = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 11
  %85 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mark, align 8
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.71, i32 noundef %86) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len.i) #11
  %87 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 -1, ptr %len.i, align 4, !annotation !253
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %secctx.i) #11
  %88 = ptrtoint ptr %secctx.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr inttoptr (i32 -1 to ptr), ptr %secctx.i, align 4, !annotation !253
  %secmark.i = getelementptr inbounds %struct.nf_conn, ptr %add.ptr.i, i32 0, i32 12
  %89 = ptrtoint ptr %secmark.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %secmark.i, align 4
  %call.i214 = call i32 @security_secid_to_secctx(i32 noundef %90, ptr noundef nonnull %secctx.i, ptr noundef nonnull %len.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %tobool.not.i215 = icmp eq i32 %call.i214, 0
  br i1 %tobool.not.i215, label %if.end.i216, label %if.end103.ct_show_secctx.exit_crit_edge

if.end103.ct_show_secctx.exit_crit_edge:          ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  br label %ct_show_secctx.exit

if.end.i216:                                      ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %secctx.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %secctx.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.88, ptr noundef %92) #11
  %93 = ptrtoint ptr %secctx.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %secctx.i, align 4
  %95 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len.i, align 4
  call void @security_release_secctx(ptr noundef %94, i32 noundef %96) #11
  br label %ct_show_secctx.exit

ct_show_secctx.exit:                              ; preds = %if.end.i216, %if.end103.ct_show_secctx.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %secctx.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len.i) #11
  %97 = ptrtoint ptr %dir1.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %dir1.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %98)
  %cmp.not.i220 = icmp eq i8 %98, 3
  br i1 %cmp.not.i220, label %cleanup.sink.split.i226, label %ct_show_secctx.exit.ct_show_zone.exit227_crit_edge

ct_show_secctx.exit.ct_show_zone.exit227_crit_edge: ; preds = %ct_show_secctx.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %ct_show_zone.exit227

cleanup.sink.split.i226:                          ; preds = %ct_show_secctx.exit
  call void @__sanitizer_cov_trace_pc() #13
  %99 = ptrtoint ptr %zone.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %zone.i.i, align 2
  %conv5.i225 = zext i16 %100 to i32
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.84, i32 noundef %conv5.i225) #11
  br label %ct_show_zone.exit227

ct_show_zone.exit227:                             ; preds = %cleanup.sink.split.i226, %ct_show_secctx.exit.ct_show_zone.exit227_crit_edge
  %101 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %private.i, align 8
  %103 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i230 = icmp eq ptr %104, null
  br i1 %tobool.not.i.i.i.i230, label %ct_show_zone.exit227.ct_show_delta_time.exit_crit_edge, label %nf_ct_ext_exist.exit.i.i.i233

ct_show_zone.exit227.ct_show_delta_time.exit_crit_edge: ; preds = %ct_show_zone.exit227
  call void @__sanitizer_cov_trace_pc() #13
  br label %ct_show_delta_time.exit

nf_ct_ext_exist.exit.i.i.i233:                    ; preds = %ct_show_zone.exit227
  %arrayidx.i.i.i.i.i231 = getelementptr [10 x i8], ptr %104, i32 0, i32 5
  %105 = ptrtoint ptr %arrayidx.i.i.i.i.i231 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx.i.i.i.i.i231, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool.i.i.not.i.i.i232 = icmp eq i8 %106, 0
  br i1 %tobool.i.i.not.i.i.i232, label %nf_ct_ext_exist.exit.i.i.i233.ct_show_delta_time.exit_crit_edge, label %nf_conn_tstamp_find.exit.i

nf_ct_ext_exist.exit.i.i.i233.ct_show_delta_time.exit_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i233
  call void @__sanitizer_cov_trace_pc() #13
  br label %ct_show_delta_time.exit

nf_conn_tstamp_find.exit.i:                       ; preds = %nf_ct_ext_exist.exit.i.i.i233
  %conv.i.i.i234 = zext i8 %106 to i32
  %add.ptr.i.i.i235 = getelementptr i8, ptr %104, i32 %conv.i.i.i234
  %tobool.not.i236 = icmp eq ptr %add.ptr.i.i.i235, null
  br i1 %tobool.not.i236, label %nf_conn_tstamp_find.exit.i.ct_show_delta_time.exit_crit_edge, label %if.then.i

nf_conn_tstamp_find.exit.i.ct_show_delta_time.exit_crit_edge: ; preds = %nf_conn_tstamp_find.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ct_show_delta_time.exit

if.then.i:                                        ; preds = %nf_conn_tstamp_find.exit.i
  %time_now.i = getelementptr inbounds %struct.ct_iter_state, ptr %102, i32 0, i32 4
  %107 = ptrtoint ptr %time_now.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %time_now.i, align 8
  %109 = ptrtoint ptr %add.ptr.i.i.i235 to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %add.ptr.i.i.i235, align 8
  %sub.i237 = sub i64 %108, %110
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i237)
  %cmp.i238 = icmp sgt i64 %sub.i237, 0
  br i1 %cmp.i238, label %if.then1.i, label %if.then.i.if.end.i240_crit_edge

if.then.i.if.end.i240_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i240

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #11
  %111 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !253
  %call.i.i239 = call i64 @div_s64_rem(i64 noundef %sub.i237, i32 noundef 1000000000, ptr noundef nonnull %remainder.i.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #11
  br label %if.end.i240

if.end.i240:                                      ; preds = %if.then1.i, %if.then.i.if.end.i240_crit_edge
  %delta_time.0.i = phi i64 [ %call.i.i239, %if.then1.i ], [ 0, %if.then.i.if.end.i240_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.89, i64 noundef %delta_time.0.i) #11
  br label %ct_show_delta_time.exit

ct_show_delta_time.exit:                          ; preds = %if.end.i240, %nf_conn_tstamp_find.exit.i.ct_show_delta_time.exit_crit_edge, %nf_ct_ext_exist.exit.i.i.i233.ct_show_delta_time.exit_crit_edge, %ct_show_zone.exit227.ct_show_delta_time.exit_crit_edge
  %call.i.i.i241 = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr.i, i32 noundef 4) #11
  %112 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %add.ptr.i, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.72, i32 noundef %113) #11
  %114 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %count.i, align 4
  %116 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %115, i32 %117)
  %cmp.i244 = icmp eq i32 %115, %117
  %spec.select = select i1 %cmp.i244, i32 -28, i32 0
  br label %release

release:                                          ; preds = %ct_show_delta_time.exit, %if.end100.release_crit_edge, %ct_show_zone.exit.release_crit_edge, %if.end39.release_crit_edge, %if.end36.release_crit_edge, %if.then34
  %ret.0 = phi i32 [ 0, %if.then34 ], [ 0, %if.end36.release_crit_edge ], [ -28, %ct_show_zone.exit.release_crit_edge ], [ -28, %if.end100.release_crit_edge ], [ 0, %if.end39.release_crit_edge ], [ %spec.select, %ct_show_delta_time.exit ]
  br i1 %tobool.not, label %release.cleanup_crit_edge, label %land.lhs.true.i247

release.cleanup_crit_edge:                        ; preds = %release
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

land.lhs.true.i247:                               ; preds = %release
  %call.i.i.i.i.i.i246 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %add.ptr.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !254
  call void @llvm.prefetch.p0(ptr nonnull %add.ptr.i, i32 1, i32 3, i32 1) #11
  %118 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %add.ptr.i, ptr nonnull %add.ptr.i, i32 1, ptr nonnull elementtype(i32) %add.ptr.i) #11, !srcloc !255
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %118, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i248, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i247
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !252

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @refcount_warn_saturate(ptr noundef nonnull %add.ptr.i, i32 noundef 3) #11
  br label %cleanup

if.then.i248:                                     ; preds = %land.lhs.true.i247
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !256
  call void @nf_ct_destroy(ptr noundef nonnull %add.ptr.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i248, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %release.cleanup_crit_edge, %refcount_inc_not_zero.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %refcount_inc_not_zero.exit.cleanup_crit_edge ], [ %ret.0, %release.cleanup_crit_edge ], [ %ret.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %ret.0, %if.then10.i.i.i.i ], [ %ret.0, %if.then.i248 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @ct_get_next(ptr nocapture noundef readonly %seq, ptr noundef %head) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %head, align 4
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b47 = load i1, ptr @ct_get_next.__warned, align 1
  br i1 %.b47, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ct_get_next.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 129, ptr noundef nonnull @.str.6) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %4 = ptrtoint ptr %3 to i32
  %and.i48 = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i48)
  %tobool10.not49 = icmp eq i32 %and.i48, 0
  br i1 %tobool10.not49, label %do.end7.cleanup_crit_edge, label %while.body.lr.ph

do.end7.cleanup_crit_edge:                        ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.lr.ph:                                 ; preds = %do.end7
  %bucket = getelementptr inbounds %struct.ct_iter_state, ptr %1, i32 0, i32 3
  %htable_size = getelementptr inbounds %struct.ct_iter_state, ptr %1, i32 0, i32 2
  %hash = getelementptr inbounds %struct.ct_iter_state, ptr %1, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %do.end36.while.body_crit_edge, %while.body.lr.ph
  %5 = phi i32 [ %4, %while.body.lr.ph ], [ %17, %do.end36.while.body_crit_edge ]
  %shr.i = lshr i32 %5, 1
  %6 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bucket, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %shr.i, i32 %7)
  %cmp = icmp eq i32 %shr.i, %7
  br i1 %cmp, label %if.then14, label %while.body.if.end19_crit_edge, !prof !252

while.body.if.end19_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then14:                                        ; preds = %while.body
  %inc = add nuw i32 %shr.i, 1
  %8 = ptrtoint ptr %bucket to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %inc, ptr %bucket, align 8
  %9 = ptrtoint ptr %htable_size to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %htable_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %10)
  %cmp16.not = icmp ult i32 %inc, %10
  br i1 %cmp16.not, label %if.then14.if.end19_crit_edge, label %if.then14.cleanup_crit_edge

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then14.if.end19_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.end19:                                         ; preds = %if.then14.if.end19_crit_edge, %while.body.if.end19_crit_edge
  %11 = ptrtoint ptr %hash to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hash, align 8
  %13 = ptrtoint ptr %bucket to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bucket, align 8
  %arrayidx = getelementptr %struct.hlist_nulls_head, ptr %12, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx, align 4
  %call26 = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %if.end19.do.end36_crit_edge

if.end19.do.end36_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36

land.lhs.true28:                                  ; preds = %if.end19
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true28.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true28.do.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %.b4546 = load i1, ptr @ct_get_next.__warned.64, align 1
  br i1 %.b4546, label %land.lhs.true31.do.end36_crit_edge, label %if.then33

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end36

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @ct_get_next.__warned.64, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.63, i32 noundef 136, ptr noundef nonnull @.str.6) #11
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %land.lhs.true31.do.end36_crit_edge, %land.lhs.true28.do.end36_crit_edge, %if.end19.do.end36_crit_edge
  %17 = ptrtoint ptr %16 to i32
  %and.i = and i32 %17, 1
  %tobool10.not = icmp eq i32 %and.i, 0
  br i1 %tobool10.not, label %do.end36.cleanup_crit_edge, label %do.end36.while.body_crit_edge

do.end36.while.body_crit_edge:                    ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

do.end36.cleanup_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %do.end36.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %do.end7.cleanup_crit_edge
  %retval.0 = phi ptr [ %3, %do.end7.cleanup_crit_edge ], [ %16, %do.end36.cleanup_crit_edge ], [ null, %if.then14.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_l4proto_find(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nf_ct_delete(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_secid_to_secctx(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_release_secctx(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ct_cpu_seq_start(ptr nocapture noundef readonly %seq, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = trunc i64 %5 to i32
  %conv = add i32 %6, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %7)
  %cmp117 = icmp ult i32 %conv, %7
  br i1 %cmp117, label %if.end.cpu_possible.exit_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.cpu_possible.exit_crit_edge:               ; preds = %if.end
  br label %cpu_possible.exit

cpu_possible.exit:                                ; preds = %for.inc.cpu_possible.exit_crit_edge, %if.end.cpu_possible.exit_crit_edge
  %cpu.018 = phi i32 [ %inc, %for.inc.cpu_possible.exit_crit_edge ], [ %conv, %if.end.cpu_possible.exit_crit_edge ]
  %div3.i.i.i = lshr i32 %cpu.018, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_possible_mask, i32 %div3.i.i.i
  %8 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu.018, 31
  %10 = shl nuw i32 1, %and.i.i.i
  %11 = and i32 %9, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.i.not = icmp eq i32 %11, 0
  %inc = add nuw i32 %cpu.018, 1
  br i1 %tobool.i.not, label %for.inc, label %if.end5

if.end5:                                          ; preds = %cpu_possible.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv6 = sext i32 %inc to i64
  %12 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv6, ptr %pos, align 8
  %stat = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 40, i32 8
  %13 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stat, align 4
  %15 = ptrtoint ptr %14 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu.018
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add8 = add i32 %17, %15
  %18 = inttoptr i32 %add8 to ptr
  br label %cleanup

for.inc:                                          ; preds = %cpu_possible.exit
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.cpu_possible.exit_crit_edge

for.inc.cpu_possible.exit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_possible.exit

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %18, %if.end5 ], [ inttoptr (i32 1 to ptr), %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ct_cpu_seq_stop(ptr nocapture noundef %seq, ptr nocapture noundef %v) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ct_cpu_seq_next(ptr nocapture noundef readonly %seq, ptr nocapture noundef readnone %v, ptr nocapture noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %conv = trunc i64 %5 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp15 = icmp ugt i32 %6, %conv
  br i1 %cmp15, label %entry.cpu_possible.exit_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.cpu_possible.exit_crit_edge:                ; preds = %entry
  br label %cpu_possible.exit

cpu_possible.exit:                                ; preds = %for.inc.cpu_possible.exit_crit_edge, %entry.cpu_possible.exit_crit_edge
  %cpu.016 = phi i32 [ %inc, %for.inc.cpu_possible.exit_crit_edge ], [ %conv, %entry.cpu_possible.exit_crit_edge ]
  %div3.i.i.i = lshr i32 %cpu.016, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_possible_mask, i32 %div3.i.i.i
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %cpu.016, 31
  %9 = shl nuw i32 1, %and.i.i.i
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  %inc = add i32 %cpu.016, 1
  br i1 %tobool.i.not, label %for.inc, label %if.end

if.end:                                           ; preds = %cpu_possible.exit
  call void @__sanitizer_cov_trace_pc() #13
  %conv3 = sext i32 %inc to i64
  %11 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv3, ptr %pos, align 8
  %stat = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 40, i32 8
  %12 = ptrtoint ptr %stat to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stat, align 4
  %14 = ptrtoint ptr %13 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu.016
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add5 = add i32 %16, %14
  %17 = inttoptr i32 %add5 to ptr
  br label %cleanup

for.inc:                                          ; preds = %cpu_possible.exit
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.cpu_possible.exit_crit_edge

for.inc.cpu_possible.exit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cpu_possible.exit

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %18 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %pos, align 8
  %inc6 = add i64 %19, 1
  store i64 %inc6, ptr %pos, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end
  %retval.0 = phi ptr [ %17, %if.end ], [ null, %for.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ct_cpu_seq_show(ptr noundef %seq, ptr noundef readonly %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.91) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %private.i = getelementptr inbounds %struct.seq_file, ptr %seq, i32 0, i32 11
  %0 = ptrtoint ptr %private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private.i, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call fastcc ptr @nf_ct_pernet(ptr noundef %3) #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %call.i, i32 noundef 4) #11
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %call.i, align 4
  %clash_resolve = getelementptr inbounds %struct.ip_conntrack_stat, ptr %v, i32 0, i32 4
  %6 = ptrtoint ptr %clash_resolve to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %clash_resolve, align 4
  %8 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %v, align 4
  %invalid = getelementptr inbounds %struct.ip_conntrack_stat, ptr %v, i32 0, i32 1
  %10 = ptrtoint ptr %invalid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %invalid, align 4
  %chaintoolong = getelementptr inbounds %struct.ip_conntrack_stat, ptr %v, i32 0, i32 12
  %12 = ptrtoint ptr %chaintoolong to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chaintoolong, align 4
  %insert = getelementptr inbounds %struct.ip_conntrack_stat, ptr %v, i32 0, i32 2
  %14 = ptrtoint ptr %insert to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %insert, align 4
  %insert_failed = getelementptr inbounds %struct.ip_conntrack_stat, ptr %v, i32 0, i32 3
  %16 = ptrtoint ptr %insert_failed to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %insert_failed, align 4
  %drop = getelementptr inbounds %struct.ip_conntrack_stat, ptr %v, i32 0, i32 5
  %18 = ptrtoint ptr %drop to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %drop, align 4
  %early_drop = getelementptr inbounds %struct.ip_conntrack_stat, ptr %v, i32 0, i32 6
  %20 = ptrtoint ptr %early_drop to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %early_drop, align 4
  %error = getelementptr inbounds %struct.ip_conntrack_stat, ptr %v, i32 0, i32 7
  %22 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %error, align 4
  %expect_new = getelementptr inbounds %struct.ip_conntrack_stat, ptr %v, i32 0, i32 8
  %24 = ptrtoint ptr %expect_new to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %expect_new, align 4
  %expect_create = getelementptr inbounds %struct.ip_conntrack_stat, ptr %v, i32 0, i32 9
  %26 = ptrtoint ptr %expect_create to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %expect_create, align 4
  %expect_delete = getelementptr inbounds %struct.ip_conntrack_stat, ptr %v, i32 0, i32 10
  %28 = ptrtoint ptr %expect_delete to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %expect_delete, align 4
  %search_restart = getelementptr inbounds %struct.ip_conntrack_stat, ptr %v, i32 0, i32 11
  %30 = ptrtoint ptr %search_restart to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %search_restart, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.92, i32 noundef %5, i32 noundef %7, i32 noundef %9, i32 noundef 0, i32 noundef %11, i32 noundef 0, i32 noundef 0, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_cleanup_net_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_netns_put(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_init_start() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_init_end() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 101)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !217, !219, !221, !223, !225, !226, !227, !228}
!llvm.named.register.sp = !{!230}
!llvm.module.flags = !{!231, !232, !233, !234, !235, !236, !237, !238}
!llvm.ident = !{!239}

!0 = !{ptr @__UNIQUE_ID_enable_hooks588, !1, !"__UNIQUE_ID_enable_hooks588", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 31, i32 1}
!2 = !{ptr @__param_enable_hooks, !3, !"__param_enable_hooks", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 32, i32 1}
!4 = !{ptr @__UNIQUE_ID_enable_hookstype589, !3, !"__UNIQUE_ID_enable_hookstype589", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 43, i32 17}
!7 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 47, i32 17}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 56, i32 17}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 62, i32 17}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 90, i32 17}
!15 = !{ptr @__ksymtab_print_tuple, !16, !"__ksymtab_print_tuple", i1 false, i1 false}
!16 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 98, i32 1}
!17 = !{ptr @__ksymtab_nf_conntrack_count, !18, !"__ksymtab_nf_conntrack_count", i1 false, i1 false}
!18 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 522, i32 1}
!19 = !{ptr @__initcall__kmod_nf_conntrack__598_1267_nf_conntrack_standalone_init6, !20, !"__initcall__kmod_nf_conntrack__598_1267_nf_conntrack_standalone_init6", i1 false, i1 false}
!20 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 1267, i32 1}
!21 = !{ptr @__exitcall_nf_conntrack_standalone_fini, !22, !"__exitcall_nf_conntrack_standalone_fini", i1 false, i1 false}
!22 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 1268, i32 1}
!23 = !{ptr @enable_hooks, !24, !"enable_hooks", i1 false, i1 false}
!24 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 30, i32 13}
!25 = !{ptr @nf_conntrack_net_id, !26, !"nf_conntrack_net_id", i1 false, i1 false}
!26 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 34, i32 14}
!27 = !{ptr @nf_ct_netfilter_header, !28, !"nf_ct_netfilter_header", i1 false, i1 false}
!28 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 551, i32 33}
!29 = !{ptr @__param_str_enable_hooks, !3, !"__param_str_enable_hooks", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!32 = !{ptr @.str.5, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!40 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @nf_conntrack_net_ops, !42, !"nf_conntrack_net_ops", i1 false, i1 false}
!42 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 1213, i32 33}
!43 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 1128, i32 49}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 629, i32 15}
!47 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 636, i32 15}
!49 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 642, i32 21}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 649, i32 15}
!53 = !{ptr @.str.15, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 658, i32 15}
!55 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 665, i32 15}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 672, i32 15}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 681, i32 15}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 690, i32 15}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 701, i32 15}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 711, i32 15}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 717, i32 15}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 723, i32 15}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 729, i32 15}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 735, i32 15}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 741, i32 15}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 747, i32 15}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 753, i32 15}
!81 = !{ptr @.str.29, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 759, i32 15}
!83 = !{ptr @.str.30, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 765, i32 15}
!85 = !{ptr @.str.31, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 771, i32 15}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 778, i32 15}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 785, i32 15}
!91 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 793, i32 21}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 801, i32 15}
!95 = !{ptr @.str.36, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 809, i32 15}
!97 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 815, i32 15}
!99 = !{ptr @.str.38, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 821, i32 15}
!101 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 828, i32 15}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 835, i32 15}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 841, i32 15}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 848, i32 15}
!109 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 854, i32 15}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 860, i32 15}
!113 = !{ptr @.str.45, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 866, i32 15}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 872, i32 15}
!117 = !{ptr @.str.47, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 878, i32 15}
!119 = !{ptr @.str.48, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 884, i32 15}
!121 = !{ptr @.str.49, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 890, i32 15}
!123 = !{ptr @.str.50, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 896, i32 21}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 904, i32 15}
!127 = !{ptr @.str.52, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 910, i32 15}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 916, i32 15}
!131 = !{ptr @.str.54, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 922, i32 15}
!133 = !{ptr @.str.55, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 928, i32 15}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 934, i32 15}
!137 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 940, i32 15}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 946, i32 15}
!141 = !{ptr @.str.59, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 956, i32 21}
!143 = !{ptr @.str.60, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 962, i32 21}
!145 = !{ptr @.str.61, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 970, i32 15}
!147 = !{ptr @nf_ct_sysctl_table, !148, !"nf_ct_sysctl_table", i1 false, i1 false}
!148 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 627, i32 25}
!149 = !{ptr @nf_conntrack_htable_size_user, !150, !"nf_conntrack_htable_size_user", i1 false, i1 false}
!150 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 528, i32 21}
!151 = !{ptr @.str.62, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 478, i32 8}
!153 = !{ptr @ct_seq_ops, !154, !"ct_seq_ops", i1 false, i1 false}
!154 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 384, i32 36}
!155 = distinct !{null, !156, !"__warned", i1 false, i1 false}
!156 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 116, i32 7}
!157 = !{ptr @.str.63, !156, !"<string literal>", i1 false, i1 false}
!158 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!159 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 129, i32 9}
!160 = distinct !{null, !161, !"__warned", i1 false, i1 false}
!161 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 135, i32 10}
!162 = !{ptr @.str.65, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 324, i32 16}
!164 = !{ptr @.str.66, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 329, i32 17}
!166 = !{ptr @.str.67, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 346, i32 15}
!168 = !{ptr @.str.68, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 356, i32 15}
!170 = !{ptr @.str.69, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 358, i32 15}
!172 = !{ptr @.str.70, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 360, i32 15}
!174 = !{ptr @.str.71, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 366, i32 16}
!176 = !{ptr @.str.72, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 373, i32 16}
!178 = !{ptr @.str.73, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 255, i32 23}
!180 = !{ptr @.str.74, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 256, i32 24}
!182 = !{ptr @.str.75, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 259, i32 9}
!184 = !{ptr @.str.76, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 265, i32 28}
!186 = !{ptr @.str.77, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 266, i32 27}
!188 = !{ptr @.str.78, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 267, i32 27}
!190 = !{ptr @.str.79, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 268, i32 28}
!192 = !{ptr @.str.80, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 269, i32 27}
!194 = !{ptr @.str.81, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 270, i32 28}
!196 = !{ptr @.str.82, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 271, i32 31}
!198 = !{ptr @.str.83, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 272, i32 30}
!200 = !{ptr @.str.84, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 206, i32 17}
!202 = !{ptr @.str.85, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 209, i32 17}
!204 = !{ptr @.str.86, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 212, i32 17}
!206 = !{ptr @.str.87, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 289, i32 16}
!208 = !{ptr @.str.88, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 186, i32 16}
!210 = !{ptr @.str.89, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 240, i32 17}
!212 = !{ptr @ct_cpu_seq_ops, !213, !"ct_cpu_seq_ops", i1 false, i1 false}
!213 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 465, i32 36}
!214 = distinct !{null, !215, !"__already_done", i1 false, i1 false}
!215 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!216 = distinct !{null, !215, !"<string literal>", i1 false, i1 false}
!217 = !{ptr @.str.91, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 435, i32 17}
!219 = !{ptr @.str.92, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 441, i32 18}
!221 = !{ptr @.str.93, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 1230, i32 34}
!223 = !{ptr @.str.94, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 1232, i32 3}
!225 = !{ptr @.str.95, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @nf_conntrack_standalone_init._entry, !224, !"_entry", i1 false, i1 false}
!227 = !{ptr @nf_conntrack_standalone_init._entry_ptr, !224, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @nf_ct_netfilter_table, !229, !"nf_ct_netfilter_table", i1 false, i1 false}
!229 = !{!"../net/netfilter/nf_conntrack_standalone.c", i32 980, i32 25}
!230 = !{!"sp"}
!231 = !{i32 1, !"wchar_size", i32 2}
!232 = !{i32 1, !"min_enum_size", i32 4}
!233 = !{i32 8, !"branch-target-enforcement", i32 0}
!234 = !{i32 8, !"sign-return-address", i32 0}
!235 = !{i32 8, !"sign-return-address-all", i32 0}
!236 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!237 = !{i32 7, !"uwtable", i32 1}
!238 = !{i32 7, !"frame-pointer", i32 2}
!239 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!240 = !{i64 2149690624}
!241 = !{i64 2149690890}
!242 = !{i8 0, i8 2}
!243 = !{i64 798952, i64 799013}
!244 = !{i64 801684}
!245 = !{!"branch_weights", i32 1, i32 2000}
!246 = !{i64 801969}
!247 = !{i64 2158002026}
!248 = !{i64 2158001868}
!249 = !{i64 2158002196}
!250 = !{i64 2150306993}
!251 = !{i64 890207, i64 890231, i64 890252, i64 890269, i64 890286}
!252 = !{!"branch_weights", i32 2000, i32 1}
!253 = !{!"auto-init"}
!254 = !{i64 2148496002}
!255 = !{i64 2148410466, i64 2148410498, i64 2148410527, i64 2148410561, i64 2148410592, i64 2148410615}
!256 = !{i64 2150565171}
