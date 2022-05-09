; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_RATEEST.c_pt.bc'
source_filename = "../net/netfilter/xt_RATEEST.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+xt_rateest_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc_xt_rateest_lookup\09\09\09\09"
module asm "\09.long\09__crc_xt_rateest_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xt_rateest_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22xt_rateest_lookup\22\09\09\09\09\09"
module asm "__kstrtabns_xt_rateest_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+xt_rateest_put\22, \22a\22\09"
module asm "\09.weak\09__crc_xt_rateest_put\09\09\09\09"
module asm "\09.long\09__crc_xt_rateest_put\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xt_rateest_put:\09\09\09\09\09"
module asm "\09.asciz \09\22xt_rateest_put\22\09\09\09\09\09"
module asm "__kstrtabns_xt_rateest_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.113, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.113 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.114, i32, %struct.spinlock }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { ptr, ptr }
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
%struct.xt_rateest_net = type { %struct.mutex, [16 x %struct.hlist_head] }
%struct.xt_rateest = type { %struct.gnet_stats_basic_sync, %struct.spinlock, i32, %struct.hlist_node, [16 x i8], %struct.gnet_estimator, %struct.callback_head, ptr, [8 x i8] }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.gnet_estimator = type { i8, i8 }
%struct.callback_head = type { ptr, ptr }
%struct.xt_action_param = type { %union.anon.122, %union.anon.123, ptr, i32, i16, i8 }
%union.anon.122 = type { ptr }
%union.anon.123 = type { ptr }
%struct.xt_rateest_target_info = type { [16 x i8], i8, i8, [6 x i8], ptr, [4 x i8] }
%struct.sk_buff = type { %union.anon.15, %union.anon.18, %union.anon.19, [48 x i8], %union.anon.20, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.22, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, ptr, %union.anon.17 }
%union.anon.17 = type { ptr }
%union.anon.18 = type { ptr }
%union.anon.19 = type { i64 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32, ptr }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.24, i32, i32, i32, i16, i16, %union.anon.26, i32, %union.anon.27, %union.anon.28, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.24 = type { i32 }
%union.anon.26 = type { i32 }
%union.anon.27 = type { i32 }
%union.anon.28 = type { i16 }
%struct.anon.124 = type { %struct.nlattr, %struct.gnet_estimator }
%struct.nlattr = type { i16, i16 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_tgdtor_param = type { ptr, ptr, ptr, i8 }

@xt_rateest_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_xt_rateest_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns_xt_rateest_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab_xt_rateest_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xt_rateest_lookup to i32), ptr @__kstrtab_xt_rateest_lookup, ptr @__kstrtabns_xt_rateest_lookup }, section "___ksymtab_gpl+xt_rateest_lookup", align 4
@__kstrtab_xt_rateest_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_xt_rateest_put = external dso_local constant [0 x i8], align 1
@__ksymtab_xt_rateest_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xt_rateest_put to i32), ptr @__kstrtab_xt_rateest_put, ptr @__kstrtabns_xt_rateest_put }, section "___ksymtab_gpl+xt_rateest_put", align 4
@xt_rateest_tg_reg = internal global %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"RATEEST\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @xt_rateest_tg, ptr @xt_rateest_tg_checkentry, ptr @xt_rateest_tg_destroy, ptr null, ptr null, i32 32, i32 24, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@xt_rateest_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @xt_rateest_net_init, ptr null, ptr null, ptr null, ptr @xt_rateest_id, i32 156 }, [32 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_author359 = internal constant [52 x i8] c"xt_RATEEST.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_file360 = internal constant [41 x i8] c"xt_RATEEST.file=net/netfilter/xt_RATEEST\00", section ".modinfo", align 1
@__UNIQUE_ID_license361 = internal constant [23 x i8] c"xt_RATEEST.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description362 = internal constant [54 x i8] c"xt_RATEEST.description=Xtables: packet rate estimator\00", section ".modinfo", align 1
@__UNIQUE_ID_alias363 = internal constant [29 x i8] c"xt_RATEEST.alias=ipt_RATEEST\00", section ".modinfo", align 1
@__UNIQUE_ID_alias364 = internal constant [30 x i8] c"xt_RATEEST.alias=ip6t_RATEEST\00", section ".modinfo", align 1
@__initcall__kmod_xt_RATEEST__365_232_xt_rateest_tg_init6 = internal global ptr @xt_rateest_tg_init, section ".initcall6.init", align 4
@__exitcall_xt_rateest_tg_fini = internal global ptr @xt_rateest_tg_fini, section ".exitcall.exit", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@jhash_rnd = internal global i32 0, section ".data..read_mostly", align 4
@xt_rateest_tg_checkentry.___done = internal global i8 0, section ".data.once", align 1
@xt_rateest_tg_checkentry.___once_key = internal global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } }, [24 x i8] zeroinitializer }, align 32
@xt_rateest_tg_checkentry.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&est->lock\00", [21 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xt_rateest_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&xn->hash_lock\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"xt_rateest_id\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 27, i32 21 }
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"xt_rateest_net_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 205, i32 33 }
@___asan_gen_.17 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 45, i32 7 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 695, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 723, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"___once_key\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 121, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 148, i32 2 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [30 x i8] c"../net/netfilter/xt_RATEEST.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 199, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_alias363, ptr @__UNIQUE_ID_alias364, ptr @__UNIQUE_ID_author359, ptr @__UNIQUE_ID_description362, ptr @__UNIQUE_ID_file360, ptr @__UNIQUE_ID_license361, ptr @__exitcall_xt_rateest_tg_fini, ptr @__initcall__kmod_xt_RATEEST__365_232_xt_rateest_tg_init6, ptr @__ksymtab_xt_rateest_lookup, ptr @__ksymtab_xt_rateest_put, ptr @xt_rateest_tg_fini, ptr @xt_rateest_id, ptr @xt_rateest_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @xt_rateest_tg_checkentry.___once_key, ptr @xt_rateest_tg_checkentry.__key, ptr @.str.5, ptr @xt_rateest_net_init.__key, ptr @.str.6], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_rateest_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_rateest_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_rateest_tg_checkentry.___once_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_rateest_tg_checkentry.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_rateest_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xt_rateest_lookup(ptr noundef %net, ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @xt_rateest_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  tail call void @mutex_lock_nested(ptr noundef %call, i32 noundef 0) #11
  %call1 = tail call fastcc ptr @__xt_rateest_lookup(ptr noundef %call, ptr noundef %name)
  tail call void @mutex_unlock(ptr noundef %call) #11
  ret ptr %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !47) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !57
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 45, ptr noundef nonnull @.str.1) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !58
  %8 = tail call i32 @llvm.read_register.i32(metadata !47) #11
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__xt_rateest_lookup(ptr nocapture noundef readonly %xn, ptr nocapture noundef readonly %name) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @jhash_rnd, align 4
  %add1.i.i = add i32 %0, -559038721
  %1 = ptrtoint ptr %name to i32
  call void @__asan_loadN_noabort(i32 %1, i32 4)
  %2 = load i32, ptr %name, align 1
  %add2.i.i = add i32 %2, %add1.i.i
  %add.ptr.i.i = getelementptr i8, ptr %name, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 4)
  %4 = load i32, ptr %add.ptr.i.i, align 1
  %add4.i.i = add i32 %4, %add1.i.i
  %add.ptr5.i.i = getelementptr i8, ptr %name, i32 8
  %5 = ptrtoint ptr %add.ptr5.i.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %add.ptr5.i.i, align 1
  %add7.i.i = add i32 %6, %add1.i.i
  %sub.i.i = sub i32 %add2.i.i, %add7.i.i
  %or.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i.i, i32 %add7.i.i, i32 4) #11
  %xor.i.i = xor i32 %sub.i.i, %or.i.i.i
  %add9.i.i = add i32 %add7.i.i, %add4.i.i
  %sub10.i.i = sub i32 %add4.i.i, %xor.i.i
  %or.i1.i.i = tail call i32 @llvm.fshl.i32(i32 %xor.i.i, i32 %xor.i.i, i32 6) #11
  %xor12.i.i = xor i32 %sub10.i.i, %or.i1.i.i
  %add13.i.i = add i32 %xor.i.i, %add9.i.i
  %sub14.i.i = sub i32 %add9.i.i, %xor12.i.i
  %or.i2.i.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i.i, i32 %xor12.i.i, i32 8) #11
  %xor16.i.i = xor i32 %sub14.i.i, %or.i2.i.i
  %add17.i.i = add i32 %xor12.i.i, %add13.i.i
  %sub18.i.i = sub i32 %add13.i.i, %xor16.i.i
  %or.i3.i.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i.i, i32 %xor16.i.i, i32 16) #11
  %xor20.i.i = xor i32 %sub18.i.i, %or.i3.i.i
  %add21.i.i = add i32 %xor16.i.i, %add17.i.i
  %sub22.i.i = sub i32 %add17.i.i, %xor20.i.i
  %or.i4.i.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i.i, i32 %xor20.i.i, i32 19) #11
  %xor24.i.i = xor i32 %sub22.i.i, %or.i4.i.i
  %add25.i.i = add i32 %xor20.i.i, %add21.i.i
  %sub26.i.i = sub i32 %add21.i.i, %xor24.i.i
  %or.i5.i.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i.i, i32 %xor24.i.i, i32 4) #11
  %xor28.i.i = xor i32 %sub26.i.i, %or.i5.i.i
  %add29.i.i = add i32 %xor24.i.i, %add25.i.i
  %add.ptr31.i.i = getelementptr i8, ptr %name, i32 12
  %arrayidx67.i.i = getelementptr i8, ptr %name, i32 15
  %7 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx67.i.i, align 1
  %conv68.i.i = zext i8 %8 to i32
  %shl69.i.i = shl nuw i32 %conv68.i.i, 24
  %arrayidx72.i.i = getelementptr i8, ptr %name, i32 14
  %9 = ptrtoint ptr %arrayidx72.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx72.i.i, align 1
  %conv73.i.i = zext i8 %10 to i32
  %shl74.i.i = shl nuw nsw i32 %conv73.i.i, 16
  %arrayidx77.i.i = getelementptr i8, ptr %name, i32 13
  %11 = ptrtoint ptr %arrayidx77.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx77.i.i, align 1
  %conv78.i.i = zext i8 %12 to i32
  %shl79.i.i = shl nuw nsw i32 %conv78.i.i, 8
  %13 = ptrtoint ptr %add.ptr31.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %add.ptr31.i.i, align 1
  %conv83.i.i = zext i8 %14 to i32
  %add70.i.i = or i32 %shl74.i.i, %shl69.i.i
  %add75.i.i = or i32 %add70.i.i, %shl79.i.i
  %add80.i.i = or i32 %add75.i.i, %conv83.i.i
  %add84.i.i = add i32 %add25.i.i, %add80.i.i
  %xor85.i.i = xor i32 %xor28.i.i, %add29.i.i
  %or.i6.i.i = tail call i32 @llvm.fshl.i32(i32 %add29.i.i, i32 %add29.i.i, i32 14) #11
  %sub87.i.i = sub i32 %xor85.i.i, %or.i6.i.i
  %xor88.i.i = xor i32 %sub87.i.i, %add84.i.i
  %or.i7.i.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i.i, i32 %sub87.i.i, i32 11) #11
  %sub90.i.i = sub i32 %xor88.i.i, %or.i7.i.i
  %xor91.i.i = xor i32 %sub90.i.i, %add29.i.i
  %or.i8.i.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i.i, i32 %sub90.i.i, i32 25) #11
  %sub93.i.i = sub i32 %xor91.i.i, %or.i8.i.i
  %xor94.i.i = xor i32 %sub93.i.i, %sub87.i.i
  %or.i9.i.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i.i, i32 %sub93.i.i, i32 16) #11
  %sub96.i.i = sub i32 %xor94.i.i, %or.i9.i.i
  %xor97.i.i = xor i32 %sub96.i.i, %sub90.i.i
  %or.i10.i.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i.i, i32 %sub96.i.i, i32 4) #11
  %sub99.i.i = sub i32 %xor97.i.i, %or.i10.i.i
  %xor100.i.i = xor i32 %sub99.i.i, %sub93.i.i
  %or.i11.i.i = lshr i32 %sub99.i.i, 18
  %sub102.i.i = sub i32 %xor100.i.i, %or.i11.i.i
  %xor103.i.i = xor i32 %sub102.i.i, %sub96.i.i
  %or.i12.i.i = lshr i32 %sub102.i.i, 8
  %sub105.i.i = sub i32 %xor103.i.i, %or.i12.i.i
  %and.i = and i32 %sub105.i.i, 15
  %arrayidx = getelementptr %struct.xt_rateest_net, ptr %xn, i32 0, i32 1, i32 %and.i
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %16, null
  %add.ptr = getelementptr i8, ptr %16, i32 -96
  %tobool2.not2932 = icmp eq ptr %add.ptr, null
  %tobool2.not29 = or i1 %tobool.not, %tobool2.not2932
  br i1 %tobool2.not29, label %entry.cleanup_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %est.030 = phi ptr [ %add.ptr11, %for.inc.for.body_crit_edge ], [ %add.ptr, %entry.for.body_crit_edge ]
  %name3 = getelementptr inbounds %struct.xt_rateest, ptr %est.030, i32 0, i32 4
  %call4 = tail call i32 @strcmp(ptr noundef %name3, ptr noundef %name) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp eq i32 %call4, 0
  br i1 %cmp, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %refcnt = getelementptr inbounds %struct.xt_rateest, ptr %est.030, i32 0, i32 2
  %17 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %refcnt, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %refcnt, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %list = getelementptr inbounds %struct.xt_rateest, ptr %est.030, i32 0, i32 3
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 16
  %tobool7.not = icmp eq ptr %20, null
  %add.ptr11 = getelementptr i8, ptr %20, i32 -96
  %tobool2.not34 = icmp eq ptr %add.ptr11, null
  %tobool2.not = or i1 %tobool7.not, %tobool2.not34
  br i1 %tobool2.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then, %entry.cleanup_crit_edge
  %est.028 = phi ptr [ %est.030, %if.then ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %est.028
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xt_rateest_put(ptr noundef %net, ptr noundef %est) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @xt_rateest_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  tail call void @mutex_lock_nested(ptr noundef %call, i32 noundef 0) #11
  %refcnt = getelementptr inbounds %struct.xt_rateest, ptr %est, i32 0, i32 2
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %refcnt, align 4
  %dec = add i32 %2, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

if.then:                                          ; preds = %entry
  %list = getelementptr inbounds %struct.xt_rateest, ptr %est, i32 0, i32 3
  %3 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %list, align 4
  %pprev2.i.i = getelementptr inbounds %struct.xt_rateest, ptr %est, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pprev2.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %4, ptr %6, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.then.hlist_del.exit_crit_edge, label %do.body13.i.i

if.then.hlist_del.exit_crit_edge:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %4, i32 0, i32 1
  %8 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.then.hlist_del.exit_crit_edge
  %9 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %10 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  %rate_est = getelementptr inbounds %struct.xt_rateest, ptr %est, i32 0, i32 7
  tail call void @gen_kill_estimator(ptr noundef %rate_est) #11
  %tobool.not = icmp eq ptr %est, null
  br i1 %tobool.not, label %hlist_del.exit.if.end5_crit_edge, label %do.end

hlist_del.exit.if.end5_crit_edge:                 ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5

do.end:                                           ; preds = %hlist_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %rcu = getelementptr inbounds %struct.xt_rateest, ptr %est, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 124 to ptr)) #11
  br label %if.end5

