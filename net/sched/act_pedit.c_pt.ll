; ModuleID = '/llk/IR_all_yes/net/sched/act_pedit.c_pt.bc'
source_filename = "../net/sched/act_pedit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tc_action_ops = type { %struct.list_head, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.104 }
%union.anon.104 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tc_action = type { ptr, i32, ptr, i32, %struct.refcount_struct, %struct.atomic_t, i32, %struct.tcf_t, %struct.gnet_stats_basic_sync, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, [12 x i8] }
%struct.tcf_t = type { i64, i64, i64, i64 }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.tcf_pedit = type { %struct.tc_action, i8, i8, ptr, ptr }
%struct.tc_pedit_key = type { i32, i32, i32, i32, i32, i32 }
%struct.tcf_pedit_key_ex = type { i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tc_pedit_sel = type { i32, i32, i32, i32, i32, i8, i8, [0 x %struct.tc_pedit_key] }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.nlattr = type { i16, i16 }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.127, ptr }
%union.anon.127 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, i64, i64, i64, i32 }
%struct.anon.129 = type { i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.63, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.63 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.64, i32, %struct.spinlock }
%union.anon.64 = type { %struct.anon.65 }
%struct.anon.65 = type { ptr, ptr }
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
%struct.tc_action_net = type { ptr, ptr }
%struct.tcf_idrinfo = type { %struct.mutex, %struct.idr, ptr }

@__UNIQUE_ID_author368 = internal constant [42 x i8] c"act_pedit.author=Jamal Hadi Salim(2002-4)\00", section ".modinfo", align 1
@__UNIQUE_ID_description369 = internal constant [52 x i8] c"act_pedit.description=Generic Packet Editor actions\00", section ".modinfo", align 1
@__UNIQUE_ID_file370 = internal constant [35 x i8] c"act_pedit.file=net/sched/act_pedit\00", section ".modinfo", align 1
@__UNIQUE_ID_license371 = internal constant [22 x i8] c"act_pedit.license=GPL\00", section ".modinfo", align 1
@act_pedit_ops = internal global { %struct.tc_action_ops, [48 x i8] } { %struct.tc_action_ops { %struct.list_head zeroinitializer, [16 x i8] c"pedit\00\00\00\00\00\00\00\00\00\00\00", i32 7, i32 288, ptr null, ptr @tcf_pedit_act, ptr @tcf_pedit_dump, ptr @tcf_pedit_cleanup, ptr @tcf_pedit_search, ptr @tcf_pedit_init, ptr @tcf_pedit_walker, ptr @tcf_pedit_stats_update, ptr null, ptr null, ptr null, ptr @tcf_pedit_offload_act_setup }, [48 x i8] zeroinitializer }, align 32
@pedit_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @pedit_init_net, ptr null, ptr null, ptr @pedit_exit_net, ptr @pedit_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_act_pedit__372_571_pedit_init_module6 = internal global ptr @pedit_init_module, section ".initcall6.init", align 4
@__exitcall_pedit_cleanup_module = internal global ptr @pedit_cleanup_module, section ".exitcall.exit", align 4
@tcf_pedit_act._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 344, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016tc action pedit bad header type specified (0x%x)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tcf_pedit_act\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/sched/act_pedit.c\00", [42 x i8] zeroinitializer }, align 32
@tcf_pedit_act._entry_ptr = internal global ptr @tcf_pedit_act._entry, section ".printk_index", align 4
@tcf_pedit_act._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016tc action pedit 'at' offset %d out of bounds\0A\00", [48 x i8] zeroinitializer }, align 32
@tcf_pedit_act._entry_ptr.5 = internal global ptr @tcf_pedit_act._entry.3, section ".printk_index", align 4
@tcf_pedit_act._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 364, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016tc action pedit offset must be on 32 bit boundaries\0A\00", [41 x i8] zeroinitializer }, align 32
@tcf_pedit_act._entry_ptr.8 = internal global ptr @tcf_pedit_act._entry.6, section ".printk_index", align 4
@tcf_pedit_act._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 370, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016tc action pedit offset %d out of bounds\0A\00", [53 x i8] zeroinitializer }, align 32
@tcf_pedit_act._entry_ptr.11 = internal global ptr @tcf_pedit_act._entry.9, section ".printk_index", align 4
@tcf_pedit_act._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016tc action pedit bad command (%d)\0A\00", [60 x i8] zeroinitializer }, align 32
@tcf_pedit_act._entry_ptr.14 = internal global ptr @tcf_pedit_act._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pedit BUG: index %d\0A\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.18 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@pedit_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@tcf_pedit_init.__msg = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"act_pedit: Pedit requires attributes to be passed\00", [46 x i8] zeroinitializer }, align 32
@pedit_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 24, %union.anon.104 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@tcf_pedit_init.__msg.24 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"act_pedit: Missing required TCA_PEDIT_PARMS or TCA_PEDIT_PARMS_EX pedit attribute\00", [46 x i8] zeroinitializer }, align 32
@tcf_pedit_init.__msg.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"act_pedit: Pedit requires keys to be passed\00", [52 x i8] zeroinitializer }, align 32
@tcf_pedit_init.__msg.26 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"Length of TCA_PEDIT_PARMS or TCA_PEDIT_PARMS_EX pedit attribute is invalid\00", [53 x i8] zeroinitializer }, align 32
@pedit_key_ex_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.104 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@tc_act_hw_stats.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.27 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/act_api.h\00", [42 x i8] zeroinitializer }, align 32
@tc_action_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tn->idrinfo->lock\00", [45 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"act_pedit_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 523, i32 29 }
@___asan_gen_.35 = private unnamed_addr constant [14 x i8] c"pedit_net_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 550, i32 33 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 343, i32 5 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 352, i32 6 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 364, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 369, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 387, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 399, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 271, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 991, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [13 x i8] c"pedit_net_id\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 24, i32 21 }
@___asan_gen_.90 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 45, i32 7 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 695, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 723, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 156, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [13 x i8] c"pedit_policy\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 27, i32 32 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 169, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 175, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 180, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c"pedit_key_ex_policy\00", align 1
@___asan_gen_.117 = private constant [25 x i8] c"../net/sched/act_pedit.c\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.117, i32 32, i32 32 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 95, i32 6 }
@___asan_gen_.126 = private unnamed_addr constant [25 x i8] c"../include/net/act_api.h\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 156, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.131 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.132 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 378, i32 2 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author368, ptr @__UNIQUE_ID_description369, ptr @__UNIQUE_ID_file370, ptr @__UNIQUE_ID_license371, ptr @__exitcall_pedit_cleanup_module, ptr @__initcall__kmod_act_pedit__372_571_pedit_init_module6, ptr @pedit_cleanup_module, ptr @tcf_pedit_act._entry, ptr @tcf_pedit_act._entry.12, ptr @tcf_pedit_act._entry.3, ptr @tcf_pedit_act._entry.6, ptr @tcf_pedit_act._entry.9, ptr @tcf_pedit_act._entry_ptr, ptr @tcf_pedit_act._entry_ptr.11, ptr @tcf_pedit_act._entry_ptr.14, ptr @tcf_pedit_act._entry_ptr.5, ptr @tcf_pedit_act._entry_ptr.8, ptr @act_pedit_ops, ptr @pedit_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @pedit_net_id, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @tcf_pedit_init.__msg, ptr @pedit_policy, ptr @tcf_pedit_init.__msg.24, ptr @tcf_pedit_init.__msg.25, ptr @tcf_pedit_init.__msg.26, ptr @pedit_key_ex_policy, ptr @.str.27, ptr @tc_action_net_init.__key, ptr @.str.28, ptr @xa_init_flags.__key, ptr @.str.29], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_pedit_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pedit_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_pedit_act._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_pedit_act._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_pedit_act._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_pedit_act._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_pedit_act._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pedit_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_pedit_init.__msg to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pedit_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_pedit_init.__msg.24 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_pedit_init.__msg.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_pedit_init.__msg.26 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pedit_key_ex_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_action_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pedit_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @tcf_unregister_action(ptr noundef nonnull @act_pedit_ops, ptr noundef nonnull @pedit_net_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_unregister_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pedit_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_register_action(ptr noundef nonnull @act_pedit_ops, ptr noundef nonnull @pedit_net_ops) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_pedit_act(ptr noundef %skb, ptr noundef %a, ptr nocapture noundef readnone %res) #2 align 64 {
entry:
  %hdata = alloca i32, align 4
  %_d = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %entry.if.end_crit_edge, label %skb_cloned.exit.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

skb_cloned.exit.i:                                ; preds = %entry
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #11
  %3 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %4, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.if.end_crit_edge, label %skb_unclone.exit

skb_cloned.exit.i.if.end_crit_edge:               ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

skb_unclone.exit:                                 ; preds = %skb_cloned.exit.i
  %call7.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not = icmp eq i32 %call7.i, 0
  br i1 %tobool.not, label %skb_unclone.exit.if.end_crit_edge, label %skb_unclone.exit.cleanup126_crit_edge

skb_unclone.exit.cleanup126_crit_edge:            ; preds = %skb_unclone.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup126

skb_unclone.exit.if.end_crit_edge:                ; preds = %skb_unclone.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %skb_unclone.exit.if.end_crit_edge, %skb_cloned.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %tcfa_lock) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lastuse.i, align 8
  %conv.i = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %7, i64 %conv.i)
  %cmp.not.i = icmp eq i64 %7, %conv.i
  br i1 %cmp.not.i, label %if.end.if.end.i_crit_edge, label %if.then.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv.i, ptr %lastuse.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end.if.end.i_crit_edge
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %9 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not.i = icmp eq i64 %10, 0
  br i1 %tobool.not.i, label %if.then7.i, label %if.end.i.tcf_lastuse_update.exit_crit_edge, !prof !90

if.end.i.tcf_lastuse_update.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcf_lastuse_update.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv.i, ptr %firstuse.i, align 8
  br label %tcf_lastuse_update.exit

tcf_lastuse_update.exit:                          ; preds = %if.then7.i, %if.end.i.tcf_lastuse_update.exit_crit_edge
  %tcfp_nkeys = getelementptr inbounds %struct.tcf_pedit, ptr %a, i32 0, i32 1
  %12 = ptrtoint ptr %tcfp_nkeys to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %tcfp_nkeys, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp.not = icmp eq i8 %13, 0
  br i1 %cmp.not, label %do.end103, label %if.then4

