; ModuleID = '/llk/IR_all_yes/net/ipv6/fib6_rules.c_pt.bc'
source_filename = "../net/ipv6/fib6_rules.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fib6_rule_default\22, \22a\22\09"
module asm "\09.weak\09__crc_fib6_rule_default\09\09\09\09"
module asm "\09.long\09__crc_fib6_rule_default\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib6_rule_default:\09\09\09\09\09"
module asm "\09.asciz \09\22fib6_rule_default\22\09\09\09\09\09"
module asm "__kstrtabns_fib6_rule_default:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.fib_rules_ops = type { i32, %struct.list_head, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, ptr, ptr, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.147, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.147 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.fib6_rule = type { %struct.fib_rule, %struct.rt6key, %struct.rt6key, i8 }
%struct.fib_rule = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i64, ptr, ptr, %struct.refcount_struct, i32, i32, i32, [16 x i8], [16 x i8], %struct.fib_kuid_range, %struct.fib_rule_port_range, %struct.fib_rule_port_range, %struct.callback_head }
%struct.fib_kuid_range = type { %struct.kuid_t, %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.fib_rule_port_range = type { i16, i16 }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.103 }
%union.anon.103 = type { [4 x i32] }
%struct.fib_lookup_arg = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.fib6_result = type { ptr, ptr, i32, i8, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.flowi6 = type { %struct.flowi_common, %struct.in6_addr, %struct.in6_addr, i32, %union.flowi_uli, i32 }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.116, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.116 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.anon.104 = type { i16, i16 }
%struct.sk_buff = type { %union.anon.82, %union.anon.117, %union.anon.118, [48 x i8], %union.anon.119, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.121, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.117 = type { ptr }
%union.anon.118 = type { i64 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i32, ptr }
%union.anon.121 = type { %struct.anon.122 }
%struct.anon.122 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.123, i32, i32, i32, i16, i16, %union.anon.125, i32, %union.anon.126, %union.anon.127, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.123 = type { i32 }
%union.anon.125 = type { i32 }
%union.anon.126 = type { i32 }
%union.anon.127 = type { i16 }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.135, [0 x i32], %union.anon.136, i16, i16, %union.anon.137, %struct.refcount_struct, [0 x i32], %union.anon.138 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { %struct.hlist_node }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i32 }
%struct.fib_rule_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8, i32 }

@__kstrtab_fib6_rule_default = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib6_rule_default = external dso_local constant [0 x i8], align 1
@__ksymtab_fib6_rule_default = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib6_rule_default to i32), ptr @__kstrtab_fib6_rule_default, ptr @__kstrtabns_fib6_rule_default }, section "___ksymtab_gpl+fib6_rule_default", align 4
@fib6_rules_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @fib6_rules_net_init, ptr null, ptr @fib6_rules_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@fib6_rules_ops_template = internal constant { %struct.fib_rules_ops, [32 x i8] } { %struct.fib_rules_ops { i32 10, %struct.list_head zeroinitializer, i32 176, i32 16, i32 0, i32 0, i32 0, ptr @fib6_rule_action, ptr @fib6_rule_suppress, ptr @fib6_rule_match, ptr @fib6_rule_configure, ptr @fib6_rule_delete, ptr @fib6_rule_compare, ptr @fib6_rule_fill, ptr @fib6_rule_nlmsg_payload, ptr null, i32 19, %struct.list_head zeroinitializer, ptr null, ptr @init_net, %struct.callback_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@fib6_rule_configure.__msg = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Invalid table\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 7, i64 8]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 7, i64 8]
@___asan_gen_.2 = private unnamed_addr constant [19 x i8] c"fib6_rules_net_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 496, i32 33 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 231, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [24 x i8] c"fib6_rules_ops_template\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 445, i32 51 }
@___asan_gen_.11 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.12 = private constant [25 x i8] c"../net/ipv6/fib6_rules.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 354, i32 4 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_fib6_rule_default, ptr @fib6_rules_net_ops, ptr @.str, ptr @fib6_rules_ops_template, ptr @fib6_rule_configure.__msg], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib6_rules_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib6_rules_ops_template to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib6_rule_configure.__msg to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @fib6_rule_default(ptr noundef %rule) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %plen.i = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %plen.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %plen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false.i:                                  ; preds = %entry
  %plen1.i = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %plen1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %plen1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not.i = icmp eq i32 %3, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.return_crit_edge

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %tclass.i = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 3
  %4 = ptrtoint ptr %tclass.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tclass.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool4.not.i = icmp eq i8 %5, 0
  br i1 %tobool4.not.i, label %fib6_rule_matchall.exit, label %lor.lhs.false3.i.return_crit_edge

lor.lhs.false3.i.return_crit_edge:                ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

fib6_rule_matchall.exit:                          ; preds = %lor.lhs.false3.i
  %call.i = tail call zeroext i1 @fib_rule_matchall(ptr noundef %rule) #9
  br i1 %call.i, label %lor.lhs.false, label %fib6_rule_matchall.exit.return_crit_edge

fib6_rule_matchall.exit.return_crit_edge:         ; preds = %fib6_rule_matchall.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %fib6_rule_matchall.exit
  %action = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 7
  %6 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.not = icmp eq i8 %7, 1
  br i1 %cmp.not, label %lor.lhs.false2, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %l3mdev = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 8
  %8 = ptrtoint ptr %l3mdev to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %l3mdev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false2.return_crit_edge

