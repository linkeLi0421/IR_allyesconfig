; ModuleID = '/llk/IR_all_yes/net/netfilter/nfnetlink_hook.c_pt.bc'
source_filename = "../net/netfilter/nfnetlink_hook.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nfnetlink_subsystem = type { ptr, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfnl_callback = type { ptr, ptr, i32, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.netlink_dump_control = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.nfnl_info = type { ptr, ptr, ptr, ptr, ptr }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.115 }
%union.anon.115 = type { [6 x i32], [24 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.126, %union.anon.127, [48 x i8], %union.anon.128, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.130, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.126 = type { ptr }
%union.anon.127 = type { i64 }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type { i32, ptr }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.132, i32, i32, i32, i16, i16, %union.anon.134, i32, %union.anon.135, %union.anon.136, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.132 = type { i32 }
%union.anon.134 = type { i32 }
%union.anon.135 = type { i32 }
%union.anon.136 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.sock_common = type { %union.anon.99, %union.anon.101, %union.anon.102, i16, i8, i8, i32, %union.anon.104, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.107, [0 x i32], %union.anon.108, i16, i16, %union.anon.109, %struct.refcount_struct, [0 x i32], %union.anon.110 }
%union.anon.99 = type { i64 }
%union.anon.101 = type { i32 }
%union.anon.102 = type { i32 }
%union.anon.104 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.possible_net_t = type { ptr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.107 = type { i32 }
%union.anon.108 = type { %struct.hlist_node }
%union.anon.109 = type { i32 }
%union.anon.110 = type { i32 }
%struct.nfnl_dump_hook_data = type { [16 x i8], i32, i8 }
%struct.nf_hook_entries = type { i16, [0 x %struct.nf_hook_entry] }
%struct.nf_hook_entry = type { ptr, ptr }
%struct.nf_hook_ops = type { ptr, ptr, ptr, i8, i8, i32, i32 }
%struct.nft_chain = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.rhlist_head, ptr, i64, i32, i8, ptr, i16, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.96 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.nft_table = type { %struct.list_head, %struct.rhltable, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i64, i64, i32, i16, i32, ptr, i16, ptr }
%struct.rhltable = type { %struct.rhashtable }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.125, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.125 = type { ptr }
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

@__UNIQUE_ID_alias538 = internal constant [41 x i8] c"nfnetlink_hook.alias=nfnetlink-subsys-12\00", section ".modinfo", align 1
@nfhook_subsys = internal constant { %struct.nfnetlink_subsystem, [32 x i8] } { %struct.nfnetlink_subsystem { ptr @.str, i8 12, i8 1, ptr @nfnl_hook_cb, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_nfnetlink_hook__539_395_nfnetlink_hook_init6 = internal global ptr @nfnetlink_hook_init, section ".initcall6.init", align 4
@__exitcall_nfnetlink_hook_exit = internal global ptr @nfnetlink_hook_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file540 = internal constant [49 x i8] c"nfnetlink_hook.file=net/netfilter/nfnetlink_hook\00", section ".modinfo", align 1
@__UNIQUE_ID_license541 = internal constant [27 x i8] c"nfnetlink_hook.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author542 = internal constant [54 x i8] c"nfnetlink_hook.author=Florian Westphal <fw@strlen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description543 = internal constant [75 x i8] c"nfnetlink_hook.description=nfnetlink_hook: list registered netfilter hooks\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nfhook\00", [25 x i8] zeroinitializer }, align 32
@nfnl_hook_cb = internal constant { [1 x %struct.nfnl_callback], [16 x i8] } { [1 x %struct.nfnl_callback] [%struct.nfnl_callback { ptr @nfnl_hook_get, ptr @nfnl_hook_nla_policy, i32 2, i16 6 }], [16 x i8] zeroinitializer }, align 32
@nfnl_hook_nla_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 15, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 128, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 60, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.27 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@nfnl_hook_entries_head.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/netfilter/nfnetlink_hook.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nfnl_hook_entries_head.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfnl_hook_entries_head.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfnl_hook_entries_head.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfnl_hook_entries_head.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfnl_hook_entries_head.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfnl_hook_entries_head.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%ps\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c" [\00", [29 x i8] zeroinitializer }, align 32
@nfnl_hook_put_nft_chain_info.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 2, i64 3, i64 5, i64 7, i64 10, i64 12]
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"nfhook_subsys\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 376, i32 41 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 377, i32 13 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"nfnl_hook_cb\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 367, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [21 x i8] c"nfnl_hook_nla_policy\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 25, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 695, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 197, i32 15 }
@___asan_gen_.40 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 723, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 134, i32 35 }
@___asan_gen_.46 = private constant [34 x i8] c"../net/netfilter/nfnetlink_hook.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 140, i32 28 }
@___asan_gen_.48 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.49 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 991, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_alias538, ptr @__UNIQUE_ID_author542, ptr @__UNIQUE_ID_description543, ptr @__UNIQUE_ID_file540, ptr @__UNIQUE_ID_license541, ptr @__exitcall_nfnetlink_hook_exit, ptr @__initcall__kmod_nfnetlink_hook__539_395_nfnetlink_hook_init6, ptr @nfnetlink_hook_exit, ptr @nfhook_subsys, ptr @.str, ptr @nfnl_hook_cb, ptr @nfnl_hook_nla_policy, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfhook_subsys to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_hook_cb to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfnl_hook_nla_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nfnetlink_hook_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @nfnetlink_subsys_unregister(ptr noundef nonnull @nfhook_subsys) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_subsys_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnetlink_hook_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfnetlink_subsys_register(ptr noundef nonnull @nfhook_subsys) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_hook_get(ptr noundef %skb, ptr nocapture noundef readonly %info, ptr noundef %nla) #2 align 64 {
entry:
  %c = alloca %struct.netlink_dump_control, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %nla, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
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
  %tobool1.not = icmp eq i16 %6, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.then2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %c) #9
  %7 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 1
  %8 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 2
  %9 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 3
  %10 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 4
  %11 = getelementptr inbounds %struct.netlink_dump_control, ptr %c, i32 0, i32 5
  %12 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @nfnl_hook_dump_start, ptr %c, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @nfnl_hook_dump, ptr %7, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @nfnl_hook_dump_stop, ptr %8, align 4
  %15 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %nla, ptr %9, align 4
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %10, align 4
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %11, align 4
  %sk = getelementptr inbounds %struct.nfnl_info, ptr %info, i32 0, i32 1
  %18 = ptrtoint ptr %sk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sk, align 4
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef null) #9
  br i1 %call.i, label %if.end.i, label %if.then2.nf_netlink_dump_start_rcu.exit_crit_edge

if.then2.nf_netlink_dump_start_rcu.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %nf_netlink_dump_start_rcu.exit

