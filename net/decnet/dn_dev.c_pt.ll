; ModuleID = '/llk/IR_all_yes/net/decnet/dn_dev.c_pt.bc'
source_filename = "../net/decnet/dn_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.15 }
%union.anon.15 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.16 }
%union.anon.16 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.42, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.42 = type { %struct.anon.43 }
%struct.anon.43 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.56, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.56 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.54, i32, %struct.spinlock }
%union.anon.54 = type { %struct.anon.55 }
%struct.anon.55 = type { ptr, ptr }
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
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.82 }
%union.anon.82 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.dn_dev_parms = type { i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.17 }
%union.anon.17 = type { %struct.hlist_node }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.51 }
%union.anon.51 = type { i32 }
%struct.dn_dev_sysctl_table = type { ptr, [5 x %struct.ctl_table] }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.ifreq = type { %union.anon, %union.anon.0 }
%union.anon = type { [16 x i8] }
%union.anon.0 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.dn_ifaddr = type { ptr, ptr, i16, i16, i32, i8, [16 x i8], %struct.callback_head }
%struct.dn_dev = type { ptr, ptr, %struct.dn_dev_parms, i8, %struct.timer_list, i32, ptr, [6 x i8], ptr, ptr, i32 }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.sk_buff = type { %union.anon.2, %union.anon.5, %union.anon.113, [48 x i8], %union.anon.114, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.116, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { ptr, ptr, %union.anon.4 }
%union.anon.4 = type { ptr }
%union.anon.5 = type { ptr }
%union.anon.113 = type { i64 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, ptr }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.118, i32, i32, i32, i16, i16, %union.anon.120, i32, %union.anon.121, %union.anon.122, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.118 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i16 }
%struct.sock_common = type { %union.anon.6, %union.anon.8, %union.anon.9, i16, i8, i8, i32, %union.anon.11, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.103, [0 x i32], %union.anon.104, i16, i16, %union.anon.105, %struct.refcount_struct, [0 x i32], %union.anon.106 }
%union.anon.6 = type { i64 }
%union.anon.8 = type { i32 }
%union.anon.9 = type { i32 }
%union.anon.11 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.50 }
%union.anon.50 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.103 = type { i32 }
%union.anon.104 = type { %struct.hlist_node }
%union.anon.105 = type { i32 }
%union.anon.106 = type { i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.129 }
%union.anon.129 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.endnode_hello_message = type <{ i8, [3 x i8], [6 x i8], i8, i16, i8, [8 x i8], [6 x i8], i16, i8, i8, [2 x i8] }>
%struct.dn_neigh = type { %struct.neighbour, i16, i32, i32, i8 }

@decnet_address = dso_local global { i16, [30 x i8] } zeroinitializer, align 32
@init_net = external dso_local global %struct.net, align 128
@dn_dev_ioctl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/decnet/dn_dev.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@dn_dev_ioctl.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dndev_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.15 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@decnet_default_device = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@dn_dev_up.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_hiord = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\AA\00\04\00\00\00", [26 x i8] zeroinitializer }, align 32
@dn_dev_down.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_dev_down.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dnaddr_chain = internal global { %struct.blocking_notifier_head, [60 x i8] } { %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @dnaddr_chain, i64 56), ptr getelementptr (i8, ptr @dnaddr_chain, i64 56) }, ptr @dnaddr_chain, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 4, i8 0, i32 0, i32 0 } }, ptr null }, [60 x i8] zeroinitializer }, align 32
@__param_str_addr = internal constant [12 x i8] c"decnet.addr\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_addr = internal constant %struct.kparam_array { i32 2, i32 4, ptr null, ptr @param_ops_int, ptr @addr }, align 4
@__param_addr = internal constant %struct.kernel_param { ptr @__param_str_addr, ptr null, ptr @param_array_ops, i16 292, i8 -1, i8 0, %union.anon.82 { ptr @__param_arr_addr } }, section "__param", align 4
@__UNIQUE_ID_addrtype507 = internal constant [34 x i8] c"decnet.parmtype=addr:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_addr508 = internal constant [63 x i8] c"decnet.parm=addr:The DECnet address of this machine: area,node\00", section ".modinfo", align 1
@addr = internal global { [2 x i32], [24 x i8] } zeroinitializer, align 32
@dn_dev_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str, i32 1389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013DECnet: Area must be between 0 and 63\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dn_dev_init\00", [20 x i8] zeroinitializer }, align 32
@dn_dev_init._entry_ptr = internal global ptr @dn_dev_init._entry, section ".printk_index", align 4
@dn_dev_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str, i32 1394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013DECnet: Node must be between 0 and 1023\00", [54 x i8] zeroinitializer }, align 32
@dn_dev_init._entry_ptr.8 = internal global ptr @dn_dev_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"decnet_dev\00", [21 x i8] zeroinitializer }, align 32
@dn_dev_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @dn_dev_seq_start, ptr @dn_dev_seq_stop, ptr @dn_dev_seq_next, ptr @dn_dev_seq_show }, [16 x i8] zeroinitializer }, align 32
@dn_dev_list = internal global { [4 x %struct.dn_dev_parms], [32 x i8] } { [4 x %struct.dn_dev_parms] [%struct.dn_dev_parms { i32 1, i32 1, i32 0, i32 0, i32 1, i32 10, i32 0, ptr @.str.42, ptr @dn_eth_up, ptr @dn_eth_down, ptr @dn_send_brd_hello, ptr null }, %struct.dn_dev_parms { i32 778, i32 1, i32 0, i32 0, i32 1, i32 10, i32 0, ptr @.str.43, ptr null, ptr null, ptr @dn_send_brd_hello, ptr null }, %struct.dn_dev_parms { i32 517, i32 2, i32 2, i32 0, i32 1, i32 120, i32 0, ptr @.str.44, ptr null, ptr null, ptr @dn_send_ptp_hello, ptr null }, %struct.dn_dev_parms { i32 772, i32 1, i32 0, i32 0, i32 1, i32 10, i32 0, ptr @.str.45, ptr null, ptr null, ptr @dn_send_brd_hello, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dn_dev_del_ifa.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_dev_del_ifa.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@dn_dev_set_ifa.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_dev_insert_ifa.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dn_dev_insert_ifa.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_dev_insert_ifa.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dndev_lock\00", [21 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@dn_dev_get_first.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@dn_dev_get_first.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@dn_dev_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"(&dn_db->timer)\00", [16 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@dn_neigh_table = external dso_local global %struct.neigh_table, align 4
@dn_dev_timer_func.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_dev_timer_func.__warned.23 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_dev_delete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(dnaddr_chain).rwsem.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(dnaddr_chain).rwsem\00", [43 x i8] zeroinitializer }, align 32
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dn_ifa_policy = internal constant { [11 x %struct.nla_policy], [40 x i8] } { [11 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.51 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.51 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 15, %union.anon.51 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.51 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@dn_nl_newaddr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@dn_nl_deladdr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_dev_by_index.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_nl_dump_ifaddr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@dn_nl_dump_ifaddr.__warned.27 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_nl_dump_ifaddr.__warned.28 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_nl_dump_ifaddr.__warned.29 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@dn_dev_seq_start.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"Name     Flags T1   Timer1 T3   Timer3 BlkSize Pri State DevType    Router Peer\0A\00", [47 x i8] zeroinitializer }, align 32
@dn_dev_seq_show.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%-8s %1s     %04u %04u   %04lu %04lu   %04hu    %03d %02x    %-10s %-7s %-7s\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"B\00", [30 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"U\00", [30 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"M\00", [30 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@dn_dev_sysctl = internal global { %struct.dn_dev_sysctl_table, [40 x i8] } { %struct.dn_dev_sysctl_table { ptr null, [5 x %struct.ctl_table] [%struct.ctl_table { ptr @.str.38, ptr inttoptr (i32 12 to ptr), i32 4, i16 420, ptr null, ptr @dn_forwarding_proc, ptr null, ptr null, ptr null }, %struct.ctl_table { ptr @.str.39, ptr inttoptr (i32 24 to ptr), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_priority, ptr @max_priority }, %struct.ctl_table { ptr @.str.40, ptr inttoptr (i32 16 to ptr), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_t2, ptr @max_t2 }, %struct.ctl_table { ptr @.str.41, ptr inttoptr (i32 20 to ptr), i32 4, i16 420, ptr null, ptr @proc_dointvec_minmax, ptr null, ptr @min_t3, ptr @max_t3 }, %struct.ctl_table zeroinitializer] }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/decnet/conf/%s\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"forwarding\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"priority\00", [23 x i8] zeroinitializer }, align 32
@min_priority = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@max_priority = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 127], [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"t2\00", [29 x i8] zeroinitializer }, align 32
@min_t2 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@max_t2 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 60], [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"t3\00", [29 x i8] zeroinitializer }, align 32
@min_t3 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 1], [28 x i8] zeroinitializer }, align 32
@max_t3 = internal global { [1 x i32], [28 x i8] } { [1 x i32] [i32 8191], [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ethernet\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ipgre\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ddcmp\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"loopback\00", [23 x i8] zeroinitializer }, align 32
@dn_rt_all_end_mcast = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\AB\00\00\04\00\00", [26 x i8] zeroinitializer }, align 32
@dn_rt_all_rt_mcast = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\AB\00\00\03\00\00", [26 x i8] zeroinitializer }, align 32
@dn_eco_version = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\02\00\00", [29 x i8] zeroinitializer }, align 32
@switch.table.dn_dev_seq_show = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.35], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 35093, i64 35094]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 35093, i64 35094]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 772]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 512, i64 772, i64 778]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 512, i64 772, i64 778]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 512, i64 772, i64 778]
@__sancov_gen_cov_switch_values.51 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 512, i64 772, i64 778]
@__sancov_gen_cov_switch_values.52 = internal global [6 x i64] [i64 4, i64 16, i64 1, i64 512, i64 772, i64 778]
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"decnet_address\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 71, i32 8 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 449, i32 15 }
@___asan_gen_.62 = private unnamed_addr constant [11 x i8] c"dndev_lock\00", align 1
@___asan_gen_.65 = private unnamed_addr constant [22 x i8] c"decnet_default_device\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 74, i32 27 }
@___asan_gen_.68 = private unnamed_addr constant [9 x i8] c"dn_hiord\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 63, i32 13 }
@___asan_gen_.71 = private unnamed_addr constant [13 x i8] c"dnaddr_chain\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [5 x i8] c"addr\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1382, i32 12 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1389, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1394, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1409, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [15 x i8] c"dn_dev_seq_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1374, i32 36 }
@___asan_gen_.98 = private unnamed_addr constant [12 x i8] c"dn_dev_list\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 86, i32 28 }
@___asan_gen_.102 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.102, i32 156, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 335, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 991, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 73, i32 8 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 792, i32 10 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 695, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.123, i32 723, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1097, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 75, i32 8 }
@___asan_gen_.137 = private unnamed_addr constant [14 x i8] c"dn_ifa_policy\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 556, i32 32 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 752, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1352, i32 17 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1359, i32 19 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1368, i32 99 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1339, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1341, i32 10 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1343, i32 10 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1346, i32 9 }
@___asan_gen_.164 = private unnamed_addr constant [14 x i8] c"dn_dev_sysctl\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 168, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 225, i32 31 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 172, i32 15 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 179, i32 15 }
@___asan_gen_.176 = private unnamed_addr constant [13 x i8] c"min_priority\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 160, i32 12 }
@___asan_gen_.179 = private unnamed_addr constant [13 x i8] c"max_priority\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 161, i32 12 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 188, i32 15 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"min_t2\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 155, i32 12 }
@___asan_gen_.188 = private unnamed_addr constant [7 x i8] c"max_t2\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 156, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 197, i32 15 }
@___asan_gen_.194 = private unnamed_addr constant [7 x i8] c"min_t3\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 157, i32 12 }
@___asan_gen_.197 = private unnamed_addr constant [7 x i8] c"max_t3\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 158, i32 12 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 93, i32 11 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 104, i32 11 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 135, i32 11 }
@___asan_gen_.209 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 144, i32 11 }
@___asan_gen_.212 = private unnamed_addr constant [20 x i8] c"dn_rt_all_end_mcast\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 61, i32 13 }
@___asan_gen_.215 = private unnamed_addr constant [19 x i8] c"dn_rt_all_rt_mcast\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 62, i32 13 }
@___asan_gen_.218 = private unnamed_addr constant [15 x i8] c"dn_eco_version\00", align 1
@___asan_gen_.219 = private constant [23 x i8] c"../net/decnet/dn_dev.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 64, i32 22 }
@___asan_gen_.221 = private unnamed_addr constant [29 x i8] c"switch.table.dn_dev_seq_show\00", align 1
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_addr508, ptr @__UNIQUE_ID_addrtype507, ptr @__param_addr, ptr @dn_dev_cleanup, ptr @dn_dev_init._entry, ptr @dn_dev_init._entry.6, ptr @dn_dev_init._entry_ptr, ptr @dn_dev_init._entry_ptr.8, ptr @decnet_address, ptr @.str, ptr @.str.1, ptr @dndev_lock, ptr @decnet_default_device, ptr @dn_hiord, ptr @dnaddr_chain, ptr @addr, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @dn_dev_seq_ops, ptr @dn_dev_list, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @dn_dev_create.__key, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @dn_ifa_policy, ptr @.str.26, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @dn_dev_sysctl, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @min_priority, ptr @max_priority, ptr @.str.40, ptr @min_t2, ptr @max_t2, ptr @.str.41, ptr @min_t3, ptr @max_t3, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @dn_rt_all_end_mcast, ptr @dn_rt_all_rt_mcast, ptr @dn_eco_version, ptr @switch.table.dn_dev_seq_show], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decnet_address to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dndev_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @decnet_default_device to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_hiord to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dnaddr_chain to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @addr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_dev_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_dev_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_dev_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_dev_list to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_dev_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_ifa_policy to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_dev_sysctl to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_priority to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_priority to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_t2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_t2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_t3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_t3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_rt_all_end_mcast to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_rt_all_rt_mcast to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dn_eco_version to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.dn_dev_seq_show to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dn_dev_ioctl(i32 noundef %cmd, ptr noundef %arg) local_unnamed_addr #0 align 64 {
entry:
  %buffer = alloca [42 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 42, ptr nonnull %buffer) #16
  %0 = call ptr @memset(ptr %buffer, i32 255, i32 42)
  %ifr_ifru = getelementptr inbounds %struct.ifreq, ptr %buffer, i32 0, i32 1
  tail call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 156) #16
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %1 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %arg, i32 42, i32 -1226833920) #19
  %asmresult.i.i = extractvalue { i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !177

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buffer, i32 noundef 42) #16
  %2 = call i32 @llvm.read_register.i32(metadata !167) #16
  %and.i.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 4
  %4 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !178
  %and.i.i.i.i = and i32 %4, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !179
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !180
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buffer, ptr noundef %arg, i32 noundef 42) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %4) #16, !srcloc !179
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !180
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !177

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 42, %entry.if.then11.i.i_crit_edge ], [ 42, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 42, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buffer, i32 %sub.i.i
  %5 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %arrayidx = getelementptr inbounds [16 x i8], ptr %buffer, i32 0, i32 15
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  call void @dev_load(ptr noundef nonnull @init_net, ptr noundef nonnull %buffer) #16
  %7 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.end.cleanup_crit_edge [
    i32 35093, label %if.end.sw.epilog_crit_edge
    i32 35094, label %sw.bb
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %call3 = call zeroext i1 @capable(i32 noundef 12) #16
  br i1 %call3, label %if.end5, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %sw.bb
  %8 = ptrtoint ptr %ifr_ifru to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ifr_ifru, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12, i16 %9)
  %cmp.not = icmp eq i16 %9, 12
  br i1 %cmp.not, label %if.end5.sw.epilog_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5.sw.epilog_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end5.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  call void @rtnl_lock() #16
  %call11 = call ptr @__dev_get_by_name(ptr noundef nonnull @init_net, ptr noundef nonnull %buffer) #16
  %cmp12 = icmp eq ptr %call11, null
  br i1 %cmp12, label %sw.epilog.done_crit_edge, label %do.body

sw.epilog.done_crit_edge:                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

do.body:                                          ; preds = %sw.epilog
  %call16 = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call16, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call17 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true19

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true19:                                  ; preds = %land.lhs.true
  %.b121 = load i1, ptr @dn_dev_ioctl.__warned, align 1
  br i1 %.b121, label %land.lhs.true19.do.end_crit_edge, label %if.then21

land.lhs.true19.do.end_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_ioctl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 449, ptr noundef nonnull @.str.1) #16
  br label %do.end

do.end:                                           ; preds = %if.then21, %land.lhs.true19.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %call11, i32 0, i32 79
  %10 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dn_ptr, align 4
  %cmp23.not = icmp eq ptr %11, null
  br i1 %cmp23.not, label %do.end.if.end48_crit_edge, label %do.end.for.cond_crit_edge

do.end.for.cond_crit_edge:                        ; preds = %do.end
  br label %for.cond

do.end.if.end48_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end.for.cond_crit_edge
  %ifap.0 = phi ptr [ %13, %for.body.for.cond_crit_edge ], [ %11, %do.end.for.cond_crit_edge ]
  %call27 = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call27, label %for.cond.do.end36_crit_edge, label %land.lhs.true28

for.cond.do.end36_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end36

land.lhs.true28:                                  ; preds = %for.cond
  %call29 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true28.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true28.do.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %.b119120 = load i1, ptr @dn_dev_ioctl.__warned.2, align 1
  br i1 %.b119120, label %land.lhs.true31.do.end36_crit_edge, label %if.then33

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end36

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_ioctl.__warned.2, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 451, ptr noundef nonnull @.str.1) #16
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %land.lhs.true31.do.end36_crit_edge, %land.lhs.true28.do.end36_crit_edge, %for.cond.do.end36_crit_edge
  %12 = ptrtoint ptr %ifap.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ifap.0, align 4
  %cmp38.not = icmp eq ptr %13, null
  br i1 %cmp38.not, label %do.end36.if.end48_crit_edge, label %for.body

do.end36.if.end48_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end48

for.body:                                         ; preds = %do.end36
  %ifa_label = getelementptr inbounds %struct.dn_ifaddr, ptr %13, i32 0, i32 6
  %call43 = call i32 @strcmp(ptr noundef nonnull %buffer, ptr noundef %ifa_label) #20
  %cmp44 = icmp eq i32 %call43, 0
  br i1 %cmp44, label %if.end55, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

if.end48:                                         ; preds = %do.end36.if.end48_crit_edge, %do.end.if.end48_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 35094, i32 %cmd)
  %cmp52.not = icmp eq i32 %cmd, 35094
  br i1 %cmp52.not, label %if.then64, label %if.end48.done_crit_edge

if.end48.done_crit_edge:                          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

if.end55:                                         ; preds = %for.body
  %14 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %cmd, label %if.end55.done_crit_edge [
    i32 35093, label %sw.bb56
    i32 35094, label %if.else
  ]

if.end55.done_crit_edge:                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

sw.bb56:                                          ; preds = %if.end55
  %ifa_local = getelementptr inbounds %struct.dn_ifaddr, ptr %13, i32 0, i32 2
  %15 = ptrtoint ptr %ifa_local to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %ifa_local, align 4
  %a_addr = getelementptr inbounds %struct.ifreq, ptr %buffer, i32 1, i32 0, i32 0, i32 8
  %17 = ptrtoint ptr %a_addr to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %a_addr, align 2
  call void @__might_fault(ptr noundef nonnull @.str.12, i32 noundef 174) #16
  %call.i.i124 = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i124, label %sw.bb56.done_crit_edge, label %copy_to_user.exit

sw.bb56.done_crit_edge:                           ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

copy_to_user.exit:                                ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i129 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %buffer, i32 noundef 42) #16
  %call.i1.i.i = call i32 @arm_copy_to_user(ptr noundef %arg, ptr noundef nonnull %buffer, i32 noundef 42) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1.i.i)
  %tobool59.not = icmp eq i32 %call.i1.i.i, 0
  %spec.select = select i1 %tobool59.not, i32 0, i32 -14
  br label %done

if.then64:                                        ; preds = %if.end48
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 44) #21
  %cmp66 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp66, label %if.then64.done_crit_edge, label %if.end69

if.then64.done_crit_edge:                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

if.end69:                                         ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #18
  %ifa_label70 = getelementptr inbounds %struct.dn_ifaddr, ptr %call7.i.i.i, i32 0, i32 6
  %19 = call ptr @memcpy(ptr %ifa_label70, ptr %call11, i32 16)
  br label %if.end81

if.else:                                          ; preds = %if.end55
  %ifa_local73 = getelementptr inbounds %struct.dn_ifaddr, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %ifa_local73 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ifa_local73, align 4
  %a_addr.i = getelementptr inbounds %struct.ifreq, ptr %buffer, i32 1, i32 0, i32 0, i32 8
  %22 = ptrtoint ptr %a_addr.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %a_addr.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp77 = icmp eq i16 %21, %23
  br i1 %cmp77, label %if.else.done_crit_edge, label %if.end80

if.else.done_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

if.end80:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @dn_dev_del_ifa(ptr noundef nonnull %11, ptr noundef nonnull %ifap.0, i32 noundef 0)
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %if.end69
  %ifa.1 = phi ptr [ %13, %if.end80 ], [ %call7.i.i.i, %if.end69 ]
  %a_addr.i131 = getelementptr inbounds %struct.ifreq, ptr %buffer, i32 1, i32 0, i32 0, i32 8
  %24 = ptrtoint ptr %a_addr.i131 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %a_addr.i131, align 2
  %ifa_address = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa.1, i32 0, i32 3
  %26 = ptrtoint ptr %ifa_address to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %ifa_address, align 2
  %ifa_local83 = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa.1, i32 0, i32 2
  %27 = ptrtoint ptr %ifa_local83 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %25, ptr %ifa_local83, align 4
  %call84 = call fastcc i32 @dn_dev_set_ifa(ptr noundef nonnull %call11, ptr noundef nonnull %ifa.1)
  br label %done

