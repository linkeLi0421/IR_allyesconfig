; ModuleID = '/llk/IR_all_yes/drivers/thermal/thermal_netlink.c_pt.bc'
source_filename = "../drivers/thermal/thermal_netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.20 }
%union.anon.20 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.21 }
%union.anon.21 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.24, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.28, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.28 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.29, i32, %struct.spinlock }
%union.anon.29 = type { %struct.anon.30 }
%struct.anon.30 = type { ptr, ptr }
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
%struct.nla_policy = type { i8, i8, i16, %union.anon.18 }
%union.anon.18 = type { i32 }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.sk_buff = type { %union.anon, %union.anon.1, %union.anon.2, [48 x i8], %union.anon.3, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.5, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.1 = type { ptr }
%union.anon.2 = type { i64 }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { i32, ptr }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.7, i32, i32, i32, i16, i16, %union.anon.9, i32, %union.anon.10, %union.anon.11, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.7 = type { i32 }
%union.anon.9 = type { i32 }
%union.anon.10 = type { i32 }
%union.anon.11 = type { i16 }
%struct.param = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.99 }
%union.anon.99 = type { [6 x i32], [24 x i8] }
%struct.genl_dumpit_info = type { ptr, %struct.genl_ops, ptr }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32 }
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
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }

@thermal_gnl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"thermal\00\00\00\00\00\00\00\00\00", i32 1, i32 19, i32 0, i8 0, i8 0, i8 5, i8 2, ptr @thermal_genl_policy, ptr null, ptr null, ptr null, ptr @thermal_genl_ops, ptr @thermal_genl_mcgrps, ptr null }, section ".data..ro_after_init", align 4
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@genlmsg_multicast_netns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/genetlink.h\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@event_cb = internal constant { [14 x ptr], [40 x i8] } { [14 x ptr] [ptr null, ptr @thermal_genl_event_tz_create, ptr @thermal_genl_event_tz, ptr @thermal_genl_event_tz, ptr @thermal_genl_event_tz, ptr @thermal_genl_event_tz_trip_up, ptr @thermal_genl_event_tz_trip_up, ptr @thermal_genl_event_tz_trip_add, ptr @thermal_genl_event_tz_trip_add, ptr @thermal_genl_event_tz_trip_delete, ptr @thermal_genl_event_cdev_add, ptr @thermal_genl_event_cdev_delete, ptr @thermal_genl_event_cdev_state_update, ptr @thermal_genl_event_gov_change], [40 x i8] zeroinitializer }, align 32
@thermal_genl_policy = internal constant { [20 x %struct.nla_policy], [32 x i8] } { [20 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.18 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.18 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.18 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.18 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.18 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.18 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.18 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.18 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.18 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 20, %union.anon.18 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.18 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.18 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 20, %union.anon.18 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.18 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.18 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.18 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.18 zeroinitializer }, %struct.nla_policy { i8 5, i8 0, i16 20, %union.anon.18 zeroinitializer }, %struct.nla_policy zeroinitializer], [32 x i8] zeroinitializer }, align 32
@thermal_genl_ops = internal constant { [5 x %struct.genl_small_ops], [36 x i8] } { [5 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr null, ptr @thermal_genl_cmd_dumpit, i8 1, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @thermal_genl_cmd_doit, ptr null, i8 2, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @thermal_genl_cmd_doit, ptr null, i8 3, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @thermal_genl_cmd_doit, ptr null, i8 4, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr null, ptr @thermal_genl_cmd_dumpit, i8 6, i8 0, i8 0, i8 3 }], [36 x i8] zeroinitializer }, align 32
@thermal_genl_mcgrps = internal constant { [2 x %struct.genl_multicast_group], [62 x i8] } { [2 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"sampling\00\00\00\00\00\00\00\00", i8 0 }, %struct.genl_multicast_group { [16 x i8] c"event\00\00\00\00\00\00\00\00\00\00\00", i8 0 }], [62 x i8] zeroinitializer }, align 32
@cmd_cb = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr null, ptr @thermal_genl_cmd_tz_get_id, ptr @thermal_genl_cmd_tz_get_trip, ptr @thermal_genl_cmd_tz_get_temp, ptr @thermal_genl_cmd_tz_get_gov, ptr null, ptr @thermal_genl_cmd_cdev_get], [36 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [27 x i8] c"../include/net/genetlink.h\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 308, i32 6 }
@___asan_gen_.5 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 991, i32 3 }
@___asan_gen_.8 = private unnamed_addr constant [9 x i8] c"event_cb\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 208, i32 13 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"thermal_genl_policy\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 21, i32 32 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"thermal_genl_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 607, i32 36 }
@___asan_gen_.17 = private unnamed_addr constant [20 x i8] c"thermal_genl_mcgrps\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 16, i32 42 }
@___asan_gen_.20 = private unnamed_addr constant [7 x i8] c"cmd_cb\00", align 1
@___asan_gen_.21 = private constant [37 x i8] c"../drivers/thermal/thermal_netlink.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 538, i32 13 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @.str.1, ptr @event_cb, ptr @thermal_genl_policy, ptr @thermal_genl_ops, ptr @thermal_genl_mcgrps, ptr @cmd_cb], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_cb to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_genl_policy to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_genl_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thermal_genl_mcgrps to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmd_cb to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@thermal_genl_event_tz_delete = dso_local alias i32 (ptr), ptr @thermal_genl_event_tz
@thermal_genl_event_tz_enable = dso_local alias i32 (ptr), ptr @thermal_genl_event_tz
@thermal_genl_event_tz_disable = dso_local alias i32 (ptr), ptr @thermal_genl_event_tz
@thermal_genl_event_tz_trip_down = dso_local alias i32 (ptr), ptr @thermal_genl_event_tz_trip_up
@thermal_genl_event_tz_trip_change = dso_local alias i32 (ptr), ptr @thermal_genl_event_tz_trip_add

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thermal_genl_sampling_temp(i32 noundef %id, i32 noundef %temp) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i24 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3860, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @thermal_gnl_family, i32 noundef 0, i8 noundef zeroext 0) #6
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.out_free_crit_edge, label %if.end4

