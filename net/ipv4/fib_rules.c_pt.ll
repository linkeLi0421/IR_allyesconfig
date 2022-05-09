; ModuleID = '/llk/IR_all_yes/net/ipv4/fib_rules.c_pt.bc'
source_filename = "../net/ipv4/fib_rules.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fib4_rule_default\22, \22a\22\09"
module asm "\09.weak\09__crc_fib4_rule_default\09\09\09\09"
module asm "\09.long\09__crc_fib4_rule_default\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fib4_rule_default:\09\09\09\09\09"
module asm "\09.asciz \09\22fib4_rule_default\22\09\09\09\09\09"
module asm "__kstrtabns_fib4_rule_default:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__fib_lookup\22, \22a\22\09"
module asm "\09.weak\09__crc___fib_lookup\09\09\09\09"
module asm "\09.long\09__crc___fib_lookup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___fib_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22__fib_lookup\22\09\09\09\09\09"
module asm "__kstrtabns___fib_lookup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fib_rules_ops = type { i32, %struct.list_head, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, ptr, ptr, %struct.callback_head }
%struct.list_head = type { ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fib4_rule = type { %struct.fib_rule, i8, i8, i8, i32, i32, i32, i32, i32 }
%struct.fib_rule = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i64, ptr, ptr, %struct.refcount_struct, i32, i32, i32, [16 x i8], [16 x i8], %struct.fib_kuid_range, %struct.fib_rule_port_range, %struct.fib_rule_port_range, %struct.callback_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fib_kuid_range = type { %struct.kuid_t, %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.fib_rule_port_range = type { i16, i16 }
%struct.fib_lookup_arg = type { ptr, ptr, ptr, ptr, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.191, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.191 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.fib_result = type { i32, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.fib_info = type { %struct.hlist_node, %struct.hlist_node, %struct.list_head, ptr, %struct.refcount_struct, %struct.refcount_struct, i32, i8, i8, i8, i8, i32, i32, i32, ptr, i32, i8, i8, ptr, %struct.callback_head, [0 x %struct.fib_nh] }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32, i32 }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.149, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.149 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.141 }
%union.anon.141 = type { [4 x i32] }
%struct.nexthop = type { %struct.rb_node, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, i8, i8, i8, %struct.refcount_struct, %struct.callback_head, %union.anon.147 }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.147 = type { ptr }
%struct.nh_group = type { ptr, i16, i8, i8, i8, i8, i8, ptr, [0 x %struct.nh_grp_entry] }
%struct.nh_grp_entry = type { ptr, i8, %union.anon.151, %struct.list_head, ptr }
%union.anon.151 = type { %struct.anon.153 }
%struct.anon.153 = type { %struct.list_head, i16, i16 }
%struct.nh_info = type { %struct.hlist_node, ptr, i8, i8, i8, %union.anon.148 }
%union.anon.148 = type { %struct.fib_nh }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.158, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.158 = type { ptr }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.anon.142 = type { i16, i16 }
%struct.sk_buff = type { %union.anon.82, %union.anon.159, %union.anon.160, [48 x i8], %union.anon.161, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.163, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.159 = type { ptr }
%union.anon.160 = type { i64 }
%union.anon.161 = type { %struct.anon.162 }
%struct.anon.162 = type { i32, ptr }
%union.anon.163 = type { %struct.anon.164 }
%struct.anon.164 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.165, i32, i32, i32, i16, i16, %union.anon.167, i32, %union.anon.168, %union.anon.169, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.165 = type { i32 }
%union.anon.167 = type { i32 }
%union.anon.168 = type { i32 }
%union.anon.169 = type { i16 }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.178, [0 x i32], %union.anon.179, i16, i16, %union.anon.180, %struct.refcount_struct, [0 x i32], %union.anon.181 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.atomic64_t = type { i64 }
%union.anon.178 = type { i32 }
%union.anon.179 = type { %struct.hlist_node }
%union.anon.180 = type { i32 }
%union.anon.181 = type { i32 }
%struct.fib_rule_hdr = type { i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.fib_table = type { %struct.hlist_node, i32, i32, %struct.callback_head, ptr, [0 x i32] }

@__kstrtab_fib4_rule_default = external dso_local constant [0 x i8], align 1
@__kstrtabns_fib4_rule_default = external dso_local constant [0 x i8], align 1
@__ksymtab_fib4_rule_default = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fib4_rule_default to i32), ptr @__kstrtab_fib4_rule_default, ptr @__kstrtabns_fib4_rule_default }, section "___ksymtab_gpl+fib4_rule_default", align 4
@__kstrtab___fib_lookup = external dso_local constant [0 x i8], align 1
@__kstrtabns___fib_lookup = external dso_local constant [0 x i8], align 1
@__ksymtab___fib_lookup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__fib_lookup to i32), ptr @__kstrtab___fib_lookup, ptr @__kstrtabns___fib_lookup }, section "___ksymtab_gpl+__fib_lookup", align 4
@fib4_rules_ops_template = internal constant { %struct.fib_rules_ops, [32 x i8] } { %struct.fib_rules_ops { i32 2, %struct.list_head zeroinitializer, i32 152, i32 4, i32 0, i32 0, i32 0, ptr @fib4_rule_action, ptr @fib4_rule_suppress, ptr @fib4_rule_match, ptr @fib4_rule_configure, ptr @fib4_rule_delete, ptr @fib4_rule_compare, ptr @fib4_rule_fill, ptr @fib4_rule_nlmsg_payload, ptr @fib4_rule_flush_cache, i32 8, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.callback_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nexthop_fib_nhc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/nexthop.h\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nexthop_fib_nhc.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fib4_rule_configure.__msg = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Invalid tos\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 7, i64 8]
@___asan_gen_.6 = private unnamed_addr constant [24 x i8] c"fib4_rules_ops_template\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 370, i32 51 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 695, i32 2 }
@___asan_gen_.16 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 723, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [25 x i8] c"../include/net/nexthop.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 376, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.25 = private constant [24 x i8] c"../net/ipv4/fib_rules.c\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 229, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__ksymtab___fib_lookup, ptr @__ksymtab_fib4_rule_default, ptr @fib4_rules_ops_template, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @fib4_rule_configure.__msg], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib4_rules_ops_template to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fib4_rule_configure.__msg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @fib4_rule_default(ptr noundef %rule) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_len.i = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 1
  %0 = ptrtoint ptr %dst_len.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dst_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false.i:                                  ; preds = %entry
  %src_len.i = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %src_len.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %src_len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not.i = icmp eq i8 %3, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.return_crit_edge

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %tos.i = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 3
  %4 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tos.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool5.not.i = icmp eq i8 %5, 0
  br i1 %tobool5.not.i, label %fib4_rule_matchall.exit, label %lor.lhs.false3.i.return_crit_edge

lor.lhs.false3.i.return_crit_edge:                ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