if.end.i:                                         ; preds = %if.then2
  %call.i2.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i2.i, label %if.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i5.i

if.end.i.rcu_read_unlock.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true.i5.i:                               ; preds = %if.end.i
  %call1.i3.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call1.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i7.i

land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i7.i:                              ; preds = %land.lhs.true.i5.i
  %.b4.i6.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i6.i, label %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i8.i

land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit.i

if.then.i8.i:                                     ; preds = %land.lhs.true2.i7.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.11) #9
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i8.i, %land.lhs.true2.i7.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i5.i.rcu_read_unlock.exit.i_crit_edge, %if.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !62
  %20 = tail call i32 @llvm.read_register.i32(metadata !52) #9
  %and.i.i.i.i.i9.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i9.i to ptr
  %preempt_count.i.i.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i10.i, align 4
  %sub.i.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i10.i, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %10, align 4
  %tobool.not.i11.i = icmp eq ptr %25, null
  br i1 %tobool.not.i11.i, label %if.then.i12.i, label %rcu_read_unlock.exit.i.netlink_dump_start.exit.i_crit_edge

rcu_read_unlock.exit.i.netlink_dump_start.exit.i_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %netlink_dump_start.exit.i

if.then.i12.i:                                    ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %10, align 4
  br label %netlink_dump_start.exit.i

netlink_dump_start.exit.i:                        ; preds = %if.then.i12.i, %rcu_read_unlock.exit.i.netlink_dump_start.exit.i_crit_edge
  %call.i13.i = call i32 @__netlink_dump_start(ptr noundef %19, ptr noundef %skb, ptr noundef %3, ptr noundef nonnull %c) #9
  %27 = call i32 @llvm.read_register.i32(metadata !52) #9
  %and.i.i.i.i.i.i = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %30, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !63
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i.i, label %netlink_dump_start.exit.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

netlink_dump_start.exit.i.rcu_read_lock.exit.i_crit_edge: ; preds = %netlink_dump_start.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %netlink_dump_start.exit.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #9
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %netlink_dump_start.exit.i.rcu_read_lock.exit.i_crit_edge
  call void @module_put(ptr noundef null) #9
  br label %nf_netlink_dump_start_rcu.exit

nf_netlink_dump_start_rcu.exit:                   ; preds = %rcu_read_lock.exit.i, %if.then2.nf_netlink_dump_start_rcu.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i13.i, %rcu_read_lock.exit.i ], [ -22, %if.then2.nf_netlink_dump_start_rcu.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %c) #9
  br label %return

return:                                           ; preds = %nf_netlink_dump_start_rcu.exit, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %nf_netlink_dump_start_rcu.exit ], [ -22, %entry.return_crit_edge ], [ -95, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_hook_dump_start(ptr nocapture noundef %cb) #2 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlh, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %data = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cb, align 4
  %6 = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_net.i, align 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %add.ptr.i, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #9
  %13 = call ptr @memset(ptr %name, i32 0, i32 16)
  %arrayidx = getelementptr ptr, ptr %3, i32 1
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %17)
  %cmp = icmp ugt i32 %17, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %12)
  %cmp3 = icmp eq i8 %12, 5
  br i1 %cmp3, label %if.then5, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %arrayidx6 = getelementptr ptr, ptr %3, i32 3
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %if.then5.cleanup_crit_edge, label %if.end8

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = call i32 @nla_strscpy(ptr noundef nonnull %name, ptr noundef nonnull %19, i32 noundef 16) #9
  br label %if.end11

if.end11:                                         ; preds = %if.end8, %if.end.if.end11_crit_edge
  %20 = call i32 @llvm.read_register.i32(metadata !52) #9
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %23, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !63
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %if.end11.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end11.rcu_read_lock.exit_crit_edge:            ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end11
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end11.rcu_read_lock.exit_crit_edge
  %call13 = call fastcc ptr @nfnl_hook_entries_head(i8 noundef zeroext %12, i32 noundef %17, ptr noundef %10, ptr noundef nonnull %name)
  %call.i52 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i52, label %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i55

rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i55:                                ; preds = %rcu_read_lock.exit
  %call1.i53 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53)
  %tobool.not.i54 = icmp eq i32 %call1.i53, 0
  br i1 %tobool.not.i54, label %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i57

land.lhs.true.i55.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i57:                               ; preds = %land.lhs.true.i55
  %.b4.i56 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i56, label %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, label %if.then.i58

land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i58:                                      ; preds = %land.lhs.true2.i57
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.11) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i58, %land.lhs.true2.i57.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i55.rcu_read_unlock.exit_crit_edge, %rcu_read_lock.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !62
  %24 = call i32 @llvm.read_register.i32(metadata !52) #9
  %and.i.i.i.i.i59 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i59 to ptr
  %preempt_count.i.i.i.i60 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i60, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i60, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then17, label %if.end19

if.then17:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %call13 to i32
  br label %cleanup

if.end19:                                         ; preds = %rcu_read_unlock.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 24) #12
  %tobool21.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool21.not, label %if.end19.cleanup_crit_edge, label %if.end23

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call i32 @strscpy(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %name, i32 noundef 16) #9
  %30 = ptrtoint ptr %call13 to i32
  %headv = getelementptr inbounds %struct.nfnl_dump_hook_data, ptr %call7.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %headv to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %headv, align 8
  %conv27 = trunc i32 %17 to i8
  %hook = getelementptr inbounds %struct.nfnl_dump_hook_data, ptr %call7.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %hook to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv27, ptr %hook, align 4
  %seq = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %33 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %seq, align 4
  %34 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call7.i.i, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end19.cleanup_crit_edge, %if.then17, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %28, %if.then17 ], [ 0, %if.end23 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then5.cleanup_crit_edge ], [ -12, %if.end19.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_hook_dump(ptr noundef %nlskb, ptr nocapture noundef %cb) #2 align 64 {
entry:
  %tmp.i8.i = alloca i8, align 1
  %tmp.i.i69 = alloca i32, align 4
  %tmp.i6.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %sym.i = alloca [266 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %0 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nlh, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %data = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i, align 2
  %6 = getelementptr inbounds %struct.sk_buff, ptr %nlskb, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_net.i, align 4
  %11 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %14 = tail call i32 @llvm.read_register.i32(metadata !52) #9
  %and.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %17, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !63
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %hook = getelementptr inbounds %struct.nfnl_dump_hook_data, ptr %3, i32 0, i32 2
  %18 = ptrtoint ptr %hook to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hook, align 4
  %conv3 = zext i8 %19 to i32
  %call4 = tail call fastcc ptr @nfnl_hook_entries_head(i8 noundef zeroext %5, i32 noundef %conv3, ptr noundef %10, ptr noundef %3)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %rcu_read_lock.exit.done_crit_edge, label %if.end

rcu_read_lock.exit.done_crit_edge:                ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end:                                           ; preds = %rcu_read_lock.exit
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %seq = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %20 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %seq, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr %seq, align 4
  br label %done

if.end7:                                          ; preds = %if.end
  %22 = ptrtoint ptr %call4 to i32
  %headv = getelementptr inbounds %struct.nfnl_dump_hook_data, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %headv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %headv, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp.not = icmp eq i32 %24, %22
  br i1 %cmp.not, label %lor.lhs.false, label %if.end7.if.then12_crit_edge

if.end7.if.then12_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end7
  %25 = ptrtoint ptr %call4 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %call4, align 4
  %conv9 = zext i16 %26 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv9)
  %cmp10.not = icmp ult i32 %13, %conv9
  br i1 %cmp10.not, label %lor.lhs.false.if.end15_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then12

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end7.if.then12_crit_edge
  %seq13 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %27 = ptrtoint ptr %seq13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %seq13, align 4
  %inc14 = add i32 %28, 1
  store i32 %inc14, ptr %seq13, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %lor.lhs.false.if.end15_crit_edge
  %29 = ptrtoint ptr %call4 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %call4, align 4
  %conv.i = zext i16 %30 to i32
  %arrayidx.i = getelementptr %struct.nf_hook_entries, ptr %call4, i32 0, i32 1, i32 %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv.i)
  %cmp1992 = icmp ult i32 %13, %conv.i
  br i1 %cmp1992, label %for.body.lr.ph, label %if.end15.done_crit_edge