lor.lhs.false2.return_crit_edge:                  ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #11
  %table = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 6
  %10 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %table, align 4
  %12 = and i32 %11, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 254, i32 %12)
  %switch = icmp eq i32 %12, 254
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %fib6_rule_matchall.exit.return_crit_edge, %lor.lhs.false3.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false2.return_crit_edge ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %fib6_rule_matchall.exit.return_crit_edge ], [ %switch, %if.end ], [ false, %lor.lhs.false3.i.return_crit_edge ], [ false, %lor.lhs.false.i.return_crit_edge ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib6_rules_dump(ptr noundef %net, ptr noundef %nb, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fib_rules_dump(ptr noundef %net, ptr noundef %nb, i32 noundef 10, ptr noundef %extack) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_rules_dump(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib6_rules_seq_read(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fib_rules_seq_read(ptr noundef %net, i32 noundef 10) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_rules_seq_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib6_lookup(ptr noundef %net, i32 noundef %oif, ptr noundef %fl6, ptr noundef %res, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %oif.addr = alloca i32, align 4
  %arg = alloca %struct.fib_lookup_arg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %oif.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %oif, ptr %oif.addr, align 4
  %fib6_has_custom_rules = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 18
  %1 = ptrtoint ptr %fib6_has_custom_rules to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %fib6_has_custom_rules, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg) #9
  %3 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 1
  %4 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 2
  %5 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 3
  %6 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 4
  %7 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 5
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @fib6_table_lookup, ptr %arg, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %oif.addr, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %res, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %5, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %6, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %7, align 4
  call void @l3mdev_update_flow(ptr noundef %net, ptr noundef %fl6) #9
  %fib6_rules_ops = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 24
  %14 = ptrtoint ptr %fib6_rules_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fib6_rules_ops, align 4
  %call4 = call i32 @fib_rules_lookup(ptr noundef %15, ptr noundef %fl6, i32 noundef %flags, ptr noundef nonnull %arg) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg) #9
  br label %if.end12

if.else:                                          ; preds = %entry
  %fib6_local_tbl = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 23
  %16 = ptrtoint ptr %fib6_local_tbl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fib6_local_tbl, align 16
  %call6 = tail call i32 @fib6_table_lookup(ptr noundef %net, ptr noundef %17, i32 noundef %oif, ptr noundef %fl6, ptr noundef %res, i32 noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.else.if.then9_crit_edge

if.else.if.then9_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

lor.lhs.false:                                    ; preds = %if.else
  %f6i = getelementptr inbounds %struct.fib6_result, ptr %res, i32 0, i32 1
  %18 = ptrtoint ptr %f6i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %f6i, align 4
  %fib6_null_entry = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 6
  %20 = ptrtoint ptr %fib6_null_entry to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fib6_null_entry, align 16
  %cmp = icmp eq ptr %19, %21
  br i1 %cmp, label %lor.lhs.false.if.then9_crit_edge, label %lor.lhs.false.if.end12_crit_edge

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %if.else.if.then9_crit_edge
  %fib6_main_tbl = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 11
  %22 = ptrtoint ptr %fib6_main_tbl to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fib6_main_tbl, align 16
  %24 = ptrtoint ptr %oif.addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %oif.addr, align 4
  %call11 = tail call i32 @fib6_table_lookup(ptr noundef %net, ptr noundef %23, i32 noundef %25, ptr noundef %fl6, ptr noundef %res, i32 noundef %flags) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %lor.lhs.false.if.end12_crit_edge, %if.then
  %err.0 = phi i32 [ %call4, %if.then ], [ %call11, %if.then9 ], [ 0, %lor.lhs.false.if.end12_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib6_table_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @l3mdev_update_flow(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_rules_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fib6_rule_lookup(ptr noundef %net, ptr noundef %fl6, ptr noundef %skb, i32 noundef %flags, ptr noundef %lookup) local_unnamed_addr #0 align 64 {
entry:
  %res = alloca %struct.fib6_result, align 4
  %arg = alloca %struct.fib_lookup_arg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fib6_has_custom_rules = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 18
  %0 = ptrtoint ptr %fib6_has_custom_rules to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %fib6_has_custom_rules, align 1, !range !19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %res) #9
  %2 = call ptr @memset(ptr %res, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg) #9
  %3 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 1
  %4 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 2
  %5 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 3
  %6 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 4
  %7 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 5
  %8 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %lookup, ptr %arg, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %skb, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %res, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %5, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %6, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %7, align 4
  call void @l3mdev_update_flow(ptr noundef %net, ptr noundef %fl6) #9
  %fib6_rules_ops = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 24
  %14 = ptrtoint ptr %fib6_rules_ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fib6_rules_ops, align 4
  %call4 = call i32 @fib_rules_lookup(ptr noundef %15, ptr noundef %fl6, i32 noundef %flags, ptr noundef nonnull %arg) #9
  %rt6 = getelementptr inbounds %struct.fib6_result, ptr %res, i32 0, i32 4
  %16 = ptrtoint ptr %rt6 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %rt6, align 4
  %tobool5.not = icmp eq ptr %17, null
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %res) #9
  br i1 %tobool5.not, label %if.then.if.end31_crit_edge, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then.if.end31_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = and i32 %flags, 128
  br label %if.end31

if.else:                                          ; preds = %entry
  %fib6_local_tbl = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 23
  %18 = ptrtoint ptr %fib6_local_tbl to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fib6_local_tbl, align 16
  %call.i = tail call ptr %lookup(ptr noundef %net, ptr noundef %19, ptr noundef %fl6, ptr noundef %skb, i32 noundef %flags) #9
  %ip6_null_entry = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 7
  %20 = ptrtoint ptr %ip6_null_entry to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ip6_null_entry, align 4
  %cmp.not = icmp eq ptr %call.i, %21
  br i1 %cmp.not, label %if.else.if.end17_crit_edge, label %land.lhs.true

if.else.if.end17_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.lhs.true:                                    ; preds = %if.else
  %error = getelementptr inbounds %struct.dst_entry, ptr %call.i, i32 0, i32 15
  %22 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11, i16 %23)
  %cmp13.not = icmp eq i16 %23, -11
  br i1 %cmp13.not, label %land.lhs.true.if.end17_crit_edge, label %land.lhs.true.return_crit_edge

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true.if.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.end17:                                         ; preds = %land.lhs.true.if.end17_crit_edge, %if.else.if.end17_crit_edge
  %and.i = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end17.if.then.i_crit_edge, label %lor.lhs.false.i

if.end17.if.then.i_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end17
  %rt6i_uncached.i = getelementptr inbounds %struct.rt6_info, ptr %call.i, i32 0, i32 8
  %24 = ptrtoint ptr %rt6i_uncached.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile ptr, ptr %rt6i_uncached.i, align 4
  %cmp.i.not.i = icmp eq ptr %25, %rt6i_uncached.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.ip6_rt_put_flags.exit_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i.ip6_rt_put_flags.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ip6_rt_put_flags.exit

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end17.if.then.i_crit_edge
  tail call void @dst_release(ptr noundef %call.i) #9
  br label %ip6_rt_put_flags.exit

ip6_rt_put_flags.exit:                            ; preds = %if.then.i, %lor.lhs.false.i.ip6_rt_put_flags.exit_crit_edge
  %fib6_main_tbl = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 11
  %26 = ptrtoint ptr %fib6_main_tbl to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fib6_main_tbl, align 16
  %call.i70 = tail call ptr %lookup(ptr noundef %net, ptr noundef %27, ptr noundef %fl6, ptr noundef %skb, i32 noundef %flags) #9
  %error21 = getelementptr inbounds %struct.dst_entry, ptr %call.i70, i32 0, i32 15
  %28 = ptrtoint ptr %error21 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %error21, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11, i16 %29)
  %cmp23.not = icmp eq i16 %29, -11
  br i1 %cmp23.not, label %if.end27, label %ip6_rt_put_flags.exit.return_crit_edge

ip6_rt_put_flags.exit.return_crit_edge:           ; preds = %ip6_rt_put_flags.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end27:                                         ; preds = %ip6_rt_put_flags.exit
  br i1 %tobool.not.i, label %if.end27.if.then.i76_crit_edge, label %lor.lhs.false.i75

if.end27.if.then.i76_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i76

lor.lhs.false.i75:                                ; preds = %if.end27
  %rt6i_uncached.i73 = getelementptr inbounds %struct.rt6_info, ptr %call.i70, i32 0, i32 8
  %30 = ptrtoint ptr %rt6i_uncached.i73 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %rt6i_uncached.i73, align 4
  %cmp.i.not.i74 = icmp eq ptr %31, %rt6i_uncached.i73
  br i1 %cmp.i.not.i74, label %lor.lhs.false.i75.if.end37_crit_edge, label %lor.lhs.false.i75.if.then.i76_crit_edge

lor.lhs.false.i75.if.then.i76_crit_edge:          ; preds = %lor.lhs.false.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i76

lor.lhs.false.i75.if.end37_crit_edge:             ; preds = %lor.lhs.false.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then.i76:                                      ; preds = %lor.lhs.false.i75.if.then.i76_crit_edge, %if.end27.if.then.i76_crit_edge
  tail call void @dst_release(ptr noundef %call.i70) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then.i76, %if.then.if.end31_crit_edge
  %and.pre-phi = phi i32 [ %.pre, %if.then.if.end31_crit_edge ], [ %and.i, %if.then.i76 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.pre-phi)
  %tobool32.not = icmp eq i32 %and.pre-phi, 0
  br i1 %tobool32.not, label %if.then33, label %if.end31.if.end37_crit_edge

if.end31.if.end37_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then33:                                        ; preds = %if.end31
  %ip6_null_entry35 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 7
  %32 = ptrtoint ptr %ip6_null_entry35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ip6_null_entry35, align 4
  %__refcnt.i = getelementptr inbounds %struct.dst_entry, ptr %33, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !20
  call void @llvm.prefetch.p0(ptr %__refcnt.i, i32 1, i32 3, i32 1) #9
  %34 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i, ptr %__refcnt.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i) #9, !srcloc !21
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %do.end10.i, label %atomic_inc_not_zero.exit.thread.i

atomic_inc_not_zero.exit.thread.i:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !22
  br label %if.end37

do.end10.i:                                       ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef null) #9
  br label %if.end37

if.end37:                                         ; preds = %do.end10.i, %atomic_inc_not_zero.exit.thread.i, %if.end31.if.end37_crit_edge, %lor.lhs.false.i75.if.end37_crit_edge
  %ip6_null_entry39 = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 7
  %35 = ptrtoint ptr %ip6_null_entry39 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ip6_null_entry39, align 4
  br label %return

