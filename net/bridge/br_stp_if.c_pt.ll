; ModuleID = '/llk/IR_all_yes/net/bridge/br_stp_if.c_pt.bc'
source_filename = "../net/bridge/br_stp_if.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_bridge_port = type { ptr, ptr, ptr, %struct.list_head, i32, ptr, ptr, i8, i8, i16, i8, i8, i16, i16, %struct.bridge_id, %struct.bridge_id, i32, i32, i32, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.kobject, %struct.callback_head, %struct.net_bridge_mcast_port, ptr, i32, i32, %struct.hlist_head, [16 x i8], ptr, i32, i32, %struct.netdev_phys_item_id, i16, i16, %struct.bridge_stp_xstats }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.net_bridge_mcast_port = type { ptr, ptr, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, %struct.bridge_mcast_own_query, %struct.timer_list, %struct.hlist_node, i8 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.bridge_stp_xstats = type { i64, i64, i64, i64, i64, i64 }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.143, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.143 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.144, %union.anon.145, i16, i16 }
%union.anon.144 = type { %struct.in6_addr }
%union.anon.145 = type { %struct.in6_addr }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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

@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to offload ageing time\0A\00", [33 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_long_wq = external dso_local local_unnamed_addr global ptr, align 4
@br_stp_set_enabled.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/bridge/br_stp_if.c\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@br_stp_set_enabled.__msg = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"bridge: STP can't be enabled if MRP is already enabled\00", [41 x i8] zeroinitializer }, align 32
@br_mac_zero_aligned = internal constant { [3 x i16], [26 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%.2x%.2x.%.2x%.2x%.2x%.2x%.2x%.2x\0A\00", [61 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@br_stp_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.1, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s: failed to start userspace STP (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"br_stp_start\00", [19 x i8] zeroinitializer }, align 32
@br_stp_start._entry_ptr = internal global ptr @br_stp_start._entry, section ".printk_index", align 4
@br_stp_start.__UNIQUE_ID_ddebug564 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.6, ptr @.str.1, ptr @.str.8, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bridge\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: userspace STP started\0A\00", [37 x i8] zeroinitializer }, align 32
@br_stp_start.__UNIQUE_ID_ddebug565 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.6, ptr @.str.1, ptr @.str.9, i8 0, i8 42, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: using kernel STP\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"/sbin/bridge-stp\00", [47 x i8] zeroinitializer }, align 32
@br_stp_call_user.__UNIQUE_ID_ddebug562 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.11, ptr @.str.1, ptr @.str.12, i8 0, i8 34, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"br_stp_call_user\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: /sbin/bridge-stp received signal %d\0A\00", [55 x i8] zeroinitializer }, align 32
@br_stp_call_user.__UNIQUE_ID_ddebug563 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.11, ptr @.str.1, ptr @.str.13, i8 0, i8 35, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: /sbin/bridge-stp exited with code %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"stop\00", [27 x i8] zeroinitializer }, align 32
@br_stp_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.1, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: failed to stop userspace STP (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"br_stp_stop\00", [20 x i8] zeroinitializer }, align 32
@br_stp_stop._entry_ptr = internal global ptr @br_stp_stop._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967294]
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 45, i32 22 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 202, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 205, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"br_mac_zero_aligned\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 253, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 347, i32 22 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 153, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 156, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 167, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 170, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 130, i32 19 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 138, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 141, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 186, i32 30 }
@___asan_gen_.73 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [26 x i8] c"../net/bridge/br_stp_if.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 188, i32 4 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @br_stp_start._entry, ptr @br_stp_start._entry_ptr, ptr @br_stp_stop._entry, ptr @br_stp_stop._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @br_stp_set_enabled.__msg, ptr @br_mac_zero_aligned, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_stp_set_enabled.__msg to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_mac_zero_aligned to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_stp_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_stp_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_init_port(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priority = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 7
  %0 = ptrtoint ptr %priority to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priority, align 8
  %port_no = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 9
  %2 = ptrtoint ptr %port_no to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %port_no, align 2
  %conv1.i = zext i8 %1 to i16
  %shl.i = shl i16 %conv1.i, 10
  %4 = and i16 %3, 1023
  %or.i = or i16 %shl.i, %4
  %port_id = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 12
  %5 = ptrtoint ptr %port_id to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %or.i, ptr %port_id, align 2
  tail call void @br_become_designated_port(ptr noundef %p) #8
  tail call void @br_set_state(ptr noundef %p, i32 noundef 4) #8
  %topology_change_ack = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 10
  %6 = ptrtoint ptr %topology_change_ack to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %topology_change_ack, align 4
  %config_pending = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 11
  %7 = ptrtoint ptr %config_pending to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %config_pending, align 1
  %dev = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p, align 8
  %ageing_time = getelementptr inbounds %struct.net_bridge, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %ageing_time to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ageing_time, align 4
  %call1 = tail call i32 @__set_ageing_time(ptr noundef %9, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_become_designated_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_set_state(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__set_ageing_time(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_stp_enable_bridge(ptr noundef %br) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef %br) #8
  %stp_enabled = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 28
  %0 = ptrtoint ptr %stp_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stp_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %hello_timer = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %hello_time = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 19
  %3 = ptrtoint ptr %hello_time to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hello_time, align 4
  %add = add i32 %4, %2
  %call = tail call i32 @mod_timer(ptr noundef %hello_timer, i32 noundef %add) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_long_wq to i32))
  %5 = load ptr, ptr @system_long_wq, align 4
  %gc_work = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 41
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %gc_work, i32 noundef 10) #8
  tail call void @br_config_bpdu_generation(ptr noundef %br) #8
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %6 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn27 = load ptr, ptr %port_list, align 4
  %cmp3.not29 = icmp eq ptr %.pn27, %port_list
  br i1 %cmp3.not29, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn30 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn27, %if.end.for.body_crit_edge ]
  %p.031 = getelementptr i8, ptr %.pn30, i32 -12
  %dev = getelementptr i8, ptr %.pn30, i32 -8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %operstate.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 50
  %11 = ptrtoint ptr %operstate.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %operstate.i, align 8
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %land.lhs.true.for.inc_crit_edge [
    i8 6, label %land.lhs.true.if.then7_crit_edge
    i8 0, label %land.lhs.true.if.then7_crit_edge32
  ]