done:                                             ; preds = %if.end81, %if.else.done_crit_edge, %if.then64.done_crit_edge, %copy_to_user.exit, %sw.bb56.done_crit_edge, %if.end55.done_crit_edge, %if.end48.done_crit_edge, %sw.epilog.done_crit_edge
  %ret.0 = phi i32 [ 0, %if.end55.done_crit_edge ], [ 0, %if.else.done_crit_edge ], [ %call84, %if.end81 ], [ -19, %sw.epilog.done_crit_edge ], [ -99, %if.end48.done_crit_edge ], [ -105, %if.then64.done_crit_edge ], [ -14, %sw.bb56.done_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  call void @rtnl_unlock() #16
  br label %cleanup

cleanup:                                          ; preds = %done, %if.end5.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ %ret.0, %done ], [ -13, %sw.bb.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 42, ptr nonnull %buffer) #16
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_load(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dn_dev_del_ifa(ptr nocapture noundef readonly %dn_db, ptr nocapture noundef %ifap, i32 noundef %destroy) unnamed_addr #0 align 64 {
entry:
  %mac_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b86 = load i1, ptr @dn_dev_del_ifa.__warned, align 1
  br i1 %.b86, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_del_ifa.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 331, ptr noundef nonnull @.str.1) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %ifap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifap, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #16
  %2 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 5
  %dev4 = getelementptr inbounds %struct.dn_dev, ptr %dn_db, i32 0, i32 1
  %7 = call ptr @memset(ptr %mac_addr, i32 255, i32 6)
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  %call5 = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.rhs, label %do.end.if.end41_crit_edge

do.end.if.end41_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

land.rhs:                                         ; preds = %do.end
  %.b8485 = load i1, ptr @dn_dev_del_ifa.__already_done, align 1
  br i1 %.b8485, label %land.rhs.if.end41_crit_edge, label %if.then15, !prof !177

land.rhs.if.end41_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end41

if.then15:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_del_ifa.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 335, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str, i32 noundef 335) #16
  br label %if.end41

if.end41:                                         ; preds = %if.then15, %land.rhs.if.end41_crit_edge, %do.end.if.end41_crit_edge
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %ifap to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %ifap, align 4
  %13 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev4, align 4
  %type = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 32
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %16)
  %cmp = icmp eq i16 %16, 1
  br i1 %cmp, label %if.then51, label %if.end41.if.end62_crit_edge

if.end41.if.end62_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

if.then51:                                        ; preds = %if.end41
  %ifa_local = getelementptr inbounds %struct.dn_ifaddr, ptr %1, i32 0, i32 2
  %17 = ptrtoint ptr %ifa_local to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ifa_local, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr, align 64
  %add.ptr.i = getelementptr i8, ptr %20, i32 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %22)
  %cmp55.not = icmp eq i16 %18, %22
  br i1 %cmp55.not, label %if.then51.if.end62_crit_edge, label %if.then57

if.then51.if.end62_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end62

if.then57:                                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  %23 = tail call i16 @llvm.bswap.i16(i16 %18) #16
  %24 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -86, ptr %mac_addr, align 1
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %2, align 1
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 4, ptr %3, align 1
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 0, ptr %4, align 1
  %conv4.i = trunc i16 %23 to i8
  %28 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv4.i, ptr %5, align 1
  %29 = lshr i16 %23, 8
  %conv7.i = trunc i16 %29 to i8
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv7.i, ptr %6, align 1
  %call60 = call i32 @dev_mc_del(ptr noundef %9, ptr noundef nonnull %mac_addr) #16
  br label %if.end62

if.end62:                                         ; preds = %if.then57, %if.then51.if.end62_crit_edge, %if.end41.if.end62_crit_edge
  call fastcc void @dn_ifaddr_notify(i32 noundef 21, ptr noundef %1)
  %call63 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @dnaddr_chain, i32 noundef 2, ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %destroy)
  %tobool64.not = icmp eq i32 %destroy, 0
  br i1 %tobool64.not, label %if.end62.if.end71_crit_edge, label %if.then65

if.end62.if.end71_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71

if.then65:                                        ; preds = %if.end62
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then65.dn_dev_free_ifa.exit_crit_edge, label %do.end.i

if.then65.dn_dev_free_ifa.exit_crit_edge:         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  br label %dn_dev_free_ifa.exit

do.end.i:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #18
  %rcu.i = getelementptr inbounds %struct.dn_ifaddr, ptr %1, i32 0, i32 7
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 36 to ptr)) #16
  br label %dn_dev_free_ifa.exit

dn_dev_free_ifa.exit:                             ; preds = %do.end.i, %if.then65.dn_dev_free_ifa.exit_crit_edge
  %31 = ptrtoint ptr %dn_db to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dn_db, align 4
  %cmp66 = icmp eq ptr %32, null
  br i1 %cmp66, label %if.then68, label %dn_dev_free_ifa.exit.if.end71_crit_edge

dn_dev_free_ifa.exit.if.end71_crit_edge:          ; preds = %dn_dev_free_ifa.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71

if.then68:                                        ; preds = %dn_dev_free_ifa.exit
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev4, align 4
  call fastcc void @dn_dev_delete(ptr noundef %34)
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %dn_dev_free_ifa.exit.if.end71_crit_edge, %if.end62.if.end71_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dn_dev_set_ifa(ptr noundef %dev, ptr noundef %ifa) unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b28 = load i1, ptr @dn_dev_set_ifa.__warned, align 1
  br i1 %.b28, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_set_ifa.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 390, ptr noundef nonnull @.str.1) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 79
  %0 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dn_ptr, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %if.then4, label %do.end.if.end9_crit_edge

do.end.if.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end9

if.then4:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #16
  %2 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %err, align 4, !annotation !181
  %call5 = call fastcc ptr @dn_dev_create(ptr noundef %dev, ptr noundef nonnull %err)
  %cmp6 = icmp eq ptr %call5, null
  br i1 %cmp6, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %err, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  br label %cleanup17

cleanup:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  br label %if.end9

if.end9:                                          ; preds = %cleanup, %do.end.if.end9_crit_edge
  %dn_db.0 = phi ptr [ %call5, %cleanup ], [ %1, %do.end.if.end9_crit_edge ]
  %ifa_dev = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa, i32 0, i32 1
  %5 = ptrtoint ptr %ifa_dev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dn_db.0, ptr %ifa_dev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %and = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end9.if.end12_crit_edge, label %if.then11

if.end9.if.end12_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #18
  %ifa_scope = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa, i32 0, i32 5
  %8 = ptrtoint ptr %ifa_scope to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -2, ptr %ifa_scope, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end9.if.end12_crit_edge
  %call13 = tail call fastcc i32 @dn_dev_insert_ifa(ptr noundef nonnull %dn_db.0, ptr noundef %ifa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end12.cleanup17_crit_edge, label %if.then15

if.end12.cleanup17_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup17

if.then15:                                        ; preds = %if.end12
  %tobool.not.i = icmp eq ptr %ifa, null
  br i1 %tobool.not.i, label %if.then15.cleanup17_crit_edge, label %do.end.i

if.then15.cleanup17_crit_edge:                    ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup17

do.end.i:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #18
  %rcu.i = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 36 to ptr)) #16
  br label %cleanup17

cleanup17:                                        ; preds = %do.end.i, %if.then15.cleanup17_crit_edge, %if.end12.cleanup17_crit_edge, %cleanup.thread
  %retval.1 = phi i32 [ 0, %if.end12.cleanup17_crit_edge ], [ %4, %cleanup.thread ], [ %call13, %if.then15.cleanup17_crit_edge ], [ %call13, %do.end.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dn_dev_get_default() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dndev_lock) #16
  %0 = load ptr, ptr @decnet_default_device, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

if.then:                                          ; preds = %entry
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 79
  %1 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dn_ptr, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %do.body1.i

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end3

do.body1.i:                                       ; preds = %if.then
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !182
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 118
  %4 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcpu_refcnt.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !167) #16
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add13.i = add i32 %15, 1
  store i32 %add13.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !183
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_hold.exit_crit_edge, !prof !184

do.body1.i.dev_hold.exit_crit_edge:               ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_hold.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %if.then28.i, %do.body1.i.dev_hold.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #16, !srcloc !185
  br label %if.end3

if.end3:                                          ; preds = %dev_hold.exit, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %dev.0 = phi ptr [ %0, %dev_hold.exit ], [ null, %entry.if.end3_crit_edge ], [ null, %if.then.if.end3_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dndev_lock) #16
  ret ptr %dev.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dn_dev_set_default(ptr noundef %dev, i32 noundef %force) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 79
  %0 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dn_ptr, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_raw_spin_lock(ptr noundef nonnull @dndev_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool1.not = icmp eq i32 %force, 0
  %2 = load ptr, ptr @decnet_default_device, align 4
  br i1 %tobool1.not, label %lor.lhs.false, label %if.end3

lor.lhs.false:                                    ; preds = %if.end
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.end3.thread10, label %if.end3.thread

if.end3.thread10:                                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  store ptr %dev, ptr @decnet_default_device, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dndev_lock) #16
  br label %cleanup

if.end3.thread:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dndev_lock) #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  store ptr %dev, ptr @decnet_default_device, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dndev_lock) #16
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end3.cleanup_crit_edge, label %do.body1.i

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body1.i:                                       ; preds = %if.end3
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !182
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 118
  %4 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcpu_refcnt.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !167) #16
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add13.i = add i32 %15, -1
  store i32 %add13.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !183
  %and.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !184

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #16, !srcloc !185
  br label %cleanup

cleanup:                                          ; preds = %do.end30.i, %if.end3.cleanup_crit_edge, %if.end3.thread, %if.end3.thread10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -16, %if.end3.thread ], [ 0, %if.end3.cleanup_crit_edge ], [ 0, %do.end30.i ], [ 0, %if.end3.thread10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dn_dev_bind_default(ptr nocapture noundef writeonly %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @dndev_lock) #16
  %0 = load ptr, ptr @decnet_default_device, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.dn_dev_get_default.exit_crit_edge, label %if.then.i

entry.dn_dev_get_default.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %dn_dev_get_default.exit

if.then.i:                                        ; preds = %entry
  %dn_ptr.i = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 79
  %1 = ptrtoint ptr %dn_ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dn_ptr.i, align 4
  %tobool1.not.i = icmp eq ptr %2, null
  br i1 %tobool1.not.i, label %if.then.i.dn_dev_get_default.exit_crit_edge, label %do.body1.i.i

if.then.i.dn_dev_get_default.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dn_dev_get_default.exit

do.body1.i.i:                                     ; preds = %if.then.i
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !182
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %0, i32 0, i32 118
  %4 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !167) #16
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add13.i.i = add i32 %15, 1
  store i32 %add13.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !183
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_hold.exit.i_crit_edge, !prof !184

do.body1.i.i.dev_hold.exit.i_crit_edge:           ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_hold.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %if.then28.i.i, %do.body1.i.i.dev_hold.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #16, !srcloc !185
  br label %dn_dev_get_default.exit

dn_dev_get_default.exit:                          ; preds = %dev_hold.exit.i, %if.then.i.dn_dev_get_default.exit_crit_edge, %entry.dn_dev_get_default.exit_crit_edge
  %dev.0.i = phi ptr [ %0, %dev_hold.exit.i ], [ null, %entry.dn_dev_get_default.exit_crit_edge ], [ null, %if.then.i.dn_dev_get_default.exit_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dndev_lock) #16
  br label %last_chance

last_chance:                                      ; preds = %last_chance.backedge, %dn_dev_get_default.exit
  %dev.0 = phi ptr [ %dev.0.i, %dn_dev_get_default.exit ], [ %47, %last_chance.backedge ]
  %tobool.not = icmp eq ptr %dev.0, null
  br i1 %tobool.not, label %if.end4thread-pre-split, label %if.then

if.then:                                          ; preds = %last_chance
  %17 = tail call i32 @llvm.read_register.i32(metadata !167) #16
  %and.i.i.i.i.i.i = and i32 %17, -16384
  %18 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %20, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !186
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i.i, label %if.then.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #16
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.rcu_read_lock.exit.i_crit_edge
  %dn_ptr.i10 = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 79
  %21 = ptrtoint ptr %dn_ptr.i10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %dn_ptr.i10, align 4
  %call.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i11 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i11, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b36.i = load i1, ptr @dn_dev_get_first.__warned, align 1
  br i1 %.b36.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i12

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end7.i

if.then.i12:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_get_first.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 792, ptr noundef nonnull @.str.17) #16
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i12, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %cmp.i = icmp eq ptr %22, null
  br i1 %cmp.i, label %do.end7.i.out.i_crit_edge, label %if.end10.i

do.end7.i.out.i_crit_edge:                        ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

if.end10.i:                                       ; preds = %do.end7.i
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %22, align 4
  %call16.i = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true18.i, label %if.end10.i.do.end26.i_crit_edge

if.end10.i.do.end26.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end26.i

land.lhs.true18.i:                                ; preds = %if.end10.i
  %call19.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %land.lhs.true18.i.do.end26.i_crit_edge, label %land.lhs.true21.i

land.lhs.true18.i.do.end26.i_crit_edge:           ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end26.i

land.lhs.true21.i:                                ; preds = %land.lhs.true18.i
  %.b3435.i = load i1, ptr @dn_dev_get_first.__warned.18, align 1
  br i1 %.b3435.i, label %land.lhs.true21.i.do.end26.i_crit_edge, label %if.then23.i

land.lhs.true21.i.do.end26.i_crit_edge:           ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end26.i

if.then23.i:                                      ; preds = %land.lhs.true21.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_get_first.__warned.18, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 796, ptr noundef nonnull @.str.17) #16
  br label %do.end26.i

do.end26.i:                                       ; preds = %if.then23.i, %land.lhs.true21.i.do.end26.i_crit_edge, %land.lhs.true18.i.do.end26.i_crit_edge, %if.end10.i.do.end26.i_crit_edge
  %cmp28.not.i = icmp eq ptr %24, null
  br i1 %cmp28.not.i, label %do.end26.i.out.i_crit_edge, label %if.then29.i

do.end26.i.out.i_crit_edge:                       ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.i

if.then29.i:                                      ; preds = %do.end26.i
  call void @__sanitizer_cov_trace_pc() #18
  %ifa_local.i = getelementptr inbounds %struct.dn_ifaddr, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %ifa_local.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %ifa_local.i, align 4
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %addr, align 2
  br label %out.i

out.i:                                            ; preds = %if.then29.i, %do.end26.i.out.i_crit_edge, %do.end7.i.out.i_crit_edge
  %cmp = phi i1 [ true, %if.then29.i ], [ false, %do.end26.i.out.i_crit_edge ], [ false, %do.end7.i.out.i_crit_edge ]
  %rv.0.i = phi i32 [ 0, %if.then29.i ], [ -19, %do.end26.i.out.i_crit_edge ], [ -19, %do.end7.i.out.i_crit_edge ]
  %call.i37.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i37.i, label %out.i.do.body1.i_crit_edge, label %land.lhs.true.i40.i

out.i.do.body1.i_crit_edge:                       ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i

land.lhs.true.i40.i:                              ; preds = %out.i
  %call1.i38.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i38.i)
  %tobool.not.i39.i = icmp eq i32 %call1.i38.i, 0
  br i1 %tobool.not.i39.i, label %land.lhs.true.i40.i.do.body1.i_crit_edge, label %land.lhs.true2.i42.i

land.lhs.true.i40.i.do.body1.i_crit_edge:         ; preds = %land.lhs.true.i40.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i

land.lhs.true2.i42.i:                             ; preds = %land.lhs.true.i40.i
  %.b4.i41.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i41.i, label %land.lhs.true2.i42.i.do.body1.i_crit_edge, label %if.then.i43.i

land.lhs.true2.i42.i.do.body1.i_crit_edge:        ; preds = %land.lhs.true2.i42.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i

if.then.i43.i:                                    ; preds = %land.lhs.true2.i42.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #16
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.then.i43.i, %land.lhs.true2.i42.i.do.body1.i_crit_edge, %land.lhs.true.i40.i.do.body1.i_crit_edge, %out.i.do.body1.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !187
  %28 = tail call i32 @llvm.read_register.i32(metadata !167) #16
  %and.i.i.i.i.i44.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i.i.i44.i to ptr
  %preempt_count.i.i.i.i45.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %preempt_count.i.i.i.i45.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %preempt_count.i.i.i.i45.i, align 4
  %sub.i.i.i.i = add i32 %31, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i45.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !182
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 118
  %33 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcpu_refcnt.i, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !167) #16
  %and.i.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %41, %35
  %42 = inttoptr i32 %add.i to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add13.i = add i32 %44, -1
  store i32 %add13.i, ptr %42, align 4
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !183
  %and.i.i.i14 = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i14)
  %tobool24.not.i = icmp eq i32 %and.i.i.i14, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !184

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #16, !srcloc !185
  br i1 %cmp, label %dev_put.exit.if.then3_crit_edge, label %lor.lhs.false

dev_put.exit.if.then3_crit_edge:                  ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

lor.lhs.false:                                    ; preds = %dev_put.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27), align 4
  %cmp2 = icmp eq ptr %dev.0, %46
  br i1 %cmp2, label %lor.lhs.false.if.then3_crit_edge, label %lor.lhs.false.if.end4_crit_edge

lor.lhs.false.if.end4_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %dev_put.exit.if.then3_crit_edge
  ret i32 %rv.0.i

if.end4thread-pre-split:                          ; preds = %last_chance
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27) to i32))
  %.pr = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 27), align 4
  br label %if.end4

if.end4:                                          ; preds = %if.end4thread-pre-split, %lor.lhs.false.if.end4_crit_edge
  %47 = phi ptr [ %.pr, %if.end4thread-pre-split ], [ %46, %lor.lhs.false.if.end4_crit_edge ]
  %tobool.not.i15 = icmp eq ptr %47, null
  br i1 %tobool.not.i15, label %if.end4.last_chance.backedge_crit_edge, label %do.body1.i24

if.end4.last_chance.backedge_crit_edge:           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %last_chance.backedge

last_chance.backedge:                             ; preds = %do.end30.i26, %if.end4.last_chance.backedge_crit_edge
  br label %last_chance

do.body1.i24:                                     ; preds = %if.end4
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !182
  %pcpu_refcnt.i16 = getelementptr inbounds %struct.net_device, ptr %47, i32 0, i32 118
  %49 = ptrtoint ptr %pcpu_refcnt.i16 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcpu_refcnt.i16, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = tail call i32 @llvm.read_register.i32(metadata !167) #16
  %and.i.i17 = and i32 %52, -16384
  %53 = inttoptr i32 %and.i.i17 to ptr
  %cpu.i18 = getelementptr inbounds %struct.thread_info, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %cpu.i18 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cpu.i18, align 4
  %arrayidx.i19 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %55
  %56 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx.i19, align 4
  %add.i20 = add i32 %57, %51
  %58 = inttoptr i32 %add.i20 to ptr
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %add13.i21 = add i32 %60, 1
  store i32 %add13.i21, ptr %58, align 4
  %61 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !183
  %and.i.i.i22 = and i32 %61, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i22)
  %tobool24.not.i23 = icmp eq i32 %and.i.i.i22, 0
  br i1 %tobool24.not.i23, label %if.then28.i25, label %do.body1.i24.do.end30.i26_crit_edge, !prof !184

do.body1.i24.do.end30.i26_crit_edge:              ; preds = %do.body1.i24
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i26

if.then28.i25:                                    ; preds = %do.body1.i24
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end30.i26

do.end30.i26:                                     ; preds = %if.then28.i25, %do.body1.i24.do.end30.i26_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %48) #16, !srcloc !185
  br label %last_chance.backedge
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_dev_up(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @decnet_address, align 2
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b78 = load i1, ptr @dn_dev_up.__warned, align 1
  br i1 %.b78, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_up.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1142, ptr noundef nonnull @.str.1) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 79
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %1 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %type, align 16
  %3 = zext i16 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %2, label %do.end.cleanup54_crit_edge [
    i16 1, label %do.end.if.end11_crit_edge
    i16 772, label %do.end.if.end11_crit_edge94
  ]

do.end.if.end11_crit_edge94:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

do.end.cleanup54_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup54

if.end11:                                         ; preds = %do.end.if.end11_crit_edge, %do.end.if.end11_crit_edge94
  %4 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dn_ptr, align 4
  %cmp12 = icmp eq ptr %5, null
  br i1 %cmp12, label %if.then14, label %if.end11.if.end20_crit_edge

if.end11.if.end20_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then14:                                        ; preds = %if.end11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #16
  %call15 = call fastcc ptr @dn_dev_create(ptr noundef %dev, ptr noundef nonnull %err)
  %cmp16 = icmp eq ptr %call15, null
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  br i1 %cmp16, label %if.then14.cleanup54_crit_edge, label %if.then14.if.end20_crit_edge

if.then14.if.end20_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end20

if.then14.cleanup54_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup54

if.end20:                                         ; preds = %if.then14.if.end20_crit_edge, %if.end11.if.end20_crit_edge
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp23 = icmp eq i16 %7, 1
  br i1 %cmp23, label %if.then25, label %if.end20.if.end33_crit_edge

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end33

if.then25:                                        ; preds = %if.end20
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %8 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev_addr, align 64
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %9, ptr noundef nonnull dereferenceable(4) @dn_hiord, i32 4) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp27.not = icmp eq i32 %bcmp, 0
  br i1 %cmp27.not, label %if.end30, label %if.then25.cleanup54_crit_edge

if.then25.cleanup54_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup54

if.end30:                                         ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %add.ptr.i, align 1
  br label %if.end33

if.end33:                                         ; preds = %if.end30, %if.end20.if.end33_crit_edge
  %addr.0 = phi i16 [ %11, %if.end30 ], [ %0, %if.end20.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %addr.0)
  %cmp35 = icmp eq i16 %addr.0, 0
  br i1 %cmp35, label %if.end33.cleanup54_crit_edge, label %if.end38

if.end33.cleanup54_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup54

if.end38:                                         ; preds = %if.end33
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 44) #21
  %cmp40 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp40, label %if.end38.cleanup54_crit_edge, label %if.end43

if.end38.cleanup54_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup54

