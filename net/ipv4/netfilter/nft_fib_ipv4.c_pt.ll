; ModuleID = '/llk/IR_all_yes/net/ipv4/netfilter/nft_fib_ipv4.c_pt.bc'
source_filename = "../net/ipv4/netfilter/nft_fib_ipv4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nft_fib4_eval_type\22, \22a\22\09"
module asm "\09.weak\09__crc_nft_fib4_eval_type\09\09\09\09"
module asm "\09.long\09__crc_nft_fib4_eval_type\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nft_fib4_eval_type:\09\09\09\09\09"
module asm "\09.asciz \09\22nft_fib4_eval_type\22\09\09\09\09\09"
module asm "__kstrtabns_nft_fib4_eval_type:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+nft_fib4_eval\22, \22a\22\09"
module asm "\09.weak\09__crc_nft_fib4_eval\09\09\09\09"
module asm "\09.long\09__crc_nft_fib4_eval\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nft_fib4_eval:\09\09\09\09\09"
module asm "\09.asciz \09\22nft_fib4_eval\22\09\09\09\09\09"
module asm "__kstrtabns_nft_fib4_eval:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.sk_buff = type { %union.anon.82, %union.anon.109, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.109 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.fib_result = type { i32, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.108, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.108 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.139, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.139 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
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

@__kstrtab_nft_fib4_eval_type = external dso_local constant [0 x i8], align 1
@__kstrtabns_nft_fib4_eval_type = external dso_local constant [0 x i8], align 1
@__ksymtab_nft_fib4_eval_type = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nft_fib4_eval_type to i32), ptr @__kstrtab_nft_fib4_eval_type, ptr @__kstrtabns_nft_fib4_eval_type }, section "___ksymtab_gpl+nft_fib4_eval_type", align 4
@__kstrtab_nft_fib4_eval = external dso_local constant [0 x i8], align 1
@__kstrtabns_nft_fib4_eval = external dso_local constant [0 x i8], align 1
@__ksymtab_nft_fib4_eval = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nft_fib4_eval to i32), ptr @__kstrtab_nft_fib4_eval, ptr @__kstrtabns_nft_fib4_eval }, section "___ksymtab_gpl+nft_fib4_eval", align 4
@nft_fib4_type = internal global %struct.nft_expr_type { ptr @nft_fib4_select_ops, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @.str.6, ptr null, ptr @nft_fib_policy, i32 3, i8 2, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_fib_ipv4__551_208_nft_fib4_module_init6 = internal global ptr @nft_fib4_module_init, section ".initcall6.init", align 4
@__exitcall_nft_fib4_module_exit = internal global ptr @nft_fib4_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file552 = internal constant [50 x i8] c"nft_fib_ipv4.file=net/ipv4/netfilter/nft_fib_ipv4\00", section ".modinfo", align 1
@__UNIQUE_ID_license553 = internal constant [25 x i8] c"nft_fib_ipv4.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author554 = internal constant [52 x i8] c"nft_fib_ipv4.author=Florian Westphal <fw@strlen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias555 = internal constant [34 x i8] c"nft_fib_ipv4.alias=nft-expr-2-fib\00", section ".modinfo", align 1
@__UNIQUE_ID_description556 = internal constant [64 x i8] c"nft_fib_ipv4.description=nftables fib / ip route lookup support\00", section ".modinfo", align 1
@fib_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/net/ip_fib.h\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@fib_lookup.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fib\00", [28 x i8] zeroinitializer }, align 32
@nft_fib_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@nft_fib4_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_fib4_eval, ptr null, i32 16, ptr @nft_fib_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_fib_dump, ptr @nft_fib_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_fib4_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_fib4_type_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_fib4_eval_type, ptr null, i32 16, ptr @nft_fib_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_fib_dump, ptr @nft_fib_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_fib4_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@switch.table.nft_fib4_select_ops = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @nft_fib4_ops, ptr @nft_fib4_ops, ptr @nft_fib4_type_ops], [20 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [24 x i8] c"../include/net/ip_fib.h\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 380, i32 7 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 695, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 723, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 190, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [13 x i8] c"nft_fib4_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 157, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"nft_fib4_type_ops\00", align 1
@___asan_gen_.29 = private constant [37 x i8] c"../net/ipv4/netfilter/nft_fib_ipv4.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 148, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [33 x i8] c"switch.table.nft_fib4_select_ops\00", align 1
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_alias555, ptr @__UNIQUE_ID_author554, ptr @__UNIQUE_ID_description556, ptr @__UNIQUE_ID_file552, ptr @__UNIQUE_ID_license553, ptr @__exitcall_nft_fib4_module_exit, ptr @__initcall__kmod_nft_fib_ipv4__551_208_nft_fib4_module_init6, ptr @__ksymtab_nft_fib4_eval, ptr @__ksymtab_nft_fib4_eval_type, ptr @nft_fib4_module_exit, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @nft_fib4_ops, ptr @nft_fib4_type_ops, ptr @switch.table.nft_fib4_select_ops], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_fib4_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_fib4_type_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nft_fib4_select_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_fib4_eval_type(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #0 align 64 {
entry:
  %_iph = alloca %struct.iphdr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %data.i38 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %data.i38 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i38, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data.i, align 4
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph) #7
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %10 = call ptr @memset(ptr %_iph, i32 255, i32 20)
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state.i, align 4
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %14, i32 0, i32 2
  br label %if.end8.sink.split