if.end5:                                          ; preds = %do.end, %hlist_del.exit.if.end5_crit_edge, %entry.if.end5_crit_edge
  tail call void @mutex_unlock(ptr noundef %call) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gen_kill_estimator(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xt_rateest_tg_fini() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @xt_unregister_target(ptr noundef nonnull @xt_rateest_tg_reg) #11
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @xt_rateest_net_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_target(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_rateest_tg_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @xt_rateest_net_ops) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @xt_register_target(ptr noundef nonnull @xt_rateest_tg_reg) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_rateest_tg(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %est = getelementptr inbounds %struct.xt_rateest_target_info, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %est to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %est, align 8
  %lock = getelementptr inbounds %struct.xt_rateest, ptr %4, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #11
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len, align 4
  %conv.i = zext i32 %6 to i64
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %4, align 8
  %add.i = add i64 %8, %conv.i
  store i64 %add.i, ptr %4, align 8
  %packets = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %packets to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %packets, align 8
  %inc.i = add i64 %10, 1
  store i64 %inc.i, ptr %packets, align 8
  %11 = ptrtoint ptr %est to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %est, align 8
  %lock3 = getelementptr inbounds %struct.xt_rateest, ptr %12, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock3) #11
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_rateest_tg_checkentry(ptr nocapture noundef readonly %par) #0 align 64 {
entry:
  %cfg = alloca %struct.anon.124, align 2
  %___flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %2 = load i32, ptr @xt_rateest_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %2)
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %3 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %targinfo, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %cfg) #11
  %5 = getelementptr inbounds %struct.nlattr, ptr %cfg, i32 0, i32 1
  %6 = getelementptr inbounds %struct.anon.124, ptr %cfg, i32 0, i32 1
  %7 = getelementptr inbounds %struct.anon.124, ptr %cfg, i32 0, i32 1, i32 1
  %8 = call ptr @memset(ptr %cfg, i32 255, i32 6)
  %call1 = tail call i32 @strnlen(ptr noundef %4, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %call1)
  %cmp = icmp ugt i32 %call1, 15
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @xt_rateest_tg_checkentry.___once_key, ptr blockaddress(@xt_rateest_tg_checkentry, %if.then5)) #11
          to label %if.end17 [label %if.then5], !srcloc !59

