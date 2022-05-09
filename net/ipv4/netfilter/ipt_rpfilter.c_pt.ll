; ModuleID = '/llk/IR_all_yes/net/ipv4/netfilter/ipt_rpfilter.c_pt.bc'
source_filename = "../net/ipv4/netfilter/ipt_rpfilter.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fib_result = type { i32, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.xt_action_param = type { %union.anon.142, %union.anon.143, ptr, i32, i16, i8 }
%union.anon.142 = type { ptr }
%union.anon.143 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.125, %union.anon.126, [48 x i8], %union.anon.127, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.129, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.125 = type { ptr }
%union.anon.126 = type { i64 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { i32, ptr }
%union.anon.129 = type { %struct.anon.130 }
%struct.anon.130 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.131, i32, i32, i32, i16, i16, %union.anon.133, i32, %union.anon.134, %union.anon.135, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.131 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.124, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.124 = type { ptr }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.97, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.97 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
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
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@__UNIQUE_ID_file509 = internal constant [50 x i8] c"ipt_rpfilter.file=net/ipv4/netfilter/ipt_rpfilter\00", section ".modinfo", align 1
@__UNIQUE_ID_license510 = internal constant [25 x i8] c"ipt_rpfilter.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author511 = internal constant [52 x i8] c"ipt_rpfilter.author=Florian Westphal <fw@strlen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description512 = internal constant [66 x i8] c"ipt_rpfilter.description=iptables: ipv4 reverse path filter match\00", section ".modinfo", align 1
@rpfilter_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"rpfilter\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @rpfilter_mt, ptr @rpfilter_check, ptr null, ptr null, ptr null, i32 1, i32 0, i32 1, i16 0, i16 2 }, section ".data..read_mostly", align 4
@__initcall__kmod_ipt_rpfilter__513_125_rpfilter_mt_init6 = internal global ptr @rpfilter_mt_init, section ".initcall6.init", align 4
@__exitcall_rpfilter_mt_exit = internal global ptr @rpfilter_mt_exit, section ".exitcall.exit", align 4
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
@rpfilter_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.rpfilter_check = private unnamed_addr constant [15 x i8] c"rpfilter_check\00", align 1
@rpfilter_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.rpfilter_check, ptr @.str.8, i32 91, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016ipt_rpfilter: unknown options\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"net/ipv4/netfilter/ipt_rpfilter.c\00", [62 x i8] zeroinitializer }, align 32
@rpfilter_check._entry_ptr = internal global ptr @rpfilter_check._entry, section ".printk_index", align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mangle\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@rpfilter_check._rs.11 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@rpfilter_check._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.rpfilter_check, ptr @.str.8, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016ipt_rpfilter: only valid in 'raw' or 'mangle' table, not '%s'\0A\00", [63 x i8] zeroinitializer }, align 32
@rpfilter_check._entry_ptr.14 = internal global ptr @rpfilter_check._entry.12, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.19 = private unnamed_addr constant [24 x i8] c"../include/net/ip_fib.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 380, i32 7 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 695, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 723, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 91, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 95, i32 25 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 96, i32 25 }
@___asan_gen_.51 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [37 x i8] c"../net/ipv4/netfilter/ipt_rpfilter.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 97, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author511, ptr @__UNIQUE_ID_description512, ptr @__UNIQUE_ID_file509, ptr @__UNIQUE_ID_license510, ptr @__exitcall_rpfilter_mt_exit, ptr @__initcall__kmod_ipt_rpfilter__513_125_rpfilter_mt_init6, ptr @rpfilter_check._entry, ptr @rpfilter_check._entry.12, ptr @rpfilter_check._entry_ptr, ptr @rpfilter_check._entry_ptr.14, ptr @rpfilter_mt_exit, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @rpfilter_check._rs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @rpfilter_check._rs.11, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpfilter_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpfilter_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpfilter_check._rs.11 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rpfilter_check._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rpfilter_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xt_unregister_match(ptr noundef nonnull @rpfilter_mt_reg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rpfilter_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @rpfilter_mt_reg) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rpfilter_mt(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %res.i = alloca %struct.fib_result, align 4
  %flow = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %flow) #8
  %0 = call ptr @memset(ptr %flow, i32 255, i32 56)
  %1 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  %6 = and i8 %5, 8
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %state.i, align 4
  %in.i = getelementptr inbounds %struct.nf_hook_state, ptr %8, i32 0, i32 2
  %pkt_type.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %9 = ptrtoint ptr %pkt_type.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %bf.load.i = load i16, ptr %pkt_type.i, align 8
  %bf.lshr.mask.i = and i16 %bf.load.i, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24576, i16 %bf.lshr.mask.i)
  %cmp.i = icmp eq i16 %bf.lshr.mask.i, -24576
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %rpfilter_is_loopback.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