if.else:                                          ; preds = %entry
  %and4 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.if.end8_crit_edge, label %if.then6

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %state.i39 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %15 = ptrtoint ptr %state.i39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %state.i39, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %16, i32 0, i32 3
  br label %if.end8.sink.split

if.end8.sink.split:                               ; preds = %if.then6, %if.then
  %out.i.sink = phi ptr [ %out.i, %if.then6 ], [ %in.i, %if.then ]
  %17 = ptrtoint ptr %out.i.sink to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %out.i.sink, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end8.sink.split, %if.else.if.end8_crit_edge
  %dev.0 = phi ptr [ null, %if.else.if.end8_crit_edge ], [ %18, %if.end8.sink.split ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %21 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i, align 8
  %23 = add i32 %sub.ptr.sub.i, %22
  %sub.i1.i = sub i32 %20, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 19
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !48

if.end.i.i:                                       ; preds = %if.end8
  %tobool2.not.i.i = icmp eq ptr %1, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then12_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then12_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull %_iph, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then12_crit_edge, label %lor.lhs.false.i.i.if.end13_crit_edge

lor.lhs.false.i.i.if.end13_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

lor.lhs.false.i.i.if.then12_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

skb_header_pointer.exit:                          ; preds = %if.end8
  %add.ptr.i.i41 = getelementptr i8, ptr %7, i32 %sub.ptr.sub.i
  %tobool11.not = icmp eq ptr %add.ptr.i.i41, null
  br i1 %tobool11.not, label %skb_header_pointer.exit.if.then12_crit_edge, label %skb_header_pointer.exit.if.end13_crit_edge

skb_header_pointer.exit.if.end13_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

skb_header_pointer.exit.if.then12_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

if.then12:                                        ; preds = %skb_header_pointer.exit.if.then12_crit_edge, %lor.lhs.false.i.i.if.then12_crit_edge, %if.end.i.i.if.then12_crit_edge
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

if.end13:                                         ; preds = %skb_header_pointer.exit.if.end13_crit_edge, %lor.lhs.false.i.i.if.end13_crit_edge
  %retval.0.i.i48 = phi ptr [ %add.ptr.i.i41, %skb_header_pointer.exit.if.end13_crit_edge ], [ %_iph, %lor.lhs.false.i.i.if.end13_crit_edge ]
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and15 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %daddr = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i48, i32 0, i32 9
  %saddr = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i48, i32 0, i32 8
  %addr.0.in = select i1 %tobool16.not, ptr %saddr, ptr %daddr
  %27 = ptrtoint ptr %addr.0.in to i32
  call void @__asan_load4_noabort(i32 %27)
  %addr.0 = load i32, ptr %addr.0.in, align 4
  %state.i42 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %28 = ptrtoint ptr %state.i42 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state.i42, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %net.i, align 4
  %call21 = call i32 @inet_dev_addr_type(ptr noundef %31, ptr noundef %dev.0, i32 noundef %addr.0) #7
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call21, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @inet_dev_addr_type(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_fib4_eval(ptr noundef %expr, ptr noundef %regs, ptr nocapture noundef readonly %pkt) #0 align 64 {
entry:
  %_iph = alloca %struct.iphdr, align 4
  %res = alloca %struct.fib_result, align 4
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %4 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %data.i108 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %data.i108 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i108, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data.i, align 4
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph) #7
  %10 = call ptr @memset(ptr %_iph, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %res) #7
  %11 = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 3
  %12 = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 5
  %13 = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 6
  %14 = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 7
  %15 = call ptr @memset(ptr %res, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #7
  %16 = call ptr @memset(ptr %fl4, i32 0, i32 56)
  %17 = getelementptr inbounds { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32, [4 x i8] }, ptr %fl4, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %17, align 4
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %21 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %state.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %22, i32 0, i32 3
  br label %if.end9.sink.split

if.else:                                          ; preds = %entry
  %and4 = and i32 %20, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.else.if.end9_crit_edge, label %if.then6

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %state.i109 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %23 = ptrtoint ptr %state.i109 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %state.i109, align 4
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %24, i32 0, i32 2
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.then6, %if.then
  %in.i.sink = phi ptr [ %in.i, %if.then6 ], [ %out.i, %if.then ]
  %25 = ptrtoint ptr %in.i.sink to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %in.i.sink, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.else.if.end9_crit_edge
  %oif.0 = phi ptr [ null, %if.else.if.end9_crit_edge ], [ %26, %if.end9.sink.split ]
  %state.i110 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %27 = ptrtoint ptr %state.i110 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %state.i110, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %cmp = icmp eq i8 %30, 0
  br i1 %cmp, label %land.lhs.true, label %if.end9.if.end16_crit_edge

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end9
  %in.i112 = getelementptr inbounds %struct.nf_hook_state, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %in.i112 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %in.i112, align 4
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %33 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.lshr.mask.i = and i16 %bf.load.i, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask.i)
  %cmp.i = icmp eq i16 %bf.lshr.mask.i, -24576
  br i1 %cmp.i, label %land.lhs.true.if.then14_crit_edge, label %nft_fib_is_loopback.exit

land.lhs.true.if.then14_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

nft_fib_is_loopback.exit:                         ; preds = %land.lhs.true
  %flags.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 14
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %35, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %nft_fib_is_loopback.exit.if.end16_crit_edge, label %nft_fib_is_loopback.exit.if.then14_crit_edge

nft_fib_is_loopback.exit.if.then14_crit_edge:     ; preds = %nft_fib_is_loopback.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

nft_fib_is_loopback.exit.if.end16_crit_edge:      ; preds = %nft_fib_is_loopback.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then14:                                        ; preds = %nft_fib_is_loopback.exit.if.then14_crit_edge, %land.lhs.true.if.then14_crit_edge
  tail call void @nft_fib_store_result(ptr noundef %arrayidx, ptr noundef %data.i, ptr noundef %32) #7
  br label %cleanup

if.end16:                                         ; preds = %nft_fib_is_loopback.exit.if.end16_crit_edge, %if.end9.if.end16_crit_edge
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %38 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i.i, align 8
  %40 = add i32 %sub.ptr.sub.i, %39
  %sub.i1.i = sub i32 %37, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 19
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !48

if.end.i.i:                                       ; preds = %if.end16
  %tobool2.not.i.i = icmp eq ptr %1, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then20_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then20_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull %_iph, i32 noundef 20) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then20_crit_edge, label %lor.lhs.false.i.i.if.end21_crit_edge

