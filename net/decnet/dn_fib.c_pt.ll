; ModuleID = '/llk/IR_all_yes/net/decnet/dn_fib.c_pt.bc'
source_filename = "../net/decnet/dn_fib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.145 = type { i32, i8 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.53 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
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
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.48 }
%union.anon.48 = type { i32 }
%struct.dn_fib_info = type { ptr, ptr, %struct.refcount_struct, %struct.refcount_struct, i32, i32, i32, i16, i32, [17 x i32], i32, i32, [0 x %struct.dn_fib_nh] }
%struct.dn_fib_nh = type { ptr, i32, i8, i32, i32, i32, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.flowidn = type { %struct.flowi_common, i16, i16, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.dn_fib_res = type { ptr, ptr, i8, i8, i8, i8 }
%struct.rtmsg = type { i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.nlattr = type { i16, i16 }
%struct.rtnexthop = type { i16, i8, i8, i32 }
%struct.fib_rule = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i64, ptr, ptr, %struct.refcount_struct, i32, i32, i32, [16 x i8], [16 x i8], %struct.fib_kuid_range, %struct.fib_rule_port_range, %struct.fib_rule_port_range, %struct.callback_head }
%struct.fib_kuid_range = type { %struct.kuid_t, %struct.kuid_t }
%struct.fib_rule_port_range = type { i16, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.sock_common = type { %union.anon.3, %union.anon.5, %union.anon.6, i16, i8, i8, i32, %union.anon.8, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.100, [0 x i32], %union.anon.101, i16, i16, %union.anon.102, %struct.refcount_struct, [0 x i32], %union.anon.103 }
%union.anon.3 = type { i64 }
%union.anon.5 = type { i32 }
%union.anon.6 = type { i32 }
%union.anon.8 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.100 = type { i32 }
%union.anon.101 = type { %struct.hlist_node }
%union.anon.102 = type { i32 }
%union.anon.103 = type { i32 }
%struct.dn_fib_table = type { %struct.hlist_node, i32, ptr, ptr, ptr, ptr, ptr, [0 x i8] }
%struct.anon.146 = type { %struct.nlmsghdr, %struct.rtmsg }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.anon.147 = type { %struct.nlattr, i16 }
%struct.anon.148 = type { %struct.nlattr, i16 }
%struct.anon.149 = type { %struct.nlattr, i32 }
%struct.dn_ifaddr = type { ptr, ptr, i16, i16, i32, i8, [16 x i8], %struct.callback_head }
%struct.dn_dev = type { ptr, ptr, %struct.dn_dev_parms, i8, %struct.timer_list, i32, ptr, [6 x i8], ptr, ptr, i32 }
%struct.dn_dev_parms = type { i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@dn_fib_free_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017DECnet: BUG! Attempt to free alive dn_fib_info\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dn_fib_free_info\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/decnet/dn_fib.c\00", [44 x i8] zeroinitializer }, align 32
@dn_fib_free_info._entry_ptr = internal global ptr @dn_fib_free_info._entry, section ".printk_index", align 4
@dn_fib_info_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.12 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@dn_fib_info_list = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dn_fib_props = internal constant { [12 x %struct.anon.145], [32 x i8] } { [12 x %struct.anon.145] [%struct.anon.145 { i32 0, i8 -1 }, %struct.anon.145 zeroinitializer, %struct.anon.145 { i32 0, i8 -2 }, %struct.anon.145 { i32 -22, i8 -1 }, %struct.anon.145 { i32 -22, i8 -1 }, %struct.anon.145 { i32 -22, i8 -1 }, %struct.anon.145 { i32 -22, i8 0 }, %struct.anon.145 { i32 -113, i8 0 }, %struct.anon.145 { i32 -13, i8 0 }, %struct.anon.145 { i32 -11, i8 0 }, %struct.anon.145 { i32 0, i8 -1 }, %struct.anon.145 { i32 -22, i8 -1 }], [32 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@dn_fib_semantic_match._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013DECnet: impossible routing event : dn_fib_semantic_match type=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dn_fib_semantic_match\00", [42 x i8] zeroinitializer }, align 32
@dn_fib_semantic_match._entry_ptr = internal global ptr @dn_fib_semantic_match._entry, section ".printk_index", align 4
@dn_fib_multipath_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.12 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dn_fib_dnaddr_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @dn_fib_dnaddr_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dn_fib_info_lock\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dn_fib_multipath_lock\00", [42 x i8] zeroinitializer }, align 32
@dn_fib_del_ifaddr.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@dn_fib_del_ifaddr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@dn_fib_del_ifaddr.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@dn_fib_del_ifaddr.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_fib_del_ifaddr.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@dn_neigh_table = external dso_local global %struct.neigh_table, align 4
@rtm_dn_policy = external dso_local constant [0 x %struct.nla_policy], align 4
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 254, i64 255]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 10]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 90, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [17 x i8] c"dn_fib_info_lock\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"dn_fib_info_list\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 62, i32 28 }
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"dn_fib_props\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 69, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 448, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"dn_fib_multipath_lock\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [23 x i8] c"dn_fib_dnaddr_notifier\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 774, i32 30 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 63, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 61, i32 8 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 637, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 641, i32 2 }
@___asan_gen_.67 = private constant [23 x i8] c"../net/decnet/dn_fib.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 642, i32 11 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 695, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 723, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @dn_fib_cleanup, ptr @dn_fib_free_info._entry, ptr @dn_fib_free_info._entry_ptr, ptr @dn_fib_semantic_match._entry, ptr @dn_fib_semantic_match._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dn_fib_info_lock, ptr @dn_fib_info_list, ptr @dn_fib_props, ptr @.str.3, ptr @.str.4, ptr @dn_fib_multipath_lock, ptr @dn_fib_dnaddr_notifier, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_fib_free_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_fib_info_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_fib_info_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_fib_props to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_fib_semantic_match._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_fib_multipath_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_fib_dnaddr_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_fib_free_info(ptr noundef %fi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fib_dead = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 4
  %0 = ptrtoint ptr %fib_dead to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fib_dead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %return

if.end:                                           ; preds = %entry
  %fib_nhs = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 10
  %2 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fib_nhs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp19 = icmp sgt i32 %3, 0
  br i1 %cmp19, label %for.body.preheader, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.preheader:                               ; preds = %if.end
  %fib_nh = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %dev_put.exit.for.body_crit_edge, %for.body.preheader
  %nh.011 = phi ptr [ %incdec.ptr, %dev_put.exit.for.body_crit_edge ], [ %fib_nh, %for.body.preheader ]
  %nhsel.010 = phi i32 [ %inc, %dev_put.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %4 = ptrtoint ptr %nh.011 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nh.011, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %for.body.dev_put.exit_crit_edge, label %do.body1.i

for.body.dev_put.exit_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit

do.body1.i:                                       ; preds = %for.body
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !55
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !45) #12
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add13.i = add i32 %18, -1
  store i32 %add13.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !56
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !57

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #12, !srcloc !58
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %for.body.dev_put.exit_crit_edge
  %20 = ptrtoint ptr %nh.011 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %nh.011, align 4
  %incdec.ptr = getelementptr %struct.dn_fib_nh, ptr %nh.011, i32 1
  %inc = add nuw nsw i32 %nhsel.010, 1
  %21 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %fib_nhs, align 4
  %cmp1 = icmp slt i32 %inc, %22
  br i1 %cmp1, label %dev_put.exit.for.body_crit_edge, label %dev_put.exit.for.end_crit_edge

dev_put.exit.for.end_crit_edge:                   ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

dev_put.exit.for.body_crit_edge:                  ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %dev_put.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @kfree(ptr noundef %fi) #12
  br label %return

return:                                           ; preds = %for.end, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_fib_release_info(ptr noundef %fi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dn_fib_info_lock) #12
  %tobool.not = icmp eq ptr %fi, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %land.lhs.true

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true:                                    ; preds = %entry
  %fib_treeref = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 2
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_treeref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %fib_treeref, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_treeref, ptr %fib_treeref, i32 1, ptr elementtype(i32) %fib_treeref) #12, !srcloc !60
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end15_crit_edge, label %if.then10.i.i.i, !prof !61

if.end5.i.i.i.if.end15_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %fib_treeref, i32 noundef 3) #12
  br label %if.end15

if.then:                                          ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !62
  %1 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %fi, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %fib_prev = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 1
  %3 = ptrtoint ptr %fib_prev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fib_prev, align 4
  %fib_prev4 = getelementptr inbounds %struct.dn_fib_info, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %fib_prev4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %fib_prev4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %fib_prev5 = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 1
  %6 = ptrtoint ptr %fib_prev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fib_prev5, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end.if.end11_crit_edge, label %if.then7

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fi, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %7, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %if.end.if.end11_crit_edge
  %11 = load ptr, ptr @dn_fib_info_list, align 4
  %cmp = icmp eq ptr %11, %fi
  br i1 %cmp, label %if.then12, label %if.end11.if.end14_crit_edge

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then12:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #14
  %12 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fi, align 4
  store ptr %13, ptr @dn_fib_info_list, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %if.end11.if.end14_crit_edge
  %fib_dead = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 4
  %14 = ptrtoint ptr %fib_dead to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %fib_dead, align 4
  tail call fastcc void @dn_fib_info_put(ptr noundef nonnull %fi)
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then10.i.i.i, %if.end5.i.i.i.if.end15_crit_edge, %entry.if.end15_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dn_fib_info_lock) #12
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dn_fib_info_put(ptr noundef %fi) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %fib_clntref = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !59
  tail call void @llvm.prefetch.p0(ptr %fib_clntref, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref, ptr %fib_clntref, i32 1, ptr elementtype(i32) %fib_clntref) #12, !srcloc !60
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !61

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %fib_clntref, i32 noundef 3) #12
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !62
  %fib_dead.i = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 4
  %1 = ptrtoint ptr %fib_dead.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fib_dead.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i = icmp eq i32 %2, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #15
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %fib_nhs.i = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 10
  %3 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fib_nhs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp19.i = icmp sgt i32 %4, 0
  br i1 %cmp19.i, label %for.body.preheader.i, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end.i
  %fib_nh.i = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %dev_put.exit.i.for.body.i_crit_edge, %for.body.preheader.i
  %nh.011.i = phi ptr [ %incdec.ptr.i, %dev_put.exit.i.for.body.i_crit_edge ], [ %fib_nh.i, %for.body.preheader.i ]
  %nhsel.010.i = phi i32 [ %inc.i, %dev_put.exit.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %5 = ptrtoint ptr %nh.011.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nh.011.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %for.body.i.dev_put.exit.i_crit_edge, label %do.body1.i.i

for.body.i.dev_put.exit.i_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit.i

do.body1.i.i:                                     ; preds = %for.body.i
  %7 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !55
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 118
  %8 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !45) #12
  %and.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %16, %10
  %17 = inttoptr i32 %add.i.i to ptr
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %add13.i.i = add i32 %19, -1
  store i32 %add13.i.i, ptr %17, align 4
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !56
  %and.i.i.i.i = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !57

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @warn_bogus_irq_restore() #12
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %7) #12, !srcloc !58
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %do.end30.i.i, %for.body.i.dev_put.exit.i_crit_edge
  %21 = ptrtoint ptr %nh.011.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %nh.011.i, align 4
  %incdec.ptr.i = getelementptr %struct.dn_fib_nh, ptr %nh.011.i, i32 1
  %inc.i = add nuw nsw i32 %nhsel.010.i, 1
  %22 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fib_nhs.i, align 4
  %cmp1.i = icmp slt i32 %inc.i, %23
  br i1 %cmp1.i, label %dev_put.exit.i.for.body.i_crit_edge, label %dev_put.exit.i.for.end.i_crit_edge

dev_put.exit.i.for.end.i_crit_edge:               ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i

dev_put.exit.i.for.body.i_crit_edge:              ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.end.i:                                        ; preds = %dev_put.exit.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  tail call void @kfree(ptr noundef %fi) #12
  br label %if.end

if.end:                                           ; preds = %for.end.i, %do.end.i, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dn_fib_create_info(ptr nocapture noundef readonly %r, ptr nocapture noundef readonly %attrs, ptr nocapture noundef readnone %nlh, ptr nocapture noundef writeonly %errp) local_unnamed_addr #0 align 64 {
entry:
  %fld.i = alloca %struct.flowidn, align 8
  %res.i = alloca %struct.dn_fib_res, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %rtm_type = getelementptr inbounds %struct.rtmsg, ptr %r, i32 0, i32 7
  %0 = ptrtoint ptr %rtm_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rtm_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %1)
  %cmp = icmp ugt i8 %1, 11
  br i1 %cmp, label %entry.failure.thread_crit_edge, label %if.end

entry.failure.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %failure.thread

if.end:                                           ; preds = %entry
  %conv = zext i8 %1 to i32
  %scope = getelementptr [12 x %struct.anon.145], ptr @dn_fib_props, i32 0, i32 %conv, i32 1
  %2 = ptrtoint ptr %scope to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %scope, align 4
  %rtm_scope = getelementptr inbounds %struct.rtmsg, ptr %r, i32 0, i32 6
  %4 = ptrtoint ptr %rtm_scope to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rtm_scope, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp5 = icmp ugt i8 %3, %5
  br i1 %cmp5, label %if.end.failure.thread_crit_edge, label %if.end8

if.end.failure.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %failure.thread

if.end8:                                          ; preds = %if.end
  %arrayidx9 = getelementptr ptr, ptr %attrs, i32 9
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx9, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end8.if.end8.i.i_crit_edge, label %land.lhs.true

if.end8.if.end8.i.i_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

land.lhs.true:                                    ; preds = %if.end8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %9)
  %cmp.i14.i = icmp ugt i16 %9, 11
  br i1 %cmp.i14.i, label %land.lhs.true.i.preheader.i, label %land.lhs.true.failure.thread_crit_edge

land.lhs.true.failure.thread_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %failure.thread

land.lhs.true.i.preheader.i:                      ; preds = %land.lhs.true
  %conv.i.i = zext i16 %9 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %while.body.i.land.lhs.true.i.i_crit_edge, %land.lhs.true.i.preheader.i
  %nhs.017.i = phi i32 [ %inc.i, %while.body.i.land.lhs.true.i.i_crit_edge ], [ 0, %land.lhs.true.i.preheader.i ]
  %nhp.016.i = phi ptr [ %add.ptr.i10.i, %while.body.i.land.lhs.true.i.i_crit_edge ], [ %add.ptr.i.i, %land.lhs.true.i.preheader.i ]
  %nhlen.015.i = phi i32 [ %sub1.i.i, %while.body.i.land.lhs.true.i.i_crit_edge ], [ %sub.i.i, %land.lhs.true.i.preheader.i ]
  %10 = ptrtoint ptr %nhp.016.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nhp.016.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %11)
  %cmp1.i.i = icmp ult i16 %11, 8
  %conv.i7.i = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %nhlen.015.i, i32 %conv.i7.i)
  %cmp5.i.not.i = icmp ult i32 %nhlen.015.i, %conv.i7.i
  %or.cond.i = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.i.dn_fib_count_nhs.exit_crit_edge, label %while.body.i

land.lhs.true.i.i.dn_fib_count_nhs.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_count_nhs.exit

while.body.i:                                     ; preds = %land.lhs.true.i.i
  %inc.i = add i32 %nhs.017.i, 1
  %sub.i9.i = add nuw nsw i32 %conv.i7.i, 3
  %and.i.i = and i32 %sub.i9.i, 131068
  %sub1.i.i = sub nsw i32 %nhlen.015.i, %and.i.i
  %add.ptr.i10.i = getelementptr i8, ptr %nhp.016.i, i32 %and.i.i
  %cmp.i.i = icmp sgt i32 %sub1.i.i, 7
  br i1 %cmp.i.i, label %while.body.i.land.lhs.true.i.i_crit_edge, label %while.body.i.dn_fib_count_nhs.exit_crit_edge

while.body.i.dn_fib_count_nhs.exit_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_count_nhs.exit

while.body.i.land.lhs.true.i.i_crit_edge:         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i

dn_fib_count_nhs.exit:                            ; preds = %while.body.i.dn_fib_count_nhs.exit_crit_edge, %land.lhs.true.i.i.dn_fib_count_nhs.exit_crit_edge
  %nhlen.0.lcssa.i = phi i32 [ %sub1.i.i, %while.body.i.dn_fib_count_nhs.exit_crit_edge ], [ %nhlen.015.i, %land.lhs.true.i.i.dn_fib_count_nhs.exit_crit_edge ]
  %nhs.0.lcssa.i = phi i32 [ %inc.i, %while.body.i.dn_fib_count_nhs.exit_crit_edge ], [ %nhs.017.i, %land.lhs.true.i.i.dn_fib_count_nhs.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nhlen.0.lcssa.i)
  %cmp.i = icmp sgt i32 %nhlen.0.lcssa.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nhs.0.lcssa.i)
  %cmp11446 = icmp eq i32 %nhs.0.lcssa.i, 0
  %cmp11 = select i1 %cmp.i, i1 true, i1 %cmp11446
  br i1 %cmp11, label %dn_fib_count_nhs.exit.failure.thread_crit_edge, label %dn_fib_count_nhs.exit.if.end8.i.i_crit_edge

dn_fib_count_nhs.exit.if.end8.i.i_crit_edge:      ; preds = %dn_fib_count_nhs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end8.i.i

dn_fib_count_nhs.exit.failure.thread_crit_edge:   ; preds = %dn_fib_count_nhs.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %failure.thread

if.end8.i.i:                                      ; preds = %dn_fib_count_nhs.exit.if.end8.i.i_crit_edge, %if.end8.if.end8.i.i_crit_edge
  %nhs.0 = phi i32 [ %nhs.0.lcssa.i, %dn_fib_count_nhs.exit.if.end8.i.i_crit_edge ], [ 1, %if.end8.if.end8.i.i_crit_edge ]
  %12 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nhs.0, i32 28) #12
  %13 = extractvalue { i32, i1 } %12, 1
  %14 = extractvalue { i32, i1 } %12, 0
  %spec.select.i355 = tail call i32 @llvm.uadd.sat.i32(i32 %14, i32 112) #12
  %retval.0.i = select i1 %13, i32 -1, i32 %spec.select.i355
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 3520) #16
  %cmp17 = icmp eq ptr %call9.i.i, null
  br i1 %cmp17, label %if.end8.i.i.failure.thread_crit_edge, label %if.end20

if.end8.i.i.failure.thread_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %failure.thread

if.end20:                                         ; preds = %if.end8.i.i
  %rtm_protocol = getelementptr inbounds %struct.rtmsg, ptr %r, i32 0, i32 5
  %15 = ptrtoint ptr %rtm_protocol to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %rtm_protocol, align 1
  %conv21 = zext i8 %16 to i32
  %fib_protocol = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %fib_protocol to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv21, ptr %fib_protocol, align 8
  %fib_nhs = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 0, i32 10
  %18 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %nhs.0, ptr %fib_nhs, align 8
  %rtm_flags = getelementptr inbounds %struct.rtmsg, ptr %r, i32 0, i32 8
  %19 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rtm_flags, align 4
  %fib_flags = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %fib_flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %fib_flags, align 4
  %arrayidx22 = getelementptr ptr, ptr %attrs, i32 6
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %23, null
  br i1 %tobool23.not, label %if.end20.if.end27_crit_edge, label %if.then24

if.end20.if.end27_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i357 = getelementptr i8, ptr %23, i32 4
  %24 = ptrtoint ptr %add.ptr.i.i357 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i357, align 4
  %fib_priority = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %fib_priority to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %fib_priority, align 32
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end20.if.end27_crit_edge
  %arrayidx28 = getelementptr ptr, ptr %attrs, i32 8
  %27 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %28, null
  br i1 %tobool29.not, label %if.end27.if.end58_crit_edge, label %if.then30

if.end27.if.end58_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