if.end15.done_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.body.lr.ph:                                   ; preds = %if.end15
  %portid1.i = getelementptr inbounds %struct.sk_buff, ptr %nlskb, i32 0, i32 3, i32 12
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %nlskb, i32 0, i32 7
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %nlskb, i32 0, i32 17
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %nlskb, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.093 = phi i32 [ %13, %for.body.lr.ph ], [ %inc27, %for.inc.for.body_crit_edge ]
  %arrayidx21 = getelementptr ptr, ptr %arrayidx.i, i32 %i.093
  %31 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx21, align 4
  %33 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nlmsg_seq, align 4
  %37 = ptrtoint ptr %portid1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %portid1.i, align 4
  call void @llvm.lifetime.start.p0(i64 266, ptr nonnull %sym.i) #9
  %39 = call ptr @memset(ptr %sym.i, i32 255, i32 266)
  %40 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.i.not.i.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool.i.not.i.i.i.i, label %skb_tailroom.exit.i.i.i, label %for.body.nfnl_hook_dump_one.exit.thread_crit_edge

for.body.nfnl_hook_dump_one.exit.thread_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfnl_hook_dump_one.exit.thread

skb_tailroom.exit.i.i.i:                          ; preds = %for.body
  %42 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %end.i.i.i.i, align 4
  %44 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %sub.ptr.sub.i.i.i.i, 20
  br i1 %cmp.i.i.i, label %skb_tailroom.exit.i.i.i.nfnl_hook_dump_one.exit.thread_crit_edge, label %nlmsg_put.exit.i.i, !prof !64

skb_tailroom.exit.i.i.i.nfnl_hook_dump_one.exit.thread_crit_edge: ; preds = %skb_tailroom.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfnl_hook_dump_one.exit.thread

nlmsg_put.exit.i.i:                               ; preds = %skb_tailroom.exit.i.i.i
  %call3.i.i.i = call ptr @__nlmsg_put(ptr noundef %nlskb, i32 noundef %38, i32 noundef %36, i32 noundef 3072, i32 noundef 4, i32 noundef 2) #9
  %tobool.not.i.i = icmp eq ptr %call3.i.i.i, null
  br i1 %tobool.not.i.i, label %nlmsg_put.exit.i.i.nfnl_hook_dump_one.exit.thread_crit_edge, label %if.end.i

nlmsg_put.exit.i.i.nfnl_hook_dump_one.exit.thread_crit_edge: ; preds = %nlmsg_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nfnl_hook_dump_one.exit.thread

if.end.i:                                         ; preds = %nlmsg_put.exit.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 16
  %46 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %5, ptr %add.ptr.i.i.i.i, align 2
  %version1.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 17
  %47 = ptrtoint ptr %version1.i.i.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %version1.i.i.i, align 1
  %res_id2.i.i.i = getelementptr i8, ptr %call3.i.i.i, i32 18
  %48 = ptrtoint ptr %res_id2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %res_id2.i.i.i, align 2
  %49 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %32, align 4
  %call4.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %sym.i, i32 noundef 266, ptr noundef nonnull @.str.12, ptr noundef %50) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 265, i32 %call4.i)
  %cmp.i53 = icmp ugt i32 %call4.i, 265
  br i1 %cmp.i53, label %if.end.i.if.then.i.i_crit_edge, label %if.end7.i

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end7.i:                                        ; preds = %if.end.i
  %call9.i = call ptr @strstr(ptr noundef nonnull %sym.i, ptr noundef nonnull @.str.13) #9
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %if.end7.i.if.end20.i_crit_edge, label %if.then11.i

if.end7.i.if.end20.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then11.i:                                      ; preds = %if.end7.i
  %51 = ptrtoint ptr %call9.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 0, ptr %call9.i, align 1
  %add.ptr.i54 = getelementptr i8, ptr %call9.i, i32 2
  %call12.i = call ptr @strchr(ptr noundef %add.ptr.i54, i32 noundef 93) #9
  %tobool13.not.i = icmp eq ptr %call12.i, null
  br i1 %tobool13.not.i, label %if.then11.i.if.end20.i_crit_edge, label %if.then14.i

if.then11.i.if.end20.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.then11.i
  %52 = ptrtoint ptr %call12.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %call12.i, align 1
  %call.i.i = call i32 @strlen(ptr noundef %add.ptr.i54) #13
  %add.i.i = add i32 %call.i.i, 1
  %call1.i.i = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 5, i32 noundef %add.i.i, ptr noundef %add.ptr.i54) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool16.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool16.not.i, label %if.then14.i.if.end20.i_crit_edge, label %if.then14.i.if.then.i.i_crit_edge

if.then14.i.if.then.i.i_crit_edge:                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then14.i.if.end20.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then14.i.if.end20.i_crit_edge, %if.then11.i.if.end20.i_crit_edge, %if.end7.i.if.end20.i_crit_edge
  %call.i2.i = call i32 @strlen(ptr noundef nonnull %sym.i) #13
  %add.i3.i = add i32 %call.i2.i, 1
  %call1.i4.i = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 4, i32 noundef %add.i3.i, ptr noundef nonnull %sym.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i)
  %tobool23.not.i = icmp eq i32 %call1.i4.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end20.i.if.then.i.i_crit_edge