lor.lhs.false.i.i.if.end21_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

lor.lhs.false.i.i.if.then20_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

skb_header_pointer.exit:                          ; preds = %if.end16
  %add.ptr.i.i116 = getelementptr i8, ptr %7, i32 %sub.ptr.sub.i
  %tobool19.not = icmp eq ptr %add.ptr.i.i116, null
  br i1 %tobool19.not, label %skb_header_pointer.exit.if.then20_crit_edge, label %skb_header_pointer.exit.if.end21_crit_edge

skb_header_pointer.exit.if.end21_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

skb_header_pointer.exit.if.then20_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

if.then20:                                        ; preds = %skb_header_pointer.exit.if.then20_crit_edge, %lor.lhs.false.i.i.if.then20_crit_edge, %if.end.i.i.if.then20_crit_edge
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

if.end21:                                         ; preds = %skb_header_pointer.exit.if.end21_crit_edge, %lor.lhs.false.i.i.if.end21_crit_edge
  %retval.0.i.i138 = phi ptr [ %add.ptr.i.i116, %skb_header_pointer.exit.if.end21_crit_edge ], [ %_iph, %lor.lhs.false.i.i.if.end21_crit_edge ]
  %saddr = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i138, i32 0, i32 8
  %42 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp.i117 = icmp eq i32 %43, 0
  br i1 %cmp.i117, label %if.then23, label %if.end21.if.end30_crit_edge

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then23:                                        ; preds = %if.end21
  %daddr = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i138, i32 0, i32 9
  %44 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %daddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %45)
  %cmp.i118 = icmp eq i32 %45, -1
  %and.i119 = and i32 %45, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i119)
  %cmp.i120 = icmp eq i32 %and.i119, -536870912
  %or.cond = or i1 %cmp.i118, %cmp.i120
  br i1 %or.cond, label %if.then27, label %if.then23.if.end30_crit_edge