if.then30:                                        ; preds = %if.end27
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %28, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %30)
  %cmp.i358451 = icmp ugt i16 %30, 7
  br i1 %cmp.i358451, label %land.lhs.true.i.preheader, label %if.then30.if.end58_crit_edge

if.then30.if.end58_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

land.lhs.true.i.preheader:                        ; preds = %if.then30
  %conv.i = zext i16 %30 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %add.ptr.i = getelementptr i8, ptr %28, i32 4
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.preheader
  %attr.0453 = phi ptr [ %add.ptr.i366, %for.inc.land.lhs.true.i_crit_edge ], [ %add.ptr.i, %land.lhs.true.i.preheader ]
  %rem.0452 = phi i32 [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ], [ %sub.i, %land.lhs.true.i.preheader ]
  %31 = ptrtoint ptr %attr.0453 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %attr.0453, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %32)
  %cmp1.i = icmp ult i16 %32, 4
  %conv.i359 = zext i16 %32 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0452, i32 %conv.i359)
  %cmp5.i.not = icmp ult i32 %rem.0452, %conv.i359
  %or.cond447 = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond447, label %land.lhs.true.i.if.end58_crit_edge, label %for.body

land.lhs.true.i.if.end58_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

for.body:                                         ; preds = %land.lhs.true.i
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr.0453, i32 0, i32 1
  %33 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %nla_type.i, align 2
  %35 = and i16 %34, 16383
  %and.i = zext i16 %35 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool38.not = icmp eq i16 %35, 0
  br i1 %tobool38.not, label %for.body.for.inc_crit_edge, label %if.then39

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then39:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp2(i16 17, i16 %35)
  %cmp40 = icmp ugt i16 %35, 17
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %35)
  %cmp42 = icmp eq i16 %35, 16
  %or.cond = or i1 %cmp40, %cmp42
  br i1 %or.cond, label %if.then39.if.end.i403_crit_edge, label %lor.lhs.false44

if.then39.if.end.i403_crit_edge:                  ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

lor.lhs.false44:                                  ; preds = %if.then39
  %36 = ptrtoint ptr %attr.0453 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %attr.0453, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %37)
  %cmp46 = icmp ult i16 %37, 8
  br i1 %cmp46, label %lor.lhs.false44.if.end.i403_crit_edge, label %if.end49

lor.lhs.false44.if.end.i403_crit_edge:            ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

if.end49:                                         ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i362 = getelementptr i8, ptr %attr.0453, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i362 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %add.ptr.i.i362, align 4
  %sub = add nsw i32 %and.i, -1
  %arrayidx51 = getelementptr %struct.dn_fib_info, ptr %call9.i.i, i32 0, i32 9, i32 %sub
  %40 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx51, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end49, %for.body.for.inc_crit_edge
  %41 = ptrtoint ptr %attr.0453 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %attr.0453, align 2
  %conv.i363 = zext i16 %42 to i32
  %sub.i364 = add nuw nsw i32 %conv.i363, 3
  %and.i365 = and i32 %sub.i364, 131068
  %sub1.i = sub nsw i32 %rem.0452, %and.i365
  %add.ptr.i366 = getelementptr i8, ptr %attr.0453, i32 %and.i365
  %cmp.i358 = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i358, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.if.end58_crit_edge

for.inc.if.end58_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end58

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i

if.end58:                                         ; preds = %for.inc.if.end58_crit_edge, %land.lhs.true.i.if.end58_crit_edge, %if.then30.if.end58_crit_edge, %if.end27.if.end58_crit_edge
  %arrayidx59 = getelementptr ptr, ptr %attrs, i32 7
  %43 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx59, align 4
  %tobool60.not = icmp eq ptr %44, null
  br i1 %tobool60.not, label %if.end58.if.end64_crit_edge, label %if.then61

if.end58.if.end64_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i367 = getelementptr i8, ptr %44, i32 4
  %45 = ptrtoint ptr %add.ptr.i.i367 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i.i367, align 2
  %fib_prefsrc = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 0, i32 7
  %47 = ptrtoint ptr %fib_prefsrc to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %fib_prefsrc, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end58.if.end64_crit_edge
  %48 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx9, align 4
  %tobool66.not = icmp eq ptr %49, null
  br i1 %tobool66.not, label %if.else, label %if.then67

if.then67:                                        ; preds = %if.end64
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %49, align 2
  %52 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %fib_nhs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp52.i = icmp sgt i32 %53, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 11, i16 %51)
  %cmp.i53.i = icmp ugt i16 %51, 11
  %or.cond54.i = select i1 %cmp52.i, i1 %cmp.i53.i, i1 false
  br i1 %or.cond54.i, label %land.lhs.true.i.lr.ph.i, label %if.then67.cleanup15.i_crit_edge

if.then67.cleanup15.i_crit_edge:                  ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15.i

land.lhs.true.i.lr.ph.i:                          ; preds = %if.then67
  %conv.i.i368 = zext i16 %51 to i32
  %sub.i.i369 = add nsw i32 %conv.i.i368, -4
  %fib_nh.i = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 0, i32 12
  %add.ptr.i.i370 = getelementptr i8, ptr %49, i32 4
  br label %land.lhs.true.i.i373

land.lhs.true.i.i373:                             ; preds = %for.inc.i.land.lhs.true.i.i373_crit_edge, %land.lhs.true.i.lr.ph.i
  %nh.058.i = phi ptr [ %fib_nh.i, %land.lhs.true.i.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.land.lhs.true.i.i373_crit_edge ]
  %nhsel.057.i = phi i32 [ 0, %land.lhs.true.i.lr.ph.i ], [ %inc.i380, %for.inc.i.land.lhs.true.i.i373_crit_edge ]
  %nhp.056.i = phi ptr [ %add.ptr.i.i370, %land.lhs.true.i.lr.ph.i ], [ %add.ptr.i44.i, %for.inc.i.land.lhs.true.i.i373_crit_edge ]
  %nhlen.055.i = phi i32 [ %sub.i.i369, %land.lhs.true.i.lr.ph.i ], [ %sub1.i.i379, %for.inc.i.land.lhs.true.i.i373_crit_edge ]
  %54 = ptrtoint ptr %nhp.056.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %nhp.056.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %55)
  %cmp1.i.i371 = icmp ult i16 %55, 8
  %conv.i39.i = zext i16 %55 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %nhlen.055.i, i32 %conv.i39.i)
  %cmp5.i.not.i372 = icmp ult i32 %nhlen.055.i, %conv.i39.i
  %or.cond51.i = select i1 %cmp1.i.i371, i1 true, i1 %cmp5.i.not.i372
  br i1 %or.cond51.i, label %land.lhs.true.i.i373.if.end.i403_crit_edge, label %if.end.i

land.lhs.true.i.i373.if.end.i403_crit_edge:       ; preds = %land.lhs.true.i.i373
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

if.end.i:                                         ; preds = %land.lhs.true.i.i373
  %56 = ptrtoint ptr %rtm_flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %rtm_flags, align 4
  %and.i374 = and i32 %57, -256
  %rtnh_flags.i = getelementptr inbounds %struct.rtnexthop, ptr %nhp.056.i, i32 0, i32 1
  %58 = ptrtoint ptr %rtnh_flags.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %rtnh_flags.i, align 2
  %conv.i375 = zext i8 %59 to i32
  %or.i = or i32 %and.i374, %conv.i375
  %nh_flags.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.058.i, i32 0, i32 1
  %60 = ptrtoint ptr %nh_flags.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or.i, ptr %nh_flags.i, align 4
  %rtnh_ifindex.i = getelementptr inbounds %struct.rtnexthop, ptr %nhp.056.i, i32 0, i32 3
  %61 = ptrtoint ptr %rtnh_ifindex.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %rtnh_ifindex.i, align 4
  %nh_oif.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.058.i, i32 0, i32 5
  %63 = ptrtoint ptr %nh_oif.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %nh_oif.i, align 4
  %rtnh_hops.i = getelementptr inbounds %struct.rtnexthop, ptr %nhp.056.i, i32 0, i32 2
  %64 = ptrtoint ptr %rtnh_hops.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %rtnh_hops.i, align 1
  %conv3.i = zext i8 %65 to i32
  %add.i = add nuw nsw i32 %conv3.i, 1
  %nh_weight.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.058.i, i32 0, i32 3
  %66 = ptrtoint ptr %nh_weight.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add.i, ptr %nh_weight.i, align 4
  %67 = ptrtoint ptr %nhp.056.i to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %nhp.056.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %68)
  %cmp5.i376 = icmp ugt i16 %68, 8
  br i1 %cmp5.i376, label %if.then7.i, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.then7.i:                                       ; preds = %if.end.i
  %conv.i40.i = zext i16 %68 to i32
  %sub.i41.i = add nsw i32 %conv.i40.i, -8
  %add.ptr.i377 = getelementptr %struct.rtnexthop, ptr %nhp.056.i, i32 1
  %call8.i = tail call ptr @nla_find(ptr noundef %add.ptr.i377, i32 noundef %sub.i41.i, i32 noundef 5) #12
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.then7.i.cond.end.i_crit_edge, label %cond.true.i

if.then7.i.cond.end.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end.i

cond.true.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i = getelementptr i8, ptr %call8.i, i32 4
  %69 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %add.ptr.i.i.i, align 2
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %if.then7.i.cond.end.i_crit_edge
  %cond.i = phi i16 [ %70, %cond.true.i ], [ 0, %if.then7.i.cond.end.i_crit_edge ]
  %nh_gw.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.058.i, i32 0, i32 6
  %71 = ptrtoint ptr %nh_gw.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %cond.i, ptr %nh_gw.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %cond.end.i, %if.end.i.for.inc.i_crit_edge
  %72 = ptrtoint ptr %nhp.056.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %nhp.056.i, align 4
  %conv.i42.i = zext i16 %73 to i32
  %sub.i43.i = add nuw nsw i32 %conv.i42.i, 3
  %and.i.i378 = and i32 %sub.i43.i, 131068
  %sub1.i.i379 = sub nsw i32 %nhlen.055.i, %and.i.i378
  %add.ptr.i44.i = getelementptr i8, ptr %nhp.056.i, i32 %and.i.i378
  %incdec.ptr.i = getelementptr %struct.dn_fib_nh, ptr %nh.058.i, i32 1
  %inc.i380 = add nuw nsw i32 %nhsel.057.i, 1
  %74 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %fib_nhs, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i380, i32 %75)
  %cmp.i381 = icmp slt i32 %inc.i380, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sub1.i.i379)
  %cmp.i.i382 = icmp sgt i32 %sub1.i.i379, 7
  %or.cond.i383 = select i1 %cmp.i381, i1 %cmp.i.i382, i1 false
  br i1 %or.cond.i383, label %for.inc.i.land.lhs.true.i.i373_crit_edge, label %for.inc.i.cleanup15.i_crit_edge

for.inc.i.cleanup15.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup15.i

for.inc.i.land.lhs.true.i.i373_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true.i.i373

cleanup15.i:                                      ; preds = %for.inc.i.cleanup15.i_crit_edge, %if.then67.cleanup15.i_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp52.i, %if.then67.cleanup15.i_crit_edge ], [ %cmp.i381, %for.inc.i.cleanup15.i_crit_edge ]
  br i1 %cmp.lcssa.i, label %cleanup15.i.if.end.i403_crit_edge, label %if.end73

cleanup15.i.if.end.i403_crit_edge:                ; preds = %cleanup15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

if.end73:                                         ; preds = %cleanup15.i
  %arrayidx74 = getelementptr ptr, ptr %attrs, i32 4
  %76 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx74, align 4
  %tobool75.not = icmp eq ptr %77, null
  br i1 %tobool75.not, label %if.end73.if.end82_crit_edge, label %land.lhs.true76

if.end73.if.end82_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

land.lhs.true76:                                  ; preds = %if.end73
  %nh_oif = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 1, i32 5
  %78 = ptrtoint ptr %nh_oif to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nh_oif, align 4
  %add.ptr.i.i384 = getelementptr i8, ptr %77, i32 4
  %80 = ptrtoint ptr %add.ptr.i.i384 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i.i384, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %81)
  %cmp79.not = icmp eq i32 %79, %81
  br i1 %cmp79.not, label %land.lhs.true76.if.end82_crit_edge, label %land.lhs.true76.if.end.i403_crit_edge

land.lhs.true76.if.end.i403_crit_edge:            ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

land.lhs.true76.if.end82_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end82

if.end82:                                         ; preds = %land.lhs.true76.if.end82_crit_edge, %if.end73.if.end82_crit_edge
  %arrayidx83 = getelementptr ptr, ptr %attrs, i32 5
  %82 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx83, align 4
  %tobool84.not = icmp eq ptr %83, null
  br i1 %tobool84.not, label %if.end82.if.end113_crit_edge, label %land.lhs.true85

if.end82.if.end113_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

land.lhs.true85:                                  ; preds = %if.end82
  %nh_gw = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 1, i32 6
  %84 = ptrtoint ptr %nh_gw to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %nh_gw, align 8
  %add.ptr.i.i385 = getelementptr i8, ptr %83, i32 4
  %86 = ptrtoint ptr %add.ptr.i.i385 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %add.ptr.i.i385, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %85, i16 %87)
  %cmp92.not = icmp eq i16 %85, %87
  br i1 %cmp92.not, label %land.lhs.true85.if.end113_crit_edge, label %land.lhs.true85.if.end.i403_crit_edge

land.lhs.true85.if.end.i403_crit_edge:            ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

land.lhs.true85.if.end113_crit_edge:              ; preds = %land.lhs.true85
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end113

if.else:                                          ; preds = %if.end64
  %arrayidx98 = getelementptr ptr, ptr %attrs, i32 4
  %88 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx98, align 4
  %tobool99.not = icmp eq ptr %89, null
  br i1 %tobool99.not, label %if.else.if.end104_crit_edge, label %if.then100

if.else.if.end104_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end104

if.then100:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i386 = getelementptr i8, ptr %89, i32 4
  %90 = ptrtoint ptr %add.ptr.i.i386 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %add.ptr.i.i386, align 4
  %nh_oif103 = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 1, i32 5
  %92 = ptrtoint ptr %nh_oif103 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %nh_oif103, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then100, %if.else.if.end104_crit_edge
  %arrayidx105 = getelementptr ptr, ptr %attrs, i32 5
  %93 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx105, align 4
  %tobool106.not = icmp eq ptr %94, null
  br i1 %tobool106.not, label %if.end104.if.end111_crit_edge, label %if.then107

if.end104.if.end111_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end111

if.then107:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i387 = getelementptr i8, ptr %94, i32 4
  %95 = ptrtoint ptr %add.ptr.i.i387 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %add.ptr.i.i387, align 2
  %nh_gw110 = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 1, i32 6
  %97 = ptrtoint ptr %nh_gw110 to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %96, ptr %nh_gw110, align 8
  br label %if.end111

if.end111:                                        ; preds = %if.then107, %if.end104.if.end111_crit_edge
  %nh_flags = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 1, i32 1
  %98 = ptrtoint ptr %nh_flags to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %20, ptr %nh_flags, align 4
  %nh_weight = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 1, i32 3
  %99 = ptrtoint ptr %nh_weight to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %nh_weight, align 4
  br label %if.end113

if.end113:                                        ; preds = %if.end111, %land.lhs.true85.if.end113_crit_edge, %if.end82.if.end113_crit_edge
  %100 = ptrtoint ptr %rtm_type to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %rtm_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %101)
  %cmp116 = icmp eq i8 %101, 10
  br i1 %cmp116, label %if.then118, label %if.end134

if.then118:                                       ; preds = %if.end113
  %arrayidx119 = getelementptr ptr, ptr %attrs, i32 5
  %102 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx119, align 4
  %tobool120.not = icmp ne ptr %103, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nhs.0)
  %cmp122.not = icmp eq i32 %nhs.0, 1
  %or.cond354 = and i1 %cmp122.not, %tobool120.not
  br i1 %or.cond354, label %lor.lhs.false124, label %if.then118.if.end.i403_crit_edge

if.then118.if.end.i403_crit_edge:                 ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

lor.lhs.false124:                                 ; preds = %if.then118
  %arrayidx125 = getelementptr ptr, ptr %attrs, i32 4
  %104 = ptrtoint ptr %arrayidx125 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx125, align 4
  %tobool126.not = icmp eq ptr %105, null
  br i1 %tobool126.not, label %if.end128, label %lor.lhs.false124.if.end.i403_crit_edge

lor.lhs.false124.if.end.i403_crit_edge:           ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

if.end128:                                        ; preds = %lor.lhs.false124
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i388 = getelementptr i8, ptr %103, i32 4
  %106 = ptrtoint ptr %add.ptr.i.i388 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %add.ptr.i.i388, align 2
  %nh_gw133 = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 1, i32 6
  %108 = ptrtoint ptr %nh_gw133 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %nh_gw133, align 8
  br label %link_it

if.end134:                                        ; preds = %if.end113
  %conv115 = zext i8 %101 to i32
  %arrayidx137 = getelementptr [12 x %struct.anon.145], ptr @dn_fib_props, i32 0, i32 %conv115
  %109 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %arrayidx137, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool138.not = icmp eq i32 %110, 0
  br i1 %tobool138.not, label %if.end150, label %if.then139

if.then139:                                       ; preds = %if.end134
  %arrayidx140 = getelementptr ptr, ptr %attrs, i32 5
  %111 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx140, align 4
  %tobool141.not = icmp eq ptr %112, null
  br i1 %tobool141.not, label %lor.lhs.false142, label %if.then139.if.end.i403_crit_edge

if.then139.if.end.i403_crit_edge:                 ; preds = %if.then139
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

lor.lhs.false142:                                 ; preds = %if.then139
  %arrayidx143 = getelementptr ptr, ptr %attrs, i32 4
  %113 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %arrayidx143, align 4
  %tobool144.not = icmp eq ptr %114, null
  br i1 %tobool144.not, label %lor.lhs.false145, label %lor.lhs.false142.if.end.i403_crit_edge

lor.lhs.false142.if.end.i403_crit_edge:           ; preds = %lor.lhs.false142
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

lor.lhs.false145:                                 ; preds = %lor.lhs.false142
  %115 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %arrayidx9, align 4
  %tobool147.not = icmp eq ptr %116, null
  br i1 %tobool147.not, label %lor.lhs.false145.link_it_crit_edge, label %lor.lhs.false145.if.end.i403_crit_edge

lor.lhs.false145.if.end.i403_crit_edge:           ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

lor.lhs.false145.link_it_crit_edge:               ; preds = %lor.lhs.false145
  call void @__sanitizer_cov_trace_pc() #14
  br label %link_it

if.end150:                                        ; preds = %if.end134
  %117 = ptrtoint ptr %rtm_scope to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %rtm_scope, align 2
  %119 = zext i8 %118 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values)
  switch i8 %118, label %if.else185 [
    i8 -1, label %if.end150.if.end.i403_crit_edge
    i8 -2, label %if.then161
  ]

if.end150.if.end.i403_crit_edge:                  ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

if.then161:                                       ; preds = %if.end150
  %fib_nh163 = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 0, i32 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nhs.0)
  %cmp165.not = icmp eq i32 %nhs.0, 1
  br i1 %cmp165.not, label %lor.lhs.false167, label %if.then161.if.end.i403_crit_edge

if.then161.if.end.i403_crit_edge:                 ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

lor.lhs.false167:                                 ; preds = %if.then161
  %nh_gw168 = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 1, i32 6
  %120 = ptrtoint ptr %nh_gw168 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %nh_gw168, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %121)
  %tobool170.not = icmp eq i16 %121, 0
  br i1 %tobool170.not, label %if.end172, label %lor.lhs.false167.if.end.i403_crit_edge

lor.lhs.false167.if.end.i403_crit_edge:           ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