fib4_rule_matchall.exit:                          ; preds = %lor.lhs.false3.i
  %call.i = tail call zeroext i1 @fib_rule_matchall(ptr noundef %rule) #10
  br i1 %call.i, label %lor.lhs.false, label %fib4_rule_matchall.exit.return_crit_edge

fib4_rule_matchall.exit.return_crit_edge:         ; preds = %fib4_rule_matchall.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

lor.lhs.false:                                    ; preds = %fib4_rule_matchall.exit
  %action = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 7
  %6 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp.not = icmp eq i8 %7, 1
  br i1 %cmp.not, label %lor.lhs.false2, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #12
  %table = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 6
  %10 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %table, align 4
  %.off = add i32 %11, -253
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br label %return

return:                                           ; preds = %if.end, %lor.lhs.false2.return_crit_edge, %lor.lhs.false.return_crit_edge, %fib4_rule_matchall.exit.return_crit_edge, %lor.lhs.false3.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %lor.lhs.false2.return_crit_edge ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %fib4_rule_matchall.exit.return_crit_edge ], [ %switch, %if.end ], [ false, %lor.lhs.false3.i.return_crit_edge ], [ false, %lor.lhs.false.i.return_crit_edge ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib4_rules_dump(ptr noundef %net, ptr noundef %nb, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fib_rules_dump(ptr noundef %net, ptr noundef %nb, i32 noundef 2, ptr noundef %extack) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_rules_dump(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib4_rules_seq_read(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fib_rules_seq_read(ptr noundef %net, i32 noundef 2) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_rules_seq_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__fib_lookup(ptr noundef %net, ptr noundef %flp, ptr noundef %res, i32 noundef %flags) #0 align 64 {
entry:
  %arg = alloca %struct.fib_lookup_arg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %arg) #10
  %0 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 4
  %4 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 5
  %5 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %arg, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %res, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %2, align 4
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %flags, ptr %4, align 4
  tail call void @l3mdev_update_flow(ptr noundef %net, ptr noundef %flp) #10
  %rules_ops = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 10
  %11 = ptrtoint ptr %rules_ops to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rules_ops, align 4
  %call3 = call i32 @fib_rules_lookup(ptr noundef %12, ptr noundef %flp, i32 noundef 0, ptr noundef nonnull %arg) #10
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %tclassid = getelementptr inbounds %struct.fib4_rule, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %tclassid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tclassid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ %16, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %17 = getelementptr inbounds %struct.fib_result, ptr %res, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %call3)
  %cmp = icmp eq i32 %call3, -3
  %spec.store.select = select i1 %cmp, i32 -101, i32 %call3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %arg) #10
  ret i32 %spec.store.select
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @l3mdev_update_flow(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_rules_lookup(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fib4_rules_init(ptr noundef %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @fib_rules_register(ptr noundef nonnull @fib4_rules_ops_template, ptr noundef %net) #10
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @fib_default_rule_add(ptr noundef %call, i32 noundef 0, i32 noundef 255, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i17 = icmp slt i32 %call.i, 0
  br i1 %cmp.i17, label %if.end.fail_crit_edge, label %if.end.i

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @fib_default_rule_add(ptr noundef %call, i32 noundef 32766, i32 noundef 254, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.fail_crit_edge, label %fib_default_rules_init.exit

if.end.i.fail_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

fib_default_rules_init.exit:                      ; preds = %if.end.i
  %call5.i = tail call i32 @fib_default_rule_add(ptr noundef %call, i32 noundef 32767, i32 noundef 253, i32 noundef 0) #10
  %1 = tail call i32 @llvm.smin.i32(i32 %call5.i, i32 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp = icmp slt i32 %call5.i, 0
  br i1 %cmp, label %fib_default_rules_init.exit.fail_crit_edge, label %if.end5

fib_default_rules_init.exit.fail_crit_edge:       ; preds = %fib_default_rules_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail

if.end5:                                          ; preds = %fib_default_rules_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rules_ops = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 10
  %2 = ptrtoint ptr %rules_ops to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %rules_ops, align 4
  %fib_has_custom_rules = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 14
  %3 = ptrtoint ptr %fib_has_custom_rules to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %fib_has_custom_rules, align 4
  %fib_rules_require_fldissect = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 13
  %4 = ptrtoint ptr %fib_rules_require_fldissect to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %fib_rules_require_fldissect, align 16
  br label %cleanup

fail:                                             ; preds = %fib_default_rules_init.exit.fail_crit_edge, %if.end.i.fail_crit_edge, %if.end.fail_crit_edge
  %retval.0.i20 = phi i32 [ %1, %fib_default_rules_init.exit.fail_crit_edge ], [ %call1.i, %if.end.i.fail_crit_edge ], [ %call.i, %if.end.fail_crit_edge ]
  tail call void @fib_rules_unregister(ptr noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end5, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %retval.0.i20, %fail ], [ 0, %if.end5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib_rules_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fib_rules_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fib4_rules_exit(ptr nocapture noundef readonly %net) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rules_ops = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 35, i32 10
  %0 = ptrtoint ptr %rules_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rules_ops, align 4
  tail call void @fib_rules_unregister(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fib_rule_matchall(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib4_rule_action(ptr nocapture noundef readonly %rule, ptr noundef %flp, i32 noundef %flags, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %action = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 7
  %0 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %action, align 8
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %sw.default [
    i8 1, label %sw.epilog
    i8 7, label %entry.cleanup_crit_edge
    i8 8, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %3 = tail call i32 @llvm.read_register.i32(metadata !21) #10
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !31
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %sw.epilog.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

sw.epilog.rcu_read_lock.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %sw.epilog
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 696, ptr noundef nonnull @.str.1) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %sw.epilog.rcu_read_lock.exit_crit_edge
  %l3mdev.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 8
  %7 = ptrtoint ptr %l3mdev.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %l3mdev.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i13 = icmp eq i8 %8, 0
  %table.i = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 4
  %table1.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 6
  %cond.in.i = select i1 %tobool.not.i13, ptr %table1.i, ptr %table.i
  %9 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %fr_net = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 14
  %10 = ptrtoint ptr %fr_net to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fr_net, align 4
  %call3 = tail call ptr @fib_get_table(ptr noundef %11, i32 noundef %cond.i) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end_crit_edge, label %if.then

rcu_read_lock.exit.if.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  %result = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 2
  %12 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %result, align 4
  %flags4 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 5
  %14 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags4, align 4
  %call5 = tail call i32 @fib_table_lookup(ptr noundef nonnull %call3, ptr noundef %flp, ptr noundef %13, i32 noundef %15) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %rcu_read_lock.exit.if.end_crit_edge
  %err.0 = phi i32 [ %call5, %if.then ], [ -11, %rcu_read_lock.exit.if.end_crit_edge ]
  %call.i14 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i14, label %if.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i17

if.end.rcu_read_unlock.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i17:                                ; preds = %if.end
  %call1.i15 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i15)
  %tobool.not.i16 = icmp eq i32 %call1.i15, 0
  br i1 %tobool.not.i16, label %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i19

land.lhs.true.i17.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i19:                               ; preds = %land.lhs.true.i17
  %.b4.i18 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i18, label %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, label %if.then.i20

land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i20:                                      ; preds = %land.lhs.true2.i19
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 724, ptr noundef nonnull @.str.2) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i20, %land.lhs.true2.i19.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i17.rcu_read_unlock.exit_crit_edge, %if.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !32
  %16 = tail call i32 @llvm.read_register.i32(metadata !21) #10
  %and.i.i.i.i.i21 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i21 to ptr
  %preempt_count.i.i.i.i22 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i22, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i22, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %sw.default, %sw.bb1, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default ], [ -13, %sw.bb1 ], [ %err.0, %rcu_read_unlock.exit ], [ -101, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @fib4_rule_suppress(ptr nocapture noundef readonly %rule, i32 noundef %flags, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %result1 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 2
  %0 = ptrtoint ptr %result1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %result1, align 4
  %fi = getelementptr inbounds %struct.fib_result, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fi, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %nh.i = getelementptr inbounds %struct.fib_info, ptr %3, i32 0, i32 18
  %4 = ptrtoint ptr %nh.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nh.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i, !prof !33

if.then.i:                                        ; preds = %if.then
  %is_group.i = getelementptr inbounds %struct.nexthop, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %is_group.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_group.i, align 2, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i31 = icmp eq i8 %7, 0
  br i1 %tobool.not.i31, label %if.then.i.if.end25.i_crit_edge, label %if.then.i33

if.then.i.if.end25.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.then.i33:                                      ; preds = %if.then.i
  %8 = getelementptr inbounds %struct.nexthop, ptr %5, i32 0, i32 12
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %8, align 4
  %call.i32 = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call.i32, label %if.then.i33.do.end16.i_crit_edge, label %lor.lhs.false.i

if.then.i33.do.end16.i_crit_edge:                 ; preds = %if.then.i33
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16.i

lor.lhs.false.i:                                  ; preds = %if.then.i33
  %call8.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.do.end16.i_crit_edge

lor.lhs.false.i.do.end16.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call10.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i.do.end16.i_crit_edge, label %land.lhs.true12.i

land.lhs.true.i.do.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16.i

land.lhs.true12.i:                                ; preds = %land.lhs.true.i
  %.b2.i = load i1, ptr @nexthop_fib_nhc.__warned, align 1
  br i1 %.b2.i, label %land.lhs.true12.i.do.end16.i_crit_edge, label %if.then14.i

land.lhs.true12.i.do.end16.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16.i

if.then14.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nexthop_fib_nhc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 376, ptr noundef nonnull @.str.4) #10
  br label %do.end16.i

do.end16.i:                                       ; preds = %if.then14.i, %land.lhs.true12.i.do.end16.i_crit_edge, %land.lhs.true.i.do.end16.i_crit_edge, %lor.lhs.false.i.do.end16.i_crit_edge, %if.then.i33.do.end16.i_crit_edge
  %is_multipath.i = getelementptr inbounds %struct.nh_group, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %is_multipath.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_multipath.i, align 2, !range !34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool18.not.i = icmp eq i8 %12, 0
  br i1 %tobool18.not.i, label %do.end16.i.if.end25.i_crit_edge, label %if.then19.i

do.end16.i.if.end25.i_crit_edge:                  ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

if.then19.i:                                      ; preds = %do.end16.i
  %num_nh.i.i = getelementptr inbounds %struct.nh_group, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %num_nh.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %num_nh.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp.i.i = icmp eq i16 %14, 0
  br i1 %cmp.i.i, label %if.then19.i.fib_info_nhc.exit_crit_edge, label %nexthop_mpath_select.exit.i

if.then19.i.fib_info_nhc.exit_crit_edge:          ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fib_info_nhc.exit

nexthop_mpath_select.exit.i:                      ; preds = %if.then19.i
  %nh_entries.i.i = getelementptr inbounds %struct.nh_group, ptr %10, i32 0, i32 8
  %15 = ptrtoint ptr %nh_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nh_entries.i.i, align 4
  %tobool21.not.i = icmp eq ptr %16, null
  br i1 %tobool21.not.i, label %nexthop_mpath_select.exit.i.fib_info_nhc.exit_crit_edge, label %nexthop_mpath_select.exit.i.if.end25.i_crit_edge

nexthop_mpath_select.exit.i.if.end25.i_crit_edge: ; preds = %nexthop_mpath_select.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25.i

nexthop_mpath_select.exit.i.fib_info_nhc.exit_crit_edge: ; preds = %nexthop_mpath_select.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fib_info_nhc.exit

if.end25.i:                                       ; preds = %nexthop_mpath_select.exit.i.if.end25.i_crit_edge, %do.end16.i.if.end25.i_crit_edge, %if.then.i.if.end25.i_crit_edge
  %nh.addr.2.i = phi ptr [ %5, %if.then.i.if.end25.i_crit_edge ], [ %16, %nexthop_mpath_select.exit.i.if.end25.i_crit_edge ], [ %5, %do.end16.i.if.end25.i_crit_edge ]
  %17 = getelementptr inbounds %struct.nexthop, ptr %nh.addr.2.i, i32 0, i32 12
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %17, align 4
  %call31.i = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call31.i, label %if.end25.i.do.end43.i_crit_edge, label %lor.lhs.false32.i

if.end25.i.do.end43.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43.i

lor.lhs.false32.i:                                ; preds = %if.end25.i
  %call33.i = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %land.lhs.true35.i, label %lor.lhs.false32.i.do.end43.i_crit_edge

lor.lhs.false32.i.do.end43.i_crit_edge:           ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43.i

land.lhs.true35.i:                                ; preds = %lor.lhs.false32.i
  %call36.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %land.lhs.true35.i.do.end43.i_crit_edge, label %land.lhs.true38.i

land.lhs.true35.i.do.end43.i_crit_edge:           ; preds = %land.lhs.true35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43.i

land.lhs.true38.i:                                ; preds = %land.lhs.true35.i
  %.b501.i = load i1, ptr @nexthop_fib_nhc.__warned.5, align 1
  br i1 %.b501.i, label %land.lhs.true38.i.do.end43.i_crit_edge, label %if.then40.i

land.lhs.true38.i.do.end43.i_crit_edge:           ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end43.i

if.then40.i:                                      ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nexthop_fib_nhc.__warned.5, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 384, ptr noundef nonnull @.str.4) #10
  br label %do.end43.i

do.end43.i:                                       ; preds = %if.then40.i, %land.lhs.true38.i.do.end43.i_crit_edge, %land.lhs.true35.i.do.end43.i_crit_edge, %lor.lhs.false32.i.do.end43.i_crit_edge, %if.end25.i.do.end43.i_crit_edge
  %20 = getelementptr inbounds %struct.nh_info, ptr %19, i32 0, i32 5
  br label %fib_info_nhc.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %fib_nh.i = getelementptr inbounds %struct.fib_info, ptr %3, i32 0, i32 20
  br label %fib_info_nhc.exit

fib_info_nhc.exit:                                ; preds = %if.end.i, %do.end43.i, %nexthop_mpath_select.exit.i.fib_info_nhc.exit_crit_edge, %if.then19.i.fib_info_nhc.exit_crit_edge
  %retval.0.i = phi ptr [ %fib_nh.i, %if.end.i ], [ %20, %do.end43.i ], [ null, %nexthop_mpath_select.exit.i.fib_info_nhc.exit_crit_edge ], [ null, %if.then19.i.fib_info_nhc.exit_crit_edge ]
  %21 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %retval.0.i, align 4
  br label %if.end

if.end:                                           ; preds = %fib_info_nhc.exit, %entry.if.end_crit_edge
  %dev.0 = phi ptr [ %22, %fib_info_nhc.exit ], [ null, %entry.if.end_crit_edge ]
  %prefixlen = getelementptr inbounds %struct.fib_result, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %prefixlen to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %prefixlen, align 4
  %conv = zext i8 %24 to i32
  %suppress_prefixlen = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 18
  %25 = ptrtoint ptr %suppress_prefixlen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %suppress_prefixlen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv)
  %cmp.not = icmp slt i32 %26, %conv
  br i1 %cmp.not, label %if.end5, label %if.end.suppress_route_crit_edge

if.end.suppress_route_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %suppress_route

if.end5:                                          ; preds = %if.end
  %suppress_ifgroup = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 17
  %27 = ptrtoint ptr %suppress_ifgroup to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %suppress_ifgroup, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp6.not = icmp eq i32 %28, -1
  %tobool8.not = icmp eq ptr %dev.0, null
  %or.cond = select i1 %cmp6.not, i1 true, i1 %tobool8.not
  br i1 %or.cond, label %if.end5.cleanup_crit_edge, label %land.lhs.true9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true9:                                   ; preds = %if.end5
  %group = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 35
  %29 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %group, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %28)
  %cmp11 = icmp eq i32 %30, %28
  br i1 %cmp11, label %land.lhs.true9.suppress_route_crit_edge, label %land.lhs.true9.cleanup_crit_edge

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true9.suppress_route_crit_edge:          ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %suppress_route

suppress_route:                                   ; preds = %land.lhs.true9.suppress_route_crit_edge, %if.end.suppress_route_crit_edge
  %flags15 = getelementptr inbounds %struct.fib_lookup_arg, ptr %arg, i32 0, i32 5
  %31 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags15, align 4
  %and = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then17, label %suppress_route.cleanup_crit_edge

suppress_route.cleanup_crit_edge:                 ; preds = %suppress_route
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then17:                                        ; preds = %suppress_route
  %33 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %fi, align 4
  %fib_clntref.i = getelementptr inbounds %struct.fib_info, ptr %34, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !35
  tail call void @llvm.prefetch.p0(ptr %fib_clntref.i, i32 1, i32 3, i32 1) #10
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref.i, ptr %fib_clntref.i, i32 1, ptr elementtype(i32) %fib_clntref.i) #10, !srcloc !36
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i29, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !33

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %fib_clntref.i, i32 noundef 3) #10
  br label %cleanup

if.then.i29:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !37
  tail call void @free_fib_info(ptr noundef %34) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i29, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %suppress_route.cleanup_crit_edge, %land.lhs.true9.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %land.lhs.true9.cleanup_crit_edge ], [ false, %if.end5.cleanup_crit_edge ], [ true, %suppress_route.cleanup_crit_edge ], [ true, %if.end5.i.i.i.i.cleanup_crit_edge ], [ true, %if.then10.i.i.i.i ], [ true, %if.then.i29 ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fib4_rule_match(ptr nocapture noundef readonly %rule, ptr nocapture noundef readonly %fl, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %saddr2 = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 1
  %0 = ptrtoint ptr %saddr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %saddr2, align 8
  %src = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 4
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src, align 4
  %xor = xor i32 %3, %1
  %srcmask = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 5
  %4 = ptrtoint ptr %srcmask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %srcmask, align 8
  %and = and i32 %xor, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %daddr1 = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 2
  %6 = ptrtoint ptr %daddr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %daddr1, align 4
  %dst = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 6
  %8 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst, align 4
  %xor3 = xor i32 %9, %7
  %dstmask = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 7
  %10 = ptrtoint ptr %dstmask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dstmask, align 8
  %and4 = and i32 %xor3, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tos = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 3
  %12 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tos, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool6.not = icmp eq i8 %13, 0
  br i1 %tobool6.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %flowic_tos = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 3
  %14 = ptrtoint ptr %flowic_tos to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flowic_tos, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp.not = icmp eq i8 %13, %15
  br i1 %cmp.not, label %land.lhs.true.if.end12_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %ip_proto = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 10
  %16 = ptrtoint ptr %ip_proto to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ip_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool14.not = icmp eq i8 %17, 0
  br i1 %tobool14.not, label %if.end12.if.end23_crit_edge, label %land.lhs.true15

if.end12.if.end23_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

land.lhs.true15:                                  ; preds = %if.end12
  %flowic_proto = getelementptr inbounds %struct.flowi_common, ptr %fl, i32 0, i32 5
  %18 = ptrtoint ptr %flowic_proto to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flowic_proto, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp20.not = icmp eq i8 %17, %19
  br i1 %cmp20.not, label %land.lhs.true15.if.end23_crit_edge, label %land.lhs.true15.cleanup_crit_edge

land.lhs.true15.cleanup_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true15.if.end23_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

if.end23:                                         ; preds = %land.lhs.true15.if.end23_crit_edge, %if.end12.if.end23_crit_edge
  %sport_range = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 22
  %20 = ptrtoint ptr %sport_range to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %sport_range, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %cmp.not.i = icmp eq i16 %21, 0
  br i1 %cmp.not.i, label %if.end23.if.end29_crit_edge, label %fib_rule_port_range_set.exit

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

fib_rule_port_range_set.exit:                     ; preds = %if.end23
  %end.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 22, i32 1
  %22 = ptrtoint ptr %end.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %end.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %cmp3.i.not = icmp eq i16 %23, 0
  br i1 %cmp3.i.not, label %fib_rule_port_range_set.exit.if.end29_crit_edge, label %land.lhs.true25

fib_rule_port_range_set.exit.if.end29_crit_edge:  ; preds = %fib_rule_port_range_set.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

land.lhs.true25:                                  ; preds = %fib_rule_port_range_set.exit
  %uli = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 3
  %sport = getelementptr inbounds %struct.anon.142, ptr %uli, i32 0, i32 1
  %24 = ptrtoint ptr %sport to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %sport, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %25)
  %cmp.not.i57 = icmp ugt i16 %21, %25
  br i1 %cmp.not.i57, label %land.lhs.true25.cleanup_crit_edge, label %fib_rule_port_inrange.exit

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

fib_rule_port_inrange.exit:                       ; preds = %land.lhs.true25
  %26 = ptrtoint ptr %end.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %end.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %27, i16 %25)
  %cmp5.i.not = icmp ult i16 %27, %25
  br i1 %cmp5.i.not, label %fib_rule_port_inrange.exit.cleanup_crit_edge, label %fib_rule_port_inrange.exit.if.end29_crit_edge

fib_rule_port_inrange.exit.if.end29_crit_edge:    ; preds = %fib_rule_port_inrange.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end29

fib_rule_port_inrange.exit.cleanup_crit_edge:     ; preds = %fib_rule_port_inrange.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end29:                                         ; preds = %fib_rule_port_inrange.exit.if.end29_crit_edge, %fib_rule_port_range_set.exit.if.end29_crit_edge, %if.end23.if.end29_crit_edge
  %dport_range = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 23
  %28 = ptrtoint ptr %dport_range to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %dport_range, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %cmp.not.i60 = icmp eq i16 %29, 0
  br i1 %cmp.not.i60, label %if.end29.if.end37_crit_edge, label %fib_rule_port_range_set.exit64

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

fib_rule_port_range_set.exit64:                   ; preds = %if.end29
  %end.i61 = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 23, i32 1
  %30 = ptrtoint ptr %end.i61 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %end.i61, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %cmp3.i62.not = icmp eq i16 %31, 0
  br i1 %cmp3.i62.not, label %fib_rule_port_range_set.exit64.if.end37_crit_edge, label %land.lhs.true32

fib_rule_port_range_set.exit64.if.end37_crit_edge: ; preds = %fib_rule_port_range_set.exit64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true32:                                  ; preds = %fib_rule_port_range_set.exit64
  %uli34 = getelementptr inbounds %struct.flowi4, ptr %fl, i32 0, i32 3
  %32 = ptrtoint ptr %uli34 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %uli34, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %29, i16 %33)
  %cmp.not.i65 = icmp ugt i16 %29, %33
  br i1 %cmp.not.i65, label %land.lhs.true32.cleanup_crit_edge, label %fib_rule_port_inrange.exit69

land.lhs.true32.cleanup_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

fib_rule_port_inrange.exit69:                     ; preds = %land.lhs.true32
  %34 = ptrtoint ptr %end.i61 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %end.i61, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %35, i16 %33)
  %cmp5.i67.not = icmp ult i16 %35, %33
  br i1 %cmp5.i67.not, label %fib_rule_port_inrange.exit69.cleanup_crit_edge, label %fib_rule_port_inrange.exit69.if.end37_crit_edge

fib_rule_port_inrange.exit69.if.end37_crit_edge:  ; preds = %fib_rule_port_inrange.exit69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

fib_rule_port_inrange.exit69.cleanup_crit_edge:   ; preds = %fib_rule_port_inrange.exit69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %fib_rule_port_inrange.exit69.if.end37_crit_edge, %fib_rule_port_range_set.exit64.if.end37_crit_edge, %if.end29.if.end37_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %fib_rule_port_inrange.exit69.cleanup_crit_edge, %land.lhs.true32.cleanup_crit_edge, %fib_rule_port_inrange.exit.cleanup_crit_edge, %land.lhs.true25.cleanup_crit_edge, %land.lhs.true15.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end37 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true15.cleanup_crit_edge ], [ 0, %fib_rule_port_inrange.exit.cleanup_crit_edge ], [ 0, %fib_rule_port_inrange.exit69.cleanup_crit_edge ], [ 0, %land.lhs.true25.cleanup_crit_edge ], [ 0, %land.lhs.true32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib4_rule_configure(ptr nocapture noundef %rule, ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %frh, ptr nocapture noundef readonly %tb, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %tos = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 3
  %5 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tos, align 1
  %7 = and i8 %6, -31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @fib4_rule_configure.__msg) #10
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup59_crit_edge, label %if.then2

do.body.cleanup59_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @fib4_rule_configure.__msg, ptr %extack, align 4
  br label %cleanup59

if.end3:                                          ; preds = %entry
  %call4 = tail call i32 @fib_unmerge(ptr noundef %4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.cleanup59_crit_edge

if.end3.cleanup59_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

if.end7:                                          ; preds = %if.end3
  %table = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 6
  %9 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp = icmp eq i32 %10, 0
  br i1 %cmp, label %land.lhs.true, label %if.end7.if.end22_crit_edge

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

land.lhs.true:                                    ; preds = %if.end7
  %l3mdev = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 8
  %11 = ptrtoint ptr %l3mdev to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %l3mdev, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool9.not = icmp eq i8 %12, 0
  br i1 %tobool9.not, label %if.then10, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then10:                                        ; preds = %land.lhs.true
  %action = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 7
  %13 = ptrtoint ptr %action to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %action, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %14)
  %cmp12 = icmp eq i8 %14, 1
  br i1 %cmp12, label %if.then14, label %if.then10.if.end22_crit_edge

if.then10.if.end22_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then14:                                        ; preds = %if.then10
  %call16 = tail call fastcc ptr @fib_empty_table(ptr noundef %4)
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.then14.cleanup59_crit_edge, label %cleanup.thread

if.then14.cleanup59_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup59

cleanup.thread:                                   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %tb_id = getelementptr inbounds %struct.fib_table, ptr %call16, i32 0, i32 1
  %15 = ptrtoint ptr %tb_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tb_id, align 4
  %17 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %table, align 4
  br label %if.end22

if.end22:                                         ; preds = %cleanup.thread, %if.then10.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %if.end7.if.end22_crit_edge
  %src_len = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 2
  %18 = ptrtoint ptr %src_len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %src_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool23.not = icmp eq i8 %19, 0
  br i1 %tobool23.not, label %if.end22.if.end26_crit_edge, label %if.then24

if.end22.if.end26_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i, align 4
  %src = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 4
  %24 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %src, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end22.if.end26_crit_edge
  %dst_len = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 1
  %25 = ptrtoint ptr %dst_len to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dst_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool27.not = icmp eq i8 %26, 0
  br i1 %tobool27.not, label %if.end26.if.end31_crit_edge, label %if.then28

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx29 = getelementptr ptr, ptr %tb, i32 1
  %27 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx29, align 4
  %add.ptr.i.i93 = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i93 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i93, align 4
  %dst = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 6
  %31 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %dst, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end26.if.end31_crit_edge
  %arrayidx32 = getelementptr ptr, ptr %tb, i32 11
  %32 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx32, align 4
  %tobool33.not = icmp eq ptr %33, null
  br i1 %tobool33.not, label %if.end31.if.end41_crit_edge, label %if.then34

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then34:                                        ; preds = %if.end31
  %add.ptr.i.i94 = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i94 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i.i94, align 4
  %tclassid = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 8
  %36 = ptrtoint ptr %tclassid to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %tclassid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool38.not = icmp eq i32 %35, 0
  br i1 %tobool38.not, label %if.then34.if.end41_crit_edge, label %if.then39

if.then34.if.end41_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.then39:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  %fib_num_tclassid_users = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 35, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_num_tclassid_users, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %fib_num_tclassid_users, i32 1, i32 3, i32 1) #10
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_num_tclassid_users, ptr %fib_num_tclassid_users, i32 1, ptr elementtype(i32) %fib_num_tclassid_users) #10, !srcloc !38
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.then34.if.end41_crit_edge, %if.end31.if.end41_crit_edge
  %iifindex.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 1
  %38 = ptrtoint ptr %iifindex.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %iifindex.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.not.i = icmp eq i32 %39, 1
  br i1 %cmp.not.i, label %if.end41.if.end45_crit_edge, label %land.rhs.i