if.end20.i.if.then.i.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end25.i:                                       ; preds = %if.end20.i
  %pf.i = getelementptr inbounds %struct.nf_hook_ops, ptr %32, i32 0, i32 3
  %53 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %pf.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %54)
  %cmp27.i = icmp eq i8 %54, 1
  br i1 %cmp27.i, label %land.lhs.true.i55, label %if.end25.i.if.else.i_crit_edge

if.end25.i.if.else.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i55:                                ; preds = %if.end25.i
  %hooknum29.i = getelementptr inbounds %struct.nf_hook_ops, ptr %32, i32 0, i32 5
  %55 = ptrtoint ptr %hooknum29.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %hooknum29.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %56)
  %cmp30.i = icmp eq i32 %56, 5
  br i1 %cmp30.i, label %land.lhs.true.i55.if.end34.i_crit_edge, label %land.lhs.true.i55.if.else.i_crit_edge

land.lhs.true.i55.if.else.i_crit_edge:            ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true.i55.if.end34.i_crit_edge:           ; preds = %land.lhs.true.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34.i

if.else.i:                                        ; preds = %land.lhs.true.i55.if.else.i_crit_edge, %if.end25.i.if.else.i_crit_edge
  %hooknum33.i = getelementptr inbounds %struct.nf_hook_ops, ptr %32, i32 0, i32 5
  %57 = ptrtoint ptr %hooknum33.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hooknum33.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i, %land.lhs.true.i55.if.end34.i_crit_edge
  %hooknum.0.i = phi i32 [ %58, %if.else.i ], [ 0, %land.lhs.true.i55.if.end34.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #9
  %59 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %hooknum.0.i, ptr %tmp.i.i, align 4
  %call.i5.i = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i)
  %tobool36.not.i = icmp eq i32 %call.i5.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end34.i.if.then.i.i_crit_edge

if.end34.i.if.then.i.i_crit_edge:                 ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end38.i:                                       ; preds = %if.end34.i
  %priority.i = getelementptr inbounds %struct.nf_hook_ops, ptr %32, i32 0, i32 6
  %60 = ptrtoint ptr %priority.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %priority.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i6.i) #9
  %62 = ptrtoint ptr %tmp.i6.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %tmp.i6.i, align 4
  %call.i7.i = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i6.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i6.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i)
  %tobool40.not.i = icmp eq i32 %call.i7.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %if.end38.i.if.then.i.i_crit_edge

if.end38.i.if.then.i.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end42.i:                                       ; preds = %if.end38.i
  %63 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %6, align 4
  %skc_net.i.i = getelementptr inbounds %struct.sock_common, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %skc_net.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %skc_net.i.i, align 4
  %hook_ops_type.i = getelementptr inbounds %struct.nf_hook_ops, ptr %32, i32 0, i32 4
  %67 = ptrtoint ptr %hook_ops_type.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load.i = load i8, ptr %hook_ops_type.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.not.i70 = icmp eq i8 %bf.load.i, 1
  br i1 %cmp.not.i70, label %if.end.i72, label %if.end42.i.for.inc_crit_edge

if.end42.i.for.inc_crit_edge:                     ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end.i72:                                       ; preds = %if.end42.i
  %priv.i = getelementptr inbounds %struct.nf_hook_ops, ptr %32, i32 0, i32 2
  %68 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %priv.i, align 4
  %tobool.not.i71 = icmp eq ptr %69, null
  br i1 %tobool.not.i71, label %land.rhs.i, label %if.end41.i

land.rhs.i:                                       ; preds = %if.end.i72
  %.b2.i = load i1, ptr @nfnl_hook_put_nft_chain_info.__already_done, align 1
  br i1 %.b2.i, label %land.rhs.i.for.inc_crit_edge, label %if.then9.i, !prof !65

land.rhs.i.for.inc_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then9.i:                                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nfnl_hook_put_nft_chain_info.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 74, i32 noundef 9, ptr noundef null) #9
  br label %for.inc

if.end41.i:                                       ; preds = %if.end.i72
  %genmask.i = getelementptr inbounds %struct.nft_chain, ptr %69, i32 0, i32 8
  %70 = ptrtoint ptr %genmask.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %bf.load42.i = load i8, ptr %genmask.i, align 4
  %bf.clear.i = and i8 %bf.load42.i, 3
  %nft.i.i = getelementptr inbounds %struct.net, ptr %66, i32 0, i32 41
  %71 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load volatile i8, ptr %nft.i.i, align 4
  %conv.i.i = zext i8 %72 to i32
  %shl.i.i = shl nuw i32 1, %conv.i.i
  %conv1.i.i = trunc i32 %shl.i.i to i8
  %and1.i = and i8 %bf.clear.i, %conv1.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and1.i)
  %cmp45.i = icmp eq i8 %and1.i, 0
  br i1 %cmp45.i, label %if.end48.i, label %if.end41.i.for.inc_crit_edge

if.end41.i.for.inc_crit_edge:                     ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end48.i:                                       ; preds = %if.end41.i
  %73 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %tail.i.i.i.i, align 8
  %call1.i.i.i = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 32774, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp.i.i.i74 = icmp slt i32 %call1.i.i.i, 0
  %tobool50.not17.i = icmp eq ptr %74, null
  %tobool50.not.i = select i1 %cmp.i.i.i74, i1 true, i1 %tobool50.not17.i
  br i1 %tobool50.not.i, label %if.end48.i.if.then.i.i_crit_edge, label %if.end52.i

if.end48.i.if.then.i.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end52.i:                                       ; preds = %if.end48.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i69) #9
  %75 = ptrtoint ptr %tmp.i.i69 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %tmp.i.i69, align 4
  %call.i.i75 = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i69) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i69) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i75)
  %tobool54.not.i = icmp eq i32 %call.i.i75, 0
  br i1 %tobool54.not.i, label %if.end56.i, label %if.end52.i.if.then.i.i.i_crit_edge

if.end52.i.if.then.i.i.i_crit_edge:               ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.end56.i:                                       ; preds = %if.end52.i
  %76 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tail.i.i.i.i, align 8
  %call1.i.i5.i = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 32769, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i5.i)
  %cmp.i.i6.i = icmp slt i32 %call1.i.i5.i, 0
  %tobool58.not18.i = icmp eq ptr %77, null
  %tobool58.not.i = select i1 %cmp.i.i6.i, i1 true, i1 %tobool58.not18.i
  br i1 %tobool58.not.i, label %if.end56.i.if.then.i.i.i_crit_edge, label %if.end60.i