return:                                           ; preds = %if.end37, %ip6_rt_put_flags.exit.return_crit_edge, %land.lhs.true.return_crit_edge, %if.then.return_crit_edge
  %retval.2 = phi ptr [ %17, %if.then.return_crit_edge ], [ %36, %if.end37 ], [ %call.i, %land.lhs.true.return_crit_edge ], [ %call.i70, %ip6_rt_put_flags.exit.return_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib6_rules_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @fib6_rules_net_ops) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib6_rules_cleanup() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @fib6_rules_net_ops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fib_rule_matchall(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib6_rules_net_init(ptr noundef %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @fib_rules_register(ptr noundef nonnull @fib6_rules_ops_template, ptr noundef %net) #9
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @fib_default_rule_add(ptr noundef %call, i32 noundef 0, i32 noundef 255, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.out_fib6_rules_ops_crit_edge

if.end.out_fib6_rules_ops_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_fib6_rules_ops

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @fib_default_rule_add(ptr noundef %call, i32 noundef 32766, i32 noundef 254, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_fib6_rules_ops_crit_edge

if.end5.out_fib6_rules_ops_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_fib6_rules_ops

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %fib6_rules_ops = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 24
  %1 = ptrtoint ptr %fib6_rules_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %fib6_rules_ops, align 4
  %fib6_rules_require_fldissect = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 19
  %2 = ptrtoint ptr %fib6_rules_require_fldissect to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %fib6_rules_require_fldissect, align 32
  br label %cleanup

out_fib6_rules_ops:                               ; preds = %if.end5.out_fib6_rules_ops_crit_edge, %if.end.out_fib6_rules_ops_crit_edge
  %err.1 = phi i32 [ %call3, %if.end.out_fib6_rules_ops_crit_edge ], [ %call6, %if.end5.out_fib6_rules_ops_crit_edge ]
  tail call void @fib_rules_unregister(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %out_fib6_rules_ops, %if.end9, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %err.1, %out_fib6_rules_ops ], [ 0, %if.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fib6_rules_net_exit(ptr nocapture noundef readonly %net) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #9
  %fib6_rules_ops = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 36, i32 24
  %0 = ptrtoint ptr %fib6_rules_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fib6_rules_ops, align 4
  tail call void @fib_rules_unregister(ptr noundef %1) #9
  tail call void @rtnl_unlock() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib_rules_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_default_rule_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_rules_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib6_rule_action(ptr nocapture noundef readonly %rule, ptr noundef %flp, i32 noundef %flags, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  %saddr.i.i7 = alloca %struct.in6_addr, align 4
  %saddr.i.i = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 4
  %cmp = icmp eq ptr %1, @fib6_table_lookup
  %result.i = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 2
  %2 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %result.i, align 4
  %fr_net.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 14
  %4 = ptrtoint ptr %fr_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fr_net.i, align 4
  %action.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 7
  %6 = ptrtoint ptr %action.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %action.i, align 8
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %7, label %sw.default.i [
    i8 1, label %sw.epilog.i
    i8 7, label %if.then.return_crit_edge
    i8 8, label %sw.bb1.i
  ]

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.default.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.epilog.i:                                      ; preds = %if.then
  %l3mdev.i.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 8
  %9 = ptrtoint ptr %l3mdev.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %l3mdev.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  %table.i.i = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 4
  %table1.i.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 6
  %cond.in.i.i = select i1 %tobool.not.i.i, ptr %table1.i.i, ptr %table.i.i
  %11 = ptrtoint ptr %cond.in.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond.i.i = load i32, ptr %cond.in.i.i, align 4
  %call3.i = tail call ptr @fib6_get_table(ptr noundef %5, i32 noundef %cond.i.i) #9
  %tobool.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool.not.i, label %sw.epilog.i.return_crit_edge, label %if.end.i

sw.epilog.i.return_crit_edge:                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %sw.epilog.i
  %lookup_data.i = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 1
  %12 = ptrtoint ptr %lookup_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lookup_data.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %call4.i = tail call i32 @fib6_table_lookup(ptr noundef %5, ptr noundef nonnull %call3.i, i32 noundef %15, ptr noundef %flp, ptr noundef %3, i32 noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %if.end.i.return_crit_edge

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true.i:                                  ; preds = %if.end.i
  %f6i.i = getelementptr inbounds %struct.fib6_result, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %f6i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %f6i.i, align 4
  %fib6_null_entry.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 36, i32 6
  %18 = ptrtoint ptr %fib6_null_entry.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fib6_null_entry.i, align 16
  %cmp.not.i = icmp eq ptr %17, %19
  br i1 %cmp.not.i, label %land.lhs.true.i.return_crit_edge, label %if.then7.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then7.i:                                       ; preds = %land.lhs.true.i
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %3, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %21, align 4
  %flags1.i.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 5
  %24 = ptrtoint ptr %flags1.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags1.i.i, align 8
  %and.i.i = and i32 %25, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i30.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i30.i, label %if.then7.i.return_crit_edge, label %land.lhs.true.i.i

if.then7.i.return_crit_edge:                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

land.lhs.true.i.i:                                ; preds = %if.then7.i
  %src.i.i = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 1
  %plen.i.i = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %plen.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %plen.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool2.not.i.i = icmp ne i32 %27, 0
  %and4.i.i = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  %or.cond.i.i = and i1 %tobool5.not.i.i, %tobool2.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i, label %land.lhs.true.i.i.return_crit_edge

land.lhs.true.i.i.return_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %saddr.i.i) #9
  %daddr.i.i = getelementptr inbounds %struct.flowi6, ptr %flp, i32 0, i32 1
  %28 = lshr i32 %flags, 3
  %and.i.i.i = and i32 %28, 7
  %29 = call ptr @memset(ptr %saddr.i.i, i32 255, i32 16)
  %call6.i.i = call i32 @ipv6_dev_get_saddr(ptr noundef %5, ptr noundef %23, ptr noundef %daddr.i.i, i32 noundef %and.i.i.i, ptr noundef nonnull %saddr.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end.i.i, label %if.then.i.i.cleanup.i.i_crit_edge

if.then.i.i.cleanup.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %30 = ptrtoint ptr %plen.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %plen.i.i, align 8
  %shr.i.i.i = lshr i32 %31, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %31)
  %tobool.not.i.i.i = icmp ult i32 %31, 32
  br i1 %tobool.not.i.i.i, label %if.end.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.if.end.i.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %shl.i.i.i = shl nuw nsw i32 %shr.i.i.i, 2
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %saddr.i.i, ptr %src.i.i, i32 %shl.i.i.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %tobool3.not.i.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i.cleanup.i.i_crit_edge

land.lhs.true.i.i.i.cleanup.i.i_crit_edge:        ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.end.i.i.if.end.i.i.i_crit_edge
  %and.i23.i.i = and i32 %31, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %and.i23.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end14.i.i_crit_edge, label %land.lhs.true5.i.i.i

if.end.i.i.i.if.end14.i.i_crit_edge:              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

land.lhs.true5.i.i.i:                             ; preds = %if.end.i.i.i
  %arrayidx.i.i.i = getelementptr i32, ptr %saddr.i.i, i32 %shr.i.i.i
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i.i, align 4
  %arrayidx6.i.i.i = getelementptr i32, ptr %src.i.i, i32 %shr.i.i.i
  %34 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx6.i.i.i, align 4
  %xor.i.i.i = xor i32 %35, %33
  %sub.i.i.i = sub nuw nsw i32 32, %and.i23.i.i
  %shl7.i.i.i = shl nsw i32 -1, %sub.i.i.i
  %and8.i.i.i = and i32 %xor.i.i.i, %shl7.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i)
  %tobool9.not.i.i.i = icmp eq i32 %and8.i.i.i, 0
  br i1 %tobool9.not.i.i.i, label %land.lhs.true5.i.i.i.if.end14.i.i_crit_edge, label %land.lhs.true5.i.i.i.cleanup.i.i_crit_edge

land.lhs.true5.i.i.i.cleanup.i.i_crit_edge:       ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i.i

land.lhs.true5.i.i.i.if.end14.i.i_crit_edge:      ; preds = %land.lhs.true5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %land.lhs.true5.i.i.i.if.end14.i.i_crit_edge, %if.end.i.i.i.if.end14.i.i_crit_edge
  %saddr15.i.i = getelementptr inbounds %struct.flowi6, ptr %flp, i32 0, i32 2
  %36 = call ptr @memcpy(ptr %saddr15.i.i, ptr %saddr.i.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %saddr.i.i) #9
  br label %return

cleanup.i.i:                                      ; preds = %land.lhs.true5.i.i.i.cleanup.i.i_crit_edge, %land.lhs.true.i.i.i.cleanup.i.i_crit_edge, %if.then.i.i.cleanup.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %saddr.i.i) #9
  br label %return

if.end:                                           ; preds = %entry
  %37 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %7, label %sw.bb1.i11 [
    i8 1, label %sw.epilog.i19
    i8 7, label %sw.bb.i
    i8 8, label %sw.bb3.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ip6_null_entry.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 36, i32 7
  br label %discard_pkt.i

sw.bb1.i11:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ip6_blk_hole_entry.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 36, i32 22
  br label %discard_pkt.i

sw.bb3.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ip6_prohibit_entry.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 36, i32 21
  br label %discard_pkt.i

sw.epilog.i19:                                    ; preds = %if.end
  %l3mdev.i.i12 = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 8
  %38 = ptrtoint ptr %l3mdev.i.i12 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %l3mdev.i.i12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i.i13 = icmp eq i8 %39, 0
  %table.i.i14 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 4
  %table1.i.i15 = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 6
  %cond.in.i.i16 = select i1 %tobool.not.i.i13, ptr %table1.i.i15, ptr %table.i.i14
  %40 = ptrtoint ptr %cond.in.i.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %cond.i.i17 = load i32, ptr %cond.in.i.i16, align 4
  %call5.i = tail call ptr @fib6_get_table(ptr noundef %5, i32 noundef %cond.i.i17) #9
  %tobool.not.i18 = icmp eq ptr %call5.i, null
  br i1 %tobool.not.i18, label %sw.epilog.i19.__fib6_rule_action.exit_crit_edge, label %if.end.i22

sw.epilog.i19.__fib6_rule_action.exit_crit_edge:  ; preds = %sw.epilog.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %__fib6_rule_action.exit

if.end.i22:                                       ; preds = %sw.epilog.i19
  %lookup_data.i20 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 1
  %41 = ptrtoint ptr %lookup_data.i20 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lookup_data.i20, align 4
  %call.i.i = tail call ptr %1(ptr noundef %5, ptr noundef nonnull %call5.i, ptr noundef %flp, ptr noundef %42, i32 noundef %flags) #9
  %ip6_null_entry8.i = getelementptr inbounds %struct.net, ptr %5, i32 0, i32 36, i32 7
  %43 = ptrtoint ptr %ip6_null_entry8.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ip6_null_entry8.i, align 4
  %cmp.not.i21 = icmp eq ptr %call.i.i, %44
  br i1 %cmp.not.i21, label %if.end.i22.again.i_crit_edge, label %if.then10.i

if.end.i22.again.i_crit_edge:                     ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %again.i

if.then10.i:                                      ; preds = %if.end.i22
  %rt6i_idev.i.i = getelementptr inbounds %struct.rt6_info, ptr %call.i.i, i32 0, i32 6
  %45 = ptrtoint ptr %rt6i_idev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %rt6i_idev.i.i, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %46, align 4
  %flags1.i.i23 = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 5
  %49 = ptrtoint ptr %flags1.i.i23 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags1.i.i23, align 8
  %and.i.i24 = and i32 %50, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i24)
  %tobool.not.i52.i = icmp eq i32 %and.i.i24, 0
  br i1 %tobool.not.i52.i, label %if.then10.i.if.end16.i_crit_edge, label %land.lhs.true.i.i31

if.then10.i.if.end16.i_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true.i.i31:                              ; preds = %if.then10.i
  %src.i.i25 = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 1
  %plen.i.i26 = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %plen.i.i26 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %plen.i.i26, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool2.not.i.i27 = icmp ne i32 %52, 0
  %and4.i.i28 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i28)
  %tobool5.not.i.i29 = icmp eq i32 %and4.i.i28, 0
  %or.cond.i.i30 = and i1 %tobool5.not.i.i29, %tobool2.not.i.i27
  br i1 %or.cond.i.i30, label %if.then.i.i36, label %land.lhs.true.i.i31.if.end16.i_crit_edge

land.lhs.true.i.i31.if.end16.i_crit_edge:         ; preds = %land.lhs.true.i.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.then.i.i36:                                    ; preds = %land.lhs.true.i.i31
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %saddr.i.i7) #9
  %daddr.i.i32 = getelementptr inbounds %struct.flowi6, ptr %flp, i32 0, i32 1
  %53 = lshr i32 %flags, 3
  %and.i.i.i33 = and i32 %53, 7
  %54 = call ptr @memset(ptr %saddr.i.i7, i32 255, i32 16)
  %call6.i.i34 = call i32 @ipv6_dev_get_saddr(ptr noundef %5, ptr noundef %48, ptr noundef %daddr.i.i32, i32 noundef %and.i.i.i33, ptr noundef nonnull %saddr.i.i7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i34)
  %tobool7.not.i.i35 = icmp eq i32 %call6.i.i34, 0
  br i1 %tobool7.not.i.i35, label %if.end.i.i39, label %if.then.i.i36.fib6_rule_saddr.exit.i_crit_edge

if.then.i.i36.fib6_rule_saddr.exit.i_crit_edge:   ; preds = %if.then.i.i36
  call void @__sanitizer_cov_trace_pc() #11
  br label %fib6_rule_saddr.exit.i

if.end.i.i39:                                     ; preds = %if.then.i.i36
  %55 = ptrtoint ptr %plen.i.i26 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %plen.i.i26, align 8
  %shr.i.i.i37 = lshr i32 %56, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %56)
  %tobool.not.i.i.i38 = icmp ult i32 %56, 32
  br i1 %tobool.not.i.i.i38, label %if.end.i.i39.if.end.i.i.i46_crit_edge, label %land.lhs.true.i.i.i43

if.end.i.i39.if.end.i.i.i46_crit_edge:            ; preds = %if.end.i.i39
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i46

land.lhs.true.i.i.i43:                            ; preds = %if.end.i.i39
  %shl.i.i.i40 = shl nuw nsw i32 %shr.i.i.i37, 2
  %bcmp.i.i.i41 = call i32 @bcmp(ptr nonnull %saddr.i.i7, ptr %src.i.i25, i32 %shl.i.i.i40) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i.i41)
  %tobool3.not.i.i.i42 = icmp eq i32 %bcmp.i.i.i41, 0
  br i1 %tobool3.not.i.i.i42, label %land.lhs.true.i.i.i43.if.end.i.i.i46_crit_edge, label %land.lhs.true.i.i.i43.fib6_rule_saddr.exit.i_crit_edge