if.end43:                                         ; preds = %if.end38
  %ifa_address = getelementptr inbounds %struct.dn_ifaddr, ptr %call7.i.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %ifa_address to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %addr.0, ptr %ifa_address, align 2
  %ifa_local = getelementptr inbounds %struct.dn_ifaddr, ptr %call7.i.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %ifa_local to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %addr.0, ptr %ifa_local, align 8
  %ifa_flags = getelementptr inbounds %struct.dn_ifaddr, ptr %call7.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %ifa_flags to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ifa_flags, align 4
  %ifa_scope = getelementptr inbounds %struct.dn_ifaddr, ptr %call7.i.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %ifa_scope to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %ifa_scope, align 8
  %ifa_label = getelementptr inbounds %struct.dn_ifaddr, ptr %call7.i.i.i, i32 0, i32 6
  %call45 = tail call ptr @strcpy(ptr noundef %ifa_label, ptr noundef %dev) #20
  %call46 = tail call fastcc i32 @dn_dev_set_ifa(ptr noundef %dev, ptr noundef nonnull %call7.i.i.i)
  br i1 %cmp23, label %if.then48, label %if.end43.cleanup54_crit_edge

if.end43.cleanup54_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup54

if.then48:                                        ; preds = %if.end43
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.then48.dev_hold.exit_crit_edge, label %do.body1.i

if.then48.dev_hold.exit_crit_edge:                ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.then48
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !182
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %18 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcpu_refcnt.i, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !167) #16
  %and.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %26, %20
  %27 = inttoptr i32 %add.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add13.i = add i32 %29, 1
  store i32 %add13.i, ptr %27, align 4
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !183
  %and.i.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !184

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #16, !srcloc !185
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.then48.dev_hold.exit_crit_edge
  %31 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dn_ptr, align 4
  %tobool.not.i79 = icmp eq ptr %32, null
  br i1 %tobool.not.i79, label %dev_hold.exit.if.then51_crit_edge, label %if.end.i

dev_hold.exit.if.then51_crit_edge:                ; preds = %dev_hold.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then51

if.end.i:                                         ; preds = %dev_hold.exit
  tail call void @_raw_spin_lock(ptr noundef nonnull @dndev_lock) #16
  %33 = load ptr, ptr @decnet_default_device, align 4
  %cmp.i = icmp eq ptr %33, null
  br i1 %cmp.i, label %dn_dev_set_default.exit, label %if.end3.thread.i

if.end3.thread.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dndev_lock) #16
  br label %if.then51

dn_dev_set_default.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  store ptr %dev, ptr @decnet_default_device, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dndev_lock) #16
  br label %cleanup54

if.then51:                                        ; preds = %if.end3.thread.i, %dev_hold.exit.if.then51_crit_edge
  br i1 %tobool.not.i, label %if.then51.cleanup54_crit_edge, label %do.body1.i89

if.then51.cleanup54_crit_edge:                    ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup54

do.body1.i89:                                     ; preds = %if.then51
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !182
  %pcpu_refcnt.i81 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %35 = ptrtoint ptr %pcpu_refcnt.i81 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcpu_refcnt.i81, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !167) #16
  %and.i.i82 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i82 to ptr
  %cpu.i83 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu.i83 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu.i83, align 4
  %arrayidx.i84 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i84, align 4
  %add.i85 = add i32 %43, %37
  %44 = inttoptr i32 %add.i85 to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %add13.i86 = add i32 %46, -1
  store i32 %add13.i86, ptr %44, align 4
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !183
  %and.i.i.i87 = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i87)
  %tobool24.not.i88 = icmp eq i32 %and.i.i.i87, 0
  br i1 %tobool24.not.i88, label %if.then28.i90, label %do.body1.i89.do.end30.i91_crit_edge, !prof !184

do.body1.i89.do.end30.i91_crit_edge:              ; preds = %do.body1.i89
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i91

if.then28.i90:                                    ; preds = %do.body1.i89
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end30.i91

do.end30.i91:                                     ; preds = %if.then28.i90, %do.body1.i89.do.end30.i91_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #16, !srcloc !185
  br label %cleanup54

cleanup54:                                        ; preds = %do.end30.i91, %if.then51.cleanup54_crit_edge, %dn_dev_set_default.exit, %if.end43.cleanup54_crit_edge, %if.end38.cleanup54_crit_edge, %if.end33.cleanup54_crit_edge, %if.then25.cleanup54_crit_edge, %if.then14.cleanup54_crit_edge, %do.end.cleanup54_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dn_dev_create(ptr noundef %dev, ptr nocapture noundef writeonly %err) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %type1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %type1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type1, align 16
  %conv = zext i16 %1 to i32
  %2 = load i32, ptr @dn_dev_list, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %conv)
  %cmp2 = icmp eq i32 %2, %conv
  br i1 %cmp2, label %entry.if.end7_crit_edge, label %for.inc

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

for.inc:                                          ; preds = %entry
  %3 = load i32, ptr getelementptr inbounds ([4 x %struct.dn_dev_parms], ptr @dn_dev_list, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp2.1 = icmp eq i32 %3, %conv
  br i1 %cmp2.1, label %for.inc.if.end7_crit_edge, label %for.inc.1

for.inc.if.end7_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

for.inc.1:                                        ; preds = %for.inc
  %4 = load i32, ptr getelementptr inbounds ([4 x %struct.dn_dev_parms], ptr @dn_dev_list, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %conv)
  %cmp2.2 = icmp eq i32 %4, %conv
  br i1 %cmp2.2, label %for.inc.1.if.end7_crit_edge, label %for.inc.2

for.inc.1.if.end7_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

for.inc.2:                                        ; preds = %for.inc.1
  %5 = load i32, ptr getelementptr inbounds ([4 x %struct.dn_dev_parms], ptr @dn_dev_list, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp2.3 = icmp eq i32 %5, %conv
  br i1 %cmp2.3, label %for.inc.2.if.end7_crit_edge, label %for.inc.3

for.inc.2.if.end7_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #18
  %6 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -19, ptr %err, align 4
  br label %cleanup

if.end7:                                          ; preds = %for.inc.2.if.end7_crit_edge, %for.inc.1.if.end7_crit_edge, %for.inc.if.end7_crit_edge, %entry.if.end7_crit_edge
  %p.0116.lcssa = phi ptr [ @dn_dev_list, %entry.if.end7_crit_edge ], [ getelementptr inbounds ([4 x %struct.dn_dev_parms], ptr @dn_dev_list, i32 0, i32 1), %for.inc.if.end7_crit_edge ], [ getelementptr inbounds ([4 x %struct.dn_dev_parms], ptr @dn_dev_list, i32 0, i32 2), %for.inc.1.if.end7_crit_edge ], [ getelementptr inbounds ([4 x %struct.dn_dev_parms], ptr @dn_dev_list, i32 0, i32 3), %for.inc.2.if.end7_crit_edge ]
  %7 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -105, ptr %err, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 136) #21
  %cmp8 = icmp eq ptr %call7.i.i, null
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %parms = getelementptr inbounds %struct.dn_dev, ptr %call7.i.i, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %parms, ptr %p.0116.lcssa, i32 48)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !188
  %dn_ptr35 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 79
  %10 = ptrtoint ptr %dn_ptr35 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %call7.i.i, ptr %dn_ptr35, align 4
  %dev47 = getelementptr inbounds %struct.dn_dev, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %dev47 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %dev, ptr %dev47, align 4
  %timer = getelementptr inbounds %struct.dn_dev, ptr %call7.i.i, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @dn_dev_timer_func, i32 noundef 0, ptr noundef nonnull @.str.22, ptr noundef nonnull @dn_dev_create.__key) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %uptime = getelementptr inbounds %struct.dn_dev, ptr %call7.i.i, i32 0, i32 10
  %13 = ptrtoint ptr %uptime to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %uptime, align 4
  %call51 = tail call ptr @neigh_parms_alloc(ptr noundef %dev, ptr noundef nonnull @dn_neigh_table) #16
  %neigh_parms = getelementptr inbounds %struct.dn_dev, ptr %call7.i.i, i32 0, i32 6
  %14 = ptrtoint ptr %neigh_parms to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call51, ptr %neigh_parms, align 8
  %tobool.not = icmp eq ptr %call51, null
  br i1 %tobool.not, label %do.body59, label %if.end67

do.body59:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %15 = ptrtoint ptr %dn_ptr35 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr null, ptr %dn_ptr35, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

if.end67:                                         ; preds = %if.end11
  %up = getelementptr inbounds %struct.dn_dev, ptr %call7.i.i, i32 0, i32 2, i32 8
  %16 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %up, align 8
  %tobool69.not = icmp eq ptr %17, null
  br i1 %tobool69.not, label %if.end67.if.end80_crit_edge, label %if.then70

if.end67.if.end80_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80

if.then70:                                        ; preds = %if.end67
  %call73 = tail call i32 %17(ptr noundef %dev) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.then76, label %if.then70.if.end80_crit_edge

if.then70.if.end80_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80

if.then76:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #18
  %18 = ptrtoint ptr %neigh_parms to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %neigh_parms, align 8
  tail call void @neigh_parms_release(ptr noundef nonnull @dn_neigh_table, ptr noundef %19) #16
  %20 = ptrtoint ptr %dn_ptr35 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %dn_ptr35, align 4
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16
  br label %cleanup

if.end80:                                         ; preds = %if.then70.if.end80_crit_edge, %if.end67.if.end80_crit_edge
  tail call fastcc void @dn_dev_sysctl_register(ptr noundef %dev, ptr noundef %parms)
  %21 = ptrtoint ptr %dn_ptr35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %dn_ptr35, align 4
  %t2.i = getelementptr inbounds %struct.dn_dev, ptr %22, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %t2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %t2.i, align 4
  %t3.i = getelementptr inbounds %struct.dn_dev, ptr %22, i32 0, i32 2, i32 5
  %25 = ptrtoint ptr %t3.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %t3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp.i = icmp ugt i32 %24, %26
  br i1 %cmp.i, label %if.then.i, label %if.end80.dn_dev_set_timer.exit_crit_edge

if.end80.dn_dev_set_timer.exit_crit_edge:         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  br label %dn_dev_set_timer.exit

if.then.i:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  %27 = ptrtoint ptr %t2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %t2.i, align 4
  br label %dn_dev_set_timer.exit

dn_dev_set_timer.exit:                            ; preds = %if.then.i, %if.end80.dn_dev_set_timer.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %29 = ptrtoint ptr %t2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %t2.i, align 4
  %mul.i = mul i32 %30, 100
  %add.i = add i32 %mul.i, %28
  %timer.i = getelementptr inbounds %struct.dn_dev, ptr %22, i32 0, i32 4
  %expires.i = getelementptr inbounds %struct.dn_dev, ptr %22, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %timer.i) #16
  %32 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %dn_dev_set_timer.exit, %if.then76, %do.body59, %if.end7.cleanup_crit_edge, %for.inc.3
  %retval.0 = phi ptr [ null, %if.then76 ], [ %call7.i.i, %dn_dev_set_timer.exit ], [ null, %do.body59 ], [ null, %for.inc.3 ], [ null, %if.end7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_dev_down(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b27 = load i1, ptr @dn_dev_down.__warned, align 1
  br i1 %.b27, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_down.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1221, ptr noundef nonnull @.str.1) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 79
  %0 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dn_ptr, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %do.end.while.cond_crit_edge

do.end.while.cond_crit_edge:                      ; preds = %do.end
  br label %while.cond

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

while.cond:                                       ; preds = %dn_dev_free_ifa.exit, %do.end.while.cond_crit_edge
  %call7 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call7, label %while.cond.do.end16_crit_edge, label %land.lhs.true8

while.cond.do.end16_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end16

land.lhs.true8:                                   ; preds = %while.cond
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true8.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true8.do.end16_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %.b2526 = load i1, ptr @dn_dev_down.__warned.3, align 1
  br i1 %.b2526, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_down.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1227, ptr noundef nonnull @.str.1) #16
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true8.do.end16_crit_edge, %while.cond.do.end16_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp18.not = icmp eq ptr %3, null
  br i1 %cmp18.not, label %while.end, label %dn_dev_free_ifa.exit

dn_dev_free_ifa.exit:                             ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @dn_dev_del_ifa(ptr noundef nonnull %1, ptr noundef nonnull %1, i32 noundef 0)
  %rcu.i = getelementptr inbounds %struct.dn_ifaddr, ptr %3, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 36 to ptr)) #16
  br label %while.cond

while.end:                                        ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @dn_dev_delete(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dn_dev_delete(ptr noundef %dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b42 = load i1, ptr @dn_dev_delete.__warned, align 1
  br i1 %.b42, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_delete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1193, ptr noundef nonnull @.str.1) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 79
  %0 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dn_ptr, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %timer = getelementptr inbounds %struct.dn_dev, ptr %1, i32 0, i32 4
  %call6 = tail call i32 @del_timer_sync(ptr noundef %timer) #16
  %sysctl.i = getelementptr inbounds %struct.dn_dev, ptr %1, i32 0, i32 2, i32 11
  %2 = ptrtoint ptr %sysctl.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysctl.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end5.dn_dev_sysctl_unregister.exit_crit_edge, label %if.then.i

if.end5.dn_dev_sysctl_unregister.exit_crit_edge:  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %dn_dev_sysctl_unregister.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %sysctl.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %sysctl.i, align 4
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %3, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %6) #16
  tail call void @kfree(ptr noundef nonnull %3) #16
  br label %dn_dev_sysctl_unregister.exit

dn_dev_sysctl_unregister.exit:                    ; preds = %if.then.i, %if.end5.dn_dev_sysctl_unregister.exit_crit_edge
  tail call void @_raw_spin_lock(ptr noundef nonnull @dndev_lock) #16
  %7 = load ptr, ptr @decnet_default_device, align 4
  %cmp.i = icmp eq ptr %7, %dev
  br i1 %cmp.i, label %if.end.i, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %dn_dev_sysctl_unregister.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dndev_lock) #16
  br label %dn_dev_check_default.exit

if.end.i:                                         ; preds = %dn_dev_sysctl_unregister.exit
  store ptr null, ptr @decnet_default_device, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @dndev_lock) #16
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %if.end.i.dn_dev_check_default.exit_crit_edge, label %do.body1.i.i

if.end.i.dn_dev_check_default.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dn_dev_check_default.exit

do.body1.i.i:                                     ; preds = %if.end.i
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !182
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %9 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !167) #16
  %and.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %add13.i.i = add i32 %20, -1
  store i32 %add13.i.i, ptr %18, align 4
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !183
  %and.i.i.i.i = and i32 %21, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.do.end30.i.i_crit_edge, !prof !184

do.body1.i.i.do.end30.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end30.i.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %do.end30.i.i

do.end30.i.i:                                     ; preds = %if.then28.i.i, %do.body1.i.i.do.end30.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #16, !srcloc !185
  br label %dn_dev_check_default.exit

dn_dev_check_default.exit:                        ; preds = %do.end30.i.i, %if.end.i.dn_dev_check_default.exit_crit_edge, %if.end.thread.i
  %call7 = tail call i32 @neigh_ifdown(ptr noundef nonnull @dn_neigh_table, ptr noundef %dev) #16
  %down = getelementptr inbounds %struct.dn_dev, ptr %1, i32 0, i32 2, i32 9
  %22 = ptrtoint ptr %down to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %down, align 4
  %tobool9.not = icmp eq ptr %23, null
  br i1 %tobool9.not, label %dn_dev_check_default.exit.if.end13_crit_edge, label %if.then10

dn_dev_check_default.exit.if.end13_crit_edge:     ; preds = %dn_dev_check_default.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then10:                                        ; preds = %dn_dev_check_default.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %23(ptr noundef %dev) #16
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %dn_dev_check_default.exit.if.end13_crit_edge
  %24 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %dn_ptr, align 4
  %neigh_parms = getelementptr inbounds %struct.dn_dev, ptr %1, i32 0, i32 6
  %25 = ptrtoint ptr %neigh_parms to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %neigh_parms, align 4
  tail call void @neigh_parms_release(ptr noundef nonnull @dn_neigh_table, ptr noundef %26) #16
  %call15 = tail call i32 @neigh_ifdown(ptr noundef nonnull @dn_neigh_table, ptr noundef %dev) #16
  %router = getelementptr inbounds %struct.dn_dev, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %router, align 4
  %tobool16.not = icmp eq ptr %28, null
  br i1 %tobool16.not, label %if.end13.if.end19_crit_edge, label %if.then17

if.end13.if.end19_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then17:                                        ; preds = %if.end13
  %refcnt.i = getelementptr inbounds %struct.neighbour, ptr %28, i32 0, i32 6
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !189
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #16
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #16, !srcloc !190
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i43, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end19_crit_edge, label %if.then10.i.i.i.i, !prof !177

if.end5.i.i.i.i.if.end19_crit_edge:               ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #16
  br label %if.end19

if.then.i43:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !191
  tail call void @neigh_destroy(ptr noundef nonnull %28) #16
  br label %if.end19

if.end19:                                         ; preds = %if.then.i43, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end19_crit_edge, %if.end13.if.end19_crit_edge
  %peer = getelementptr inbounds %struct.dn_dev, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %peer, align 4
  %tobool20.not = icmp eq ptr %31, null
  br i1 %tobool20.not, label %if.end19.if.end23_crit_edge, label %if.then21

if.end19.if.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then21:                                        ; preds = %if.end19
  %refcnt.i45 = getelementptr inbounds %struct.neighbour, ptr %31, i32 0, i32 6
  %call.i.i.i.i.i.i46 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i45, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !189
  tail call void @llvm.prefetch.p0(ptr %refcnt.i45, i32 1, i32 3, i32 1) #16
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i45, ptr %refcnt.i45, i32 1, ptr elementtype(i32) %refcnt.i45) #16, !srcloc !190
  %asmresult.i.i.i.i.i.i.i47 = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i47)
  %cmp.i.i.i.i48 = icmp eq i32 %asmresult.i.i.i.i.i.i.i47, 1
  br i1 %cmp.i.i.i.i48, label %if.then.i52, label %if.end5.i.i.i.i50

if.end5.i.i.i.i50:                                ; preds = %if.then21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i47)
  %.not.i.i.i.i49 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i47, 0
  br i1 %.not.i.i.i.i49, label %if.end5.i.i.i.i50.if.end23_crit_edge, label %if.then10.i.i.i.i51, !prof !177

if.end5.i.i.i.i50.if.end23_crit_edge:             ; preds = %if.end5.i.i.i.i50
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then10.i.i.i.i51:                              ; preds = %if.end5.i.i.i.i50
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i45, i32 noundef 3) #16
  br label %if.end23

if.then.i52:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !191
  tail call void @neigh_destroy(ptr noundef nonnull %31) #16
  br label %if.end23

if.end23:                                         ; preds = %if.then.i52, %if.then10.i.i.i.i51, %if.end5.i.i.i.i50.if.end23_crit_edge, %if.end19.if.end23_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dn_dev_init_pkt(ptr nocapture noundef %skb) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dn_dev_veri_pkt(ptr nocapture noundef %skb) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @dn_dev_hello(ptr nocapture noundef %skb) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_dev_devices_off() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not8 = icmp eq ptr %.pn7, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not8, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn9 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn7, %entry.for.body_crit_edge ]
  %dev.0 = getelementptr i8, ptr %.pn9, i32 -40
  tail call void @dn_dev_down(ptr noundef %dev.0)
  %0 = ptrtoint ptr %.pn9 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn9, align 4
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @rtnl_unlock() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_dev_devices_on() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn8 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not10 = icmp eq ptr %.pn8, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not10, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn11 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn8, %entry.for.body_crit_edge ]
  %flags = getelementptr i8, ptr %.pn11, i32 64
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %dev.012 = getelementptr i8, ptr %.pn11, i32 -40
  tail call void @dn_dev_up(ptr noundef %dev.012)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %2 = ptrtoint ptr %.pn11 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn11, align 4
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @rtnl_unlock() #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @register_dnaddr_notifier(ptr noundef %nb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @dnaddr_chain, ptr noundef %nb) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unregister_dnaddr_notifier(ptr noundef %nb) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @dnaddr_chain, ptr noundef %nb) #16
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_dev_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %0)
  %1 = icmp ugt i32 %0, 63
  br i1 %1, label %entry.return.sink.split_crit_edge, label %if.end

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds ([2 x i32], ptr @addr, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %2)
  %3 = icmp ugt i32 %2, 1023
  br i1 %3, label %if.end.return.sink.split_crit_edge, label %if.end10

if.end.return.sink.split_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %return.sink.split

if.end10:                                         ; preds = %if.end
  %shl = shl nuw nsw i32 %0, 10
  %or = or i32 %2, %shl
  %conv = trunc i32 %or to i16
  %4 = tail call i16 @llvm.bswap.i16(i16 %conv)
  store i16 %4, ptr @decnet_address, align 2
  tail call void @dn_dev_devices_on()
  %call11 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 12, i32 noundef 20, ptr noundef nonnull @dn_nl_newaddr, ptr noundef null, i32 noundef 0) #16
  %call12 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 12, i32 noundef 21, ptr noundef nonnull @dn_nl_deladdr, ptr noundef null, i32 noundef 0) #16
  %call13 = tail call i32 @rtnl_register_module(ptr noundef null, i32 noundef 12, i32 noundef 22, ptr noundef null, ptr noundef nonnull @dn_nl_dump_ifaddr, i32 noundef 0) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  %call14 = tail call ptr @proc_create_seq_private(ptr noundef nonnull @.str.9, i16 noundef zeroext 292, ptr noundef %5, ptr noundef nonnull @dn_dev_seq_ops, i32 noundef 0, ptr noundef null) #16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end10
  %i.021 = phi i32 [ 0, %if.end10 ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.dn_dev_parms], ptr @dn_dev_list, i32 0, i32 %i.021
  tail call fastcc void @dn_dev_sysctl_register(ptr noundef null, ptr noundef %arrayidx)
  %inc = add nuw nsw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.body.return_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

return.sink.split:                                ; preds = %if.end.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %.str.7.sink = phi ptr [ @.str.4, %entry.return.sink.split_crit_edge ], [ @.str.7, %if.end.return.sink.split_crit_edge ]
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.7.sink) #22
  br label %return