if.end.out_free_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %id, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.if.then.i_crit_edge

if.end4.if.then.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end8:                                          ; preds = %if.end4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i24) #6
  %1 = ptrtoint ptr %tmp.i24 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %temp, ptr %tmp.i24, align 4
  %call.i25 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i24) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25)
  %tobool10.not = icmp eq i32 %call.i25, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.if.then.i_crit_edge

if.end8.if.then.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i

if.end12:                                         ; preds = %if.end8
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %4 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %5 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @thermal_gnl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.not.i.i.not = icmp eq i8 %5, 0
  br i1 %cmp.not.i.i.not, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end12
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !26

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 308, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end39.i.i:                                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %6 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @thermal_gnl_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 16
  %8 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %dst_group.i.i.i, align 8
  %call.i.i.i26 = call i32 @netlink_broadcast(ptr noundef %7, ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef %6, i32 noundef 3264) #6
  br label %cleanup

if.then.i:                                        ; preds = %if.end8.if.then.i_crit_edge, %if.end4.if.then.i_crit_edge
  %add.ptr1.i27 = getelementptr i8, ptr %call1, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i27, null
  br i1 %tobool.not.i.i.i, label %if.then.i.out_free_crit_edge, label %if.then.i.i.i

if.then.i.out_free_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %10, %add.ptr1.i27
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !27

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %11 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i27 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i.i, i32 noundef %sub.ptr.sub.i.i.i) #6
  br label %out_free

out_free:                                         ; preds = %if.end.i.i.i, %if.then.i.out_free_crit_edge, %if.end.out_free_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %out_free ], [ -12, %entry.cleanup_crit_edge ], [ 0, %land.rhs.i.i.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.end39.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_genl_event_tz(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %tz_id = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %tz_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tz_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %1, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %. = select i1 %tobool.not, i32 0, i32 -90
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_genl_event_tz_trip_up(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %tmp.i15 = alloca i32, align 4
  %tmp.i13 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %tz_id = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %tz_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tz_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %1, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msg, align 4
  %trip_id = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 5
  %7 = ptrtoint ptr %trip_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %trip_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i13) #6
  %9 = ptrtoint ptr %tmp.i13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i13, align 4
  %call.i14 = call i32 @nla_put(ptr noundef %6, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i13) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i13) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool3.not = icmp eq i32 %call.i14, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msg, align 4
  %temp = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 9
  %12 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i15) #6
  %14 = ptrtoint ptr %tmp.i15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i15, align 4
  %call.i16 = call i32 @nla_put(ptr noundef %11, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i15) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i16)
  %tobool7.not = icmp eq i32 %call.i16, 0
  %spec.select = select i1 %tobool7.not, i32 0, i32 -90
  br label %return

return:                                           ; preds = %lor.lhs.false4, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -90, %lor.lhs.false.return_crit_edge ], [ -90, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_genl_event_tz_trip_add(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %tmp.i31 = alloca i32, align 4
  %tmp.i29 = alloca i32, align 4
  %tmp.i27 = alloca i32, align 4
  %tmp.i25 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %tz_id = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %tz_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tz_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %1, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msg, align 4
  %trip_id = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 5
  %7 = ptrtoint ptr %trip_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %trip_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i25) #6
  %9 = ptrtoint ptr %tmp.i25 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i25, align 4
  %call.i26 = call i32 @nla_put(ptr noundef %6, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i25) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool3.not = icmp eq i32 %call.i26, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msg, align 4
  %trip_type = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 7
  %12 = ptrtoint ptr %trip_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %trip_type, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i27) #6
  %14 = ptrtoint ptr %tmp.i27 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i27, align 4
  %call.i28 = call i32 @nla_put(ptr noundef %11, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i27) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i27) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool7.not = icmp eq i32 %call.i28, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false4.return_crit_edge

lor.lhs.false4.return_crit_edge:                  ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %msg, align 4
  %trip_temp = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 6
  %17 = ptrtoint ptr %trip_temp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %trip_temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i29) #6
  %19 = ptrtoint ptr %tmp.i29 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %tmp.i29, align 4
  %call.i30 = call i32 @nla_put(ptr noundef %16, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i29) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool11.not = icmp eq i32 %call.i30, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false8.return_crit_edge