if.then5:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %___flags) #11
  %9 = ptrtoint ptr %___flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %___flags, align 4, !annotation !60
  %call6 = call zeroext i1 @__do_once_start(ptr noundef nonnull @xt_rateest_tg_checkentry.___done, ptr noundef nonnull %___flags) #11
  br i1 %call6, label %if.then15, label %if.then5.if.end16_crit_edge, !prof !61

if.then5.if.end16_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #13
  call void @get_random_bytes(ptr noundef nonnull @jhash_rnd, i32 noundef 4) #11
  call void @__do_once_done(ptr noundef nonnull @xt_rateest_tg_checkentry.___done, ptr noundef nonnull @xt_rateest_tg_checkentry.___once_key, ptr noundef nonnull %___flags, ptr noundef null) #11
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.then5.if.end16_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %___flags) #11
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  call void @mutex_lock_nested(ptr noundef %call, i32 noundef 0) #11
  %call24 = call fastcc ptr @__xt_rateest_lookup(ptr noundef %call, ptr noundef %4)
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.end47, label %if.then26

if.then26:                                        ; preds = %if.end17
  call void @mutex_unlock(ptr noundef %call) #11
  %interval = getelementptr inbounds %struct.xt_rateest_target_info, ptr %4, i32 0, i32 1
  %10 = ptrtoint ptr %interval to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %interval, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool28.not = icmp eq i8 %11, 0
  br i1 %tobool28.not, label %land.lhs.true, label %if.then26.lor.lhs.false_crit_edge