return:                                           ; preds = %return.sink.split, %for.body.return_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_register_module(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_nl_newaddr(ptr noundef %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %tb = alloca [11 x ptr], align 4
  %err = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tb) #16
  %5 = call ptr @memset(ptr %tb, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %err) #16
  %call1 = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 12) #16
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i.not = icmp eq ptr %4, @init_net
  br i1 %cmp.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 24
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse_deprecated.exit

do.body.i.i:                                      ; preds = %if.end4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #16
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then1.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %cleanup

nlmsg_parse_deprecated.exit:                      ; preds = %if.end4
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 24
  %sub1.i.i.i = add i32 %7, -24
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 10, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @dn_ifa_policy, i32 noundef 0, ptr noundef %extack) #16
  %9 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call5.i.i, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %nlmsg_parse_deprecated.exit.cleanup_crit_edge, label %if.end7

nlmsg_parse_deprecated.exit.cleanup_crit_edge:    ; preds = %nlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %nlmsg_parse_deprecated.exit
  %arrayidx = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %cmp8 = icmp eq ptr %11, null
  br i1 %cmp8, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %ifa_index = getelementptr i8, ptr %nlh, i32 20
  %12 = ptrtoint ptr %ifa_index to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ifa_index, align 4
  %call12 = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %13) #16
  %cmp13 = icmp eq ptr %call12, null
  br i1 %cmp13, label %if.end10.cleanup_crit_edge, label %do.body

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %if.end10
  %call16 = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call16, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call17 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true19

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true19:                                  ; preds = %land.lhs.true
  %.b88 = load i1, ptr @dn_nl_newaddr.__warned, align 1
  br i1 %.b88, label %land.lhs.true19.do.end_crit_edge, label %if.then21

land.lhs.true19.do.end_crit_edge:                 ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_nl_newaddr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 639, ptr noundef nonnull @.str.1) #16
  br label %do.end

do.end:                                           ; preds = %if.then21, %land.lhs.true19.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %call12, i32 0, i32 79
  %14 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dn_ptr, align 4
  %cmp23 = icmp eq ptr %15, null
  br i1 %cmp23, label %if.then24, label %do.end.if.end29_crit_edge

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then24:                                        ; preds = %do.end
  %call25 = call fastcc ptr @dn_dev_create(ptr noundef nonnull %call12, ptr noundef nonnull %err)
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %if.then27, label %if.then24.if.end29_crit_edge

if.then24.if.end29_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then27:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %err, align 4
  br label %cleanup

if.end29:                                         ; preds = %if.then24.if.end29_crit_edge, %do.end.if.end29_crit_edge
  %dn_db.0 = phi ptr [ %call25, %if.then24.if.end29_crit_edge ], [ %15, %do.end.if.end29_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 44) #21
  %cmp31 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %arrayidx34 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx34, align 4
  %cmp35 = icmp eq ptr %20, null
  br i1 %cmp35, label %if.then36, label %if.end33.if.end39_crit_edge

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #18
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %arrayidx34, align 4
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i.i, align 2
  %ifa_local = getelementptr inbounds %struct.dn_ifaddr, ptr %call7.i.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %ifa_local to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %ifa_local, align 8
  %29 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx34, align 4
  %add.ptr.i.i89 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i89 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %add.ptr.i.i89, align 2
  %ifa_address = getelementptr inbounds %struct.dn_ifaddr, ptr %call7.i.i.i, i32 0, i32 3
  %33 = ptrtoint ptr %ifa_address to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %ifa_address, align 2
  %arrayidx44 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 8
  %34 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx44, align 4
  %tobool45.not = icmp eq ptr %35, null
  br i1 %tobool45.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i90 = getelementptr i8, ptr %35, i32 4
  %36 = ptrtoint ptr %add.ptr.i.i90 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i.i90, align 4
  br label %cond.end

cond.false:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  %ifa_flags = getelementptr i8, ptr %nlh, i32 18
  %38 = ptrtoint ptr %ifa_flags to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %ifa_flags, align 2
  %conv = zext i8 %39 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %37, %cond.true ], [ %conv, %cond.false ]
  %ifa_flags48 = getelementptr inbounds %struct.dn_ifaddr, ptr %call7.i.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %ifa_flags48 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cond, ptr %ifa_flags48, align 4
  %ifa_scope = getelementptr i8, ptr %nlh, i32 19
  %41 = ptrtoint ptr %ifa_scope to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ifa_scope, align 1
  %ifa_scope49 = getelementptr inbounds %struct.dn_ifaddr, ptr %call7.i.i.i, i32 0, i32 5
  %43 = ptrtoint ptr %ifa_scope49 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %ifa_scope49, align 8
  %ifa_dev = getelementptr inbounds %struct.dn_ifaddr, ptr %call7.i.i.i, i32 0, i32 1
  %44 = ptrtoint ptr %ifa_dev to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %dn_db.0, ptr %ifa_dev, align 4
  %arrayidx50 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 3
  %45 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx50, align 4
  %tobool51.not = icmp eq ptr %46, null
  %ifa_label56 = getelementptr inbounds %struct.dn_ifaddr, ptr %call7.i.i.i, i32 0, i32 6
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  %call55 = call i32 @nla_strscpy(ptr noundef %ifa_label56, ptr noundef nonnull %46, i32 noundef 16) #16
  br label %if.end59

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  %47 = call ptr @memcpy(ptr %ifa_label56, ptr %call12, i32 16)
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then52
  %call60 = call fastcc i32 @dn_dev_insert_ifa(ptr noundef nonnull %dn_db.0, ptr noundef nonnull %call7.i.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end59.cleanup_crit_edge, label %dn_dev_free_ifa.exit

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

dn_dev_free_ifa.exit:                             ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #18
  %rcu.i = getelementptr inbounds %struct.dn_ifaddr, ptr %call7.i.i.i, i32 0, i32 7
  call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 36 to ptr)) #16
  br label %cleanup

cleanup:                                          ; preds = %dn_dev_free_ifa.exit, %if.end59.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then27, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %nlmsg_parse_deprecated.exit.cleanup_crit_edge, %if.then1.i.i, %do.body.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %17, %if.then27 ], [ -1, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call5.i.i, %nlmsg_parse_deprecated.exit.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ -19, %if.end10.cleanup_crit_edge ], [ -105, %if.end29.cleanup_crit_edge ], [ %call60, %dn_dev_free_ifa.exit ], [ 0, %if.end59.cleanup_crit_edge ], [ -22, %if.then1.i.i ], [ -22, %do.body.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %err) #16
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tb) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_nl_deladdr(ptr noundef %skb, ptr noundef %nlh, ptr noundef %extack) #0 align 64 {
entry:
  %tb = alloca [11 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tb) #16
  %5 = call ptr @memset(ptr %tb, i32 255, i32 44)
  %call1 = tail call zeroext i1 @netlink_capable(ptr noundef %skb, i32 noundef 12) #16
  br i1 %call1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %cmp.i.not = icmp eq ptr %4, @init_net
  br i1 %cmp.i.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nlh, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 24
  br i1 %cmp.i.i, label %do.body.i.i, label %nlmsg_parse_deprecated.exit

do.body.i.i:                                      ; preds = %if.end4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #16
  %tobool.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i.i, label %do.body.i.i.cleanup_crit_edge, label %if.then1.i.i

do.body.i.i.cleanup_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then1.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @__nlmsg_parse.__msg, ptr %extack, align 4
  br label %cleanup

nlmsg_parse_deprecated.exit:                      ; preds = %if.end4
  %add.ptr.i.i.i = getelementptr i8, ptr %nlh, i32 24
  %sub1.i.i.i = add i32 %7, -24
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 10, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @dn_ifa_policy, i32 noundef 0, ptr noundef %extack) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %cmp = icmp slt i32 %call5.i.i, 0
  br i1 %cmp, label %nlmsg_parse_deprecated.exit.cleanup_crit_edge, label %if.end7

nlmsg_parse_deprecated.exit.cleanup_crit_edge:    ; preds = %nlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %nlmsg_parse_deprecated.exit
  %ifa_index = getelementptr i8, ptr %nlh, i32 20
  %9 = ptrtoint ptr %ifa_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ifa_index, align 4
  %call.i = call ptr @__dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %10) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end7.cleanup_crit_edge, label %do.body.i

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body.i:                                        ; preds = %if.end7
  %call1.i = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call1.i, label %do.body.i.dn_dev_by_index.exit_crit_edge, label %land.lhs.true.i

do.body.i.dn_dev_by_index.exit_crit_edge:         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dn_dev_by_index.exit

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.dn_dev_by_index.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.dn_dev_by_index.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dn_dev_by_index.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @dn_dev_by_index.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.dn_dev_by_index.exit_crit_edge, label %if.then6.i

land.lhs.true4.i.dn_dev_by_index.exit_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dn_dev_by_index.exit

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_by_index.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 551, ptr noundef nonnull @.str.1) #16
  br label %dn_dev_by_index.exit

dn_dev_by_index.exit:                             ; preds = %if.then6.i, %land.lhs.true4.i.dn_dev_by_index.exit_crit_edge, %land.lhs.true.i.dn_dev_by_index.exit_crit_edge, %do.body.i.dn_dev_by_index.exit_crit_edge
  %dn_ptr.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 79
  %11 = ptrtoint ptr %dn_ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dn_ptr.i, align 4
  %cmp10 = icmp eq ptr %12, null
  br i1 %cmp10, label %dn_dev_by_index.exit.cleanup_crit_edge, label %for.cond.preheader

dn_dev_by_index.exit.cleanup_crit_edge:           ; preds = %dn_dev_by_index.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader:                               ; preds = %dn_dev_by_index.exit
  %arrayidx = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 2
  %arrayidx28 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.preheader
  %ifap.0 = phi ptr [ %12, %for.cond.preheader ], [ %14, %for.cond.backedge ]
  %call13 = call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call13, label %for.cond.do.end_crit_edge, label %land.lhs.true

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %for.cond
  %call14 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true16

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true16:                                  ; preds = %land.lhs.true
  %.b52 = load i1, ptr @dn_nl_deladdr.__warned, align 1
  br i1 %.b52, label %land.lhs.true16.do.end_crit_edge, label %if.then18

land.lhs.true16.do.end_crit_edge:                 ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_nl_deladdr.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 593, ptr noundef nonnull @.str.1) #16
  br label %do.end

do.end:                                           ; preds = %if.then18, %land.lhs.true16.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %for.cond.do.end_crit_edge
  %13 = ptrtoint ptr %ifap.0 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ifap.0, align 4
  %cmp20.not = icmp eq ptr %14, null
  br i1 %cmp20.not, label %do.end.cleanup_crit_edge, label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %do.end
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %tobool21.not = icmp eq ptr %16, null
  br i1 %tobool21.not, label %for.body.if.end27_crit_edge, label %land.lhs.true22

for.body.if.end27_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

land.lhs.true22:                                  ; preds = %for.body
  %ifa_local = getelementptr inbounds %struct.dn_ifaddr, ptr %14, i32 0, i32 2
  %call24 = call i32 @nla_memcmp(ptr noundef nonnull %16, ptr noundef %ifa_local, i32 noundef 2) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true22.if.end27_crit_edge, label %land.lhs.true22.for.cond.backedge_crit_edge

land.lhs.true22.for.cond.backedge_crit_edge:      ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.backedge

land.lhs.true22.if.end27_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.end27:                                         ; preds = %land.lhs.true22.if.end27_crit_edge, %for.body.if.end27_crit_edge
  %17 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx28, align 4
  %tobool29.not = icmp eq ptr %18, null
  br i1 %tobool29.not, label %if.end27.if.end36_crit_edge, label %land.lhs.true30

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

land.lhs.true30:                                  ; preds = %if.end27
  %ifa_label = getelementptr inbounds %struct.dn_ifaddr, ptr %14, i32 0, i32 6
  %call33 = call i32 @nla_strcmp(ptr noundef nonnull %18, ptr noundef %ifa_label) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true30.if.end36_crit_edge, label %land.lhs.true30.for.cond.backedge_crit_edge

land.lhs.true30.for.cond.backedge_crit_edge:      ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.backedge

land.lhs.true30.if.end36_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

for.cond.backedge:                                ; preds = %land.lhs.true30.for.cond.backedge_crit_edge, %land.lhs.true22.for.cond.backedge_crit_edge
  br label %for.cond

if.end36:                                         ; preds = %land.lhs.true30.if.end36_crit_edge, %if.end27.if.end36_crit_edge
  call fastcc void @dn_dev_del_ifa(ptr noundef nonnull %12, ptr noundef nonnull %ifap.0, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end.cleanup_crit_edge, %dn_dev_by_index.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %nlmsg_parse_deprecated.exit.cleanup_crit_edge, %if.then1.i.i, %do.body.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end36 ], [ -1, %entry.cleanup_crit_edge ], [ %call5.i.i, %nlmsg_parse_deprecated.exit.cleanup_crit_edge ], [ -19, %dn_dev_by_index.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.then1.i.i ], [ -22, %do.body.i.i.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ], [ -99, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tb) #16
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_nl_dump_ifaddr(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %cmp.i.not = icmp eq ptr %4, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %arrayidx2 = getelementptr %struct.netlink_callback, ptr %cb, i32 0, i32 13, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %10 = tail call i32 @llvm.read_register.i32(metadata !167) #16
  %and.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %13, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !186
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call3 = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true7

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true7:                                   ; preds = %land.lhs.true
  %.b131 = load i1, ptr @dn_nl_dump_ifaddr.__warned, align 1
  br i1 %.b131, label %land.lhs.true7.do.end_crit_edge, label %if.then9

land.lhs.true7.do.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_nl_dump_ifaddr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 752, ptr noundef nonnull @.str.26) #16
  br label %do.end

do.end:                                           ; preds = %if.then9, %land.lhs.true7.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn150 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not151 = icmp eq ptr %.pn150, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not151, label %do.end.done_crit_edge, label %for.body.lr.ph

do.end.done_crit_edge:                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

for.body.lr.ph:                                   ; preds = %do.end
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %cont.for.body_crit_edge, %for.body.lr.ph
  %.pn157 = phi ptr [ %.pn150, %for.body.lr.ph ], [ %.pn, %cont.for.body_crit_edge ]
  %idx.0154 = phi i32 [ 0, %for.body.lr.ph ], [ %inc87, %cont.for.body_crit_edge ]
  %dn_idx.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %dn_idx.2, %cont.for.body_crit_edge ]
  %skip_naddr.0152 = phi i32 [ %9, %for.body.lr.ph ], [ %skip_naddr.2, %cont.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0154, i32 %7)
  %cmp15 = icmp slt i32 %idx.0154, %7
  br i1 %cmp15, label %for.body.cont_crit_edge, label %if.else

for.body.cont_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cont

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.0154, i32 %7)
  %cmp17 = icmp sgt i32 %idx.0154, %7
  %spec.select = select i1 %cmp17, i32 0, i32 %skip_naddr.0152
  %dn_ptr = getelementptr i8, ptr %.pn157, i32 508
  %14 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %dn_ptr, align 4
  %call26 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %if.else.do.end36_crit_edge

if.else.do.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end36

land.lhs.true28:                                  ; preds = %if.else
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true28.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true28.do.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %.b125130 = load i1, ptr @dn_nl_dump_ifaddr.__warned.27, align 1
  br i1 %.b125130, label %land.lhs.true31.do.end36_crit_edge, label %if.then33

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end36

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_nl_dump_ifaddr.__warned.27, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 761, ptr noundef nonnull @.str.17) #16
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %land.lhs.true31.do.end36_crit_edge, %land.lhs.true28.do.end36_crit_edge, %if.else.do.end36_crit_edge
  %cmp38 = icmp eq ptr %15, null
  br i1 %cmp38, label %do.end36.cont_crit_edge, label %if.end40

do.end36.cont_crit_edge:                          ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %cont

if.end40:                                         ; preds = %do.end36
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %15, align 4
  %call46 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true48, label %if.end40.do.end56_crit_edge

if.end40.do.end56_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end56

land.lhs.true48:                                  ; preds = %if.end40
  %call49 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true48.do.end56_crit_edge, label %land.lhs.true51

land.lhs.true48.do.end56_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end56

land.lhs.true51:                                  ; preds = %land.lhs.true48
  %.b126129 = load i1, ptr @dn_nl_dump_ifaddr.__warned.28, align 1
  br i1 %.b126129, label %land.lhs.true51.do.end56_crit_edge, label %if.then53

land.lhs.true51.do.end56_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end56

if.then53:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_nl_dump_ifaddr.__warned.28, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 764, ptr noundef nonnull @.str.17) #16
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %land.lhs.true51.do.end56_crit_edge, %land.lhs.true48.do.end56_crit_edge, %if.end40.do.end56_crit_edge
  %tobool59.not146 = icmp eq ptr %17, null
  br i1 %tobool59.not146, label %do.end56.cont_crit_edge, label %do.end56.for.body60_crit_edge

do.end56.for.body60_crit_edge:                    ; preds = %do.end56
  br label %for.body60

do.end56.cont_crit_edge:                          ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #18
  br label %cont

for.body60:                                       ; preds = %do.end85.for.body60_crit_edge, %do.end56.for.body60_crit_edge
  %dn_idx.1148 = phi i32 [ %inc, %do.end85.for.body60_crit_edge ], [ 0, %do.end56.for.body60_crit_edge ]
  %ifa.0147 = phi ptr [ %27, %do.end85.for.body60_crit_edge ], [ %17, %do.end56.for.body60_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %dn_idx.1148, i32 %spec.select)
  %cmp61 = icmp slt i32 %dn_idx.1148, %spec.select
  br i1 %cmp61, label %for.body60.for.inc_crit_edge, label %if.end63

for.body60.for.inc_crit_edge:                     ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end63:                                         ; preds = %for.body60
  %18 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %19, i32 0, i32 3, i32 12
  %20 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %portid, align 4
  %22 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nlmsg_seq, align 4
  %call66 = tail call fastcc i32 @dn_nl_fill_ifaddr(ptr noundef %skb, ptr noundef nonnull %ifa.0147, i32 noundef %21, i32 noundef %25, i32 noundef 20, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %cmp67 = icmp slt i32 %call66, 0
  br i1 %cmp67, label %if.end63.done_crit_edge, label %if.end63.for.inc_crit_edge

if.end63.for.inc_crit_edge:                       ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end63.done_crit_edge:                          ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

for.inc:                                          ; preds = %if.end63.for.inc_crit_edge, %for.body60.for.inc_crit_edge
  %26 = ptrtoint ptr %ifa.0147 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %ifa.0147, align 4
  %call75 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %land.lhs.true77, label %for.inc.do.end85_crit_edge

for.inc.do.end85_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end85

land.lhs.true77:                                  ; preds = %for.inc
  %call78 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.lhs.true77.do.end85_crit_edge, label %land.lhs.true80

land.lhs.true77.do.end85_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end85

land.lhs.true80:                                  ; preds = %land.lhs.true77
  %.b127128 = load i1, ptr @dn_nl_dump_ifaddr.__warned.29, align 1
  br i1 %.b127128, label %land.lhs.true80.do.end85_crit_edge, label %if.then82

land.lhs.true80.do.end85_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end85

if.then82:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_nl_dump_ifaddr.__warned.29, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 765, ptr noundef nonnull @.str.17) #16
  br label %do.end85

do.end85:                                         ; preds = %if.then82, %land.lhs.true80.do.end85_crit_edge, %land.lhs.true77.do.end85_crit_edge, %for.inc.do.end85_crit_edge
  %inc = add i32 %dn_idx.1148, 1
  %tobool59.not = icmp eq ptr %27, null
  br i1 %tobool59.not, label %do.end85.cont_crit_edge, label %do.end85.for.body60_crit_edge

do.end85.for.body60_crit_edge:                    ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body60

do.end85.cont_crit_edge:                          ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #18
  br label %cont

cont:                                             ; preds = %do.end85.cont_crit_edge, %do.end56.cont_crit_edge, %do.end36.cont_crit_edge, %for.body.cont_crit_edge
  %skip_naddr.2 = phi i32 [ %skip_naddr.0152, %for.body.cont_crit_edge ], [ %spec.select, %do.end36.cont_crit_edge ], [ %spec.select, %do.end56.cont_crit_edge ], [ %spec.select, %do.end85.cont_crit_edge ]
  %dn_idx.2 = phi i32 [ %dn_idx.0153, %for.body.cont_crit_edge ], [ %dn_idx.0153, %do.end36.cont_crit_edge ], [ 0, %do.end56.cont_crit_edge ], [ %inc, %do.end85.cont_crit_edge ]
  %inc87 = add i32 %idx.0154, 1
  %28 = ptrtoint ptr %.pn157 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load volatile ptr, ptr %.pn157, align 4
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not, label %cont.done_crit_edge, label %cont.for.body_crit_edge

cont.for.body_crit_edge:                          ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cont.done_crit_edge:                              ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #18
  br label %done

done:                                             ; preds = %cont.done_crit_edge, %if.end63.done_crit_edge, %do.end.done_crit_edge
  %idx.0144 = phi i32 [ 0, %do.end.done_crit_edge ], [ %idx.0154, %if.end63.done_crit_edge ], [ %inc87, %cont.done_crit_edge ]
  %dn_idx.3 = phi i32 [ 0, %do.end.done_crit_edge ], [ %dn_idx.1148, %if.end63.done_crit_edge ], [ %dn_idx.2, %cont.done_crit_edge ]
  %call.i132 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i132, label %done.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i135

done.rcu_read_unlock.exit_crit_edge:              ; preds = %done
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i135:                               ; preds = %done
  %call1.i133 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i133)
  %tobool.not.i134 = icmp eq i32 %call1.i133, 0
  br i1 %tobool.not.i134, label %land.lhs.true.i135.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i137

land.lhs.true.i135.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i135
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i137:                              ; preds = %land.lhs.true.i135
  %.b4.i136 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i136, label %land.lhs.true2.i137.rcu_read_unlock.exit_crit_edge, label %if.then.i138