if.end41.if.end45_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

land.rhs.i:                                       ; preds = %if.end41
  %ip_proto.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 10
  %40 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %ip_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.rhs.i.if.then43_crit_edge

land.rhs.i.if.then43_crit_edge:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %sport_range.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 22
  %42 = ptrtoint ptr %sport_range.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %sport_range.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cmp.not.i.i = icmp eq i16 %43, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %fib_rule_port_range_set.exit.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

fib_rule_port_range_set.exit.i:                   ; preds = %lor.lhs.false.i
  %end.i.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 22, i32 1
  %44 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %end.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %45)
  %cmp3.i.not.i = icmp eq i16 %45, 0
  br i1 %cmp3.i.not.i, label %fib_rule_port_range_set.exit.i.lor.rhs.i_crit_edge, label %fib_rule_port_range_set.exit.i.if.then43_crit_edge

fib_rule_port_range_set.exit.i.if.then43_crit_edge: ; preds = %fib_rule_port_range_set.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

fib_rule_port_range_set.exit.i.lor.rhs.i_crit_edge: ; preds = %fib_rule_port_range_set.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %fib_rule_port_range_set.exit.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %dport_range.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 23
  %46 = ptrtoint ptr %dport_range.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %dport_range.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %cmp.not.i7.i = icmp eq i16 %47, 0
  br i1 %cmp.not.i7.i, label %lor.rhs.i.if.end45_crit_edge, label %fib_rule_requires_fldissect.exit