if.end56.i.if.then.i.i.i_crit_edge:               ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.end60.i:                                       ; preds = %if.end56.i
  %table.i = getelementptr inbounds %struct.nft_chain, ptr %69, i32 0, i32 5
  %78 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %table.i, align 8
  %name.i = getelementptr inbounds %struct.nft_table, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name.i, align 4
  %call61.i = call fastcc i32 @nla_put_string(ptr noundef %nlskb, i32 noundef 1, ptr noundef %81) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %tobool62.not.i = icmp eq i32 %call61.i, 0
  br i1 %tobool62.not.i, label %if.end64.i, label %if.end60.i.if.then.i.i.i_crit_edge

if.end60.i.if.then.i.i.i_crit_edge:               ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.end64.i:                                       ; preds = %if.end60.i
  %name65.i = getelementptr inbounds %struct.nft_chain, ptr %69, i32 0, i32 9
  %82 = ptrtoint ptr %name65.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %name65.i, align 8
  %call66.i = call fastcc i32 @nla_put_string(ptr noundef %nlskb, i32 noundef 3, ptr noundef %83) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66.i)
  %tobool67.not.i = icmp eq i32 %call66.i, 0
  br i1 %tobool67.not.i, label %if.end69.i, label %if.end64.i.if.then.i.i.i_crit_edge

if.end64.i.if.then.i.i.i_crit_edge:               ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.end69.i:                                       ; preds = %if.end64.i
  %84 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %table.i, align 8
  %family.i = getelementptr inbounds %struct.nft_table, ptr %85, i32 0, i32 9
  %86 = ptrtoint ptr %family.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %bf.load71.i = load i16, ptr %family.i, align 4
  %bf.lshr.i = lshr i16 %bf.load71.i, 10
  %conv72.i = trunc i16 %bf.lshr.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i8.i) #9
  %87 = ptrtoint ptr %tmp.i8.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %conv72.i, ptr %tmp.i8.i, align 1
  %call.i9.i = call i32 @nla_put(ptr noundef %nlskb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i8.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i8.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i)
  %tobool74.not.i = icmp eq i32 %call.i9.i, 0
  br i1 %tobool74.not.i, label %if.end76.i, label %if.end69.i.if.then.i.i.i_crit_edge

if.end69.i.if.then.i.i.i_crit_edge:               ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.end76.i:                                       ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i76 = ptrtoint ptr %89 to i32
  %sub.ptr.rhs.cast.i.i77 = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i.i78 = sub i32 %sub.ptr.lhs.cast.i.i76, %sub.ptr.rhs.cast.i.i77
  %conv.i10.i = trunc i32 %sub.ptr.sub.i.i78 to i16
  %90 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv.i10.i, ptr %77, align 2
  %91 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i12.i = ptrtoint ptr %91 to i32
  %sub.ptr.rhs.cast.i13.i = ptrtoint ptr %74 to i32
  %sub.ptr.sub.i14.i = sub i32 %sub.ptr.lhs.cast.i12.i, %sub.ptr.rhs.cast.i13.i
  %conv.i15.i = trunc i32 %sub.ptr.sub.i14.i to i16
  %92 = ptrtoint ptr %74 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv.i15.i, ptr %74, align 2
  br label %for.inc

if.then.i.i.i:                                    ; preds = %if.end69.i.if.then.i.i.i_crit_edge, %if.end64.i.if.then.i.i.i_crit_edge, %if.end60.i.if.then.i.i.i_crit_edge, %if.end56.i.if.then.i.i.i_crit_edge, %if.end52.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %nlskb, i32 0, i32 19
  %93 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i16.i = icmp ugt ptr %94, %74
  br i1 %cmp.i.i16.i, label %do.end.i.i.i, label %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge, !prof !64

if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_nest_cancel.exit.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %nla_nest_cancel.exit.i

nla_nest_cancel.exit.i:                           ; preds = %do.end.i.i.i, %if.then.i.i.i.nla_nest_cancel.exit.i_crit_edge
  %95 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %74 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %96 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %nlskb, i32 noundef %sub.ptr.sub.i.i.i) #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %nla_nest_cancel.exit.i, %if.end48.i.if.then.i.i_crit_edge, %if.end38.i.if.then.i.i_crit_edge, %if.end34.i.if.then.i.i_crit_edge, %if.end20.i.if.then.i.i_crit_edge, %if.then14.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %nlskb, i32 0, i32 19
  %97 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %98, %call3.i.i.i
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i12.i_crit_edge, !prof !64

if.then.i.i.if.end.i12.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i12.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.14, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i12.i

if.end.i12.i:                                     ; preds = %do.end.i.i, %if.then.i.i.if.end.i12.i_crit_edge
  %99 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i9.i = ptrtoint ptr %call3.i.i.i to i32
  %sub.ptr.rhs.cast.i10.i = ptrtoint ptr %100 to i32
  %sub.ptr.sub.i11.i = sub i32 %sub.ptr.lhs.cast.i9.i, %sub.ptr.rhs.cast.i10.i
  call void @skb_trim(ptr noundef %nlskb, i32 noundef %sub.ptr.sub.i11.i) #9
  br label %nfnl_hook_dump_one.exit.thread

nfnl_hook_dump_one.exit.thread:                   ; preds = %if.end.i12.i, %nlmsg_put.exit.i.i.nfnl_hook_dump_one.exit.thread_crit_edge, %skb_tailroom.exit.i.i.i.nfnl_hook_dump_one.exit.thread_crit_edge, %for.body.nfnl_hook_dump_one.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 266, ptr nonnull %sym.i) #9
  br label %done

for.inc:                                          ; preds = %if.end76.i, %if.end41.i.for.inc_crit_edge, %if.then9.i, %land.rhs.i.for.inc_crit_edge, %if.end42.i.for.inc_crit_edge
  %101 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %102 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call3.i.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %103 = ptrtoint ptr %call3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %sub.ptr.sub.i.i, ptr %call3.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 266, ptr nonnull %sym.i) #9
  %inc27 = add nuw nsw i32 %i.093, 1
  %104 = ptrtoint ptr %call4 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %call4, align 4
  %conv18 = zext i16 %105 to i32
  %cmp19 = icmp ult i32 %inc27, %conv18
  br i1 %cmp19, label %for.inc.for.body_crit_edge, label %for.inc.done_crit_edge

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

done:                                             ; preds = %for.inc.done_crit_edge, %nfnl_hook_dump_one.exit.thread, %if.end15.done_crit_edge, %if.then6, %rcu_read_lock.exit.done_crit_edge
  %i.1 = phi i32 [ %13, %if.then6 ], [ %13, %rcu_read_lock.exit.done_crit_edge ], [ %i.093, %nfnl_hook_dump_one.exit.thread ], [ %13, %if.end15.done_crit_edge ], [ %inc27, %for.inc.done_crit_edge ]
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %nlskb, i32 0, i32 19
  %106 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i, align 4
  %prev_seq.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 10
  %108 = ptrtoint ptr %prev_seq.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %prev_seq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i56 = icmp eq i32 %109, 0
  br i1 %tobool.not.i56, label %done.nl_dump_check_consistent.exit_crit_edge, label %land.lhs.true.i57