land.lhs.true2.i137.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i137
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i138:                                     ; preds = %land.lhs.true2.i137
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i138, %land.lhs.true2.i137.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i135.rcu_read_unlock.exit_crit_edge, %done.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !187
  %29 = tail call i32 @llvm.read_register.i32(metadata !167) #16
  %and.i.i.i.i.i139 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i139 to ptr
  %preempt_count.i.i.i.i140 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i140, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i140, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %idx.0144, ptr %5, align 4
  %34 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %dn_idx.3, ptr %arrayidx2, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %35 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len, align 4
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %36, %rcu_read_unlock.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_seq_private(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dn_dev_sysctl_register(ptr noundef %dev, ptr noundef %parms) unnamed_addr #0 align 64 {
entry:
  %path = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %path) #16
  %0 = call ptr @memset(ptr %path, i32 255, i32 33)
  %call = tail call ptr @kmemdup(ptr noundef nonnull @dn_dev_sysctl, i32 noundef 184, i32 noundef 3264) #16
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %data = getelementptr %struct.dn_dev_sysctl_table, ptr %call, i32 0, i32 1, i32 0, i32 1
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %3 = ptrtoint ptr %2 to i32
  %add.ptr = getelementptr i8, ptr %parms, i32 %3
  store ptr %add.ptr, ptr %data, align 4
  %data.1 = getelementptr %struct.dn_dev_sysctl_table, ptr %call, i32 0, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %data.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.1, align 4
  %6 = ptrtoint ptr %5 to i32
  %add.ptr.1 = getelementptr i8, ptr %parms, i32 %6
  store ptr %add.ptr.1, ptr %data.1, align 4
  %data.2 = getelementptr %struct.dn_dev_sysctl_table, ptr %call, i32 0, i32 1, i32 2, i32 1
  %7 = ptrtoint ptr %data.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.2, align 4
  %9 = ptrtoint ptr %8 to i32
  %add.ptr.2 = getelementptr i8, ptr %parms, i32 %9
  store ptr %add.ptr.2, ptr %data.2, align 4
  %data.3 = getelementptr %struct.dn_dev_sysctl_table, ptr %call, i32 0, i32 1, i32 3, i32 1
  %10 = ptrtoint ptr %data.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.3, align 4
  %12 = ptrtoint ptr %11 to i32
  %add.ptr.3 = getelementptr i8, ptr %parms, i32 %12
  store ptr %add.ptr.3, ptr %data.3, align 4
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %cond.false, label %for.body.preheader.cond.end_crit_edge

for.body.preheader.cond.end_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.false:                                       ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #18
  %name6 = getelementptr inbounds %struct.dn_dev_parms, ptr %parms, i32 0, i32 7
  %13 = ptrtoint ptr %name6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name6, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.preheader.cond.end_crit_edge
  %cond = phi ptr [ %14, %cond.false ], [ %dev, %for.body.preheader.cond.end_crit_edge ]
  %call7 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %path, i32 noundef 33, ptr noundef nonnull @.str.37, ptr noundef %cond)
  %dn_dev_vars8 = getelementptr inbounds %struct.dn_dev_sysctl_table, ptr %call, i32 0, i32 1
  %extra1 = getelementptr inbounds %struct.dn_dev_sysctl_table, ptr %call, i32 0, i32 1, i32 0, i32 7
  %15 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %dev, ptr %extra1, align 4
  %call13 = call ptr @register_net_sysctl(ptr noundef nonnull @init_net, ptr noundef nonnull %path, ptr noundef %dn_dev_vars8) #16
  %16 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call13, ptr %call, align 4
  %cmp15 = icmp eq ptr %call13, null
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree(ptr noundef nonnull %call) #16
  br label %cleanup

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  %sysctl = getelementptr inbounds %struct.dn_dev_parms, ptr %parms, i32 0, i32 11
  %17 = ptrtoint ptr %sysctl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %sysctl, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then16, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %path) #16
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dn_dev_cleanup() #6 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body:                                         ; preds = %dn_dev_sysctl_unregister.exit.for.body_crit_edge, %entry
  %i.03 = phi i32 [ 0, %entry ], [ %inc, %dn_dev_sysctl_unregister.exit.for.body_crit_edge ]
  %sysctl.i = getelementptr [4 x %struct.dn_dev_parms], ptr @dn_dev_list, i32 0, i32 %i.03, i32 11
  %0 = ptrtoint ptr %sysctl.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sysctl.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %for.body.dn_dev_sysctl_unregister.exit_crit_edge, label %if.then.i

for.body.dn_dev_sysctl_unregister.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %dn_dev_sysctl_unregister.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %sysctl.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %sysctl.i, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  tail call void @unregister_net_sysctl_table(ptr noundef %4) #16
  tail call void @kfree(ptr noundef nonnull %1) #16
  br label %dn_dev_sysctl_unregister.exit

dn_dev_sysctl_unregister.exit:                    ; preds = %if.then.i, %for.body.dn_dev_sysctl_unregister.exit_crit_edge
  %inc = add nuw nsw i32 %i.03, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %dn_dev_sysctl_unregister.exit.for.body_crit_edge

dn_dev_sysctl_unregister.exit.for.body_crit_edge: ; preds = %dn_dev_sysctl_unregister.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %dn_dev_sysctl_unregister.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 17), align 4
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.9, ptr noundef %5) #16
  tail call void @dn_dev_devices_off()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dn_ifaddr_notify(i32 noundef %event, ptr noundef %ifa) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @__alloc_skb(i32 noundef 52, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.if.then28_crit_edge, label %if.end

entry.if.then28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then28

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @dn_nl_fill_ifaddr(ptr noundef nonnull %call.i, ptr noundef %ifa, i32 noundef 0, i32 noundef 0, i32 noundef %event, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %if.end26

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -90, i32 %call2)
  %cmp5 = icmp eq i32 %call2, -90
  br i1 %cmp5, label %do.end, label %if.then4.if.end19_crit_edge, !prof !184

if.then4.if.end19_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 725, i32 noundef 9, ptr noundef null) #16
  br label %if.end19

if.end19:                                         ; preds = %do.end, %if.then4.if.end19_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #16
  br label %if.then28

if.end26:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @rtnl_notify(ptr noundef nonnull %call.i, ptr noundef nonnull @init_net, i32 noundef 0, i32 noundef 13, ptr noundef null, i32 noundef 3264) #16
  br label %cleanup

if.then28:                                        ; preds = %if.end19, %entry.if.then28_crit_edge
  %err.0 = phi i32 [ -105, %entry.if.then28_crit_edge ], [ %call2, %if.end19 ]
  tail call void @rtnl_set_sk_err(ptr noundef nonnull @init_net, i32 noundef 13, i32 noundef %err.0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dn_nl_fill_ifaddr(ptr noundef %skb, ptr noundef %ifa, i32 noundef %portid, i32 noundef %seq, i32 noundef %event, i32 noundef %flags) unnamed_addr #0 align 64 {
entry:
  %tmp.i54 = alloca i32, align 4
  %tmp.i51 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %ifa_flags1 = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa, i32 0, i32 4
  %0 = ptrtoint ptr %ifa_flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ifa_flags1, align 4
  %or = or i32 %1, 128
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

skb_tailroom.exit.i:                              ; preds = %entry
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 24
  br i1 %cmp.i, label %skb_tailroom.exit.i.cleanup_crit_edge, label %nlmsg_put.exit, !prof !184

skb_tailroom.exit.i.cleanup_crit_edge:            ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, i32 noundef %event, i32 noundef 8, i32 noundef %flags) #16
  %cmp = icmp eq ptr %call3.i, null
  br i1 %cmp, label %nlmsg_put.exit.cleanup_crit_edge, label %if.end

nlmsg_put.exit.cleanup_crit_edge:                 ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %nlmsg_put.exit
  %add.ptr.i = getelementptr i8, ptr %call3.i, i32 16
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 12, ptr %add.ptr.i, align 4
  %ifa_prefixlen = getelementptr i8, ptr %call3.i, i32 17
  %9 = ptrtoint ptr %ifa_prefixlen to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 16, ptr %ifa_prefixlen, align 1
  %conv = trunc i32 %or to i8
  %ifa_flags3 = getelementptr i8, ptr %call3.i, i32 18
  %10 = ptrtoint ptr %ifa_flags3 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %ifa_flags3, align 2
  %ifa_scope = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa, i32 0, i32 5
  %11 = ptrtoint ptr %ifa_scope to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ifa_scope, align 4
  %ifa_scope4 = getelementptr i8, ptr %call3.i, i32 19
  %13 = ptrtoint ptr %ifa_scope4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %ifa_scope4, align 1
  %ifa_dev = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa, i32 0, i32 1
  %14 = ptrtoint ptr %ifa_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ifa_dev, align 4
  %dev = getelementptr inbounds %struct.dn_dev, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ifindex, align 4
  %ifa_index = getelementptr i8, ptr %call3.i, i32 20
  %20 = ptrtoint ptr %ifa_index to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %ifa_index, align 4
  %ifa_address = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa, i32 0, i32 3
  %21 = ptrtoint ptr %ifa_address to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %ifa_address, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool.not = icmp eq i16 %22, 0
  br i1 %tobool.not, label %if.end.lor.lhs.false_crit_edge, label %land.lhs.true

if.end.lor.lhs.false_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #16
  %23 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %land.lhs.true.lor.lhs.false_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %if.end.lor.lhs.false_crit_edge
  %ifa_local = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa, i32 0, i32 2
  %24 = ptrtoint ptr %ifa_local to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ifa_local, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %tobool10.not = icmp eq i16 %25, 0
  br i1 %tobool10.not, label %lor.lhs.false.lor.lhs.false15_crit_edge, label %land.lhs.true11

lor.lhs.false.lor.lhs.false15_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false15

land.lhs.true11:                                  ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i51) #16
  %26 = ptrtoint ptr %tmp.i51 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %tmp.i51, align 2
  %call.i52 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i51) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i51) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i52)
  %tobool14.not = icmp eq i32 %call.i52, 0
  br i1 %tobool14.not, label %land.lhs.true11.lor.lhs.false15_crit_edge, label %land.lhs.true11.if.then.i.i_crit_edge

land.lhs.true11.if.then.i.i_crit_edge:            ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

land.lhs.true11.lor.lhs.false15_crit_edge:        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false15

lor.lhs.false15:                                  ; preds = %land.lhs.true11.lor.lhs.false15_crit_edge, %lor.lhs.false.lor.lhs.false15_crit_edge
  %ifa_label = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa, i32 0, i32 6
  %27 = ptrtoint ptr %ifa_label to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ifa_label, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool17.not = icmp eq i8 %28, 0
  br i1 %tobool17.not, label %lor.lhs.false15.lor.lhs.false22_crit_edge, label %land.lhs.true18

lor.lhs.false15.lor.lhs.false22_crit_edge:        ; preds = %lor.lhs.false15
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false22

land.lhs.true18:                                  ; preds = %lor.lhs.false15
  %call.i53 = call i32 @strlen(ptr noundef %ifa_label) #23
  %add.i = add i32 %call.i53, 1
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef %add.i, ptr noundef %ifa_label) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool21.not = icmp eq i32 %call1.i, 0
  br i1 %tobool21.not, label %land.lhs.true18.lor.lhs.false22_crit_edge, label %land.lhs.true18.if.then.i.i_crit_edge

land.lhs.true18.if.then.i.i_crit_edge:            ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

land.lhs.true18.lor.lhs.false22_crit_edge:        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %land.lhs.true18.lor.lhs.false22_crit_edge, %lor.lhs.false15.lor.lhs.false22_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i54) #16
  %29 = ptrtoint ptr %tmp.i54 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or, ptr %tmp.i54, align 4
  %call.i55 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i54) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i54) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool24.not = icmp eq i32 %call.i55, 0
  br i1 %tobool24.not, label %if.end26, label %lor.lhs.false22.if.then.i.i_crit_edge

lor.lhs.false22.if.then.i.i_crit_edge:            ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end26:                                         ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #18
  %30 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %call3.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %32 = ptrtoint ptr %call3.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub.ptr.sub.i, ptr %call3.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %lor.lhs.false22.if.then.i.i_crit_edge, %land.lhs.true18.if.then.i.i_crit_edge, %land.lhs.true11.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %33 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %34, %call3.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nlmsg_cancel.exit_crit_edge, !prof !184

if.then.i.i.nlmsg_cancel.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nlmsg_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %nlmsg_cancel.exit

nlmsg_cancel.exit:                                ; preds = %do.end.i.i, %if.then.i.i.nlmsg_cancel.exit_crit_edge
  %35 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i57 = ptrtoint ptr %call3.i to i32
  %sub.ptr.rhs.cast.i.i58 = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i59 = sub i32 %sub.ptr.lhs.cast.i.i57, %sub.ptr.rhs.cast.i.i58
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i59) #16
  br label %cleanup

cleanup:                                          ; preds = %nlmsg_cancel.exit, %if.end26, %nlmsg_put.exit.cleanup_crit_edge, %skb_tailroom.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nlmsg_cancel.exit ], [ 0, %if.end26 ], [ -90, %nlmsg_put.exit.cleanup_crit_edge ], [ -90, %skb_tailroom.exit.i.cleanup_crit_edge ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_notify(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_set_sk_err(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dn_dev_insert_ifa(ptr noundef %dn_db, ptr noundef %ifa) unnamed_addr #0 align 64 {
entry:
  %mac_addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.dn_dev, ptr %dn_db, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac_addr) #16
  %2 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 4
  %6 = getelementptr inbounds [6 x i8], ptr %mac_addr, i32 0, i32 5
  %7 = call ptr @memset(ptr %mac_addr, i32 255, i32 6)
  %call = tail call i32 @rtnl_is_locked() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b147 = load i1, ptr @dn_dev_insert_ifa.__already_done, align 1
  br i1 %.b147, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !177

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_insert_ifa.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 362, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str, i32 noundef 362) #16
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  %call39 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call39, label %if.end30.do.end47_crit_edge, label %land.lhs.true

if.end30.do.end47_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end47

land.lhs.true:                                    ; preds = %if.end30
  %call40 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true.do.end47_crit_edge, label %land.lhs.true42

land.lhs.true.do.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end47

land.lhs.true42:                                  ; preds = %land.lhs.true
  %.b143146 = load i1, ptr @dn_dev_insert_ifa.__warned, align 1
  br i1 %.b143146, label %land.lhs.true42.do.end47_crit_edge, label %if.then44

land.lhs.true42.do.end47_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end47

if.then44:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_insert_ifa.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 365, ptr noundef nonnull @.str.1) #16
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %land.lhs.true42.do.end47_crit_edge, %land.lhs.true.do.end47_crit_edge, %if.end30.do.end47_crit_edge
  %8 = ptrtoint ptr %dn_db to i32
  call void @__asan_load4_noabort(i32 %8)
  %ifa1.0148 = load ptr, ptr %dn_db, align 4
  %cmp.not149 = icmp eq ptr %ifa1.0148, null
  br i1 %cmp.not149, label %do.end47.for.end_crit_edge, label %for.body.lr.ph

do.end47.for.end_crit_edge:                       ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end47
  %ifa_local49 = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %do.end65.for.body_crit_edge, %for.body.lr.ph
  %ifa1.0150 = phi ptr [ %ifa1.0148, %for.body.lr.ph ], [ %ifa1.0, %do.end65.for.body_crit_edge ]
  %ifa_local = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa1.0150, i32 0, i32 2
  %9 = ptrtoint ptr %ifa_local to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ifa_local, align 4
  %11 = ptrtoint ptr %ifa_local49 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %ifa_local49, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %10, i16 %12)
  %cmp51 = icmp eq i16 %10, %12
  br i1 %cmp51, label %for.body.cleanup_crit_edge, label %do.body55

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body55:                                        ; preds = %for.body
  %call56 = tail call zeroext i1 @lockdep_rtnl_is_held() #16
  br i1 %call56, label %do.body55.do.end65_crit_edge, label %land.lhs.true57

do.body55.do.end65_crit_edge:                     ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end65

land.lhs.true57:                                  ; preds = %do.body55
  %call58 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true57.do.end65_crit_edge, label %land.lhs.true60

land.lhs.true57.do.end65_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end65

land.lhs.true60:                                  ; preds = %land.lhs.true57
  %.b144145 = load i1, ptr @dn_dev_insert_ifa.__warned.15, align 1
  br i1 %.b144145, label %land.lhs.true60.do.end65_crit_edge, label %if.then62

land.lhs.true60.do.end65_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end65

if.then62:                                        ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_insert_ifa.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 367, ptr noundef nonnull @.str.1) #16
  br label %do.end65

do.end65:                                         ; preds = %if.then62, %land.lhs.true60.do.end65_crit_edge, %land.lhs.true57.do.end65_crit_edge, %do.body55.do.end65_crit_edge
  %13 = ptrtoint ptr %ifa1.0150 to i32
  call void @__asan_load4_noabort(i32 %13)
  %ifa1.0 = load ptr, ptr %ifa1.0150, align 4
  %cmp.not = icmp eq ptr %ifa1.0, null
  br i1 %cmp.not, label %do.end65.for.end_crit_edge, label %do.end65.for.body_crit_edge

do.end65.for.body_crit_edge:                      ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

do.end65.for.end_crit_edge:                       ; preds = %do.end65
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %do.end65.for.end_crit_edge, %do.end47.for.end_crit_edge
  %type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 32
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %15)
  %cmp68 = icmp eq i16 %15, 1
  br i1 %cmp68, label %if.then70, label %for.end.if.end82_crit_edge

for.end.if.end82_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

if.then70:                                        ; preds = %for.end
  %ifa_local71 = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa, i32 0, i32 2
  %16 = ptrtoint ptr %ifa_local71 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %ifa_local71, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %18 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr, align 64
  %add.ptr.i = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 2)
  %21 = load i16, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_cmp2(i16 %17, i16 %21)
  %cmp75.not = icmp eq i16 %17, %21
  br i1 %cmp75.not, label %if.then70.if.end82_crit_edge, label %if.then77

if.then70.if.end82_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end82

if.then77:                                        ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #18
  %22 = tail call i16 @llvm.bswap.i16(i16 %17) #16
  %23 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -86, ptr %mac_addr, align 1
  %24 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %2, align 1
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 4, ptr %3, align 1
  %26 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %4, align 1
  %conv4.i = trunc i16 %22 to i8
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv4.i, ptr %5, align 1
  %28 = lshr i16 %22, 8
  %conv7.i = trunc i16 %28 to i8
  %29 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv7.i, ptr %6, align 1
  %call80 = call i32 @dev_mc_add(ptr noundef %1, ptr noundef nonnull %mac_addr) #16
  br label %if.end82

if.end82:                                         ; preds = %if.then77, %if.then70.if.end82_crit_edge, %for.end.if.end82_crit_edge
  %30 = ptrtoint ptr %dn_db to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dn_db, align 4
  %32 = ptrtoint ptr %ifa to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %ifa, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !192
  %33 = ptrtoint ptr %dn_db to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %ifa, ptr %dn_db, align 4
  call fastcc void @dn_ifaddr_notify(i32 noundef 20, ptr noundef %ifa)
  %call125 = call i32 @blocking_notifier_call_chain(ptr noundef nonnull @dnaddr_chain, i32 noundef 1, ptr noundef %ifa) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end82, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end82 ], [ -17, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac_addr) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dn_dev_timer_func(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -60
  %0 = tail call i32 @llvm.read_register.i32(metadata !167) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !186
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %dev1 = getelementptr i8, ptr %t, i32 -56
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %t3 = getelementptr i8, ptr %t, i32 48
  %6 = ptrtoint ptr %t3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %t3, align 4
  %t2 = getelementptr i8, ptr %t, i32 -36
  %8 = ptrtoint ptr %t2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %t2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not = icmp ugt i32 %7, %9
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %rcu_read_lock.exit
  %timer3 = getelementptr i8, ptr %t, i32 -12
  %10 = ptrtoint ptr %timer3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %timer3, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.then.if.end38_crit_edge, label %if.then3

if.then.if.end38_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.then3:                                         ; preds = %if.then
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %add.ptr, align 4
  %call = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.then3.do.end13_crit_edge

if.then3.do.end13_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end13

land.lhs.true:                                    ; preds = %if.then3
  %call7 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.do.end13_crit_edge, label %land.lhs.true9

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end13

land.lhs.true9:                                   ; preds = %land.lhs.true
  %.b62 = load i1, ptr @dn_dev_timer_func.__warned, align 1
  br i1 %.b62, label %land.lhs.true9.do.end13_crit_edge, label %if.then11

land.lhs.true9.do.end13_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end13

if.then11:                                        ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_timer_func.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1047, ptr noundef nonnull @.str.17) #16
  br label %do.end13

do.end13:                                         ; preds = %if.then11, %land.lhs.true9.do.end13_crit_edge, %land.lhs.true.do.end13_crit_edge, %if.then3.do.end13_crit_edge
  %tobool15.not73 = icmp eq ptr %13, null
  br i1 %tobool15.not73, label %do.end13.if.end38_crit_edge, label %do.end13.for.body_crit_edge

do.end13.for.body_crit_edge:                      ; preds = %do.end13
  br label %for.body

do.end13.if.end38_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

for.body:                                         ; preds = %do.end36.for.body_crit_edge, %do.end13.for.body_crit_edge
  %ifa.074 = phi ptr [ %19, %do.end36.for.body_crit_edge ], [ %13, %do.end13.for.body_crit_edge ]
  %ifa_flags = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa.074, i32 0, i32 4
  %14 = ptrtoint ptr %ifa_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifa_flags, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.then17, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %timer3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %timer3, align 4
  tail call void %17(ptr noundef %5, ptr noundef nonnull %ifa.074) #16
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %ifa.074 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %ifa.074, align 4
  %call26 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %for.inc.do.end36_crit_edge

for.inc.do.end36_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end36

land.lhs.true28:                                  ; preds = %for.inc
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true28.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true28.do.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %.b6061 = load i1, ptr @dn_dev_timer_func.__warned.23, align 1
  br i1 %.b6061, label %land.lhs.true31.do.end36_crit_edge, label %if.then33

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end36

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_timer_func.__warned.23, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1049, ptr noundef nonnull @.str.17) #16
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %land.lhs.true31.do.end36_crit_edge, %land.lhs.true28.do.end36_crit_edge, %for.inc.do.end36_crit_edge
  %tobool15.not = icmp eq ptr %19, null
  br i1 %tobool15.not, label %do.end36.if.end38_crit_edge, label %do.end36.for.body_crit_edge

do.end36.for.body_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

do.end36.if.end38_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end38