land.lhs.true.i.i.i43.fib6_rule_saddr.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %fib6_rule_saddr.exit.i

land.lhs.true.i.i.i43.if.end.i.i.i46_crit_edge:   ; preds = %land.lhs.true.i.i.i43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i46

if.end.i.i.i46:                                   ; preds = %land.lhs.true.i.i.i43.if.end.i.i.i46_crit_edge, %if.end.i.i39.if.end.i.i.i46_crit_edge
  %and.i23.i.i44 = and i32 %56, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i23.i.i44)
  %tobool4.not.i.i.i45 = icmp eq i32 %and.i23.i.i44, 0
  br i1 %tobool4.not.i.i.i45, label %if.end.i.i.i46.if.end14.i.i56_crit_edge, label %land.lhs.true5.i.i.i54

if.end.i.i.i46.if.end14.i.i56_crit_edge:          ; preds = %if.end.i.i.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i56

land.lhs.true5.i.i.i54:                           ; preds = %if.end.i.i.i46
  %arrayidx.i.i.i47 = getelementptr i32, ptr %saddr.i.i7, i32 %shr.i.i.i37
  %57 = ptrtoint ptr %arrayidx.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i.i.i47, align 4
  %arrayidx6.i.i.i48 = getelementptr i32, ptr %src.i.i25, i32 %shr.i.i.i37
  %59 = ptrtoint ptr %arrayidx6.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx6.i.i.i48, align 4
  %xor.i.i.i49 = xor i32 %60, %58
  %sub.i.i.i50 = sub nuw nsw i32 32, %and.i23.i.i44
  %shl7.i.i.i51 = shl nsw i32 -1, %sub.i.i.i50
  %and8.i.i.i52 = and i32 %xor.i.i.i49, %shl7.i.i.i51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i.i.i52)
  %tobool9.not.i.i.i53 = icmp eq i32 %and8.i.i.i52, 0
  br i1 %tobool9.not.i.i.i53, label %land.lhs.true5.i.i.i54.if.end14.i.i56_crit_edge, label %land.lhs.true5.i.i.i54.fib6_rule_saddr.exit.i_crit_edge

land.lhs.true5.i.i.i54.fib6_rule_saddr.exit.i_crit_edge: ; preds = %land.lhs.true5.i.i.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %fib6_rule_saddr.exit.i

land.lhs.true5.i.i.i54.if.end14.i.i56_crit_edge:  ; preds = %land.lhs.true5.i.i.i54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14.i.i56

if.end14.i.i56:                                   ; preds = %land.lhs.true5.i.i.i54.if.end14.i.i56_crit_edge, %if.end.i.i.i46.if.end14.i.i56_crit_edge
  %saddr15.i.i55 = getelementptr inbounds %struct.flowi6, ptr %flp, i32 0, i32 2
  %61 = call ptr @memcpy(ptr %saddr15.i.i55, ptr %saddr.i.i7, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %saddr.i.i7) #9
  br label %if.end16.i

fib6_rule_saddr.exit.i:                           ; preds = %land.lhs.true5.i.i.i54.fib6_rule_saddr.exit.i_crit_edge, %land.lhs.true.i.i.i43.fib6_rule_saddr.exit.i_crit_edge, %if.then.i.i36.fib6_rule_saddr.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %saddr.i.i7) #9
  br label %again.i

if.end16.i:                                       ; preds = %if.end14.i.i56, %land.lhs.true.i.i31.if.end16.i_crit_edge, %if.then10.i.if.end16.i_crit_edge
  %error.i = getelementptr inbounds %struct.dst_entry, ptr %call.i.i, i32 0, i32 15
  %62 = ptrtoint ptr %error.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %error.i, align 4
  %conv18.i = sext i16 %63 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -11, i16 %63)
  %cmp19.not.i = icmp eq i16 %63, -11
  br i1 %cmp19.not.i, label %if.end16.i.again.i_crit_edge, label %if.end16.i.__fib6_rule_action.exit_crit_edge

if.end16.i.__fib6_rule_action.exit_crit_edge:     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__fib6_rule_action.exit

if.end16.i.again.i_crit_edge:                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %again.i