land.lhs.true.if.then7_crit_edge32:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then7:                                         ; preds = %land.lhs.true.if.then7_crit_edge, %land.lhs.true.if.then7_crit_edge32
  tail call void @br_stp_enable_port(ptr noundef %p.031)
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %14 = ptrtoint ptr %.pn30 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn30, align 4
  %cmp3.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp3.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %br) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_config_bpdu_generation(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_stp_enable_port(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priority.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 7
  %0 = ptrtoint ptr %priority.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priority.i, align 8
  %port_no.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 9
  %2 = ptrtoint ptr %port_no.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %port_no.i, align 2
  %conv1.i.i = zext i8 %1 to i16
  %shl.i.i = shl i16 %conv1.i.i, 10
  %4 = and i16 %3, 1023
  %or.i.i = or i16 %shl.i.i, %4
  %port_id.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 12
  %5 = ptrtoint ptr %port_id.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %or.i.i, ptr %port_id.i, align 2
  tail call void @br_become_designated_port(ptr noundef %p) #8
  tail call void @br_set_state(ptr noundef %p, i32 noundef 4) #8
  %topology_change_ack.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 10
  %6 = ptrtoint ptr %topology_change_ack.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %topology_change_ack.i, align 4
  %config_pending.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 11
  %7 = ptrtoint ptr %config_pending.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %config_pending.i, align 1
  %dev.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %10 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p, align 8
  %ageing_time.i = getelementptr inbounds %struct.net_bridge, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %ageing_time.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ageing_time.i, align 4
  %call1.i = tail call i32 @__set_ageing_time(ptr noundef %9, i32 noundef %13) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %entry.br_init_port.exit_crit_edge, label %if.then.i

entry.br_init_port.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %br_init_port.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %15, ptr noundef nonnull @.str) #11
  br label %br_init_port.exit

br_init_port.exit:                                ; preds = %if.then.i, %entry.br_init_port.exit_crit_edge
  %16 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p, align 8
  tail call void @br_port_state_selection(ptr noundef %17) #8
  tail call void @br_ifinfo_notify(i32 noundef 16, ptr noundef null, ptr noundef %p) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_stp_disable_bridge(ptr noundef %br) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef %br) #8
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %0 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn25 = load ptr, ptr %port_list, align 4
  %cmp.not27 = icmp eq ptr %.pn25, %port_list
  br i1 %cmp.not27, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn28 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn25, %entry.for.body_crit_edge ]
  %state = getelementptr i8, ptr %.pn28, i32 21
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp2.not = icmp eq i8 %2, 0
  br i1 %cmp2.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %p.029 = getelementptr i8, ptr %.pn28, i32 -12
  tail call void @br_stp_disable_port(ptr noundef %p.029)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %3 = ptrtoint ptr %.pn28 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn28, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @__br_set_topology_change(ptr noundef %br, i8 noundef zeroext 0) #8
  %topology_change_detected = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 16
  %4 = ptrtoint ptr %topology_change_detected to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %topology_change_detected, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %br) #8
  %hello_timer = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 38
  %call = tail call i32 @del_timer_sync(ptr noundef %hello_timer) #8
  %topology_change_timer = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 40
  %call10 = tail call i32 @del_timer_sync(ptr noundef %topology_change_timer) #8
  %tcn_timer = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 39
  %call11 = tail call i32 @del_timer_sync(ptr noundef %tcn_timer) #8
  %gc_work = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 41
  %call12 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %gc_work) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_stp_disable_port(ptr noundef %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 8
  %bridge_id.i = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 14
  %designated_root.i = getelementptr inbounds %struct.net_bridge, ptr %1, i32 0, i32 13
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %bridge_id.i, ptr noundef dereferenceable(8) %designated_root.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp ne i32 %bcmp.i, 0
  tail call void @br_become_designated_port(ptr noundef %p) #8
  tail call void @br_set_state(ptr noundef %p, i32 noundef 0) #8
  %topology_change_ack = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 10
  %2 = ptrtoint ptr %topology_change_ack to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %topology_change_ack, align 4
  %config_pending = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 11
  %3 = ptrtoint ptr %config_pending to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %config_pending, align 1
  tail call void @br_ifinfo_notify(i32 noundef 16, ptr noundef null, ptr noundef %p) #8
  %message_age_timer = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 21
  %call2 = tail call i32 @del_timer(ptr noundef %message_age_timer) #8
  %forward_delay_timer = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 19
  %call3 = tail call i32 @del_timer(ptr noundef %forward_delay_timer) #8
  %hold_timer = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 20
  %call4 = tail call i32 @del_timer(ptr noundef %hold_timer) #8
  %backup_port = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 6
  %4 = ptrtoint ptr %backup_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %backup_port, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @br_fdb_delete_by_port(ptr noundef %1, ptr noundef %p, i16 noundef zeroext 0, i32 noundef 0) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @br_multicast_disable_port(ptr noundef %p) #8
  tail call void @br_configuration_update(ptr noundef %1) #8
  tail call void @br_port_state_selection(ptr noundef %1) #8
  %bcmp.i29 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %bridge_id.i, ptr noundef dereferenceable(8) %designated_root.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i29)
  %tobool.not.i30 = icmp eq i32 %bcmp.i29, 0
  %or.cond = select i1 %tobool.not.i30, i1 %tobool.not.i, i1 false
  br i1 %or.cond, label %if.then9, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @br_become_root_bridge(ptr noundef %1) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__br_set_topology_change(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_port_state_selection(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_ifinfo_notify(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_fdb_delete_by_port(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_multicast_disable_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_configuration_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_become_root_bridge(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_stp_set_enabled(ptr noundef %br, i32 noundef %val, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rtnl_is_locked() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end29_crit_edge

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b62 = load i1, ptr @br_stp_set_enabled.__already_done, align 1
  br i1 %.b62, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !51

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @br_stp_set_enabled.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 202, i32 noundef 9, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef 202) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %call37 = tail call zeroext i1 @br_mrp_enabled(ptr noundef %br) #8
  br i1 %call37, label %do.body39, label %if.end45

do.body39:                                        ; preds = %if.end29
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @br_stp_set_enabled.__msg) #8
  %tobool40.not = icmp eq ptr %extack, null
  br i1 %tobool40.not, label %do.body39.return_crit_edge, label %if.then41

do.body39.return_crit_edge:                       ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then41:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @br_stp_set_enabled.__msg, ptr %extack, align 4
  br label %return

if.end45:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool46.not = icmp eq i32 %val, 0
  %stp_enabled50 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 28
  %1 = ptrtoint ptr %stp_enabled50 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %stp_enabled50, align 4
  br i1 %tobool46.not, label %if.else, label %if.then47

if.then47:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.then48, label %if.then47.return_crit_edge

if.then47.return_crit_edge:                       ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then48:                                        ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @br_stp_start(ptr noundef %br)
  br label %return

if.else:                                          ; preds = %if.end45
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %2, label %if.else.br_stp_stop.exit_crit_edge [
    i32 0, label %if.else.return_crit_edge
    i32 2, label %if.then.i
  ]

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.else.br_stp_stop.exit_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %br_stp_stop.exit

if.then.i:                                        ; preds = %if.else
  %call.i = tail call fastcc i32 @br_stp_call_user(ptr noundef %br, ptr noundef nonnull @.str.14) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %do.end.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %5, i32 noundef %call.i) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  tail call void @_raw_spin_lock_bh(ptr noundef %br) #8
  tail call void @br_port_state_selection(ptr noundef %br) #8
  tail call void @_raw_spin_unlock_bh(ptr noundef %br) #8
  br label %br_stp_stop.exit

br_stp_stop.exit:                                 ; preds = %if.end.i, %if.else.br_stp_stop.exit_crit_edge
  %6 = ptrtoint ptr %stp_enabled50 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %stp_enabled50, align 4
  br label %return

return:                                           ; preds = %br_stp_stop.exit, %if.else.return_crit_edge, %if.then48, %if.then47.return_crit_edge, %if.then41, %do.body39.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.then41 ], [ -22, %do.body39.return_crit_edge ], [ %2, %if.else.return_crit_edge ], [ 0, %br_stp_stop.exit ], [ 0, %if.then47.return_crit_edge ], [ 0, %if.then48 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_mrp_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @br_stp_start(ptr noundef %br) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %3, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @br_stp_call_user(ptr noundef %br, ptr noundef nonnull @.str.4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %4 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %call2, label %do.end [
    i32 -2, label %if.end.if.end7_crit_edge
    i32 0, label %if.end.if.end7_crit_edge85
  ]

if.end.if.end7_crit_edge85:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %6, i32 noundef %call2) #11
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end.if.end7_crit_edge, %if.end.if.end7_crit_edge85, %entry.if.end7_crit_edge
  %tobool3.not82 = phi i1 [ %tobool3.not, %if.end.if.end7_crit_edge ], [ %tobool3.not, %if.end.if.end7_crit_edge85 ], [ %tobool3.not, %do.end ], [ false, %entry.if.end7_crit_edge ]
  tail call void @_raw_spin_lock_bh(ptr noundef %br) #8
  %bridge_forward_delay = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 24
  %7 = ptrtoint ptr %bridge_forward_delay to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bridge_forward_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %8)
  %cmp8 = icmp ult i32 %8, 200
  br i1 %cmp8, label %if.end7.if.end14.sink.split_crit_edge, label %if.else

if.end7.if.end14.sink.split_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.sink.split

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000, i32 %8)
  %cmp11 = icmp ugt i32 %8, 3000
  br i1 %cmp11, label %if.else.if.end14.sink.split_crit_edge, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.else.if.end14.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.else.if.end14.sink.split_crit_edge, %if.end7.if.end14.sink.split_crit_edge
  %.sink = phi i32 [ 200, %if.end7.if.end14.sink.split_crit_edge ], [ 3000, %if.else.if.end14.sink.split_crit_edge ]
  tail call void @__br_set_forward_delay(ptr noundef %br, i32 noundef %.sink) #8
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.else.if.end14_crit_edge
  %stp_enabled = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 28
  br i1 %tobool3.not82, label %if.then16, label %if.else30

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %stp_enabled to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %stp_enabled, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br_stp_start.__UNIQUE_ID_ddebug564, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br_stp_start, %if.then23)) #8
          to label %if.end56 [label %if.then23], !srcloc !52