rpfilter_is_loopback.exit:                        ; preds = %entry
  %10 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %in.i, align 4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %rpfilter_is_loopback.exit.if.then_crit_edge

rpfilter_is_loopback.exit.if.then_crit_edge:      ; preds = %rpfilter_is_loopback.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %rpfilter_is_loopback.exit.if.then_crit_edge, %entry.if.then_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4 = icmp eq i8 %6, 0
  br label %cleanup

if.end:                                           ; preds = %rpfilter_is_loopback.exit
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %16 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %17 to i32
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %conv.i.i
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %18 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %saddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp.i67 = icmp eq i32 %19, 0
  br i1 %cmp.i67, label %if.then7, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then7:                                         ; preds = %if.end
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %20 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %daddr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp.i68 = icmp eq i32 %21, -1
  %and.i69 = and i32 %21, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i69)
  %cmp.i70 = icmp eq i32 %and.i69, -536870912
  %or.cond = or i1 %cmp.i68, %cmp.i70
  br i1 %or.cond, label %if.then13, label %if.then7.if.end19_crit_edge

if.then7.if.end19_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then13:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool17 = icmp eq i8 %6, 0
  br label %cleanup

if.end19:                                         ; preds = %if.then7.if.end19_crit_edge, %if.end.if.end19_crit_edge
  %22 = call ptr @memset(ptr %flow, i32 0, i32 56)
  %flowic_iif = getelementptr inbounds %struct.flowi_common, ptr %flow, i32 0, i32 1
  %23 = ptrtoint ptr %flowic_iif to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %flowic_iif, align 4
  %24 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %saddr, align 4
  %daddr21 = getelementptr inbounds %struct.flowi4, ptr %flow, i32 0, i32 2
  %26 = ptrtoint ptr %daddr21 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %daddr21, align 4
  %daddr22 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %27 = ptrtoint ptr %daddr22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %daddr22, align 4
  %and.i.i = and i32 %28, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %28)
  %cmp.i7.i = icmp eq i32 %28, -1
  %or.cond.i = or i1 %cmp.i7.i, %cmp.i.i
  %spec.select.i = select i1 %or.cond.i, i32 0, i32 %28
  %saddr24 = getelementptr inbounds %struct.flowi4, ptr %flow, i32 0, i32 1
  %29 = ptrtoint ptr %saddr24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %spec.select.i, ptr %saddr24, align 8
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %3, align 1
  %32 = and i8 %31, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool28.not = icmp eq i8 %32, 0
  br i1 %tobool28.not, label %if.end19.cond.end_crit_edge, label %cond.true