if.then23.if.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then27:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pkt, align 4
  %48 = getelementptr inbounds %struct.anon.83, ptr %47, i32 0, i32 2
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 8
  call void @nft_fib_store_result(ptr noundef %arrayidx, ptr noundef %data.i, ptr noundef %50) #7
  br label %cleanup

if.end30:                                         ; preds = %if.then23.if.end30_crit_edge, %if.end21.if.end30_crit_edge
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags, align 4
  %and32 = and i32 %52, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %if.end30.if.end36_crit_edge, label %if.then34

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pkt, align 4
  %55 = getelementptr inbounds %struct.sk_buff, ptr %54, i32 0, i32 15, i32 0, i32 13
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 2
  %58 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %flowic_mark, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end30.if.end36_crit_edge
  %tos = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i138, i32 0, i32 1
  %59 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %tos, align 1
  %61 = and i8 %60, -4
  %flowic_tos = getelementptr inbounds %struct.flowi_common, ptr %fl4, i32 0, i32 3
  %62 = ptrtoint ptr %flowic_tos to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %flowic_tos, align 4
  %and41 = and i32 %52, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.else49, label %if.then43

if.then43:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %daddr44 = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i138, i32 0, i32 9
  %63 = ptrtoint ptr %daddr44 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %daddr44, align 4
  %daddr45 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %65 = ptrtoint ptr %daddr45 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %daddr45, align 4
  br label %if.end55

if.else49:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %saddr, align 4
  %daddr51 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %68 = ptrtoint ptr %daddr51 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %daddr51, align 4
  %daddr52 = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i138, i32 0, i32 9
  br label %if.end55

if.end55:                                         ; preds = %if.else49, %if.then43
  %daddr52.sink = phi ptr [ %daddr52, %if.else49 ], [ %saddr, %if.then43 ]
  %69 = ptrtoint ptr %daddr52.sink to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %daddr52.sink, align 4
  %and.i.i122 = and i32 %70, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i122)
  %cmp.i.i123 = icmp eq i32 %and.i.i122, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %70)
  %cmp.i7.i124 = icmp eq i32 %70, -1
  %or.cond.i125 = or i1 %cmp.i7.i124, %cmp.i.i123
  %spec.select.i126 = select i1 %or.cond.i125, i32 0, i32 %70
  %71 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %spec.select.i126, ptr %71, align 8
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %arrayidx, align 4
  %74 = ptrtoint ptr %state.i110 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %state.i110, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %net.i, align 4
  %fib_has_custom_rules.i = getelementptr inbounds %struct.net, ptr %77, i32 0, i32 35, i32 14
  %78 = ptrtoint ptr %fib_has_custom_rules.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %fib_has_custom_rules.i, align 4, !range !49
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i = icmp eq i8 %79, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 @__fib_lookup(ptr noundef %77, ptr noundef nonnull %fl4, ptr noundef nonnull %res, i32 noundef 3) #7
  br label %fib_lookup.exit