if.end172:                                        ; preds = %lor.lhs.false167
  %nh_scope = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 1, i32 2
  %122 = ptrtoint ptr %nh_scope to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 -1, ptr %nh_scope, align 8
  %nh_oif175 = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 1, i32 5
  %123 = ptrtoint ptr %nh_oif175 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %nh_oif175, align 4
  %call176 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %124) #12
  %125 = ptrtoint ptr %fib_nh163 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %call176, ptr %fib_nh163, align 16
  %cmp178 = icmp eq ptr %call176, null
  br i1 %cmp178, label %if.end172.if.end.i403_crit_edge, label %if.end172.if.end205_crit_edge

if.end172.if.end205_crit_edge:                    ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end205

if.end172.if.end.i403_crit_edge:                  ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

if.else185:                                       ; preds = %if.end150
  %126 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %fib_nhs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %cmp191454 = icmp sgt i32 %127, 0
  br i1 %cmp191454, label %for.body193.lr.ph, label %if.else185.if.end205_crit_edge

if.else185.if.end205_crit_edge:                   ; preds = %if.else185
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end205

for.body193.lr.ph:                                ; preds = %if.else185
  %fib_nh187 = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 0, i32 12
  %128 = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 1
  %129 = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 3
  %130 = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 4
  %131 = getelementptr inbounds %struct.dn_fib_res, ptr %res.i, i32 0, i32 5
  %daddr.i = getelementptr inbounds %struct.flowidn, ptr %fld.i, i32 0, i32 1
  %flowic_scope.i = getelementptr inbounds %struct.flowi_common, ptr %fld.i, i32 0, i32 4
  br label %for.body193

for.body193:                                      ; preds = %for.inc199.for.body193_crit_edge, %for.body193.lr.ph
  %nh186.0456 = phi ptr [ %fib_nh187, %for.body193.lr.ph ], [ %incdec.ptr, %for.inc199.for.body193_crit_edge ]
  %nhsel.0455 = phi i32 [ 0, %for.body193.lr.ph ], [ %inc, %for.inc199.for.body193_crit_edge ]
  %nh_gw.i389 = getelementptr inbounds %struct.dn_fib_nh, ptr %nh186.0456, i32 0, i32 6
  %132 = ptrtoint ptr %nh_gw.i389 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %nh_gw.i389, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %133)
  %tobool.not.i = icmp eq i16 %133, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body193
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %fld.i) #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %res.i) #12
  %nh_flags.i390 = getelementptr inbounds %struct.dn_fib_nh, ptr %nh186.0456, i32 0, i32 1
  %134 = call ptr @memset(ptr %res.i, i32 255, i32 12)
  %135 = ptrtoint ptr %nh_flags.i390 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %nh_flags.i390, align 4
  %and.i391 = and i32 %136, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i391)
  %tobool1.not.i = icmp eq i32 %and.i391, 0
  br i1 %tobool1.not.i, label %if.end19.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.then.i
  %137 = ptrtoint ptr %rtm_scope to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %rtm_scope, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %138)
  %cmp.i392 = icmp ugt i8 %138, -4
  br i1 %cmp.i392, label %if.then2.i.dn_fib_check_nh.exit.thread435_crit_edge, label %if.end.i393

if.then2.i.dn_fib_check_nh.exit.thread435_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_check_nh.exit.thread435

if.end.i393:                                      ; preds = %if.then2.i
  %call.i = call i32 @dnet_addr_type(i16 noundef zeroext %133) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp6.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp6.not.i, label %if.end9.i, label %if.end.i393.dn_fib_check_nh.exit.thread435_crit_edge

if.end.i393.dn_fib_check_nh.exit.thread435_crit_edge: ; preds = %if.end.i393
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_check_nh.exit.thread435

if.end9.i:                                        ; preds = %if.end.i393
  %nh_oif.i394 = getelementptr inbounds %struct.dn_fib_nh, ptr %nh186.0456, i32 0, i32 5
  %139 = ptrtoint ptr %nh_oif.i394 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %nh_oif.i394, align 4
  %call10.i = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %140) #12
  %cmp11.i = icmp eq ptr %call10.i, null
  br i1 %cmp11.i, label %if.end9.i.dn_fib_check_nh.exit.thread435_crit_edge, label %if.end14.i

if.end9.i.dn_fib_check_nh.exit.thread435_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_check_nh.exit.thread435

if.end14.i:                                       ; preds = %if.end9.i
  %flags.i = getelementptr inbounds %struct.net_device, ptr %call10.i, i32 0, i32 14
  %141 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %flags.i, align 8
  %and15.i = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %if.end14.i.dn_fib_check_nh.exit.thread435_crit_edge, label %do.body1.i.i

if.end14.i.dn_fib_check_nh.exit.thread435_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_check_nh.exit.thread435

do.body1.i.i:                                     ; preds = %if.end14.i
  %143 = ptrtoint ptr %nh186.0456 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %call10.i, ptr %nh186.0456, align 4
  %144 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !55
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call10.i, i32 0, i32 118
  %145 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %147 = ptrtoint ptr %146 to i32
  %148 = call i32 @llvm.read_register.i32(metadata !45) #12
  %and.i.i.i = and i32 %148, -16384
  %149 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 3
  %150 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %151
  %152 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %153, %147
  %154 = inttoptr i32 %add.i.i to ptr
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 4
  %add13.i.i = add i32 %156, 1
  store i32 %add13.i.i, ptr %154, align 4
  %157 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !56
  %and.i.i.i.i = and i32 %157, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dn_fib_check_nh.exit.thread438_crit_edge, !prof !57

do.body1.i.i.dn_fib_check_nh.exit.thread438_crit_edge: ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_check_nh.exit.thread438

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %dn_fib_check_nh.exit.thread438

dn_fib_check_nh.exit.thread438:                   ; preds = %if.then28.i.i, %do.body1.i.i.dn_fib_check_nh.exit.thread438_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %144) #12, !srcloc !58
  %nh_scope.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh186.0456, i32 0, i32 2
  %158 = ptrtoint ptr %nh_scope.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 -3, ptr %nh_scope.i, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %res.i) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fld.i) #12
  br label %for.inc199

if.end19.i:                                       ; preds = %if.then.i
  %159 = call ptr @memset(ptr %fld.i, i32 0, i32 48)
  %160 = ptrtoint ptr %daddr.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 %133, ptr %daddr.i, align 8
  %nh_oif21.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh186.0456, i32 0, i32 5
  %161 = ptrtoint ptr %nh_oif21.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %nh_oif21.i, align 4
  %163 = ptrtoint ptr %fld.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %162, ptr %fld.i, align 8
  %164 = ptrtoint ptr %rtm_scope to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %rtm_scope, align 2
  %add.i395 = add i8 %165, 1
  %166 = call i8 @llvm.umax.i8(i8 %add.i395, i8 -3) #12
  %167 = ptrtoint ptr %flowic_scope.i to i32
  call void @__asan_store1_noabort(i32 %167)
  store i8 %166, ptr %flowic_scope.i, align 1
  %call35.i = call i32 @dn_fib_lookup(ptr noundef nonnull %fld.i, ptr noundef nonnull %res.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %cmp36.not.i = icmp eq i32 %call35.i, 0
  br i1 %cmp36.not.i, label %if.end39.i, label %if.end19.i.dn_fib_check_nh.exit.thread435_crit_edge

if.end19.i.dn_fib_check_nh.exit.thread435_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_check_nh.exit.thread435

if.end39.i:                                       ; preds = %if.end19.i
  %168 = ptrtoint ptr %130 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %130, align 2
  %.off.i = add i8 %169, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off.i)
  %switch.i = icmp ult i8 %.off.i, 2
  br i1 %switch.i, label %if.end48.i, label %if.end39.i.out.i_crit_edge

if.end39.i.out.i_crit_edge:                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end48.i:                                       ; preds = %if.end39.i
  %170 = ptrtoint ptr %131 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %131, align 1
  %nh_scope49.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh186.0456, i32 0, i32 2
  %172 = ptrtoint ptr %nh_scope49.i to i32
  call void @__asan_store1_noabort(i32 %172)
  store i8 %171, ptr %nh_scope49.i, align 4
  %173 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %128, align 4
  %175 = ptrtoint ptr %129 to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %129, align 1
  %idxprom.i = zext i8 %176 to i32
  %nh_oif51.i = getelementptr %struct.dn_fib_info, ptr %174, i32 0, i32 12, i32 %idxprom.i, i32 5
  %177 = ptrtoint ptr %nh_oif51.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %nh_oif51.i, align 4
  %179 = ptrtoint ptr %nh_oif21.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %nh_oif21.i, align 4
  %arrayidx57.i = getelementptr %struct.dn_fib_info, ptr %174, i32 0, i32 12, i32 %idxprom.i
  %180 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx57.i, align 4
  %182 = ptrtoint ptr %nh186.0456 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %181, ptr %nh186.0456, align 4
  %cmp61.i = icmp eq ptr %181, null
  br i1 %cmp61.i, label %if.end48.i.out.i_crit_edge, label %do.body1.i11.i

if.end48.i.out.i_crit_edge:                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

do.body1.i11.i:                                   ; preds = %if.end48.i
  %183 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !55
  %pcpu_refcnt.i3.i = getelementptr inbounds %struct.net_device, ptr %181, i32 0, i32 118
  %184 = ptrtoint ptr %pcpu_refcnt.i3.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %pcpu_refcnt.i3.i, align 4
  %186 = ptrtoint ptr %185 to i32
  %187 = call i32 @llvm.read_register.i32(metadata !45) #12
  %and.i.i4.i = and i32 %187, -16384
  %188 = inttoptr i32 %and.i.i4.i to ptr
  %cpu.i5.i = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %cpu.i5.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %cpu.i5.i, align 4
  %arrayidx.i6.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %190
  %191 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx.i6.i, align 4
  %add.i7.i = add i32 %192, %186
  %193 = inttoptr i32 %add.i7.i to ptr
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %193, align 4
  %add13.i8.i = add i32 %195, 1
  store i32 %add13.i8.i, ptr %193, align 4
  %196 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !56
  %and.i.i.i9.i = and i32 %196, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i9.i)
  %tobool24.not.i10.i = icmp eq i32 %and.i.i.i9.i, 0
  br i1 %tobool24.not.i10.i, label %if.then28.i12.i, label %do.body1.i11.i.dev_hold.exit14.i_crit_edge, !prof !57

do.body1.i11.i.dev_hold.exit14.i_crit_edge:       ; preds = %do.body1.i11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_hold.exit14.i

if.then28.i12.i:                                  ; preds = %do.body1.i11.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %dev_hold.exit14.i

dev_hold.exit14.i:                                ; preds = %if.then28.i12.i, %do.body1.i11.i.dev_hold.exit14.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %183) #12, !srcloc !58
  %197 = ptrtoint ptr %nh186.0456 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %nh186.0456, align 4
  %flags67.i = getelementptr inbounds %struct.net_device, ptr %198, i32 0, i32 14
  %199 = ptrtoint ptr %flags67.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %flags67.i, align 8
  %and68.i = and i32 %200, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  %spec.store.select.i = select i1 %tobool69.not.i, i32 -100, i32 0
  br label %out.i

out.i:                                            ; preds = %dev_hold.exit14.i, %if.end48.i.out.i_crit_edge, %if.end39.i.out.i_crit_edge
  %err.0.i = phi i32 [ -22, %if.end48.i.out.i_crit_edge ], [ %spec.store.select.i, %dev_hold.exit14.i ], [ -22, %if.end39.i.out.i_crit_edge ]
  %201 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %128, align 4
  %tobool.not.i15.i = icmp eq ptr %202, null
  br i1 %tobool.not.i15.i, label %out.i.if.end.i.i397_crit_edge, label %if.then.i.i396

out.i.if.end.i.i397_crit_edge:                    ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i397

if.then.i.i396:                                   ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #14
  call fastcc void @dn_fib_info_put(ptr noundef nonnull %202) #12
  br label %if.end.i.i397

if.end.i.i397:                                    ; preds = %if.then.i.i396, %out.i.if.end.i.i397_crit_edge
  %203 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %res.i, align 4
  %tobool2.not.i.i = icmp eq ptr %204, null
  br i1 %tobool2.not.i.i, label %if.end.i.i397.dn_fib_check_nh.exit_crit_edge, label %if.then3.i.i

if.end.i.i397.dn_fib_check_nh.exit_crit_edge:     ; preds = %if.end.i.i397
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_check_nh.exit

if.then3.i.i:                                     ; preds = %if.end.i.i397
  %refcnt.i.i.i = getelementptr inbounds %struct.fib_rule, ptr %204, i32 0, i32 15
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !59
  call void @llvm.prefetch.p0(ptr %refcnt.i.i.i, i32 1, i32 3, i32 1) #12
  %205 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i.i, ptr %refcnt.i.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i.i) #12, !srcloc !60
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %205, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %do.end.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.dn_fib_check_nh.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !61

if.end5.i.i.i.i.i.i.dn_fib_check_nh.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_check_nh.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %refcnt.i.i.i, i32 noundef 3) #12
  br label %dn_fib_check_nh.exit

do.end.i.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !62
  %rcu.i.i.i = getelementptr inbounds %struct.fib_rule, ptr %204, i32 0, i32 24
  call void @kvfree_call_rcu(ptr noundef %rcu.i.i.i, ptr noundef nonnull inttoptr (i32 120 to ptr)) #12
  br label %dn_fib_check_nh.exit

if.else.i:                                        ; preds = %for.body193
  %nh_flags75.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh186.0456, i32 0, i32 1
  %206 = ptrtoint ptr %nh_flags75.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %nh_flags75.i, align 4
  %and76.i = and i32 %207, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76.i)
  %tobool77.not.i = icmp eq i32 %and76.i, 0
  br i1 %tobool77.not.i, label %if.end79.i, label %if.else.i.if.end.i403_crit_edge

if.else.i.if.end.i403_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

if.end79.i:                                       ; preds = %if.else.i
  %nh_oif80.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh186.0456, i32 0, i32 5
  %208 = ptrtoint ptr %nh_oif80.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %nh_oif80.i, align 4
  %call81.i = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %209) #12
  %cmp82.i = icmp eq ptr %call81.i, null
  br i1 %cmp82.i, label %if.end79.i.if.end.i403_crit_edge, label %lor.lhs.false.i

if.end79.i.if.end.i403_crit_edge:                 ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

lor.lhs.false.i:                                  ; preds = %if.end79.i
  %dn_ptr.i = getelementptr inbounds %struct.net_device, ptr %call81.i, i32 0, i32 79
  %210 = ptrtoint ptr %dn_ptr.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %dn_ptr.i, align 4
  %cmp84.i = icmp eq ptr %211, null
  br i1 %cmp84.i, label %lor.lhs.false.i.if.end.i403_crit_edge, label %if.end87.i

lor.lhs.false.i.if.end.i403_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

if.end87.i:                                       ; preds = %lor.lhs.false.i
  %flags88.i = getelementptr inbounds %struct.net_device, ptr %call81.i, i32 0, i32 14
  %212 = ptrtoint ptr %flags88.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %flags88.i, align 8
  %and89.i = and i32 %213, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %if.end87.i.if.end.i403_crit_edge, label %do.body1.i25.i

if.end87.i.if.end.i403_crit_edge:                 ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

do.body1.i25.i:                                   ; preds = %if.end87.i
  %214 = ptrtoint ptr %nh186.0456 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %call81.i, ptr %nh186.0456, align 4
  %215 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !55
  %pcpu_refcnt.i17.i = getelementptr inbounds %struct.net_device, ptr %call81.i, i32 0, i32 118
  %216 = ptrtoint ptr %pcpu_refcnt.i17.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %pcpu_refcnt.i17.i, align 4
  %218 = ptrtoint ptr %217 to i32
  %219 = call i32 @llvm.read_register.i32(metadata !45) #12
  %and.i.i18.i = and i32 %219, -16384
  %220 = inttoptr i32 %and.i.i18.i to ptr
  %cpu.i19.i = getelementptr inbounds %struct.thread_info, ptr %220, i32 0, i32 3
  %221 = ptrtoint ptr %cpu.i19.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %cpu.i19.i, align 4
  %arrayidx.i20.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %222
  %223 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %arrayidx.i20.i, align 4
  %add.i21.i = add i32 %224, %218
  %225 = inttoptr i32 %add.i21.i to ptr
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %225, align 4
  %add13.i22.i = add i32 %227, 1
  store i32 %add13.i22.i, ptr %225, align 4
  %228 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !56
  %and.i.i.i23.i = and i32 %228, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i23.i)
  %tobool24.not.i24.i = icmp eq i32 %and.i.i.i23.i, 0
  br i1 %tobool24.not.i24.i, label %if.then28.i26.i, label %do.body1.i25.i.dn_fib_check_nh.exit.thread431_crit_edge, !prof !57

do.body1.i25.i.dn_fib_check_nh.exit.thread431_crit_edge: ; preds = %do.body1.i25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_check_nh.exit.thread431

if.then28.i26.i:                                  ; preds = %do.body1.i25.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %dn_fib_check_nh.exit.thread431

dn_fib_check_nh.exit.thread431:                   ; preds = %if.then28.i26.i, %do.body1.i25.i.dn_fib_check_nh.exit.thread431_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %215) #12, !srcloc !58
  %nh_scope95.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh186.0456, i32 0, i32 2
  %229 = ptrtoint ptr %nh_scope95.i to i32
  call void @__asan_store1_noabort(i32 %229)
  store i8 -2, ptr %nh_scope95.i, align 4
  br label %for.inc199

dn_fib_check_nh.exit.thread435:                   ; preds = %if.end19.i.dn_fib_check_nh.exit.thread435_crit_edge, %if.end14.i.dn_fib_check_nh.exit.thread435_crit_edge, %if.end9.i.dn_fib_check_nh.exit.thread435_crit_edge, %if.end.i393.dn_fib_check_nh.exit.thread435_crit_edge, %if.then2.i.dn_fib_check_nh.exit.thread435_crit_edge
  %retval.1.i.ph = phi i32 [ %call35.i, %if.end19.i.dn_fib_check_nh.exit.thread435_crit_edge ], [ -100, %if.end14.i.dn_fib_check_nh.exit.thread435_crit_edge ], [ -19, %if.end9.i.dn_fib_check_nh.exit.thread435_crit_edge ], [ -22, %if.end.i393.dn_fib_check_nh.exit.thread435_crit_edge ], [ -22, %if.then2.i.dn_fib_check_nh.exit.thread435_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %res.i) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fld.i) #12
  br label %if.end.i403

dn_fib_check_nh.exit:                             ; preds = %do.end.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.dn_fib_check_nh.exit_crit_edge, %if.end.i.i397.dn_fib_check_nh.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %res.i) #12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %fld.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %cmp195.not = icmp eq i32 %err.0.i, 0
  br i1 %cmp195.not, label %dn_fib_check_nh.exit.for.inc199_crit_edge, label %dn_fib_check_nh.exit.if.end.i403_crit_edge

dn_fib_check_nh.exit.if.end.i403_crit_edge:       ; preds = %dn_fib_check_nh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

dn_fib_check_nh.exit.for.inc199_crit_edge:        ; preds = %dn_fib_check_nh.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc199

for.inc199:                                       ; preds = %dn_fib_check_nh.exit.for.inc199_crit_edge, %dn_fib_check_nh.exit.thread431, %dn_fib_check_nh.exit.thread438
  %incdec.ptr = getelementptr %struct.dn_fib_nh, ptr %nh186.0456, i32 1
  %inc = add nuw nsw i32 %nhsel.0455, 1
  %230 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %fib_nhs, align 8
  %cmp191 = icmp slt i32 %inc, %231
  br i1 %cmp191, label %for.inc199.for.body193_crit_edge, label %for.inc199.if.end205_crit_edge

for.inc199.if.end205_crit_edge:                   ; preds = %for.inc199
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end205

for.inc199.for.body193_crit_edge:                 ; preds = %for.inc199
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body193