if.then4:                                         ; preds = %tcf_lastuse_update.exit
  %conv = zext i8 %13 to i32
  %tcfp_keys = getelementptr inbounds %struct.tcf_pedit, ptr %a, i32 0, i32 3
  %14 = ptrtoint ptr %tcfp_keys to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tcfp_keys, align 4
  %tcfp_keys_ex = getelementptr inbounds %struct.tcf_pedit, ptr %a, i32 0, i32 4
  %16 = ptrtoint ptr %tcfp_keys_ex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tcfp_keys_ex, align 8
  %transport_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %.sink.in.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %data.i26.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i = icmp eq ptr %skb, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then4
  %i.0272 = phi i32 [ %conv, %if.then4 ], [ %dec, %for.inc.for.body_crit_edge ]
  %tkey.0270 = phi ptr [ %15, %if.then4 ], [ %incdec.ptr91, %for.inc.for.body_crit_edge ]
  %tkey_ex.0269 = phi ptr [ %17, %if.then4 ], [ %tkey_ex.1, %for.inc.for.body_crit_edge ]
  %cmd.0268 = phi i32 [ 0, %if.then4 ], [ %cmd.1, %for.inc.for.body_crit_edge ]
  %htype.0267 = phi i32 [ 0, %if.then4 ], [ %htype.1, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdata) #11
  %18 = ptrtoint ptr %hdata to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %hdata, align 4, !annotation !91
  %off = getelementptr inbounds %struct.tc_pedit_key, ptr %tkey.0270, i32 0, i32 2
  %19 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %off, align 4
  %tobool9.not = icmp eq ptr %tkey_ex.0269, null
  br i1 %tobool9.not, label %for.body.if.end13_crit_edge, label %if.then10

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %21 = ptrtoint ptr %tkey_ex.0269 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tkey_ex.0269, align 4
  %cmd12 = getelementptr inbounds %struct.tcf_pedit_key_ex, ptr %tkey_ex.0269, i32 0, i32 1
  %23 = ptrtoint ptr %cmd12 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cmd12, align 4
  %incdec.ptr = getelementptr %struct.tcf_pedit_key_ex, ptr %tkey_ex.0269, i32 1
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %for.body.if.end13_crit_edge
  %htype.1 = phi i32 [ %22, %if.then10 ], [ %htype.0267, %for.body.if.end13_crit_edge ]
  %cmd.1 = phi i32 [ %24, %if.then10 ], [ %cmd.0268, %for.body.if.end13_crit_edge ]
  %tkey_ex.1 = phi ptr [ %incdec.ptr, %if.then10 ], [ null, %for.body.if.end13_crit_edge ]
  %25 = zext i32 %htype.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %htype.1, label %if.end13.do.end_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %if.end13.sw.bb2.i_crit_edge
    i32 2, label %if.end13.sw.bb2.i_crit_edge363
    i32 3, label %if.end13.sw.bb2.i_crit_edge364
    i32 4, label %if.end13.sw.bb4.i_crit_edge
    i32 5, label %if.end13.sw.bb4.i_crit_edge365
  ]

if.end13.sw.bb4.i_crit_edge365:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4.i

if.end13.sw.bb4.i_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4.i

if.end13.sw.bb2.i_crit_edge364:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

if.end13.sw.bb2.i_crit_edge363:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

if.end13.sw.bb2.i_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb2.i

if.end13.do.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

sw.bb.i:                                          ; preds = %if.end13
  %26 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %mac_header.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %27)
  %cmp.i.not.i178 = icmp eq i16 %27, -1
  br i1 %cmp.i.not.i178, label %sw.bb.i.do.end_crit_edge, label %sw.bb.i.if.end18_crit_edge

sw.bb.i.if.end18_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

sw.bb.i.do.end_crit_edge:                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

sw.bb2.i:                                         ; preds = %if.end13.sw.bb2.i_crit_edge, %if.end13.sw.bb2.i_crit_edge363, %if.end13.sw.bb2.i_crit_edge364
  %28 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %network_header.i.i.i, align 4
  br label %if.end18

sw.bb4.i:                                         ; preds = %if.end13.sw.bb4.i_crit_edge, %if.end13.sw.bb4.i_crit_edge365
  %30 = ptrtoint ptr %transport_header.i.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %transport_header.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %31)
  %cmp.i22.not.i = icmp eq i16 %31, -1
  br i1 %cmp.i22.not.i, label %sw.bb4.i.do.end_crit_edge, label %sw.bb4.i.if.end18_crit_edge

sw.bb4.i.if.end18_crit_edge:                      ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

sw.bb4.i.do.end_crit_edge:                        ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %sw.bb4.i.do.end_crit_edge, %sw.bb.i.do.end_crit_edge, %if.end13.do.end_crit_edge
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %htype.1) #14
  br label %cleanup92.thread

if.end18:                                         ; preds = %sw.bb4.i.if.end18_crit_edge, %sw.bb2.i, %sw.bb.i.if.end18_crit_edge
  %.sink30.i = phi i16 [ %29, %sw.bb2.i ], [ %27, %sw.bb.i.if.end18_crit_edge ], [ %31, %sw.bb4.i.if.end18_crit_edge ]
  %32 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %.sink.i = load ptr, ptr %.sink.in.i, align 8
  %conv.i.i24.i = zext i16 %.sink30.i to i32
  %add.ptr.i.i25.i = getelementptr i8, ptr %.sink.i, i32 %conv.i.i24.i
  %33 = ptrtoint ptr %data.i26.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i26.i, align 4
  %sub.ptr.lhs.cast.i27.i = ptrtoint ptr %add.ptr.i.i25.i to i32
  %sub.ptr.rhs.cast.i28.i = ptrtoint ptr %34 to i32
  %sub.ptr.sub.i29.i = sub i32 %sub.ptr.lhs.cast.i27.i, %sub.ptr.rhs.cast.i28.i
  %offmask = getelementptr inbounds %struct.tc_pedit_key, ptr %tkey.0270, i32 0, i32 4
  %35 = ptrtoint ptr %offmask to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %offmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool19.not = icmp eq i32 %36, 0
  br i1 %tobool19.not, label %if.end18.if.end41_crit_edge, label %if.then20

if.end18.if.end41_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.then20:                                        ; preds = %if.end18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %_d) #11
  %37 = ptrtoint ptr %_d to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 -1, ptr %_d, align 1, !annotation !91
  %at = getelementptr inbounds %struct.tc_pedit_key, ptr %tkey.0270, i32 0, i32 3
  %38 = ptrtoint ptr %at to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %at, align 4
  %add = add i32 %39, %sub.ptr.sub.i29.i
  %sub.i = sub i32 0, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp.i = icmp sgt i32 %add, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i181

land.lhs.true.i:                                  ; preds = %if.then20
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %add)
  %cmp1.i = icmp ult i32 %41, %add
  br i1 %cmp1.i, label %land.lhs.true.i.do.end25_crit_edge, label %land.lhs.true.i.if.end30_crit_edge

land.lhs.true.i.if.end30_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

land.lhs.true.i.do.end25_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

if.end.i181:                                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp2.i = icmp slt i32 %add, 0
  br i1 %cmp2.i, label %land.lhs.true3.i, label %if.end.i181.if.end30_crit_edge

if.end.i181.if.end30_crit_edge:                   ; preds = %if.end.i181
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

land.lhs.true3.i:                                 ; preds = %if.end.i181
  %42 = ptrtoint ptr %data.i26.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %data.i26.i, align 4
  %44 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %.sink.in.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %43 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %45 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i, i32 %sub.i)
  %cmp4.i = icmp ult i32 %sub.ptr.sub.i.i, %sub.i
  br i1 %cmp4.i, label %land.lhs.true3.i.do.end25_crit_edge, label %land.lhs.true3.i.if.end30_crit_edge

land.lhs.true3.i.if.end30_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end30

land.lhs.true3.i.do.end25_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end25

do.end25:                                         ; preds = %land.lhs.true3.i.do.end25_crit_edge, %land.lhs.true.i.do.end25_crit_edge
  %call29 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %add) #14
  br label %cleanup.thread

if.end30:                                         ; preds = %land.lhs.true3.i.if.end30_crit_edge, %if.end.i181.if.end30_crit_edge, %land.lhs.true.i.if.end30_crit_edge
  %46 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i, align 4
  %48 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %data_len.i.i, align 8
  %50 = add i32 %add, %49
  %sub.i4.i = sub i32 %47, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 1
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !90

if.end.i.i:                                       ; preds = %if.end30
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add, ptr noundef nonnull %_d, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i.cleanup_crit_edge

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.i.i.cleanup.thread_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

skb_header_pointer.exit:                          ; preds = %if.end30
  %51 = ptrtoint ptr %data.i26.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i26.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %52, i32 %add
  %tobool34.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool34.not, label %skb_header_pointer.exit.cleanup.thread_crit_edge, label %skb_header_pointer.exit.cleanup_crit_edge

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

skb_header_pointer.exit.cleanup.thread_crit_edge: ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %skb_header_pointer.exit.cleanup.thread_crit_edge, %lor.lhs.false.i.i.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge, %do.end25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_d) #11
  br label %cleanup92.thread

cleanup:                                          ; preds = %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge
  %retval.0.i.i234 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.cleanup_crit_edge ], [ %_d, %lor.lhs.false.i.i.cleanup_crit_edge ]
  %53 = ptrtoint ptr %retval.0.i.i234 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %retval.0.i.i234, align 1
  %conv37 = zext i8 %54 to i32
  %55 = ptrtoint ptr %offmask to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %offmask, align 4
  %and = and i32 %56, %conv37
  %shift = getelementptr inbounds %struct.tc_pedit_key, ptr %tkey.0270, i32 0, i32 5
  %57 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %shift, align 4
  %shr = lshr i32 %and, %58
  %add39 = add i32 %shr, %20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %_d) #11
  br label %if.end41

if.end41:                                         ; preds = %cleanup, %if.end18.if.end41_crit_edge
  %offset.1 = phi i32 [ %add39, %cleanup ], [ %20, %if.end18.if.end41_crit_edge ]
  %59 = and i32 %offset.1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool42.not = icmp eq i32 %59, 0
  br i1 %tobool42.not, label %if.end49, label %do.end46

do.end46:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %call48 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #14
  br label %cleanup92.thread