again.i:                                          ; preds = %if.end16.i.again.i_crit_edge, %fib6_rule_saddr.exit.i, %if.end.i22.again.i_crit_edge
  %and.i53.i = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i53.i)
  %tobool.not.i54.i = icmp eq i32 %and.i53.i, 0
  br i1 %tobool.not.i54.i, label %again.i.if.then.i55.i_crit_edge, label %lor.lhs.false.i.i

again.i.if.then.i55.i_crit_edge:                  ; preds = %again.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i55.i

lor.lhs.false.i.i:                                ; preds = %again.i
  %rt6i_uncached.i.i = getelementptr inbounds %struct.rt6_info, ptr %call.i.i, i32 0, i32 8
  %64 = ptrtoint ptr %rt6i_uncached.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %rt6i_uncached.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %65, %rt6i_uncached.i.i
  br i1 %cmp.i.not.i.i, label %lor.lhs.false.i.i.__fib6_rule_action.exit_crit_edge, label %lor.lhs.false.i.i.if.then.i55.i_crit_edge

lor.lhs.false.i.i.if.then.i55.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i55.i

lor.lhs.false.i.i.__fib6_rule_action.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__fib6_rule_action.exit

if.then.i55.i:                                    ; preds = %lor.lhs.false.i.i.if.then.i55.i_crit_edge, %again.i.if.then.i55.i_crit_edge
  call void @dst_release(ptr noundef %call.i.i) #9
  br label %__fib6_rule_action.exit

discard_pkt.i:                                    ; preds = %sw.bb3.i, %sw.bb1.i11, %sw.bb.i
  %rt.0.in.i = phi ptr [ %ip6_blk_hole_entry.i, %sw.bb1.i11 ], [ %ip6_prohibit_entry.i, %sw.bb3.i ], [ %ip6_null_entry.i, %sw.bb.i ]
  %err.0.i = phi i32 [ -22, %sw.bb1.i11 ], [ -13, %sw.bb3.i ], [ -101, %sw.bb.i ]
  %66 = ptrtoint ptr %rt.0.in.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %rt.0.i = load ptr, ptr %rt.0.in.i, align 4
  %and.i = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool24.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %discard_pkt.i.__fib6_rule_action.exit_crit_edge

discard_pkt.i.__fib6_rule_action.exit_crit_edge:  ; preds = %discard_pkt.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__fib6_rule_action.exit

if.then25.i:                                      ; preds = %discard_pkt.i
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %rt.0.i, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !20
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #9
  %67 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #9, !srcloc !21
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !22
  br label %__fib6_rule_action.exit

do.end10.i.i:                                     ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 231, i32 noundef 9, ptr noundef null) #9
  br label %__fib6_rule_action.exit

__fib6_rule_action.exit:                          ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i, %discard_pkt.i.__fib6_rule_action.exit_crit_edge, %if.then.i55.i, %lor.lhs.false.i.i.__fib6_rule_action.exit_crit_edge, %if.end16.i.__fib6_rule_action.exit_crit_edge, %sw.epilog.i19.__fib6_rule_action.exit_crit_edge
  %rt.1.i = phi ptr [ %rt.0.i, %discard_pkt.i.__fib6_rule_action.exit_crit_edge ], [ %call.i.i, %if.end16.i.__fib6_rule_action.exit_crit_edge ], [ null, %sw.epilog.i19.__fib6_rule_action.exit_crit_edge ], [ null, %lor.lhs.false.i.i.__fib6_rule_action.exit_crit_edge ], [ null, %if.then.i55.i ], [ %rt.0.i, %atomic_inc_not_zero.exit.thread.i.i ], [ %rt.0.i, %do.end10.i.i ]
  %err.1.i = phi i32 [ %err.0.i, %discard_pkt.i.__fib6_rule_action.exit_crit_edge ], [ %conv18.i, %if.end16.i.__fib6_rule_action.exit_crit_edge ], [ -11, %sw.epilog.i19.__fib6_rule_action.exit_crit_edge ], [ -11, %lor.lhs.false.i.i.__fib6_rule_action.exit_crit_edge ], [ -11, %if.then.i55.i ], [ %err.0.i, %atomic_inc_not_zero.exit.thread.i.i ], [ %err.0.i, %do.end10.i.i ]
  %rt6.i = getelementptr inbounds %struct.fib6_result, ptr %3, i32 0, i32 4
  %68 = ptrtoint ptr %rt6.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %rt.1.i, ptr %rt6.i, align 4
  br label %return