if.end205:                                        ; preds = %for.inc199.if.end205_crit_edge, %if.else185.if.end205_crit_edge, %if.end172.if.end205_crit_edge
  %fib_prefsrc206 = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 0, i32 7
  %232 = ptrtoint ptr %fib_prefsrc206 to i32
  call void @__asan_load2_noabort(i32 %232)
  %233 = load i16, ptr %fib_prefsrc206, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %233)
  %tobool207.not = icmp eq i16 %233, 0
  br i1 %tobool207.not, label %if.end205.link_it_crit_edge, label %if.then208

if.end205.link_it_crit_edge:                      ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #14
  br label %link_it

if.then208:                                       ; preds = %if.end205
  %234 = ptrtoint ptr %rtm_type to i32
  call void @__asan_load1_noabort(i32 %234)
  %235 = load i8, ptr %rtm_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %235)
  %cmp211.not = icmp eq i8 %235, 2
  br i1 %cmp211.not, label %lor.lhs.false213, label %if.then208.if.then224_crit_edge

if.then208.if.then224_crit_edge:                  ; preds = %if.then208
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then224

lor.lhs.false213:                                 ; preds = %if.then208
  %arrayidx214 = getelementptr ptr, ptr %attrs, i32 1
  %236 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %arrayidx214, align 4
  %tobool215.not = icmp eq ptr %237, null
  br i1 %tobool215.not, label %lor.lhs.false213.if.then224_crit_edge, label %lor.lhs.false216

lor.lhs.false213.if.then224_crit_edge:            ; preds = %lor.lhs.false213
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then224

lor.lhs.false216:                                 ; preds = %lor.lhs.false213
  %add.ptr.i.i398 = getelementptr i8, ptr %237, i32 4
  %238 = ptrtoint ptr %add.ptr.i.i398 to i32
  call void @__asan_load2_noabort(i32 %238)
  %239 = load i16, ptr %add.ptr.i.i398, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %233, i16 %239)
  %cmp222.not = icmp eq i16 %233, %239
  br i1 %cmp222.not, label %lor.lhs.false216.link_it_crit_edge, label %lor.lhs.false216.if.then224_crit_edge

lor.lhs.false216.if.then224_crit_edge:            ; preds = %lor.lhs.false216
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then224

lor.lhs.false216.link_it_crit_edge:               ; preds = %lor.lhs.false216
  call void @__sanitizer_cov_trace_pc() #14
  br label %link_it

if.then224:                                       ; preds = %lor.lhs.false216.if.then224_crit_edge, %lor.lhs.false213.if.then224_crit_edge, %if.then208.if.then224_crit_edge
  %call226 = call i32 @dnet_addr_type(i16 noundef zeroext %233) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call226)
  %cmp227.not = icmp eq i32 %call226, 2
  br i1 %cmp227.not, label %if.then224.link_it_crit_edge, label %if.then224.if.end.i403_crit_edge

if.then224.if.end.i403_crit_edge:                 ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i403

if.then224.link_it_crit_edge:                     ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #14
  br label %link_it

link_it:                                          ; preds = %if.then224.link_it_crit_edge, %lor.lhs.false216.link_it_crit_edge, %if.end205.link_it_crit_edge, %lor.lhs.false145.link_it_crit_edge, %if.end128
  %call233 = call fastcc ptr @dn_fib_find_info(ptr noundef nonnull %call9.i.i)
  %cmp234.not = icmp eq ptr %call233, null
  br i1 %cmp234.not, label %if.end237, label %if.then236

if.then236:                                       ; preds = %link_it
  call void @__sanitizer_cov_trace_pc() #14
  %fib_dead = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 0, i32 4
  %240 = ptrtoint ptr %fib_dead to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 1, ptr %fib_dead, align 16
  call void @dn_fib_free_info(ptr noundef nonnull %call9.i.i)
  %fib_treeref = getelementptr inbounds %struct.dn_fib_info, ptr %call233, i32 0, i32 2
  call fastcc void @refcount_inc(ptr noundef %fib_treeref)
  br label %cleanup247

if.end237:                                        ; preds = %link_it
  %fib_treeref238 = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 0, i32 2
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %fib_treeref238, i32 noundef 4) #12
  %241 = ptrtoint ptr %fib_treeref238 to i32
  call void @__asan_store4_noabort(i32 %241)
  store volatile i32 1, ptr %fib_treeref238, align 8
  %fib_clntref = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 0, i32 3
  %call.i.i.i399 = call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref, i32 noundef 4) #12
  %242 = ptrtoint ptr %fib_clntref to i32
  call void @__asan_store4_noabort(i32 %242)
  store volatile i32 1, ptr %fib_clntref, align 4
  call void @_raw_spin_lock(ptr noundef nonnull @dn_fib_info_lock) #12
  %243 = load ptr, ptr @dn_fib_info_list, align 4
  %244 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %243, ptr %call9.i.i, align 128
  %fib_prev = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 0, i32 1
  %245 = ptrtoint ptr %fib_prev to i32
  call void @__asan_store4_noabort(i32 %245)
  store ptr null, ptr %fib_prev, align 4
  %tobool239.not = icmp eq ptr %243, null
  br i1 %tobool239.not, label %if.end237.if.end242_crit_edge, label %if.then240

if.end237.if.end242_crit_edge:                    ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end242

if.then240:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #14
  %fib_prev241 = getelementptr inbounds %struct.dn_fib_info, ptr %243, i32 0, i32 1
  %246 = ptrtoint ptr %fib_prev241 to i32
  call void @__asan_store4_noabort(i32 %246)
  store ptr %call9.i.i, ptr %fib_prev241, align 4
  br label %if.end242

if.end242:                                        ; preds = %if.then240, %if.end237.if.end242_crit_edge
  store ptr %call9.i.i, ptr @dn_fib_info_list, align 4
  call void @_raw_spin_unlock(ptr noundef nonnull @dn_fib_info_lock) #12
  br label %cleanup247

failure.thread:                                   ; preds = %if.end8.i.i.failure.thread_crit_edge, %dn_fib_count_nhs.exit.failure.thread_crit_edge, %land.lhs.true.failure.thread_crit_edge, %if.end.failure.thread_crit_edge, %entry.failure.thread_crit_edge
  %err.4.ph = phi i32 [ -22, %entry.failure.thread_crit_edge ], [ -22, %if.end.failure.thread_crit_edge ], [ -22, %dn_fib_count_nhs.exit.failure.thread_crit_edge ], [ -105, %if.end8.i.i.failure.thread_crit_edge ], [ -22, %land.lhs.true.failure.thread_crit_edge ]
  %247 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 %err.4.ph, ptr %errp, align 4
  br label %cleanup247

if.end.i403:                                      ; preds = %if.then224.if.end.i403_crit_edge, %dn_fib_check_nh.exit.if.end.i403_crit_edge, %dn_fib_check_nh.exit.thread435, %if.end87.i.if.end.i403_crit_edge, %lor.lhs.false.i.if.end.i403_crit_edge, %if.end79.i.if.end.i403_crit_edge, %if.else.i.if.end.i403_crit_edge, %if.end172.if.end.i403_crit_edge, %lor.lhs.false167.if.end.i403_crit_edge, %if.then161.if.end.i403_crit_edge, %if.end150.if.end.i403_crit_edge, %lor.lhs.false145.if.end.i403_crit_edge, %lor.lhs.false142.if.end.i403_crit_edge, %if.then139.if.end.i403_crit_edge, %lor.lhs.false124.if.end.i403_crit_edge, %if.then118.if.end.i403_crit_edge, %land.lhs.true85.if.end.i403_crit_edge, %land.lhs.true76.if.end.i403_crit_edge, %cleanup15.i.if.end.i403_crit_edge, %land.lhs.true.i.i373.if.end.i403_crit_edge, %lor.lhs.false44.if.end.i403_crit_edge, %if.then39.if.end.i403_crit_edge
  %err.4 = phi i32 [ -22, %cleanup15.i.if.end.i403_crit_edge ], [ -19, %if.end172.if.end.i403_crit_edge ], [ -22, %if.end150.if.end.i403_crit_edge ], [ -22, %if.then224.if.end.i403_crit_edge ], [ -22, %if.then139.if.end.i403_crit_edge ], [ -22, %lor.lhs.false142.if.end.i403_crit_edge ], [ -22, %lor.lhs.false145.if.end.i403_crit_edge ], [ -22, %if.then118.if.end.i403_crit_edge ], [ -22, %lor.lhs.false124.if.end.i403_crit_edge ], [ -22, %land.lhs.true85.if.end.i403_crit_edge ], [ -22, %land.lhs.true76.if.end.i403_crit_edge ], [ -22, %lor.lhs.false167.if.end.i403_crit_edge ], [ -22, %if.then161.if.end.i403_crit_edge ], [ %retval.1.i.ph, %dn_fib_check_nh.exit.thread435 ], [ -100, %if.end87.i.if.end.i403_crit_edge ], [ -19, %if.end79.i.if.end.i403_crit_edge ], [ -19, %lor.lhs.false.i.if.end.i403_crit_edge ], [ -22, %if.else.i.if.end.i403_crit_edge ], [ %err.0.i, %dn_fib_check_nh.exit.if.end.i403_crit_edge ], [ -22, %land.lhs.true.i.i373.if.end.i403_crit_edge ], [ -22, %lor.lhs.false44.if.end.i403_crit_edge ], [ -22, %if.then39.if.end.i403_crit_edge ]
  %248 = ptrtoint ptr %errp to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %err.4, ptr %errp, align 4
  %fib_dead245 = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 0, i32 4
  %249 = ptrtoint ptr %fib_dead245 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 1, ptr %fib_dead245, align 16
  %250 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %fib_nhs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %cmp19.i = icmp sgt i32 %251, 0
  br i1 %cmp19.i, label %for.body.preheader.i, label %if.end.i403.dn_fib_free_info.exit_crit_edge

if.end.i403.dn_fib_free_info.exit_crit_edge:      ; preds = %if.end.i403
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_free_info.exit

for.body.preheader.i:                             ; preds = %if.end.i403
  %fib_nh.i404 = getelementptr inbounds %struct.dn_fib_info, ptr %call9.i.i, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %dev_put.exit.i.for.body.i_crit_edge, %for.body.preheader.i
  %nh.011.i = phi ptr [ %incdec.ptr.i415, %dev_put.exit.i.for.body.i_crit_edge ], [ %fib_nh.i404, %for.body.preheader.i ]
  %nhsel.010.i = phi i32 [ %inc.i416, %dev_put.exit.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %252 = ptrtoint ptr %nh.011.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %nh.011.i, align 4
  %tobool.not.i.i = icmp eq ptr %253, null
  br i1 %tobool.not.i.i, label %for.body.i.dev_put.exit.i_crit_edge, label %do.body1.i.i413

for.body.i.dev_put.exit.i_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_put.exit.i

do.body1.i.i413:                                  ; preds = %for.body.i
  %254 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #12, !srcloc !55
  %pcpu_refcnt.i.i405 = getelementptr inbounds %struct.net_device, ptr %253, i32 0, i32 118
  %255 = ptrtoint ptr %pcpu_refcnt.i.i405 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %pcpu_refcnt.i.i405, align 4
  %257 = ptrtoint ptr %256 to i32
  %258 = call i32 @llvm.read_register.i32(metadata !45) #12
  %and.i.i.i406 = and i32 %258, -16384
  %259 = inttoptr i32 %and.i.i.i406 to ptr
  %cpu.i.i407 = getelementptr inbounds %struct.thread_info, ptr %259, i32 0, i32 3
  %260 = ptrtoint ptr %cpu.i.i407 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %cpu.i.i407, align 4
  %arrayidx.i.i408 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %261
  %262 = ptrtoint ptr %arrayidx.i.i408 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %arrayidx.i.i408, align 4
  %add.i.i409 = add i32 %263, %257
  %264 = inttoptr i32 %add.i.i409 to ptr
  %265 = ptrtoint ptr %264 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %264, align 4
  %add13.i.i410 = add i32 %266, -1
  store i32 %add13.i.i410, ptr %264, align 4
  %267 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !56
  %and.i.i.i.i411 = and i32 %267, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i411)
  %tobool24.not.i.i412 = icmp eq i32 %and.i.i.i.i411, 0
  br i1 %tobool24.not.i.i412, label %if.then28.i.i414, label %do.body1.i.i413.do.end30.i.i_crit_edge, !prof !57

do.body1.i.i413.do.end30.i.i_crit_edge:           ; preds = %do.body1.i.i413
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30.i.i

if.then28.i.i414:                                 ; preds = %do.body1.i.i413
  call void @__sanitizer_cov_trace_pc() #14
  call void @warn_bogus_irq_restore() #12
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i414, %do.body1.i.i413.do.end30.i.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %254) #12, !srcloc !58
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %do.end30.i.i, %for.body.i.dev_put.exit.i_crit_edge
  %268 = ptrtoint ptr %nh.011.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr null, ptr %nh.011.i, align 4
  %incdec.ptr.i415 = getelementptr %struct.dn_fib_nh, ptr %nh.011.i, i32 1
  %inc.i416 = add nuw nsw i32 %nhsel.010.i, 1
  %269 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %fib_nhs, align 8
  %cmp1.i417 = icmp slt i32 %inc.i416, %270
  br i1 %cmp1.i417, label %dev_put.exit.i.for.body.i_crit_edge, label %dev_put.exit.i.dn_fib_free_info.exit_crit_edge

dev_put.exit.i.dn_fib_free_info.exit_crit_edge:   ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_free_info.exit

dev_put.exit.i.for.body.i_crit_edge:              ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

dn_fib_free_info.exit:                            ; preds = %dev_put.exit.i.dn_fib_free_info.exit_crit_edge, %if.end.i403.dn_fib_free_info.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #12
  br label %cleanup247

cleanup247:                                       ; preds = %dn_fib_free_info.exit, %failure.thread, %if.end242, %if.then236
  %retval.0 = phi ptr [ %call233, %if.then236 ], [ %call9.i.i, %if.end242 ], [ null, %dn_fib_free_info.exit ], [ null, %failure.thread ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dnet_addr_type(i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: inlinehint nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dn_fib_find_info(ptr nocapture noundef readonly %nfi) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %fi.061 = load ptr, ptr @dn_fib_info_list, align 4
  %tobool.not62 = icmp eq ptr %fi.061, null
  br i1 %tobool.not62, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %fib_nhs1 = getelementptr inbounds %struct.dn_fib_info, ptr %nfi, i32 0, i32 10
  %0 = ptrtoint ptr %fib_nhs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fib_nhs1, align 4
  %fib_protocol = getelementptr inbounds %struct.dn_fib_info, ptr %nfi, i32 0, i32 6
  %fib_prefsrc = getelementptr inbounds %struct.dn_fib_info, ptr %nfi, i32 0, i32 7
  %fib_priority = getelementptr inbounds %struct.dn_fib_info, ptr %nfi, i32 0, i32 8
  %fib_metrics = getelementptr inbounds %struct.dn_fib_info, ptr %nfi, i32 0, i32 9
  %fib_flags = getelementptr inbounds %struct.dn_fib_info, ptr %nfi, i32 0, i32 5
  %fib_nh.i = getelementptr inbounds %struct.dn_fib_info, ptr %nfi, i32 0, i32 12
  %nh_oif3.i50 = getelementptr inbounds %struct.dn_fib_info, ptr %nfi, i32 1, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp36.i = icmp sgt i32 %1, 0
  %nh_gw5.i68 = getelementptr inbounds %struct.dn_fib_info, ptr %nfi, i32 1, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %fi.063 = phi ptr [ %fi.061, %for.body.lr.ph ], [ %fi.0, %for.inc.for.body_crit_edge ]
  %fib_nhs = getelementptr inbounds %struct.dn_fib_info, ptr %fi.063, i32 0, i32 10
  %2 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fib_nhs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not = icmp eq i32 %3, %1
  br i1 %cmp.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = ptrtoint ptr %fib_protocol to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fib_protocol, align 4
  %fib_protocol2 = getelementptr inbounds %struct.dn_fib_info, ptr %fi.063, i32 0, i32 6
  %6 = ptrtoint ptr %fib_protocol2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fib_protocol2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp3 = icmp eq i32 %5, %7
  br i1 %cmp3, label %land.lhs.true, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end
  %8 = ptrtoint ptr %fib_prefsrc to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %fib_prefsrc, align 4
  %fib_prefsrc4 = getelementptr inbounds %struct.dn_fib_info, ptr %fi.063, i32 0, i32 7
  %10 = ptrtoint ptr %fib_prefsrc4 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %fib_prefsrc4, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %9, i16 %11)
  %cmp6 = icmp eq i16 %9, %11
  br i1 %cmp6, label %land.lhs.true8, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true8:                                   ; preds = %land.lhs.true
  %12 = ptrtoint ptr %fib_priority to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fib_priority, align 4
  %fib_priority9 = getelementptr inbounds %struct.dn_fib_info, ptr %fi.063, i32 0, i32 8
  %14 = ptrtoint ptr %fib_priority9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %fib_priority9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp10 = icmp eq i32 %13, %15
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true8.for.inc_crit_edge

land.lhs.true8.for.inc_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true12:                                  ; preds = %land.lhs.true8
  %fib_metrics13 = getelementptr inbounds %struct.dn_fib_info, ptr %fi.063, i32 0, i32 9
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(68) %fib_metrics, ptr noundef dereferenceable(68) %fib_metrics13, i32 68) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp15 = icmp eq i32 %bcmp, 0
  br i1 %cmp15, label %land.lhs.true17, label %land.lhs.true12.for.inc_crit_edge

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true12
  %16 = ptrtoint ptr %fib_flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fib_flags, align 4
  %fib_flags18 = getelementptr inbounds %struct.dn_fib_info, ptr %fi.063, i32 0, i32 5
  %18 = ptrtoint ptr %fib_flags18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fib_flags18, align 4
  %xor = xor i32 %19, %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %xor)
  %cmp19 = icmp ult i32 %xor, 2
  br i1 %cmp19, label %land.lhs.true21, label %land.lhs.true17.for.inc_crit_edge

land.lhs.true17.for.inc_crit_edge:                ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

land.lhs.true21:                                  ; preds = %land.lhs.true17
  br i1 %cmp36.i, label %for.body.preheader.i, label %land.lhs.true21.cleanup_crit_edge

land.lhs.true21.cleanup_crit_edge:                ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader.i:                             ; preds = %land.lhs.true21
  %nh_oif.i49 = getelementptr inbounds %struct.dn_fib_info, ptr %fi.063, i32 1, i32 5
  %20 = ptrtoint ptr %nh_oif.i49 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nh_oif.i49, align 4
  %22 = ptrtoint ptr %nh_oif3.i50 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nh_oif3.i50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp4.not.i51 = icmp eq i32 %21, %23
  br i1 %cmp4.not.i51, label %lor.lhs.false.i.preheader, label %for.body.preheader.i.for.inc_crit_edge

for.body.preheader.i.for.inc_crit_edge:           ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false.i.preheader:                        ; preds = %for.body.preheader.i
  %nh_gw.i67 = getelementptr inbounds %struct.dn_fib_info, ptr %fi.063, i32 1, i32 6
  %24 = ptrtoint ptr %nh_gw.i67 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %nh_gw.i67, align 4
  %26 = ptrtoint ptr %nh_gw5.i68 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %nh_gw5.i68, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %25, i16 %27)
  %cmp7.not.i69 = icmp eq i16 %25, %27
  br i1 %cmp7.not.i69, label %lor.lhs.false9.i.lr.ph, label %lor.lhs.false.i.preheader.for.inc_crit_edge

lor.lhs.false.i.preheader.for.inc_crit_edge:      ; preds = %lor.lhs.false.i.preheader
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false9.i.lr.ph:                           ; preds = %lor.lhs.false.i.preheader
  %fib_nh1.i = getelementptr inbounds %struct.dn_fib_info, ptr %fi.063, i32 0, i32 12
  br label %lor.lhs.false9.i