if.end49:                                         ; preds = %if.end41
  %add50 = add i32 %offset.1, %sub.ptr.sub.i29.i
  %sub.i189 = sub i32 0, %add50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add50)
  %cmp.i183 = icmp sgt i32 %add50, 0
  br i1 %cmp.i183, label %land.lhs.true.i186, label %if.end.i188

land.lhs.true.i186:                               ; preds = %if.end49
  %60 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %add50)
  %cmp1.i185 = icmp ult i32 %61, %add50
  br i1 %cmp1.i185, label %land.lhs.true.i186.do.end55_crit_edge, label %land.lhs.true.i186.if.end59_crit_edge

land.lhs.true.i186.if.end59_crit_edge:            ; preds = %land.lhs.true.i186
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

land.lhs.true.i186.do.end55_crit_edge:            ; preds = %land.lhs.true.i186
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

if.end.i188:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add50)
  %cmp2.i187 = icmp slt i32 %add50, 0
  br i1 %cmp2.i187, label %land.lhs.true3.i196, label %if.end.i188.if.end59_crit_edge

if.end.i188.if.end59_crit_edge:                   ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

land.lhs.true3.i196:                              ; preds = %if.end.i188
  %62 = ptrtoint ptr %data.i26.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i26.i, align 4
  %64 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %.sink.in.i, align 8
  %sub.ptr.lhs.cast.i.i192 = ptrtoint ptr %63 to i32
  %sub.ptr.rhs.cast.i.i193 = ptrtoint ptr %65 to i32
  %sub.ptr.sub.i.i194 = sub i32 %sub.ptr.lhs.cast.i.i192, %sub.ptr.rhs.cast.i.i193
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i194, i32 %sub.i189)
  %cmp4.i195 = icmp ult i32 %sub.ptr.sub.i.i194, %sub.i189
  br i1 %cmp4.i195, label %land.lhs.true3.i196.do.end55_crit_edge, label %land.lhs.true3.i196.if.end59_crit_edge

land.lhs.true3.i196.if.end59_crit_edge:           ; preds = %land.lhs.true3.i196
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end59

land.lhs.true3.i196.do.end55_crit_edge:           ; preds = %land.lhs.true3.i196
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

do.end55:                                         ; preds = %land.lhs.true3.i196.do.end55_crit_edge, %land.lhs.true.i186.do.end55_crit_edge
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %add50) #14
  br label %cleanup92.thread

if.end59:                                         ; preds = %land.lhs.true3.i196.if.end59_crit_edge, %if.end.i188.if.end59_crit_edge, %land.lhs.true.i186.if.end59_crit_edge
  %66 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len.i, align 4
  %68 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %data_len.i.i, align 8
  %70 = add i32 %add50, %69
  %sub.i4.i202 = sub i32 %67, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i202)
  %cmp.not.i.i203 = icmp slt i32 %sub.i4.i202, 4
  br i1 %cmp.not.i.i203, label %if.end.i.i208, label %skb_header_pointer.exit214, !prof !90

if.end.i.i208:                                    ; preds = %if.end59
  br i1 %tobool2.not.i.i, label %if.end.i.i208.cleanup92.thread_crit_edge, label %lor.lhs.false.i.i212

if.end.i.i208.cleanup92.thread_crit_edge:         ; preds = %if.end.i.i208
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup92.thread

lor.lhs.false.i.i212:                             ; preds = %if.end.i.i208
  %call.i.i209 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add50, ptr noundef nonnull %hdata, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i209)
  %cmp3.i.i210 = icmp slt i32 %call.i.i209, 0
  br i1 %cmp3.i.i210, label %lor.lhs.false.i.i212.cleanup92.thread_crit_edge, label %lor.lhs.false.i.i212.if.end64_crit_edge

lor.lhs.false.i.i212.if.end64_crit_edge:          ; preds = %lor.lhs.false.i.i212
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

lor.lhs.false.i.i212.cleanup92.thread_crit_edge:  ; preds = %lor.lhs.false.i.i212
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup92.thread

skb_header_pointer.exit214:                       ; preds = %if.end59
  %71 = ptrtoint ptr %data.i26.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data.i26.i, align 4
  %add.ptr.i.i205 = getelementptr i8, ptr %72, i32 %add50
  %tobool62.not = icmp eq ptr %add.ptr.i.i205, null
  br i1 %tobool62.not, label %skb_header_pointer.exit214.cleanup92.thread_crit_edge, label %skb_header_pointer.exit214.if.end64_crit_edge

skb_header_pointer.exit214.if.end64_crit_edge:    ; preds = %skb_header_pointer.exit214
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

skb_header_pointer.exit214.cleanup92.thread_crit_edge: ; preds = %skb_header_pointer.exit214
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup92.thread

if.end64:                                         ; preds = %skb_header_pointer.exit214.if.end64_crit_edge, %lor.lhs.false.i.i212.if.end64_crit_edge
  %retval.0.i.i213245 = phi ptr [ %add.ptr.i.i205, %skb_header_pointer.exit214.if.end64_crit_edge ], [ %hdata, %lor.lhs.false.i.i212.if.end64_crit_edge ]
  %73 = zext i32 %cmd.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %cmd.1, label %do.end72 [
    i32 0, label %sw.bb
    i32 1, label %sw.bb66
  ]

sw.bb:                                            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %val65 = getelementptr inbounds %struct.tc_pedit_key, ptr %tkey.0270, i32 0, i32 1
  %74 = ptrtoint ptr %val65 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %val65, align 4
  br label %sw.epilog

sw.bb66:                                          ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %76 = ptrtoint ptr %retval.0.i.i213245 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %retval.0.i.i213245, align 4
  %val67 = getelementptr inbounds %struct.tc_pedit_key, ptr %tkey.0270, i32 0, i32 1
  %78 = ptrtoint ptr %val67 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val67, align 4
  %add68 = add i32 %79, %77
  %80 = ptrtoint ptr %tkey.0270 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %tkey.0270, align 4
  %neg = xor i32 %81, -1
  %and69 = and i32 %add68, %neg
  br label %sw.epilog

do.end72:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %call74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %cmd.1) #14
  br label %cleanup92.thread

sw.epilog:                                        ; preds = %sw.bb66, %sw.bb
  %val.0 = phi i32 [ %and69, %sw.bb66 ], [ %75, %sw.bb ]
  %82 = ptrtoint ptr %retval.0.i.i213245 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %retval.0.i.i213245, align 4
  %84 = ptrtoint ptr %tkey.0270 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tkey.0270, align 4
  %and76 = and i32 %85, %83
  %xor = xor i32 %and76, %val.0
  store i32 %xor, ptr %retval.0.i.i213245, align 4
  %cmp77 = icmp eq ptr %retval.0.i.i213245, %hdata
  br i1 %cmp77, label %if.then79, label %sw.epilog.for.inc_crit_edge

sw.epilog.for.inc_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then79:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %call81 = call i32 @skb_store_bits(ptr noundef %skb, i32 noundef %add50, ptr noundef nonnull %hdata, i32 noundef 4) #11
  br label %for.inc

cleanup92.thread:                                 ; preds = %do.end72, %skb_header_pointer.exit214.cleanup92.thread_crit_edge, %lor.lhs.false.i.i212.cleanup92.thread_crit_edge, %if.end.i.i208.cleanup92.thread_crit_edge, %do.end55, %do.end46, %cleanup.thread, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdata) #11
  br label %bad

for.inc:                                          ; preds = %if.then79, %sw.epilog.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdata) #11
  %dec = add nsw i32 %i.0272, -1
  %incdec.ptr91 = getelementptr %struct.tc_pedit_key, ptr %tkey.0270, i32 1
  %cmp7 = icmp sgt i32 %i.0272, 1
  br i1 %cmp7, label %for.inc.for.body_crit_edge, label %for.inc.done_crit_edge

for.inc.done_crit_edge:                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %done

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

do.end103:                                        ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  %tcfa_index = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 3
  %86 = ptrtoint ptr %tcfa_index to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %tcfa_index, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 399, i32 noundef 9, ptr noundef nonnull @.str.15, i32 noundef %87) #11
  br label %bad

bad:                                              ; preds = %do.end103, %cleanup92.thread
  %overlimits = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 10, i32 4
  %88 = ptrtoint ptr %overlimits to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %overlimits, align 16
  %inc = add i32 %89, 1
  store i32 %inc, ptr %overlimits, align 16
  br label %done

done:                                             ; preds = %bad, %for.inc.done_crit_edge
  %tcfa_bstats = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %90 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %cb.i.i.i, align 4
  %end.i.i.i215 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %92 = ptrtoint ptr %end.i.i.i215 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %end.i.i.i215, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %93, i32 0, i32 4
  %94 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %95)
  %tobool.i.not.i = icmp eq i16 %95, 0
  br i1 %tobool.i.not.i, label %done.cond.end.i_crit_edge, label %cond.true.i