return:                                           ; preds = %__fib6_rule_action.exit, %cleanup.i.i, %if.end14.i.i, %land.lhs.true.i.i.return_crit_edge, %if.then7.i.return_crit_edge, %land.lhs.true.i.return_crit_edge, %if.end.i.return_crit_edge, %sw.epilog.i.return_crit_edge, %sw.default.i, %sw.bb1.i, %if.then.return_crit_edge
  %retval.0 = phi i32 [ %err.1.i, %__fib6_rule_action.exit ], [ -22, %sw.default.i ], [ -13, %sw.bb1.i ], [ -101, %if.then.return_crit_edge ], [ -11, %sw.epilog.i.return_crit_edge ], [ -11, %land.lhs.true.i.return_crit_edge ], [ -11, %if.end.i.return_crit_edge ], [ -11, %cleanup.i.i ], [ 0, %if.end14.i.i ], [ 0, %land.lhs.true.i.i.return_crit_edge ], [ 0, %if.then7.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @fib6_rule_suppress(ptr nocapture noundef readonly %rule, i32 noundef %flags, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %result = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %result, align 4
  %rt6 = getelementptr inbounds %struct.fib6_result, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rt6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rt6, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rt6i_idev = getelementptr inbounds %struct.rt6_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %rt6i_idev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rt6i_idev, align 4
  %tobool1.not = icmp eq ptr %5, null
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %if.then2

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %dev.0 = phi ptr [ %7, %if.then2 ], [ null, %if.end.if.end5_crit_edge ]
  %plen = getelementptr inbounds %struct.rt6_info, ptr %3, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %plen, align 4
  %suppress_prefixlen = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 18
  %10 = ptrtoint ptr %suppress_prefixlen to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %suppress_prefixlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp.not = icmp sgt i32 %9, %11
  br i1 %cmp.not, label %if.end7, label %if.end5.suppress_route_crit_edge

if.end5.suppress_route_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %suppress_route

if.end7:                                          ; preds = %if.end5
  %suppress_ifgroup = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 17
  %12 = ptrtoint ptr %suppress_ifgroup to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %suppress_ifgroup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp8.not = icmp eq i32 %13, -1
  %tobool9.not = icmp eq ptr %dev.0, null
  %or.cond = select i1 %cmp8.not, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %if.end7.cleanup_crit_edge, label %land.lhs.true10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true10:                                  ; preds = %if.end7
  %group = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 35
  %14 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %group, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp12 = icmp eq i32 %15, %13
  br i1 %cmp12, label %land.lhs.true10.suppress_route_crit_edge, label %land.lhs.true10.cleanup_crit_edge

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true10.suppress_route_crit_edge:         ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %suppress_route

suppress_route:                                   ; preds = %land.lhs.true10.suppress_route_crit_edge, %if.end5.suppress_route_crit_edge
  %and.i = and i32 %flags, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %suppress_route.if.then.i_crit_edge, label %lor.lhs.false.i

suppress_route.if.then.i_crit_edge:               ; preds = %suppress_route
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %suppress_route
  %rt6i_uncached.i = getelementptr inbounds %struct.rt6_info, ptr %3, i32 0, i32 8
  %16 = ptrtoint ptr %rt6i_uncached.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %rt6i_uncached.i, align 4
  %cmp.i.not.i = icmp eq ptr %17, %rt6i_uncached.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %suppress_route.if.then.i_crit_edge
  tail call void @dst_release(ptr noundef nonnull %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %lor.lhs.false.i.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %land.lhs.true10.cleanup_crit_edge ], [ false, %if.end7.cleanup_crit_edge ], [ true, %lor.lhs.false.i.cleanup_crit_edge ], [ true, %if.then.i ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fib6_rule_match(ptr nocapture noundef readonly %rule, ptr nocapture noundef readonly %fl, i32 noundef %flags) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %plen = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %plen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dst = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 2
  %daddr = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 1
  %shr.i = lshr i32 %1, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %1)
  %tobool.not.i = icmp ult i32 %1, 32
  br i1 %tobool.not.i, label %land.lhs.true.if.end.i_crit_edge, label %land.lhs.true.i

land.lhs.true.if.end.i_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %land.lhs.true
  %shl.i = shl nuw nsw i32 %shr.i, 2
  %bcmp.i = tail call i32 @bcmp(ptr %daddr, ptr %dst, i32 %shl.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool3.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %land.lhs.true.if.end.i_crit_edge
  %and.i = and i32 %1, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true5.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true5.i:                                 ; preds = %if.end.i
  %arrayidx.i = getelementptr i32, ptr %daddr, i32 %shr.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %arrayidx6.i = getelementptr i32, ptr %dst, i32 %shr.i
  %4 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx6.i, align 4
  %xor.i = xor i32 %5, %3
  %sub.i = sub nuw nsw i32 32, %and.i
  %shl7.i = shl nsw i32 -1, %sub.i
  %and8.i = and i32 %xor.i, %shl7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true5.i.if.end_crit_edge, label %land.lhs.true5.i.cleanup_crit_edge

land.lhs.true5.i.cleanup_crit_edge:               ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true5.i.if.end_crit_edge:                ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true5.i.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %src = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 1
  %plen4 = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %plen4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %plen4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end.if.end22_crit_edge, label %if.then6

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then6:                                         ; preds = %if.end
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then6
  %saddr = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 2
  %shr.i78 = lshr i32 %7, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %tobool.not.i79 = icmp ult i32 %7, 32
  br i1 %tobool.not.i79, label %if.then8.if.end.i86_crit_edge, label %land.lhs.true.i83

if.then8.if.end.i86_crit_edge:                    ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i86

land.lhs.true.i83:                                ; preds = %if.then8
  %shl.i80 = shl nuw nsw i32 %shr.i78, 2
  %bcmp.i81 = tail call i32 @bcmp(ptr %saddr, ptr %src, i32 %shl.i80) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i81)
  %tobool3.not.i82 = icmp eq i32 %bcmp.i81, 0
  br i1 %tobool3.not.i82, label %land.lhs.true.i83.if.end.i86_crit_edge, label %land.lhs.true.i83.cleanup_crit_edge

land.lhs.true.i83.cleanup_crit_edge:              ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i83.if.end.i86_crit_edge:           ; preds = %land.lhs.true.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i86

if.end.i86:                                       ; preds = %land.lhs.true.i83.if.end.i86_crit_edge, %if.then8.if.end.i86_crit_edge
  %and.i84 = and i32 %7, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool4.not.i85 = icmp eq i32 %and.i84, 0
  br i1 %tobool4.not.i85, label %if.end.i86.if.end22_crit_edge, label %land.lhs.true5.i94

if.end.i86.if.end22_crit_edge:                    ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

land.lhs.true5.i94:                               ; preds = %if.end.i86
  %arrayidx.i87 = getelementptr i32, ptr %saddr, i32 %shr.i78
  %8 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i87, align 4
  %arrayidx6.i88 = getelementptr i32, ptr %src, i32 %shr.i78
  %10 = ptrtoint ptr %arrayidx6.i88 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx6.i88, align 4
  %xor.i89 = xor i32 %11, %9
  %sub.i90 = sub nuw nsw i32 32, %and.i84
  %shl7.i91 = shl nsw i32 -1, %sub.i90
  %and8.i92 = and i32 %xor.i89, %shl7.i91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i92)
  %tobool9.not.i93 = icmp eq i32 %and8.i92, 0
  br i1 %tobool9.not.i93, label %land.lhs.true5.i94.if.end22_crit_edge, label %land.lhs.true5.i94.cleanup_crit_edge

land.lhs.true5.i94.cleanup_crit_edge:             ; preds = %land.lhs.true5.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true5.i94.if.end22_crit_edge:            ; preds = %land.lhs.true5.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.else:                                          ; preds = %if.then6
  %flags16 = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 5
  %12 = ptrtoint ptr %flags16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags16, align 8
  %and17 = and i32 %13, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else.cleanup_crit_edge, label %if.else.if.end22_crit_edge

if.else.if.end22_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.else.if.end22_crit_edge, %land.lhs.true5.i94.if.end22_crit_edge, %if.end.i86.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %tclass = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 3
  %14 = ptrtoint ptr %tclass to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tclass, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool23.not = icmp eq i8 %15, 0
  br i1 %tobool23.not, label %if.end22.if.end31_crit_edge, label %land.lhs.true24

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

land.lhs.true24:                                  ; preds = %if.end22
  %flowlabel = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 3
  %16 = ptrtoint ptr %flowlabel to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flowlabel, align 8
  %and.i98 = lshr i32 %17, 20
  %conv.i = trunc i32 %and.i98 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %conv.i)
  %cmp.not = icmp eq i8 %15, %conv.i
  br i1 %cmp.not, label %land.lhs.true24.if.end31_crit_edge, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true24.if.end31_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true24.if.end31_crit_edge, %if.end22.if.end31_crit_edge
  %ip_proto = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 10
  %18 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ip_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool33.not = icmp eq i8 %19, 0
  br i1 %tobool33.not, label %if.end31.if.end41_crit_edge, label %land.lhs.true34

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true34:                                  ; preds = %if.end31
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 5
  %20 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %flowic_proto, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp38.not = icmp eq i8 %19, %21
  br i1 %cmp38.not, label %land.lhs.true34.if.end41_crit_edge, label %land.lhs.true34.cleanup_crit_edge

land.lhs.true34.cleanup_crit_edge:                ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true34.if.end41_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.end41:                                         ; preds = %land.lhs.true34.if.end41_crit_edge, %if.end31.if.end41_crit_edge
  %sport_range = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 22
  %22 = ptrtoint ptr %sport_range to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %sport_range, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp.not.i = icmp eq i16 %23, 0
  br i1 %cmp.not.i, label %if.end41.if.end48_crit_edge, label %fib_rule_port_range_set.exit

if.end41.if.end48_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

fib_rule_port_range_set.exit:                     ; preds = %if.end41
  %end.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 22, i32 1
  %24 = ptrtoint ptr %end.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %end.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cmp3.i.not = icmp eq i16 %25, 0
  br i1 %cmp3.i.not, label %fib_rule_port_range_set.exit.if.end48_crit_edge, label %land.lhs.true44

fib_rule_port_range_set.exit.if.end48_crit_edge:  ; preds = %fib_rule_port_range_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

land.lhs.true44:                                  ; preds = %fib_rule_port_range_set.exit
  %uli = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 4
  %sport = getelementptr inbounds %struct.anon.104, ptr %uli, i32 0, i32 1
  %26 = ptrtoint ptr %sport to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %sport, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %27)
  %cmp.not.i99 = icmp ugt i16 %23, %27
  br i1 %cmp.not.i99, label %land.lhs.true44.cleanup_crit_edge, label %fib_rule_port_inrange.exit

land.lhs.true44.cleanup_crit_edge:                ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fib_rule_port_inrange.exit:                       ; preds = %land.lhs.true44
  %28 = ptrtoint ptr %end.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %end.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %27)
  %cmp5.i.not = icmp ult i16 %29, %27
  br i1 %cmp5.i.not, label %fib_rule_port_inrange.exit.cleanup_crit_edge, label %fib_rule_port_inrange.exit.if.end48_crit_edge

fib_rule_port_inrange.exit.if.end48_crit_edge:    ; preds = %fib_rule_port_inrange.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

fib_rule_port_inrange.exit.cleanup_crit_edge:     ; preds = %fib_rule_port_inrange.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %fib_rule_port_inrange.exit.if.end48_crit_edge, %fib_rule_port_range_set.exit.if.end48_crit_edge, %if.end41.if.end48_crit_edge
  %dport_range = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 23
  %30 = ptrtoint ptr %dport_range to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %dport_range, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp.not.i102 = icmp eq i16 %31, 0
  br i1 %cmp.not.i102, label %if.end48.if.end56_crit_edge, label %fib_rule_port_range_set.exit106

if.end48.if.end56_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

fib_rule_port_range_set.exit106:                  ; preds = %if.end48
  %end.i103 = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 23, i32 1
  %32 = ptrtoint ptr %end.i103 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %end.i103, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %cmp3.i104.not = icmp eq i16 %33, 0
  br i1 %cmp3.i104.not, label %fib_rule_port_range_set.exit106.if.end56_crit_edge, label %land.lhs.true51

fib_rule_port_range_set.exit106.if.end56_crit_edge: ; preds = %fib_rule_port_range_set.exit106
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

land.lhs.true51:                                  ; preds = %fib_rule_port_range_set.exit106
  %uli53 = getelementptr inbounds %struct.flowi6, ptr %fl, i32 0, i32 4
  %34 = ptrtoint ptr %uli53 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %uli53, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %31, i16 %35)
  %cmp.not.i107 = icmp ugt i16 %31, %35
  br i1 %cmp.not.i107, label %land.lhs.true51.cleanup_crit_edge, label %fib_rule_port_inrange.exit111

land.lhs.true51.cleanup_crit_edge:                ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

fib_rule_port_inrange.exit111:                    ; preds = %land.lhs.true51
  %36 = ptrtoint ptr %end.i103 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %end.i103, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %37, i16 %35)
  %cmp5.i109.not = icmp ult i16 %37, %35
  br i1 %cmp5.i109.not, label %fib_rule_port_inrange.exit111.cleanup_crit_edge, label %fib_rule_port_inrange.exit111.if.end56_crit_edge