lor.rhs.i.if.end45_crit_edge:                     ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

fib_rule_requires_fldissect.exit:                 ; preds = %lor.rhs.i
  %end.i8.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 23, i32 1
  %48 = ptrtoint ptr %end.i8.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %end.i8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp3.i9.i.not = icmp eq i16 %49, 0
  br i1 %cmp3.i9.i.not, label %fib_rule_requires_fldissect.exit.if.end45_crit_edge, label %fib_rule_requires_fldissect.exit.if.then43_crit_edge

fib_rule_requires_fldissect.exit.if.then43_crit_edge: ; preds = %fib_rule_requires_fldissect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

fib_rule_requires_fldissect.exit.if.end45_crit_edge: ; preds = %fib_rule_requires_fldissect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45

if.then43:                                        ; preds = %fib_rule_requires_fldissect.exit.if.then43_crit_edge, %fib_rule_port_range_set.exit.i.if.then43_crit_edge, %land.rhs.i.if.then43_crit_edge
  %fib_rules_require_fldissect = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 35, i32 13
  %50 = ptrtoint ptr %fib_rules_require_fldissect to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fib_rules_require_fldissect, align 16
  %inc = add i32 %51, 1
  store i32 %inc, ptr %fib_rules_require_fldissect, align 16
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %fib_rule_requires_fldissect.exit.if.end45_crit_edge, %lor.rhs.i.if.end45_crit_edge, %if.end41.if.end45_crit_edge
  %52 = ptrtoint ptr %src_len to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %src_len, align 2
  %src_len47 = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 2
  %54 = ptrtoint ptr %src_len47 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %src_len47, align 1
  %conv49 = zext i8 %53 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i95 = icmp eq i8 %53, 0
  %sub.i = sub nsw i32 32, %conv49
  %notmask.i = shl nsw i32 -1, %sub.i
  %retval.0.i = select i1 %tobool.not.i95, i32 0, i32 %notmask.i
  %srcmask = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 5
  %55 = ptrtoint ptr %srcmask to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %retval.0.i, ptr %srcmask, align 8
  %56 = ptrtoint ptr %dst_len to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %dst_len, align 1
  %dst_len52 = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 1
  %58 = ptrtoint ptr %dst_len52 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %dst_len52, align 8
  %conv54 = zext i8 %57 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i96 = icmp eq i8 %57, 0
  %sub.i97 = sub nsw i32 32, %conv54
  %notmask.i98 = shl nsw i32 -1, %sub.i97
  %retval.0.i99 = select i1 %tobool.not.i96, i32 0, i32 %notmask.i98
  %dstmask = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 7
  %59 = ptrtoint ptr %dstmask to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i99, ptr %dstmask, align 8
  %60 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %tos, align 1
  %tos57 = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 3
  %62 = ptrtoint ptr %tos57 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %tos57, align 2
  %fib_has_custom_rules = getelementptr inbounds %struct.net, ptr %4, i32 0, i32 35, i32 14
  %63 = ptrtoint ptr %fib_has_custom_rules to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %fib_has_custom_rules, align 4
  br label %cleanup59