for.body.i:                                       ; preds = %if.end.i
  %nh_oif.i = getelementptr %struct.dn_fib_nh, ptr %nh.039.i5372, i32 1, i32 5
  %28 = ptrtoint ptr %nh_oif.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nh_oif.i, align 4
  %nh_oif3.i = getelementptr %struct.dn_fib_nh, ptr %onh.037.i5570, i32 1, i32 5
  %30 = ptrtoint ptr %nh_oif3.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nh_oif3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp4.not.i = icmp eq i32 %29, %31
  br i1 %cmp4.not.i, label %lor.lhs.false.i, label %for.body.i.dn_fib_nh_comp.exit_crit_edge

for.body.i.dn_fib_nh_comp.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_nh_comp.exit

lor.lhs.false.i:                                  ; preds = %for.body.i
  %incdec.ptr21.i = getelementptr %struct.dn_fib_nh, ptr %nh.039.i5372, i32 1
  %incdec.ptr.i = getelementptr %struct.dn_fib_nh, ptr %onh.037.i5570, i32 1
  %nh_gw.i = getelementptr %struct.dn_fib_nh, ptr %nh.039.i5372, i32 1, i32 6
  %32 = ptrtoint ptr %nh_gw.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nh_gw.i, align 4
  %nh_gw5.i = getelementptr %struct.dn_fib_nh, ptr %onh.037.i5570, i32 1, i32 6
  %34 = ptrtoint ptr %nh_gw5.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %nh_gw5.i, align 4
  %cmp7.not.i = icmp eq i16 %33, %35
  br i1 %cmp7.not.i, label %lor.lhs.false.i.lor.lhs.false9.i_crit_edge, label %lor.lhs.false.i.dn_fib_nh_comp.exit_crit_edge

lor.lhs.false.i.dn_fib_nh_comp.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_nh_comp.exit

lor.lhs.false.i.lor.lhs.false9.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false9.i

lor.lhs.false9.i:                                 ; preds = %lor.lhs.false.i.lor.lhs.false9.i_crit_edge, %lor.lhs.false9.i.lr.ph
  %cmp40.i5273 = phi i1 [ true, %lor.lhs.false9.i.lr.ph ], [ %cmp.i, %lor.lhs.false.i.lor.lhs.false9.i_crit_edge ]
  %nh.039.i5372 = phi ptr [ %fib_nh1.i, %lor.lhs.false9.i.lr.ph ], [ %incdec.ptr21.i, %lor.lhs.false.i.lor.lhs.false9.i_crit_edge ]
  %nhsel.038.i5471 = phi i32 [ 0, %lor.lhs.false9.i.lr.ph ], [ %inc.i, %lor.lhs.false.i.lor.lhs.false9.i_crit_edge ]
  %onh.037.i5570 = phi ptr [ %fib_nh.i, %lor.lhs.false9.i.lr.ph ], [ %incdec.ptr.i, %lor.lhs.false.i.lor.lhs.false9.i_crit_edge ]
  %nh_scope.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.039.i5372, i32 0, i32 2
  %36 = ptrtoint ptr %nh_scope.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %nh_scope.i, align 4
  %nh_scope11.i = getelementptr inbounds %struct.dn_fib_nh, ptr %onh.037.i5570, i32 0, i32 2
  %38 = ptrtoint ptr %nh_scope11.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %nh_scope11.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %37, i8 %39)
  %cmp13.not.i = icmp eq i8 %37, %39
  br i1 %cmp13.not.i, label %lor.lhs.false15.i, label %lor.lhs.false9.i.dn_fib_nh_comp.exit_crit_edge

lor.lhs.false9.i.dn_fib_nh_comp.exit_crit_edge:   ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_nh_comp.exit

lor.lhs.false15.i:                                ; preds = %lor.lhs.false9.i
  %nh_weight.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.039.i5372, i32 0, i32 3
  %40 = ptrtoint ptr %nh_weight.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nh_weight.i, align 4
  %nh_weight16.i = getelementptr inbounds %struct.dn_fib_nh, ptr %onh.037.i5570, i32 0, i32 3
  %42 = ptrtoint ptr %nh_weight16.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nh_weight16.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %43)
  %cmp17.not.i = icmp eq i32 %41, %43
  br i1 %cmp17.not.i, label %lor.lhs.false19.i, label %lor.lhs.false15.i.dn_fib_nh_comp.exit_crit_edge

lor.lhs.false15.i.dn_fib_nh_comp.exit_crit_edge:  ; preds = %lor.lhs.false15.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_nh_comp.exit

lor.lhs.false19.i:                                ; preds = %lor.lhs.false15.i
  %nh_flags.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.039.i5372, i32 0, i32 1
  %44 = ptrtoint ptr %nh_flags.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nh_flags.i, align 4
  %nh_flags20.i = getelementptr inbounds %struct.dn_fib_nh, ptr %onh.037.i5570, i32 0, i32 1
  %46 = ptrtoint ptr %nh_flags20.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nh_flags20.i, align 4
  %xor.i = xor i32 %47, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %xor.i)
  %tobool.not.i = icmp ult i32 %xor.i, 2
  br i1 %tobool.not.i, label %if.end.i, label %lor.lhs.false19.i.dn_fib_nh_comp.exit_crit_edge

lor.lhs.false19.i.dn_fib_nh_comp.exit_crit_edge:  ; preds = %lor.lhs.false19.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_nh_comp.exit

if.end.i:                                         ; preds = %lor.lhs.false19.i
  %inc.i = add nuw nsw i32 %nhsel.038.i5471, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %cmp.i = icmp slt i32 %inc.i, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %1)
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %if.end.i.dn_fib_nh_comp.exit_crit_edge, label %for.body.i

if.end.i.dn_fib_nh_comp.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_nh_comp.exit

dn_fib_nh_comp.exit:                              ; preds = %if.end.i.dn_fib_nh_comp.exit_crit_edge, %lor.lhs.false19.i.dn_fib_nh_comp.exit_crit_edge, %lor.lhs.false15.i.dn_fib_nh_comp.exit_crit_edge, %lor.lhs.false9.i.dn_fib_nh_comp.exit_crit_edge, %lor.lhs.false.i.dn_fib_nh_comp.exit_crit_edge, %for.body.i.dn_fib_nh_comp.exit_crit_edge
  %cmp.lcssa.i = phi i1 [ %cmp.i, %if.end.i.dn_fib_nh_comp.exit_crit_edge ], [ %cmp40.i5273, %lor.lhs.false19.i.dn_fib_nh_comp.exit_crit_edge ], [ %cmp40.i5273, %lor.lhs.false15.i.dn_fib_nh_comp.exit_crit_edge ], [ %cmp40.i5273, %lor.lhs.false9.i.dn_fib_nh_comp.exit_crit_edge ], [ %cmp.i, %lor.lhs.false.i.dn_fib_nh_comp.exit_crit_edge ], [ %cmp.i, %for.body.i.dn_fib_nh_comp.exit_crit_edge ]
  br i1 %cmp.lcssa.i, label %dn_fib_nh_comp.exit.for.inc_crit_edge, label %dn_fib_nh_comp.exit.cleanup_crit_edge

dn_fib_nh_comp.exit.cleanup_crit_edge:            ; preds = %dn_fib_nh_comp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

dn_fib_nh_comp.exit.for.inc_crit_edge:            ; preds = %dn_fib_nh_comp.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %dn_fib_nh_comp.exit.for.inc_crit_edge, %lor.lhs.false.i.preheader.for.inc_crit_edge, %for.body.preheader.i.for.inc_crit_edge, %land.lhs.true17.for.inc_crit_edge, %land.lhs.true12.for.inc_crit_edge, %land.lhs.true8.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %48 = ptrtoint ptr %fi.063 to i32
  call void @__asan_load4_noabort(i32 %48)
  %fi.0 = load ptr, ptr %fi.063, align 4
  %tobool.not = icmp eq ptr %fi.0, null
  br i1 %tobool.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %dn_fib_nh_comp.exit.cleanup_crit_edge, %land.lhs.true21.cleanup_crit_edge, %entry.cleanup_crit_edge
  %fi.0.lcssa = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %fi.063, %land.lhs.true21.cleanup_crit_edge ], [ %fi.063, %dn_fib_nh_comp.exit.cleanup_crit_edge ]
  ret ptr %fi.0.lcssa
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %r) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #12, !srcloc !63
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %entry.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !57

entry.if.end15.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %add.i.i = add i32 %asmresult.i.i.i.i, 1
  %1 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %if.else.i.i.__refcount_inc.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !61

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i

if.else.i.i.__refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__refcount_inc.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %entry.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef %.sink.i.i) #12
  br label %__refcount_inc.exit

__refcount_inc.exit:                              ; preds = %if.end15.sink.split.i.i, %if.else.i.i.__refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dn_fib_semantic_match(i32 noundef %type, ptr noundef %fi, ptr nocapture noundef readonly %fld, ptr nocapture noundef writeonly %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [12 x %struct.anon.145], ptr @dn_fib_props, i32 0, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.cleanup32_crit_edge

entry.cleanup32_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup32

if.then:                                          ; preds = %entry
  %fib_flags = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 5
  %2 = ptrtoint ptr %fib_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fib_flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup32_crit_edge

if.then.cleanup32_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup32

if.end:                                           ; preds = %if.then
  %fi2 = getelementptr inbounds %struct.dn_fib_res, ptr %res, i32 0, i32 1
  %4 = ptrtoint ptr %fi2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %fi, ptr %fi2, align 4
  %5 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %type, label %do.body [
    i32 10, label %sw.bb
    i32 1, label %if.end.sw.bb3_crit_edge
    i32 2, label %if.end.sw.bb3_crit_edge73
  ]

if.end.sw.bb3_crit_edge73:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

if.end.sw.bb3_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb3

sw.bb:                                            ; preds = %if.end
  %nh_sel = getelementptr inbounds %struct.dn_fib_res, ptr %res, i32 0, i32 3
  %6 = ptrtoint ptr %nh_sel to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %nh_sel, align 1
  %fib_clntref = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %fib_clntref, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref, ptr %fib_clntref, i32 1, ptr elementtype(i32) %fib_clntref) #12, !srcloc !63
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %sw.bb.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !57

sw.bb.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %sw.bb
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup32_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !61

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup32_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup32

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %sw.bb.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %sw.bb.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %fib_clntref, i32 noundef %.sink.i.i.i) #12
  br label %cleanup32

sw.bb3:                                           ; preds = %if.end.sw.bb3_crit_edge, %if.end.sw.bb3_crit_edge73
  %fib_nhs = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 10
  %9 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fib_nhs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp463 = icmp sgt i32 %10, 0
  br i1 %cmp463, label %for.body.preheader, label %sw.bb3.cleanup.cont.critedge_crit_edge

sw.bb3.cleanup.cont.critedge_crit_edge:           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont.critedge

for.body.preheader:                               ; preds = %sw.bb3
  %fib_nh = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %nh.066 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %fib_nh, %for.body.preheader ]
  %nhsel.064 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %nh_flags = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.066, i32 0, i32 1
  %11 = ptrtoint ptr %nh_flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nh_flags, align 4
  %and5 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.end8:                                          ; preds = %for.body
  %13 = ptrtoint ptr %fld to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %fld, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool9.not = icmp eq i32 %14, 0
  br i1 %tobool9.not, label %if.end8.if.then17_crit_edge, label %lor.lhs.false

if.end8.if.then17_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end8
  %nh_oif = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.066, i32 0, i32 5
  %15 = ptrtoint ptr %nh_oif to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nh_oif, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp12 = icmp eq i32 %14, %16
  br i1 %cmp12, label %lor.lhs.false.if.then17_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then17

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.dn_fib_nh, ptr %nh.066, i32 1
  %inc = add nuw nsw i32 %nhsel.064, 1
  %exitcond.not = icmp eq i32 %inc, %10
  br i1 %exitcond.not, label %for.inc.cleanup.cont.critedge_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.cleanup.cont.critedge_crit_edge:          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont.critedge

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end8.if.then17_crit_edge
  %conv = trunc i32 %nhsel.064 to i8
  %nh_sel18 = getelementptr inbounds %struct.dn_fib_res, ptr %res, i32 0, i32 3
  %17 = ptrtoint ptr %nh_sel18 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %nh_sel18, align 1
  %fib_clntref19 = getelementptr inbounds %struct.dn_fib_info, ptr %fi, i32 0, i32 3
  %call.i.i.i.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref19, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %fib_clntref19, i32 1, i32 3, i32 1) #12
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref19, ptr %fib_clntref19, i32 1, ptr elementtype(i32) %fib_clntref19) #12, !srcloc !63
  %asmresult.i.i.i.i.i54 = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i54)
  %tobool1.not.i.i.i55 = icmp eq i32 %asmresult.i.i.i.i.i54, 0
  br i1 %tobool1.not.i.i.i55, label %if.then17.if.end15.sink.split.i.i.i60_crit_edge, label %if.else.i.i.i58, !prof !57

if.then17.if.end15.sink.split.i.i.i60_crit_edge:  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i60

if.else.i.i.i58:                                  ; preds = %if.then17
  %add.i.i.i56 = add i32 %asmresult.i.i.i.i.i54, 1
  %19 = or i32 %add.i.i.i56, %asmresult.i.i.i.i.i54
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %.not.i.i.i57 = icmp sgt i32 %19, -1
  br i1 %.not.i.i.i57, label %if.else.i.i.i58.cleanup32_crit_edge, label %if.else.i.i.i58.if.end15.sink.split.i.i.i60_crit_edge, !prof !61

if.else.i.i.i58.if.end15.sink.split.i.i.i60_crit_edge: ; preds = %if.else.i.i.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i60

if.else.i.i.i58.cleanup32_crit_edge:              ; preds = %if.else.i.i.i58
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup32

if.end15.sink.split.i.i.i60:                      ; preds = %if.else.i.i.i58.if.end15.sink.split.i.i.i60_crit_edge, %if.then17.if.end15.sink.split.i.i.i60_crit_edge
  %.sink.i.i.i59 = phi i32 [ 2, %if.then17.if.end15.sink.split.i.i.i60_crit_edge ], [ 1, %if.else.i.i.i58.if.end15.sink.split.i.i.i60_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %fib_clntref19, i32 noundef %.sink.i.i.i59) #12
  br label %cleanup32

cleanup.cont.critedge:                            ; preds = %for.inc.cleanup.cont.critedge_crit_edge, %sw.bb3.cleanup.cont.critedge_crit_edge
  %20 = ptrtoint ptr %fi2 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %fi2, align 4
  br label %cleanup32

do.body:                                          ; preds = %if.end
  %call = tail call i32 @net_ratelimit() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool23.not = icmp eq i32 %call, 0
  br i1 %tobool23.not, label %do.body.do.end29_crit_edge, label %do.end

do.body.do.end29_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end29

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #14
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %type) #15
  br label %do.end29

do.end29:                                         ; preds = %do.end, %do.body.do.end29_crit_edge
  %21 = ptrtoint ptr %fi2 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %fi2, align 4
  br label %cleanup32

cleanup32:                                        ; preds = %do.end29, %cleanup.cont.critedge, %if.end15.sink.split.i.i.i60, %if.else.i.i.i58.cleanup32_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup32_crit_edge, %if.then.cleanup32_crit_edge, %entry.cleanup32_crit_edge
  %retval.1 = phi i32 [ -22, %do.end29 ], [ 1, %cleanup.cont.critedge ], [ 1, %if.then.cleanup32_crit_edge ], [ %1, %entry.cleanup32_crit_edge ], [ 0, %if.else.i.i.i.cleanup32_crit_edge ], [ 0, %if.end15.sink.split.i.i.i ], [ 0, %if.else.i.i.i58.cleanup32_crit_edge ], [ 0, %if.end15.sink.split.i.i.i60 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_fib_select_multipath(ptr nocapture noundef readnone %fld, ptr nocapture noundef %res) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %fi1 = getelementptr inbounds %struct.dn_fib_res, ptr %res, i32 0, i32 1
  %0 = ptrtoint ptr %fi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fi1, align 4
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @dn_fib_multipath_lock) #12
  %fib_power = getelementptr inbounds %struct.dn_fib_info, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %fib_power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fib_power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then:                                          ; preds = %entry
  %fib_nhs = getelementptr inbounds %struct.dn_fib_info, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %fib_nhs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp274 = icmp sgt i32 %5, 0
  br i1 %cmp274, label %for.body.preheader, label %for.end.thread

for.end.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %fib_power to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %fib_power, align 4
  br label %if.end9

for.body.preheader:                               ; preds = %if.then
  %fib_nh = getelementptr inbounds %struct.dn_fib_info, ptr %1, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %nh.077 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %fib_nh, %for.body.preheader ]
  %nhsel.076 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %power.075 = phi i32 [ %power.1, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %nh_flags = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.077, i32 0, i32 1
  %7 = ptrtoint ptr %nh_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nh_flags, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then3, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %nh_weight = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.077, i32 0, i32 3
  %9 = ptrtoint ptr %nh_weight to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nh_weight, align 4
  %add = add i32 %10, %power.075
  %nh_power = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.077, i32 0, i32 4
  %11 = ptrtoint ptr %nh_power to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %nh_power, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %power.1 = phi i32 [ %power.075, %for.body.for.inc_crit_edge ], [ %add, %if.then3 ]
  %incdec.ptr = getelementptr %struct.dn_fib_nh, ptr %nh.077, i32 1
  %inc = add nuw nsw i32 %nhsel.076, 1
  %12 = ptrtoint ptr %fib_nhs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fib_nhs, align 4
  %cmp2 = icmp slt i32 %inc, %13
  br i1 %cmp2, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %14 = ptrtoint ptr %fib_power to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %power.1, ptr %fib_power, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %power.1)
  %cmp6 = icmp slt i32 %power.1, 0
  br i1 %cmp6, label %if.then7, label %for.end.if.end9_crit_edge

for.end.if.end9_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end9

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @dn_fib_multipath_lock) #12
  %nh_sel = getelementptr inbounds %struct.dn_fib_res, ptr %res, i32 0, i32 3
  %15 = ptrtoint ptr %nh_sel to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %nh_sel, align 1
  br label %cleanup43

if.end9:                                          ; preds = %for.end.if.end9_crit_edge, %for.end.thread, %entry.if.end9_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %fib_nhs16 = getelementptr inbounds %struct.dn_fib_info, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %fib_nhs16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %fib_nhs16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp1779 = icmp sgt i32 %18, 0
  br i1 %cmp1779, label %for.body18.preheader, label %if.end9.cleanup.cont41.critedge_crit_edge

if.end9.cleanup.cont41.critedge_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont41.critedge

for.body18.preheader:                             ; preds = %if.end9
  %fib_nh13 = getelementptr inbounds %struct.dn_fib_info, ptr %1, i32 0, i32 12
  %19 = ptrtoint ptr %fib_power to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fib_power, align 4
  %rem = urem i32 %16, %20
  br label %for.body18

for.body18:                                       ; preds = %for.inc34.for.body18_crit_edge, %for.body18.preheader
  %nh12.083 = phi ptr [ %incdec.ptr35, %for.inc34.for.body18_crit_edge ], [ %fib_nh13, %for.body18.preheader ]
  %nhsel11.081 = phi i32 [ %inc36, %for.inc34.for.body18_crit_edge ], [ 0, %for.body18.preheader ]
  %w.080 = phi i32 [ %w.1, %for.inc34.for.body18_crit_edge ], [ %rem, %for.body18.preheader ]
  %nh_flags19 = getelementptr inbounds %struct.dn_fib_nh, ptr %nh12.083, i32 0, i32 1
  %21 = ptrtoint ptr %nh_flags19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nh_flags19, align 4
  %and20 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %land.lhs.true, label %for.body18.for.inc34_crit_edge

for.body18.for.inc34_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc34