done.nl_dump_check_consistent.exit_crit_edge:     ; preds = %done
  call void @__sanitizer_cov_trace_pc() #11
  br label %nl_dump_check_consistent.exit

land.lhs.true.i57:                                ; preds = %done
  %seq.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %110 = ptrtoint ptr %seq.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %seq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %111, i32 %109)
  %cmp.not.i = icmp eq i32 %111, %109
  br i1 %cmp.not.i, label %land.lhs.true.i57.nl_dump_check_consistent.exit_crit_edge, label %if.then.i58

land.lhs.true.i57.nl_dump_check_consistent.exit_crit_edge: ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #11
  br label %nl_dump_check_consistent.exit

if.then.i58:                                      ; preds = %land.lhs.true.i57
  call void @__sanitizer_cov_trace_pc() #11
  %nlmsg_flags.i = getelementptr inbounds %struct.nlmsghdr, ptr %107, i32 0, i32 2
  %112 = ptrtoint ptr %nlmsg_flags.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %nlmsg_flags.i, align 2
  %114 = or i16 %113, 16
  store i16 %114, ptr %nlmsg_flags.i, align 2
  br label %nl_dump_check_consistent.exit

nl_dump_check_consistent.exit:                    ; preds = %if.then.i58, %land.lhs.true.i57.nl_dump_check_consistent.exit_crit_edge, %done.nl_dump_check_consistent.exit_crit_edge
  %seq3.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 11
  %115 = ptrtoint ptr %seq3.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %seq3.i, align 4
  %117 = ptrtoint ptr %prev_seq.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %prev_seq.i, align 4
  %call.i60 = call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i60, label %nl_dump_check_consistent.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i63

nl_dump_check_consistent.exit.rcu_read_unlock.exit_crit_edge: ; preds = %nl_dump_check_consistent.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i63:                                ; preds = %nl_dump_check_consistent.exit
  %call1.i61 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i61)
  %tobool.not.i62 = icmp eq i32 %call1.i61, 0
  br i1 %tobool.not.i62, label %land.lhs.true.i63.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i65

land.lhs.true.i63.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i65:                               ; preds = %land.lhs.true.i63
  %.b4.i64 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i64, label %land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge, label %if.then.i66

land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i66:                                      ; preds = %land.lhs.true2.i65
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.11) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i66, %land.lhs.true2.i65.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i63.rcu_read_unlock.exit_crit_edge, %nl_dump_check_consistent.exit.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !62
  %118 = call i32 @llvm.read_register.i32(metadata !52) #9
  %and.i.i.i.i.i67 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i.i.i.i67 to ptr
  %preempt_count.i.i.i.i68 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %preempt_count.i.i.i.i68 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %preempt_count.i.i.i.i68, align 4
  %sub.i.i.i = add i32 %121, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i68, align 4
  call void @rcu_read_unlock_strict() #9
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  %122 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %i.1, ptr %11, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %nlskb, i32 0, i32 6
  %123 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %len, align 4
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nfnl_hook_dump_stop(ptr nocapture noundef readonly %cb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nfnl_hook_entries_head(i8 noundef zeroext %pf, i32 noundef %hook, ptr noundef %net, ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %pf to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i8 %pf, label %entry.cleanup_crit_edge [
    i8 2, label %sw.bb
    i8 10, label %sw.bb13
    i8 3, label %sw.bb38
    i8 7, label %sw.bb63
    i8 12, label %sw.bb88
    i8 5, label %sw.bb113
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %hook)
  %cmp = icmp ugt i32 %hook, 4
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %arrayidx = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 3, i32 %hook
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true6

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b204 = load i1, ptr @nfnl_hook_entries_head.__warned, align 1
  br i1 %.b204, label %land.lhs.true6.cleanup_crit_edge, label %land.lhs.true6.cleanup.sink.split_crit_edge

land.lhs.true6.cleanup.sink.split_crit_edge:      ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %hook)
  %cmp14 = icmp ugt i32 %hook, 4
  br i1 %cmp14, label %sw.bb13.cleanup_crit_edge, label %if.end18

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %sw.bb13
  %arrayidx24 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 4, i32 %hook
  %3 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %arrayidx24, align 4
  %call26 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true28:                                  ; preds = %if.end18
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true28.cleanup_crit_edge, label %land.lhs.true31

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %.b192203 = load i1, ptr @nfnl_hook_entries_head.__warned.5, align 1
  br i1 %.b192203, label %land.lhs.true31.cleanup_crit_edge, label %land.lhs.true31.cleanup.sink.split_crit_edge

land.lhs.true31.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true31.cleanup_crit_edge:                ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb38:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %hook)
  %cmp39 = icmp ugt i32 %hook, 2
  br i1 %cmp39, label %sw.bb38.cleanup_crit_edge, label %if.end43

sw.bb38.cleanup_crit_edge:                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end43:                                         ; preds = %sw.bb38
  %arrayidx49 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 5, i32 %hook
  %5 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %arrayidx49, align 4
  %call51 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %land.lhs.true53, label %if.end43.cleanup_crit_edge

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true53:                                  ; preds = %if.end43
  %call54 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true53.cleanup_crit_edge, label %land.lhs.true56

land.lhs.true53.cleanup_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %.b193202 = load i1, ptr @nfnl_hook_entries_head.__warned.6, align 1
  br i1 %.b193202, label %land.lhs.true56.cleanup_crit_edge, label %land.lhs.true56.cleanup.sink.split_crit_edge

land.lhs.true56.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true56.cleanup_crit_edge:                ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb63:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %hook)
  %cmp64 = icmp ugt i32 %hook, 4
  br i1 %cmp64, label %sw.bb63.cleanup_crit_edge, label %if.end68

sw.bb63.cleanup_crit_edge:                        ; preds = %sw.bb63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end68:                                         ; preds = %sw.bb63
  %arrayidx74 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 6, i32 %hook
  %7 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx74, align 4
  %call76 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %land.lhs.true78, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true78:                                  ; preds = %if.end68
  %call79 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %land.lhs.true78.cleanup_crit_edge, label %land.lhs.true81

land.lhs.true78.cleanup_crit_edge:                ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true81:                                  ; preds = %land.lhs.true78
  %.b194201 = load i1, ptr @nfnl_hook_entries_head.__warned.7, align 1
  br i1 %.b194201, label %land.lhs.true81.cleanup_crit_edge, label %land.lhs.true81.cleanup.sink.split_crit_edge