done.cond.end.i_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %done
  call void @__sanitizer_cov_trace_pc() #13
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %93, i32 0, i32 5
  %96 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %gso_segs.i, align 2
  %conv4.i = zext i16 %97 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %done.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv4.i, %cond.true.i ], [ 1, %done.cond.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %98 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i.i.i.i = icmp eq i32 %98, 0
  br i1 %tobool.not.i.i.i.i, label %cond.end.i.bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i

cond.end.i.bstats_update.exit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bstats_update.exit

land.lhs.true.i.i.i.i:                            ; preds = %cond.end.i
  %99 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i.i.i.i.i.i.i = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %102, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !92
  %103 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i.i.i.i.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 3
  %105 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %106
  %107 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %108, ptrtoint (ptr @lockdep_recursion to i32)
  %109 = inttoptr i32 %add.i.i.i.i to ptr
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load volatile i32, ptr %109, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !93
  %112 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i.i.i7.i.i.i.i = and i32 %112, -16384
  %113 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %115, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool20.not.i.i.i.i = icmp eq i32 %111, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bstats_update.exit

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %116 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i.i.i.i.i.i = and i32 %116, -16384
  %117 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %117, i32 0, i32 1
  %118 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %cmp.i.i.i.i = icmp eq i32 %119, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.bstats_update.exit_crit_edge

land.rhs.i.i.i.i.bstats_update.exit_crit_edge:    ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bstats_update.exit

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %120 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i.i.i9.i.i.i.i = and i32 %120, -16384
  %121 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %121, i32 0, i32 1
  %122 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %123, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !94
  %124 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %125
  %126 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %127, ptrtoint (ptr @hardirqs_enabled to i32)
  %128 = inttoptr i32 %add47.i.i.i.i to ptr
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %128, align 4
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !95
  %131 = call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i.i.i12.i.i.i.i = and i32 %131, -16384
  %132 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 1
  %133 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %134, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool54.not.i.i.i.i = icmp eq i32 %130, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.bstats_update.exit_crit_edge:  ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bstats_update.exit

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, label %if.then.i.i.i.i, !prof !96

land.rhs58.i.i.i.i.bstats_update.exit_crit_edge:  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bstats_update.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.17, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %bstats_update.exit

bstats_update.exit:                               ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge, %cond.end.i.bstats_update.exit_crit_edge
  %conv.i216 = zext i32 %91 to i64
  %syncp.i.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8, i32 2
  %135 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %136, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !97
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8, i32 2, i32 0, i32 1
  %137 = call ptr @llvm.returnaddress(i32 0) #11
  %138 = ptrtoint ptr %137 to i32
  call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %138) #11
  %139 = ptrtoint ptr %tcfa_bstats to i32
  call void @__asan_load8_noabort(i32 %139)
  %140 = load i64, ptr %tcfa_bstats, align 8
  %add.i.i.i = add i64 %140, %conv.i216
  store i64 %add.i.i.i, ptr %tcfa_bstats, align 8
  %packets2.i.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8, i32 1
  %conv.i7.i.i = zext i32 %cond.i to i64
  %141 = ptrtoint ptr %packets2.i.i to i32
  call void @__asan_load8_noabort(i32 %141)
  %142 = load i64, ptr %packets2.i.i, align 8
  %add.i8.i.i = add i64 %142, %conv.i7.i.i
  store i64 %add.i8.i.i, ptr %packets2.i.i, align 8
  call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %138) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !98
  %143 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %144, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  call void @_raw_spin_unlock(ptr noundef %tcfa_lock) #11
  br label %cleanup126

cleanup126:                                       ; preds = %bstats_update.exit, %skb_unclone.exit.cleanup126_crit_edge
  %retval.0.in = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %145 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %145)
  %retval.0 = load i32, ptr %retval.0.in, align 8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_pedit_dump(ptr noundef %skb, ptr noundef %a, i32 noundef %bind, i32 noundef %ref) #2 align 64 {
entry:
  %tmp.i32.i = alloca i16, align 2
  %tmp.i.i = alloca i16, align 2
  %t = alloca %struct.tcf_t, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #11
  %2 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 3
  %tcfp_nkeys = getelementptr inbounds %struct.tcf_pedit, ptr %a, i32 0, i32 1
  %5 = call ptr @memset(ptr %t, i32 255, i32 32)
  %6 = ptrtoint ptr %tcfp_nkeys to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tcfp_nkeys, align 16
  %conv = zext i8 %7 to i32
  %8 = mul nuw nsw i32 %conv, 24
  %spec.select.i92 = add nuw nsw i32 %8, 24
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i92, i32 noundef 2848) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !90

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #11
  %keys = getelementptr inbounds %struct.tc_pedit_sel, ptr %call9.i.i, i32 0, i32 7
  %tcfp_keys = getelementptr inbounds %struct.tcf_pedit, ptr %a, i32 0, i32 3
  %9 = ptrtoint ptr %tcfp_keys to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tcfp_keys, align 4
  %11 = ptrtoint ptr %tcfp_nkeys to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tcfp_nkeys, align 16
  %conv7 = zext i8 %12 to i32
  %13 = mul nuw nsw i32 %conv7, 24
  %14 = call ptr @memcpy(ptr %keys, ptr %10, i32 %13)
  %tcfa_index = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 3
  %15 = ptrtoint ptr %tcfa_index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tcfa_index, align 4
  %17 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %call9.i.i, align 128
  %nkeys = getelementptr inbounds %struct.tc_pedit_sel, ptr %call9.i.i, i32 0, i32 5
  %18 = ptrtoint ptr %nkeys to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %12, ptr %nkeys, align 4
  %tcfp_flags = getelementptr inbounds %struct.tcf_pedit, ptr %a, i32 0, i32 2
  %19 = ptrtoint ptr %tcfp_flags to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tcfp_flags, align 1
  %flags = getelementptr inbounds %struct.tc_pedit_sel, ptr %call9.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %flags, align 1
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %22 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tcfa_action, align 8
  %action = getelementptr inbounds %struct.tc_pedit_sel, ptr %call9.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %action, align 8
  %tcfa_refcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_refcnt, i32 noundef 4) #11
  %25 = ptrtoint ptr %tcfa_refcnt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %tcfa_refcnt, align 4
  %sub = sub i32 %26, %ref
  %refcnt = getelementptr inbounds %struct.tc_pedit_sel, ptr %call9.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %refcnt, align 4
  %tcfa_bindcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_bindcnt, i32 noundef 4) #11
  %28 = ptrtoint ptr %tcfa_bindcnt to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %tcfa_bindcnt, align 4
  %sub16 = sub i32 %29, %bind
  %bindcnt = getelementptr inbounds %struct.tc_pedit_sel, ptr %call9.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %bindcnt to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %sub16, ptr %bindcnt, align 16
  %tcfp_keys_ex = getelementptr inbounds %struct.tcf_pedit, ptr %a, i32 0, i32 4
  %31 = ptrtoint ptr %tcfp_keys_ex to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tcfp_keys_ex, align 8
  %tobool17.not = icmp eq ptr %32, null
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end
  %33 = ptrtoint ptr %tcfp_nkeys to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %tcfp_nkeys, align 16
  %35 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %tail.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i83 = icmp slt i32 %call1.i.i, 0
  %tobool.not47.i = icmp eq ptr %36, null
  %tobool.not.i = select i1 %cmp.i.i83, i1 true, i1 %tobool.not47.i
  br i1 %tobool.not.i, label %if.then18.nla_put_failure_crit_edge, label %for.cond.preheader.i

if.then18.nla_put_failure_crit_edge:              ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_put_failure

for.cond.preheader.i:                             ; preds = %if.then18
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp44.i.not = icmp eq i8 %34, 0
  br i1 %cmp44.i.not, label %for.cond.preheader.i.if.end25_crit_edge, label %for.body.i.preheader

for.cond.preheader.i.if.end25_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %conv21 = zext i8 %34 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %n.addr.046.i = phi i32 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ %conv21, %for.body.i.preheader ]
  %keys_ex.addr.045.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %32, %for.body.i.preheader ]
  %37 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i, align 8
  %call1.i29.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i29.i)
  %cmp.i30.i = icmp slt i32 %call1.i29.i, 0
  %tobool2.not43.i = icmp eq ptr %38, null
  %tobool2.not.i = select i1 %cmp.i30.i, i1 true, i1 %tobool2.not43.i
  br i1 %tobool2.not.i, label %for.body.i.if.then.i.i.i_crit_edge, label %if.end4.i

for.body.i.if.then.i.i.i_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

if.end4.i:                                        ; preds = %for.body.i
  %39 = ptrtoint ptr %keys_ex.addr.045.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %keys_ex.addr.045.i, align 4
  %conv.i = trunc i32 %40 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #11
  %41 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i, ptr %tmp.i.i, align 2
  %call.i.i84 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i84)
  %tobool6.not.i = icmp eq i32 %call.i.i84, 0
  br i1 %tobool6.not.i, label %lor.lhs.false.i, label %if.end4.i.if.then.i.i.i_crit_edge

if.end4.i.if.then.i.i.i_crit_edge:                ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

lor.lhs.false.i:                                  ; preds = %if.end4.i
  %cmd.i = getelementptr inbounds %struct.tcf_pedit_key_ex, ptr %keys_ex.addr.045.i, i32 0, i32 1
  %42 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cmd.i, align 4
  %conv7.i = trunc i32 %43 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i32.i) #11
  %44 = ptrtoint ptr %tmp.i32.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv7.i, ptr %tmp.i32.i, align 2
  %call.i33.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i32.i) #11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i32.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33.i)
  %tobool9.not.i = icmp eq i32 %call.i33.i, 0
  br i1 %tobool9.not.i, label %for.inc.i, label %lor.lhs.false.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i.i

for.inc.i:                                        ; preds = %lor.lhs.false.i
  %45 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %38 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %47 = ptrtoint ptr %38 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i.i, ptr %38, align 2
  %incdec.ptr.i = getelementptr %struct.tcf_pedit_key_ex, ptr %keys_ex.addr.045.i, i32 1
  %dec.i = add nsw i32 %n.addr.046.i, -1
  %cmp.i = icmp sgt i32 %n.addr.046.i, 1
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end25_crit_edge

for.inc.i.if.end25_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end25

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false.i.if.then.i.i.i_crit_edge, %if.end4.i.if.then.i.i.i_crit_edge, %for.body.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %48 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i85 = icmp ugt ptr %49, %36
  br i1 %cmp.i.i.i85, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !90

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %50 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %36 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %51 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #11
  br label %nla_put_failure

if.end25:                                         ; preds = %for.inc.i.if.end25_crit_edge, %for.cond.preheader.i.if.end25_crit_edge
  %52 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i36.i = ptrtoint ptr %53 to i32
  %sub.ptr.rhs.cast.i37.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i38.i = sub i32 %sub.ptr.lhs.cast.i36.i, %sub.ptr.rhs.cast.i37.i
  %conv.i39.i = trunc i32 %sub.ptr.sub.i38.i to i16
  %54 = ptrtoint ptr %36 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i39.i, ptr %36, align 2
  %call26 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef %spec.select.i92, ptr noundef nonnull %call9.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end25.if.end34_crit_edge, label %if.end25.nla_put_failure_crit_edge

if.end25.nla_put_failure_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_put_failure

if.end25.if.end34_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.else:                                          ; preds = %if.end
  %call30 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef %spec.select.i92, ptr noundef nonnull %call9.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.else.if.end34_crit_edge, label %if.else.nla_put_failure_crit_edge

if.else.nla_put_failure_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_put_failure

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.end34:                                         ; preds = %if.else.if.end34_crit_edge, %if.end25.if.end34_crit_edge
  %tcfa_tm = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %56 = ptrtoint ptr %tcfa_tm to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %tcfa_tm, align 8
  %58 = trunc i64 %57 to i32
  %conv1.i = sub i32 %55, %58
  %call.i = call i32 @jiffies_to_clock_t(i32 noundef %conv1.i) #11
  %conv2.i = sext i32 %call.i to i64
  %59 = ptrtoint ptr %t to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv2.i, ptr %t, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %60 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %61 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %lastuse.i, align 8
  %63 = trunc i64 %62 to i32
  %conv6.i = sub i32 %60, %63
  %call7.i = call i32 @jiffies_to_clock_t(i32 noundef %conv6.i) #11
  %conv8.i = sext i32 %call7.i to i64
  %64 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv8.i, ptr %2, align 8
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %65 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %66)
  %tobool.not.i87 = icmp eq i64 %66, 0
  br i1 %tobool.not.i87, label %if.end34.tcf_tm_dump.exit_crit_edge, label %cond.true.i