if.then23:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br_stp_start.__UNIQUE_ID_ddebug564, ptr noundef nonnull @.str.8, ptr noundef %11) #8
  br label %if.end56

if.else30:                                        ; preds = %if.end14
  %12 = ptrtoint ptr %stp_enabled to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %stp_enabled, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br_stp_start.__UNIQUE_ID_ddebug565, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br_stp_start, %if.then44)) #8
          to label %do.end50 [label %if.then44], !srcloc !52

if.then44:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br_stp_start.__UNIQUE_ID_ddebug565, ptr noundef nonnull @.str.9, ptr noundef %14) #8
  br label %do.end50

do.end50:                                         ; preds = %if.then44, %if.else30
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 14
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 8
  %and = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool52.not = icmp eq i32 %and, 0
  br i1 %tobool52.not, label %do.end50.if.end55_crit_edge, label %if.then53

do.end50.if.end55_crit_edge:                      ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end55

if.then53:                                        ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #10
  %hello_timer = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %hello_time = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 19
  %20 = ptrtoint ptr %hello_time to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hello_time, align 4
  %add = add i32 %21, %19
  %call54 = tail call i32 @mod_timer(ptr noundef %hello_timer, i32 noundef %add) #8
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %do.end50.if.end55_crit_edge
  tail call void @br_port_state_selection(ptr noundef %br) #8
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %if.then23, %if.then16
  tail call void @_raw_spin_unlock_bh(ptr noundef %br) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_stp_change_bridge_id(ptr noundef %br, ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge_id.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 14
  %designated_root.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 13
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %bridge_id.i, ptr noundef dereferenceable(8) %designated_root.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp ne i32 %bcmp.i, 0
  tail call void @br_fdb_change_mac_address(ptr noundef %br, ptr noundef %addr) #8
  %addr1 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 14, i32 1
  %0 = ptrtoint ptr %addr1 to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %oldaddr_aligned.sroa.0.0.copyload = load i32, ptr %addr1, align 2
  %oldaddr_aligned.sroa.7.0.addr1.sroa_idx = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 14, i32 1, i32 4
  %1 = ptrtoint ptr %oldaddr_aligned.sroa.7.0.addr1.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %1)
  %oldaddr_aligned.sroa.7.0.copyload = load i16, ptr %oldaddr_aligned.sroa.7.0.addr1.sroa_idx, align 2
  %2 = call ptr @memcpy(ptr %addr1, ptr %addr, i32 6)
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void @dev_addr_mod(ptr noundef %4, i32 noundef 0, ptr noundef %addr, i32 noundef 6) #8
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %5 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn72 = load ptr, ptr %port_list, align 4
  %cmp.not73 = icmp eq ptr %.pn72, %port_list
  br i1 %cmp.not73, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn74 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn72, %entry.for.body_crit_edge ]
  %addr7 = getelementptr i8, ptr %.pn74, i32 40
  %6 = ptrtoint ptr %addr7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %addr7, align 4
  %xor.i = xor i32 %7, %oldaddr_aligned.sroa.0.0.copyload
  %add.ptr.i = getelementptr i8, ptr %.pn74, i32 44
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %xor37.i = xor i16 %9, %oldaddr_aligned.sroa.7.0.copyload
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = call ptr @memcpy(ptr %addr7, ptr %addr, i32 6)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %addr13 = getelementptr i8, ptr %.pn74, i32 32
  %11 = ptrtoint ptr %addr13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %addr13, align 4
  %xor.i51 = xor i32 %12, %oldaddr_aligned.sroa.0.0.copyload
  %add.ptr.i52 = getelementptr i8, ptr %.pn74, i32 36
  %13 = ptrtoint ptr %add.ptr.i52 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i52, align 2
  %xor37.i54 = xor i16 %14, %oldaddr_aligned.sroa.7.0.copyload
  %xor3.i55 = zext i16 %xor37.i54 to i32
  %or.i56 = or i32 %xor.i51, %xor3.i55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i56)
  %cmp.i57 = icmp eq i32 %or.i56, 0
  br i1 %cmp.i57, label %if.then16, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = call ptr @memcpy(ptr %addr13, ptr %addr, i32 6)
  br label %for.inc