cleanup59:                                        ; preds = %if.end45, %if.then14.cleanup59_crit_edge, %if.end3.cleanup59_crit_edge, %if.then2, %do.body.cleanup59_crit_edge
  %err.1 = phi i32 [ %call4, %if.end3.cleanup59_crit_edge ], [ 0, %if.end45 ], [ -22, %if.then2 ], [ -22, %do.body.cleanup59_crit_edge ], [ -105, %if.then14.cleanup59_crit_edge ]
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib4_rule_delete(ptr nocapture noundef readonly %rule) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fr_net = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 14
  %0 = ptrtoint ptr %fr_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fr_net, align 4
  %call = tail call i32 @fib_unmerge(ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.errout_crit_edge

entry.errout_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout

if.end:                                           ; preds = %entry
  %tclassid = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 8
  %2 = ptrtoint ptr %tclassid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tclassid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %if.end.if.end3_crit_edge, label %if.then2

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %fib_num_tclassid_users = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 17
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_num_tclassid_users, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %fib_num_tclassid_users, i32 1, i32 3, i32 1) #10
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_num_tclassid_users, ptr %fib_num_tclassid_users, i32 1, ptr elementtype(i32) %fib_num_tclassid_users) #10, !srcloc !39
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %fib_has_custom_rules = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 14
  %5 = ptrtoint ptr %fib_has_custom_rules to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %fib_has_custom_rules, align 4
  %fib_rules_require_fldissect = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 35, i32 13
  %6 = ptrtoint ptr %fib_rules_require_fldissect to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fib_rules_require_fldissect, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.end3.errout_crit_edge, label %land.lhs.true