if.end19.cond.end_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %33 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end19.cond.end_crit_edge
  %cond = phi i32 [ %35, %cond.true ], [ 0, %if.end19.cond.end_crit_edge ]
  %flowic_mark = getelementptr inbounds %struct.flowi_common, ptr %flow, i32 0, i32 2
  %36 = ptrtoint ptr %flowic_mark to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %cond, ptr %flowic_mark, align 8
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tos, align 1
  %39 = and i8 %38, 28
  %flowic_tos = getelementptr inbounds %struct.flowi_common, ptr %flow, i32 0, i32 3
  %40 = ptrtoint ptr %flowic_tos to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %flowic_tos, align 4
  %flowic_scope = getelementptr inbounds %struct.flowi_common, ptr %flow, i32 0, i32 4
  %41 = ptrtoint ptr %flowic_scope to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 0, ptr %flowic_scope, align 1
  %42 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %in.i, align 4
  %call36 = tail call i32 @l3mdev_master_ifindex_rcu(ptr noundef %43) #8
  %44 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call36, ptr %flow, align 8
  %45 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %46, i32 0, i32 5
  %47 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %net.i, align 4
  %in.i75 = getelementptr inbounds %struct.nf_hook_state, ptr %46, i32 0, i32 2
  %49 = ptrtoint ptr %in.i75 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %in.i75, align 4
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %res.i) #8
  %53 = getelementptr inbounds %struct.fib_result, ptr %res.i, i32 0, i32 3
  %54 = getelementptr inbounds %struct.fib_result, ptr %res.i, i32 0, i32 5
  %55 = getelementptr inbounds %struct.fib_result, ptr %res.i, i32 0, i32 7
  %fib_has_custom_rules.i.i = getelementptr inbounds %struct.net, ptr %48, i32 0, i32 35, i32 14
  %56 = call ptr @memset(ptr %res.i, i32 255, i32 28)
  %57 = ptrtoint ptr %fib_has_custom_rules.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %fib_has_custom_rules.i.i, align 4, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = call i32 @__fib_lookup(ptr noundef %48, ptr noundef nonnull %flow, ptr noundef nonnull %res.i, i32 noundef 3) #8
  br label %fib_lookup.exit.i

if.end.i.i:                                       ; preds = %cond.end
  %59 = tail call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i.i.i.i.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %62, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !54
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i.i, label %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #8
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge
  %63 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %54, align 4
  %fib_main.i.i = getelementptr inbounds %struct.net, ptr %48, i32 0, i32 35, i32 11
  %64 = ptrtoint ptr %fib_main.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile ptr, ptr %fib_main.i.i, align 8
  %call3.i.i = tail call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call3.i.i, label %rcu_read_lock.exit.i.i.do.end13.i.i_crit_edge, label %lor.lhs.false.i.i

rcu_read_lock.exit.i.i.do.end13.i.i_crit_edge:    ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i.i

lor.lhs.false.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call4.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i.i.do.end13.i.i_crit_edge

lor.lhs.false.i.i.do.end13.i.i_crit_edge:         ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i.i

land.lhs.true.i.i:                                ; preds = %lor.lhs.false.i.i
  %call6.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %land.lhs.true.i.i.do.end13.i.i_crit_edge, label %land.lhs.true8.i.i

land.lhs.true.i.i.do.end13.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i.i

land.lhs.true8.i.i:                               ; preds = %land.lhs.true.i.i
  %.b2.i.i = load i1, ptr @fib_lookup.__warned, align 1
  br i1 %.b2.i.i, label %land.lhs.true8.i.i.do.end13.i.i_crit_edge, label %if.then10.i.i

land.lhs.true8.i.i.do.end13.i.i_crit_edge:        ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end13.i.i

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @fib_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 380, ptr noundef nonnull @.str.1) #8
  br label %do.end13.i.i

do.end13.i.i:                                     ; preds = %if.then10.i.i, %land.lhs.true8.i.i.do.end13.i.i_crit_edge, %land.lhs.true.i.i.do.end13.i.i_crit_edge, %lor.lhs.false.i.i.do.end13.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end13.i.i_crit_edge
  %tobool15.not.i.i = icmp eq ptr %65, null
  br i1 %tobool15.not.i.i, label %do.end13.i.i.if.end21.i.i_crit_edge, label %if.end18.i.i

do.end13.i.i.if.end21.i.i_crit_edge:              ; preds = %do.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i