for.inc:                                          ; preds = %if.then16, %if.end.for.inc_crit_edge
  %16 = ptrtoint ptr %.pn74 to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn74, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @br_configuration_update(ptr noundef %br) #8
  tail call void @br_port_state_selection(ptr noundef %br) #8
  %bcmp.i60 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %bridge_id.i, ptr noundef dereferenceable(8) %designated_root.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i60)
  %tobool.not.i61 = icmp eq i32 %bcmp.i60, 0
  %or.cond = select i1 %tobool.not.i61, i1 %tobool.not.i, i1 false
  br i1 %or.cond, label %if.then28, label %for.end.if.end29_crit_edge

for.end.if.end29_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @br_become_root_bridge(ptr noundef %br) #8
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %for.end.if.end29_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_fdb_change_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @br_stp_recalculate_bridge_id(ptr noundef %br) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 55
  %2 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %addr_assign_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %cmp = icmp eq i8 %3, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %4 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn36 = load ptr, ptr %port_list, align 4
  %cmp3.not37 = icmp eq ptr %.pn36, %port_list
  br i1 %cmp3.not37, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn39 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn36, %if.end.for.body_crit_edge ]
  %addr.038 = phi ptr [ %addr.1, %for.inc.for.body_crit_edge ], [ @br_mac_zero_aligned, %if.end.for.body_crit_edge ]
  %cmp5 = icmp eq ptr %addr.038, @br_mac_zero_aligned
  br i1 %cmp5, label %for.body.if.then10_crit_edge, label %lor.lhs.false