if.end3.errout_crit_edge:                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout

land.lhs.true:                                    ; preds = %if.end3
  %iifindex.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 1
  %8 = ptrtoint ptr %iifindex.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iifindex.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 1
  br i1 %cmp.not.i, label %land.lhs.true.errout_crit_edge, label %land.rhs.i

land.lhs.true.errout_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout

land.rhs.i:                                       ; preds = %land.lhs.true
  %ip_proto.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 10
  %10 = ptrtoint ptr %ip_proto.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ip_proto.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %land.rhs.i.if.then8_crit_edge

land.rhs.i.if.then8_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

lor.lhs.false.i:                                  ; preds = %land.rhs.i
  %sport_range.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 22
  %12 = ptrtoint ptr %sport_range.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %sport_range.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %cmp.not.i.i = icmp eq i16 %13, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.lor.rhs.i_crit_edge, label %fib_rule_port_range_set.exit.i

lor.lhs.false.i.lor.rhs.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

fib_rule_port_range_set.exit.i:                   ; preds = %lor.lhs.false.i
  %end.i.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 22, i32 1
  %14 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %end.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp3.i.not.i = icmp eq i16 %15, 0
  br i1 %cmp3.i.not.i, label %fib_rule_port_range_set.exit.i.lor.rhs.i_crit_edge, label %fib_rule_port_range_set.exit.i.if.then8_crit_edge