if.end34.tcf_tm_dump.exit_crit_edge:              ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcf_tm_dump.exit

cond.true.i:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %68 = trunc i64 %66 to i32
  %conv13.i = sub i32 %67, %68
  %call14.i = call i32 @jiffies_to_clock_t(i32 noundef %conv13.i) #11
  br label %tcf_tm_dump.exit

tcf_tm_dump.exit:                                 ; preds = %cond.true.i, %if.end34.tcf_tm_dump.exit_crit_edge
  %cond.i = phi i32 [ %call14.i, %cond.true.i ], [ 0, %if.end34.tcf_tm_dump.exit_crit_edge ]
  %conv15.i = sext i32 %cond.i to i64
  %69 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv15.i, ptr %4, align 8
  %expires.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 2
  %70 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %expires.i, align 8
  %conv17.i = trunc i64 %71 to i32
  %call18.i = call i32 @jiffies_to_clock_t(i32 noundef %conv17.i) #11
  %conv19.i = sext i32 %call18.i to i64
  %72 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv19.i, ptr %3, align 8
  %call36 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 32, ptr noundef nonnull %t, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %tcf_tm_dump.exit.nla_put_failure_crit_edge

tcf_tm_dump.exit.nla_put_failure_crit_edge:       ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_put_failure

if.end39:                                         ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #11
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %73 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %tcf_tm_dump.exit.nla_put_failure_crit_edge, %if.else.nla_put_failure_crit_edge, %if.end25.nla_put_failure_crit_edge, %if.end.i.i.i, %if.then18.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #11
  %tobool.not.i88 = icmp eq ptr %1, null
  br i1 %tobool.not.i88, label %nla_put_failure.nlmsg_trim.exit_crit_edge, label %if.then.i

nla_put_failure.nlmsg_trim.exit_crit_edge:        ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #13
  br label %nlmsg_trim.exit

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %75 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i, align 4
  %cmp.i89 = icmp ugt ptr %76, %1
  br i1 %cmp.i89, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !90

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %77 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %78 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #11
  br label %nlmsg_trim.exit

nlmsg_trim.exit:                                  ; preds = %if.end.i, %nla_put_failure.nlmsg_trim.exit_crit_edge
  call void @kfree(ptr noundef nonnull %call9.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %nlmsg_trim.exit, %if.end39, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nlmsg_trim.exit ], [ %74, %if.end39 ], [ -105, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_pedit_cleanup(ptr nocapture noundef readonly %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tcfp_keys = getelementptr inbounds %struct.tcf_pedit, ptr %a, i32 0, i32 3
  %0 = ptrtoint ptr %tcfp_keys to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcfp_keys, align 4
  tail call void @kfree(ptr noundef %1) #11
  %tcfp_keys_ex = getelementptr inbounds %struct.tcf_pedit, ptr %a, i32 0, i32 4
  %2 = ptrtoint ptr %tcfp_keys_ex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcfp_keys_ex, align 8
  tail call void @kfree(ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_pedit_search(ptr noundef %net, ptr noundef %a, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pedit_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_idr_search(ptr noundef %call, ptr noundef %a, i32 noundef %index) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_pedit_init(ptr noundef %net, ptr noundef %nla, ptr noundef %est, ptr noundef %a, ptr noundef %tp, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tb.i = alloca [3 x ptr], align 4
  %tb = alloca [7 x ptr], align 4
  %goto_ch = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pedit_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %and = and i32 %flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tb) #11
  %1 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 4
  %3 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 5
  %4 = call ptr @memset(ptr %tb, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goto_ch) #11
  %5 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %goto_ch, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #11
  %tobool1.not = icmp eq ptr %nla, null
  br i1 %tobool1.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_pedit_init.__msg) #11
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @tcf_pedit_init.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %7 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %8 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 6, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @pedit_policy, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.end11, label %if.end7.if.end22_crit_edge

if.end7.if.end22_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end11:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %do.body14, label %if.end11.if.end22_crit_edge

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.body14:                                        ; preds = %if.end11
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_pedit_init.__msg.24) #11
  %tobool16.not = icmp eq ptr %extack, null
  br i1 %tobool16.not, label %do.body14.cleanup_crit_edge, label %if.then17

do.body14.cleanup_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @tcf_pedit_init.__msg.24, ptr %extack, align 4
  br label %cleanup

if.end22:                                         ; preds = %if.end11.if.end22_crit_edge, %if.end7.if.end22_crit_edge
  %pattr.0211 = phi ptr [ %12, %if.end11.if.end22_crit_edge ], [ %10, %if.end7.if.end22_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %pattr.0211, i32 4
  %nkeys = getelementptr i8, ptr %pattr.0211, i32 24
  %14 = ptrtoint ptr %nkeys to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nkeys, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool24.not = icmp eq i8 %15, 0
  br i1 %tobool24.not, label %do.body26, label %if.end34

do.body26:                                        ; preds = %if.end22
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_pedit_init.__msg.25) #11
  %tobool28.not = icmp eq ptr %extack, null
  br i1 %tobool28.not, label %do.body26.cleanup_crit_edge, label %if.then29

do.body26.cleanup_crit_edge:                      ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then29:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @tcf_pedit_init.__msg.25, ptr %extack, align 4
  br label %cleanup

if.end34:                                         ; preds = %if.end22
  %conv = zext i8 %15 to i32
  %mul = mul nuw nsw i32 %conv, 24
  %17 = ptrtoint ptr %pattr.0211 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pattr.0211, align 2
  %conv.i = zext i16 %18 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %add = add nuw nsw i32 %mul, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %add)
  %cmp37 = icmp ult i32 %sub.i, %add
  br i1 %cmp37, label %do.body40, label %if.end48

do.body40:                                        ; preds = %if.end34
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_pedit_init.__msg.26) #11
  %tobool42.not = icmp eq ptr %extack, null
  br i1 %tobool42.not, label %do.body40.cleanup_crit_edge, label %if.then43

do.body40.cleanup_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then43:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tcf_pedit_init.__msg.26, ptr %extack, align 4
  %bad_attr = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %20 = ptrtoint ptr %bad_attr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pattr.0211, ptr %bad_attr, align 4
  %policy = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %21 = ptrtoint ptr %policy to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %policy, align 4
  br label %cleanup

if.end48:                                         ; preds = %if.end34
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %3, align 4
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end48.if.end55_crit_edge, label %if.end7.i.i.i

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

if.end7.i.i.i:                                    ; preds = %if.end48
  %24 = shl nuw nsw i32 %conv, 3
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3520) #15
  %tobool1.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool1.not.i, label %if.end7.i.i.i.if.then53_crit_edge, label %if.end4.i202

if.end7.i.i.i.if.then53_crit_edge:                ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then53

if.end4.i202:                                     ; preds = %if.end7.i.i.i
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %23, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %26)
  %cmp.i88.i = icmp ugt i16 %26, 7
  br i1 %cmp.i88.i, label %land.lhs.true.i.lr.ph.i, label %if.end4.i202.err_out.i_crit_edge

if.end4.i202.err_out.i_crit_edge:                 ; preds = %if.end4.i202
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

land.lhs.true.i.lr.ph.i:                          ; preds = %if.end4.i202
  %conv.i.i203 = zext i16 %26 to i32
  %sub.i.i204 = add nsw i32 %conv.i.i203, -4
  %add.ptr.i.i205 = getelementptr i8, ptr %23, i32 4
  %27 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 1
  %28 = getelementptr inbounds [3 x ptr], ptr %tb.i, i32 0, i32 2
  br label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %for.inc.i.land.lhs.true.i.i_crit_edge, %land.lhs.true.i.lr.ph.i
  %ka.092.i = phi ptr [ %add.ptr.i.i205, %land.lhs.true.i.lr.ph.i ], [ %add.ptr.i72.i, %for.inc.i.land.lhs.true.i.i_crit_edge ]
  %k.091.i = phi ptr [ %call8.i.i.i, %land.lhs.true.i.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.land.lhs.true.i.i_crit_edge ]
  %n.addr.090.i = phi i8 [ %15, %land.lhs.true.i.lr.ph.i ], [ %dec.i, %for.inc.i.land.lhs.true.i.i_crit_edge ]
  %rem.089.i = phi i32 [ %sub.i.i204, %land.lhs.true.i.lr.ph.i ], [ %sub1.i.i, %for.inc.i.land.lhs.true.i.i_crit_edge ]
  %29 = ptrtoint ptr %ka.092.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ka.092.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %30)
  %cmp1.i.i = icmp ult i16 %30, 4
  %conv.i66.i = zext i16 %30 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.089.i, i32 %conv.i66.i)
  %cmp5.i.not.i = icmp ult i32 %rem.089.i, %conv.i66.i
  %or.cond86.i = select i1 %cmp1.i.i, i1 true, i1 %cmp5.i.not.i
  br i1 %or.cond86.i, label %land.lhs.true.i.i.for.end.i_crit_edge, label %for.body.i

land.lhs.true.i.i.for.end.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.body.i:                                       ; preds = %land.lhs.true.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %tb.i) #11
  %31 = ptrtoint ptr %tb.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i, align 4, !annotation !91
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 -1 to ptr), ptr %27, align 4, !annotation !91
  %33 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %28, align 4, !annotation !91
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %n.addr.090.i)
  %tobool9.not.i = icmp eq i8 %n.addr.090.i, 0
  br i1 %tobool9.not.i, label %for.body.i.cleanup.thread.i_crit_edge, label %if.end11.i

for.body.i.cleanup.thread.i_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

if.end11.i:                                       ; preds = %for.body.i
  %dec.i = add i8 %n.addr.090.i, -1
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %ka.092.i, i32 0, i32 1
  %34 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %nla_type.i.i, align 2
  %36 = and i16 %35, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %36)
  %cmp.not.i = icmp eq i16 %36, 6
  br i1 %cmp.not.i, label %if.end15.i, label %if.end11.i.cleanup.thread.i_crit_edge