for.body.if.then10_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

lor.lhs.false:                                    ; preds = %for.body
  %dev7 = getelementptr i8, ptr %.pn39, i32 -8
  %5 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev7, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %6, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  %call = tail call i32 @memcmp(ptr noundef dereferenceable(6) %8, ptr noundef dereferenceable(6) %addr.038, i32 noundef 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp8 = icmp slt i32 %call, 0
  br i1 %cmp8, label %lor.lhs.false.if.then10_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.if.then10_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false.if.then10_crit_edge, %for.body.if.then10_crit_edge
  %dev11 = getelementptr i8, ptr %.pn39, i32 -8
  %9 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev11, align 4
  %dev_addr12 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 86
  %11 = ptrtoint ptr %dev_addr12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev_addr12, align 64
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %lor.lhs.false.for.inc_crit_edge
  %addr.1 = phi ptr [ %12, %if.then10 ], [ %addr.038, %lor.lhs.false.for.inc_crit_edge ]
  %13 = ptrtoint ptr %.pn39 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn39, align 4
  %cmp3.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp3.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %addr.0.lcssa = phi ptr [ @br_mac_zero_aligned, %if.end.for.end_crit_edge ], [ %addr.1, %for.inc.for.end_crit_edge ]
  %addr19 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 14, i32 1
  %14 = ptrtoint ptr %addr19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr19, align 4
  %16 = ptrtoint ptr %addr.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %addr.0.lcssa, align 4
  %xor.i = xor i32 %17, %15
  %add.ptr.i = getelementptr %struct.net_bridge, ptr %br, i32 0, i32 14, i32 1, i32 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %addr.0.lcssa, i32 4
  %20 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %21, %19
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %for.end.cleanup_crit_edge, label %if.end22

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end22:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @br_stp_change_bridge_id(ptr noundef %br, ptr noundef %addr.0.lcssa)
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.end22 ], [ false, %entry.cleanup_crit_edge ], [ false, %for.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_stp_set_bridge_priority(ptr noundef %br, i16 noundef zeroext %newprio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef %br) #8
  %bridge_id.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 14
  %designated_root.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 13
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %bridge_id.i, ptr noundef dereferenceable(8) %designated_root.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp ne i32 %bcmp.i, 0
  %port_list = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 9
  %0 = ptrtoint ptr %port_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn64 = load ptr, ptr %port_list, align 4
  %cmp.not66 = icmp eq ptr %.pn64, %port_list
  %.pre = lshr i16 %newprio, 8
  %.pre69 = trunc i16 %.pre to i8
  %.pre70 = trunc i16 %newprio to i8
  br i1 %cmp.not66, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn67 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn64, %entry.for.body_crit_edge ]
  %state = getelementptr i8, ptr %.pn67, i32 21
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %cmp2.not = icmp eq i8 %2, 0
  br i1 %cmp2.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %p.068 = getelementptr i8, ptr %.pn67, i32 -12
  %designated_bridge.i = getelementptr i8, ptr %.pn67, i32 38
  %3 = ptrtoint ptr %p.068 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p.068, align 8
  %bridge_id.i55 = getelementptr inbounds %struct.net_bridge, ptr %4, i32 0, i32 14
  %bcmp.i56 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %designated_bridge.i, ptr noundef dereferenceable(8) %bridge_id.i55, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i56)
  %tobool.not.i57 = icmp eq i32 %bcmp.i56, 0
  br i1 %tobool.not.i57, label %br_is_designated_port.exit, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