land.lhs.true81.cleanup.sink.split_crit_edge:     ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true81.cleanup_crit_edge:                ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb88:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %hook)
  %cmp89 = icmp ugt i32 %hook, 6
  br i1 %cmp89, label %sw.bb88.cleanup_crit_edge, label %if.end93

sw.bb88.cleanup_crit_edge:                        ; preds = %sw.bb88
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end93:                                         ; preds = %sw.bb88
  %arrayidx99 = getelementptr %struct.net, ptr %net, i32 0, i32 39, i32 7, i32 %hook
  %9 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %arrayidx99, align 4
  %call101 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %land.lhs.true103, label %if.end93.cleanup_crit_edge

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true103:                                 ; preds = %if.end93
  %call104 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %land.lhs.true103.cleanup_crit_edge, label %land.lhs.true106

land.lhs.true103.cleanup_crit_edge:               ; preds = %land.lhs.true103
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true106:                                 ; preds = %land.lhs.true103
  %.b195200 = load i1, ptr @nfnl_hook_entries_head.__warned.8, align 1
  br i1 %.b195200, label %land.lhs.true106.cleanup_crit_edge, label %land.lhs.true106.cleanup.sink.split_crit_edge

land.lhs.true106.cleanup.sink.split_crit_edge:    ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true106.cleanup_crit_edge:               ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb113:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %hook)
  %cmp114 = icmp ugt i32 %hook, 1
  br i1 %cmp114, label %sw.bb113.cleanup_crit_edge, label %if.end118

sw.bb113.cleanup_crit_edge:                       ; preds = %sw.bb113
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end118:                                        ; preds = %sw.bb113
  %tobool119.not = icmp eq ptr %dev, null
  br i1 %tobool119.not, label %if.end118.cleanup_crit_edge, label %if.end122

if.end118.cleanup_crit_edge:                      ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end122:                                        ; preds = %if.end118
  %call123 = tail call ptr @dev_get_by_name_rcu(ptr noundef %net, ptr noundef nonnull %dev) #9
  %tobool124.not = icmp eq ptr %call123, null
  br i1 %tobool124.not, label %if.end122.cleanup_crit_edge, label %if.end127

if.end122.cleanup_crit_edge:                      ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end127:                                        ; preds = %if.end122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hook)
  %cmp128 = icmp eq i32 %hook, 0
  br i1 %cmp128, label %if.then130, label %if.then151

if.then130:                                       ; preds = %if.end127
  %nf_hooks_ingress = getelementptr inbounds %struct.net_device, ptr %call123, i32 0, i32 98
  %11 = ptrtoint ptr %nf_hooks_ingress to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %nf_hooks_ingress, align 16
  %call136 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %land.lhs.true138, label %if.then130.cleanup_crit_edge

if.then130.cleanup_crit_edge:                     ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true138:                                 ; preds = %if.then130
  %call139 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %land.lhs.true138.cleanup_crit_edge, label %land.lhs.true141

land.lhs.true138.cleanup_crit_edge:               ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true141:                                 ; preds = %land.lhs.true138
  %.b196199 = load i1, ptr @nfnl_hook_entries_head.__warned.9, align 1
  br i1 %.b196199, label %land.lhs.true141.cleanup_crit_edge, label %land.lhs.true141.cleanup.sink.split_crit_edge

land.lhs.true141.cleanup.sink.split_crit_edge:    ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true141.cleanup_crit_edge:               ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then151:                                       ; preds = %if.end127
  %nf_hooks_egress = getelementptr inbounds %struct.net_device, ptr %call123, i32 0, i32 112
  %13 = ptrtoint ptr %nf_hooks_egress to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %nf_hooks_egress, align 16
  %call157 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %land.lhs.true159, label %if.then151.cleanup_crit_edge

if.then151.cleanup_crit_edge:                     ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true159:                                 ; preds = %if.then151
  %call160 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %land.lhs.true159.cleanup_crit_edge, label %land.lhs.true162

land.lhs.true159.cleanup_crit_edge:               ; preds = %land.lhs.true159
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true162:                                 ; preds = %land.lhs.true159
  %.b197198 = load i1, ptr @nfnl_hook_entries_head.__warned.10, align 1
  br i1 %.b197198, label %land.lhs.true162.cleanup_crit_edge, label %land.lhs.true162.cleanup.sink.split_crit_edge

land.lhs.true162.cleanup.sink.split_crit_edge:    ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