land.lhs.true:                                    ; preds = %for.body18
  %nh_power22 = getelementptr inbounds %struct.dn_fib_nh, ptr %nh12.083, i32 0, i32 4
  %23 = ptrtoint ptr %nh_power22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nh_power22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool23.not = icmp eq i32 %24, 0
  br i1 %tobool23.not, label %land.lhs.true.for.inc34_crit_edge, label %if.then24

land.lhs.true.for.inc34_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc34

if.then24:                                        ; preds = %land.lhs.true
  %sub = sub i32 %w.080, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp26 = icmp slt i32 %sub, 1
  br i1 %cmp26, label %if.then27, label %if.then24.for.inc34_crit_edge

if.then24.for.inc34_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc34

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #14
  %nh_power22.le = getelementptr inbounds %struct.dn_fib_nh, ptr %nh12.083, i32 0, i32 4
  %dec = add i32 %24, -1
  %25 = ptrtoint ptr %nh_power22.le to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %dec, ptr %nh_power22.le, align 4
  %26 = ptrtoint ptr %fib_power to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fib_power, align 4
  %dec30 = add i32 %27, -1
  store i32 %dec30, ptr %fib_power, align 4
  %conv = trunc i32 %nhsel11.081 to i8
  %nh_sel31 = getelementptr inbounds %struct.dn_fib_res, ptr %res, i32 0, i32 3
  %28 = ptrtoint ptr %nh_sel31 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %nh_sel31, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @dn_fib_multipath_lock) #12
  br label %cleanup43

for.inc34:                                        ; preds = %if.then24.for.inc34_crit_edge, %land.lhs.true.for.inc34_crit_edge, %for.body18.for.inc34_crit_edge
  %w.1 = phi i32 [ %w.080, %for.body18.for.inc34_crit_edge ], [ %sub, %if.then24.for.inc34_crit_edge ], [ %w.080, %land.lhs.true.for.inc34_crit_edge ]
  %incdec.ptr35 = getelementptr %struct.dn_fib_nh, ptr %nh12.083, i32 1
  %inc36 = add nuw nsw i32 %nhsel11.081, 1
  %exitcond.not = icmp eq i32 %inc36, %18
  br i1 %exitcond.not, label %for.inc34.cleanup.cont41.critedge_crit_edge, label %for.inc34.for.body18_crit_edge

for.inc34.for.body18_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body18

for.inc34.cleanup.cont41.critedge_crit_edge:      ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup.cont41.critedge

cleanup.cont41.critedge:                          ; preds = %for.inc34.cleanup.cont41.critedge_crit_edge, %if.end9.cleanup.cont41.critedge_crit_edge
  %nh_sel42 = getelementptr inbounds %struct.dn_fib_res, ptr %res, i32 0, i32 3
  %29 = ptrtoint ptr %nh_sel42 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %nh_sel42, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @dn_fib_multipath_lock) #12
  br label %cleanup43

cleanup43:                                        ; preds = %cleanup.cont41.critedge, %if.then27, %if.then7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_fib_cleanup() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @dn_fib_table_cleanup() #12
  tail call void @dn_fib_rules_cleanup() #12
  %call = tail call i32 @unregister_dnaddr_notifier(ptr noundef nonnull @dn_fib_dnaddr_notifier) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_fib_table_cleanup() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_fib_rules_cleanup() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_dnaddr_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_fib_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dn_fib_table_init() #12
  tail call void @dn_fib_rules_init() #12
  %call = tail call i32 @register_dnaddr_notifier(ptr noundef nonnull @dn_fib_dnaddr_notifier) #12
  %call1 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 12, i32 noundef 24, ptr noundef nonnull @dn_fib_rtm_newroute, ptr noundef null, i32 noundef 0) #12
  %call2 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 12, i32 noundef 25, ptr noundef nonnull @dn_fib_rtm_delroute, ptr noundef null, i32 noundef 0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_fib_table_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_fib_rules_init() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_dnaddr_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_register_module(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_fib_rtm_newroute(ptr noundef %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %attrs = alloca [31 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %attrs) #12
  %5 = call ptr @memset(ptr %attrs, i32 255, i32 124)
  %call2 = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 12) #12
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i.not = icmp eq ptr %4, @init_net
  br i1 %cmp.i.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 28
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse_deprecated.exit

do.body.i.i:                                      ; preds = %if.end5
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #12
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then1.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %cleanup

nlmsg_parse_deprecated.exit:                      ; preds = %if.end5
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 28
  %sub1.i.i.i = add i32 %7, -28
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 30, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @rtm_dn_policy, i32 noundef 0, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %nlmsg_parse_deprecated.exit.cleanup_crit_edge, label %if.end8

nlmsg_parse_deprecated.exit.cleanup_crit_edge:    ; preds = %nlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %nlmsg_parse_deprecated.exit
  %rtm_table = getelementptr i8, ptr %nlh, i32 20
  %9 = ptrtoint ptr %rtm_table to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rtm_table, align 4
  %arrayidx.i = getelementptr inbounds ptr, ptr %attrs, i32 15
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end8.rtm_get_table.exit_crit_edge, label %if.then.i

if.end8.rtm_get_table.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtm_get_table.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i29 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i.i29, align 4
  %conv.i30 = trunc i32 %14 to i8
  br label %rtm_get_table.exit

rtm_get_table.exit:                               ; preds = %if.then.i, %if.end8.rtm_get_table.exit_crit_edge
  %table.addr.0.i = phi i8 [ %conv.i30, %if.then.i ], [ %10, %if.end8.rtm_get_table.exit_crit_edge ]
  %conv2.i = zext i8 %table.addr.0.i to i32
  %call11 = call ptr @dn_fib_get_table(i32 noundef %conv2.i, i32 noundef 1) #12
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %rtm_get_table.exit.cleanup_crit_edge, label %if.end14

rtm_get_table.exit.cleanup_crit_edge:             ; preds = %rtm_get_table.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %rtm_get_table.exit
  call void @__sanitizer_cov_trace_pc() #14
  %insert = getelementptr inbounds %struct.dn_fib_table, ptr %call11, i32 0, i32 2
  %15 = ptrtoint ptr %insert to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %insert, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %call16 = call i32 %16(ptr noundef nonnull %call11, ptr noundef %add.ptr.i, ptr noundef nonnull %attrs, ptr noundef %nlh, ptr noundef %cb) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %rtm_get_table.exit.cleanup_crit_edge, %nlmsg_parse_deprecated.exit.cleanup_crit_edge, %if.then1.i.i, %do.body.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end14 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5.i.i, %nlmsg_parse_deprecated.exit.cleanup_crit_edge ], [ -105, %rtm_get_table.exit.cleanup_crit_edge ], [ -22, %if.then1.i.i ], [ -22, %do.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %attrs) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_fib_rtm_delroute(ptr noundef %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %attrs = alloca [31 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %add.ptr.i = getelementptr i8, ptr %nlh, i32 16
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %attrs) #12
  %5 = call ptr @memset(ptr %attrs, i32 255, i32 124)
  %call2 = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 12) #12
  br i1 %call2, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i.not = icmp eq ptr %4, @init_net
  br i1 %cmp.i.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 28
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse_deprecated.exit

do.body.i.i:                                      ; preds = %if.end5
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #12
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then1.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %cleanup

nlmsg_parse_deprecated.exit:                      ; preds = %if.end5
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 28
  %sub1.i.i.i = add i32 %7, -28
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 30, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @rtm_dn_policy, i32 noundef 0, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %nlmsg_parse_deprecated.exit.cleanup_crit_edge, label %if.end8

nlmsg_parse_deprecated.exit.cleanup_crit_edge:    ; preds = %nlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8:                                          ; preds = %nlmsg_parse_deprecated.exit
  %rtm_table = getelementptr i8, ptr %nlh, i32 20
  %9 = ptrtoint ptr %rtm_table to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %rtm_table, align 4
  %arrayidx.i = getelementptr inbounds ptr, ptr %attrs, i32 15
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end8.rtm_get_table.exit_crit_edge, label %if.then.i

if.end8.rtm_get_table.exit_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %rtm_get_table.exit

if.then.i:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr.i.i.i29 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i.i29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i.i29, align 4
  %conv.i30 = trunc i32 %14 to i8
  br label %rtm_get_table.exit

rtm_get_table.exit:                               ; preds = %if.then.i, %if.end8.rtm_get_table.exit_crit_edge
  %table.addr.0.i = phi i8 [ %conv.i30, %if.then.i ], [ %10, %if.end8.rtm_get_table.exit_crit_edge ]
  %conv2.i = zext i8 %table.addr.0.i to i32
  %call11 = call ptr @dn_fib_get_table(i32 noundef %conv2.i, i32 noundef 0) #12
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %rtm_get_table.exit.cleanup_crit_edge, label %if.end14

rtm_get_table.exit.cleanup_crit_edge:             ; preds = %rtm_get_table.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %rtm_get_table.exit
  call void @__sanitizer_cov_trace_pc() #14
  %delete = getelementptr inbounds %struct.dn_fib_table, ptr %call11, i32 0, i32 3
  %15 = ptrtoint ptr %delete to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %delete, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %call16 = call i32 %16(ptr noundef nonnull %call11, ptr noundef %add.ptr.i, ptr noundef nonnull %attrs, ptr noundef %nlh, ptr noundef %cb) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %rtm_get_table.exit.cleanup_crit_edge, %nlmsg_parse_deprecated.exit.cleanup_crit_edge, %if.then1.i.i, %do.body.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call16, %if.end14 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5.i.i, %nlmsg_parse_deprecated.exit.cleanup_crit_edge ], [ -3, %rtm_get_table.exit.cleanup_crit_edge ], [ -22, %if.then1.i.i ], [ -22, %do.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %attrs) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_find(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_fib_lookup(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_fib_dnaddr_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %req.i.i11 = alloca %struct.anon.146, align 4
  %dst_attr.i.i12 = alloca %struct.anon.147, align 4
  %prefsrc_attr.i.i13 = alloca %struct.anon.148, align 4
  %oif_attr.i.i14 = alloca %struct.anon.149, align 4
  %attrs.i.i15 = alloca [31 x ptr], align 4
  %req.i.i = alloca %struct.anon.146, align 4
  %dst_attr.i.i = alloca %struct.anon.147, align 4
  %prefsrc_attr.i.i = alloca %struct.anon.148, align 4
  %oif_attr.i.i = alloca %struct.anon.149, align 4
  %attrs.i.i = alloca [31 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %ifa_local.i = getelementptr inbounds %struct.dn_ifaddr, ptr %ptr, i32 0, i32 2
  %1 = ptrtoint ptr %ifa_local.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %ifa_local.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req.i.i) #12
  %3 = getelementptr inbounds %struct.anon.146, ptr %req.i.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %dst_attr.i.i) #12
  %4 = getelementptr inbounds %struct.anon.147, ptr %dst_attr.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %dst_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %dst_attr.i.i, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %2, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %prefsrc_attr.i.i) #12
  %7 = getelementptr inbounds %struct.anon.148, ptr %prefsrc_attr.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prefsrc_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %prefsrc_attr.i.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %2, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oif_attr.i.i) #12
  %10 = getelementptr inbounds %struct.anon.149, ptr %oif_attr.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %oif_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %oif_attr.i.i, align 4
  %ifa_dev.i.i = getelementptr inbounds %struct.dn_ifaddr, ptr %ptr, i32 0, i32 1
  %12 = ptrtoint ptr %ifa_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ifa_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.dn_dev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i.i, align 4
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ifindex.i.i, align 4
  %18 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %attrs.i.i) #12
  %19 = call ptr @memset(ptr %attrs.i.i, i32 0, i32 124)
  %arrayinit.element.i.i = getelementptr inbounds ptr, ptr %attrs.i.i, i32 1
  %20 = ptrtoint ptr %arrayinit.element.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dst_attr.i.i, ptr %arrayinit.element.i.i, align 4
  %arrayinit.element6.i.i = getelementptr inbounds ptr, ptr %attrs.i.i, i32 4
  %21 = ptrtoint ptr %arrayinit.element6.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %oif_attr.i.i, ptr %arrayinit.element6.i.i, align 4
  %arrayinit.element9.i.i = getelementptr inbounds ptr, ptr %attrs.i.i, i32 7
  %22 = ptrtoint ptr %arrayinit.element9.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %prefsrc_attr.i.i, ptr %arrayinit.element9.i.i, align 4
  %23 = call ptr @memset(ptr %3, i32 0, i32 12)
  %call10.i.i = call ptr @dn_fib_get_table(i32 noundef 255, i32 noundef 1) #12
  %cmp11.i.i = icmp eq ptr %call10.i.i, null
  br i1 %cmp11.i.i, label %sw.bb.dn_fib_add_ifaddr.exit_crit_edge, label %if.end13.i.i

sw.bb.dn_fib_add_ifaddr.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_add_ifaddr.exit

if.end13.i.i:                                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  %24 = getelementptr inbounds %struct.anon.146, ptr %req.i.i, i32 0, i32 1, i32 7
  %25 = getelementptr inbounds %struct.anon.146, ptr %req.i.i, i32 0, i32 1, i32 6
  %26 = getelementptr inbounds %struct.anon.146, ptr %req.i.i, i32 0, i32 1, i32 5
  %27 = getelementptr inbounds %struct.anon.146, ptr %req.i.i, i32 0, i32 1, i32 4
  %28 = getelementptr inbounds %struct.anon.146, ptr %req.i.i, i32 0, i32 1, i32 1
  %29 = getelementptr inbounds %struct.nlmsghdr, ptr %req.i.i, i32 0, i32 4
  %30 = getelementptr inbounds %struct.nlmsghdr, ptr %req.i.i, i32 0, i32 3
  %31 = getelementptr inbounds %struct.nlmsghdr, ptr %req.i.i, i32 0, i32 2
  %32 = getelementptr inbounds %struct.nlmsghdr, ptr %req.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %req.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 28, ptr %req.i.i, align 4
  %34 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 24, ptr %32, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 3073, ptr %31, align 2
  %36 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %29, align 4
  %37 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %30, align 4
  %38 = ptrtoint ptr %28 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 16, ptr %28, align 1
  %n.i.i = getelementptr inbounds %struct.dn_fib_table, ptr %call10.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %n.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %n.i.i, align 4
  %conv20.i.i = trunc i32 %40 to i8
  %41 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv20.i.i, ptr %27, align 4
  %42 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 2, ptr %26, align 1
  %43 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 -2, ptr %25, align 2
  %44 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 2, ptr %24, align 1
  %insert.i.i = getelementptr inbounds %struct.dn_fib_table, ptr %call10.i.i, i32 0, i32 2
  %45 = ptrtoint ptr %insert.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %insert.i.i, align 4
  %call34.i.i = call i32 %46(ptr noundef nonnull %call10.i.i, ptr noundef %3, ptr noundef nonnull %attrs.i.i, ptr noundef nonnull %req.i.i, ptr noundef null) #12
  br label %dn_fib_add_ifaddr.exit

dn_fib_add_ifaddr.exit:                           ; preds = %if.end13.i.i, %sw.bb.dn_fib_add_ifaddr.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %attrs.i.i) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oif_attr.i.i) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %prefsrc_attr.i.i) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %dst_attr.i.i) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req.i.i) #12
  %47 = ptrtoint ptr %ifa_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ifa_dev.i.i, align 4
  %dev = getelementptr inbounds %struct.dn_dev, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 14
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %dn_fib_add_ifaddr.exit.dn_fib_sync_up.exit_crit_edge, label %for.cond.preheader.i

dn_fib_add_ifaddr.exit.dn_fib_sync_up.exit_crit_edge: ; preds = %dn_fib_add_ifaddr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_sync_up.exit

for.cond.preheader.i:                             ; preds = %dn_fib_add_ifaddr.exit
  %fi.06.i = load ptr, ptr @dn_fib_info_list, align 4
  %tobool1.not7.i = icmp eq ptr %fi.06.i, null
  br i1 %tobool1.not7.i, label %for.cond.preheader.i.dn_fib_sync_up.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.dn_fib_sync_up.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_sync_up.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %dn_ptr.i = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 79
  br label %for.body.i

for.body.i:                                       ; preds = %if.end29.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %fi.09.i = phi ptr [ %fi.06.i, %for.body.lr.ph.i ], [ %fi.0.i, %if.end29.i.for.body.i_crit_edge ]
  %fib_nhs.i = getelementptr inbounds %struct.dn_fib_info, ptr %fi.09.i, i32 0, i32 10
  %53 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %fib_nhs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp1.i = icmp sgt i32 %54, 0
  br i1 %cmp1.i, label %for.body3.preheader.i, label %for.body.i.if.end29.i_crit_edge

for.body.i.if.end29.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

for.body3.preheader.i:                            ; preds = %for.body.i
  %fib_nh.i = getelementptr inbounds %struct.dn_fib_info, ptr %fi.09.i, i32 0, i32 12
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %for.body3.preheader.i
  %nh.04.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body3.i_crit_edge ], [ %fib_nh.i, %for.body3.preheader.i ]
  %nhsel.03.i = phi i32 [ %inc24.i, %for.inc.i.for.body3.i_crit_edge ], [ 0, %for.body3.preheader.i ]
  %alive.02.i = phi i32 [ %alive.1.i, %for.inc.i.for.body3.i_crit_edge ], [ 0, %for.body3.preheader.i ]
  %nh_flags.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.04.i, i32 0, i32 1
  %55 = ptrtoint ptr %nh_flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %nh_flags.i, align 4
  %and4.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.then6.i, label %if.end7.i

if.then6.i:                                       ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc.i = add i32 %alive.02.i, 1
  br label %for.inc.i

if.end7.i:                                        ; preds = %for.body3.i
  %57 = ptrtoint ptr %nh.04.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %nh.04.i, align 4
  %cmp8.i = icmp eq ptr %58, null
  br i1 %cmp8.i, label %if.end7.i.for.inc.i_crit_edge, label %lor.lhs.false.i

if.end7.i.for.inc.i_crit_edge:                    ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %if.end7.i
  %flags10.i = getelementptr inbounds %struct.net_device, ptr %58, i32 0, i32 14
  %59 = ptrtoint ptr %flags10.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags10.i, align 8
  %and11.i = and i32 %60, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp ne i32 %and11.i, 0
  %cmp16.not.i = icmp eq ptr %58, %50
  %or.cond.i = select i1 %tobool12.not.i, i1 %cmp16.not.i, i1 false
  br i1 %or.cond.i, label %lor.lhs.false17.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

lor.lhs.false17.i:                                ; preds = %lor.lhs.false.i
  %61 = ptrtoint ptr %dn_ptr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dn_ptr.i, align 4
  %cmp18.i = icmp eq ptr %62, null
  br i1 %cmp18.i, label %lor.lhs.false17.i.for.inc.i_crit_edge, label %if.end20.i

lor.lhs.false17.i.for.inc.i_crit_edge:            ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.end20.i:                                       ; preds = %lor.lhs.false17.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc21.i = add i32 %alive.02.i, 1
  call void @_raw_spin_lock_bh(ptr noundef nonnull @dn_fib_multipath_lock) #12
  %nh_power.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.04.i, i32 0, i32 4
  %63 = ptrtoint ptr %nh_power.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %nh_power.i, align 4
  %64 = ptrtoint ptr %nh_flags.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nh_flags.i, align 4
  %and23.i = and i32 %65, -2
  store i32 %and23.i, ptr %nh_flags.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @dn_fib_multipath_lock) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end20.i, %lor.lhs.false17.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %if.end7.i.for.inc.i_crit_edge, %if.then6.i
  %alive.1.i = phi i32 [ %alive.02.i, %if.end7.i.for.inc.i_crit_edge ], [ %alive.02.i, %lor.lhs.false17.i.for.inc.i_crit_edge ], [ %inc21.i, %if.end20.i ], [ %alive.02.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %inc.i, %if.then6.i ]
  %incdec.ptr.i = getelementptr %struct.dn_fib_nh, ptr %nh.04.i, i32 1
  %inc24.i = add nuw nsw i32 %nhsel.03.i, 1
  %66 = ptrtoint ptr %fib_nhs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %fib_nhs.i, align 4
  %cmp.i = icmp slt i32 %inc24.i, %67
  br i1 %cmp.i, label %for.inc.i.for.body3.i_crit_edge, label %for.end.i

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body3.i

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alive.1.i)
  %cmp25.i = icmp sgt i32 %alive.1.i, 0
  br i1 %cmp25.i, label %if.then26.i, label %for.end.i.if.end29.i_crit_edge