fib_rule_port_range_set.exit.i.if.then8_crit_edge: ; preds = %fib_rule_port_range_set.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

fib_rule_port_range_set.exit.i.lor.rhs.i_crit_edge: ; preds = %fib_rule_port_range_set.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %fib_rule_port_range_set.exit.i.lor.rhs.i_crit_edge, %lor.lhs.false.i.lor.rhs.i_crit_edge
  %dport_range.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 23
  %16 = ptrtoint ptr %dport_range.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %dport_range.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp.not.i7.i = icmp eq i16 %17, 0
  br i1 %cmp.not.i7.i, label %lor.rhs.i.errout_crit_edge, label %fib_rule_requires_fldissect.exit

lor.rhs.i.errout_crit_edge:                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout

fib_rule_requires_fldissect.exit:                 ; preds = %lor.rhs.i
  %end.i8.i = getelementptr inbounds %struct.fib_rule, ptr %rule, i32 0, i32 23, i32 1
  %18 = ptrtoint ptr %end.i8.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %end.i8.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %cmp3.i9.i.not = icmp eq i16 %19, 0
  br i1 %cmp3.i9.i.not, label %fib_rule_requires_fldissect.exit.errout_crit_edge, label %fib_rule_requires_fldissect.exit.if.then8_crit_edge

fib_rule_requires_fldissect.exit.if.then8_crit_edge: ; preds = %fib_rule_requires_fldissect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

fib_rule_requires_fldissect.exit.errout_crit_edge: ; preds = %fib_rule_requires_fldissect.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout

if.then8:                                         ; preds = %fib_rule_requires_fldissect.exit.if.then8_crit_edge, %fib_rule_port_range_set.exit.i.if.then8_crit_edge, %land.rhs.i.if.then8_crit_edge
  %dec = add i32 %7, -1
  %20 = ptrtoint ptr %fib_rules_require_fldissect to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %dec, ptr %fib_rules_require_fldissect, align 16
  br label %errout

errout:                                           ; preds = %if.then8, %fib_rule_requires_fldissect.exit.errout_crit_edge, %lor.rhs.i.errout_crit_edge, %land.lhs.true.errout_crit_edge, %if.end3.errout_crit_edge, %entry.errout_crit_edge
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fib4_rule_compare(ptr nocapture noundef readonly %rule, ptr nocapture noundef readonly %frh, ptr nocapture noundef readonly %tb) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src_len = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 2
  %0 = ptrtoint ptr %src_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %src_len, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %src_len1 = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 2
  %2 = ptrtoint ptr %src_len1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %src_len1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %1)
  %cmp.not = icmp eq i8 %3, %1
  br i1 %cmp.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %dst_len = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 1
  %4 = ptrtoint ptr %dst_len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dst_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %if.end.if.end16_crit_edge, label %land.lhs.true8

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

land.lhs.true8:                                   ; preds = %if.end
  %dst_len9 = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 1
  %6 = ptrtoint ptr %dst_len9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dst_len9, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %5)
  %cmp13.not = icmp eq i8 %7, %5
  br i1 %cmp13.not, label %land.lhs.true8.if.end16_crit_edge, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true8.if.end16_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.end16:                                         ; preds = %land.lhs.true8.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %tos = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 3
  %8 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tos, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool18.not = icmp eq i8 %9, 0
  br i1 %tobool18.not, label %if.end16.if.end27_crit_edge, label %land.lhs.true19

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

land.lhs.true19:                                  ; preds = %if.end16
  %tos20 = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 3
  %10 = ptrtoint ptr %tos20 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tos20, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %9)
  %cmp24.not = icmp eq i8 %11, %9
  br i1 %cmp24.not, label %land.lhs.true19.if.end27_crit_edge, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true19.if.end27_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true19.if.end27_crit_edge, %if.end16.if.end27_crit_edge
  %arrayidx = getelementptr ptr, ptr %tb, i32 11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool28.not = icmp eq ptr %13, null
  br i1 %tobool28.not, label %if.end27.if.end34_crit_edge, label %land.lhs.true29

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.lhs.true29:                                  ; preds = %if.end27
  %tclassid = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 8
  %14 = ptrtoint ptr %tclassid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tclassid, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %17)
  %cmp31.not = icmp eq i32 %15, %17
  br i1 %cmp31.not, label %land.lhs.true29.if.end34_crit_edge, label %land.lhs.true29.cleanup_crit_edge

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true29.if.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true29.if.end34_crit_edge, %if.end27.if.end34_crit_edge
  br i1 %tobool.not, label %if.end34.if.end44_crit_edge, label %land.lhs.true38

if.end34.if.end44_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

land.lhs.true38:                                  ; preds = %if.end34
  %src = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 4
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src, align 4
  %arrayidx39 = getelementptr ptr, ptr %tb, i32 2
  %20 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx39, align 4
  %add.ptr.i.i70 = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i70 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %23)
  %cmp41.not = icmp eq i32 %19, %23
  br i1 %cmp41.not, label %land.lhs.true38.if.end44_crit_edge, label %land.lhs.true38.cleanup_crit_edge