if.end11.i.cleanup.thread.i_crit_edge:            ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

if.end15.i:                                       ; preds = %if.end11.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ka.092.i, i32 4
  %37 = ptrtoint ptr %ka.092.i to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %ka.092.i, align 2
  %conv.i.i.i = zext i16 %38 to i32
  %sub.i.i.i206 = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 2, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i206, ptr noundef nonnull @pedit_key_ex_policy, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool17.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool17.not.i, label %if.end19.i, label %if.end15.i.cleanup.thread.i_crit_edge

if.end15.i.cleanup.thread.i_crit_edge:            ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

if.end19.i:                                       ; preds = %if.end15.i
  %39 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %27, align 4
  %tobool20.not.i = icmp eq ptr %40, null
  br i1 %tobool20.not.i, label %if.end19.i.cleanup.thread.i_crit_edge, label %lor.lhs.false.i

if.end19.i.cleanup.thread.i_crit_edge:            ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

lor.lhs.false.i:                                  ; preds = %if.end19.i
  %41 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %28, align 4
  %tobool22.not.i = icmp eq ptr %42, null
  br i1 %tobool22.not.i, label %lor.lhs.false.i.cleanup.thread.i_crit_edge, label %if.end24.i

lor.lhs.false.i.cleanup.thread.i_crit_edge:       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

if.end24.i:                                       ; preds = %lor.lhs.false.i
  %add.ptr.i.i67.i = getelementptr i8, ptr %40, i32 4
  %43 = ptrtoint ptr %add.ptr.i.i67.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr.i.i67.i, align 2
  %conv27.i = zext i16 %44 to i32
  %45 = ptrtoint ptr %k.091.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv27.i, ptr %k.091.i, align 4
  %46 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %28, align 4
  %add.ptr.i.i68.i = getelementptr i8, ptr %47, i32 4
  %48 = ptrtoint ptr %add.ptr.i.i68.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %add.ptr.i.i68.i, align 2
  %conv30.i = zext i16 %49 to i32
  %cmd.i = getelementptr inbounds %struct.tcf_pedit_key_ex, ptr %k.091.i, i32 0, i32 1
  %50 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %conv30.i, ptr %cmd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %44)
  %cmp32.i = icmp ugt i16 %44, 5
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %49)
  %cmp36.i = icmp ugt i16 %49, 1
  %or.cond.i = select i1 %cmp32.i, i1 true, i1 %cmp36.i
  br i1 %or.cond.i, label %if.end24.i.cleanup.thread.i_crit_edge, label %for.inc.i

if.end24.i.cleanup.thread.i_crit_edge:            ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.end24.i.cleanup.thread.i_crit_edge, %lor.lhs.false.i.cleanup.thread.i_crit_edge, %if.end19.i.cleanup.thread.i_crit_edge, %if.end15.i.cleanup.thread.i_crit_edge, %if.end11.i.cleanup.thread.i_crit_edge, %for.body.i.cleanup.thread.i_crit_edge
  %err.0.ph.i = phi i32 [ -22, %if.end24.i.cleanup.thread.i_crit_edge ], [ -22, %if.end19.i.cleanup.thread.i_crit_edge ], [ -22, %lor.lhs.false.i.cleanup.thread.i_crit_edge ], [ %call2.i.i, %if.end15.i.cleanup.thread.i_crit_edge ], [ -22, %if.end11.i.cleanup.thread.i_crit_edge ], [ -22, %for.body.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #11
  br label %err_out.i

for.inc.i:                                        ; preds = %if.end24.i
  %incdec.ptr.i = getelementptr %struct.tcf_pedit_key_ex, ptr %k.091.i, i32 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %tb.i) #11
  %51 = ptrtoint ptr %ka.092.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %ka.092.i, align 2
  %conv.i69.i = zext i16 %52 to i32
  %sub.i70.i = add nuw nsw i32 %conv.i69.i, 3
  %and.i71.i = and i32 %sub.i70.i, 131068
  %sub1.i.i = sub nsw i32 %rem.089.i, %and.i71.i
  %add.ptr.i72.i = getelementptr i8, ptr %ka.092.i, i32 %and.i71.i
  %cmp.i.i207 = icmp sgt i32 %sub1.i.i, 3
  br i1 %cmp.i.i207, label %for.inc.i.land.lhs.true.i.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.inc.i.land.lhs.true.i.i_crit_edge:            ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %land.lhs.true.i.i.for.end.i_crit_edge
  %n.addr.0.lcssa.i = phi i8 [ %dec.i, %for.inc.i.for.end.i_crit_edge ], [ %n.addr.090.i, %land.lhs.true.i.i.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %n.addr.0.lcssa.i)
  %tobool41.not.i = icmp eq i8 %n.addr.0.lcssa.i, 0
  br i1 %tobool41.not.i, label %for.end.i.tcf_pedit_keys_ex_parse.exit_crit_edge, label %for.end.i.err_out.i_crit_edge

for.end.i.err_out.i_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %err_out.i

for.end.i.tcf_pedit_keys_ex_parse.exit_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcf_pedit_keys_ex_parse.exit

err_out.i:                                        ; preds = %for.end.i.err_out.i_crit_edge, %cleanup.thread.i, %if.end4.i202.err_out.i_crit_edge
  %err.1.i = phi i32 [ -22, %for.end.i.err_out.i_crit_edge ], [ %err.0.ph.i, %cleanup.thread.i ], [ -22, %if.end4.i202.err_out.i_crit_edge ]
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #11
  %53 = inttoptr i32 %err.1.i to ptr
  br label %tcf_pedit_keys_ex_parse.exit

tcf_pedit_keys_ex_parse.exit:                     ; preds = %err_out.i, %for.end.i.tcf_pedit_keys_ex_parse.exit_crit_edge
  %retval.0.i = phi ptr [ %53, %err_out.i ], [ %call8.i.i.i, %for.end.i.tcf_pedit_keys_ex_parse.exit_crit_edge ]
  %cmp.i208 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208, label %tcf_pedit_keys_ex_parse.exit.if.then53_crit_edge, label %tcf_pedit_keys_ex_parse.exit.if.end55_crit_edge

tcf_pedit_keys_ex_parse.exit.if.end55_crit_edge:  ; preds = %tcf_pedit_keys_ex_parse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end55

tcf_pedit_keys_ex_parse.exit.if.then53_crit_edge: ; preds = %tcf_pedit_keys_ex_parse.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then53

if.then53:                                        ; preds = %tcf_pedit_keys_ex_parse.exit.if.then53_crit_edge, %if.end7.i.i.i.if.then53_crit_edge
  %retval.0.i218 = phi ptr [ %retval.0.i, %tcf_pedit_keys_ex_parse.exit.if.then53_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.i.i.i.if.then53_crit_edge ]
  %54 = ptrtoint ptr %retval.0.i218 to i32
  br label %cleanup

if.end55:                                         ; preds = %tcf_pedit_keys_ex_parse.exit.if.end55_crit_edge, %if.end48.if.end55_crit_edge
  %retval.0.i222 = phi ptr [ %retval.0.i, %tcf_pedit_keys_ex_parse.exit.if.end55_crit_edge ], [ null, %if.end48.if.end55_crit_edge ]
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i, align 4
  %57 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %index, align 4
  %and.lobit = lshr exact i32 %and, 17
  %call59 = call i32 @tcf_idr_check_alloc(ptr noundef %call, ptr noundef nonnull %index, ptr noundef %a, i32 noundef %and.lobit) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.then61, label %if.else

if.then61:                                        ; preds = %if.end55
  %58 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %index, align 4
  %call64 = call i32 @tcf_idr_create(ptr noundef %call, i32 noundef %59, ptr noundef %est, ptr noundef %a, ptr noundef nonnull @act_pedit_ops, i32 noundef %and.lobit, i1 noundef zeroext false, i32 noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.then61.if.end80_crit_edge, label %if.then66

if.then61.if.end80_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then66:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #13
  %60 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %61) #11
  br label %out_free

if.else:                                          ; preds = %if.end55
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call59)
  %cmp68 = icmp slt i32 %call59, 1
  %brmerge = or i1 %tobool, %cmp68
  %call59.mux = select i1 %cmp68, i32 %call59, i32 0
  br i1 %brmerge, label %if.else.out_free_crit_edge, label %if.end73

if.else.out_free_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_free

if.end73:                                         ; preds = %if.else
  %and74 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74)
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %if.end73.out_release_crit_edge, label %if.end73.if.end80_crit_edge

if.end73.if.end80_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.end73.out_release_crit_edge:                   ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release

if.end80:                                         ; preds = %if.end73.if.end80_crit_edge, %if.then61.if.end80_crit_edge
  %ret.0 = phi i32 [ 0, %if.end73.if.end80_crit_edge ], [ 1, %if.then61.if.end80_crit_edge ]
  %action = getelementptr i8, ptr %pattr.0211, i32 12
  %62 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %action, align 4
  %call81 = call i32 @tcf_action_check_ctrlact(i32 noundef %63, ptr noundef %tp, ptr noundef nonnull %goto_ch, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.end80.out_release_crit_edge, label %if.end85

if.end80.out_release_crit_edge:                   ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release

if.end85:                                         ; preds = %if.end80
  %64 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %a, align 4
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %65, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #11
  br i1 %tobool60.not, label %if.end85.if.end8.i_crit_edge, label %lor.lhs.false

if.end85.if.end8.i_crit_edge:                     ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

lor.lhs.false:                                    ; preds = %if.end85
  %tcfp_nkeys = getelementptr inbounds %struct.tcf_pedit, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %tcfp_nkeys to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %tcfp_nkeys, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool89.not = icmp eq i8 %67, 0
  br i1 %tobool89.not, label %lor.lhs.false.if.end106_crit_edge, label %land.lhs.true

lor.lhs.false.if.end106_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

land.lhs.true:                                    ; preds = %lor.lhs.false
  %68 = ptrtoint ptr %nkeys to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %nkeys, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %67, i8 %69)
  %cmp94.not = icmp eq i8 %67, %69
  br i1 %cmp94.not, label %land.lhs.true.if.end106_crit_edge, label %land.lhs.true.if.end8.i_crit_edge

land.lhs.true.if.end8.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i

land.lhs.true.if.end106_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end106

if.end8.i:                                        ; preds = %land.lhs.true.if.end8.i_crit_edge, %if.end85.if.end8.i_crit_edge
  %call9.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 2592) #15
  %tobool98.not = icmp eq ptr %call9.i, null
  br i1 %tobool98.not, label %if.then99, label %if.end102