if.end.i:                                         ; preds = %if.end55
  %80 = call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i.i = and i32 %80, -16384
  %81 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %83, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !50
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i.i128 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i.i128, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i129

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit.i

if.then.i.i129:                                   ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #7
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i129, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %84 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 0, ptr %12, align 4
  %fib_main.i = getelementptr inbounds %struct.net, ptr %77, i32 0, i32 35, i32 11
  %85 = ptrtoint ptr %fib_main.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile ptr, ptr %fib_main.i, align 8
  %call3.i = call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call3.i, label %rcu_read_lock.exit.i.do.end13.i_crit_edge, label %lor.lhs.false.i

rcu_read_lock.exit.i.do.end13.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

lor.lhs.false.i:                                  ; preds = %rcu_read_lock.exit.i
  %call4.i = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end13.i_crit_edge

lor.lhs.false.i.do.end13.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call6.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.do.end13.i_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.do.end13.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @fib_lookup.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true8.i.do.end13.i_crit_edge, label %if.then10.i

land.lhs.true8.i.do.end13.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end13.i

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @fib_lookup.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 380, ptr noundef nonnull @.str.1) #7
  br label %do.end13.i

do.end13.i:                                       ; preds = %if.then10.i, %land.lhs.true8.i.do.end13.i_crit_edge, %land.lhs.true.i.do.end13.i_crit_edge, %lor.lhs.false.i.do.end13.i_crit_edge, %rcu_read_lock.exit.i.do.end13.i_crit_edge
  %tobool15.not.i = icmp eq ptr %86, null
  br i1 %tobool15.not.i, label %do.end13.i.if.end21.i_crit_edge, label %if.end18.i

do.end13.i.if.end21.i_crit_edge:                  ; preds = %do.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.end18.i:                                       ; preds = %do.end13.i
  %call17.i = call i32 @fib_table_lookup(ptr noundef nonnull %86, ptr noundef nonnull %fl4, ptr noundef nonnull %res, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool19.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool19.not.i, label %if.end18.i.out.thread.i_crit_edge, label %if.end18.i.if.end21.i_crit_edge

if.end18.i.if.end21.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21.i

if.end18.i.out.thread.i_crit_edge:                ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.thread.i

if.end21.i:                                       ; preds = %if.end18.i.if.end21.i_crit_edge, %do.end13.i.if.end21.i_crit_edge
  %err.014.i = phi i32 [ %call17.i, %if.end18.i.if.end21.i_crit_edge ], [ -101, %do.end13.i.if.end21.i_crit_edge ]
  %fib_default.i = getelementptr inbounds %struct.net, ptr %77, i32 0, i32 35, i32 12
  %87 = ptrtoint ptr %fib_default.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile ptr, ptr %fib_default.i, align 4
  %call28.i = call zeroext i1 @lockdep_rtnl_is_held() #7
  br i1 %call28.i, label %if.end21.i.do.end40.i_crit_edge, label %lor.lhs.false29.i

if.end21.i.do.end40.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

lor.lhs.false29.i:                                ; preds = %if.end21.i
  %call30.i = call i32 @rcu_read_lock_held() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %tobool31.not.i = icmp eq i32 %call30.i, 0
  br i1 %tobool31.not.i, label %land.lhs.true32.i, label %lor.lhs.false29.i.do.end40.i_crit_edge

lor.lhs.false29.i.do.end40.i_crit_edge:           ; preds = %lor.lhs.false29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

land.lhs.true32.i:                                ; preds = %lor.lhs.false29.i
  %call33.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %land.lhs.true32.i.do.end40.i_crit_edge, label %land.lhs.true35.i

land.lhs.true32.i.do.end40.i_crit_edge:           ; preds = %land.lhs.true32.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

land.lhs.true35.i:                                ; preds = %land.lhs.true32.i
  %.b661.i = load i1, ptr @fib_lookup.__warned.2, align 1
  br i1 %.b661.i, label %land.lhs.true35.i.do.end40.i_crit_edge, label %if.then37.i

land.lhs.true35.i.do.end40.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end40.i

if.then37.i:                                      ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @fib_lookup.__warned.2, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 387, ptr noundef nonnull @.str.1) #7
  br label %do.end40.i