br_is_designated_port.exit:                       ; preds = %land.lhs.true
  %designated_port.i = getelementptr i8, ptr %.pn67, i32 28
  %5 = ptrtoint ptr %designated_port.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %designated_port.i, align 8
  %port_id.i = getelementptr i8, ptr %.pn67, i32 26
  %7 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %port_id.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %6, i16 %8)
  %cmp.i.not = icmp eq i16 %6, %8
  br i1 %cmp.i.not, label %if.then, label %br_is_designated_port.exit.for.inc_crit_edge

br_is_designated_port.exit.for.inc_crit_edge:     ; preds = %br_is_designated_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %br_is_designated_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %designated_bridge.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.pre69, ptr %designated_bridge.i, align 2
  %arrayidx12 = getelementptr i8, ptr %.pn67, i32 39
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %.pre70, ptr %arrayidx12, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %br_is_designated_port.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %11 = ptrtoint ptr %.pn67 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn67, align 4
  %cmp.not = icmp eq ptr %.pn, %port_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %12 = ptrtoint ptr %bridge_id.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %.pre69, ptr %bridge_id.i, align 4
  %arrayidx29 = getelementptr %struct.net_bridge, ptr %br, i32 0, i32 14, i32 0, i32 1
  %13 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.pre70, ptr %arrayidx29, align 1
  tail call void @br_configuration_update(ptr noundef %br) #8
  tail call void @br_port_state_selection(ptr noundef %br) #8
  %bcmp.i60 = tail call i32 @bcmp(ptr noundef dereferenceable(8) %bridge_id.i, ptr noundef dereferenceable(8) %designated_root.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i60)
  %tobool.not.i61 = icmp eq i32 %bcmp.i60, 0
  %or.cond = select i1 %tobool.not.i61, i1 %tobool.not.i, i1 false
  br i1 %or.cond, label %if.then34, label %for.end.if.end35_crit_edge

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then34:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @br_become_root_bridge(ptr noundef %br) #8
  br label %if.end35