if.end38:                                         ; preds = %do.end36.if.end38_crit_edge, %do.end13.if.end38_crit_edge, %if.then.if.end38_crit_edge
  %t340 = getelementptr i8, ptr %t, i32 -32
  %20 = ptrtoint ptr %t340 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %t340, align 4
  br label %if.end45

if.else:                                          ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  %sub = sub i32 %7, %9
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.end38
  %storemerge = phi i32 [ %sub, %if.else ], [ %21, %if.end38 ]
  %22 = ptrtoint ptr %t3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge, ptr %t3, align 4
  %call.i63 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i63, label %if.end45.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i66

if.end45.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i66:                                ; preds = %if.end45
  %call1.i64 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64)
  %tobool.not.i65 = icmp eq i32 %call1.i64, 0
  br i1 %tobool.not.i65, label %land.lhs.true.i66.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i68

land.lhs.true.i66.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i66
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i68:                               ; preds = %land.lhs.true.i66
  %.b4.i67 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i67, label %land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge, label %if.then.i69

land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i69:                                      ; preds = %land.lhs.true2.i68
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i69, %land.lhs.true2.i68.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i66.rcu_read_unlock.exit_crit_edge, %if.end45.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !187
  %23 = tail call i32 @llvm.read_register.i32(metadata !167) #16
  %and.i.i.i.i.i70 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i70 to ptr
  %preempt_count.i.i.i.i71 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %preempt_count.i.i.i.i71 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %preempt_count.i.i.i.i71, align 4
  %sub.i.i.i = add i32 %26, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i71, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %dn_ptr.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 79
  %27 = ptrtoint ptr %dn_ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %dn_ptr.i, align 4
  %t2.i = getelementptr inbounds %struct.dn_dev, ptr %28, i32 0, i32 2, i32 4
  %29 = ptrtoint ptr %t2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %t2.i, align 4
  %t3.i = getelementptr inbounds %struct.dn_dev, ptr %28, i32 0, i32 2, i32 5
  %31 = ptrtoint ptr %t3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %t3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp.i = icmp ugt i32 %30, %32
  br i1 %cmp.i, label %if.then.i72, label %rcu_read_unlock.exit.dn_dev_set_timer.exit_crit_edge

rcu_read_unlock.exit.dn_dev_set_timer.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %dn_dev_set_timer.exit

if.then.i72:                                      ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  %33 = ptrtoint ptr %t2.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %t2.i, align 4
  br label %dn_dev_set_timer.exit

dn_dev_set_timer.exit:                            ; preds = %if.then.i72, %rcu_read_unlock.exit.dn_dev_set_timer.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %35 = ptrtoint ptr %t2.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %t2.i, align 4
  %mul.i = mul i32 %36, 100
  %add.i = add i32 %mul.i, %34
  %timer.i = getelementptr inbounds %struct.dn_dev, ptr %28, i32 0, i32 4
  %expires.i = getelementptr inbounds %struct.dn_dev, ptr %28, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %expires.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %add.i, ptr %expires.i, align 4
  tail call void @add_timer(ptr noundef %timer.i) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @neigh_parms_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_parms_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @neigh_ifdown(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @netlink_capable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcmp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strcmp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dn_dev_seq_start(ptr nocapture noundef readnone %seq, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !167) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !186
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 696, ptr noundef nonnull @.str.20) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp = icmp eq i64 %5, 0
  br i1 %cmp, label %rcu_read_lock.exit.cleanup_crit_edge, label %if.end

rcu_read_lock.exit.cleanup_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %rcu_read_lock.exit
  %call = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b33 = load i1, ptr @dn_dev_seq_start.__warned, align 1
  br i1 %.b33, label %land.lhs.true3.do.end_crit_edge, label %if.then5

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then5:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_seq_start.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1298, ptr noundef nonnull @.str.26) #16
  br label %do.end

do.end:                                           ; preds = %if.then5, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn36 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp11.not37 = icmp eq ptr %.pn36, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp11.not37, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn39 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn36, %do.end.for.body_crit_edge ]
  %i.038 = phi i32 [ %i.1, %for.inc.for.body_crit_edge ], [ 1, %do.end.for.body_crit_edge ]
  %dn_ptr.i = getelementptr i8, ptr %.pn39, i32 508
  %6 = ptrtoint ptr %dn_ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dn_ptr.i, align 4
  %cmp.i.not = icmp eq ptr %7, null
  br i1 %cmp.i.not, label %for.body.for.inc_crit_edge, label %if.end15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %inc = add i32 %i.038, 1
  %conv = sext i32 %i.038 to i64
  %8 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %pos, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %9, i64 %conv)
  %cmp16 = icmp eq i64 %9, %conv
  br i1 %cmp16, label %cleanup.loopexit.split.loop.exit, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %if.end15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %i.1 = phi i32 [ %inc, %if.end15.for.inc_crit_edge ], [ %i.038, %for.body.for.inc_crit_edge ]
  %10 = ptrtoint ptr %.pn39 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load volatile ptr, ptr %.pn39, align 4
  %cmp11.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp11.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.loopexit.split.loop.exit:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #18
  %dev.0.le = getelementptr i8, ptr %.pn39, i32 -40
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit.split.loop.exit, %for.inc.cleanup_crit_edge, %do.end.cleanup_crit_edge, %rcu_read_lock.exit.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 1 to ptr), %rcu_read_lock.exit.cleanup_crit_edge ], [ %dev.0.le, %cleanup.loopexit.split.loop.exit ], [ null, %do.end.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dn_dev_seq_stop(ptr nocapture noundef readnone %seq, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_unlock.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_unlock.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 724, ptr noundef nonnull @.str.21) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i.rcu_read_unlock.exit_crit_edge, %entry.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !187
  %0 = tail call i32 @llvm.read_register.i32(metadata !167) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %sub.i.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dn_dev_seq_next(ptr nocapture noundef readnone %seq, ptr noundef %v, ptr nocapture noundef %pos) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pos, align 8
  %inc = add i64 %1, 1
  store i64 %inc, ptr %pos, align 8
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  %spec.select = select i1 %cmp, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 15, i32 0, i32 0, i32 0, i32 4, i32 2), ptr %v
  %dev_list = getelementptr inbounds %struct.net_device, ptr %spec.select, i32 0, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %dev_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load volatile ptr, ptr %.pn.in, align 8
  %cmp6.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp6.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %dn_ptr.i = getelementptr i8, ptr %.pn, i32 508
  %3 = ptrtoint ptr %dn_ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dn_ptr.i, align 4
  %cmp.i.not = icmp eq ptr %4, null
  br i1 %cmp.i.not, label %for.body.for.cond_crit_edge, label %cleanup.split.loop.exit23

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond

cleanup.split.loop.exit23:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %dev.1.le = getelementptr i8, ptr %.pn, i32 -40
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit23, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %dev.1.le, %cleanup.split.loop.exit23 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_dev_seq_show(ptr noundef %seq, ptr noundef %v) #0 align 64 {
entry:
  %peer_buf = alloca [9 x i8], align 1
  %router_buf = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %v, inttoptr (i32 1 to ptr)
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @seq_puts(ptr noundef %seq, ptr noundef nonnull @.str.30) #16
  br label %if.end34

if.else:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %peer_buf) #16
  %0 = call ptr @memset(ptr %peer_buf, i32 255, i32 9)
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %router_buf) #16
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %v, i32 0, i32 79
  %1 = call ptr @memset(ptr %router_buf, i32 255, i32 9)
  %2 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %dn_ptr, align 4
  %call = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.else.do.end8_crit_edge

if.else.do.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

land.lhs.true:                                    ; preds = %if.else
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true4

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b49 = load i1, ptr @dn_dev_seq_show.__warned, align 1
  br i1 %.b49, label %land.lhs.true4.do.end8_crit_edge, label %if.then6

land.lhs.true4.do.end8_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dn_dev_seq_show.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1357, ptr noundef nonnull @.str.17) #16
  br label %do.end8

do.end8:                                          ; preds = %if.then6, %land.lhs.true4.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %if.else.do.end8_crit_edge
  %mode = getelementptr inbounds %struct.dn_dev, ptr %3, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %conv = trunc i32 %5 to i8
  %switch.tableidx = add i8 %conv, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %6 = icmp ult i8 %switch.tableidx, 4
  br i1 %6, label %switch.lookup, label %do.end8.dn_type2asc.exit_crit_edge

do.end8.dn_type2asc.exit_crit_edge:               ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %dn_type2asc.exit

switch.lookup:                                    ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #18
  %7 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.dn_dev_seq_show, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %dn_type2asc.exit

dn_type2asc.exit:                                 ; preds = %switch.lookup, %do.end8.dn_type2asc.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.36, %do.end8.dn_type2asc.exit_crit_edge ]
  %t3 = getelementptr inbounds %struct.dn_dev, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %t3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %t3, align 4
  %t312 = getelementptr inbounds %struct.dn_dev, ptr %3, i32 0, i32 2, i32 5
  %11 = ptrtoint ptr %t312 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %t312, align 4
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %v, i32 0, i32 20
  %13 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mtu.i, align 4
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 65535) #16
  %type.i = getelementptr inbounds %struct.net_device, ptr %v, i32 0, i32 32
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %type.i, align 16
  %18 = zext i16 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %17, label %dn_type2asc.exit.mtu2blksize.exit_crit_edge [
    i16 1, label %dn_type2asc.exit.if.then17.i_crit_edge
    i16 512, label %dn_type2asc.exit.if.then17.i_crit_edge50
    i16 778, label %dn_type2asc.exit.if.then17.i_crit_edge51
    i16 772, label %dn_type2asc.exit.if.then17.i_crit_edge52
  ]

dn_type2asc.exit.if.then17.i_crit_edge52:         ; preds = %dn_type2asc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i

dn_type2asc.exit.if.then17.i_crit_edge51:         ; preds = %dn_type2asc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i

dn_type2asc.exit.if.then17.i_crit_edge50:         ; preds = %dn_type2asc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i

dn_type2asc.exit.if.then17.i_crit_edge:           ; preds = %dn_type2asc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i

dn_type2asc.exit.mtu2blksize.exit_crit_edge:      ; preds = %dn_type2asc.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %mtu2blksize.exit

if.then17.i:                                      ; preds = %dn_type2asc.exit.if.then17.i_crit_edge, %dn_type2asc.exit.if.then17.i_crit_edge50, %dn_type2asc.exit.if.then17.i_crit_edge51, %dn_type2asc.exit.if.then17.i_crit_edge52
  %sub.i = add nsw i32 %15, -2
  br label %mtu2blksize.exit

mtu2blksize.exit:                                 ; preds = %if.then17.i, %dn_type2asc.exit.mtu2blksize.exit_crit_edge
  %blksize.0.i = phi i32 [ %sub.i, %if.then17.i ], [ %15, %dn_type2asc.exit.mtu2blksize.exit_crit_edge ]
  %conv14 = and i32 %blksize.0.i, 65535
  %priority = getelementptr inbounds %struct.dn_dev, ptr %3, i32 0, i32 2, i32 6
  %19 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %priority, align 4
  %state = getelementptr inbounds %struct.dn_dev, ptr %3, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state, align 4
  %name18 = getelementptr inbounds %struct.dn_dev, ptr %3, i32 0, i32 2, i32 7
  %23 = ptrtoint ptr %name18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name18, align 4
  %router = getelementptr inbounds %struct.dn_dev, ptr %3, i32 0, i32 8
  %25 = ptrtoint ptr %router to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %router, align 4
  %tobool19.not = icmp eq ptr %26, null
  br i1 %tobool19.not, label %mtu2blksize.exit.cond.end_crit_edge, label %cond.true

mtu2blksize.exit.cond.end_crit_edge:              ; preds = %mtu2blksize.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true:                                        ; preds = %mtu2blksize.exit
  call void @__sanitizer_cov_trace_pc() #18
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %26, i32 0, i32 27
  %27 = ptrtoint ptr %primary_key to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %primary_key, align 4
  %29 = tail call i16 @llvm.bswap.i16(i16 %28)
  %call23 = call ptr @dn_addr2asc(i16 noundef zeroext %29, ptr noundef nonnull %router_buf) #16
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %mtu2blksize.exit.cond.end_crit_edge
  %cond = phi ptr [ %call23, %cond.true ], [ @.str.32, %mtu2blksize.exit.cond.end_crit_edge ]
  %peer = getelementptr inbounds %struct.dn_dev, ptr %3, i32 0, i32 9
  %30 = ptrtoint ptr %peer to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %peer, align 4
  %tobool24.not = icmp eq ptr %31, null
  br i1 %tobool24.not, label %cond.end.cond.end32_crit_edge, label %cond.true25

cond.end.cond.end32_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end32

cond.true25:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  %primary_key27 = getelementptr inbounds %struct.neighbour, ptr %31, i32 0, i32 27
  %32 = ptrtoint ptr %primary_key27 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %primary_key27, align 4
  %34 = call i16 @llvm.bswap.i16(i16 %33)
  %call30 = call ptr @dn_addr2asc(i16 noundef zeroext %34, ptr noundef nonnull %peer_buf) #16
  br label %cond.end32

cond.end32:                                       ; preds = %cond.true25, %cond.end.cond.end32_crit_edge
  %cond33 = phi ptr [ %call30, %cond.true25 ], [ @.str.32, %cond.end.cond.end32_crit_edge ]
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %seq, ptr noundef nonnull @.str.31, ptr noundef %v, ptr noundef nonnull %retval.0.i, i32 noundef 0, i32 noundef 0, i32 noundef %10, i32 noundef %12, i32 noundef %conv14, i32 noundef %20, i32 noundef %22, ptr noundef %24, ptr noundef %cond, ptr noundef %cond33) #16
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %router_buf) #16
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %peer_buf) #16
  br label %if.end34

if.end34:                                         ; preds = %cond.end32, %if.then
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dn_addr2asc(i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @register_net_sysctl(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_forwarding_proc(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %table, i32 0, i32 7
  %0 = ptrtoint ptr %extra1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra1, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 79
  %2 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %dn_ptr, align 4
  %forwarding = getelementptr inbounds %struct.dn_dev, ptr %3, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %forwarding to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %forwarding, align 4
  %call = tail call i32 @proc_dointvec(ptr noundef %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool.not, %cmp4
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then5:                                         ; preds = %if.end
  %6 = ptrtoint ptr %forwarding to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %forwarding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp8 = icmp slt i32 %7, 0
  br i1 %cmp8, label %if.then5.if.end19.sink.split_crit_edge, label %if.end12

if.then5.if.end19.sink.split_crit_edge:           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.sink.split

if.end12:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp15 = icmp ugt i32 %7, 2
  br i1 %cmp15, label %if.end12.if.end19.sink.split_crit_edge, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19

if.end12.if.end19.sink.split_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end19.sink.split

if.end19.sink.split:                              ; preds = %if.end12.if.end19.sink.split_crit_edge, %if.then5.if.end19.sink.split_crit_edge
  %.sink = phi i32 [ 0, %if.then5.if.end19.sink.split_crit_edge ], [ 2, %if.end12.if.end19.sink.split_crit_edge ]
  %8 = ptrtoint ptr %forwarding to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.sink, ptr %forwarding, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %if.end12.if.end19_crit_edge
  %9 = ptrtoint ptr %forwarding to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %forwarding, align 4
  store i32 %5, ptr %forwarding, align 4
  %down = getelementptr inbounds %struct.dn_dev, ptr %3, i32 0, i32 2, i32 9
  %11 = ptrtoint ptr %down to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %down, align 4
  %tobool25.not = icmp eq ptr %12, null
  br i1 %tobool25.not, label %if.end19.if.end29_crit_edge, label %if.then26

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29

if.then26:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %12(ptr noundef nonnull %1) #16
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end19.if.end29_crit_edge
  %13 = ptrtoint ptr %forwarding to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %forwarding, align 4
  %up = getelementptr inbounds %struct.dn_dev, ptr %3, i32 0, i32 2, i32 8
  %14 = ptrtoint ptr %up to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %up, align 4
  %tobool33.not = icmp eq ptr %15, null
  br i1 %tobool33.not, label %if.end29.cleanup_crit_edge, label %if.then34

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #18
  %call37 = tail call i32 %15(ptr noundef nonnull %1) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %if.end29.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end29.cleanup_crit_edge ], [ %call, %if.then34 ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dn_eth_up(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 79
  %0 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %dn_ptr, align 4
  %forwarding = getelementptr inbounds %struct.dn_dev, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %forwarding to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %forwarding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %dn_rt_all_end_mcast.dn_rt_all_rt_mcast = select i1 %cmp, ptr @dn_rt_all_end_mcast, ptr @dn_rt_all_rt_mcast
  %call2 = tail call i32 @dev_mc_add(ptr noundef %dev, ptr noundef nonnull %dn_rt_all_end_mcast.dn_rt_all_rt_mcast) #16
  %use_long = getelementptr inbounds %struct.dn_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %use_long to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %use_long, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dn_eth_down(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 79
  %0 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %dn_ptr, align 4
  %forwarding = getelementptr inbounds %struct.dn_dev, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %forwarding to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %forwarding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %dn_rt_all_end_mcast.dn_rt_all_rt_mcast = select i1 %cmp, ptr @dn_rt_all_end_mcast, ptr @dn_rt_all_rt_mcast
  %call2 = tail call i32 @dev_mc_del(ptr noundef %dev, ptr noundef nonnull %dn_rt_all_end_mcast.dn_rt_all_rt_mcast) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dn_send_brd_hello(ptr noundef %dev, ptr nocapture noundef readonly %ifa) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dn_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 79
  %0 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %dn_ptr, align 4
  %forwarding = getelementptr inbounds %struct.dn_dev, ptr %1, i32 0, i32 2, i32 3
  %2 = ptrtoint ptr %forwarding to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %forwarding, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %4 = ptrtoint ptr %dn_ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %dn_ptr, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @dn_alloc_skb(ptr noundef null, i32 noundef 34, i32 noundef 2592) #16
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then.if.end_crit_edge, label %if.end.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i:                                         ; preds = %if.then
  %6 = getelementptr inbounds %struct.anon.3, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %6, align 8
  %call2.i = tail call ptr @skb_put(ptr noundef nonnull %call.i, i32 noundef 34) #16
  %8 = ptrtoint ptr %call2.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 13, ptr %call2.i, align 1
  %tiver.i = getelementptr inbounds %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 1
  %9 = call ptr @memcpy(ptr %tiver.i, ptr @dn_eco_version, i32 3)
  %id.i = getelementptr inbounds %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 2
  %ifa_local.i = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa, i32 0, i32 2
  %10 = ptrtoint ptr %ifa_local.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %ifa_local.i, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #16
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -86, ptr %id.i, align 1
  %arrayidx1.i.i = getelementptr %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx1.i.i, align 1
  %arrayidx2.i.i = getelementptr %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %arrayidx2.i.i, align 1
  %arrayidx3.i.i = getelementptr %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %arrayidx3.i.i, align 1
  %conv4.i.i = trunc i16 %12 to i8
  %arrayidx5.i.i = getelementptr %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv4.i.i, ptr %arrayidx5.i.i, align 1
  %18 = lshr i16 %12, 8
  %conv7.i.i = trunc i16 %18 to i8
  %arrayidx8.i.i = getelementptr %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 2, i32 5
  %19 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv7.i.i, ptr %arrayidx8.i.i, align 1
  %iinfo.i = getelementptr inbounds %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 3
  %20 = ptrtoint ptr %iinfo.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 3, ptr %iinfo.i, align 1
  %mtu.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %21 = ptrtoint ptr %mtu.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mtu.i.i, align 4
  %23 = tail call i32 @llvm.umin.i32(i32 %22, i32 65535) #16
  %type.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %24 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %type.i.i, align 16
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %25, label %if.end.i.mtu2blksize.exit.i_crit_edge [
    i16 1, label %if.end.i.if.then17.i.i_crit_edge
    i16 512, label %if.end.i.if.then17.i.i_crit_edge46
    i16 778, label %if.end.i.if.then17.i.i_crit_edge47
    i16 772, label %if.end.i.if.then17.i.i_crit_edge48
  ]

if.end.i.if.then17.i.i_crit_edge48:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i.i

if.end.i.if.then17.i.i_crit_edge47:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i.i

if.end.i.if.then17.i.i_crit_edge46:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i.i

if.end.i.if.then17.i.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i.i

if.end.i.mtu2blksize.exit.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mtu2blksize.exit.i

if.then17.i.i:                                    ; preds = %if.end.i.if.then17.i.i_crit_edge, %if.end.i.if.then17.i.i_crit_edge46, %if.end.i.if.then17.i.i_crit_edge47, %if.end.i.if.then17.i.i_crit_edge48
  %sub.i.i = add nsw i32 %23, -2
  br label %mtu2blksize.exit.i

mtu2blksize.exit.i:                               ; preds = %if.then17.i.i, %if.end.i.mtu2blksize.exit.i_crit_edge
  %blksize.0.i.i = phi i32 [ %sub.i.i, %if.then17.i.i ], [ %23, %if.end.i.mtu2blksize.exit.i_crit_edge ]
  %conv19.i.i = trunc i32 %blksize.0.i.i to i16
  %27 = tail call i16 @llvm.bswap.i16(i16 %conv19.i.i) #16
  %blksize.i = getelementptr inbounds %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 4
  %28 = ptrtoint ptr %blksize.i to i32
  call void @__asan_storeN_noabort(i32 %28, i32 2)
  store i16 %27, ptr %blksize.i, align 1
  %area.i = getelementptr inbounds %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 5
  %29 = ptrtoint ptr %area.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %area.i, align 1
  %seed.i = getelementptr inbounds %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 6
  %30 = ptrtoint ptr %seed.i to i32
  call void @__asan_storeN_noabort(i32 %30, i32 8)
  store i64 0, ptr %seed.i, align 1
  %neighbor.i = getelementptr inbounds %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 7
  %31 = call ptr @memcpy(ptr %neighbor.i, ptr @dn_hiord, i32 6)
  %router.i = getelementptr inbounds %struct.dn_dev, ptr %5, i32 0, i32 8
  %32 = ptrtoint ptr %router.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %router.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %mtu2blksize.exit.i.if.end11.i_crit_edge, label %if.then7.i

mtu2blksize.exit.i.if.end11.i_crit_edge:          ; preds = %mtu2blksize.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11.i

if.then7.i:                                       ; preds = %mtu2blksize.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %addr.i = getelementptr inbounds %struct.dn_neigh, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %addr.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %addr.i, align 8
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #16
  %37 = ptrtoint ptr %neighbor.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -86, ptr %neighbor.i, align 1
  %arrayidx1.i42.i = getelementptr %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 7, i32 1
  %38 = ptrtoint ptr %arrayidx1.i42.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %arrayidx1.i42.i, align 1
  %arrayidx2.i43.i = getelementptr %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 7, i32 2
  %39 = ptrtoint ptr %arrayidx2.i43.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 4, ptr %arrayidx2.i43.i, align 1
  %arrayidx3.i44.i = getelementptr %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 7, i32 3
  %40 = ptrtoint ptr %arrayidx3.i44.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %arrayidx3.i44.i, align 1
  %conv4.i45.i = trunc i16 %36 to i8
  %arrayidx5.i46.i = getelementptr %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 7, i32 4
  %41 = ptrtoint ptr %arrayidx5.i46.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv4.i45.i, ptr %arrayidx5.i46.i, align 1
  %42 = lshr i16 %36, 8
  %conv7.i47.i = trunc i16 %42 to i8
  %arrayidx8.i48.i = getelementptr %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 7, i32 5
  %43 = ptrtoint ptr %arrayidx8.i48.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv7.i47.i, ptr %arrayidx8.i48.i, align 1
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %mtu2blksize.exit.i.if.end11.i_crit_edge
  %t3.i = getelementptr inbounds %struct.dn_dev, ptr %5, i32 0, i32 2, i32 5
  %44 = ptrtoint ptr %t3.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %t3.i, align 4
  %conv.i = trunc i32 %45 to i16
  %46 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #16
  %timer.i = getelementptr inbounds %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 8
  %47 = ptrtoint ptr %timer.i to i32
  call void @__asan_storeN_noabort(i32 %47, i32 2)
  store i16 %46, ptr %timer.i, align 1
  %mpd.i = getelementptr inbounds %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 9
  %48 = ptrtoint ptr %mpd.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %mpd.i, align 1
  %datalen.i = getelementptr inbounds %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 10
  %49 = ptrtoint ptr %datalen.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 2, ptr %datalen.i, align 1
  %data.i = getelementptr inbounds %struct.endnode_hello_message, ptr %call2.i, i32 0, i32 11
  %50 = ptrtoint ptr %data.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 2)
  store i16 -21846, ptr %data.i, align 1
  %call13.i = tail call ptr @skb_push(ptr noundef nonnull %call.i, i32 noundef 2) #16
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 6
  %51 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len.i, align 4
  %53 = trunc i32 %52 to i16
  %conv14.i = add i16 %53, -2
  %54 = tail call i16 @llvm.bswap.i16(i16 %conv14.i) #16
  %55 = ptrtoint ptr %call13.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %54, ptr %call13.i, align 2
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 19
  %56 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 18
  %58 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %57 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %59 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i, i32 0, i32 15, i32 0, i32 20
  %60 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %61 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %6, align 8
  %type.i49.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 32
  %63 = ptrtoint ptr %type.i49.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %type.i49.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %64)
  %switch.selectcmp.case1.i = icmp eq i16 %64, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %64)
  %switch.selectcmp.case2.i = icmp eq i16 %64, 772
  %switch.selectcmp.i = or i1 %switch.selectcmp.case1.i, %switch.selectcmp.case2.i
  %65 = select i1 %switch.selectcmp.i, ptr @dn_rt_all_rt_mcast, ptr null
  %66 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len.i, align 4
  %header_ops.i.i.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 49
  %68 = ptrtoint ptr %header_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %header_ops.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %69, null
  br i1 %tobool.not.i.i.i, label %if.end11.i.if.then8.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end11.i.if.then8.i.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end11.i
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %tobool2.not.i.i.i = icmp eq ptr %71, null
  br i1 %tobool2.not.i.i.i, label %lor.lhs.false.i.i.i.if.then8.i.i_crit_edge, label %dev_hard_header.exit.i.i

lor.lhs.false.i.i.i.if.then8.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8.i.i

dev_hard_header.exit.i.i:                         ; preds = %lor.lhs.false.i.i.i
  %call.i.i.i = tail call i32 %71(ptr noundef nonnull %call.i, ptr noundef %62, i16 noundef zeroext 24579, ptr noundef %65, ptr noundef %id.i, i32 noundef %67) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %cmp6.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %cmp6.i.i, label %dev_hard_header.exit.i.i.if.then8.i.i_crit_edge, label %if.else.i.i

dev_hard_header.exit.i.i.if.then8.i.i_crit_edge:  ; preds = %dev_hard_header.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8.i.i

if.then8.i.i:                                     ; preds = %dev_hard_header.exit.i.i.if.then8.i.i_crit_edge, %lor.lhs.false.i.i.i.if.then8.i.i_crit_edge, %if.end11.i.if.then8.i.i_crit_edge
  %call.i16.i.i = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call.i) #16
  br label %if.end

if.else.i.i:                                      ; preds = %dev_hard_header.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i, i32 noundef 0) #16
  br label %if.end

if.else:                                          ; preds = %entry
  %router.i6 = getelementptr inbounds %struct.dn_dev, ptr %5, i32 0, i32 8
  %72 = ptrtoint ptr %router.i6 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %router.i6, align 4
  %mtu.i.i7 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %74 = ptrtoint ptr %mtu.i.i7 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mtu.i.i7, align 4
  %76 = tail call i32 @llvm.umin.i32(i32 %75, i32 65535) #16
  %type.i.i8 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %77 = ptrtoint ptr %type.i.i8 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %type.i.i8, align 16
  %79 = zext i16 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.50)
  switch i16 %78, label %if.else.mtu2blksize.exit.i14_crit_edge [
    i16 1, label %if.else.if.then17.i.i10_crit_edge
    i16 512, label %if.else.if.then17.i.i10_crit_edge49
    i16 778, label %if.else.if.then17.i.i10_crit_edge50
    i16 772, label %if.else.if.then17.i.i10_crit_edge51
  ]