land.lhs.true38.cleanup_crit_edge:                ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true38.if.end44_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.end44:                                         ; preds = %land.lhs.true38.if.end44_crit_edge, %if.end34.if.end44_crit_edge
  br i1 %tobool7.not, label %if.end44.if.end54_crit_edge, label %land.lhs.true48

if.end44.if.end54_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.lhs.true48:                                  ; preds = %if.end44
  %dst = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 6
  %24 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dst, align 4
  %arrayidx49 = getelementptr ptr, ptr %tb, i32 1
  %26 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx49, align 4
  %add.ptr.i.i71 = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i71, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %29)
  %cmp51.not = icmp eq i32 %25, %29
  br i1 %cmp51.not, label %land.lhs.true48.if.end54_crit_edge, label %land.lhs.true48.cleanup_crit_edge

land.lhs.true48.cleanup_crit_edge:                ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true48.if.end54_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.end54:                                         ; preds = %land.lhs.true48.if.end54_crit_edge, %if.end44.if.end54_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %land.lhs.true48.cleanup_crit_edge, %land.lhs.true38.cleanup_crit_edge, %land.lhs.true29.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end54 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %land.lhs.true8.cleanup_crit_edge ], [ 0, %land.lhs.true19.cleanup_crit_edge ], [ 0, %land.lhs.true29.cleanup_crit_edge ], [ 0, %land.lhs.true38.cleanup_crit_edge ], [ 0, %land.lhs.true48.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fib4_rule_fill(ptr nocapture noundef readonly %rule, ptr noundef %skb, ptr nocapture noundef writeonly %frh) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %tmp.i.i31 = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dst_len = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 1
  %0 = ptrtoint ptr %dst_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dst_len, align 8
  %dst_len1 = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 1
  %2 = ptrtoint ptr %dst_len1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %dst_len1, align 1
  %src_len = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 2
  %3 = ptrtoint ptr %src_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %src_len, align 1
  %src_len2 = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 2
  %5 = ptrtoint ptr %src_len2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %src_len2, align 2
  %tos = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 3
  %6 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tos, align 2
  %tos3 = getelementptr inbounds %struct.fib_rule_hdr, ptr %frh, i32 0, i32 3
  %8 = ptrtoint ptr %tos3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %tos3, align 1
  %9 = load i8, ptr %dst_len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %entry.lor.lhs.false_crit_edge, label %land.lhs.true

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %dst = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 6
  %10 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dst, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #10
  %12 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool5.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool5.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.nla_put_failure_crit_edge

land.lhs.true.nla_put_failure_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %13 = ptrtoint ptr %src_len to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %src_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool8.not = icmp eq i8 %14, 0
  br i1 %tobool8.not, label %lor.lhs.false.if.end_crit_edge, label %land.lhs.true9

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true9:                                   ; preds = %lor.lhs.false
  %src = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 4
  %15 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i31) #10
  %17 = ptrtoint ptr %tmp.i.i31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i.i31, align 4
  %call.i.i32 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i31) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i32)
  %tobool11.not = icmp eq i32 %call.i.i32, 0
  br i1 %tobool11.not, label %land.lhs.true9.if.end_crit_edge, label %land.lhs.true9.nla_put_failure_crit_edge

land.lhs.true9.nla_put_failure_crit_edge:         ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %land.lhs.true9.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %tclassid = getelementptr inbounds %struct.fib4_rule, ptr %rule, i32 0, i32 8
  %18 = ptrtoint ptr %tclassid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tclassid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool12.not = icmp eq i32 %19, 0
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %land.lhs.true13

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true13:                                  ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %20 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %land.lhs.true13.cleanup_crit_edge, label %land.lhs.true13.nla_put_failure_crit_edge

land.lhs.true13.nla_put_failure_crit_edge:        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

land.lhs.true13.cleanup_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nla_put_failure:                                  ; preds = %land.lhs.true13.nla_put_failure_crit_edge, %land.lhs.true9.nla_put_failure_crit_edge, %land.lhs.true.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %land.lhs.true13.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -105, %nla_put_failure ], [ 0, %land.lhs.true13.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fib4_rule_nlmsg_payload(ptr nocapture noundef readnone %rule) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fib4_rule_flush_cache(ptr nocapture noundef readonly %ops) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fro_net = getelementptr inbounds %struct.fib_rules_ops, ptr %ops, i32 0, i32 19
  %0 = ptrtoint ptr %fro_net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fro_net, align 4
  tail call void @rt_cache_flush(ptr noundef %1) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib_get_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_table_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_fib_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_unmerge(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fib_empty_table(ptr noundef %net) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  br label %while.cond

while.cond:                                       ; preds = %if.end.while.cond_crit_edge, %entry
  %id.0 = phi i32 [ 1, %entry ], [ %inc, %if.end.while.cond_crit_edge ]
  %call = tail call ptr @fib_get_table(ptr noundef %net, i32 noundef %id.0) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call ptr @fib_new_table(ptr noundef %net, i32 noundef %id.0) #10
  br label %cleanup

if.end:                                           ; preds = %while.cond
  %inc = add i32 %id.0, 1
  %cmp = icmp eq i32 %id.0, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi ptr [ %call1, %if.then ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fib_new_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_cache_flush(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_default_rule_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !12, !13, !15, !16, !17, !19}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @__ksymtab_fib4_rule_default, !1, !"__ksymtab_fib4_rule_default", i1 false, i1 false}
!1 = !{!"../net/ipv4/fib_rules.c", i32 67, i32 1}
!2 = !{ptr @__ksymtab___fib_lookup, !3, !"__ksymtab___fib_lookup", i1 false, i1 false}
!3 = !{!"../net/ipv4/fib_rules.c", i32 105, i32 1}
!4 = !{ptr @fib4_rules_ops_template, !5, !"fib4_rules_ops_template", i1 false, i1 false}
!5 = !{!"../net/ipv4/fib_rules.c", i32 370, i32 51}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!8 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/net/nexthop.h", i32 376, i32 12}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/net/nexthop.h", i32 384, i32 8}
!19 = !{ptr @fib4_rule_configure.__msg, !20, !"__msg", i1 false, i1 false}
!20 = !{!"../net/ipv4/fib_rules.c", i32 229, i32 3}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{i64 2149596061}
!32 = !{i64 2149596327}
!33 = !{!"branch_weights", i32 2000, i32 1}
!34 = !{i8 0, i8 2}
!35 = !{i64 2148307208}
!36 = !{i64 2148221672, i64 2148221704, i64 2148221733, i64 2148221767, i64 2148221798, i64 2148221821}
!37 = !{i64 2149813811}
!38 = !{i64 2148217677, i64 2148217703, i64 2148217732, i64 2148217766, i64 2148217797, i64 2148217820}
!39 = !{i64 2148220142, i64 2148220168, i64 2148220197, i64 2148220231, i64 2148220262, i64 2148220285}