if.then99:                                        ; preds = %if.end8.i
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #11
  %70 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %goto_ch, align 4
  %tobool119.not = icmp eq ptr %71, null
  br i1 %tobool119.not, label %if.then99.out_release_crit_edge, label %if.then120

if.then99.out_release_crit_edge:                  ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  br label %out_release

if.end102:                                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #13
  %tcfp_keys = getelementptr inbounds %struct.tcf_pedit, ptr %65, i32 0, i32 3
  %72 = ptrtoint ptr %tcfp_keys to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tcfp_keys, align 4
  call void @kfree(ptr noundef %73) #11
  %74 = ptrtoint ptr %tcfp_keys to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call9.i, ptr %tcfp_keys, align 4
  %75 = ptrtoint ptr %nkeys to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %nkeys, align 4
  %tcfp_nkeys105 = getelementptr inbounds %struct.tcf_pedit, ptr %65, i32 0, i32 1
  %77 = ptrtoint ptr %tcfp_nkeys105 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %tcfp_nkeys105, align 16
  br label %if.end106

if.end106:                                        ; preds = %if.end102, %land.lhs.true.if.end106_crit_edge, %lor.lhs.false.if.end106_crit_edge
  %tcfp_keys107 = getelementptr inbounds %struct.tcf_pedit, ptr %65, i32 0, i32 3
  %78 = ptrtoint ptr %tcfp_keys107 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tcfp_keys107, align 4
  %keys108 = getelementptr i8, ptr %pattr.0211, i32 28
  %80 = call ptr @memcpy(ptr %79, ptr %keys108, i32 %mul)
  %flags110 = getelementptr i8, ptr %pattr.0211, i32 25
  %81 = ptrtoint ptr %flags110 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %flags110, align 1
  %tcfp_flags = getelementptr inbounds %struct.tcf_pedit, ptr %65, i32 0, i32 2
  %83 = ptrtoint ptr %tcfp_flags to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %tcfp_flags, align 1
  %84 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %a, align 4
  %86 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %action, align 4
  %88 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %goto_ch, align 4
  %call112 = call ptr @tcf_action_set_ctrlact(ptr noundef %85, i32 noundef %87, ptr noundef %89) #11
  %90 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %call112, ptr %goto_ch, align 4
  %tcfp_keys_ex = getelementptr inbounds %struct.tcf_pedit, ptr %65, i32 0, i32 4
  %91 = ptrtoint ptr %tcfp_keys_ex to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %tcfp_keys_ex, align 8
  call void @kfree(ptr noundef %92) #11
  %93 = ptrtoint ptr %tcfp_keys_ex to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %retval.0.i222, ptr %tcfp_keys_ex, align 8
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #11
  %94 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %goto_ch, align 4
  %tobool116.not = icmp eq ptr %95, null
  br i1 %tobool116.not, label %if.end106.cleanup_crit_edge, label %if.then117

if.end106.cleanup_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then117:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #13
  call void @tcf_chain_put_by_act(ptr noundef nonnull %95) #11
  br label %cleanup

if.then120:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #13
  call void @tcf_chain_put_by_act(ptr noundef nonnull %71) #11
  br label %out_release

out_release:                                      ; preds = %if.then120, %if.then99.out_release_crit_edge, %if.end80.out_release_crit_edge, %if.end73.out_release_crit_edge
  %ret.1 = phi i32 [ -12, %if.then120 ], [ -12, %if.then99.out_release_crit_edge ], [ -17, %if.end73.out_release_crit_edge ], [ %call81, %if.end80.out_release_crit_edge ]
  %96 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %a, align 4
  %call123 = call i32 @tcf_idr_release(ptr noundef %97, i1 noundef zeroext %tobool) #11
  br label %out_free

out_free:                                         ; preds = %out_release, %if.else.out_free_crit_edge, %if.then66
  %ret.2 = phi i32 [ %ret.1, %out_release ], [ %call64, %if.then66 ], [ %call59.mux, %if.else.out_free_crit_edge ]
  call void @kfree(ptr noundef %retval.0.i222) #11
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.then117, %if.end106.cleanup_crit_edge, %if.then53, %if.then43, %do.body40.cleanup_crit_edge, %if.then29, %do.body26.cleanup_crit_edge, %if.then17, %do.body14.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %54, %if.then53 ], [ %ret.2, %out_free ], [ -22, %if.then3 ], [ -22, %do.body.cleanup_crit_edge ], [ %call2.i, %if.end4.cleanup_crit_edge ], [ -22, %if.then17 ], [ -22, %do.body14.cleanup_crit_edge ], [ -22, %if.then29 ], [ -22, %do.body26.cleanup_crit_edge ], [ -22, %if.then43 ], [ -22, %do.body40.cleanup_crit_edge ], [ %ret.0, %if.then117 ], [ %ret.0, %if.end106.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goto_ch) #11
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_pedit_walker(ptr noundef %net, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pedit_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_generic_walker(ptr noundef %call, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_pedit_stats_update(ptr noundef %a, i64 noundef %bytes, i64 noundef %packets, i64 noundef %drops, i64 noundef %lastuse, i1 noundef zeroext %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tcf_action_update_stats(ptr noundef %a, i64 noundef %bytes, i64 noundef %packets, i64 noundef %drops, i1 noundef zeroext %hw) #11
  %lastuse1 = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %lastuse1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %lastuse1, align 8
  %2 = tail call i64 @llvm.umax.i64(i64 %1, i64 %lastuse)
  %3 = ptrtoint ptr %lastuse1 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %lastuse1, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_pedit_offload_act_setup(ptr nocapture noundef readonly %act, ptr nocapture noundef writeonly %entry_data, ptr nocapture noundef writeonly %index_inc, i1 noundef zeroext %bind) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %bind, label %for.cond.preheader, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.cond.preheader:                               ; preds = %entry
  %tcfp_nkeys.i = getelementptr inbounds %struct.tcf_pedit, ptr %act, i32 0, i32 1
  %0 = ptrtoint ptr %tcfp_nkeys.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tcfp_nkeys.i, align 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp44.not = icmp eq i8 %1, 0
  br i1 %cmp44.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tcfp_keys_ex.i = getelementptr inbounds %struct.tcf_pedit, ptr %act, i32 0, i32 4
  %tcfp_keys.i = getelementptr inbounds %struct.tcf_pedit, ptr %act, i32 0, i32 3
  %hw_stats = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %tc_act_hw_stats.exit.for.body_crit_edge, %for.body.lr.ph
  %k.046 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %tc_act_hw_stats.exit.for.body_crit_edge ]
  %entry1.045 = phi ptr [ %entry_data, %for.body.lr.ph ], [ %incdec.ptr, %tc_act_hw_stats.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %tcfp_keys_ex.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcfp_keys_ex.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %for.body.return_crit_edge, label %tcf_pedit_cmd.exit

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

tcf_pedit_cmd.exit:                               ; preds = %for.body
  %cmd.i = getelementptr %struct.tcf_pedit_key_ex, ptr %3, i32 %k.046, i32 1
  %4 = ptrtoint ptr %cmd.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %5, label %tcf_pedit_cmd.exit.return_crit_edge [
    i32 0, label %tcf_pedit_cmd.exit.sw.epilog_crit_edge
    i32 1, label %sw.bb3
  ]

tcf_pedit_cmd.exit.sw.epilog_crit_edge:           ; preds = %tcf_pedit_cmd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

tcf_pedit_cmd.exit.return_crit_edge:              ; preds = %tcf_pedit_cmd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

sw.bb3:                                           ; preds = %tcf_pedit_cmd.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %tcf_pedit_cmd.exit.sw.epilog_crit_edge
  %storemerge = phi i32 [ 14, %sw.bb3 ], [ 13, %tcf_pedit_cmd.exit.sw.epilog_crit_edge ]
  %7 = ptrtoint ptr %entry1.045 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %entry1.045, align 8
  %8 = ptrtoint ptr %tcfp_keys_ex.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tcfp_keys_ex.i, align 8
  %tobool.not.i33 = icmp eq ptr %9, null
  br i1 %tobool.not.i33, label %sw.epilog.tcf_pedit_htype.exit_crit_edge, label %if.then.i34

sw.epilog.tcf_pedit_htype.exit_crit_edge:         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcf_pedit_htype.exit

if.then.i34:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.i = getelementptr %struct.tcf_pedit_key_ex, ptr %9, i32 %k.046
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  br label %tcf_pedit_htype.exit

tcf_pedit_htype.exit:                             ; preds = %if.then.i34, %sw.epilog.tcf_pedit_htype.exit_crit_edge
  %retval.0.i35 = phi i32 [ %11, %if.then.i34 ], [ 0, %sw.epilog.tcf_pedit_htype.exit_crit_edge ]
  %12 = getelementptr inbounds %struct.flow_action_entry, ptr %entry1.045, i32 0, i32 5
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i35, ptr %12, align 8
  %14 = ptrtoint ptr %tcfp_keys.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tcfp_keys.i, align 4
  %arrayidx.i36 = getelementptr %struct.tc_pedit_key, ptr %15, i32 %k.046
  %16 = ptrtoint ptr %arrayidx.i36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i36, align 4
  %mask = getelementptr inbounds %struct.flow_action_entry, ptr %entry1.045, i32 0, i32 5, i32 0, i32 1
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %mask, align 8
  %19 = load ptr, ptr %tcfp_keys.i, align 4
  %val.i = getelementptr %struct.tc_pedit_key, ptr %19, i32 %k.046, i32 1
  %20 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val.i, align 4
  %val = getelementptr inbounds %struct.anon.129, ptr %12, i32 0, i32 3
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %val, align 4
  %23 = load ptr, ptr %tcfp_keys.i, align 4
  %off.i = getelementptr %struct.tc_pedit_key, ptr %23, i32 %k.046, i32 2
  %24 = ptrtoint ptr %off.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %off.i, align 4
  %offset = getelementptr inbounds %struct.anon.129, ptr %12, i32 0, i32 1
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %offset, align 4
  %27 = ptrtoint ptr %hw_stats to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %hw_stats, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %28)
  %cmp.i = icmp ugt i8 %28, 3
  br i1 %cmp.i, label %land.rhs.i, label %if.else.i

land.rhs.i:                                       ; preds = %tcf_pedit_htype.exit
  %.b48.i = load i1, ptr @tc_act_hw_stats.__already_done, align 1
  br i1 %.b48.i, label %land.rhs.i.tc_act_hw_stats.exit_crit_edge, label %if.then.i39, !prof !96

land.rhs.i.tc_act_hw_stats.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tc_act_hw_stats.exit

if.then.i39:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @tc_act_hw_stats.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.27, i32 noundef 95, i32 noundef 9, ptr noundef null) #11
  br label %tc_act_hw_stats.exit

if.else.i:                                        ; preds = %tcf_pedit_htype.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool39.not.i = icmp eq i8 %28, 0
  %narrow.i = select i1 %tobool39.not.i, i8 4, i8 %28
  %.conv.i = zext i8 %narrow.i to i32
  br label %tc_act_hw_stats.exit

tc_act_hw_stats.exit:                             ; preds = %if.else.i, %if.then.i39, %land.rhs.i.tc_act_hw_stats.exit_crit_edge
  %retval.0.i40 = phi i32 [ 7, %if.then.i39 ], [ %.conv.i, %if.else.i ], [ 7, %land.rhs.i.tc_act_hw_stats.exit_crit_edge ]
  %hw_stats10 = getelementptr inbounds %struct.flow_action_entry, ptr %entry1.045, i32 0, i32 2
  %29 = ptrtoint ptr %hw_stats10 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i40, ptr %hw_stats10, align 8
  %incdec.ptr = getelementptr %struct.flow_action_entry, ptr %entry1.045, i32 1
  %inc = add nuw nsw i32 %k.046, 1
  %30 = ptrtoint ptr %tcfp_nkeys.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %tcfp_nkeys.i, align 16
  %conv.i = zext i8 %31 to i32
  %cmp = icmp ult i32 %inc, %conv.i
  br i1 %cmp, label %tc_act_hw_stats.exit.for.body_crit_edge, label %tc_act_hw_stats.exit.for.end_crit_edge

tc_act_hw_stats.exit.for.end_crit_edge:           ; preds = %tc_act_hw_stats.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

tc_act_hw_stats.exit.for.body_crit_edge:          ; preds = %tc_act_hw_stats.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %tc_act_hw_stats.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %k.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %tc_act_hw_stats.exit.for.end_crit_edge ]
  %32 = ptrtoint ptr %index_inc to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %k.0.lcssa, ptr %index_inc, align 4
  br label %return