if.else.if.then17.i.i10_crit_edge51:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i.i10

if.else.if.then17.i.i10_crit_edge50:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i.i10

if.else.if.then17.i.i10_crit_edge49:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i.i10

if.else.if.then17.i.i10_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i.i10

if.else.mtu2blksize.exit.i14_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %mtu2blksize.exit.i14

if.then17.i.i10:                                  ; preds = %if.else.if.then17.i.i10_crit_edge, %if.else.if.then17.i.i10_crit_edge49, %if.else.if.then17.i.i10_crit_edge50, %if.else.if.then17.i.i10_crit_edge51
  %sub.i.i9 = add nsw i32 %76, -2
  br label %mtu2blksize.exit.i14

mtu2blksize.exit.i14:                             ; preds = %if.then17.i.i10, %if.else.mtu2blksize.exit.i14_crit_edge
  %blksize.0.i.i11 = phi i32 [ %sub.i.i9, %if.then17.i.i10 ], [ %76, %if.else.mtu2blksize.exit.i14_crit_edge ]
  %conv19.i.i12 = trunc i32 %blksize.0.i.i11 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 33, i16 %conv19.i.i12)
  %cmp.i13 = icmp ult i16 %conv19.i.i12, 33
  br i1 %cmp.i13, label %mtu2blksize.exit.i14.if.end_crit_edge, label %if.end.i15

mtu2blksize.exit.i14.if.end_crit_edge:            ; preds = %mtu2blksize.exit.i14
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i15:                                       ; preds = %mtu2blksize.exit.i14
  %80 = zext i16 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.51)
  switch i16 %78, label %if.end.i15.mtu2blksize.exit113.i_crit_edge [
    i16 1, label %if.end.i15.if.then17.i110.i_crit_edge
    i16 512, label %if.end.i15.if.then17.i110.i_crit_edge52
    i16 778, label %if.end.i15.if.then17.i110.i_crit_edge53
    i16 772, label %if.end.i15.if.then17.i110.i_crit_edge54
  ]

if.end.i15.if.then17.i110.i_crit_edge54:          ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i110.i

if.end.i15.if.then17.i110.i_crit_edge53:          ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i110.i

if.end.i15.if.then17.i110.i_crit_edge52:          ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i110.i

if.end.i15.if.then17.i110.i_crit_edge:            ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i110.i

if.end.i15.mtu2blksize.exit113.i_crit_edge:       ; preds = %if.end.i15
  call void @__sanitizer_cov_trace_pc() #18
  br label %mtu2blksize.exit113.i

if.then17.i110.i:                                 ; preds = %if.end.i15.if.then17.i110.i_crit_edge, %if.end.i15.if.then17.i110.i_crit_edge52, %if.end.i15.if.then17.i110.i_crit_edge53, %if.end.i15.if.then17.i110.i_crit_edge54
  %sub.i109.i = add nsw i32 %76, -2
  br label %mtu2blksize.exit113.i

mtu2blksize.exit113.i:                            ; preds = %if.then17.i110.i, %if.end.i15.mtu2blksize.exit113.i_crit_edge
  %blksize.0.i111.i = phi i32 [ %sub.i109.i, %if.then17.i110.i ], [ %76, %if.end.i15.mtu2blksize.exit113.i_crit_edge ]
  %conv4.i = and i32 %blksize.0.i111.i, 65535
  %sub.i = add nsw i32 %conv4.i, -26
  %div.i = sdiv i32 %sub.i, 7
  %81 = tail call i32 @llvm.smin.i32(i32 %div.i, i32 32) #16
  %mul.i = mul nsw i32 %81, 7
  %add.i = add nsw i32 %mul.i, 28
  %call9.i = tail call ptr @dn_alloc_skb(ptr noundef null, i32 noundef %add.i, i32 noundef 2592) #16
  %cmp10.i = icmp eq ptr %call9.i, null
  br i1 %cmp10.i, label %mtu2blksize.exit113.i.if.end_crit_edge, label %if.end13.i

mtu2blksize.exit113.i.if.end_crit_edge:           ; preds = %mtu2blksize.exit113.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end13.i:                                       ; preds = %mtu2blksize.exit113.i
  %82 = getelementptr inbounds %struct.anon.3, ptr %call9.i, i32 0, i32 2
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %dev, ptr %82, align 8
  %call14.i = tail call ptr @skb_put(ptr noundef nonnull %call9.i, i32 noundef %add.i) #16
  %incdec.ptr.i = getelementptr i8, ptr %call14.i, i32 1
  %84 = ptrtoint ptr %call14.i to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 11, ptr %call14.i, align 1
  %incdec.ptr15.i = getelementptr i8, ptr %call14.i, i32 2
  %85 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 2, ptr %incdec.ptr.i, align 1
  %incdec.ptr16.i = getelementptr i8, ptr %call14.i, i32 3
  %86 = ptrtoint ptr %incdec.ptr15.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 0, ptr %incdec.ptr15.i, align 1
  %incdec.ptr17.i = getelementptr i8, ptr %call14.i, i32 4
  %87 = ptrtoint ptr %incdec.ptr16.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %incdec.ptr16.i, align 1
  %ifa_local.i16 = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa, i32 0, i32 2
  %88 = ptrtoint ptr %ifa_local.i16 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %ifa_local.i16, align 4
  %90 = tail call i16 @llvm.bswap.i16(i16 %89) #16
  %91 = ptrtoint ptr %incdec.ptr17.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 -86, ptr %incdec.ptr17.i, align 1
  %arrayidx1.i.i17 = getelementptr i8, ptr %call14.i, i32 5
  %92 = ptrtoint ptr %arrayidx1.i.i17 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %arrayidx1.i.i17, align 1
  %arrayidx2.i.i18 = getelementptr i8, ptr %call14.i, i32 6
  %93 = ptrtoint ptr %arrayidx2.i.i18 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 4, ptr %arrayidx2.i.i18, align 1
  %arrayidx3.i.i19 = getelementptr i8, ptr %call14.i, i32 7
  %94 = ptrtoint ptr %arrayidx3.i.i19 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %arrayidx3.i.i19, align 1
  %conv4.i.i20 = trunc i16 %90 to i8
  %arrayidx5.i.i21 = getelementptr i8, ptr %call14.i, i32 8
  %95 = ptrtoint ptr %arrayidx5.i.i21 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv4.i.i20, ptr %arrayidx5.i.i21, align 1
  %96 = lshr i16 %90, 8
  %conv7.i.i22 = trunc i16 %96 to i8
  %arrayidx8.i.i23 = getelementptr i8, ptr %call14.i, i32 9
  %97 = ptrtoint ptr %arrayidx8.i.i23 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %conv7.i.i22, ptr %arrayidx8.i.i23, align 1
  %add.ptr.i = getelementptr i8, ptr %call14.i, i32 10
  %forwarding.i = getelementptr inbounds %struct.dn_dev, ptr %5, i32 0, i32 2, i32 3
  %98 = ptrtoint ptr %forwarding.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %forwarding.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp18.i = icmp eq i32 %99, 1
  %conv20.i = select i1 %cmp18.i, i8 2, i8 1
  %incdec.ptr21.i = getelementptr i8, ptr %call14.i, i32 11
  %100 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 %conv20.i, ptr %add.ptr.i, align 1
  %101 = ptrtoint ptr %mtu.i.i7 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %mtu.i.i7, align 4
  %103 = tail call i32 @llvm.umin.i32(i32 %102, i32 65535) #16
  %104 = ptrtoint ptr %type.i.i8 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %type.i.i8, align 16
  %106 = zext i16 %105 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.52)
  switch i16 %105, label %if.end13.i.mtu2blksize.exit120.i_crit_edge [
    i16 1, label %if.end13.i.if.then17.i117.i_crit_edge
    i16 512, label %if.end13.i.if.then17.i117.i_crit_edge55
    i16 778, label %if.end13.i.if.then17.i117.i_crit_edge56
    i16 772, label %if.end13.i.if.then17.i117.i_crit_edge57
  ]

if.end13.i.if.then17.i117.i_crit_edge57:          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i117.i

if.end13.i.if.then17.i117.i_crit_edge56:          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i117.i

if.end13.i.if.then17.i117.i_crit_edge55:          ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i117.i

if.end13.i.if.then17.i117.i_crit_edge:            ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then17.i117.i

if.end13.i.mtu2blksize.exit120.i_crit_edge:       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %mtu2blksize.exit120.i

if.then17.i117.i:                                 ; preds = %if.end13.i.if.then17.i117.i_crit_edge, %if.end13.i.if.then17.i117.i_crit_edge55, %if.end13.i.if.then17.i117.i_crit_edge56, %if.end13.i.if.then17.i117.i_crit_edge57
  %sub.i116.i = add nsw i32 %103, -2
  br label %mtu2blksize.exit120.i

mtu2blksize.exit120.i:                            ; preds = %if.then17.i117.i, %if.end13.i.mtu2blksize.exit120.i_crit_edge
  %blksize.0.i118.i = phi i32 [ %sub.i116.i, %if.then17.i117.i ], [ %103, %if.end13.i.mtu2blksize.exit120.i_crit_edge ]
  %conv19.i119.i = trunc i32 %blksize.0.i118.i to i16
  %107 = tail call i16 @llvm.bswap.i16(i16 %conv19.i119.i) #16
  %108 = ptrtoint ptr %incdec.ptr21.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %incdec.ptr21.i, align 2
  %add.ptr23.i = getelementptr i8, ptr %call14.i, i32 13
  %priority.i = getelementptr inbounds %struct.dn_dev, ptr %5, i32 0, i32 2, i32 6
  %109 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %priority.i, align 4
  %conv25.i = trunc i32 %110 to i8
  %incdec.ptr26.i = getelementptr i8, ptr %call14.i, i32 14
  %111 = ptrtoint ptr %add.ptr23.i to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 %conv25.i, ptr %add.ptr23.i, align 1
  %incdec.ptr27.i = getelementptr i8, ptr %call14.i, i32 15
  %112 = ptrtoint ptr %incdec.ptr26.i to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 0, ptr %incdec.ptr26.i, align 1
  %t3.i24 = getelementptr inbounds %struct.dn_dev, ptr %5, i32 0, i32 2, i32 5
  %113 = ptrtoint ptr %t3.i24 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %t3.i24, align 4
  %conv29.i = trunc i32 %114 to i16
  %115 = tail call i16 @llvm.bswap.i16(i16 %conv29.i) #16
  %116 = ptrtoint ptr %incdec.ptr27.i to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %115, ptr %incdec.ptr27.i, align 2
  %add.ptr30.i = getelementptr i8, ptr %call14.i, i32 17
  %incdec.ptr31.i = getelementptr i8, ptr %call14.i, i32 18
  %117 = ptrtoint ptr %add.ptr30.i to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %add.ptr30.i, align 1
  %incdec.ptr32.i = getelementptr i8, ptr %call14.i, i32 19
  %118 = call ptr @memset(ptr %incdec.ptr32.i, i32 0, i32 7)
  %add.ptr33.i = getelementptr i8, ptr %call14.i, i32 26
  %incdec.ptr34.i = getelementptr i8, ptr %call14.i, i32 27
  %call35.i = tail call i32 @dn_neigh_elist(ptr noundef %dev, ptr noundef %incdec.ptr34.i, i32 noundef %81) #16
  %119 = trunc i32 %call35.i to i8
  %conv37.i = mul i8 %119, 7
  %120 = ptrtoint ptr %add.ptr33.i to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 %conv37.i, ptr %add.ptr33.i, align 1
  %add39.i = add i8 %conv37.i, 8
  %121 = ptrtoint ptr %incdec.ptr31.i to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %add39.i, ptr %incdec.ptr31.i, align 1
  %conv41.i = zext i8 %conv37.i to i32
  %add42.i = add nuw nsw i32 %conv41.i, 27
  tail call void @skb_trim(ptr noundef nonnull %call9.i, i32 noundef %add42.i) #16
  %call43.i = tail call ptr @skb_push(ptr noundef nonnull %call9.i, i32 noundef 2) #16
  %len.i25 = getelementptr inbounds %struct.sk_buff, ptr %call9.i, i32 0, i32 6
  %122 = ptrtoint ptr %len.i25 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %len.i25, align 4
  %124 = trunc i32 %123 to i16
  %conv45.i = add i16 %124, -2
  %125 = tail call i16 @llvm.bswap.i16(i16 %conv45.i) #16
  %126 = ptrtoint ptr %call43.i to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 %125, ptr %call43.i, align 2
  %data.i.i26 = getelementptr inbounds %struct.sk_buff, ptr %call9.i, i32 0, i32 19
  %127 = ptrtoint ptr %data.i.i26 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %data.i.i26, align 4
  %head.i.i27 = getelementptr inbounds %struct.sk_buff, ptr %call9.i, i32 0, i32 18
  %129 = ptrtoint ptr %head.i.i27 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %head.i.i27, align 8
  %sub.ptr.lhs.cast.i.i28 = ptrtoint ptr %128 to i32
  %sub.ptr.rhs.cast.i.i29 = ptrtoint ptr %130 to i32
  %sub.ptr.sub.i.i30 = sub i32 %sub.ptr.lhs.cast.i.i28, %sub.ptr.rhs.cast.i.i29
  %conv.i.i31 = trunc i32 %sub.ptr.sub.i.i30 to i16
  %network_header.i.i32 = getelementptr inbounds %struct.sk_buff, ptr %call9.i, i32 0, i32 15, i32 0, i32 20
  %131 = ptrtoint ptr %network_header.i.i32 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %conv.i.i31, ptr %network_header.i.i32, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %132 = load volatile i32, ptr @jiffies, align 128
  %uptime.i.i = getelementptr inbounds %struct.dn_dev, ptr %5, i32 0, i32 10
  %133 = ptrtoint ptr %uptime.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %uptime.i.i, align 4
  %add.neg.i.i = add i32 %132, -500
  %sub.i121.i = sub i32 %add.neg.i.i, %134
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i121.i)
  %cmp.i.i = icmp slt i32 %sub.i121.i, 0
  br i1 %cmp.i.i, label %mtu2blksize.exit120.i.if.end52.i_crit_edge, label %if.end.i.i

mtu2blksize.exit120.i.if.end52.i_crit_edge:       ; preds = %mtu2blksize.exit120.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52.i

if.end.i.i:                                       ; preds = %mtu2blksize.exit120.i
  %135 = ptrtoint ptr %router.i6 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %router.i6, align 4
  %tobool.not.i.i = icmp eq ptr %136, null
  br i1 %tobool.not.i.i, label %if.end.i.i.if.then47.i_crit_edge, label %if.end2.i.i

if.end.i.i.if.then47.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then47.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  %priority.i.i = getelementptr inbounds %struct.dn_neigh, ptr %73, i32 0, i32 4
  %137 = ptrtoint ptr %priority.i.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %priority.i.i, align 4
  %conv.i122.i = zext i8 %138 to i32
  %139 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %priority.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %conv.i122.i)
  %cmp4.i.i = icmp sgt i32 %140, %conv.i122.i
  br i1 %cmp4.i.i, label %if.end2.i.i.if.then47.i_crit_edge, label %if.end7.i.i

if.end2.i.i.if.then47.i_crit_edge:                ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then47.i

if.end7.i.i:                                      ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %140, i32 %conv.i122.i)
  %cmp12.not.i.i = icmp eq i32 %140, %conv.i122.i
  br i1 %cmp12.not.i.i, label %dn_am_i_a_router.exit.i, label %if.end7.i.i.if.end52.i_crit_edge

if.end7.i.i.if.end52.i_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52.i

dn_am_i_a_router.exit.i:                          ; preds = %if.end7.i.i
  %addr.i.i = getelementptr inbounds %struct.dn_neigh, ptr %73, i32 0, i32 1
  %141 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %addr.i.i, align 8
  %143 = tail call i16 @llvm.bswap.i16(i16 %142) #16
  %144 = ptrtoint ptr %ifa_local.i16 to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %ifa_local.i16, align 4
  %146 = tail call i16 @llvm.bswap.i16(i16 %145) #16
  call void @__sanitizer_cov_trace_cmp2(i16 %143, i16 %146)
  %cmp18.i.not.i = icmp ult i16 %143, %146
  br i1 %cmp18.i.not.i, label %dn_am_i_a_router.exit.i.if.then47.i_crit_edge, label %dn_am_i_a_router.exit.i.if.end52.i_crit_edge