if.then26.lor.lhs.false_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then26
  %ewma_log = getelementptr inbounds %struct.xt_rateest_target_info, ptr %4, i32 0, i32 2
  %12 = ptrtoint ptr %ewma_log to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ewma_log, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool29.not = icmp eq i8 %13, 0
  br i1 %tobool29.not, label %land.lhs.true.if.then43_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %lor.lhs.false

land.lhs.true.if.then43_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.then26.lor.lhs.false_crit_edge
  %params = getelementptr inbounds %struct.xt_rateest, ptr %call24, i32 0, i32 5
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %params, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %15)
  %cmp33.not = icmp eq i8 %11, %15
  br i1 %cmp33.not, label %lor.lhs.false35, label %lor.lhs.false.if.then43_crit_edge

lor.lhs.false.if.then43_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

lor.lhs.false35:                                  ; preds = %lor.lhs.false
  %ewma_log36 = getelementptr inbounds %struct.xt_rateest_target_info, ptr %4, i32 0, i32 2
  %16 = ptrtoint ptr %ewma_log36 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ewma_log36, align 1
  %ewma_log39 = getelementptr inbounds %struct.xt_rateest, ptr %call24, i32 0, i32 5, i32 1
  %18 = ptrtoint ptr %ewma_log39 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ewma_log39, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp41.not = icmp eq i8 %17, %19
  br i1 %cmp41.not, label %if.end45, label %lor.lhs.false35.if.then43_crit_edge