land.lhs.true162.cleanup_crit_edge:               ; preds = %land.lhs.true162
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup.sink.split:                               ; preds = %land.lhs.true162.cleanup.sink.split_crit_edge, %land.lhs.true141.cleanup.sink.split_crit_edge, %land.lhs.true106.cleanup.sink.split_crit_edge, %land.lhs.true81.cleanup.sink.split_crit_edge, %land.lhs.true56.cleanup.sink.split_crit_edge, %land.lhs.true31.cleanup.sink.split_crit_edge, %land.lhs.true6.cleanup.sink.split_crit_edge
  %nfnl_hook_entries_head.__warned.sink = phi ptr [ @nfnl_hook_entries_head.__warned, %land.lhs.true6.cleanup.sink.split_crit_edge ], [ @nfnl_hook_entries_head.__warned.5, %land.lhs.true31.cleanup.sink.split_crit_edge ], [ @nfnl_hook_entries_head.__warned.6, %land.lhs.true56.cleanup.sink.split_crit_edge ], [ @nfnl_hook_entries_head.__warned.7, %land.lhs.true81.cleanup.sink.split_crit_edge ], [ @nfnl_hook_entries_head.__warned.8, %land.lhs.true106.cleanup.sink.split_crit_edge ], [ @nfnl_hook_entries_head.__warned.9, %land.lhs.true141.cleanup.sink.split_crit_edge ], [ @nfnl_hook_entries_head.__warned.10, %land.lhs.true162.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 197, %land.lhs.true6.cleanup.sink.split_crit_edge ], [ 202, %land.lhs.true31.cleanup.sink.split_crit_edge ], [ 208, %land.lhs.true56.cleanup.sink.split_crit_edge ], [ 215, %land.lhs.true81.cleanup.sink.split_crit_edge ], [ 222, %land.lhs.true106.cleanup.sink.split_crit_edge ], [ 239, %land.lhs.true141.cleanup.sink.split_crit_edge ], [ 243, %land.lhs.true162.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi ptr [ %2, %land.lhs.true6.cleanup.sink.split_crit_edge ], [ %4, %land.lhs.true31.cleanup.sink.split_crit_edge ], [ %6, %land.lhs.true56.cleanup.sink.split_crit_edge ], [ %8, %land.lhs.true81.cleanup.sink.split_crit_edge ], [ %10, %land.lhs.true106.cleanup.sink.split_crit_edge ], [ %12, %land.lhs.true141.cleanup.sink.split_crit_edge ], [ %14, %land.lhs.true162.cleanup.sink.split_crit_edge ]
  %15 = ptrtoint ptr %nfnl_hook_entries_head.__warned.sink to i32
  call void @__asan_store1_noabort(i32 %15)
  store i1 true, ptr %nfnl_hook_entries_head.__warned.sink, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef %.sink, ptr noundef nonnull @.str.4) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true162.cleanup_crit_edge, %land.lhs.true159.cleanup_crit_edge, %if.then151.cleanup_crit_edge, %land.lhs.true141.cleanup_crit_edge, %land.lhs.true138.cleanup_crit_edge, %if.then130.cleanup_crit_edge, %if.end122.cleanup_crit_edge, %if.end118.cleanup_crit_edge, %sw.bb113.cleanup_crit_edge, %land.lhs.true106.cleanup_crit_edge, %land.lhs.true103.cleanup_crit_edge, %if.end93.cleanup_crit_edge, %sw.bb88.cleanup_crit_edge, %land.lhs.true81.cleanup_crit_edge, %land.lhs.true78.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %sw.bb63.cleanup_crit_edge, %land.lhs.true56.cleanup_crit_edge, %land.lhs.true53.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %sw.bb38.cleanup_crit_edge, %land.lhs.true31.cleanup_crit_edge, %land.lhs.true28.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %land.lhs.true141.cleanup_crit_edge ], [ %12, %land.lhs.true138.cleanup_crit_edge ], [ %12, %if.then130.cleanup_crit_edge ], [ %14, %land.lhs.true162.cleanup_crit_edge ], [ %14, %land.lhs.true159.cleanup_crit_edge ], [ %14, %if.then151.cleanup_crit_edge ], [ %2, %land.lhs.true6.cleanup_crit_edge ], [ %2, %land.lhs.true.cleanup_crit_edge ], [ %2, %if.end.cleanup_crit_edge ], [ %4, %land.lhs.true31.cleanup_crit_edge ], [ %4, %land.lhs.true28.cleanup_crit_edge ], [ %4, %if.end18.cleanup_crit_edge ], [ %6, %land.lhs.true56.cleanup_crit_edge ], [ %6, %land.lhs.true53.cleanup_crit_edge ], [ %6, %if.end43.cleanup_crit_edge ], [ %8, %land.lhs.true81.cleanup_crit_edge ], [ %8, %land.lhs.true78.cleanup_crit_edge ], [ %8, %if.end68.cleanup_crit_edge ], [ %10, %land.lhs.true106.cleanup_crit_edge ], [ %10, %land.lhs.true103.cleanup_crit_edge ], [ %10, %if.end93.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.bb.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.bb13.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.bb38.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.bb63.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %sw.bb88.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %sw.bb113.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end118.cleanup_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.end122.cleanup_crit_edge ], [ inttoptr (i32 -93 to ptr), %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_string(ptr noundef %skb, i32 noundef %attrtype, ptr noundef %str) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @strlen(ptr noundef %str) #14
  %add = add i32 %call, 1
  %call1 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef %attrtype, i32 noundef %add, ptr noundef %str) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__netlink_dump_start(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfnetlink_subsys_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !42, !44, !46, !48, !50}
!llvm.named.register.sp = !{!52}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__UNIQUE_ID_alias538, !1, !"__UNIQUE_ID_alias538", i1 false, i1 false}
!1 = !{!"../net/netfilter/nfnetlink_hook.c", i32 383, i32 1}
!2 = !{ptr @__initcall__kmod_nfnetlink_hook__539_395_nfnetlink_hook_init6, !3, !"__initcall__kmod_nfnetlink_hook__539_395_nfnetlink_hook_init6", i1 false, i1 false}
!3 = !{!"../net/netfilter/nfnetlink_hook.c", i32 395, i32 1}
!4 = !{ptr @__exitcall_nfnetlink_hook_exit, !5, !"__exitcall_nfnetlink_hook_exit", i1 false, i1 false}
!5 = !{!"../net/netfilter/nfnetlink_hook.c", i32 396, i32 1}
!6 = !{ptr @__UNIQUE_ID_file540, !7, !"__UNIQUE_ID_file540", i1 false, i1 false}
!7 = !{!"../net/netfilter/nfnetlink_hook.c", i32 398, i32 1}
!8 = !{ptr @__UNIQUE_ID_license541, !7, !"__UNIQUE_ID_license541", i1 false, i1 false}
!9 = !{ptr @__UNIQUE_ID_author542, !10, !"__UNIQUE_ID_author542", i1 false, i1 false}
!10 = !{!"../net/netfilter/nfnetlink_hook.c", i32 399, i32 1}
!11 = !{ptr @__UNIQUE_ID_description543, !12, !"__UNIQUE_ID_description543", i1 false, i1 false}
!12 = !{!"../net/netfilter/nfnetlink_hook.c", i32 400, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nfnetlink_hook.c", i32 377, i32 13}
!15 = !{ptr @nfhook_subsys, !16, !"nfhook_subsys", i1 false, i1 false}
!16 = !{!"../net/netfilter/nfnetlink_hook.c", i32 376, i32 41}
!17 = !{ptr @nfnl_hook_cb, !18, !"nfnl_hook_cb", i1 false, i1 false}
!18 = !{!"../net/netfilter/nfnetlink_hook.c", i32 367, i32 35}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../net/netfilter/nfnetlink_hook.c", i32 197, i32 15}
!25 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/netfilter/nfnetlink_hook.c", i32 202, i32 15}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/netfilter/nfnetlink_hook.c", i32 208, i32 15}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/netfilter/nfnetlink_hook.c", i32 215, i32 15}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/netfilter/nfnetlink_hook.c", i32 222, i32 15}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../net/netfilter/nfnetlink_hook.c", i32 239, i32 11}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/netfilter/nfnetlink_hook.c", i32 243, i32 11}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/netfilter/nfnetlink_hook.c", i32 134, i32 35}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/netfilter/nfnetlink_hook.c", i32 140, i32 28}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../net/netfilter/nfnetlink_hook.c", i32 74, i32 6}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/net/netlink.h", i32 991, i32 3}
!50 = !{ptr @nfnl_hook_nla_policy, !51, !"nfnl_hook_nla_policy", i1 false, i1 false}
!51 = !{!"../net/netfilter/nfnetlink_hook.c", i32 25, i32 32}
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
!62 = !{i64 2149363959}
!63 = !{i64 2149363693}
!64 = !{!"branch_weights", i32 1, i32 2000}
!65 = !{!"branch_weights", i32 2000, i32 1}