fib_rule_port_inrange.exit111.if.end56_crit_edge: ; preds = %fib_rule_port_inrange.exit111
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

fib_rule_port_inrange.exit111.cleanup_crit_edge:  ; preds = %fib_rule_port_inrange.exit111
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end56:                                         ; preds = %fib_rule_port_inrange.exit111.if.end56_crit_edge, %fib_rule_port_range_set.exit106.if.end56_crit_edge, %if.end48.if.end56_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %fib_rule_port_inrange.exit111.cleanup_crit_edge, %land.lhs.true51.cleanup_crit_edge, %fib_rule_port_inrange.exit.cleanup_crit_edge, %land.lhs.true44.cleanup_crit_edge, %land.lhs.true34.cleanup_crit_edge, %land.lhs.true24.cleanup_crit_edge, %if.else.cleanup_crit_edge, %land.lhs.true5.i94.cleanup_crit_edge, %land.lhs.true.i83.cleanup_crit_edge, %land.lhs.true5.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end56 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %land.lhs.true24.cleanup_crit_edge ], [ 0, %land.lhs.true34.cleanup_crit_edge ], [ 0, %fib_rule_port_inrange.exit.cleanup_crit_edge ], [ 0, %fib_rule_port_inrange.exit111.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %land.lhs.true5.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i83.cleanup_crit_edge ], [ 0, %land.lhs.true5.i94.cleanup_crit_edge ], [ 0, %land.lhs.true44.cleanup_crit_edge ], [ 0, %land.lhs.true51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib6_rule_configure(ptr nocapture noundef %rule, ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %frh, ptr nocapture noundef readonly %tb, ptr noundef writeonly %extack) #0 align 64 {
entry:
  %tmp = alloca %struct.in6_addr, align 4
  %tmp21 = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %action = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 7
  %5 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp = icmp eq i8 %6, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.end14_crit_edge

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %entry
  %l3mdev = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 8
  %7 = ptrtoint ptr %l3mdev to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %l3mdev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then:                                          ; preds = %land.lhs.true
  %table = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 6
  %9 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2 = icmp eq i32 %10, 0
  br i1 %cmp2, label %do.body, label %if.end7

do.body:                                          ; preds = %if.then
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib6_rule_configure.__msg) #9
  %tobool5.not = icmp eq ptr %extack, null
  br i1 %tobool5.not, label %do.body.errout_crit_edge, label %if.then6

do.body.errout_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @fib6_rule_configure.__msg, ptr %extack, align 4
  br label %errout

if.end7:                                          ; preds = %if.then
  %call9 = tail call ptr @fib6_new_table(ptr noundef %4, i32 noundef %10) #9
  %cmp10 = icmp eq ptr %call9, null
  br i1 %cmp10, label %if.end7.errout_crit_edge, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end7.errout_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout

if.end14:                                         ; preds = %if.end7.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %entry.if.end14_crit_edge
  %src_len = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 2
  %12 = ptrtoint ptr %src_len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %src_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool15.not = icmp eq i8 %13, 0
  br i1 %tobool15.not, label %if.end14.if.end17_crit_edge, label %if.then16

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %src = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %16 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp, ptr noundef %15, i32 noundef 16) #9
  %17 = call ptr @memcpy(ptr %src, ptr %tmp, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14.if.end17_crit_edge
  %dst_len = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 1
  %18 = ptrtoint ptr %dst_len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dst_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool18.not = icmp eq i8 %19, 0
  br i1 %tobool18.not, label %if.end17.if.end23_crit_edge, label %if.then19

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %dst = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp21) #9
  %arrayidx22 = getelementptr ptr, ptr %tb, i32 1
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx22, align 4
  %22 = call ptr @memset(ptr %tmp21, i32 255, i32 16)
  %call.i52 = call i32 @nla_memcpy(ptr noundef nonnull %tmp21, ptr noundef %21, i32 noundef 16) #9
  %23 = call ptr @memcpy(ptr %dst, ptr %tmp21, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp21) #9
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.end17.if.end23_crit_edge
  %24 = ptrtoint ptr %src_len to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %src_len, align 2
  %conv25 = zext i8 %25 to i32
  %plen = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %plen to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv25, ptr %plen, align 8
  %27 = ptrtoint ptr %dst_len to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %dst_len, align 1
  %conv28 = zext i8 %28 to i32
  %plen30 = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %plen30 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv28, ptr %plen30, align 4
  %tos = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 3
  %30 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tos, align 1
  %tclass = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 3
  %32 = ptrtoint ptr %tclass to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %tclass, align 8
  %iifindex.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 1
  %33 = ptrtoint ptr %iifindex.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %iifindex.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.not.i = icmp eq i32 %34, 1
  br i1 %cmp.not.i, label %if.end23.if.end33_crit_edge, label %land.rhs.i

if.end23.if.end33_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

land.rhs.i:                                       ; preds = %if.end23
  %ip_proto.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 10
  %35 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %ip_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i = icmp eq i8 %36, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.rhs.i.if.then32_crit_edge

land.rhs.i.if.then32_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %sport_range.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 22
  %37 = ptrtoint ptr %sport_range.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %sport_range.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %38)
  %cmp.not.i.i = icmp eq i16 %38, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %fib_rule_port_range_set.exit.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i

fib_rule_port_range_set.exit.i:                   ; preds = %lor.lhs.false.i
  %end.i.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 22, i32 1
  %39 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %end.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp3.i.not.i = icmp eq i16 %40, 0
  br i1 %cmp3.i.not.i, label %fib_rule_port_range_set.exit.i.lor.rhs.i_crit_edge, label %fib_rule_port_range_set.exit.i.if.then32_crit_edge

fib_rule_port_range_set.exit.i.if.then32_crit_edge: ; preds = %fib_rule_port_range_set.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

fib_rule_port_range_set.exit.i.lor.rhs.i_crit_edge: ; preds = %fib_rule_port_range_set.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %fib_rule_port_range_set.exit.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %dport_range.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 23
  %41 = ptrtoint ptr %dport_range.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %dport_range.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %cmp.not.i7.i = icmp eq i16 %42, 0
  br i1 %cmp.not.i7.i, label %lor.rhs.i.if.end33_crit_edge, label %fib_rule_requires_fldissect.exit

lor.rhs.i.if.end33_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

fib_rule_requires_fldissect.exit:                 ; preds = %lor.rhs.i
  %end.i8.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 23, i32 1
  %43 = ptrtoint ptr %end.i8.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %end.i8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %cmp3.i9.i.not = icmp eq i16 %44, 0
  br i1 %cmp3.i9.i.not, label %fib_rule_requires_fldissect.exit.if.end33_crit_edge, label %fib_rule_requires_fldissect.exit.if.then32_crit_edge

fib_rule_requires_fldissect.exit.if.then32_crit_edge: ; preds = %fib_rule_requires_fldissect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then32

fib_rule_requires_fldissect.exit.if.end33_crit_edge: ; preds = %fib_rule_requires_fldissect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

if.then32:                                        ; preds = %fib_rule_requires_fldissect.exit.if.then32_crit_edge, %fib_rule_port_range_set.exit.i.if.then32_crit_edge, %land.rhs.i.if.then32_crit_edge
  %fib6_rules_require_fldissect = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 19
  %45 = ptrtoint ptr %fib6_rules_require_fldissect to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %fib6_rules_require_fldissect, align 32
  %inc = add i32 %46, 1
  store i32 %inc, ptr %fib6_rules_require_fldissect, align 32
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %fib_rule_requires_fldissect.exit.if.end33_crit_edge, %lor.rhs.i.if.end33_crit_edge, %if.end23.if.end33_crit_edge
  %fib6_has_custom_rules = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 36, i32 18
  %47 = ptrtoint ptr %fib6_has_custom_rules to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %fib6_has_custom_rules, align 1
  br label %errout