if.end35:                                         ; preds = %if.then34, %for.end.if.end35_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %br) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_stp_set_port_priority(ptr noundef %p, i32 noundef %newprio) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %newprio)
  %cmp = icmp ugt i32 %newprio, 63
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = trunc i32 %newprio to i8
  %port_no = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 9
  %0 = ptrtoint ptr %port_no to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %port_no, align 2
  %2 = trunc i32 %newprio to i16
  %conv1.i = shl nuw i16 %2, 10
  %3 = and i16 %1, 1023
  %or.i = or i16 %3, %conv1.i
  %designated_bridge.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 15
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p, align 8
  %bridge_id.i = getelementptr inbounds %struct.net_bridge, ptr %5, i32 0, i32 14
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(8) %designated_bridge.i, ptr noundef dereferenceable(8) %bridge_id.i, i32 8) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %br_is_designated_port.exit, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

br_is_designated_port.exit:                       ; preds = %if.end
  %designated_port.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 13
  %6 = ptrtoint ptr %designated_port.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %designated_port.i, align 8
  %port_id.i = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 12
  %8 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %port_id.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %9)
  %cmp.i.not = icmp eq i16 %7, %9
  br i1 %cmp.i.not, label %if.then2, label %br_is_designated_port.exit.if.end3_crit_edge

br_is_designated_port.exit.if.end3_crit_edge:     ; preds = %br_is_designated_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end3

if.then2:                                         ; preds = %br_is_designated_port.exit
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %designated_port.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %or.i, ptr %designated_port.i, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %br_is_designated_port.exit.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %port_id = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 12
  %11 = ptrtoint ptr %port_id to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %or.i, ptr %port_id, align 2
  %priority = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 7
  %12 = ptrtoint ptr %priority to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %priority, align 8
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(8) %bridge_id.i, ptr noundef dereferenceable(8) %designated_bridge.i, i32 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool6.not = icmp eq i32 %bcmp, 0
  br i1 %tobool6.not, label %land.lhs.true, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end3
  %designated_port9 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 13
  %13 = ptrtoint ptr %designated_port9 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %designated_port9, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %or.i, i16 %14)
  %cmp11 = icmp ult i16 %or.i, %14
  br i1 %cmp11, label %if.then13, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @br_become_designated_port(ptr noundef %p) #8
  %15 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %p, align 8
  tail call void @br_port_state_selection(ptr noundef %16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %land.lhs.true.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %entry.cleanup_crit_edge ], [ 0, %if.then13 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_stp_set_path_cost(ptr nocapture noundef %p, i32 noundef %path_cost) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %path_cost, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -65535, i32 %0)
  %1 = icmp ult i32 %0, -65535
  br i1 %1, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %flags = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or = or i32 %3, 16
  store i32 %or, ptr %flags, align 4
  %path_cost2 = getelementptr inbounds %struct.net_bridge_port, ptr %p, i32 0, i32 16
  %4 = ptrtoint ptr %path_cost2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %path_cost, ptr %path_cost2, align 4
  %5 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p, align 8
  tail call void @br_configuration_update(ptr noundef %6) #8
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p, align 8
  tail call void @br_port_state_selection(ptr noundef %8) #8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_show_bridge_id(ptr nocapture noundef writeonly %buf, ptr nocapture noundef readonly %id) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 1
  %conv = zext i8 %1 to i32
  %arrayidx2 = getelementptr [2 x i8], ptr %id, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx2, align 1
  %conv3 = zext i8 %3 to i32
  %addr = getelementptr inbounds %struct.bridge_id, ptr %id, i32 0, i32 1
  %4 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %addr, align 1
  %conv5 = zext i8 %5 to i32
  %arrayidx7 = getelementptr %struct.bridge_id, ptr %id, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7, align 1
  %conv8 = zext i8 %7 to i32
  %arrayidx10 = getelementptr %struct.bridge_id, ptr %id, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %9 to i32
  %arrayidx13 = getelementptr %struct.bridge_id, ptr %id, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %11 to i32
  %arrayidx16 = getelementptr %struct.bridge_id, ptr %id, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %13 to i32
  %arrayidx19 = getelementptr %struct.bridge_id, ptr %id, i32 0, i32 1, i32 5
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %15 to i32
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv5, i32 noundef %conv8, i32 noundef %conv11, i32 noundef %conv14, i32 noundef %conv17, i32 noundef %conv20)
  ret i32 %call
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @br_stp_call_user(ptr nocapture noundef readonly %br, ptr noundef %arg) unnamed_addr #0 align 64 {
entry:
  %argv = alloca [4 x ptr], align 4
  %envp = alloca [1 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %argv) #8
  %0 = getelementptr inbounds [4 x ptr], ptr %argv, i32 0, i32 1
  %1 = getelementptr inbounds [4 x ptr], ptr %argv, i32 0, i32 2
  %2 = getelementptr inbounds [4 x ptr], ptr %argv, i32 0, i32 3
  %3 = ptrtoint ptr %argv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.10, ptr %argv, align 4
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arg, ptr %1, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %envp) #8
  %9 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %envp, align 4
  %call = call i32 @call_usermodehelper(ptr noundef nonnull @.str.10, ptr noundef nonnull %argv, ptr noundef nonnull %envp, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end36_crit_edge

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then:                                          ; preds = %entry
  %and = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body15, label %do.body

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br_stp_call_user.__UNIQUE_ID_ddebug562, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br_stp_call_user, %if.then10)) #8
          to label %if.end36 [label %if.then10], !srcloc !52

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %and14 = and i32 %call, 127
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br_stp_call_user.__UNIQUE_ID_ddebug562, ptr noundef nonnull @.str.12, ptr noundef %11, i32 noundef %and14) #8
  br label %if.end36