lor.lhs.false8.return_crit_edge:                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %msg, align 4
  %trip_hyst = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 8
  %22 = ptrtoint ptr %trip_hyst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %trip_hyst, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i31) #6
  %24 = ptrtoint ptr %tmp.i31 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %tmp.i31, align 4
  %call.i32 = call i32 @nla_put(ptr noundef %21, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i31) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i31) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool15.not = icmp eq i32 %call.i32, 0
  %spec.select = select i1 %tobool15.not, i32 0, i32 -90
  br label %return

return:                                           ; preds = %lor.lhs.false12, %lor.lhs.false8.return_crit_edge, %lor.lhs.false4.return_crit_edge, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -90, %lor.lhs.false8.return_crit_edge ], [ -90, %lor.lhs.false4.return_crit_edge ], [ -90, %lor.lhs.false.return_crit_edge ], [ -90, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false12 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thermal_notify_tz_create(i32 noundef %tz_id, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.param, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p) #6
  %0 = call ptr @memset(ptr %p, i32 0, i32 48)
  %name1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 2
  %1 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %name, ptr %name1, align 4
  %tz_id2 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %tz_id2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %tz_id, ptr %tz_id2, align 4
  %call = call fastcc i32 @thermal_genl_send_event(i32 noundef 1, ptr noundef nonnull %p)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @thermal_genl_send_event(i32 noundef %event, ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3860, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %msg1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i.i.i, ptr %msg1, align 4
  %conv = trunc i32 %event to i8
  %call2 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @thermal_gnl_family, i32 noundef 0, i8 noundef zeroext %conv) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.out_free_msg_crit_edge, label %if.end5

if.end.out_free_msg_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_msg

if.end5:                                          ; preds = %if.end
  %arrayidx = getelementptr [14 x ptr], ptr @event_cb, i32 0, i32 %event
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call6 = tail call i32 %2(ptr noundef %p) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  %add.ptr1.i = getelementptr i8, ptr %call2, i32 -20
  br i1 %tobool7.not, label %if.end9, label %if.then.i

if.end9:                                          ; preds = %if.end5
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %5 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %6 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @thermal_gnl_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %6)
  %cmp.not.i.i = icmp ugt i8 %6, 1
  br i1 %cmp.not.i.i, label %if.end39.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %if.end9
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !26

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 308, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end39.i.i:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %7 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @thermal_gnl_family, i32 0, i32 5), align 4
  %add.i.i = add i32 %7, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 16
  %9 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add.i.i, ptr %dst_group.i.i.i, align 8
  %call.i.i.i24 = tail call i32 @netlink_broadcast(ptr noundef %8, ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef %add.i.i, i32 noundef 3264) #6
  br label %cleanup

if.then.i:                                        ; preds = %if.end5
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.out_free_msg_crit_edge, label %if.then.i.i.i

if.then.i.out_free_msg_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_msg

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %11, %add.ptr1.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !27

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %12 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  tail call void @skb_trim(ptr noundef nonnull %call.i.i.i, i32 noundef %sub.ptr.sub.i.i.i) #6
  br label %out_free_msg