for.end.i.if.end29.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i

if.then26.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %fib_flags.i = getelementptr inbounds %struct.dn_fib_info, ptr %fi.09.i, i32 0, i32 5
  %68 = ptrtoint ptr %fib_flags.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %fib_flags.i, align 4
  %and27.i = and i32 %69, -2
  store i32 %and27.i, ptr %fib_flags.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %for.end.i.if.end29.i_crit_edge, %for.body.i.if.end29.i_crit_edge
  %70 = ptrtoint ptr %fi.09.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %fi.0.i = load ptr, ptr %fi.09.i, align 4
  %tobool1.not.i = icmp eq ptr %fi.0.i, null
  br i1 %tobool1.not.i, label %if.end29.i.dn_fib_sync_up.exit_crit_edge, label %if.end29.i.for.body.i_crit_edge

if.end29.i.for.body.i_crit_edge:                  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.end29.i.dn_fib_sync_up.exit_crit_edge:         ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_sync_up.exit

dn_fib_sync_up.exit:                              ; preds = %if.end29.i.dn_fib_sync_up.exit_crit_edge, %for.cond.preheader.i.dn_fib_sync_up.exit_crit_edge, %dn_fib_add_ifaddr.exit.dn_fib_sync_up.exit_crit_edge
  call void @dn_rt_cache_flush(i32 noundef -1) #12
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call.i = tail call i32 @rtnl_is_locked() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i16 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i16, label %land.rhs.i, label %sw.bb1.if.end29.i17_crit_edge

sw.bb1.if.end29.i17_crit_edge:                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i17

land.rhs.i:                                       ; preds = %sw.bb1
  %.b161.i = load i1, ptr @dn_fib_del_ifaddr.__already_done, align 1
  br i1 %.b161.i, label %land.rhs.i.if.end29.i17_crit_edge, label %if.then.i, !prof !61

land.rhs.i.if.end29.i17_crit_edge:                ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29.i17

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dn_fib_del_ifaddr.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 637, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.2, i32 noundef 637) #12
  br label %if.end29.i17

if.end29.i17:                                     ; preds = %if.then.i, %land.rhs.i.if.end29.i17_crit_edge, %sw.bb1.if.end29.i17_crit_edge
  %71 = tail call i32 @llvm.read_register.i32(metadata !45) #12
  %and.i.i.i.i.i.i = and i32 %71, -16384
  %72 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %74, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !64
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.end29.i17.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end29.i17.rcu_read_lock.exit.i_crit_edge:      ; preds = %if.end29.i17
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end29.i17
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end29.i17.rcu_read_lock.exit.i_crit_edge
  %call38.i = tail call i32 @rcu_read_lock_any_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool39.not.i = icmp eq i32 %call38.i, 0
  br i1 %tobool39.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end47.i_crit_edge

rcu_read_lock.exit.i.do.end47.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call40.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %land.lhs.true.i.do.end47.i_crit_edge, label %land.lhs.true42.i

land.lhs.true.i.do.end47.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47.i

land.lhs.true42.i:                                ; preds = %land.lhs.true.i
  %.b153160.i = load i1, ptr @dn_fib_del_ifaddr.__warned, align 1
  br i1 %.b153160.i, label %land.lhs.true42.i.do.end47.i_crit_edge, label %if.then44.i

land.lhs.true42.i.do.end47.i_crit_edge:           ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end47.i

if.then44.i:                                      ; preds = %land.lhs.true42.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dn_fib_del_ifaddr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 641, ptr noundef nonnull @.str.8) #12
  br label %do.end47.i

do.end47.i:                                       ; preds = %if.then44.i, %land.lhs.true42.i.do.end47.i_crit_edge, %land.lhs.true.i.do.end47.i_crit_edge, %rcu_read_lock.exit.i.do.end47.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn177.i = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not178.i = icmp eq ptr %.pn177.i, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not178.i, label %do.end47.i.for.end125.i_crit_edge, label %for.body.lr.ph.i18

do.end47.i.for.end125.i_crit_edge:                ; preds = %do.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end125.i

for.body.lr.ph.i18:                               ; preds = %do.end47.i
  %ifa_local93.i = getelementptr inbounds %struct.dn_ifaddr, ptr %ptr, i32 0, i32 2
  br label %for.body.i20

for.body.i20:                                     ; preds = %for.inc116.i.for.body.i20_crit_edge, %for.body.lr.ph.i18
  %.pn180.i = phi ptr [ %.pn177.i, %for.body.lr.ph.i18 ], [ %.pn.i, %for.inc116.i.for.body.i20_crit_edge ]
  %found_it.0179.i = phi i32 [ 0, %for.body.lr.ph.i18 ], [ %found_it.1.i, %for.inc116.i.for.body.i20_crit_edge ]
  %dn_ptr.i19 = getelementptr i8, ptr %.pn180.i, i32 508
  %75 = ptrtoint ptr %dn_ptr.i19 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile ptr, ptr %dn_ptr.i19, align 4
  %call58.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.i)
  %tobool59.not.i = icmp eq i32 %call58.i, 0
  br i1 %tobool59.not.i, label %land.lhs.true60.i, label %for.body.i20.do.end68.i_crit_edge

for.body.i20.do.end68.i_crit_edge:                ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68.i

land.lhs.true60.i:                                ; preds = %for.body.i20
  %call61.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %land.lhs.true60.i.do.end68.i_crit_edge, label %land.lhs.true63.i

land.lhs.true60.i.do.end68.i_crit_edge:           ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68.i

land.lhs.true63.i:                                ; preds = %land.lhs.true60.i
  %.b154159.i = load i1, ptr @dn_fib_del_ifaddr.__warned.9, align 1
  br i1 %.b154159.i, label %land.lhs.true63.i.do.end68.i_crit_edge, label %if.then65.i

land.lhs.true63.i.do.end68.i_crit_edge:           ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end68.i

if.then65.i:                                      ; preds = %land.lhs.true63.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dn_fib_del_ifaddr.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 642, ptr noundef nonnull @.str.10) #12
  br label %do.end68.i

do.end68.i:                                       ; preds = %if.then65.i, %land.lhs.true63.i.do.end68.i_crit_edge, %land.lhs.true60.i.do.end68.i_crit_edge, %for.body.i20.do.end68.i_crit_edge
  %cmp70.i = icmp eq ptr %76, null
  br i1 %cmp70.i, label %do.end68.i.for.inc116.i_crit_edge, label %if.end72.i

do.end68.i.for.inc116.i_crit_edge:                ; preds = %do.end68.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc116.i

if.end72.i:                                       ; preds = %do.end68.i
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load volatile ptr, ptr %76, align 4
  %call78.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78.i)
  %tobool79.not.i = icmp eq i32 %call78.i, 0
  br i1 %tobool79.not.i, label %land.lhs.true80.i, label %if.end72.i.do.end88.i_crit_edge

if.end72.i.do.end88.i_crit_edge:                  ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88.i

land.lhs.true80.i:                                ; preds = %if.end72.i
  %call81.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %land.lhs.true80.i.do.end88.i_crit_edge, label %land.lhs.true83.i

land.lhs.true80.i.do.end88.i_crit_edge:           ; preds = %land.lhs.true80.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88.i

land.lhs.true83.i:                                ; preds = %land.lhs.true80.i
  %.b155158.i = load i1, ptr @dn_fib_del_ifaddr.__warned.11, align 1
  br i1 %.b155158.i, label %land.lhs.true83.i.do.end88.i_crit_edge, label %if.then85.i

land.lhs.true83.i.do.end88.i_crit_edge:           ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end88.i

if.then85.i:                                      ; preds = %land.lhs.true83.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dn_fib_del_ifaddr.__warned.11, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 645, ptr noundef nonnull @.str.10) #12
  br label %do.end88.i

do.end88.i:                                       ; preds = %if.then85.i, %land.lhs.true83.i.do.end88.i_crit_edge, %land.lhs.true80.i.do.end88.i_crit_edge, %if.end72.i.do.end88.i_crit_edge
  %cmp91.not174.i = icmp eq ptr %78, null
  br i1 %cmp91.not174.i, label %do.end88.i.for.inc116.i_crit_edge, label %do.end88.i.for.body92.i_crit_edge

do.end88.i.for.body92.i_crit_edge:                ; preds = %do.end88.i
  br label %for.body92.i

do.end88.i.for.inc116.i_crit_edge:                ; preds = %do.end88.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc116.i

for.body92.i:                                     ; preds = %do.end114.i.for.body92.i_crit_edge, %do.end88.i.for.body92.i_crit_edge
  %ifa2.0175.i = phi ptr [ %84, %do.end114.i.for.body92.i_crit_edge ], [ %78, %do.end88.i.for.body92.i_crit_edge ]
  %ifa_local.i21 = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa2.0175.i, i32 0, i32 2
  %79 = ptrtoint ptr %ifa_local.i21 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %ifa_local.i21, align 4
  %81 = ptrtoint ptr %ifa_local93.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %ifa_local93.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %80, i16 %82)
  %cmp95.i = icmp eq i16 %80, %82
  br i1 %cmp95.i, label %for.body92.i.for.inc116.i_crit_edge, label %for.inc.i22

for.body92.i.for.inc116.i_crit_edge:              ; preds = %for.body92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc116.i

for.inc.i22:                                      ; preds = %for.body92.i
  %83 = ptrtoint ptr %ifa2.0175.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load volatile ptr, ptr %ifa2.0175.i, align 4
  %call104.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104.i)
  %tobool105.not.i = icmp eq i32 %call104.i, 0
  br i1 %tobool105.not.i, label %land.lhs.true106.i, label %for.inc.i22.do.end114.i_crit_edge

for.inc.i22.do.end114.i_crit_edge:                ; preds = %for.inc.i22
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end114.i

land.lhs.true106.i:                               ; preds = %for.inc.i22
  %call107.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107.i)
  %tobool108.not.i = icmp eq i32 %call107.i, 0
  br i1 %tobool108.not.i, label %land.lhs.true106.i.do.end114.i_crit_edge, label %land.lhs.true109.i

land.lhs.true106.i.do.end114.i_crit_edge:         ; preds = %land.lhs.true106.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end114.i

land.lhs.true109.i:                               ; preds = %land.lhs.true106.i
  %.b156157.i = load i1, ptr @dn_fib_del_ifaddr.__warned.12, align 1
  br i1 %.b156157.i, label %land.lhs.true109.i.do.end114.i_crit_edge, label %if.then111.i

land.lhs.true109.i.do.end114.i_crit_edge:         ; preds = %land.lhs.true109.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end114.i

if.then111.i:                                     ; preds = %land.lhs.true109.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @dn_fib_del_ifaddr.__warned.12, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 647, ptr noundef nonnull @.str.10) #12
  br label %do.end114.i

do.end114.i:                                      ; preds = %if.then111.i, %land.lhs.true109.i.do.end114.i_crit_edge, %land.lhs.true106.i.do.end114.i_crit_edge, %for.inc.i22.do.end114.i_crit_edge
  %cmp91.not.i = icmp eq ptr %84, null
  br i1 %cmp91.not.i, label %do.end114.i.for.inc116.i_crit_edge, label %do.end114.i.for.body92.i_crit_edge

do.end114.i.for.body92.i_crit_edge:               ; preds = %do.end114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body92.i

do.end114.i.for.inc116.i_crit_edge:               ; preds = %do.end114.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc116.i

for.inc116.i:                                     ; preds = %do.end114.i.for.inc116.i_crit_edge, %for.body92.i.for.inc116.i_crit_edge, %do.end88.i.for.inc116.i_crit_edge, %do.end68.i.for.inc116.i_crit_edge
  %found_it.1.i = phi i32 [ %found_it.0179.i, %do.end68.i.for.inc116.i_crit_edge ], [ %found_it.0179.i, %do.end88.i.for.inc116.i_crit_edge ], [ 1, %for.body92.i.for.inc116.i_crit_edge ], [ %found_it.0179.i, %do.end114.i.for.inc116.i_crit_edge ]
  %85 = ptrtoint ptr %.pn180.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pn.i = load volatile ptr, ptr %.pn180.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not.i, label %for.inc116.i.for.end125.i_crit_edge, label %for.inc116.i.for.body.i20_crit_edge

for.inc116.i.for.body.i20_crit_edge:              ; preds = %for.inc116.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i20

for.inc116.i.for.end125.i_crit_edge:              ; preds = %for.inc116.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end125.i

for.end125.i:                                     ; preds = %for.inc116.i.for.end125.i_crit_edge, %do.end47.i.for.end125.i_crit_edge
  %found_it.0.lcssa.i = phi i32 [ 0, %do.end47.i.for.end125.i_crit_edge ], [ %found_it.1.i, %for.inc116.i.for.end125.i_crit_edge ]
  %call.i162.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i162.i, label %for.end125.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i165.i

for.end125.i.rcu_read_unlock.exit.i_crit_edge:    ; preds = %for.end125.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true.i165.i:                             ; preds = %for.end125.i
  %call1.i163.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i163.i)
  %tobool.not.i164.i = icmp eq i32 %call1.i163.i, 0
  br i1 %tobool.not.i164.i, label %land.lhs.true.i165.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i167.i

land.lhs.true.i165.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i165.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i167.i:                            ; preds = %land.lhs.true.i165.i
  %.b4.i166.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i166.i, label %land.lhs.true2.i167.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i168.i

land.lhs.true2.i167.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i167.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit.i

if.then.i168.i:                                   ; preds = %land.lhs.true2.i167.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #12
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i168.i, %land.lhs.true2.i167.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i165.i.rcu_read_unlock.exit.i_crit_edge, %for.end125.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !65
  %86 = tail call i32 @llvm.read_register.i32(metadata !45) #12
  %and.i.i.i.i.i169.i = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i169.i to ptr
  %preempt_count.i.i.i.i170.i = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i.i.i170.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i.i.i170.i, align 4
  %sub.i.i.i.i = add i32 %89, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i170.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found_it.0.lcssa.i)
  %cmp126.i = icmp eq i32 %found_it.0.lcssa.i, 0
  br i1 %cmp126.i, label %if.then128.i, label %rcu_read_unlock.exit.i.dn_fib_del_ifaddr.exit_crit_edge

rcu_read_unlock.exit.i.dn_fib_del_ifaddr.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_del_ifaddr.exit

if.then128.i:                                     ; preds = %rcu_read_unlock.exit.i
  %ifa_local129.i = getelementptr inbounds %struct.dn_ifaddr, ptr %ptr, i32 0, i32 2
  %90 = ptrtoint ptr %ifa_local129.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %ifa_local129.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %req.i.i11) #12
  %92 = getelementptr inbounds %struct.anon.146, ptr %req.i.i11, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %dst_attr.i.i12) #12
  %93 = getelementptr inbounds %struct.anon.147, ptr %dst_attr.i.i12, i32 0, i32 1
  %94 = ptrtoint ptr %dst_attr.i.i12 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %dst_attr.i.i12, align 4
  %95 = ptrtoint ptr %93 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %91, ptr %93, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %prefsrc_attr.i.i13) #12
  %96 = getelementptr inbounds %struct.anon.148, ptr %prefsrc_attr.i.i13, i32 0, i32 1
  %97 = ptrtoint ptr %prefsrc_attr.i.i13 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %prefsrc_attr.i.i13, align 4
  %98 = ptrtoint ptr %96 to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %91, ptr %96, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %oif_attr.i.i14) #12
  %99 = getelementptr inbounds %struct.anon.149, ptr %oif_attr.i.i14, i32 0, i32 1
  %100 = ptrtoint ptr %oif_attr.i.i14 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %oif_attr.i.i14, align 4
  %ifa_dev.i.i23 = getelementptr inbounds %struct.dn_ifaddr, ptr %ptr, i32 0, i32 1
  %101 = ptrtoint ptr %ifa_dev.i.i23 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ifa_dev.i.i23, align 4
  %dev.i.i24 = getelementptr inbounds %struct.dn_dev, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %dev.i.i24 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev.i.i24, align 4
  %ifindex.i.i25 = getelementptr inbounds %struct.net_device, ptr %104, i32 0, i32 17
  %105 = ptrtoint ptr %ifindex.i.i25 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ifindex.i.i25, align 4
  %107 = ptrtoint ptr %99 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %99, align 4
  call void @llvm.lifetime.start.p0(i64 124, ptr nonnull %attrs.i.i15) #12
  %108 = call ptr @memset(ptr %attrs.i.i15, i32 0, i32 124)
  %arrayinit.element.i.i26 = getelementptr inbounds ptr, ptr %attrs.i.i15, i32 1
  %109 = ptrtoint ptr %arrayinit.element.i.i26 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %dst_attr.i.i12, ptr %arrayinit.element.i.i26, align 4
  %arrayinit.element6.i.i27 = getelementptr inbounds ptr, ptr %attrs.i.i15, i32 4
  %110 = ptrtoint ptr %arrayinit.element6.i.i27 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %oif_attr.i.i14, ptr %arrayinit.element6.i.i27, align 4
  %arrayinit.element9.i.i28 = getelementptr inbounds ptr, ptr %attrs.i.i15, i32 7
  %111 = ptrtoint ptr %arrayinit.element9.i.i28 to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %prefsrc_attr.i.i13, ptr %arrayinit.element9.i.i28, align 4
  %112 = call ptr @memset(ptr %92, i32 0, i32 12)
  %call10.i.i29 = call ptr @dn_fib_get_table(i32 noundef 255, i32 noundef 1) #12
  %cmp11.i.i30 = icmp eq ptr %call10.i.i29, null
  br i1 %cmp11.i.i30, label %if.then128.i.fib_magic.exit.i_crit_edge, label %if.end13.i.i34

if.then128.i.fib_magic.exit.i_crit_edge:          ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fib_magic.exit.i

if.end13.i.i34:                                   ; preds = %if.then128.i
  call void @__sanitizer_cov_trace_pc() #14
  %113 = getelementptr inbounds %struct.anon.146, ptr %req.i.i11, i32 0, i32 1, i32 7
  %114 = getelementptr inbounds %struct.anon.146, ptr %req.i.i11, i32 0, i32 1, i32 6
  %115 = getelementptr inbounds %struct.anon.146, ptr %req.i.i11, i32 0, i32 1, i32 5
  %116 = getelementptr inbounds %struct.anon.146, ptr %req.i.i11, i32 0, i32 1, i32 4
  %117 = getelementptr inbounds %struct.anon.146, ptr %req.i.i11, i32 0, i32 1, i32 1
  %118 = getelementptr inbounds %struct.nlmsghdr, ptr %req.i.i11, i32 0, i32 4
  %119 = getelementptr inbounds %struct.nlmsghdr, ptr %req.i.i11, i32 0, i32 3
  %120 = getelementptr inbounds %struct.nlmsghdr, ptr %req.i.i11, i32 0, i32 2
  %121 = getelementptr inbounds %struct.nlmsghdr, ptr %req.i.i11, i32 0, i32 1
  %122 = ptrtoint ptr %req.i.i11 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 28, ptr %req.i.i11, align 4
  %123 = ptrtoint ptr %121 to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 25, ptr %121, align 4
  %124 = ptrtoint ptr %120 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 3073, ptr %120, align 2
  %125 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %118, align 4
  %126 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %119, align 4
  %127 = ptrtoint ptr %117 to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 16, ptr %117, align 1
  %n.i.i31 = getelementptr inbounds %struct.dn_fib_table, ptr %call10.i.i29, i32 0, i32 1
  %128 = ptrtoint ptr %n.i.i31 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %n.i.i31, align 4
  %conv20.i.i32 = trunc i32 %129 to i8
  %130 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 %conv20.i.i32, ptr %116, align 4
  %131 = ptrtoint ptr %115 to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 2, ptr %115, align 1
  %132 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 -2, ptr %114, align 2
  %133 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 2, ptr %113, align 1
  %delete.i.i = getelementptr inbounds %struct.dn_fib_table, ptr %call10.i.i29, i32 0, i32 3
  %134 = ptrtoint ptr %delete.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %delete.i.i, align 4
  %call34.i.i33 = call i32 %135(ptr noundef nonnull %call10.i.i29, ptr noundef %92, ptr noundef nonnull %attrs.i.i15, ptr noundef nonnull %req.i.i11, ptr noundef null) #12
  br label %fib_magic.exit.i