lor.lhs.false35.if.then43_crit_edge:              ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then43

if.then43:                                        ; preds = %lor.lhs.false35.if.then43_crit_edge, %lor.lhs.false.if.then43_crit_edge, %land.lhs.true.if.then43_crit_edge
  %20 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %par, align 4
  %22 = load i32, ptr @xt_rateest_id, align 4
  %call.i = call fastcc ptr @net_generic(ptr noundef %21, i32 noundef %22) #11
  call void @mutex_lock_nested(ptr noundef %call.i, i32 noundef 0) #11
  %refcnt.i = getelementptr inbounds %struct.xt_rateest, ptr %call24, i32 0, i32 2
  %23 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %refcnt.i, align 4
  %dec.i = add i32 %24, -1
  store i32 %dec.i, ptr %refcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.then43.xt_rateest_put.exit_crit_edge

if.then43.xt_rateest_put.exit_crit_edge:          ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #13
  br label %xt_rateest_put.exit

if.then.i:                                        ; preds = %if.then43
  %list.i = getelementptr inbounds %struct.xt_rateest, ptr %call24, i32 0, i32 3
  %25 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %list.i, align 4
  %pprev2.i.i.i = getelementptr inbounds %struct.xt_rateest, ptr %call24, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pprev2.i.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %26, ptr %28, align 4
  %tobool.not.i.i.i = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.i, label %if.then.i.do.end.i_crit_edge, label %do.body13.i.i.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end.i

do.body13.i.i.i:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %pprev14.i.i.i = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %pprev14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %pprev14.i.i.i, align 4
  br label %do.end.i

do.end.i:                                         ; preds = %do.body13.i.i.i, %if.then.i.do.end.i_crit_edge
  %31 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %list.i, align 4
  %32 = ptrtoint ptr %pprev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i.i, align 4
  %rate_est.i = getelementptr inbounds %struct.xt_rateest, ptr %call24, i32 0, i32 7
  call void @gen_kill_estimator(ptr noundef %rate_est.i) #11
  %rcu.i = getelementptr inbounds %struct.xt_rateest, ptr %call24, i32 0, i32 6
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 124 to ptr)) #11
  br label %xt_rateest_put.exit

xt_rateest_put.exit:                              ; preds = %do.end.i, %if.then43.xt_rateest_put.exit_crit_edge
  call void @mutex_unlock(ptr noundef %call.i) #11
  br label %cleanup

if.end45:                                         ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #13
  %est46 = getelementptr inbounds %struct.xt_rateest_target_info, ptr %4, i32 0, i32 4
  %33 = ptrtoint ptr %est46 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call24, ptr %est46, align 8
  br label %cleanup

if.end47:                                         ; preds = %if.end17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 144) #15
  %tobool49.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool49.not, label %if.end47.err1_crit_edge, label %if.end51

if.end47.err1_crit_edge:                          ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #13
  br label %err1

if.end51:                                         ; preds = %if.end47
  call void @gnet_stats_basic_sync_init(ptr noundef nonnull %call7.i.i) #11
  %name52 = getelementptr inbounds %struct.xt_rateest, ptr %call7.i.i, i32 0, i32 4
  %call56 = call i32 @strlcpy(ptr noundef %name52, ptr noundef %4, i32 noundef 16) #11
  %lock = getelementptr inbounds %struct.xt_rateest, ptr %call7.i.i, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @xt_rateest_tg_checkentry.__key, i16 noundef signext 3) #11
  %refcnt = getelementptr inbounds %struct.xt_rateest, ptr %call7.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 1, ptr %refcnt, align 4
  %interval58 = getelementptr inbounds %struct.xt_rateest_target_info, ptr %4, i32 0, i32 1
  %36 = ptrtoint ptr %interval58 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %interval58, align 8
  %params59 = getelementptr inbounds %struct.xt_rateest, ptr %call7.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %params59 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %params59, align 8
  %ewma_log61 = getelementptr inbounds %struct.xt_rateest_target_info, ptr %4, i32 0, i32 2
  %39 = ptrtoint ptr %ewma_log61 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %ewma_log61, align 1
  %ewma_log63 = getelementptr inbounds %struct.xt_rateest, ptr %call7.i.i, i32 0, i32 5, i32 1
  %41 = ptrtoint ptr %ewma_log63 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %ewma_log63, align 1
  %42 = ptrtoint ptr %cfg to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 6, ptr %cfg, align 2
  %43 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 2, ptr %5, align 2
  %44 = load i8, ptr %interval58, align 8
  %45 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %44, ptr %6, align 2
  %46 = load i8, ptr %ewma_log61, align 1
  %47 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %7, align 1
  %rate_est = getelementptr inbounds %struct.xt_rateest, ptr %call7.i.i, i32 0, i32 7
  %call76 = call i32 @gen_new_estimator(ptr noundef nonnull %call7.i.i, ptr noundef null, ptr noundef %rate_est, ptr noundef %lock, i1 noundef zeroext false, ptr noundef nonnull %cfg) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %cmp77 = icmp slt i32 %call76, 0
  br i1 %cmp77, label %err2, label %if.end80