if.end18.i.i:                                     ; preds = %do.end13.i.i
  %call17.i.i = call i32 @fib_table_lookup(ptr noundef nonnull %65, ptr noundef nonnull %flow, ptr noundef nonnull %res.i, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool19.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end18.i.i.out.thread.i.i_crit_edge, label %if.end18.i.i.if.end21.i.i_crit_edge

if.end18.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21.i.i

if.end18.i.i.out.thread.i.i_crit_edge:            ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread.i.i

if.end21.i.i:                                     ; preds = %if.end18.i.i.if.end21.i.i_crit_edge, %do.end13.i.i.if.end21.i.i_crit_edge
  %err.014.i.i = phi i32 [ %call17.i.i, %if.end18.i.i.if.end21.i.i_crit_edge ], [ -101, %do.end13.i.i.if.end21.i.i_crit_edge ]
  %fib_default.i.i = getelementptr inbounds %struct.net, ptr %48, i32 0, i32 35, i32 12
  %66 = ptrtoint ptr %fib_default.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %fib_default.i.i, align 4
  %call28.i.i = call zeroext i1 @lockdep_rtnl_is_held() #8
  br i1 %call28.i.i, label %if.end21.i.i.do.end40.i.i_crit_edge, label %lor.lhs.false29.i.i

if.end21.i.i.do.end40.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40.i.i

lor.lhs.false29.i.i:                              ; preds = %if.end21.i.i
  %call30.i.i = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %land.lhs.true32.i.i, label %lor.lhs.false29.i.i.do.end40.i.i_crit_edge

lor.lhs.false29.i.i.do.end40.i.i_crit_edge:       ; preds = %lor.lhs.false29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40.i.i

land.lhs.true32.i.i:                              ; preds = %lor.lhs.false29.i.i
  %call33.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %tobool34.not.i.i = icmp eq i32 %call33.i.i, 0
  br i1 %tobool34.not.i.i, label %land.lhs.true32.i.i.do.end40.i.i_crit_edge, label %land.lhs.true35.i.i

land.lhs.true32.i.i.do.end40.i.i_crit_edge:       ; preds = %land.lhs.true32.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40.i.i

land.lhs.true35.i.i:                              ; preds = %land.lhs.true32.i.i
  %.b661.i.i = load i1, ptr @fib_lookup.__warned.2, align 1
  br i1 %.b661.i.i, label %land.lhs.true35.i.i.do.end40.i.i_crit_edge, label %if.then37.i.i

land.lhs.true35.i.i.do.end40.i.i_crit_edge:       ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end40.i.i

if.then37.i.i:                                    ; preds = %land.lhs.true35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @fib_lookup.__warned.2, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 387, ptr noundef nonnull @.str.1) #8
  br label %do.end40.i.i

do.end40.i.i:                                     ; preds = %if.then37.i.i, %land.lhs.true35.i.i.do.end40.i.i_crit_edge, %land.lhs.true32.i.i.do.end40.i.i_crit_edge, %lor.lhs.false29.i.i.do.end40.i.i_crit_edge, %if.end21.i.i.do.end40.i.i_crit_edge
  %tobool42.not.i.i = icmp eq ptr %67, null
  br i1 %tobool42.not.i.i, label %do.end40.i.i.out.i.i_crit_edge, label %if.then43.i.i

do.end40.i.i.out.i.i_crit_edge:                   ; preds = %do.end40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.i.i

if.then43.i.i:                                    ; preds = %do.end40.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call44.i.i = call i32 @fib_table_lookup(ptr noundef nonnull %67, ptr noundef nonnull %flow, ptr noundef nonnull %res.i, i32 noundef 3) #8
  br label %out.i.i