fib_magic.exit.i:                                 ; preds = %if.end13.i.i34, %if.then128.i.fib_magic.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 124, ptr nonnull %attrs.i.i15) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %oif_attr.i.i14) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %prefsrc_attr.i.i13) #12
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %dst_attr.i.i12) #12
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %req.i.i11) #12
  %136 = ptrtoint ptr %ifa_local129.i to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %ifa_local129.i, align 4
  %call131.i = call i32 @dnet_addr_type(i16 noundef zeroext %137) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call131.i)
  %cmp132.not.i = icmp eq i32 %call131.i, 2
  br i1 %cmp132.not.i, label %fib_magic.exit.i.dn_fib_del_ifaddr.exit_crit_edge, label %if.then134.i

fib_magic.exit.i.dn_fib_del_ifaddr.exit_crit_edge: ; preds = %fib_magic.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_del_ifaddr.exit

if.then134.i:                                     ; preds = %fib_magic.exit.i
  %138 = ptrtoint ptr %ifa_local129.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %ifa_local129.i, align 4
  %fi.074.i.i = load ptr, ptr @dn_fib_info_list, align 4
  %tobool1.not75.i.i = icmp eq ptr %fi.074.i.i, null
  br i1 %tobool1.not75.i.i, label %if.then134.i.dn_fib_del_ifaddr.exit_crit_edge, label %for.body.lr.ph.i.i

if.then134.i.dn_fib_del_ifaddr.exit_crit_edge:    ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_del_ifaddr.exit

for.body.lr.ph.i.i:                               ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %139)
  %tobool2.not.i.i = icmp eq i16 %139, 0
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc44.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %fi.077.i.i = phi ptr [ %fi.074.i.i, %for.body.lr.ph.i.i ], [ %fi.0.i.i, %for.inc44.i.i.for.body.i.i_crit_edge ]
  %ret.076.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %ret.2.i.i, %for.inc44.i.i.for.body.i.i_crit_edge ]
  br i1 %tobool2.not.i.i, label %for.body.i.i.for.inc44.i.i_crit_edge, label %land.lhs.true.i171.i

for.body.i.i.for.inc44.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc44.i.i

land.lhs.true.i171.i:                             ; preds = %for.body.i.i
  %fib_prefsrc.i.i = getelementptr inbounds %struct.dn_fib_info, ptr %fi.077.i.i, i32 0, i32 7
  %140 = ptrtoint ptr %fib_prefsrc.i.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %fib_prefsrc.i.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %141, i16 %139)
  %cmp.i.i = icmp eq i16 %141, %139
  br i1 %cmp.i.i, label %for.inc44.sink.split.i.i, label %land.lhs.true.i171.i.for.inc44.i.i_crit_edge

land.lhs.true.i171.i.for.inc44.i.i_crit_edge:     ; preds = %land.lhs.true.i171.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc44.i.i

for.inc44.sink.split.i.i:                         ; preds = %land.lhs.true.i171.i
  call void @__sanitizer_cov_trace_pc() #14
  %fib_flags.i.i = getelementptr inbounds %struct.dn_fib_info, ptr %fi.077.i.i, i32 0, i32 5
  %142 = ptrtoint ptr %fib_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %fib_flags.i.i, align 4
  %or39.i.i = or i32 %143, 1
  store i32 %or39.i.i, ptr %fib_flags.i.i, align 4
  %inc40.i.i = add i32 %ret.076.i.i, 1
  br label %for.inc44.i.i

for.inc44.i.i:                                    ; preds = %for.inc44.sink.split.i.i, %land.lhs.true.i171.i.for.inc44.i.i_crit_edge, %for.body.i.i.for.inc44.i.i_crit_edge
  %ret.2.i.i = phi i32 [ %inc40.i.i, %for.inc44.sink.split.i.i ], [ %ret.076.i.i, %land.lhs.true.i171.i.for.inc44.i.i_crit_edge ], [ %ret.076.i.i, %for.body.i.i.for.inc44.i.i_crit_edge ]
  %144 = ptrtoint ptr %fi.077.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %fi.0.i.i = load ptr, ptr %fi.077.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %fi.0.i.i, null
  br i1 %tobool1.not.i.i, label %dn_fib_sync_down.exit.i, label %for.inc44.i.i.for.body.i.i_crit_edge

for.inc44.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc44.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

dn_fib_sync_down.exit.i:                          ; preds = %for.inc44.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i.i)
  %tobool137.not.i = icmp eq i32 %ret.2.i.i, 0
  br i1 %tobool137.not.i, label %dn_fib_sync_down.exit.i.dn_fib_del_ifaddr.exit_crit_edge, label %if.then138.i

dn_fib_sync_down.exit.i.dn_fib_del_ifaddr.exit_crit_edge: ; preds = %dn_fib_sync_down.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_del_ifaddr.exit

if.then138.i:                                     ; preds = %dn_fib_sync_down.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @dn_fib_flush() #12
  br label %dn_fib_del_ifaddr.exit

dn_fib_del_ifaddr.exit:                           ; preds = %if.then138.i, %dn_fib_sync_down.exit.i.dn_fib_del_ifaddr.exit_crit_edge, %if.then134.i.dn_fib_del_ifaddr.exit_crit_edge, %fib_magic.exit.i.dn_fib_del_ifaddr.exit_crit_edge, %rcu_read_unlock.exit.i.dn_fib_del_ifaddr.exit_crit_edge
  %ifa_dev2 = getelementptr inbounds %struct.dn_ifaddr, ptr %ptr, i32 0, i32 1
  %145 = ptrtoint ptr %ifa_dev2 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %ifa_dev2, align 4
  %tobool.not = icmp eq ptr %146, null
  br i1 %tobool.not, label %dn_fib_del_ifaddr.exit.if.else_crit_edge, label %land.lhs.true

dn_fib_del_ifaddr.exit.if.else_crit_edge:         ; preds = %dn_fib_del_ifaddr.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true:                                    ; preds = %dn_fib_del_ifaddr.exit
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %146, align 4
  %cmp = icmp eq ptr %148, null
  br i1 %cmp, label %if.then, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %dev5 = getelementptr inbounds %struct.dn_dev, ptr %146, i32 0, i32 1
  %149 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev5, align 4
  %fi.074.i.i35 = load ptr, ptr @dn_fib_info_list, align 4
  %tobool1.not75.i.i36 = icmp eq ptr %fi.074.i.i35, null
  br i1 %tobool1.not75.i.i36, label %if.then.dn_fib_disable_addr.exit_crit_edge, label %for.body.lr.ph.i.i37

if.then.dn_fib_disable_addr.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_disable_addr.exit

for.body.lr.ph.i.i37:                             ; preds = %if.then
  %tobool7.not.i.i = icmp eq ptr %150, null
  br label %for.body.i.i40

for.body.i.i40:                                   ; preds = %for.inc44.i.i48.for.body.i.i40_crit_edge, %for.body.lr.ph.i.i37
  %fi.077.i.i38 = phi ptr [ %fi.074.i.i35, %for.body.lr.ph.i.i37 ], [ %fi.0.i.i46, %for.inc44.i.i48.for.body.i.i40_crit_edge ]
  %ret.076.i.i39 = phi i32 [ 0, %for.body.lr.ph.i.i37 ], [ %ret.2.i.i45, %for.inc44.i.i48.for.body.i.i40_crit_edge ]
  br i1 %tobool7.not.i.i, label %for.body.i.i40.for.inc44.i.i48_crit_edge, label %land.lhs.true8.i.i

for.body.i.i40.for.inc44.i.i48_crit_edge:         ; preds = %for.body.i.i40
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc44.i.i48

land.lhs.true8.i.i:                               ; preds = %for.body.i.i40
  %fib_nhs.i.i = getelementptr inbounds %struct.dn_fib_info, ptr %fi.077.i.i38, i32 0, i32 10
  %151 = ptrtoint ptr %fib_nhs.i.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %fib_nhs.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool9.not.i.i = icmp eq i32 %152, 0
  br i1 %tobool9.not.i.i, label %land.lhs.true8.i.i.for.inc44.i.i48_crit_edge, label %if.then10.i.i

land.lhs.true8.i.i.for.inc44.i.i48_crit_edge:     ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc44.i.i48

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp1368.i.i = icmp sgt i32 %152, 0
  br i1 %cmp1368.i.i, label %for.body15.lr.ph.i.i, label %if.then10.i.i.for.end.i.i_crit_edge

if.then10.i.i.for.end.i.i_crit_edge:              ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.body15.lr.ph.i.i:                             ; preds = %if.then10.i.i
  %fib_nh.i.i = getelementptr inbounds %struct.dn_fib_info, ptr %fi.077.i.i38, i32 0, i32 12
  %fib_power.i.i = getelementptr inbounds %struct.dn_fib_info, ptr %fi.077.i.i38, i32 0, i32 11
  br label %for.body15.i.i

for.body15.i.i:                                   ; preds = %for.inc.i.i.for.body15.i.i_crit_edge, %for.body15.lr.ph.i.i
  %nh.071.i.i = phi ptr [ %fib_nh.i.i, %for.body15.lr.ph.i.i ], [ %incdec.ptr.i.i, %for.inc.i.i.for.body15.i.i_crit_edge ]
  %nhsel.070.i.i = phi i32 [ 0, %for.body15.lr.ph.i.i ], [ %inc33.i.i, %for.inc.i.i.for.body15.i.i_crit_edge ]
  %dead.069.i.i = phi i32 [ 0, %for.body15.lr.ph.i.i ], [ %dead.1.i.i, %for.inc.i.i.for.body15.i.i_crit_edge ]
  %nh_flags.i.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.071.i.i, i32 0, i32 1
  %153 = ptrtoint ptr %nh_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %nh_flags.i.i, align 4
  %and.i.i = and i32 %154, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool16.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool16.not.i.i, label %if.else19.i.i, label %if.then17.i.i

if.then17.i.i:                                    ; preds = %for.body15.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %inc18.i.i = add i32 %dead.069.i.i, 1
  br label %for.inc.i.i

if.else19.i.i:                                    ; preds = %for.body15.i.i
  %155 = ptrtoint ptr %nh.071.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %nh.071.i.i, align 4
  %cmp20.i.i = icmp eq ptr %156, %150
  br i1 %cmp20.i.i, label %land.lhs.true22.i.i, label %if.else19.i.i.for.inc.i.i_crit_edge

if.else19.i.i.for.inc.i.i_crit_edge:              ; preds = %if.else19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i.i

land.lhs.true22.i.i:                              ; preds = %if.else19.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_lock_bh(ptr noundef nonnull @dn_fib_multipath_lock) #12
  %157 = ptrtoint ptr %nh_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %nh_flags.i.i, align 4
  %or28.i.i = or i32 %158, 1
  store i32 %or28.i.i, ptr %nh_flags.i.i, align 4
  %nh_power.i.i = getelementptr inbounds %struct.dn_fib_nh, ptr %nh.071.i.i, i32 0, i32 4
  %159 = ptrtoint ptr %nh_power.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %nh_power.i.i, align 4
  %161 = ptrtoint ptr %fib_power.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %fib_power.i.i, align 4
  %sub.i.i = sub i32 %162, %160
  store i32 %sub.i.i, ptr %fib_power.i.i, align 4
  store i32 0, ptr %nh_power.i.i, align 4
  call void @_raw_spin_unlock_bh(ptr noundef nonnull @dn_fib_multipath_lock) #12
  %inc30.i.i = add i32 %dead.069.i.i, 1
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true22.i.i, %if.else19.i.i.for.inc.i.i_crit_edge, %if.then17.i.i
  %dead.1.i.i = phi i32 [ %inc18.i.i, %if.then17.i.i ], [ %inc30.i.i, %land.lhs.true22.i.i ], [ %dead.069.i.i, %if.else19.i.i.for.inc.i.i_crit_edge ]
  %incdec.ptr.i.i = getelementptr %struct.dn_fib_nh, ptr %nh.071.i.i, i32 1
  %inc33.i.i = add nuw nsw i32 %nhsel.070.i.i, 1
  %163 = ptrtoint ptr %fib_nhs.i.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %fib_nhs.i.i, align 4
  %cmp13.i.i = icmp slt i32 %inc33.i.i, %164
  br i1 %cmp13.i.i, label %for.inc.i.i.for.body15.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end.i.i

for.inc.i.i.for.body15.i.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body15.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then10.i.i.for.end.i.i_crit_edge
  %dead.0.lcssa.i.i = phi i32 [ 0, %if.then10.i.i.for.end.i.i_crit_edge ], [ %dead.1.i.i, %for.inc.i.i.for.end.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %152, %if.then10.i.i.for.end.i.i_crit_edge ], [ %164, %for.inc.i.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %dead.0.lcssa.i.i, i32 %.lcssa.i.i)
  %cmp35.i.i = icmp eq i32 %dead.0.lcssa.i.i, %.lcssa.i.i
  br i1 %cmp35.i.i, label %for.inc44.sink.split.i.i44, label %for.end.i.i.for.inc44.i.i48_crit_edge

for.end.i.i.for.inc44.i.i48_crit_edge:            ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc44.i.i48

for.inc44.sink.split.i.i44:                       ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %fib_flags.i.i41 = getelementptr inbounds %struct.dn_fib_info, ptr %fi.077.i.i38, i32 0, i32 5
  %165 = ptrtoint ptr %fib_flags.i.i41 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %fib_flags.i.i41, align 4
  %or39.i.i42 = or i32 %166, 1
  store i32 %or39.i.i42, ptr %fib_flags.i.i41, align 4
  %inc40.i.i43 = add i32 %ret.076.i.i39, 1
  br label %for.inc44.i.i48

for.inc44.i.i48:                                  ; preds = %for.inc44.sink.split.i.i44, %for.end.i.i.for.inc44.i.i48_crit_edge, %land.lhs.true8.i.i.for.inc44.i.i48_crit_edge, %for.body.i.i40.for.inc44.i.i48_crit_edge
  %ret.2.i.i45 = phi i32 [ %ret.076.i.i39, %land.lhs.true8.i.i.for.inc44.i.i48_crit_edge ], [ %ret.076.i.i39, %for.body.i.i40.for.inc44.i.i48_crit_edge ], [ %ret.076.i.i39, %for.end.i.i.for.inc44.i.i48_crit_edge ], [ %inc40.i.i43, %for.inc44.sink.split.i.i44 ]
  %167 = ptrtoint ptr %fi.077.i.i38 to i32
  call void @__asan_load4_noabort(i32 %167)
  %fi.0.i.i46 = load ptr, ptr %fi.077.i.i38, align 4
  %tobool1.not.i.i47 = icmp eq ptr %fi.0.i.i46, null
  br i1 %tobool1.not.i.i47, label %dn_fib_sync_down.exit.i50, label %for.inc44.i.i48.for.body.i.i40_crit_edge

for.inc44.i.i48.for.body.i.i40_crit_edge:         ; preds = %for.inc44.i.i48
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i40

dn_fib_sync_down.exit.i50:                        ; preds = %for.inc44.i.i48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i.i45)
  %tobool.not.i49 = icmp eq i32 %ret.2.i.i45, 0
  br i1 %tobool.not.i49, label %dn_fib_sync_down.exit.i50.dn_fib_disable_addr.exit_crit_edge, label %if.then.i51

dn_fib_sync_down.exit.i50.dn_fib_disable_addr.exit_crit_edge: ; preds = %dn_fib_sync_down.exit.i50
  call void @__sanitizer_cov_trace_pc() #14
  br label %dn_fib_disable_addr.exit

if.then.i51:                                      ; preds = %dn_fib_sync_down.exit.i50
  call void @__sanitizer_cov_trace_pc() #14
  call void @dn_fib_flush() #12
  br label %dn_fib_disable_addr.exit

dn_fib_disable_addr.exit:                         ; preds = %if.then.i51, %dn_fib_sync_down.exit.i50.dn_fib_disable_addr.exit_crit_edge, %if.then.dn_fib_disable_addr.exit_crit_edge
  call void @dn_rt_cache_flush(i32 noundef 0) #12
  %call1.i = call i32 @neigh_ifdown(ptr noundef nonnull @dn_neigh_table, ptr noundef %150) #12
  br label %sw.epilog

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %dn_fib_del_ifaddr.exit.if.else_crit_edge
  call void @dn_rt_cache_flush(i32 noundef -1) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %dn_fib_disable_addr.exit, %dn_fib_sync_up.exit, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_rt_cache_flush(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dn_fib_get_table(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dn_fib_flush() local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_ifdown(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_capable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umax.i8(i8, i8) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { argmemonly nofree nounwind readonly willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !29, !31, !32, !34, !36, !38, !39, !40, !42, !43}
!llvm.named.register.sp = !{!45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/decnet/dn_fib.c", i32 90, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @dn_fib_free_info._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @dn_fib_free_info._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/decnet/dn_fib.c", i32 448, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @dn_fib_semantic_match._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @dn_fib_semantic_match._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @dn_fib_info_list, !12, !"dn_fib_info_list", i1 false, i1 false}
!12 = !{!"../net/decnet/dn_fib.c", i32 62, i32 28}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/decnet/dn_fib.c", i32 63, i32 8}
!15 = !{ptr @dn_fib_info_lock, !14, !"dn_fib_info_lock", i1 false, i1 false}
!16 = !{ptr @dn_fib_props, !17, !"dn_fib_props", i1 false, i1 false}
!17 = !{!"../net/decnet/dn_fib.c", i32 69, i32 3}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/decnet/dn_fib.c", i32 61, i32 8}
!20 = !{ptr @dn_fib_multipath_lock, !19, !"dn_fib_multipath_lock", i1 false, i1 false}
!21 = !{ptr @dn_fib_dnaddr_notifier, !22, !"dn_fib_dnaddr_notifier", i1 false, i1 false}
!22 = !{!"../net/decnet/dn_fib.c", i32 774, i32 30}
!23 = distinct !{null, !24, !"__already_done", i1 false, i1 false}
!24 = !{!"../net/decnet/dn_fib.c", i32 637, i32 2}
!25 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../net/decnet/dn_fib.c", i32 641, i32 2}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/decnet/dn_fib.c", i32 642, i32 11}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../net/decnet/dn_fib.c", i32 645, i32 15}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/decnet/dn_fib.c", i32 647, i32 15}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!42 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__nlmsg_parse.__msg, !44, !"__msg", i1 false, i1 false}
!44 = !{!"../include/net/netlink.h", i32 729, i32 3}
!45 = !{!"sp"}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 769937, i64 769998}
!56 = !{i64 772669}
!57 = !{!"branch_weights", i32 1, i32 2000}
!58 = !{i64 772954}
!59 = !{i64 2148465210}
!60 = !{i64 2148379674, i64 2148379706, i64 2148379735, i64 2148379769, i64 2148379800, i64 2148379823}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 2150444649}
!63 = !{i64 2148377209, i64 2148377241, i64 2148377270, i64 2148377304, i64 2148377335, i64 2148377358}
!64 = !{i64 2149405136}
!65 = !{i64 2149405402}