errout:                                           ; preds = %if.end33, %if.end7.errout_crit_edge, %if.then6, %do.body.errout_crit_edge
  %err.0 = phi i32 [ 0, %if.end33 ], [ -22, %if.then6 ], [ -22, %do.body.errout_crit_edge ], [ -105, %if.end7.errout_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fib6_rule_delete(ptr nocapture noundef readonly %rule) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fr_net = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 14
  %0 = ptrtoint ptr %fr_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fr_net, align 4
  %fib6_rules_require_fldissect = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 36, i32 19
  %2 = ptrtoint ptr %fib6_rules_require_fldissect to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fib6_rules_require_fldissect, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %iifindex.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 1
  %4 = ptrtoint ptr %iifindex.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iifindex.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not.i = icmp eq i32 %5, 1
  br i1 %cmp.not.i, label %land.lhs.true.if.end_crit_edge, label %land.rhs.i

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.rhs.i:                                       ; preds = %land.lhs.true
  %ip_proto.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 10
  %6 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ip_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.rhs.i.if.then_crit_edge

land.rhs.i.if.then_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %sport_range.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 22
  %8 = ptrtoint ptr %sport_range.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %sport_range.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %cmp.not.i.i = icmp eq i16 %9, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %fib_rule_port_range_set.exit.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i

fib_rule_port_range_set.exit.i:                   ; preds = %lor.lhs.false.i
  %end.i.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 22, i32 1
  %10 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %end.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp3.i.not.i = icmp eq i16 %11, 0
  br i1 %cmp3.i.not.i, label %fib_rule_port_range_set.exit.i.lor.rhs.i_crit_edge, label %fib_rule_port_range_set.exit.i.if.then_crit_edge

fib_rule_port_range_set.exit.i.if.then_crit_edge: ; preds = %fib_rule_port_range_set.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

fib_rule_port_range_set.exit.i.lor.rhs.i_crit_edge: ; preds = %fib_rule_port_range_set.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %fib_rule_port_range_set.exit.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %dport_range.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 23
  %12 = ptrtoint ptr %dport_range.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %dport_range.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.not.i7.i = icmp eq i16 %13, 0
  br i1 %cmp.not.i7.i, label %lor.rhs.i.if.end_crit_edge, label %fib_rule_requires_fldissect.exit

lor.rhs.i.if.end_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

fib_rule_requires_fldissect.exit:                 ; preds = %lor.rhs.i
  %end.i8.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 23, i32 1
  %14 = ptrtoint ptr %end.i8.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %end.i8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp3.i9.i.not = icmp eq i16 %15, 0
  br i1 %cmp3.i9.i.not, label %fib_rule_requires_fldissect.exit.if.end_crit_edge, label %fib_rule_requires_fldissect.exit.if.then_crit_edge

fib_rule_requires_fldissect.exit.if.then_crit_edge: ; preds = %fib_rule_requires_fldissect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

fib_rule_requires_fldissect.exit.if.end_crit_edge: ; preds = %fib_rule_requires_fldissect.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %fib_rule_requires_fldissect.exit.if.then_crit_edge, %fib_rule_port_range_set.exit.i.if.then_crit_edge, %land.rhs.i.if.then_crit_edge
  %dec = add i32 %3, -1
  %16 = ptrtoint ptr %fib6_rules_require_fldissect to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dec, ptr %fib6_rules_require_fldissect, align 32
  br label %if.end

if.end:                                           ; preds = %if.then, %fib_rule_requires_fldissect.exit.if.end_crit_edge, %lor.rhs.i.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib6_rule_compare(ptr noundef %rule, ptr nocapture noundef readonly %frh, ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %src_len = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 2
  %0 = ptrtoint ptr %src_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %src_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %conv = zext i8 %1 to i32
  %plen = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %plen, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp.not = icmp eq i32 %3, %conv
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dst_len = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 1
  %4 = ptrtoint ptr %dst_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dst_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not = icmp eq i8 %5, 0
  br i1 %tobool5.not, label %if.end.if.end13_crit_edge, label %land.lhs.true6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true6:                                   ; preds = %if.end
  %conv4 = zext i8 %5 to i32
  %plen7 = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %plen7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %plen7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv4)
  %cmp10.not = icmp eq i32 %7, %conv4
  br i1 %cmp10.not, label %land.lhs.true6.if.end13_crit_edge, label %land.lhs.true6.cleanup_crit_edge

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true6.if.end13_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true6.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %tos = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 3
  %8 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool15.not = icmp eq i8 %9, 0
  br i1 %tobool15.not, label %if.end13.if.end23_crit_edge, label %land.lhs.true16

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

land.lhs.true16:                                  ; preds = %if.end13
  %tclass = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 3
  %10 = ptrtoint ptr %tclass to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tclass, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %9)
  %cmp20.not = icmp eq i8 %11, %9
  br i1 %cmp20.not, label %land.lhs.true16.if.end23_crit_edge, label %land.lhs.true16.cleanup_crit_edge

land.lhs.true16.cleanup_crit_edge:                ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true16.if.end23_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true16.if.end23_crit_edge, %if.end13.if.end23_crit_edge
  br i1 %tobool.not, label %if.end23.if.end31_crit_edge, label %land.lhs.true27

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

land.lhs.true27:                                  ; preds = %if.end23
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %src28 = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 1
  %call = tail call i32 @nla_memcmp(ptr noundef %13, ptr noundef %src28, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool29.not = icmp eq i32 %call, 0
  br i1 %tobool29.not, label %land.lhs.true27.if.end31_crit_edge, label %land.lhs.true27.cleanup_crit_edge

land.lhs.true27.cleanup_crit_edge:                ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true27.if.end31_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.end31:                                         ; preds = %land.lhs.true27.if.end31_crit_edge, %if.end23.if.end31_crit_edge
  %14 = ptrtoint ptr %dst_len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dst_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool34.not = icmp eq i8 %15, 0
  br i1 %tobool34.not, label %if.end31.if.end42_crit_edge, label %land.lhs.true35

if.end31.if.end42_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

land.lhs.true35:                                  ; preds = %if.end31
  %arrayidx36 = getelementptr ptr, ptr %tb, i32 1
  %16 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx36, align 4
  %dst37 = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 2
  %call39 = tail call i32 @nla_memcmp(ptr noundef %17, ptr noundef %dst37, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %land.lhs.true35.if.end42_crit_edge, label %land.lhs.true35.cleanup_crit_edge

land.lhs.true35.cleanup_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true35.if.end42_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true35.if.end42_crit_edge, %if.end31.if.end42_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %land.lhs.true35.cleanup_crit_edge, %land.lhs.true27.cleanup_crit_edge, %land.lhs.true16.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end42 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true6.cleanup_crit_edge ], [ 0, %land.lhs.true16.cleanup_crit_edge ], [ 0, %land.lhs.true27.cleanup_crit_edge ], [ 0, %land.lhs.true35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib6_rule_fill(ptr noundef %rule, ptr noundef %skb, ptr nocapture noundef writeonly %frh) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %plen = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %plen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %plen, align 4
  %conv = trunc i32 %1 to i8
  %dst_len = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 1
  %2 = ptrtoint ptr %dst_len to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %dst_len, align 1
  %src = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 1
  %plen1 = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %plen1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %plen1, align 8
  %conv2 = trunc i32 %4 to i8
  %src_len = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 2
  %5 = ptrtoint ptr %src_len to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2, ptr %src_len, align 2
  %tclass = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 3
  %6 = ptrtoint ptr %tclass to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tclass, align 8
  %tos = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 3
  %8 = ptrtoint ptr %tos to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %tos, align 1
  %9 = load i32, ptr %plen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %dst = getelementptr inbounds %struct.fib6_rule, ptr %rule, i32 0, i32 2
  %call.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 16, ptr noundef %dst) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.nla_put_failure_crit_edge

land.lhs.true.nla_put_failure_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %10 = ptrtoint ptr %plen1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %plen1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not = icmp eq i32 %11, 0
  br i1 %tobool9.not, label %lor.lhs.false.cleanup_crit_edge, label %land.lhs.true10

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true10:                                  ; preds = %lor.lhs.false
  %call.i24 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 16, ptr noundef %src) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool14.not = icmp eq i32 %call.i24, 0
  br i1 %tobool14.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.nla_put_failure_crit_edge

land.lhs.true10.nla_put_failure_crit_edge:        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

nla_put_failure:                                  ; preds = %land.lhs.true10.nla_put_failure_crit_edge, %land.lhs.true.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %land.lhs.true10.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -105, %nla_put_failure ], [ 0, %land.lhs.true10.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fib6_rule_nlmsg_payload(ptr nocapture noundef readnone %rule) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 40
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib6_get_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_dev_get_saddr(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib6_new_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_fib6_rule_default, !1, !"__ksymtab_fib6_rule_default", i1 false, i1 false}
!1 = !{!"../net/ipv6/fib6_rules.c", i32 49, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../include/net/dst.h", i32 231, i32 2}
!4 = !{ptr @fib6_rules_net_ops, !5, !"fib6_rules_net_ops", i1 false, i1 false}
!5 = !{!"../net/ipv6/fib6_rules.c", i32 496, i32 33}
!6 = !{ptr @fib6_rules_ops_template, !7, !"fib6_rules_ops_template", i1 false, i1 false}
!7 = !{!"../net/ipv6/fib6_rules.c", i32 445, i32 51}
!8 = !{ptr @fib6_rule_configure.__msg, !9, !"__msg", i1 false, i1 false}
!9 = !{!"../net/ipv6/fib6_rules.c", i32 354, i32 4}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i8 0, i8 2}
!20 = !{i64 2148491813}
!21 = !{i64 977433, i64 977458, i64 977480, i64 977496, i64 977508, i64 977528, i64 977552, i64 977568, i64 977580}
!22 = !{i64 2148492001}