out.i.i:                                          ; preds = %if.then43.i.i, %do.end40.i.i.out.i.i_crit_edge
  %err.1.i.i = phi i32 [ %call44.i.i, %if.then43.i.i ], [ %err.014.i.i, %do.end40.i.i.out.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %err.1.i.i)
  %cmp.i.i76 = icmp eq i32 %err.1.i.i, -11
  %spec.select.i.i = select i1 %cmp.i.i76, i32 -101, i32 %err.1.i.i
  br label %out.thread.i.i

out.thread.i.i:                                   ; preds = %out.i.i, %if.end18.i.i.out.thread.i.i_crit_edge
  %68 = phi i32 [ 0, %if.end18.i.i.out.thread.i.i_crit_edge ], [ %spec.select.i.i, %out.i.i ]
  %call.i3.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i3.i.i, label %out.thread.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i6.i.i

out.thread.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %out.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i6.i.i:                             ; preds = %out.thread.i.i
  %call1.i4.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i.i

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i6.i.i.rcu_read_unlock.exit.i.i_crit_edge, %out.thread.i.i.rcu_read_unlock.exit.i.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !55
  %69 = call i32 @llvm.read_register.i32(metadata !43) #8
  %and.i.i.i.i.i10.i.i = and i32 %69, -16384
  %70 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %72, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  br label %fib_lookup.exit.i

fib_lookup.exit.i:                                ; preds = %rcu_read_unlock.exit.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %call.i.i, %if.then.i.i ], [ %68, %rcu_read_unlock.exit.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %fib_lookup.exit.i.rpfilter_lookup_reverse.exit_crit_edge

fib_lookup.exit.i.rpfilter_lookup_reverse.exit_crit_edge: ; preds = %fib_lookup.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpfilter_lookup_reverse.exit

if.end.i:                                         ; preds = %fib_lookup.exit.i
  %73 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %53, align 2
  %75 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values)
  switch i8 %74, label %if.end.i.rpfilter_lookup_reverse.exit_crit_edge [
    i8 1, label %if.end.i.if.end11.i_crit_edge
    i8 2, label %lor.lhs.false.i
  ]

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

if.end.i.rpfilter_lookup_reverse.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpfilter_lookup_reverse.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %76 = and i8 %52, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool8.not.i = icmp eq i8 %76, 0
  br i1 %tobool8.not.i, label %lor.lhs.false.i.rpfilter_lookup_reverse.exit_crit_edge, label %lor.lhs.false.i.if.end11.i_crit_edge

lor.lhs.false.i.if.end11.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end11.i

lor.lhs.false.i.rpfilter_lookup_reverse.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rpfilter_lookup_reverse.exit

if.end11.i:                                       ; preds = %lor.lhs.false.i.if.end11.i_crit_edge, %if.end.i.if.end11.i_crit_edge
  %77 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %55, align 4
  %call12.i = call zeroext i1 @fib_info_nh_uses_dev(ptr noundef %78, ptr noundef %50) #8
  %79 = and i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool16.i = icmp ne i8 %79, 0
  %80 = or i1 %tobool16.i, %call12.i
  br label %rpfilter_lookup_reverse.exit

rpfilter_lookup_reverse.exit:                     ; preds = %if.end11.i, %lor.lhs.false.i.rpfilter_lookup_reverse.exit_crit_edge, %if.end.i.rpfilter_lookup_reverse.exit_crit_edge, %fib_lookup.exit.i.rpfilter_lookup_reverse.exit_crit_edge
  %retval.0.i = phi i1 [ %80, %if.end11.i ], [ false, %fib_lookup.exit.i.rpfilter_lookup_reverse.exit_crit_edge ], [ false, %if.end.i.rpfilter_lookup_reverse.exit_crit_edge ], [ false, %lor.lhs.false.i.rpfilter_lookup_reverse.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %res.i) #8
  %.lobit = lshr exact i8 %6, 3
  %81 = zext i1 %retval.0.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %.lobit, i8 %81)
  %tobool46 = icmp ne i8 %.lobit, %81
  br label %cleanup