if.end80:                                         ; preds = %if.end51
  %est81 = getelementptr inbounds %struct.xt_rateest_target_info, ptr %4, i32 0, i32 4
  %48 = ptrtoint ptr %est81 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call7.i.i, ptr %est81, align 8
  %49 = load i32, ptr @jhash_rnd, align 4
  %add1.i.i.i = add i32 %49, -559038721
  %50 = ptrtoint ptr %name52 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %name52, align 8
  %add2.i.i.i = add i32 %51, %add1.i.i.i
  %add.ptr.i.i.i = getelementptr %struct.xt_rateest, ptr %call7.i.i, i32 0, i32 4, i32 4
  %52 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i.i.i, align 4
  %add4.i.i.i = add i32 %53, %add1.i.i.i
  %add.ptr5.i.i.i = getelementptr %struct.xt_rateest, ptr %call7.i.i, i32 0, i32 4, i32 8
  %54 = ptrtoint ptr %add.ptr5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr5.i.i.i, align 8
  %add7.i.i.i = add i32 %55, %add1.i.i.i
  %sub.i.i.i = sub i32 %add2.i.i.i, %add7.i.i.i
  %or.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add7.i.i.i, i32 %add7.i.i.i, i32 4) #11
  %xor.i.i.i = xor i32 %sub.i.i.i, %or.i.i.i.i
  %add9.i.i.i = add i32 %add7.i.i.i, %add4.i.i.i
  %sub10.i.i.i = sub i32 %add4.i.i.i, %xor.i.i.i
  %or.i1.i.i.i = call i32 @llvm.fshl.i32(i32 %xor.i.i.i, i32 %xor.i.i.i, i32 6) #11
  %xor12.i.i.i = xor i32 %sub10.i.i.i, %or.i1.i.i.i
  %add13.i.i.i = add i32 %xor.i.i.i, %add9.i.i.i
  %sub14.i.i.i = sub i32 %add9.i.i.i, %xor12.i.i.i
  %or.i2.i.i.i = call i32 @llvm.fshl.i32(i32 %xor12.i.i.i, i32 %xor12.i.i.i, i32 8) #11
  %xor16.i.i.i = xor i32 %sub14.i.i.i, %or.i2.i.i.i
  %add17.i.i.i = add i32 %xor12.i.i.i, %add13.i.i.i
  %sub18.i.i.i = sub i32 %add13.i.i.i, %xor16.i.i.i
  %or.i3.i.i.i = call i32 @llvm.fshl.i32(i32 %xor16.i.i.i, i32 %xor16.i.i.i, i32 16) #11
  %xor20.i.i.i = xor i32 %sub18.i.i.i, %or.i3.i.i.i
  %add21.i.i.i = add i32 %xor16.i.i.i, %add17.i.i.i
  %sub22.i.i.i = sub i32 %add17.i.i.i, %xor20.i.i.i
  %or.i4.i.i.i = call i32 @llvm.fshl.i32(i32 %xor20.i.i.i, i32 %xor20.i.i.i, i32 19) #11
  %xor24.i.i.i = xor i32 %sub22.i.i.i, %or.i4.i.i.i
  %add25.i.i.i = add i32 %xor20.i.i.i, %add21.i.i.i
  %sub26.i.i.i = sub i32 %add21.i.i.i, %xor24.i.i.i
  %or.i5.i.i.i = call i32 @llvm.fshl.i32(i32 %xor24.i.i.i, i32 %xor24.i.i.i, i32 4) #11
  %xor28.i.i.i = xor i32 %sub26.i.i.i, %or.i5.i.i.i
  %add29.i.i.i = add i32 %xor24.i.i.i, %add25.i.i.i
  %add.ptr31.i.i.i = getelementptr %struct.xt_rateest, ptr %call7.i.i, i32 0, i32 4, i32 12
  %arrayidx67.i.i.i = getelementptr %struct.xt_rateest, ptr %call7.i.i, i32 0, i32 4, i32 15
  %56 = ptrtoint ptr %arrayidx67.i.i.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx67.i.i.i, align 1
  %conv68.i.i.i = zext i8 %57 to i32
  %shl69.i.i.i = shl nuw i32 %conv68.i.i.i, 24
  %arrayidx72.i.i.i = getelementptr %struct.xt_rateest, ptr %call7.i.i, i32 0, i32 4, i32 14
  %58 = ptrtoint ptr %arrayidx72.i.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx72.i.i.i, align 2
  %conv73.i.i.i = zext i8 %59 to i32
  %shl74.i.i.i = shl nuw nsw i32 %conv73.i.i.i, 16
  %arrayidx77.i.i.i = getelementptr %struct.xt_rateest, ptr %call7.i.i, i32 0, i32 4, i32 13
  %60 = ptrtoint ptr %arrayidx77.i.i.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx77.i.i.i, align 1
  %conv78.i.i.i = zext i8 %61 to i32
  %shl79.i.i.i = shl nuw nsw i32 %conv78.i.i.i, 8
  %62 = ptrtoint ptr %add.ptr31.i.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr31.i.i.i, align 4
  %conv83.i.i.i = zext i8 %63 to i32
  %add70.i.i.i = or i32 %shl74.i.i.i, %shl69.i.i.i
  %add75.i.i.i = or i32 %add70.i.i.i, %shl79.i.i.i
  %add80.i.i.i = or i32 %add75.i.i.i, %conv83.i.i.i
  %add84.i.i.i = add i32 %add25.i.i.i, %add80.i.i.i
  %xor85.i.i.i = xor i32 %xor28.i.i.i, %add29.i.i.i
  %or.i6.i.i.i = call i32 @llvm.fshl.i32(i32 %add29.i.i.i, i32 %add29.i.i.i, i32 14) #11
  %sub87.i.i.i = sub i32 %xor85.i.i.i, %or.i6.i.i.i
  %xor88.i.i.i = xor i32 %sub87.i.i.i, %add84.i.i.i
  %or.i7.i.i.i = call i32 @llvm.fshl.i32(i32 %sub87.i.i.i, i32 %sub87.i.i.i, i32 11) #11
  %sub90.i.i.i = sub i32 %xor88.i.i.i, %or.i7.i.i.i
  %xor91.i.i.i = xor i32 %sub90.i.i.i, %add29.i.i.i
  %or.i8.i.i.i = call i32 @llvm.fshl.i32(i32 %sub90.i.i.i, i32 %sub90.i.i.i, i32 25) #11
  %sub93.i.i.i = sub i32 %xor91.i.i.i, %or.i8.i.i.i
  %xor94.i.i.i = xor i32 %sub93.i.i.i, %sub87.i.i.i
  %or.i9.i.i.i = call i32 @llvm.fshl.i32(i32 %sub93.i.i.i, i32 %sub93.i.i.i, i32 16) #11
  %sub96.i.i.i = sub i32 %xor94.i.i.i, %or.i9.i.i.i
  %xor97.i.i.i = xor i32 %sub96.i.i.i, %sub90.i.i.i
  %or.i10.i.i.i = call i32 @llvm.fshl.i32(i32 %sub96.i.i.i, i32 %sub96.i.i.i, i32 4) #11
  %sub99.i.i.i = sub i32 %xor97.i.i.i, %or.i10.i.i.i
  %xor100.i.i.i = xor i32 %sub99.i.i.i, %sub93.i.i.i
  %or.i11.i.i.i = lshr i32 %sub99.i.i.i, 18
  %sub102.i.i.i = sub i32 %xor100.i.i.i, %or.i11.i.i.i
  %xor103.i.i.i = xor i32 %sub102.i.i.i, %sub96.i.i.i
  %or.i12.i.i.i = lshr i32 %sub102.i.i.i, 8
  %sub105.i.i.i = sub i32 %xor103.i.i.i, %or.i12.i.i.i
  %and.i.i = and i32 %sub105.i.i.i, 15
  %list.i126 = getelementptr inbounds %struct.xt_rateest, ptr %call7.i.i, i32 0, i32 3
  %arrayidx.i = getelementptr %struct.xt_rateest_net, ptr %call, i32 0, i32 1, i32 %and.i.i
  %64 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.i, align 4
  %66 = ptrtoint ptr %list.i126 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %65, ptr %list.i126, align 8
  %tobool.not.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i, label %if.end80.xt_rateest_hash_insert.exit_crit_edge, label %do.body12.i.i