dn_am_i_a_router.exit.i.if.end52.i_crit_edge:     ; preds = %dn_am_i_a_router.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52.i

dn_am_i_a_router.exit.i.if.then47.i_crit_edge:    ; preds = %dn_am_i_a_router.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then47.i

if.then47.i:                                      ; preds = %dn_am_i_a_router.exit.i.if.then47.i_crit_edge, %if.end2.i.i.if.then47.i_crit_edge, %if.end.i.i.if.then47.i_crit_edge
  %call48.i = tail call ptr @skb_copy(ptr noundef nonnull %call9.i, i32 noundef 2592) #16
  %tobool49.not.i = icmp eq ptr %call48.i, null
  br i1 %tobool49.not.i, label %if.then47.i.if.end52.i_crit_edge, label %if.then50.i

if.then47.i.if.end52.i_crit_edge:                 ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end52.i

if.then50.i:                                      ; preds = %if.then47.i
  %147 = getelementptr inbounds %struct.anon.3, ptr %call48.i, i32 0, i32 2
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %147, align 8
  %type.i123.i = getelementptr inbounds %struct.net_device, ptr %149, i32 0, i32 32
  %150 = ptrtoint ptr %type.i123.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %type.i123.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %151)
  %switch.selectcmp.case1.i33 = icmp eq i16 %151, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %151)
  %switch.selectcmp.case2.i34 = icmp eq i16 %151, 772
  %switch.selectcmp.i35 = or i1 %switch.selectcmp.case1.i33, %switch.selectcmp.case2.i34
  %152 = select i1 %switch.selectcmp.i35, ptr @dn_rt_all_end_mcast, ptr null
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %call48.i, i32 0, i32 6
  %153 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %len.i.i, align 4
  %header_ops.i.i.i36 = getelementptr inbounds %struct.net_device, ptr %149, i32 0, i32 49
  %155 = ptrtoint ptr %header_ops.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %header_ops.i.i.i36, align 4
  %tobool.not.i.i.i37 = icmp eq ptr %156, null
  br i1 %tobool.not.i.i.i37, label %if.then50.i.if.then8.i.i44_crit_edge, label %lor.lhs.false.i.i.i39

if.then50.i.if.then8.i.i44_crit_edge:             ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8.i.i44

lor.lhs.false.i.i.i39:                            ; preds = %if.then50.i
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %156, align 4
  %tobool2.not.i.i.i38 = icmp eq ptr %158, null
  br i1 %tobool2.not.i.i.i38, label %lor.lhs.false.i.i.i39.if.then8.i.i44_crit_edge, label %dev_hard_header.exit.i.i42

lor.lhs.false.i.i.i39.if.then8.i.i44_crit_edge:   ; preds = %lor.lhs.false.i.i.i39
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8.i.i44

dev_hard_header.exit.i.i42:                       ; preds = %lor.lhs.false.i.i.i39
  %call.i.i.i40 = tail call i32 %158(ptr noundef nonnull %call48.i, ptr noundef %149, i16 noundef zeroext 24579, ptr noundef %152, ptr noundef %incdec.ptr17.i, i32 noundef %154) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i40)
  %cmp6.i.i41 = icmp sgt i32 %call.i.i.i40, -1
  br i1 %cmp6.i.i41, label %dev_hard_header.exit.i.i42.if.then8.i.i44_crit_edge, label %if.else.i.i45

dev_hard_header.exit.i.i42.if.then8.i.i44_crit_edge: ; preds = %dev_hard_header.exit.i.i42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8.i.i44

if.then8.i.i44:                                   ; preds = %dev_hard_header.exit.i.i42.if.then8.i.i44_crit_edge, %lor.lhs.false.i.i.i39.if.then8.i.i44_crit_edge, %if.then50.i.if.then8.i.i44_crit_edge
  %call.i16.i.i43 = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call48.i) #16
  br label %if.end52.i

if.else.i.i45:                                    ; preds = %dev_hard_header.exit.i.i42
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef nonnull %call48.i, i32 noundef 0) #16
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.else.i.i45, %if.then8.i.i44, %if.then47.i.if.end52.i_crit_edge, %dn_am_i_a_router.exit.i.if.end52.i_crit_edge, %if.end7.i.i.if.end52.i_crit_edge, %mtu2blksize.exit120.i.if.end52.i_crit_edge
  %159 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %82, align 8
  %type.i125.i = getelementptr inbounds %struct.net_device, ptr %160, i32 0, i32 32
  %161 = ptrtoint ptr %type.i125.i to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %type.i125.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %162)
  %switch.selectcmp.case1147.i = icmp eq i16 %162, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %162)
  %switch.selectcmp.case2148.i = icmp eq i16 %162, 772
  %switch.selectcmp149.i = or i1 %switch.selectcmp.case1147.i, %switch.selectcmp.case2148.i
  %163 = select i1 %switch.selectcmp149.i, ptr @dn_rt_all_rt_mcast, ptr null
  %164 = ptrtoint ptr %len.i25 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %len.i25, align 4
  %header_ops.i.i129.i = getelementptr inbounds %struct.net_device, ptr %160, i32 0, i32 49
  %166 = ptrtoint ptr %header_ops.i.i129.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %header_ops.i.i129.i, align 4
  %tobool.not.i.i130.i = icmp eq ptr %167, null
  br i1 %tobool.not.i.i130.i, label %if.end52.i.if.then8.i138.i_crit_edge, label %lor.lhs.false.i.i133.i

if.end52.i.if.then8.i138.i_crit_edge:             ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8.i138.i

lor.lhs.false.i.i133.i:                           ; preds = %if.end52.i
  %168 = ptrtoint ptr %167 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %167, align 4
  %tobool2.not.i.i132.i = icmp eq ptr %169, null
  br i1 %tobool2.not.i.i132.i, label %lor.lhs.false.i.i133.i.if.then8.i138.i_crit_edge, label %dev_hard_header.exit.i136.i

lor.lhs.false.i.i133.i.if.then8.i138.i_crit_edge: ; preds = %lor.lhs.false.i.i133.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8.i138.i

dev_hard_header.exit.i136.i:                      ; preds = %lor.lhs.false.i.i133.i
  %call.i.i134.i = tail call i32 %169(ptr noundef nonnull %call9.i, ptr noundef %160, i16 noundef zeroext 24579, ptr noundef %163, ptr noundef %incdec.ptr17.i, i32 noundef %165) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i134.i)
  %cmp6.i135.i = icmp sgt i32 %call.i.i134.i, -1
  br i1 %cmp6.i135.i, label %dev_hard_header.exit.i136.i.if.then8.i138.i_crit_edge, label %if.else.i139.i

dev_hard_header.exit.i136.i.if.then8.i138.i_crit_edge: ; preds = %dev_hard_header.exit.i136.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8.i138.i

if.then8.i138.i:                                  ; preds = %dev_hard_header.exit.i136.i.if.then8.i138.i_crit_edge, %lor.lhs.false.i.i133.i.if.then8.i138.i_crit_edge, %if.end52.i.if.then8.i138.i_crit_edge
  %call.i16.i137.i = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call9.i) #16
  br label %if.end

if.else.i139.i:                                   ; preds = %dev_hard_header.exit.i136.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree_skb_reason(ptr noundef nonnull %call9.i, i32 noundef 0) #16
  br label %if.end

if.end:                                           ; preds = %if.else.i139.i, %if.then8.i138.i, %mtu2blksize.exit113.i.if.end_crit_edge, %mtu2blksize.exit.i14.if.end_crit_edge, %if.else.i.i, %if.then8.i.i, %if.then.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dn_send_ptp_hello(ptr noundef %dev, ptr nocapture noundef readonly %ifa) #0 align 64 {
entry:
  %src = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %hard_header_len = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 19
  %0 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hard_header_len, align 2
  %conv = zext i16 %1 to i32
  %add2 = add nuw nsw i32 %conv, 22
  %call = tail call ptr @dn_alloc_skb(ptr noundef null, i32 noundef %add2, i32 noundef 2592) #16
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %src) #16
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds [6 x i8], ptr %src, i32 0, i32 5
  %3 = getelementptr inbounds [6 x i8], ptr %src, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %src, i32 0, i32 3
  %5 = getelementptr inbounds [6 x i8], ptr %src, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i8], ptr %src, i32 0, i32 1
  %7 = getelementptr inbounds %struct.anon.3, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %7, align 8
  %9 = ptrtoint ptr %hard_header_len to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %hard_header_len, align 2
  %conv5 = zext i16 %10 to i32
  %call6 = tail call ptr @skb_push(ptr noundef nonnull %call, i32 noundef %conv5) #16
  %call8 = tail call ptr @skb_put(ptr noundef nonnull %call, i32 noundef 22) #16
  %incdec.ptr = getelementptr i8, ptr %call8, i32 1
  %11 = ptrtoint ptr %call8 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 5, ptr %call8, align 1
  %ifa_local = getelementptr inbounds %struct.dn_ifaddr, ptr %ifa, i32 0, i32 2
  %12 = ptrtoint ptr %ifa_local to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %ifa_local, align 4
  %14 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %incdec.ptr, align 2
  %add.ptr = getelementptr i8, ptr %call8, i32 3
  %incdec.ptr10 = getelementptr i8, ptr %call8, i32 4
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 16, ptr %add.ptr, align 1
  %16 = call ptr @memset(ptr %incdec.ptr10, i32 170, i32 16)
  %17 = load i16, ptr %ifa_local, align 4
  %18 = tail call i16 @llvm.bswap.i16(i16 %17) #16
  %19 = ptrtoint ptr %src to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -86, ptr %src, align 1
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %6, align 1
  %21 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 4, ptr %5, align 1
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %4, align 1
  %conv4.i = trunc i16 %18 to i8
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv4.i, ptr %3, align 1
  %24 = lshr i16 %18, 8
  %conv7.i = trunc i16 %24 to i8
  %25 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv7.i, ptr %2, align 1
  %26 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %7, align 8
  %type.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 32
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %type.i, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %29)
  %switch.selectcmp.case1 = icmp eq i16 %29, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 772, i16 %29)
  %switch.selectcmp.case2 = icmp eq i16 %29, 772
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %30 = select i1 %switch.selectcmp, ptr @dn_rt_all_rt_mcast, ptr null
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 6
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 4
  %header_ops.i.i = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 49
  %33 = ptrtoint ptr %header_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %header_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.end.if.then8.i_crit_edge, label %lor.lhs.false.i.i

if.end.if.then8.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8.i

lor.lhs.false.i.i:                                ; preds = %if.end
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool2.not.i.i = icmp eq ptr %36, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.if.then8.i_crit_edge, label %dev_hard_header.exit.i

lor.lhs.false.i.i.if.then8.i_crit_edge:           ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8.i

dev_hard_header.exit.i:                           ; preds = %lor.lhs.false.i.i
  %call.i.i = call i32 %36(ptr noundef nonnull %call, ptr noundef %27, i16 noundef zeroext 24579, ptr noundef %30, ptr noundef nonnull %src, i32 noundef %32) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %cmp6.i = icmp sgt i32 %call.i.i, -1
  br i1 %cmp6.i, label %dev_hard_header.exit.i.if.then8.i_crit_edge, label %if.else.i

dev_hard_header.exit.i.if.then8.i_crit_edge:      ; preds = %dev_hard_header.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then8.i

if.then8.i:                                       ; preds = %dev_hard_header.exit.i.if.then8.i_crit_edge, %lor.lhs.false.i.i.if.then8.i_crit_edge, %if.end.if.then8.i_crit_edge
  %call.i16.i = call i32 @dev_queue_xmit(ptr noundef nonnull %call) #16
  br label %cleanup

if.else.i:                                        ; preds = %dev_hard_header.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @kfree_skb_reason(ptr noundef nonnull %call, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then8.i, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %src) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dn_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dn_neigh_elist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_net_sysctl_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly nofree nounwind readonly willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind readnone }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { cold nounwind }
attributes #23 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !37, !39, !41, !43, !45, !46, !48, !50, !52, !54, !56, !58, !59, !61, !62, !64, !66, !67, !68, !70, !71, !73, !74, !76, !78, !80, !82, !84, !85, !86, !87, !88, !90, !92, !94, !96, !98, !100, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165}
!llvm.named.register.sp = !{!167}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174, !175}
!llvm.ident = !{!176}

!0 = !{ptr @decnet_address, !1, !"decnet_address", i1 false, i1 false}
!1 = !{!"../net/decnet/dn_dev.c", i32 71, i32 8}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/decnet/dn_dev.c", i32 449, i32 15}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/decnet/dn_dev.c", i32 451, i32 15}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/decnet/dn_dev.c", i32 1142, i32 25}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../net/decnet/dn_dev.c", i32 1221, i32 25}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../net/decnet/dn_dev.c", i32 1227, i32 16}
!14 = !{ptr @__param_addr, !15, !"__param_addr", i1 false, i1 false}
!15 = !{!"../net/decnet/dn_dev.c", i32 1383, i32 1}
!16 = !{ptr @__UNIQUE_ID_addrtype507, !15, !"__UNIQUE_ID_addrtype507", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_addr508, !18, !"__UNIQUE_ID_addr508", i1 false, i1 false}
!18 = !{!"../net/decnet/dn_dev.c", i32 1384, i32 1}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/decnet/dn_dev.c", i32 1389, i32 3}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @dn_dev_init._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @dn_dev_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/decnet/dn_dev.c", i32 1394, i32 3}
!26 = !{ptr @dn_dev_init._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @dn_dev_init._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/decnet/dn_dev.c", i32 1409, i32 2}
!30 = !{ptr @decnet_default_device, !31, !"decnet_default_device", i1 false, i1 false}
!31 = !{!"../net/decnet/dn_dev.c", i32 74, i32 27}
!32 = !{ptr @addr, !33, !"addr", i1 false, i1 false}
!33 = !{!"../net/decnet/dn_dev.c", i32 1382, i32 12}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!36 = distinct !{null, !35, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/decnet/dn_dev.c", i32 331, i32 27}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../net/decnet/dn_dev.c", i32 335, i32 2}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/net/netlink.h", i32 991, i32 3}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/decnet/dn_dev.c", i32 390, i32 25}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../net/decnet/dn_dev.c", i32 362, i32 2}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../net/decnet/dn_dev.c", i32 365, i32 14}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../net/decnet/dn_dev.c", i32 367, i32 14}
!56 = !{ptr @.str.16, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/decnet/dn_dev.c", i32 73, i32 8}
!58 = !{ptr @dndev_lock, !57, !"dndev_lock", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../net/decnet/dn_dev.c", i32 792, i32 10}
!61 = !{ptr @.str.17, !60, !"<string literal>", i1 false, i1 false}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../net/decnet/dn_dev.c", i32 796, i32 8}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!66 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!70 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @dn_dev_create.__key, !72, !"__key", i1 false, i1 false}
!72 = !{!"../net/decnet/dn_dev.c", i32 1097, i32 2}
!73 = !{ptr @.str.22, !72, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../net/decnet/dn_dev.c", i32 1047, i32 15}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../net/decnet/dn_dev.c", i32 1049, i32 15}
!78 = !{ptr @dn_hiord, !79, !"dn_hiord", i1 false, i1 false}
!79 = !{!"../net/decnet/dn_dev.c", i32 63, i32 13}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../net/decnet/dn_dev.c", i32 1193, i32 25}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../net/decnet/dn_dev.c", i32 75, i32 8}
!84 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @dnaddr_chain, !83, !"dnaddr_chain", i1 false, i1 false}
!86 = !{ptr @__param_str_addr, !15, !"__param_str_addr", i1 false, i1 false}
!87 = !{ptr @__param_arr_addr, !15, !"__param_arr_addr", i1 false, i1 false}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../net/decnet/dn_dev.c", i32 639, i32 15}
!90 = !{ptr @__nlmsg_parse.__msg, !91, !"__msg", i1 false, i1 false}
!91 = !{!"../include/net/netlink.h", i32 729, i32 3}
!92 = !{ptr @dn_ifa_policy, !93, !"dn_ifa_policy", i1 false, i1 false}
!93 = !{!"../net/decnet/dn_dev.c", i32 556, i32 32}
!94 = distinct !{null, !95, !"__warned", i1 false, i1 false}
!95 = !{!"../net/decnet/dn_dev.c", i32 593, i32 14}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../net/decnet/dn_dev.c", i32 551, i32 12}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../net/decnet/dn_dev.c", i32 752, i32 2}
!100 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../net/decnet/dn_dev.c", i32 761, i32 16}
!103 = distinct !{null, !104, !"__warned", i1 false, i1 false}
!104 = !{!"../net/decnet/dn_dev.c", i32 764, i32 14}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../net/decnet/dn_dev.c", i32 765, i32 14}
!107 = !{ptr @dn_dev_seq_ops, !108, !"dn_dev_seq_ops", i1 false, i1 false}
!108 = !{!"../net/decnet/dn_dev.c", i32 1374, i32 36}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../net/decnet/dn_dev.c", i32 1298, i32 2}
!111 = !{ptr @.str.30, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../net/decnet/dn_dev.c", i32 1352, i32 17}
!113 = distinct !{null, !114, !"__warned", i1 false, i1 false}
!114 = !{!"../net/decnet/dn_dev.c", i32 1357, i32 26}
!115 = !{ptr @.str.31, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../net/decnet/dn_dev.c", i32 1359, i32 19}
!117 = !{ptr @.str.32, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../net/decnet/dn_dev.c", i32 1368, i32 99}
!119 = !{ptr @.str.33, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../net/decnet/dn_dev.c", i32 1339, i32 10}
!121 = !{ptr @.str.34, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../net/decnet/dn_dev.c", i32 1341, i32 10}
!123 = !{ptr @.str.35, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../net/decnet/dn_dev.c", i32 1343, i32 10}
!125 = !{ptr @.str.36, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../net/decnet/dn_dev.c", i32 1346, i32 9}
!127 = !{ptr @.str.37, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/decnet/dn_dev.c", i32 225, i32 31}
!129 = !{ptr @.str.38, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../net/decnet/dn_dev.c", i32 172, i32 15}
!131 = !{ptr @.str.39, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../net/decnet/dn_dev.c", i32 179, i32 15}
!133 = !{ptr @.str.40, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../net/decnet/dn_dev.c", i32 188, i32 15}
!135 = !{ptr @.str.41, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../net/decnet/dn_dev.c", i32 197, i32 15}
!137 = !{ptr @dn_dev_sysctl, !138, !"dn_dev_sysctl", i1 false, i1 false}
!138 = !{!"../net/decnet/dn_dev.c", i32 168, i32 3}
!139 = !{ptr @min_priority, !140, !"min_priority", i1 false, i1 false}
!140 = !{!"../net/decnet/dn_dev.c", i32 160, i32 12}
!141 = !{ptr @max_priority, !142, !"max_priority", i1 false, i1 false}
!142 = !{!"../net/decnet/dn_dev.c", i32 161, i32 12}
!143 = !{ptr @min_t2, !144, !"min_t2", i1 false, i1 false}
!144 = !{!"../net/decnet/dn_dev.c", i32 155, i32 12}
!145 = !{ptr @max_t2, !146, !"max_t2", i1 false, i1 false}
!146 = !{!"../net/decnet/dn_dev.c", i32 156, i32 12}
!147 = !{ptr @min_t3, !148, !"min_t3", i1 false, i1 false}
!148 = !{!"../net/decnet/dn_dev.c", i32 157, i32 12}
!149 = !{ptr @max_t3, !150, !"max_t3", i1 false, i1 false}
!150 = !{!"../net/decnet/dn_dev.c", i32 158, i32 12}
!151 = !{ptr @.str.42, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../net/decnet/dn_dev.c", i32 93, i32 11}
!153 = !{ptr @.str.43, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../net/decnet/dn_dev.c", i32 104, i32 11}
!155 = !{ptr @.str.44, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../net/decnet/dn_dev.c", i32 135, i32 11}
!157 = !{ptr @.str.45, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../net/decnet/dn_dev.c", i32 144, i32 11}
!159 = !{ptr @dn_dev_list, !160, !"dn_dev_list", i1 false, i1 false}
!160 = !{!"../net/decnet/dn_dev.c", i32 86, i32 28}
!161 = !{ptr @dn_rt_all_end_mcast, !162, !"dn_rt_all_end_mcast", i1 false, i1 false}
!162 = !{!"../net/decnet/dn_dev.c", i32 61, i32 13}
!163 = !{ptr @dn_rt_all_rt_mcast, !164, !"dn_rt_all_rt_mcast", i1 false, i1 false}
!164 = !{!"../net/decnet/dn_dev.c", i32 62, i32 13}
!165 = !{ptr @dn_eco_version, !166, !"dn_eco_version", i1 false, i1 false}
!166 = !{!"../net/decnet/dn_dev.c", i32 64, i32 22}
!167 = !{!"sp"}
!168 = !{i32 1, !"wchar_size", i32 2}
!169 = !{i32 1, !"min_enum_size", i32 4}
!170 = !{i32 8, !"branch-target-enforcement", i32 0}
!171 = !{i32 8, !"sign-return-address", i32 0}
!172 = !{i32 8, !"sign-return-address-all", i32 0}
!173 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!174 = !{i32 7, !"uwtable", i32 1}
!175 = !{i32 7, !"frame-pointer", i32 2}
!176 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!177 = !{!"branch_weights", i32 2000, i32 1}
!178 = !{i64 4976555}
!179 = !{i64 4976752}
!180 = !{i64 2152461985}
!181 = !{!"auto-init"}
!182 = !{i64 813035, i64 813096}
!183 = !{i64 815767}
!184 = !{!"branch_weights", i32 1, i32 2000}
!185 = !{i64 816052}
!186 = !{i64 2149415423}
!187 = !{i64 2149415689}
!188 = !{i64 2157030827}
!189 = !{i64 2148498890}
!190 = !{i64 2148413330, i64 2148413362, i64 2148413391, i64 2148413425, i64 2148413456, i64 2148413479}
!191 = !{i64 2149364933}
!192 = !{i64 2156920914}