do.body15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br_stp_call_user.__UNIQUE_ID_ddebug563, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br_stp_call_user, %if.then27)) #8
          to label %if.end36 [label %if.then27], !srcloc !52

if.then27:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %14 = lshr i32 %call, 8
  %and31 = and i32 %14, 255
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br_stp_call_user.__UNIQUE_ID_ddebug563, ptr noundef nonnull @.str.13, ptr noundef %13, i32 noundef %and31) #8
  br label %if.end36

if.end36:                                         ; preds = %if.then27, %do.body15, %if.then10, %do.body, %entry.if.end36_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %envp) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %argv) #8
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__br_set_forward_delay(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_usermodehelper(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !28, !30, !31, !32, !34, !35, !37, !39, !40, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bridge/br_stp_if.c", i32 45, i32 22}
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../net/bridge/br_stp_if.c", i32 202, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @br_stp_set_enabled.__msg, !7, !"__msg", i1 false, i1 false}
!7 = !{!"../net/bridge/br_stp_if.c", i32 205, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/bridge/br_stp_if.c", i32 347, i32 22}
!10 = !{ptr @br_mac_zero_aligned, !11, !"br_mac_zero_aligned", i1 false, i1 false}
!11 = !{!"../net/bridge/br_stp_if.c", i32 253, i32 29}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/bridge/br_stp_if.c", i32 153, i32 30}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/bridge/br_stp_if.c", i32 156, i32 3}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @br_stp_start._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @br_stp_start._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/bridge/br_stp_if.c", i32 167, i32 3}
!21 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @br_stp_start.__UNIQUE_ID_ddebug564, !20, !"__UNIQUE_ID_ddebug564", i1 false, i1 false}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../net/bridge/br_stp_if.c", i32 170, i32 3}
!25 = !{ptr @br_stp_start.__UNIQUE_ID_ddebug565, !24, !"__UNIQUE_ID_ddebug565", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../net/bridge/br_stp_if.c", i32 130, i32 19}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/bridge/br_stp_if.c", i32 138, i32 4}
!30 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @br_stp_call_user.__UNIQUE_ID_ddebug562, !29, !"__UNIQUE_ID_ddebug562", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../net/bridge/br_stp_if.c", i32 141, i32 4}
!34 = !{ptr @br_stp_call_user.__UNIQUE_ID_ddebug563, !33, !"__UNIQUE_ID_ddebug563", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/bridge/br_stp_if.c", i32 186, i32 30}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/bridge/br_stp_if.c", i32 188, i32 4}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @br_stp_stop._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @br_stp_stop._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i64 2148698210, i64 2148698215, i64 2148698228, i64 2148698272, i64 2148698306, i64 2148698327}