return:                                           ; preds = %for.end, %tcf_pedit_cmd.exit.return_crit_edge, %for.body.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i32 [ -95, %entry.return_crit_edge ], [ 0, %for.end ], [ -95, %for.body.return_crit_edge ], [ -95, %tcf_pedit_cmd.exit.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_store_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !99
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 696, ptr noundef nonnull @.str.22) #11
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 45, ptr noundef nonnull @.str.20) #11
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.21, i32 noundef 724, ptr noundef nonnull @.str.23) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !100
  %8 = tail call i32 @llvm.read_register.i32(metadata !80) #11
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
declare dso_local i32 @tcf_idr_search(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #9 align 64 {
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #9 align 64 {
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
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_check_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_idr_cleanup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_check_ctrlact(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcf_action_set_ctrlact(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_chain_put_by_act(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_release(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_generic_walker(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_action_update_stats(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pedit_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pedit_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 156) #16
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %call, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.tc_action_net_init.exit_crit_edge, label %if.end.i

entry.tc_action_net_init.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %tc_action_net_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ops2.i = getelementptr inbounds %struct.tc_action_net, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @act_pedit_ops, ptr %ops2.i, align 4
  %net4.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %net, ptr %net4.i, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @tc_action_net_init.__key) #11
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %action_idr.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %action_idr.i, ptr noundef nonnull @.str.29, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #11
  %xa_flags.i.i.i.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1, i32 0, i32 1
  %7 = ptrtoint ptr %xa_flags.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 67108868, ptr %xa_flags.i.i.i.i, align 4
  %xa_head.i.i.i.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %xa_head.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %xa_head.i.i.i.i, align 4
  %idr_base.i.i.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %idr_base.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %idr_base.i.i.i, align 4
  %idr_next.i.i.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %idr_next.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %idr_next.i.i.i, align 4
  br label %tc_action_net_init.exit

tc_action_net_init.exit:                          ; preds = %if.end.i, %entry.tc_action_net_init.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ -12, %entry.tc_action_net_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pedit_exit_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pedit_net_id, align 4
  tail call void @rtnl_lock() #11
  %1 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn12.i = load ptr, ptr %net_list, align 4
  %cmp.not13.i = icmp eq ptr %.pn12.i, %net_list
  br i1 %cmp.not13.i, label %entry.tc_action_net_exit.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.tc_action_net_exit.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %tc_action_net_exit.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn14.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn12.i, %entry.for.body.i_crit_edge ]
  %net.0.i = getelementptr i8, ptr %.pn14.i, i32 -116
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net.0.i, i32 noundef %0) #11
  %ops.i = getelementptr inbounds %struct.tc_action_net, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  tail call void @tcf_idrinfo_destroy(ptr noundef %3, ptr noundef %5) #11
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  tail call void @kfree(ptr noundef %7) #11
  %8 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %net_list
  br i1 %cmp.not.i, label %for.body.i.tc_action_net_exit.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.tc_action_net_exit.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tc_action_net_exit.exit

tc_action_net_exit.exit:                          ; preds = %for.body.i.tc_action_net_exit.exit_crit_edge, %entry.tc_action_net_exit.exit_crit_edge
  tail call void @rtnl_unlock() #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_idrinfo_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_register_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

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

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !39, !41, !42, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !74, !76, !77, !79}
!llvm.named.register.sp = !{!80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @__UNIQUE_ID_author368, !1, !"__UNIQUE_ID_author368", i1 false, i1 false}
!1 = !{!"../net/sched/act_pedit.c", i32 557, i32 1}
!2 = !{ptr @__UNIQUE_ID_description369, !3, !"__UNIQUE_ID_description369", i1 false, i1 false}
!3 = !{!"../net/sched/act_pedit.c", i32 558, i32 1}
!4 = !{ptr @__UNIQUE_ID_file370, !5, !"__UNIQUE_ID_file370", i1 false, i1 false}
!5 = !{!"../net/sched/act_pedit.c", i32 559, i32 1}
!6 = !{ptr @__UNIQUE_ID_license371, !5, !"__UNIQUE_ID_license371", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_act_pedit__372_571_pedit_init_module6, !8, !"__initcall__kmod_act_pedit__372_571_pedit_init_module6", i1 false, i1 false}
!8 = !{!"../net/sched/act_pedit.c", i32 571, i32 1}
!9 = !{ptr @__exitcall_pedit_cleanup_module, !10, !"__exitcall_pedit_cleanup_module", i1 false, i1 false}
!10 = !{!"../net/sched/act_pedit.c", i32 572, i32 1}
!11 = !{ptr @act_pedit_ops, !12, !"act_pedit_ops", i1 false, i1 false}
!12 = !{!"../net/sched/act_pedit.c", i32 523, i32 29}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/sched/act_pedit.c", i32 343, i32 5}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @tcf_pedit_act._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @tcf_pedit_act._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/sched/act_pedit.c", i32 352, i32 6}
!21 = !{ptr @tcf_pedit_act._entry.3, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @tcf_pedit_act._entry_ptr.5, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/sched/act_pedit.c", i32 364, i32 5}
!25 = !{ptr @tcf_pedit_act._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @tcf_pedit_act._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/sched/act_pedit.c", i32 369, i32 5}
!29 = !{ptr @tcf_pedit_act._entry.9, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @tcf_pedit_act._entry_ptr.11, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/sched/act_pedit.c", i32 387, i32 5}
!33 = !{ptr @tcf_pedit_act._entry.12, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @tcf_pedit_act._entry_ptr.14, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/sched/act_pedit.c", i32 399, i32 3}
!37 = distinct !{null, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../include/linux/skbuff.h", i32 1719, i32 2}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../include/net/netlink.h", i32 991, i32 3}
!44 = distinct !{null, !45, !"__warned", i1 false, i1 false}
!45 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @pedit_net_id, !56, !"pedit_net_id", i1 false, i1 false}
!56 = !{!"../net/sched/act_pedit.c", i32 24, i32 21}
!57 = !{ptr @tcf_pedit_init.__msg, !58, !"__msg", i1 false, i1 false}
!58 = !{!"../net/sched/act_pedit.c", i32 156, i32 3}
!59 = !{ptr @tcf_pedit_init.__msg.24, !60, !"__msg", i1 false, i1 false}
!60 = !{!"../net/sched/act_pedit.c", i32 169, i32 3}
!61 = !{ptr @tcf_pedit_init.__msg.25, !62, !"__msg", i1 false, i1 false}
!62 = !{!"../net/sched/act_pedit.c", i32 175, i32 3}
!63 = !{ptr @tcf_pedit_init.__msg.26, !64, !"__msg", i1 false, i1 false}
!64 = !{!"../net/sched/act_pedit.c", i32 180, i32 3}
!65 = !{ptr @pedit_policy, !66, !"pedit_policy", i1 false, i1 false}
!66 = !{!"../net/sched/act_pedit.c", i32 27, i32 32}
!67 = !{ptr @pedit_key_ex_policy, !68, !"pedit_key_ex_policy", i1 false, i1 false}
!68 = !{!"../net/sched/act_pedit.c", i32 32, i32 32}
!69 = distinct !{null, !70, !"__already_done", i1 false, i1 false}
!70 = !{!"../include/net/act_api.h", i32 95, i32 6}
!71 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @pedit_net_ops, !73, !"pedit_net_ops", i1 false, i1 false}
!73 = !{!"../net/sched/act_pedit.c", i32 550, i32 33}
!74 = !{ptr @tc_action_net_init.__key, !75, !"__key", i1 false, i1 false}
!75 = !{!"../include/net/act_api.h", i32 156, i32 2}
!76 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @xa_init_flags.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!79 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!80 = !{!"sp"}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!90 = !{!"branch_weights", i32 1, i32 2000}
!91 = !{!"auto-init"}
!92 = !{i64 2150165161}
!93 = !{i64 2150170095}
!94 = !{i64 2150191813}
!95 = !{i64 2150196707}
!96 = !{!"branch_weights", i32 2000, i32 1}
!97 = !{i64 2150273234}
!98 = !{i64 2150273559}
!99 = !{i64 2149656540}
!100 = !{i64 2149656806}