do.end40.i:                                       ; preds = %if.then37.i, %land.lhs.true35.i.do.end40.i_crit_edge, %land.lhs.true32.i.do.end40.i_crit_edge, %lor.lhs.false29.i.do.end40.i_crit_edge, %if.end21.i.do.end40.i_crit_edge
  %tobool42.not.i = icmp eq ptr %88, null
  br i1 %tobool42.not.i, label %do.end40.i.out.i132_crit_edge, label %if.then43.i

do.end40.i.out.i132_crit_edge:                    ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out.i132

if.then43.i:                                      ; preds = %do.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  %call44.i = call i32 @fib_table_lookup(ptr noundef nonnull %88, ptr noundef nonnull %fl4, ptr noundef nonnull %res, i32 noundef 3) #7
  br label %out.i132

out.i132:                                         ; preds = %if.then43.i, %do.end40.i.out.i132_crit_edge
  %err.1.i = phi i32 [ %call44.i, %if.then43.i ], [ %err.014.i, %do.end40.i.out.i132_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %err.1.i)
  %cmp.i130 = icmp eq i32 %err.1.i, -11
  %spec.select.i131 = select i1 %cmp.i130, i32 -101, i32 %err.1.i
  br label %out.thread.i

out.thread.i:                                     ; preds = %out.i132, %if.end18.i.out.thread.i_crit_edge
  %89 = phi i32 [ 0, %if.end18.i.out.thread.i_crit_edge ], [ %spec.select.i131, %out.i132 ]
  %call.i3.i = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i3.i, label %out.thread.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i6.i

out.thread.i.rcu_read_unlock.exit.i_crit_edge:    ; preds = %out.thread.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true.i6.i:                               ; preds = %out.thread.i
  %call1.i4.i = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool.not.i5.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool.not.i5.i, label %land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i8.i

land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i8.i:                              ; preds = %land.lhs.true.i6.i
  %.b4.i7.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i, label %land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i9.i

land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit.i

if.then.i9.i:                                     ; preds = %land.lhs.true2.i8.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #7
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i9.i, %land.lhs.true2.i8.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i6.i.rcu_read_unlock.exit.i_crit_edge, %out.thread.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !51
  %90 = call i32 @llvm.read_register.i32(metadata !38) #7
  %and.i.i.i.i.i10.i = and i32 %90, -16384
  %91 = inttoptr i32 %and.i.i.i.i.i10.i to ptr
  %preempt_count.i.i.i.i11.i = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %preempt_count.i.i.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %preempt_count.i.i.i.i11.i, align 4
  %sub.i.i.i.i = add i32 %93, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i11.i, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  br label %fib_lookup.exit

fib_lookup.exit:                                  ; preds = %rcu_read_unlock.exit.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %89, %rcu_read_unlock.exit.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool58.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool58.not, label %if.end60, label %fib_lookup.exit.cleanup_crit_edge

fib_lookup.exit.cleanup_crit_edge:                ; preds = %fib_lookup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end60:                                         ; preds = %fib_lookup.exit
  %94 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %11, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %95)
  %cond = icmp eq i8 %95, 2
  br i1 %cond, label %if.end60.cleanup_crit_edge, label %sw.epilog

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.end60
  %tobool62.not = icmp eq ptr %oif.0, null
  br i1 %tobool62.not, label %if.then63, label %if.else64

if.then63:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %13, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 4
  br label %if.end68

if.else64:                                        ; preds = %sw.epilog
  %100 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %14, align 4
  %call65 = call zeroext i1 @fib_info_nh_uses_dev(ptr noundef %101, ptr noundef nonnull %oif.0) #7
  br i1 %call65, label %if.else64.if.end68_crit_edge, label %if.else64.cleanup_crit_edge