cleanup:                                          ; preds = %rpfilter_lookup_reverse.exit, %if.then13, %if.then
  %retval.0 = phi i1 [ %tobool4, %if.then ], [ %tobool17, %if.then13 ], [ %tobool46, %rpfilter_lookup_reverse.exit ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %flow) #8
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rpfilter_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %tobool.not = icmp ult i8 %3, 16
  br i1 %tobool.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @rpfilter_check._rs, ptr noundef nonnull @__func__.rpfilter_check) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #11
  br label %cleanup

if.end4:                                          ; preds = %entry
  %table = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 1
  %4 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table, align 4
  %call5 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(7) @.str.9) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %if.end4.cleanup_crit_edge, label %land.lhs.true

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end4
  %call8 = tail call i32 @strcmp(ptr noundef %5, ptr noundef nonnull dereferenceable(4) @.str.10) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %land.lhs.true.cleanup_crit_edge, label %if.then11

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then11:                                        ; preds = %land.lhs.true
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @rpfilter_check._rs.11, ptr noundef nonnull @__func__.rpfilter_check) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then11.cleanup_crit_edge, label %do.end17

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end17:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %table, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %7) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end17, %if.then11.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %do.end17 ], [ -22, %if.then11.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @l3mdev_master_ifindex_rcu(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fib_info_nh_uses_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__fib_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fib_table_lookup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !19, !21, !22, !23, !25, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !40, !41, !42}
!llvm.named.register.sp = !{!43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__UNIQUE_ID_file509, !1, !"__UNIQUE_ID_file509", i1 false, i1 false}
!1 = !{!"../net/ipv4/netfilter/ipt_rpfilter.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_license510, !1, !"__UNIQUE_ID_license510", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author511, !4, !"__UNIQUE_ID_author511", i1 false, i1 false}
!4 = !{!"../net/ipv4/netfilter/ipt_rpfilter.c", i32 20, i32 1}
!5 = !{ptr @__UNIQUE_ID_description512, !6, !"__UNIQUE_ID_description512", i1 false, i1 false}
!6 = !{!"../net/ipv4/netfilter/ipt_rpfilter.c", i32 21, i32 1}
!7 = !{ptr @__initcall__kmod_ipt_rpfilter__513_125_rpfilter_mt_init6, !8, !"__initcall__kmod_ipt_rpfilter__513_125_rpfilter_mt_init6", i1 false, i1 false}
!8 = !{!"../net/ipv4/netfilter/ipt_rpfilter.c", i32 125, i32 1}
!9 = !{ptr @__exitcall_rpfilter_mt_exit, !10, !"__exitcall_rpfilter_mt_exit", i1 false, i1 false}
!10 = !{!"../net/ipv4/netfilter/ipt_rpfilter.c", i32 126, i32 1}
!11 = !{ptr @rpfilter_mt_reg, !12, !"rpfilter_mt_reg", i1 false, i1 false}
!12 = !{!"../net/ipv4/netfilter/ipt_rpfilter.c", i32 105, i32 24}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../include/net/ip_fib.h", i32 380, i32 7}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/net/ip_fib.h", i32 387, i32 7}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/ipv4/netfilter/ipt_rpfilter.c", i32 91, i32 3}
!28 = !{ptr @rpfilter_check._rs, !27, !"_rs", i1 false, i1 false}
!29 = !{ptr @__func__.rpfilter_check, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @rpfilter_check._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @rpfilter_check._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/ipv4/netfilter/ipt_rpfilter.c", i32 95, i32 25}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../net/ipv4/netfilter/ipt_rpfilter.c", i32 96, i32 25}
!38 = !{ptr @rpfilter_check._rs.11, !39, !"_rs", i1 false, i1 false}
!39 = !{!"../net/ipv4/netfilter/ipt_rpfilter.c", i32 97, i32 3}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @rpfilter_check._entry.12, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @rpfilter_check._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{!"sp"}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i8 0, i8 2}
!54 = !{i64 2149357629}
!55 = !{i64 2149357895}