out_free_msg:                                     ; preds = %if.end.i.i.i, %if.then.i.out_free_msg_crit_edge, %if.end.out_free_msg_crit_edge
  %ret.0 = phi i32 [ -90, %if.end.out_free_msg_crit_edge ], [ %call6, %if.then.i.out_free_msg_crit_edge ], [ %call6, %if.end.i.i.i ]
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %out_free_msg, %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_free_msg ], [ -12, %entry.cleanup_crit_edge ], [ 0, %land.rhs.i.i.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.end39.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thermal_notify_tz_delete(i32 noundef %tz_id) local_unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.param, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p) #6
  %0 = call ptr @memset(ptr %p, i32 0, i32 48)
  %tz_id1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 3
  %1 = ptrtoint ptr %tz_id1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %tz_id, ptr %tz_id1, align 4
  %call = call fastcc i32 @thermal_genl_send_event(i32 noundef 2, ptr noundef nonnull %p)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thermal_notify_tz_enable(i32 noundef %tz_id) local_unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.param, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p) #6
  %0 = call ptr @memset(ptr %p, i32 0, i32 48)
  %tz_id1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 3
  %1 = ptrtoint ptr %tz_id1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %tz_id, ptr %tz_id1, align 4
  %call = call fastcc i32 @thermal_genl_send_event(i32 noundef 4, ptr noundef nonnull %p)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thermal_notify_tz_disable(i32 noundef %tz_id) local_unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.param, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p) #6
  %0 = call ptr @memset(ptr %p, i32 0, i32 48)
  %tz_id1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 3
  %1 = ptrtoint ptr %tz_id1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %tz_id, ptr %tz_id1, align 4
  %call = call fastcc i32 @thermal_genl_send_event(i32 noundef 3, ptr noundef nonnull %p)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thermal_notify_tz_trip_down(i32 noundef %tz_id, i32 noundef %trip_id, i32 noundef %temp) local_unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.param, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p) #6
  %0 = call ptr @memset(ptr %p, i32 0, i32 48)
  %tz_id1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 3
  %1 = ptrtoint ptr %tz_id1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %tz_id, ptr %tz_id1, align 4
  %trip_id2 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %trip_id2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %trip_id, ptr %trip_id2, align 4
  %temp3 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 9
  %3 = ptrtoint ptr %temp3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %temp, ptr %temp3, align 4
  %call = call fastcc i32 @thermal_genl_send_event(i32 noundef 6, ptr noundef nonnull %p)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thermal_notify_tz_trip_up(i32 noundef %tz_id, i32 noundef %trip_id, i32 noundef %temp) local_unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.param, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p) #6
  %0 = call ptr @memset(ptr %p, i32 0, i32 48)
  %tz_id1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 3
  %1 = ptrtoint ptr %tz_id1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %tz_id, ptr %tz_id1, align 4
  %trip_id2 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %trip_id2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %trip_id, ptr %trip_id2, align 4
  %temp3 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 9
  %3 = ptrtoint ptr %temp3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %temp, ptr %temp3, align 4
  %call = call fastcc i32 @thermal_genl_send_event(i32 noundef 5, ptr noundef nonnull %p)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thermal_notify_tz_trip_add(i32 noundef %tz_id, i32 noundef %trip_id, i32 noundef %trip_type, i32 noundef %trip_temp, i32 noundef %trip_hyst) local_unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.param, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p) #6
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p, align 4
  %msg = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %msg, align 4
  %name = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %name, align 4
  %tz_id1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 3
  %3 = ptrtoint ptr %tz_id1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %tz_id, ptr %tz_id1, align 4
  %cdev_id = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 4
  %4 = ptrtoint ptr %cdev_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cdev_id, align 4
  %trip_id2 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 5
  %5 = ptrtoint ptr %trip_id2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %trip_id, ptr %trip_id2, align 4
  %trip_temp3 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 6
  %6 = ptrtoint ptr %trip_temp3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %trip_temp, ptr %trip_temp3, align 4
  %trip_type4 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 7
  %7 = ptrtoint ptr %trip_type4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %trip_type, ptr %trip_type4, align 4
  %trip_hyst5 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 8
  %8 = ptrtoint ptr %trip_hyst5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %trip_hyst, ptr %trip_hyst5, align 4
  %temp = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 9
  %9 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %temp, align 4
  %cdev_state = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 10
  %10 = ptrtoint ptr %cdev_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cdev_state, align 4
  %cdev_max_state = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 11
  %11 = ptrtoint ptr %cdev_max_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cdev_max_state, align 4
  %call = call fastcc i32 @thermal_genl_send_event(i32 noundef 8, ptr noundef nonnull %p)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thermal_notify_tz_trip_delete(i32 noundef %tz_id, i32 noundef %trip_id) local_unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.param, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p) #6
  %0 = call ptr @memset(ptr %p, i32 0, i32 48)
  %tz_id1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 3
  %1 = ptrtoint ptr %tz_id1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %tz_id, ptr %tz_id1, align 4
  %trip_id2 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 5
  %2 = ptrtoint ptr %trip_id2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %trip_id, ptr %trip_id2, align 4
  %call = call fastcc i32 @thermal_genl_send_event(i32 noundef 9, ptr noundef nonnull %p)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thermal_notify_tz_trip_change(i32 noundef %tz_id, i32 noundef %trip_id, i32 noundef %trip_type, i32 noundef %trip_temp, i32 noundef %trip_hyst) local_unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.param, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p) #6
  %0 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %p, align 4
  %msg = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %msg, align 4
  %name = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %name, align 4
  %tz_id1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 3
  %3 = ptrtoint ptr %tz_id1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %tz_id, ptr %tz_id1, align 4
  %cdev_id = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 4
  %4 = ptrtoint ptr %cdev_id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cdev_id, align 4
  %trip_id2 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 5
  %5 = ptrtoint ptr %trip_id2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %trip_id, ptr %trip_id2, align 4
  %trip_temp3 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 6
  %6 = ptrtoint ptr %trip_temp3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %trip_temp, ptr %trip_temp3, align 4
  %trip_type4 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 7
  %7 = ptrtoint ptr %trip_type4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %trip_type, ptr %trip_type4, align 4
  %trip_hyst5 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 8
  %8 = ptrtoint ptr %trip_hyst5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %trip_hyst, ptr %trip_hyst5, align 4
  %temp = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 9
  %9 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %temp, align 4
  %cdev_state = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 10
  %10 = ptrtoint ptr %cdev_state to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %cdev_state, align 4
  %cdev_max_state = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 11
  %11 = ptrtoint ptr %cdev_max_state to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %cdev_max_state, align 4
  %call = call fastcc i32 @thermal_genl_send_event(i32 noundef 7, ptr noundef nonnull %p)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thermal_notify_cdev_state_update(i32 noundef %cdev_id, i32 noundef %cdev_state) local_unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.param, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p) #6
  %0 = call ptr @memset(ptr %p, i32 0, i32 48)
  %cdev_id1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %cdev_id1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cdev_id, ptr %cdev_id1, align 4
  %cdev_state2 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 10
  %2 = ptrtoint ptr %cdev_state2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cdev_state, ptr %cdev_state2, align 4
  %call = call fastcc i32 @thermal_genl_send_event(i32 noundef 12, ptr noundef nonnull %p)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thermal_notify_cdev_add(i32 noundef %cdev_id, ptr noundef %name, i32 noundef %cdev_max_state) local_unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.param, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p) #6
  %0 = call ptr @memset(ptr %p, i32 0, i32 44)
  %name1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 2
  %1 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %name, ptr %name1, align 4
  %cdev_id2 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 4
  %2 = ptrtoint ptr %cdev_id2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cdev_id, ptr %cdev_id2, align 4
  %cdev_max_state3 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 11
  %3 = ptrtoint ptr %cdev_max_state3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cdev_max_state, ptr %cdev_max_state3, align 4
  %call = call fastcc i32 @thermal_genl_send_event(i32 noundef 10, ptr noundef nonnull %p)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thermal_notify_cdev_delete(i32 noundef %cdev_id) local_unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.param, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p) #6
  %0 = call ptr @memset(ptr %p, i32 0, i32 48)
  %cdev_id1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 4
  %1 = ptrtoint ptr %cdev_id1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %cdev_id, ptr %cdev_id1, align 4
  %call = call fastcc i32 @thermal_genl_send_event(i32 noundef 11, ptr noundef nonnull %p)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thermal_notify_tz_gov_change(i32 noundef %tz_id, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.param, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p) #6
  %0 = call ptr @memset(ptr %p, i32 0, i32 48)
  %name1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 2
  %1 = ptrtoint ptr %name1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %name, ptr %name1, align 4
  %tz_id2 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %tz_id2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %tz_id, ptr %tz_id2, align 4
  %call = call fastcc i32 @thermal_genl_send_event(i32 noundef 13, ptr noundef nonnull %p)
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @thermal_netlink_init() local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @thermal_gnl_family) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_genl_event_tz_create(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %tz_id = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %tz_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tz_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %1, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msg, align 4
  %name = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 2
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %call.i7 = call i32 @strlen(ptr noundef %8) #9
  %add.i = add i32 %call.i7, 1
  %call1.i = call i32 @nla_put(ptr noundef %6, i32 noundef 10, i32 noundef %add.i, ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool3.not = icmp eq i32 %call1.i, 0
  %spec.select = select i1 %tobool3.not, i32 0, i32 -90
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi i32 [ -90, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_genl_event_tz_trip_delete(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %tmp.i7 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %tz_id = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %tz_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tz_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %1, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msg, align 4
  %trip_id = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 5
  %7 = ptrtoint ptr %trip_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %trip_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i7) #6
  %9 = ptrtoint ptr %tmp.i7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i7, align 4
  %call.i8 = call i32 @nla_put(ptr noundef %6, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool3.not = icmp eq i32 %call.i8, 0
  %spec.select = select i1 %tobool3.not, i32 0, i32 -90
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi i32 [ -90, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_genl_event_cdev_add(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %tmp.i14 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %name = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name, align 4
  %call.i = tail call i32 @strlen(ptr noundef %3) #9
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %1, i32 noundef 18, i32 noundef %add.i, ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msg, align 4
  %cdev_id = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 4
  %6 = ptrtoint ptr %cdev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cdev_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i, align 4
  %call.i13 = call i32 @nla_put(ptr noundef %5, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i13)
  %tobool3.not = icmp eq i32 %call.i13, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %msg, align 4
  %cdev_max_state = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 11
  %11 = ptrtoint ptr %cdev_max_state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cdev_max_state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i14) #6
  %13 = ptrtoint ptr %tmp.i14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tmp.i14, align 4
  %call.i15 = call i32 @nla_put(ptr noundef %10, i32 noundef 17, i32 noundef 4, ptr noundef nonnull %tmp.i14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool7.not = icmp eq i32 %call.i15, 0
  %spec.select = select i1 %tobool7.not, i32 0, i32 -90
  br label %return

return:                                           ; preds = %lor.lhs.false4, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -90, %lor.lhs.false.return_crit_edge ], [ -90, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_genl_event_cdev_delete(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %cdev_id = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 4
  %2 = ptrtoint ptr %cdev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cdev_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %1, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %. = select i1 %tobool.not, i32 0, i32 -90
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_genl_event_cdev_state_update(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %tmp.i7 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %cdev_id = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 4
  %2 = ptrtoint ptr %cdev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cdev_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %1, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msg, align 4
  %cdev_state = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 10
  %7 = ptrtoint ptr %cdev_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cdev_state, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i7) #6
  %9 = ptrtoint ptr %tmp.i7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i7, align 4
  %call.i8 = call i32 @nla_put(ptr noundef %6, i32 noundef 16, i32 noundef 4, ptr noundef nonnull %tmp.i7) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8)
  %tobool3.not = icmp eq i32 %call.i8, 0
  %spec.select = select i1 %tobool3.not, i32 0, i32 -90
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi i32 [ -90, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_genl_event_gov_change(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg, align 4
  %tz_id = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 3
  %2 = ptrtoint ptr %tz_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tz_id, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %1, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %msg, align 4
  %name = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 2
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %call.i7 = call i32 @strlen(ptr noundef %8) #9
  %add.i = add i32 %call.i7, 1
  %call1.i = call i32 @nla_put(ptr noundef %6, i32 noundef 19, i32 noundef %add.i, ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool3.not = icmp eq i32 %call1.i, 0
  %spec.select = select i1 %tobool3.not, i32 0, i32 -90
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi i32 [ -90, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_genl_cmd_dumpit(ptr noundef %skb, ptr nocapture noundef readonly %cb) #0 align 64 {
entry:
  %p = alloca %struct.param, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p) #6
  %0 = call ptr @memset(ptr %p, i32 0, i32 48)
  %msg = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %1 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %skb, ptr %msg, align 4
  %data.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 4
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %cmd1 = getelementptr inbounds %struct.genl_dumpit_info, ptr %3, i32 0, i32 1, i32 6
  %4 = ptrtoint ptr %cmd1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cmd1, align 4
  %call3 = tail call ptr @genlmsg_put(ptr noundef %skb, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @thermal_gnl_family, i32 noundef 0, i8 noundef zeroext %5) #6
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i8 %5 to i32
  %arrayidx = getelementptr [7 x ptr], ptr @cmd_cb, i32 0, i32 %conv
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call4 = call i32 %7(ptr noundef nonnull %p) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  %add.ptr1.i = getelementptr i8, ptr %call3, i32 -20
  br i1 %tobool5.not, label %if.end7, label %if.then.i

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %10 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %11 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %12, %add.ptr1.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !27

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %13 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -90, %entry.cleanup_crit_edge ], [ %call4, %if.then.i.cleanup_crit_edge ], [ %call4, %if.end.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_genl_cmd_doit(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #0 align 64 {
entry:
  %p = alloca %struct.param, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %p) #6
  %0 = getelementptr inbounds i8, ptr %p, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %attrs1 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs1, align 4
  %4 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %p, align 4
  %genlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 3
  %5 = ptrtoint ptr %genlhdr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %genlhdr, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %6, align 2
  %conv = zext i8 %8 to i32
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3860, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #6
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg3 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %9 = ptrtoint ptr %msg3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i.i, ptr %msg3, align 4
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %10 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %snd_portid.i, align 4
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %info, align 4
  %call.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef %11, i32 noundef %13, ptr noundef nonnull @thermal_gnl_family, i32 noundef 0, i8 noundef zeroext %8) #6
  %tobool6.not = icmp eq ptr %call.i, null
  br i1 %tobool6.not, label %if.end.out_free_msg_crit_edge, label %if.end8

if.end.out_free_msg_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_msg

if.end8:                                          ; preds = %if.end
  %arrayidx = getelementptr [7 x ptr], ptr @cmd_cb, i32 0, i32 %conv
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %call9 = call i32 %15(ptr noundef nonnull %p) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %add.ptr1.i = getelementptr i8, ptr %call.i, i32 -20
  br i1 %tobool10.not, label %if.end12, label %if.then.i

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %18 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %19 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %_net.i.i, align 4
  %21 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %20, i32 0, i32 21
  %23 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i32 = call i32 @netlink_unicast(ptr noundef %24, ptr noundef nonnull %call.i.i.i, i32 noundef %22, i32 noundef 64) #6
  %25 = call i32 @llvm.smin.i32(i32 %call.i.i.i32, i32 0) #6
  br label %cleanup

if.then.i:                                        ; preds = %if.end8
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.out_free_msg_crit_edge, label %if.then.i.i.i

if.then.i.out_free_msg_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_msg

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %26 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %27, %add.ptr1.i
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !27

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %28 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i.i, i32 noundef %sub.ptr.sub.i.i.i) #6
  br label %out_free_msg

out_free_msg:                                     ; preds = %if.end.i.i.i, %if.then.i.out_free_msg_crit_edge, %if.end.out_free_msg_crit_edge
  %ret.0 = phi i32 [ -90, %if.end.out_free_msg_crit_edge ], [ %call9, %if.then.i.out_free_msg_crit_edge ], [ %call9, %if.end.i.i.i ]
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %out_free_msg, %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_free_msg ], [ %25, %if.end12 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %p) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_genl_cmd_tz_get_id(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %msg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg1, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %1, i32 noundef 32769, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not16 = icmp eq ptr %3, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not16
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @for_each_thermal_zone(ptr noundef nonnull @__thermal_genl_cmd_tz_get_id, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then.i.i

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %3, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i15 = icmp ugt ptr %8, %3
  br i1 %cmp.i.i15, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !27

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void @skb_trim(ptr noundef %1, i32 noundef %sub.ptr.sub.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %nla_nest_cancel.exit ], [ 0, %if.end5 ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_genl_cmd_tz_get_trip(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %tmp.i73 = alloca i32, align 4
  %tmp.i71 = alloca i32, align 4
  %tmp.i69 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %type = alloca i32, align 4
  %temp = alloca i32, align 4
  %hyst = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %msg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg1, align 4
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup39_crit_edge, label %if.end

entry.cleanup39_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %call4 = tail call ptr @thermal_zone_get_by_id(i32 noundef %7) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup39_crit_edge, label %if.end7

if.end.cleanup39_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

if.end7:                                          ; preds = %if.end
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %1, i32 noundef 32772, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool9.not76 = icmp eq ptr %9, null
  %tobool9.not = select i1 %cmp.i.i, i1 true, i1 %tobool9.not76
  br i1 %tobool9.not, label %if.end7.cleanup39_crit_edge, label %if.end11

if.end7.cleanup39_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup39

if.end11:                                         ; preds = %if.end7
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %call4, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %trips = getelementptr inbounds %struct.thermal_zone_device, ptr %call4, i32 0, i32 9
  %10 = ptrtoint ptr %trips to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %trips, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp77 = icmp sgt i32 %11, 0
  br i1 %cmp77, label %for.body.lr.ph, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end11
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %call4, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.078 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #6
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %type, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #6
  %13 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %temp, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hyst) #6
  %14 = ptrtoint ptr %hyst to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %hyst, align 4
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops, align 4
  %get_trip_type = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %get_trip_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %get_trip_type, align 4
  %call12 = call i32 %18(ptr noundef nonnull %call4, i32 noundef %i.078, ptr noundef nonnull %type) #6
  %19 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops, align 4
  %get_trip_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %get_trip_temp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %get_trip_temp, align 4
  %call14 = call i32 %22(ptr noundef nonnull %call4, i32 noundef %i.078, ptr noundef nonnull %temp) #6
  %23 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ops, align 4
  %get_trip_hyst = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %24, i32 0, i32 8
  %25 = ptrtoint ptr %get_trip_hyst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_trip_hyst, align 4
  %tobool16.not = icmp eq ptr %26, null
  br i1 %tobool16.not, label %for.body.if.end21_crit_edge, label %if.then17

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call20 = call i32 %26(ptr noundef nonnull %call4, i32 noundef %i.078, ptr noundef nonnull %hyst) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %for.body.if.end21_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %27 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %i.078, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %1, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %lor.lhs.false, label %if.end21.out_cancel_nest_crit_edge

if.end21.out_cancel_nest_crit_edge:               ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_cancel_nest

lor.lhs.false:                                    ; preds = %if.end21
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i69) #6
  %30 = ptrtoint ptr %tmp.i69 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tmp.i69, align 4
  %call.i70 = call i32 @nla_put(ptr noundef %1, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i69) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i69) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool25.not = icmp eq i32 %call.i70, 0
  br i1 %tobool25.not, label %lor.lhs.false26, label %lor.lhs.false.out_cancel_nest_crit_edge

lor.lhs.false.out_cancel_nest_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_cancel_nest

lor.lhs.false26:                                  ; preds = %lor.lhs.false
  %31 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i71) #6
  %33 = ptrtoint ptr %tmp.i71 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %tmp.i71, align 4
  %call.i72 = call i32 @nla_put(ptr noundef %1, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i71) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i71) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %tobool28.not = icmp eq i32 %call.i72, 0
  br i1 %tobool28.not, label %lor.lhs.false29, label %lor.lhs.false26.out_cancel_nest_crit_edge

lor.lhs.false26.out_cancel_nest_crit_edge:        ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_cancel_nest

lor.lhs.false29:                                  ; preds = %lor.lhs.false26
  %34 = ptrtoint ptr %hyst to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hyst, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i73) #6
  %36 = ptrtoint ptr %tmp.i73 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %tmp.i73, align 4
  %call.i74 = call i32 @nla_put(ptr noundef %1, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i73) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i73) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool31.not = icmp eq i32 %call.i74, 0
  br i1 %tobool31.not, label %for.inc, label %lor.lhs.false29.out_cancel_nest_crit_edge

lor.lhs.false29.out_cancel_nest_crit_edge:        ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_cancel_nest

for.inc:                                          ; preds = %lor.lhs.false29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hyst) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #6
  %inc = add nuw nsw i32 %i.078, 1
  %37 = ptrtoint ptr %trips to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %trips, align 8
  %cmp = icmp slt i32 %inc, %38
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #6
  %39 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %40 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %41 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv.i, ptr %9, align 2
  br label %cleanup39

out_cancel_nest:                                  ; preds = %lor.lhs.false29.out_cancel_nest_crit_edge, %lor.lhs.false26.out_cancel_nest_crit_edge, %lor.lhs.false.out_cancel_nest_crit_edge, %if.end21.out_cancel_nest_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hyst) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #6
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup39

cleanup39:                                        ; preds = %out_cancel_nest, %for.end, %if.end7.cleanup39_crit_edge, %if.end.cleanup39_crit_edge, %entry.cleanup39_crit_edge
  %retval.0 = phi i32 [ -90, %out_cancel_nest ], [ 0, %for.end ], [ -22, %entry.cleanup39_crit_edge ], [ -22, %if.end.cleanup39_crit_edge ], [ -90, %if.end7.cleanup39_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_genl_cmd_tz_get_temp(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %tmp.i28 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %temp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %msg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #6
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp, align 4, !annotation !28
  %3 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %p, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 2
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i.i, align 4
  %call4 = tail call ptr @thermal_zone_get_by_id(i32 noundef %8) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @thermal_zone_get_temp(ptr noundef nonnull %call4, ptr noundef nonnull %temp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %9 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %1, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %lor.lhs.false, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %temp, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i28) #6
  %12 = ptrtoint ptr %tmp.i28 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tmp.i28, align 4
  %call.i29 = call i32 @nla_put(ptr noundef %1, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i28) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool15.not = icmp eq i32 %call.i29, 0
  %spec.select = select i1 %tobool15.not, i32 0, i32 -90
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ -90, %if.end11.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_genl_cmd_tz_get_gov(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %msg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg1, align 4
  %2 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %p, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %call4 = tail call ptr @thermal_zone_get_by_id(i32 noundef %7) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %call4, i32 0, i32 26
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %1, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.end7.if.then12_crit_edge

if.end7.if.then12_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

lor.lhs.false:                                    ; preds = %if.end7
  %governor = getelementptr inbounds %struct.thermal_zone_device, ptr %call4, i32 0, i32 22
  %9 = ptrtoint ptr %governor to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %governor, align 4
  %call.i25 = call i32 @strlen(ptr noundef %10) #9
  %add.i = add i32 %call.i25, 1
  %call1.i = call i32 @nla_put(ptr noundef %1, i32 noundef 13, i32 noundef %add.i, ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool11.not = icmp eq i32 %call1.i, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.end13_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

lor.lhs.false.if.end13_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %if.end7.if.then12_crit_edge
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %lor.lhs.false.if.end13_crit_edge
  %ret.0 = phi i32 [ -90, %if.then12 ], [ 0, %lor.lhs.false.if.end13_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thermal_genl_cmd_cdev_get(ptr nocapture noundef readonly %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %msg1 = getelementptr inbounds %struct.param, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %msg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg1, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %1, i32 noundef 32782, i32 noundef 0, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not16 = icmp eq ptr %3, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not16
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @for_each_thermal_cooling_device(ptr noundef nonnull @__thermal_genl_cmd_cdev_get, ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.then.i.i

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv.i, ptr %3, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i15 = icmp ugt ptr %8, %3
  br i1 %cmp.i.i15, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !27

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #6
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %9 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  tail call void @skb_trim(ptr noundef %1, i32 noundef %sub.ptr.sub.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %nla_nest_cancel.exit ], [ 0, %if.end5 ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @for_each_thermal_zone(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__thermal_genl_cmd_tz_get_id(ptr noundef %tz, ptr noundef %data) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tz to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tz, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %data, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.thermal_zone_device, ptr %tz, i32 0, i32 1
  %call.i5 = call i32 @strlen(ptr noundef %type) #9
  %add.i = add i32 %call.i5, 1
  %call1.i = call i32 @nla_put(ptr noundef %data, i32 noundef 10, i32 noundef %add.i, ptr noundef %type) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not = icmp eq i32 %call1.i, 0
  %spec.select = select i1 %tobool2.not, i32 0, i32 -90
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_zone_get_by_id(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @thermal_zone_get_temp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @for_each_thermal_cooling_device(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @__thermal_genl_cmd_cdev_get(ptr nocapture noundef readonly %cdev, ptr noundef %data) #0 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cdev, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %data, i32 noundef 15, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %type = getelementptr inbounds %struct.thermal_cooling_device, ptr %cdev, i32 0, i32 1
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %type, align 4
  %call.i7 = call i32 @strlen(ptr noundef %4) #9
  %add.i = add i32 %call.i7, 1
  %call1.i = call i32 @nla_put(ptr noundef %data, i32 noundef 18, i32 noundef %add.i, ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not = icmp eq i32 %call1.i, 0
  %. = select i1 %tobool2.not, i32 0, i32 -90
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %entry.cleanup_crit_edge ], [ %., %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../include/net/genetlink.h", i32 308, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../include/net/netlink.h", i32 991, i32 3}
!5 = !{ptr @event_cb, !6, !"event_cb", i1 false, i1 false}
!6 = !{!"../drivers/thermal/thermal_netlink.c", i32 208, i32 13}
!7 = !{ptr @thermal_gnl_family, !8, !"thermal_gnl_family", i1 false, i1 false}
!8 = !{!"../drivers/thermal/thermal_netlink.c", i32 635, i32 27}
!9 = !{ptr @thermal_genl_policy, !10, !"thermal_genl_policy", i1 false, i1 false}
!10 = !{!"../drivers/thermal/thermal_netlink.c", i32 21, i32 32}
!11 = !{ptr @thermal_genl_ops, !12, !"thermal_genl_ops", i1 false, i1 false}
!12 = !{!"../drivers/thermal/thermal_netlink.c", i32 607, i32 36}
!13 = !{ptr @cmd_cb, !14, !"cmd_cb", i1 false, i1 false}
!14 = !{!"../drivers/thermal/thermal_netlink.c", i32 538, i32 13}
!15 = !{ptr @thermal_genl_mcgrps, !16, !"thermal_genl_mcgrps", i1 false, i1 false}
!16 = !{!"../drivers/thermal/thermal_netlink.c", i32 16, i32 42}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{!"branch_weights", i32 1, i32 2000}
!28 = !{!"auto-init"}