if.end80.xt_rateest_hash_insert.exit_crit_edge:   ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %xt_rateest_hash_insert.exit

do.body12.i.i:                                    ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  %pprev.i.i = getelementptr inbounds %struct.hlist_node, ptr %65, i32 0, i32 1
  %67 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %list.i126, ptr %pprev.i.i, align 4
  br label %xt_rateest_hash_insert.exit

xt_rateest_hash_insert.exit:                      ; preds = %do.body12.i.i, %if.end80.xt_rateest_hash_insert.exit_crit_edge
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %list.i126, ptr %arrayidx.i, align 4
  %pprev34.i.i = getelementptr inbounds %struct.xt_rateest, ptr %call7.i.i, i32 0, i32 3, i32 1
  %69 = ptrtoint ptr %pprev34.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %arrayidx.i, ptr %pprev34.i.i, align 4
  call void @mutex_unlock(ptr noundef %call) #11
  br label %cleanup

err2:                                             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %err1

err1:                                             ; preds = %err2, %if.end47.err1_crit_edge
  %ret.0 = phi i32 [ %call76, %err2 ], [ -12, %if.end47.err1_crit_edge ]
  call void @mutex_unlock(ptr noundef %call) #11
  br label %cleanup

cleanup:                                          ; preds = %err1, %xt_rateest_hash_insert.exit, %if.end45, %xt_rateest_put.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %xt_rateest_put.exit ], [ 0, %if.end45 ], [ %ret.0, %err1 ], [ 0, %xt_rateest_hash_insert.exit ], [ -36, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %cfg) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xt_rateest_tg_destroy(ptr nocapture noundef readonly %par) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %est = getelementptr inbounds %struct.xt_rateest_target_info, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %est to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %est, align 8
  tail call void @xt_rateest_put(ptr noundef %3, ptr noundef %5)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__do_once_start(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__do_once_done(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @gnet_stats_basic_sync_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_new_estimator(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_rateest_net_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @xt_rateest_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  tail call void @__mutex_init(ptr noundef %call, ptr noundef nonnull @.str.6, ptr noundef nonnull @xt_rateest_net_init.__key) #11
  %uglygep = getelementptr i8, ptr %call, i32 92
  %1 = call ptr @memset(ptr %uglygep, i32 0, i32 64)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_target(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !27, !28, !29, !31, !32, !34, !36, !38, !39, !41, !42, !44, !46}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__ksymtab_xt_rateest_lookup, !1, !"__ksymtab_xt_rateest_lookup", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_RATEEST.c", i32 73, i32 1}
!2 = !{ptr @__ksymtab_xt_rateest_put, !3, !"__ksymtab_xt_rateest_put", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_RATEEST.c", i32 91, i32 1}
!4 = !{ptr @__UNIQUE_ID_author359, !5, !"__UNIQUE_ID_author359", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_RATEEST.c", i32 227, i32 1}
!6 = !{ptr @__UNIQUE_ID_file360, !7, !"__UNIQUE_ID_file360", i1 false, i1 false}
!7 = !{!"../net/netfilter/xt_RATEEST.c", i32 228, i32 1}
!8 = !{ptr @__UNIQUE_ID_license361, !7, !"__UNIQUE_ID_license361", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_description362, !10, !"__UNIQUE_ID_description362", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_RATEEST.c", i32 229, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias363, !12, !"__UNIQUE_ID_alias363", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_RATEEST.c", i32 230, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias364, !14, !"__UNIQUE_ID_alias364", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_RATEEST.c", i32 231, i32 1}
!15 = !{ptr @__initcall__kmod_xt_RATEEST__365_232_xt_rateest_tg_init6, !16, !"__initcall__kmod_xt_RATEEST__365_232_xt_rateest_tg_init6", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_RATEEST.c", i32 232, i32 1}
!17 = !{ptr @__exitcall_xt_rateest_tg_fini, !18, !"__exitcall_xt_rateest_tg_fini", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_RATEEST.c", i32 233, i32 1}
!19 = !{ptr @xt_rateest_id, !20, !"xt_rateest_id", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_RATEEST.c", i32 27, i32 21}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!23 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!27 = !{ptr @.str.2, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!31 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @jhash_rnd, !33, !"jhash_rnd", i1 false, i1 false}
!33 = !{!"../net/netfilter/xt_RATEEST.c", i32 29, i32 21}
!34 = !{ptr @xt_rateest_tg_reg, !35, !"xt_rateest_tg_reg", i1 false, i1 false}
!35 = !{!"../net/netfilter/xt_RATEEST.c", i32 182, i32 25}
!36 = !{ptr @xt_rateest_tg_checkentry.___done, !37, !"___done", i1 false, i1 false}
!37 = !{!"../net/netfilter/xt_RATEEST.c", i32 121, i32 2}
!38 = !{ptr @xt_rateest_tg_checkentry.___once_key, !37, !"___once_key", i1 false, i1 false}
!39 = !{ptr @xt_rateest_tg_checkentry.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../net/netfilter/xt_RATEEST.c", i32 148, i32 2}
!41 = !{ptr @.str.5, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @xt_rateest_net_ops, !43, !"xt_rateest_net_ops", i1 false, i1 false}
!43 = !{!"../net/netfilter/xt_RATEEST.c", i32 205, i32 33}
!44 = !{ptr @xt_rateest_net_init.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../net/netfilter/xt_RATEEST.c", i32 199, i32 2}
!46 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 2149359958}
!58 = !{i64 2149360224}
!59 = !{i64 2148957579, i64 2148957584, i64 2148957605, i64 2148957649, i64 2148957683, i64 2148957704}
!60 = !{!"auto-init"}
!61 = !{!"branch_weights", i32 1, i32 2000}