if.else64.cleanup_crit_edge:                      ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else64.if.end68_crit_edge:                     ; preds = %if.else64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.end68:                                         ; preds = %if.else64.if.end68_crit_edge, %if.then63
  %found.0 = phi ptr [ %99, %if.then63 ], [ %oif.0, %if.else64.if.end68_crit_edge ]
  call void @nft_fib_store_result(ptr noundef %arrayidx, ptr noundef %data.i, ptr noundef %found.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end68, %if.else64.cleanup_crit_edge, %if.end60.cleanup_crit_edge, %fib_lookup.exit.cleanup_crit_edge, %if.then27, %if.then20, %if.then14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %res) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_fib_store_result(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fib_info_nh_uses_dev(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_fib4_module_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_fib4_type) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_fib4_module_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_fib4_type) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fib_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_table_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @nft_fib4_select_ops(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %tb) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 3
  br i1 %4, label %switch.lookup, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.nft_fib4_select_ops, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %switch.load, %switch.lookup ], [ inttoptr (i32 -95 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_fib_init(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_fib_dump(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_fib_validate(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !20, !21, !23, !25, !26, !27, !29, !30, !32, !34, !36}
!llvm.named.register.sp = !{!38}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__ksymtab_nft_fib4_eval_type, !1, !"__ksymtab_nft_fib4_eval_type", i1 false, i1 false}
!1 = !{!"../net/ipv4/netfilter/nft_fib_ipv4.c", i32 55, i32 1}
!2 = !{ptr @__ksymtab_nft_fib4_eval, !3, !"__ksymtab_nft_fib4_eval", i1 false, i1 false}
!3 = !{!"../net/ipv4/netfilter/nft_fib_ipv4.c", i32 144, i32 1}
!4 = !{ptr @__initcall__kmod_nft_fib_ipv4__551_208_nft_fib4_module_init6, !5, !"__initcall__kmod_nft_fib_ipv4__551_208_nft_fib4_module_init6", i1 false, i1 false}
!5 = !{!"../net/ipv4/netfilter/nft_fib_ipv4.c", i32 208, i32 1}
!6 = !{ptr @__exitcall_nft_fib4_module_exit, !7, !"__exitcall_nft_fib4_module_exit", i1 false, i1 false}
!7 = !{!"../net/ipv4/netfilter/nft_fib_ipv4.c", i32 209, i32 1}
!8 = !{ptr @__UNIQUE_ID_file552, !9, !"__UNIQUE_ID_file552", i1 false, i1 false}
!9 = !{!"../net/ipv4/netfilter/nft_fib_ipv4.c", i32 210, i32 1}
!10 = !{ptr @__UNIQUE_ID_license553, !9, !"__UNIQUE_ID_license553", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_author554, !12, !"__UNIQUE_ID_author554", i1 false, i1 false}
!12 = !{!"../net/ipv4/netfilter/nft_fib_ipv4.c", i32 211, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias555, !14, !"__UNIQUE_ID_alias555", i1 false, i1 false}
!14 = !{!"../net/ipv4/netfilter/nft_fib_ipv4.c", i32 212, i32 1}
!15 = !{ptr @__UNIQUE_ID_description556, !16, !"__UNIQUE_ID_description556", i1 false, i1 false}
!16 = !{!"../net/ipv4/netfilter/nft_fib_ipv4.c", i32 213, i32 1}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/net/ip_fib.h", i32 380, i32 7}
!19 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/net/ip_fib.h", i32 387, i32 7}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../net/ipv4/netfilter/nft_fib_ipv4.c", i32 190, i32 11}
!32 = !{ptr @nft_fib4_type, !33, !"nft_fib4_type", i1 false, i1 false}
!33 = !{!"../net/ipv4/netfilter/nft_fib_ipv4.c", i32 189, i32 29}
!34 = !{ptr @nft_fib4_ops, !35, !"nft_fib4_ops", i1 false, i1 false}
!35 = !{!"../net/ipv4/netfilter/nft_fib_ipv4.c", i32 157, i32 34}
!36 = !{ptr @nft_fib4_type_ops, !37, !"nft_fib4_type_ops", i1 false, i1 false}
!37 = !{!"../net/ipv4/netfilter/nft_fib_ipv4.c", i32 148, i32 34}
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
!49 = !{i8 0, i8 2}
!50 = !{i64 2149359319}
!51 = !{i64 2149359585}
