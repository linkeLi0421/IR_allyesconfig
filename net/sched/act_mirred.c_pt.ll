; ModuleID = '/llk/IR_all_yes/net/sched/act_mirred.c_pt.bc'
source_filename = "../net/sched/act_mirred.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tc_action_ops = type { %struct.list_head, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.63 }
%union.anon.63 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%struct.tc_action = type { ptr, i32, ptr, i32, %struct.refcount_struct, %struct.atomic_t, i32, %struct.tcf_t, %struct.gnet_stats_basic_sync, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, [12 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.tcf_t = type { i64, i64, i64, i64 }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.tcf_mirred = type { %struct.tc_action, i32, i8, ptr, ptr, %struct.list_head, [8 x i8] }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.106, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.106 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
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
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
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
%struct.tc_mirred = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.127, ptr }
%union.anon.127 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, i64, i64, i64, i32 }
%struct.flow_offload_action = type { ptr, i32, i32, i32, %struct.flow_stats, %struct.flow_action }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.67, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.67 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.65, i32, %struct.spinlock }
%union.anon.65 = type { %struct.anon.66 }
%struct.anon.66 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.tc_action_net = type { ptr, ptr }
%struct.tcf_idrinfo = type { %struct.mutex, %struct.idr, ptr }

@__UNIQUE_ID_author393 = internal constant [41 x i8] c"act_mirred.author=Jamal Hadi Salim(2002)\00", section ".modinfo", align 1
@__UNIQUE_ID_description394 = internal constant [54 x i8] c"act_mirred.description=Device Mirror/redirect actions\00", section ".modinfo", align 1
@__UNIQUE_ID_file395 = internal constant [37 x i8] c"act_mirred.file=net/sched/act_mirred\00", section ".modinfo", align 1
@__UNIQUE_ID_license396 = internal constant [23 x i8] c"act_mirred.license=GPL\00", section ".modinfo", align 1
@act_mirred_ops = internal global { %struct.tc_action_ops, [48 x i8] } { %struct.tc_action_ops { %struct.list_head zeroinitializer, [16 x i8] c"mirred\00\00\00\00\00\00\00\00\00\00", i32 8, i32 304, ptr null, ptr @tcf_mirred_act, ptr @tcf_mirred_dump, ptr @tcf_mirred_release, ptr @tcf_mirred_search, ptr @tcf_mirred_init, ptr @tcf_mirred_walker, ptr @tcf_stats_update, ptr @tcf_mirred_get_fill_size, ptr @tcf_mirred_get_dev, ptr null, ptr @tcf_mirred_offload_act_setup }, [48 x i8] zeroinitializer }, align 32
@mirred_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @mirred_init_net, ptr null, ptr null, ptr @mirred_exit_net, ptr @mirred_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@mirred_device_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @mirred_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_act_mirred__397_562_mirred_init_module6 = internal global ptr @mirred_init_module, section ".initcall6.init", align 4
@__exitcall_mirred_cleanup_module = internal global ptr @mirred_cleanup_module, section ".exitcall.exit", align 4
@__pcpu_unique_mirred_rec_level = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@mirred_rec_level = weak dso_local global i32 0, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@tcf_mirred_act._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014Packet exceeded mirred recursion limit on dev %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tcf_mirred_act\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/sched/act_mirred.c\00", [41 x i8] zeroinitializer }, align 32
@tcf_mirred_act._entry_ptr = internal global ptr @tcf_mirred_act._entry, section ".printk_index", align 4
@tcf_mirred_act.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@tcf_mirred_act.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@tcf_mirred_act._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\015tc mirred: target device is gone\0A\00", [60 x i8] zeroinitializer }, align 32
@tcf_mirred_act._entry_ptr.8 = internal global ptr @tcf_mirred_act._entry.6, section ".printk_index", align 4
@tcf_mirred_act._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 261, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\015tc mirred to Houston: device %s is down\0A\00", [53 x i8] zeroinitializer }, align 32
@tcf_mirred_act._entry_ptr.11 = internal global ptr @tcf_mirred_act._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@tcf_mirred_dev_dereference.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.14 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@mirred_list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mirred_list_lock\00", [47 x i8] zeroinitializer }, align 32
@mirred_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@tcf_mirred_init.__msg = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"act_mirred: Mirred requires attributes to be passed\00", [44 x i8] zeroinitializer }, align 32
@mirred_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 28, %union.anon.63 zeroinitializer }, %struct.nla_policy zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tcf_mirred_init.__msg.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"act_mirred: Missing required mirred parameters\00", [49 x i8] zeroinitializer }, align 32
@tcf_mirred_init.__msg.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"act_mirred: Unknown mirred option\00", [62 x i8] zeroinitializer }, align 32
@tcf_mirred_init.__msg.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"act_mirred: Specified device does not exist\00", [52 x i8] zeroinitializer }, align 32
@tcf_mirred_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@mirred_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mirred_list, ptr @mirred_list }, [24 x i8] zeroinitializer }, align 32
@tcf_mirred_get_dev.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tc_action_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tn->idrinfo->lock\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@mirred_device_event.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@mirred_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 548, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016Mirror/redirect action on\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mirred_init_module\00", [45 x i8] zeroinitializer }, align 32
@mirred_init_module._entry_ptr = internal global ptr @mirred_init_module._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.29 = internal global [11 x i64] [i64 9, i64 16, i64 519, i64 768, i64 769, i64 776, i64 778, i64 779, i64 823, i64 65534, i64 65535]
@___asan_gen_.30 = private unnamed_addr constant [15 x i8] c"act_mirred_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 502, i32 29 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"mirred_net_ops\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 531, i32 33 }
@___asan_gen_.36 = private unnamed_addr constant [23 x i8] c"mirred_device_notifier\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 419, i32 30 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 241, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 253, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 255, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 260, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 4963, i32 10 }
@___asan_gen_.70 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 271, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 67, i32 9 }
@___asan_gen_.76 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 991, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"mirred_list_lock\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 29, i32 8 }
@___asan_gen_.84 = private unnamed_addr constant [14 x i8] c"mirred_net_id\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 89, i32 21 }
@___asan_gen_.88 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 45, i32 7 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 695, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 723, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 109, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [14 x i8] c"mirred_policy\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 85, i32 32 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 117, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 140, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 147, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant [12 x i8] c"mirred_list\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 28, i32 8 }
@___asan_gen_.121 = private unnamed_addr constant [25 x i8] c"../include/net/act_api.h\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.121, i32 156, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.127, i32 378, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 399, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.139 = private constant [26 x i8] c"../net/sched/act_mirred.c\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.139, i32 548, i32 2 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__UNIQUE_ID_author393, ptr @__UNIQUE_ID_description394, ptr @__UNIQUE_ID_file395, ptr @__UNIQUE_ID_license396, ptr @__exitcall_mirred_cleanup_module, ptr @__initcall__kmod_act_mirred__397_562_mirred_init_module6, ptr @mirred_cleanup_module, ptr @mirred_init_module._entry, ptr @mirred_init_module._entry_ptr, ptr @tcf_mirred_act._entry, ptr @tcf_mirred_act._entry.6, ptr @tcf_mirred_act._entry.9, ptr @tcf_mirred_act._entry_ptr, ptr @tcf_mirred_act._entry_ptr.11, ptr @tcf_mirred_act._entry_ptr.8, ptr @act_mirred_ops, ptr @mirred_net_ops, ptr @mirred_device_notifier, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @mirred_list_lock, ptr @.str.16, ptr @mirred_net_id, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @tcf_mirred_init.__msg, ptr @mirred_policy, ptr @tcf_mirred_init.__msg.21, ptr @tcf_mirred_init.__msg.22, ptr @tcf_mirred_init.__msg.23, ptr @mirred_list, ptr @tc_action_net_init.__key, ptr @.str.24, ptr @xa_init_flags.__key, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_mirred_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirred_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirred_device_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_mirred_act._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_mirred_act._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_mirred_act._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirred_list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirred_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_mirred_init.__msg to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirred_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_mirred_init.__msg.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_mirred_init.__msg.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_mirred_init.__msg.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirred_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_action_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mirred_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mirred_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 @tcf_unregister_action(ptr noundef nonnull @act_mirred_ops, ptr noundef nonnull @mirred_net_ops) #14
  %call1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @mirred_device_notifier) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_unregister_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mirred_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @mirred_device_notifier) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end:                                           ; preds = %entry
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #17
  %call2 = tail call i32 @tcf_register_action(ptr noundef nonnull @act_mirred_ops, ptr noundef nonnull @mirred_net_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end.cleanup_crit_edge, label %if.then4

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @mirred_device_notifier) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.then4 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_mirred_act(ptr noundef %skb, ptr noundef %a, ptr nocapture noundef writeonly %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #14
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, ptrtoint (ptr @mirred_rec_level to i32)
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %add8 = add i32 %8, 1
  store i32 %add8, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add8)
  %cmp = icmp ugt i32 %add8, 4
  br i1 %cmp, label %do.body12, label %if.end46, !prof !109

do.body12:                                        ; preds = %entry
  %call13 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %do.body12.cleanup_crit_edge, label %do.end18

do.body12.cleanup_crit_edge:                      ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end18:                                         ; preds = %do.body12
  %9 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %do.end18.netdev_name.exit_crit_edge, label %lor.lhs.false.i

do.end18.netdev_name.exit_crit_edge:              ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %netdev_name.exit

lor.lhs.false.i:                                  ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call ptr @strchr(ptr noundef %11, i32 noundef 37) #14
  %tobool2.not.i = icmp eq ptr %call.i, null
  %spec.select.i = select i1 %tobool2.not.i, ptr %11, ptr @.str.12
  br label %netdev_name.exit

netdev_name.exit:                                 ; preds = %lor.lhs.false.i, %do.end18.netdev_name.exit_crit_edge
  %retval.0.i = phi ptr [ @.str.12, %do.end18.netdev_name.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %retval.0.i) #17
  br label %cleanup

if.end46:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %14 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %15 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %lastuse.i, align 8
  %conv.i = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %16, i64 %conv.i)
  %cmp.not.i = icmp eq i64 %16, %conv.i
  br i1 %cmp.not.i, label %if.end46.if.end.i_crit_edge, label %if.then.i

if.end46.if.end.i_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv.i, ptr %lastuse.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end46.if.end.i_crit_edge
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %18 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool.not.i324 = icmp eq i64 %19, 0
  br i1 %tobool.not.i324, label %if.then7.i, label %if.end.i.tcf_lastuse_update.exit_crit_edge, !prof !109

if.end.i.tcf_lastuse_update.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tcf_lastuse_update.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %conv.i, ptr %firstuse.i, align 8
  br label %tcf_lastuse_update.exit

tcf_lastuse_update.exit:                          ; preds = %if.then7.i, %if.end.i.tcf_lastuse_update.exit_crit_edge
  %cpu_bstats.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 13
  %21 = ptrtoint ptr %cpu_bstats.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpu_bstats.i, align 4
  %tobool.not.i325 = icmp eq ptr %22, null
  br i1 %tobool.not.i325, label %if.end.i326, label %do.body.i, !prof !109

do.body.i:                                        ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !99) #14
  %and.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %29, %23
  %30 = inttoptr i32 %add.i to ptr
  tail call fastcc void @bstats_update(ptr noundef %30, ptr noundef %skb) #14
  br label %tcf_action_update_bstats.exit

if.end.i326:                                      ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #16
  %tcfa_lock.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %tcfa_lock.i) #14
  %tcfa_bstats.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8
  tail call fastcc void @bstats_update(ptr noundef %tcfa_bstats.i, ptr noundef %skb) #14
  tail call void @_raw_spin_unlock(ptr noundef %tcfa_lock.i) #14
  br label %tcf_action_update_bstats.exit

tcf_action_update_bstats.exit:                    ; preds = %if.end.i326, %do.body.i
  %tcfm_mac_header_xmit = getelementptr inbounds %struct.tcf_mirred, ptr %a, i32 0, i32 2
  %31 = ptrtoint ptr %tcfm_mac_header_xmit to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load volatile i8, ptr %tcfm_mac_header_xmit, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool52.not = icmp eq i8 %32, 0
  %tcfm_eaction = getelementptr inbounds %struct.tcf_mirred, ptr %a, i32 0, i32 1
  %33 = ptrtoint ptr %tcfm_eaction to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %tcfm_eaction, align 16
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %35 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %tcfa_action, align 8
  %tcfm_dev = getelementptr inbounds %struct.tcf_mirred, ptr %a, i32 0, i32 3
  %37 = ptrtoint ptr %tcfm_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %tcfm_dev, align 8
  %call69 = tail call i32 @rcu_read_lock_bh_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true, label %tcf_action_update_bstats.exit.do.end78_crit_edge

tcf_action_update_bstats.exit.do.end78_crit_edge: ; preds = %tcf_action_update_bstats.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end78

land.lhs.true:                                    ; preds = %tcf_action_update_bstats.exit
  %call71 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %land.lhs.true.do.end78_crit_edge, label %land.lhs.true73

land.lhs.true.do.end78_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end78

land.lhs.true73:                                  ; preds = %land.lhs.true
  %.b321 = load i1, ptr @tcf_mirred_act.__warned, align 1
  br i1 %.b321, label %land.lhs.true73.do.end78_crit_edge, label %if.then75

land.lhs.true73.do.end78_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end78

if.then75:                                        ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tcf_mirred_act.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 253, ptr noundef nonnull @.str.5) #14
  br label %do.end78

do.end78:                                         ; preds = %if.then75, %land.lhs.true73.do.end78_crit_edge, %land.lhs.true.do.end78_crit_edge, %tcf_action_update_bstats.exit.do.end78_crit_edge
  %tobool80.not = icmp eq ptr %38, null
  br i1 %tobool80.not, label %land.end, label %if.end114, !prof !109

land.end:                                         ; preds = %do.end78
  %.b318320 = load i1, ptr @tcf_mirred_act.__already_done, align 1
  br i1 %.b318320, label %land.end.out_crit_edge, label %if.then100, !prof !111

land.end.out_crit_edge:                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then100:                                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tcf_mirred_act.__already_done, align 1
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #17
  br label %out

if.end114:                                        ; preds = %do.end78
  %flags = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 14
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 8
  %and = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool115.not = icmp eq i32 %and, 0
  br i1 %tobool115.not, label %do.body125, label %if.end137, !prof !109

do.body125:                                       ; preds = %if.end114
  %call126 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %do.body125.out_crit_edge, label %do.end131

do.body125.out_crit_edge:                         ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

do.end131:                                        ; preds = %do.body125
  call void @__sanitizer_cov_trace_pc() #16
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %38) #17
  br label %out

if.end137:                                        ; preds = %if.end114
  %41 = and i32 %34, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %42 = icmp eq i32 %41, 1
  %tc_at_ingress.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %43 = ptrtoint ptr %tc_at_ingress.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %bf.load.i = load i32, ptr %tc_at_ingress.i, align 2
  %44 = and i32 %bf.load.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i = icmp ne i32 %44, 0
  %45 = select i1 %tobool.i, i1 %42, i1 false
  br i1 %45, label %land.rhs145, label %if.end137.if.then150_crit_edge

if.end137.if.then150_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then150

land.rhs145:                                      ; preds = %if.end137
  %46 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i32 %36, label %land.rhs145.if.then150_crit_edge [
    i32 2, label %land.rhs145.if.end155_crit_edge
    i32 4, label %land.rhs145.if.end155_crit_edge388
    i32 5, label %land.rhs145.if.end155_crit_edge389
    i32 8, label %land.rhs145.if.end155_crit_edge390
  ]

land.rhs145.if.end155_crit_edge390:               ; preds = %land.rhs145
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end155

land.rhs145.if.end155_crit_edge389:               ; preds = %land.rhs145
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end155

land.rhs145.if.end155_crit_edge388:               ; preds = %land.rhs145
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end155

land.rhs145.if.end155_crit_edge:                  ; preds = %land.rhs145
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end155

land.rhs145.if.then150_crit_edge:                 ; preds = %land.rhs145
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then150

if.then150:                                       ; preds = %land.rhs145.if.then150_crit_edge, %if.end137.if.then150_crit_edge
  %call151 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #14
  %tobool152.not = icmp eq ptr %call151, null
  br i1 %tobool152.not, label %if.then150.out_crit_edge, label %if.then150.if.end155_crit_edge

if.then150.if.end155_crit_edge:                   ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end155

if.then150.out_crit_edge:                         ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end155:                                        ; preds = %if.then150.if.end155_crit_edge, %land.rhs145.if.end155_crit_edge, %land.rhs145.if.end155_crit_edge388, %land.rhs145.if.end155_crit_edge389, %land.rhs145.if.end155_crit_edge390
  %47 = phi i1 [ false, %if.then150.if.end155_crit_edge ], [ true, %land.rhs145.if.end155_crit_edge ], [ true, %land.rhs145.if.end155_crit_edge388 ], [ true, %land.rhs145.if.end155_crit_edge389 ], [ true, %land.rhs145.if.end155_crit_edge390 ]
  %skb2.0 = phi ptr [ %call151, %if.then150.if.end155_crit_edge ], [ %skb, %land.rhs145.if.end155_crit_edge ], [ %skb, %land.rhs145.if.end155_crit_edge388 ], [ %skb, %land.rhs145.if.end155_crit_edge389 ], [ %skb, %land.rhs145.if.end155_crit_edge390 ]
  %switch.tableidx = add i32 %34, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %48 = icmp ult i32 %switch.tableidx, 4
  br i1 %48, label %switch.lookup, label %do.body.i328

do.body.i328:                                     ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sched/act_mirred.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 49, 0\0A.popsection", ""() #14, !srcloc !112
  unreachable

switch.lookup:                                    ; preds = %if.end155
  %switch.cast = trunc i32 %switch.tableidx to i4
  %switch.downshift = lshr i4 -4, %switch.cast
  %49 = and i4 %switch.downshift, 1
  %50 = sext i4 %49 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %switch.masked = icmp ne i4 %49, 0
  %51 = zext i4 %49 to i8
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb2.0, i32 0, i32 5
  %52 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %_nfct.i.i, align 8
  %and.i.i331 = and i32 %53, -8
  %54 = inttoptr i32 %and.i.i331 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i331)
  %tobool.not.i.i = icmp eq i32 %and.i.i331, 0
  br i1 %tobool.not.i.i, label %switch.lookup.nf_reset_ct.exit_crit_edge, label %land.lhs.true.i.i

switch.lookup.nf_reset_ct.exit_crit_edge:         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #16
  br label %nf_reset_ct.exit

land.lhs.true.i.i:                                ; preds = %switch.lookup
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %54, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !113
  tail call void @llvm.prefetch.p0(ptr nonnull %54, i32 1, i32 3, i32 1) #14
  %55 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %54, ptr nonnull %54, i32 1, ptr nonnull elementtype(i32) %54) #14, !srcloc !114
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !111

if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nf_reset_ct.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %54, i32 noundef 3) #14
  br label %nf_reset_ct.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !115
  tail call void @nf_conntrack_destroy(ptr noundef nonnull %54) #14
  br label %nf_reset_ct.exit

nf_reset_ct.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.nf_reset_ct.exit_crit_edge, %switch.lookup.nf_reset_ct.exit_crit_edge
  %56 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %_nfct.i.i, align 8
  %call156.not = xor i1 %switch.masked, true
  %brmerge322 = select i1 %call156.not, i1 true, i1 %tobool.i
  br i1 %brmerge322, label %nf_reset_ct.exit.if.end162_crit_edge, label %if.then161

nf_reset_ct.exit.if.end162_crit_edge:             ; preds = %nf_reset_ct.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end162

if.then161:                                       ; preds = %nf_reset_ct.exit
  %57 = getelementptr inbounds %struct.sk_buff, ptr %skb2.0, i32 0, i32 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool.not.i332 = icmp eq i32 %59, 0
  br i1 %tobool.not.i332, label %if.then161.if.end162_crit_edge, label %if.then.i335

if.then161.if.end162_crit_edge:                   ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end162

if.then.i335:                                     ; preds = %if.then161
  %and.i.i333 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i333)
  %tobool.not.i.i334 = icmp eq i32 %and.i.i333, 0
  br i1 %tobool.not.i.i334, label %if.then.i.i336, label %if.then.i335.refdst_drop.exit.i_crit_edge

if.then.i335.refdst_drop.exit.i_crit_edge:        ; preds = %if.then.i335
  call void @__sanitizer_cov_trace_pc() #16
  br label %refdst_drop.exit.i

if.then.i.i336:                                   ; preds = %if.then.i335
  call void @__sanitizer_cov_trace_pc() #16
  %and1.i.i = and i32 %59, -2
  %60 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %60) #14
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i336, %if.then.i335.refdst_drop.exit.i_crit_edge
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %57, align 8
  br label %if.end162

if.end162:                                        ; preds = %refdst_drop.exit.i, %if.then161.if.end162_crit_edge, %nf_reset_ct.exit.if.end162_crit_edge
  %spec.select = select i1 %switch.masked, i1 true, i1 %tobool52.not
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %62 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %64 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %head.i, align 8
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %66 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %network_header.i, align 4
  %conv.i338 = zext i16 %67 to i32
  %add.ptr.i = getelementptr i8, ptr %65, i32 %conv.i338
  %cmp169 = icmp ne ptr %63, %add.ptr.i
  %cmp174.not = xor i1 %spec.select, %cmp169
  br i1 %cmp174.not, label %if.end162.if.end188_crit_edge, label %if.then176

if.end162.if.end188_crit_edge:                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end188

if.then176:                                       ; preds = %if.end162
  %68 = ptrtoint ptr %tc_at_ingress.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %bf.load.i340 = load i32, ptr %tc_at_ingress.i, align 2
  %69 = and i32 %bf.load.i340, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.i341.not = icmp eq i32 %69, 0
  br i1 %tobool.i341.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #16
  %mac_len179 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %70 = ptrtoint ptr %mac_len179 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %mac_len179, align 4
  %conv180 = zext i16 %71 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %72 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %mac_header.i, align 2
  %conv.i347 = zext i16 %73 to i32
  %add.ptr.i348 = getelementptr i8, ptr %65, i32 %conv.i347
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr.i348 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv180, %cond.true ], [ %sub.ptr.sub, %cond.false ]
  br i1 %spec.select, label %if.then184, label %if.else

if.then184:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  %call185 = tail call ptr @skb_pull_rcsum(ptr noundef %skb2.0, i32 noundef %cond) #14
  br label %if.end188

if.else:                                          ; preds = %cond.end
  %call.i349 = tail call ptr @skb_push(ptr noundef %skb2.0, i32 noundef %cond) #14
  %ip_summed.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb2.0, i32 0, i32 15
  %74 = ptrtoint ptr %ip_summed.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load.i.i.i = load i16, ptr %ip_summed.i.i.i, align 8
  %75 = and i16 %bf.load.i.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %75)
  %cmp.i.i.i = icmp eq i16 %75, 1024
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.if.end188_crit_edge

if.else.if.end188_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end188

if.then.i.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb2.0, i32 0, i32 19
  %76 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i, align 4
  %78 = getelementptr inbounds %struct.sk_buff, ptr %skb2.0, i32 0, i32 15, i32 0, i32 5
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 8
  %call.i.i.i = tail call i32 @csum_partial(ptr noundef %77, i32 noundef %cond, i32 noundef 0) #14
  %add.i.i.i.i.i = add i32 %call.i.i.i, %80
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i, i32 %call.i.i.i)
  %cmp.i.i.i.i.i350 = icmp ult i32 %add.i.i.i.i.i, %call.i.i.i
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i350 to i32
  %add1.i.i.i.i.i = add i32 %add.i.i.i.i.i, %conv.i.i.i.i.i
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add1.i.i.i.i.i, ptr %78, align 8
  br label %if.end188

if.end188:                                        ; preds = %if.then.i.i.i, %if.else.if.end188_crit_edge, %if.then184, %if.end162.if.end188_crit_edge
  %82 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 17
  %85 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ifindex, align 4
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb2.0, i32 0, i32 15, i32 0, i32 7
  %87 = ptrtoint ptr %skb_iif to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %skb_iif, align 8
  %88 = getelementptr inbounds %struct.anon.44, ptr %skb2.0, i32 0, i32 2
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %38, ptr %88, align 8
  br i1 %42, label %if.then190, label %if.end188.if.end226_crit_edge

if.end188.if.end226_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end226

if.then190:                                       ; preds = %if.end188
  %tc_at_ingress = getelementptr inbounds %struct.sk_buff, ptr %skb2.0, i32 0, i32 15, i32 0, i32 3
  %90 = ptrtoint ptr %tc_at_ingress to i32
  call void @__asan_loadN_noabort(i32 %90, i32 4)
  %bf.load = load i32, ptr %tc_at_ingress, align 2
  %91 = and i32 %bf.load, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool191.not = icmp eq i32 %91, 0
  %bf.set.i = and i32 %bf.load, -98305
  %bf.clear3.i = select i1 %tobool191.not, i32 65536, i32 98304
  %bf.set4.i = or i32 %bf.clear3.i, %bf.set.i
  %92 = ptrtoint ptr %tc_at_ingress to i32
  call void @__asan_storeN_noabort(i32 %92, i32 4)
  store i32 %bf.set4.i, ptr %tc_at_ingress, align 2
  br i1 %tobool191.not, label %if.then190.skb_set_redirected.exit_crit_edge, label %if.then.i352

if.then190.skb_set_redirected.exit_crit_edge:     ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_set_redirected.exit

if.then.i352:                                     ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #16
  %93 = getelementptr inbounds %struct.sk_buff, ptr %skb2.0, i32 0, i32 2
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 0, ptr %93, align 8
  br label %skb_set_redirected.exit

skb_set_redirected.exit:                          ; preds = %if.then.i352, %if.then190.skb_set_redirected.exit_crit_edge
  br i1 %47, label %if.then193, label %skb_set_redirected.exit.if.end226_crit_edge

skb_set_redirected.exit.if.end226_crit_edge:      ; preds = %skb_set_redirected.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end226

if.then193:                                       ; preds = %skb_set_redirected.exit
  %95 = ptrtoint ptr %res to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %51, ptr %res, align 4
  br i1 %switch.masked, label %if.else.i, label %if.then.i355

if.then.i355:                                     ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #16
  %call.i354 = tail call i32 @tcf_dev_queue_xmit(ptr noundef %skb, ptr noundef nonnull @dev_queue_xmit) #14
  br label %tcf_mirred_forward.exit

if.else.i:                                        ; preds = %if.then193
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i = tail call i32 @netif_receive_skb(ptr noundef %skb) #14
  br label %tcf_mirred_forward.exit

tcf_mirred_forward.exit:                          ; preds = %if.else.i, %if.then.i355
  %err.0.i = phi i32 [ %call1.i, %if.else.i ], [ %call.i354, %if.then.i355 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool199.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool199.not, label %tcf_mirred_forward.exit.cleanup_crit_edge, label %if.then200

tcf_mirred_forward.exit.cleanup_crit_edge:        ; preds = %tcf_mirred_forward.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then200:                                       ; preds = %tcf_mirred_forward.exit
  %cpu_qstats.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 15
  %96 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %cpu_qstats.i, align 4
  %tobool.not.i357 = icmp eq ptr %97, null
  br i1 %tobool.not.i357, label %if.end.i364, label %do.body.i362, !prof !109

do.body.i362:                                     ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #16
  %98 = ptrtoint ptr %97 to i32
  %99 = tail call i32 @llvm.read_register.i32(metadata !99) #14
  %and.i.i358 = and i32 %99, -16384
  %100 = inttoptr i32 %and.i.i358 to ptr
  %cpu.i359 = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 3
  %101 = ptrtoint ptr %cpu.i359 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cpu.i359, align 4
  %arrayidx.i360 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %102
  %103 = ptrtoint ptr %arrayidx.i360 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %arrayidx.i360, align 4
  %add.i361 = add i32 %104, %98
  %105 = inttoptr i32 %add.i361 to ptr
  %overlimits.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %105, i32 0, i32 4
  %106 = ptrtoint ptr %overlimits.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %overlimits.i.i, align 4
  %inc.i.i = add i32 %107, 1
  store i32 %inc.i.i, ptr %overlimits.i.i, align 4
  br label %cleanup

if.end.i364:                                      ; preds = %if.then200
  call void @__sanitizer_cov_trace_pc() #16
  %tcfa_lock.i363 = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %tcfa_lock.i363) #14
  %overlimits.i10.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 10, i32 4
  %108 = ptrtoint ptr %overlimits.i10.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %overlimits.i10.i, align 4
  %inc.i11.i = add i32 %109, 1
  store i32 %inc.i11.i, ptr %overlimits.i10.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tcfa_lock.i363) #14
  br label %cleanup

if.end226:                                        ; preds = %skb_set_redirected.exit.if.end226_crit_edge, %if.end188.if.end226_crit_edge
  br i1 %switch.masked, label %if.else.i368, label %if.then.i366

if.then.i366:                                     ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #16
  %call.i365 = tail call i32 @tcf_dev_queue_xmit(ptr noundef %skb2.0, ptr noundef nonnull @dev_queue_xmit) #14
  br label %tcf_mirred_forward.exit371

if.else.i368:                                     ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #16
  %call1.i367 = tail call i32 @netif_receive_skb(ptr noundef %skb2.0) #14
  br label %tcf_mirred_forward.exit371

tcf_mirred_forward.exit371:                       ; preds = %if.else.i368, %if.then.i366
  %err.0.i369 = phi i32 [ %call1.i367, %if.else.i368 ], [ %call.i365, %if.then.i366 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i369)
  %tobool229.not = icmp eq i32 %err.0.i369, 0
  br i1 %tobool229.not, label %tcf_mirred_forward.exit371.cleanup_crit_edge, label %tcf_mirred_forward.exit371.out_crit_edge

tcf_mirred_forward.exit371.out_crit_edge:         ; preds = %tcf_mirred_forward.exit371
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

tcf_mirred_forward.exit371.cleanup_crit_edge:     ; preds = %tcf_mirred_forward.exit371
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

out:                                              ; preds = %tcf_mirred_forward.exit371.out_crit_edge, %if.then150.out_crit_edge, %do.end131, %do.body125.out_crit_edge, %if.then100, %land.end.out_crit_edge
  %cpu_qstats.i372 = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 15
  %110 = ptrtoint ptr %cpu_qstats.i372 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %cpu_qstats.i372, align 4
  %tobool.not.i373 = icmp eq ptr %111, null
  br i1 %tobool.not.i373, label %if.end.i384, label %do.body.i380, !prof !109

do.body.i380:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %112 = ptrtoint ptr %111 to i32
  %113 = tail call i32 @llvm.read_register.i32(metadata !99) #14
  %and.i.i374 = and i32 %113, -16384
  %114 = inttoptr i32 %and.i.i374 to ptr
  %cpu.i375 = getelementptr inbounds %struct.thread_info, ptr %114, i32 0, i32 3
  %115 = ptrtoint ptr %cpu.i375 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %cpu.i375, align 4
  %arrayidx.i376 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %116
  %117 = ptrtoint ptr %arrayidx.i376 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx.i376, align 4
  %add.i377 = add i32 %118, %112
  %119 = inttoptr i32 %add.i377 to ptr
  %overlimits.i.i378 = getelementptr inbounds %struct.gnet_stats_queue, ptr %119, i32 0, i32 4
  %120 = ptrtoint ptr %overlimits.i.i378 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %overlimits.i.i378, align 4
  %inc.i.i379 = add i32 %121, 1
  store i32 %inc.i.i379, ptr %overlimits.i.i378, align 4
  br label %tcf_action_inc_overlimit_qstats.exit385

if.end.i384:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #16
  %tcfa_lock.i381 = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %tcfa_lock.i381) #14
  %overlimits.i10.i382 = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 10, i32 4
  %122 = ptrtoint ptr %overlimits.i10.i382 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %overlimits.i10.i382, align 4
  %inc.i11.i383 = add i32 %123, 1
  store i32 %inc.i11.i383, ptr %overlimits.i10.i382, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tcfa_lock.i381) #14
  br label %tcf_action_inc_overlimit_qstats.exit385

tcf_action_inc_overlimit_qstats.exit385:          ; preds = %if.end.i384, %do.body.i380
  %124 = and i32 %34, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %124)
  %125 = icmp eq i32 %124, 1
  %spec.select323 = select i1 %125, i32 2, i32 %36
  br label %cleanup

cleanup:                                          ; preds = %tcf_action_inc_overlimit_qstats.exit385, %tcf_mirred_forward.exit371.cleanup_crit_edge, %if.end.i364, %do.body.i362, %tcf_mirred_forward.exit.cleanup_crit_edge, %netdev_name.exit, %do.body12.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %netdev_name.exit ], [ 2, %do.body12.cleanup_crit_edge ], [ 9, %if.end.i364 ], [ 9, %do.body.i362 ], [ 9, %tcf_mirred_forward.exit.cleanup_crit_edge ], [ %36, %tcf_mirred_forward.exit371.cleanup_crit_edge ], [ %spec.select323, %tcf_action_inc_overlimit_qstats.exit385 ]
  %126 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %cpu, align 4
  %arrayidx251 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %127
  %128 = ptrtoint ptr %arrayidx251 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx251, align 4
  %add252 = add i32 %129, ptrtoint (ptr @mirred_rec_level to i32)
  %130 = inttoptr i32 %add252 to ptr
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 4
  %add253 = add i32 %132, -1
  store i32 %add253, ptr %130, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_mirred_dump(ptr noundef %skb, ptr noundef %a, i32 noundef %bind, i32 noundef %ref) #2 align 64 {
entry:
  %opt = alloca %struct.tc_mirred, align 4
  %t = alloca %struct.tcf_t, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %opt) #14
  %2 = getelementptr inbounds %struct.tc_mirred, ptr %opt, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tc_mirred, ptr %opt, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tc_mirred, ptr %opt, i32 0, i32 3
  %5 = getelementptr inbounds %struct.tc_mirred, ptr %opt, i32 0, i32 4
  %6 = getelementptr inbounds %struct.tc_mirred, ptr %opt, i32 0, i32 5
  %7 = getelementptr inbounds %struct.tc_mirred, ptr %opt, i32 0, i32 6
  %tcfa_index = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 3
  %8 = ptrtoint ptr %tcfa_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tcfa_index, align 4
  %10 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %opt, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %2, align 4
  %tcfa_refcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_refcnt, i32 noundef 4) #14
  %12 = ptrtoint ptr %tcfa_refcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %tcfa_refcnt, align 4
  %sub = sub i32 %13, %ref
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %4, align 4
  %tcfa_bindcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_bindcnt, i32 noundef 4) #14
  %15 = ptrtoint ptr %tcfa_bindcnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %tcfa_bindcnt, align 4
  %sub5 = sub i32 %16, %bind
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub5, ptr %5, align 4
  %18 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #14
  %19 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 1
  %20 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 2
  %21 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 3
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  %22 = call ptr @memset(ptr %t, i32 255, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #14
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %23 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tcfa_action, align 8
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %3, align 4
  %tcfm_eaction = getelementptr inbounds %struct.tcf_mirred, ptr %a, i32 0, i32 1
  %26 = ptrtoint ptr %tcfm_eaction to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tcfm_eaction, align 16
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %6, align 4
  %dep_map.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i.i44 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44)
  %tobool.not.i = icmp eq i32 %call.i.i44, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.tcf_mirred_dev_dereference.exit_crit_edge

entry.tcf_mirred_dev_dereference.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %tcf_mirred_dev_dereference.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.tcf_mirred_dev_dereference.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.tcf_mirred_dev_dereference.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tcf_mirred_dev_dereference.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @tcf_mirred_dev_dereference.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.tcf_mirred_dev_dereference.exit_crit_edge, label %if.then.i

land.lhs.true3.i.tcf_mirred_dev_dereference.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tcf_mirred_dev_dereference.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tcf_mirred_dev_dereference.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 68, ptr noundef nonnull @.str.14) #14
  br label %tcf_mirred_dev_dereference.exit

tcf_mirred_dev_dereference.exit:                  ; preds = %if.then.i, %land.lhs.true3.i.tcf_mirred_dev_dereference.exit_crit_edge, %land.lhs.true.i.tcf_mirred_dev_dereference.exit_crit_edge, %entry.tcf_mirred_dev_dereference.exit_crit_edge
  %tcfm_dev.i = getelementptr inbounds %struct.tcf_mirred, ptr %a, i32 0, i32 3
  %29 = ptrtoint ptr %tcfm_dev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tcfm_dev.i, align 8
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %tcf_mirred_dev_dereference.exit.if.end_crit_edge, label %if.then

tcf_mirred_dev_dereference.exit.if.end_crit_edge: ; preds = %tcf_mirred_dev_dereference.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %tcf_mirred_dev_dereference.exit
  call void @__sanitizer_cov_trace_pc() #16
  %ifindex11 = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 17
  %31 = ptrtoint ptr %ifindex11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ifindex11, align 4
  %33 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %tcf_mirred_dev_dereference.exit.if.end_crit_edge
  %call13 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 28, ptr noundef nonnull %opt) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end16:                                         ; preds = %if.end
  %tcfa_tm = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %35 = ptrtoint ptr %tcfa_tm to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tcfa_tm, align 8
  %37 = trunc i64 %36 to i32
  %conv1.i = sub i32 %34, %37
  %call.i = call i32 @jiffies_to_clock_t(i32 noundef %conv1.i) #14
  %conv2.i = sext i32 %call.i to i64
  %38 = ptrtoint ptr %t to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv2.i, ptr %t, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %lastuse.i, align 8
  %42 = trunc i64 %41 to i32
  %conv6.i = sub i32 %39, %42
  %call7.i = call i32 @jiffies_to_clock_t(i32 noundef %conv6.i) #14
  %conv8.i = sext i32 %call7.i to i64
  %43 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv8.i, ptr %19, align 8
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %44 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %tobool.not.i45 = icmp eq i64 %45, 0
  br i1 %tobool.not.i45, label %if.end16.tcf_tm_dump.exit_crit_edge, label %cond.true.i

if.end16.tcf_tm_dump.exit_crit_edge:              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %tcf_tm_dump.exit

cond.true.i:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %47 = trunc i64 %45 to i32
  %conv13.i = sub i32 %46, %47
  %call14.i = call i32 @jiffies_to_clock_t(i32 noundef %conv13.i) #14
  br label %tcf_tm_dump.exit

tcf_tm_dump.exit:                                 ; preds = %cond.true.i, %if.end16.tcf_tm_dump.exit_crit_edge
  %cond.i = phi i32 [ %call14.i, %cond.true.i ], [ 0, %if.end16.tcf_tm_dump.exit_crit_edge ]
  %conv15.i = sext i32 %cond.i to i64
  %48 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv15.i, ptr %21, align 8
  %expires.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 2
  %49 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %expires.i, align 8
  %conv17.i = trunc i64 %50 to i32
  %call18.i = call i32 @jiffies_to_clock_t(i32 noundef %conv17.i) #14
  %conv19.i = sext i32 %call18.i to i64
  %51 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv19.i, ptr %20, align 8
  %call18 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 32, ptr noundef nonnull %t, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %tcf_tm_dump.exit.nla_put_failure_crit_edge

tcf_tm_dump.exit.nla_put_failure_crit_edge:       ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end21:                                         ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #14
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %tcf_tm_dump.exit.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #14
  %tobool.not.i46 = icmp eq ptr %1, null
  br i1 %tobool.not.i46, label %nla_put_failure.cleanup_crit_edge, label %if.then.i47

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i47:                                      ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %55, %1
  br i1 %cmp.i, label %do.end.i, label %if.then.i47.if.end.i_crit_edge, !prof !109

if.then.i47.if.end.i_crit_edge:                   ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.15, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i47.if.end.i_crit_edge
  %56 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %57 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %nla_put_failure.cleanup_crit_edge, %if.end21
  %retval.0 = phi i32 [ %53, %if.end21 ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #14
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %opt) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_mirred_release(ptr noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @mirred_list_lock) #14
  %tcfm_list = getelementptr inbounds %struct.tcf_mirred, ptr %a, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %tcfm_list) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.tcf_mirred, ptr %a, i32 0, i32 5, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %tcfm_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcfm_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %tcfm_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %tcfm_list, align 4
  %prev.i = getelementptr inbounds %struct.tcf_mirred, ptr %a, i32 0, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mirred_list_lock) #14
  %tcfm_dev = getelementptr inbounds %struct.tcf_mirred, ptr %a, i32 0, i32 3
  %8 = ptrtoint ptr %tcfm_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tcfm_dev, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %list_del.exit.dev_put_track.exit_crit_edge, label %do.body1.i.i

list_del.exit.dev_put_track.exit_crit_edge:       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %list_del.exit
  %tcfm_dev_tracker = getelementptr inbounds %struct.tcf_mirred, ptr %a, i32 0, i32 4
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 119
  %call.i.i3 = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %tcfm_dev_tracker) #14
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !116
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 118
  %11 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !99) #14
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add13.i.i = add i32 %22, -1
  store i32 %add13.i.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !117
  %and.i.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !109

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #14, !srcloc !118
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %list_del.exit.dev_put_track.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_mirred_search(ptr noundef %net, ptr noundef %a, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mirred_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_idr_search(ptr noundef %call, ptr noundef %a, i32 noundef %index) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_mirred_init(ptr noundef %net, ptr noundef %nla, ptr noundef %est, ptr noundef %a, ptr noundef %tp, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [4 x ptr], align 4
  %goto_ch = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mirred_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %and = and i32 %flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb) #14
  %1 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 2
  %2 = call ptr @memset(ptr %tb, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goto_ch) #14
  %3 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %goto_ch, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #14
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %index, align 4, !annotation !119
  %tobool1.not = icmp eq ptr %nla, null
  br i1 %tobool1.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_mirred_init.__msg) #14
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup176_crit_edge, label %if.then3

do.body.cleanup176_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup176

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @tcf_mirred_init.__msg, ptr %extack, align 4
  br label %cleanup176

if.end4:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %6 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %7 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @mirred_policy, i32 noundef 0, ptr noundef %extack) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end4.cleanup176_crit_edge, label %if.end7

if.end4.cleanup176_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup176

if.end7:                                          ; preds = %if.end4
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %do.body10, label %if.end18

do.body10:                                        ; preds = %if.end7
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_mirred_init.__msg.21) #14
  %tobool12.not = icmp eq ptr %extack, null
  br i1 %tobool12.not, label %do.body10.cleanup176_crit_edge, label %if.then13

do.body10.cleanup176_crit_edge:                   ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup176

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tcf_mirred_init.__msg.21, ptr %extack, align 4
  br label %cleanup176

if.end18:                                         ; preds = %if.end7
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %13 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %index, align 4
  %and.lobit = lshr exact i32 %and, 17
  %call23 = call i32 @tcf_idr_check_alloc(ptr noundef %call, ptr noundef nonnull %index, ptr noundef %a, i32 noundef %and.lobit) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end18.cleanup176_crit_edge, label %if.end27

if.end18.cleanup176_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup176

if.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool28.not = icmp eq i32 %call23, 0
  %tobool.not = xor i1 %tobool, true
  %brmerge = or i1 %tobool28.not, %tobool.not
  br i1 %brmerge, label %if.end35, label %if.end27.cleanup176_crit_edge

if.end27.cleanup176_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup176

if.end35:                                         ; preds = %if.end27
  %eaction = getelementptr i8, ptr %9, i32 24
  %14 = ptrtoint ptr %eaction to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eaction, align 4
  %.off = add i32 %15, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %.off)
  %switch = icmp ult i32 %.off, 4
  br i1 %switch, label %sw.epilog, label %sw.default

sw.default:                                       ; preds = %if.end35
  br i1 %tobool28.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %a, align 4
  %call39 = call i32 @tcf_idr_release(ptr noundef %17, i1 noundef zeroext %tobool) #14
  br label %do.body41

if.else:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #16
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %19) #14
  br label %do.body41

do.body41:                                        ; preds = %if.else, %if.then37
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_mirred_init.__msg.22) #14
  %tobool43.not = icmp eq ptr %extack, null
  br i1 %tobool43.not, label %do.body41.cleanup176_crit_edge, label %if.then44

do.body41.cleanup176_crit_edge:                   ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup176

if.then44:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @tcf_mirred_init.__msg.22, ptr %extack, align 4
  br label %cleanup176

sw.epilog:                                        ; preds = %if.end35
  br i1 %tobool28.not, label %if.then50, label %if.else68

if.then50:                                        ; preds = %sw.epilog
  %ifindex = getelementptr i8, ptr %9, i32 28
  %21 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool51.not = icmp eq i32 %22, 0
  %23 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index, align 4
  br i1 %tobool51.not, label %if.then52, label %if.end61

if.then52:                                        ; preds = %if.then50
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %24) #14
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_mirred_init.__msg.23) #14
  %tobool55.not = icmp eq ptr %extack, null
  br i1 %tobool55.not, label %if.then52.cleanup176_crit_edge, label %if.then56

if.then52.cleanup176_crit_edge:                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup176

if.then56:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @tcf_mirred_init.__msg.23, ptr %extack, align 4
  br label %cleanup176

if.end61:                                         ; preds = %if.then50
  %call64 = call i32 @tcf_idr_create_from_flags(ptr noundef %call, i32 noundef %24, ptr noundef %est, ptr noundef %a, ptr noundef nonnull @act_mirred_ops, i32 noundef %and.lobit, i32 noundef %flags) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end75.thread, label %if.then66

if.end75.thread:                                  ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %a, align 4
  br label %if.then78

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %29) #14
  br label %cleanup176

if.else68:                                        ; preds = %sw.epilog
  %and69 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  %30 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %a, align 4
  br i1 %tobool70.not, label %if.then71, label %if.end75

if.then71:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #16
  %call73 = call i32 @tcf_idr_release(ptr noundef %31, i1 noundef zeroext %tobool) #14
  br label %cleanup176

if.end75:                                         ; preds = %if.else68
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call2.i)
  %cmp76 = icmp eq i32 %call2.i, 1
  br i1 %cmp76, label %if.end75.if.then78_crit_edge, label %if.end75.if.end79_crit_edge

if.end75.if.end79_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end79

if.end75.if.then78_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then78

if.then78:                                        ; preds = %if.end75.if.then78_crit_edge, %if.end75.thread
  %32 = phi ptr [ %27, %if.end75.thread ], [ %31, %if.end75.if.then78_crit_edge ]
  %tcfm_list = getelementptr inbounds %struct.tcf_mirred, ptr %32, i32 0, i32 5
  %33 = ptrtoint ptr %tcfm_list to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %tcfm_list, ptr %tcfm_list, align 4
  %prev.i = getelementptr inbounds %struct.tcf_mirred, ptr %32, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %tcfm_list, ptr %prev.i, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end75.if.end79_crit_edge
  %cmp76257 = phi i1 [ true, %if.then78 ], [ false, %if.end75.if.end79_crit_edge ]
  %35 = phi ptr [ %32, %if.then78 ], [ %31, %if.end75.if.end79_crit_edge ]
  %ret.0255 = phi i32 [ 1, %if.then78 ], [ %call2.i, %if.end75.if.end79_crit_edge ]
  %action = getelementptr i8, ptr %9, i32 12
  %36 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %action, align 4
  %call80 = call i32 @tcf_action_check_ctrlact(i32 noundef %37, ptr noundef %tp, ptr noundef nonnull %goto_ch, ptr noundef %extack) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81 = icmp slt i32 %call80, 0
  br i1 %cmp81, label %if.end79.release_idr_crit_edge, label %if.end84

if.end79.release_idr_crit_edge:                   ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #16
  br label %release_idr

if.end84:                                         ; preds = %if.end79
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %35, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #14
  %ifindex85 = getelementptr i8, ptr %9, i32 28
  %38 = ptrtoint ptr %ifindex85 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ifindex85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool86.not = icmp eq i32 %39, 0
  br i1 %tobool86.not, label %if.end84.if.end157_crit_edge, label %if.then87

if.end84.if.end157_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end157

if.then87:                                        ; preds = %if.end84
  %call89 = call ptr @dev_get_by_index(ptr noundef %net, i32 noundef %39) #14
  %tobool90.not = icmp eq ptr %call89, null
  br i1 %tobool90.not, label %put_chain, label %if.end94

if.end94:                                         ; preds = %if.then87
  %call95 = call fastcc zeroext i1 @dev_is_mac_header_xmit(ptr noundef nonnull %call89)
  %frombool96 = zext i1 %call95 to i8
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %35, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool101.not = icmp eq i32 %call.i, 0
  br i1 %tobool101.not, label %land.lhs.true102, label %if.end94.cleanup.thread_crit_edge

if.end94.cleanup.thread_crit_edge:                ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

land.lhs.true102:                                 ; preds = %if.end94
  %call103 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call103)
  %tobool104.not = icmp eq i32 %call103, 0
  br i1 %tobool104.not, label %land.lhs.true102.cleanup.thread_crit_edge, label %land.lhs.true105

land.lhs.true102.cleanup.thread_crit_edge:        ; preds = %land.lhs.true102
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

land.lhs.true105:                                 ; preds = %land.lhs.true102
  %.b251 = load i1, ptr @tcf_mirred_init.__warned, align 1
  br i1 %.b251, label %land.lhs.true105.cleanup.thread_crit_edge, label %if.then107

land.lhs.true105.cleanup.thread_crit_edge:        ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.thread

if.then107:                                       ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tcf_mirred_init.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 183, ptr noundef nonnull @.str.14) #14
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then107, %land.lhs.true105.cleanup.thread_crit_edge, %land.lhs.true102.cleanup.thread_crit_edge, %if.end94.cleanup.thread_crit_edge
  %tcfm_dev = getelementptr inbounds %struct.tcf_mirred, ptr %35, i32 0, i32 3
  %40 = ptrtoint ptr %tcfm_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tcfm_dev, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !120
  %42 = ptrtoint ptr %tcfm_dev to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %call89, ptr %tcfm_dev, align 8
  %tcfm_dev_tracker = getelementptr inbounds %struct.tcf_mirred, ptr %35, i32 0, i32 4
  call fastcc void @dev_put_track(ptr noundef %41, ptr noundef %tcfm_dev_tracker)
  %refcnt_tracker.i = getelementptr inbounds %struct.net_device, ptr %call89, i32 0, i32 119
  %call.i252 = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i, ptr noundef %tcfm_dev_tracker, i32 noundef 2592) #14
  %tcfm_mac_header_xmit = getelementptr inbounds %struct.tcf_mirred, ptr %35, i32 0, i32 2
  %43 = ptrtoint ptr %tcfm_mac_header_xmit to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool96, ptr %tcfm_mac_header_xmit, align 4
  br label %if.end157

if.end157:                                        ; preds = %cleanup.thread, %if.end84.if.end157_crit_edge
  %44 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %a, align 4
  %46 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %action, align 4
  %48 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %goto_ch, align 4
  %call159 = call ptr @tcf_action_set_ctrlact(ptr noundef %45, i32 noundef %47, ptr noundef %49) #14
  %50 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call159, ptr %goto_ch, align 4
  %51 = ptrtoint ptr %eaction to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %eaction, align 4
  %tcfm_eaction = getelementptr inbounds %struct.tcf_mirred, ptr %35, i32 0, i32 1
  %53 = ptrtoint ptr %tcfm_eaction to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %tcfm_eaction, align 16
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #14
  %54 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %goto_ch, align 4
  %tobool163.not = icmp eq ptr %55, null
  br i1 %tobool163.not, label %if.end157.if.end165_crit_edge, label %if.then164

if.end157.if.end165_crit_edge:                    ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end165

if.then164:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #16
  call void @tcf_chain_put_by_act(ptr noundef nonnull %55) #14
  br label %if.end165

if.end165:                                        ; preds = %if.then164, %if.end157.if.end165_crit_edge
  br i1 %cmp76257, label %if.then168, label %if.end165.cleanup176_crit_edge

if.end165.cleanup176_crit_edge:                   ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup176

if.then168:                                       ; preds = %if.end165
  call void @_raw_spin_lock(ptr noundef nonnull @mirred_list_lock) #14
  %tcfm_list169 = getelementptr inbounds %struct.tcf_mirred, ptr %35, i32 0, i32 5
  %56 = load ptr, ptr @mirred_list, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %tcfm_list169, ptr noundef nonnull @mirred_list, ptr noundef %56) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then168.list_add.exit_crit_edge

if.then168.list_add.exit_crit_edge:               ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then168
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %tcfm_list169, ptr %prev1.i.i, align 4
  %58 = ptrtoint ptr %tcfm_list169 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %56, ptr %tcfm_list169, align 4
  %prev3.i.i = getelementptr inbounds %struct.tcf_mirred, ptr %35, i32 0, i32 5, i32 1
  %59 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @mirred_list, ptr %prev3.i.i, align 4
  store volatile ptr %tcfm_list169, ptr @mirred_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then168.list_add.exit_crit_edge
  call void @_raw_spin_unlock(ptr noundef nonnull @mirred_list_lock) #14
  br label %cleanup176

put_chain:                                        ; preds = %if.then87
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #14
  %60 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %goto_ch, align 4
  %tobool171.not = icmp eq ptr %61, null
  br i1 %tobool171.not, label %put_chain.release_idr_crit_edge, label %if.then172

put_chain.release_idr_crit_edge:                  ; preds = %put_chain
  call void @__sanitizer_cov_trace_pc() #16
  br label %release_idr

if.then172:                                       ; preds = %put_chain
  call void @__sanitizer_cov_trace_pc() #16
  call void @tcf_chain_put_by_act(ptr noundef nonnull %61) #14
  br label %release_idr

release_idr:                                      ; preds = %if.then172, %put_chain.release_idr_crit_edge, %if.end79.release_idr_crit_edge
  %err.1 = phi i32 [ %call80, %if.end79.release_idr_crit_edge ], [ -19, %if.then172 ], [ -19, %put_chain.release_idr_crit_edge ]
  %62 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %a, align 4
  %call175 = call i32 @tcf_idr_release(ptr noundef %63, i1 noundef zeroext %tobool) #14
  br label %cleanup176

cleanup176:                                       ; preds = %release_idr, %list_add.exit, %if.end165.cleanup176_crit_edge, %if.then71, %if.then66, %if.then56, %if.then52.cleanup176_crit_edge, %if.then44, %do.body41.cleanup176_crit_edge, %if.end27.cleanup176_crit_edge, %if.end18.cleanup176_crit_edge, %if.then13, %do.body10.cleanup176_crit_edge, %if.end4.cleanup176_crit_edge, %if.then3, %do.body.cleanup176_crit_edge
  %retval.0 = phi i32 [ %err.1, %release_idr ], [ -17, %if.then71 ], [ %call64, %if.then66 ], [ -22, %if.then3 ], [ -22, %do.body.cleanup176_crit_edge ], [ %call2.i, %if.end4.cleanup176_crit_edge ], [ -22, %if.then13 ], [ -22, %do.body10.cleanup176_crit_edge ], [ %call23, %if.end18.cleanup176_crit_edge ], [ 0, %if.end27.cleanup176_crit_edge ], [ -22, %if.then44 ], [ -22, %do.body41.cleanup176_crit_edge ], [ -22, %if.then56 ], [ -22, %if.then52.cleanup176_crit_edge ], [ %ret.0255, %list_add.exit ], [ %ret.0255, %if.end165.cleanup176_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goto_ch) #14
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_mirred_walker(ptr noundef %net, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mirred_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_generic_walker(ptr noundef %call, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #14
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_stats_update(ptr noundef %a, i64 noundef %bytes, i64 noundef %packets, i64 noundef %drops, i64 noundef %lastuse, i1 noundef zeroext %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tcf_action_update_stats(ptr noundef %a, i64 noundef %bytes, i64 noundef %packets, i64 noundef %drops, i1 noundef zeroext %hw) #14
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcf_mirred_get_fill_size(ptr nocapture noundef readnone %act) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 32
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tcf_mirred_get_dev(ptr noundef %a, ptr nocapture noundef writeonly %destructor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !121
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %tcfm_dev = getelementptr inbounds %struct.tcf_mirred, ptr %a, i32 0, i32 3
  %4 = ptrtoint ptr %tcfm_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %tcfm_dev, align 8
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b14 = load i1, ptr @tcf_mirred_get_dev.__warned, align 1
  br i1 %.b14, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tcf_mirred_get_dev.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 438, ptr noundef nonnull @.str.5) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.if.end11_crit_edge, label %do.body1.i

do.end7.if.end11_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end11

do.body1.i:                                       ; preds = %do.end7
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !116
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !99) #14
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
  %add13.i = add i32 %18, 1
  store i32 %add13.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !117
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_hold.exit_crit_edge, !prof !109

do.body1.i.dev_hold.exit_crit_edge:               ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_hold.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %if.then28.i, %do.body1.i.dev_hold.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #14, !srcloc !118
  %20 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @tcf_mirred_dev_put, ptr %destructor, align 4
  br label %if.end11

if.end11:                                         ; preds = %dev_hold.exit, %do.end7.if.end11_crit_edge
  %call.i16 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i16, label %if.end11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i19

if.end11.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i19:                                ; preds = %if.end11
  %call1.i17 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool.not.i18, label %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i21

land.lhs.true.i19.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i19
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i21:                               ; preds = %land.lhs.true.i19
  %.b4.i20 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i20, label %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, label %if.then.i22

land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i22:                                      ; preds = %land.lhs.true2.i21
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i22, %land.lhs.true2.i21.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i19.rcu_read_unlock.exit_crit_edge, %if.end11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !122
  %21 = tail call i32 @llvm.read_register.i32(metadata !99) #14
  %and.i.i.i.i.i23 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i23 to ptr
  %preempt_count.i.i.i.i24 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i24, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i24, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_mirred_offload_act_setup(ptr noundef %act, ptr noundef %entry_data, ptr nocapture noundef writeonly %index_inc, i1 noundef zeroext %bind) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %act, align 16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %bind, label %if.then, label %if.else18

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i, label %if.then.return_crit_edge, label %land.lhs.true.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true.i:                                  ; preds = %if.then
  %id.i = getelementptr inbounds %struct.tc_action_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp.i = icmp eq i32 %3, 8
  br i1 %cmp.i, label %is_tcf_mirred_egress_redirect.exit, label %land.lhs.true.i.return_crit_edge

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

is_tcf_mirred_egress_redirect.exit:               ; preds = %land.lhs.true.i
  %tcfm_eaction.i = getelementptr inbounds %struct.tcf_mirred, ptr %act, i32 0, i32 1
  %4 = ptrtoint ptr %tcfm_eaction.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tcfm_eaction.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp2.i = icmp eq i32 %5, 1
  br i1 %cmp2.i, label %if.then2, label %land.lhs.true.i71

if.then2:                                         ; preds = %is_tcf_mirred_egress_redirect.exit
  %6 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %entry_data, align 8
  %7 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %act, align 16
  %get_dev.i = getelementptr inbounds %struct.tc_action_ops, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %get_dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %get_dev.i, align 4
  %destructor.i = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 3
  %call.i = tail call ptr %10(ptr noundef %act, ptr noundef %destructor.i) #14
  %11 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %11, align 8
  %tobool.not.i67 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i67, label %if.then2.cleanup_crit_edge, label %if.then2.cleanup.sink.split_crit_edge

if.then2.cleanup.sink.split_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i71:                                ; preds = %is_tcf_mirred_egress_redirect.exit
  %13 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr)
  %cmp.i70 = icmp eq i32 %.pr, 8
  br i1 %cmp.i70, label %is_tcf_mirred_egress_mirror.exit, label %land.lhs.true.i71.return_crit_edge

land.lhs.true.i71.return_crit_edge:               ; preds = %land.lhs.true.i71
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

is_tcf_mirred_egress_mirror.exit:                 ; preds = %land.lhs.true.i71
  %tcfm_eaction.i72 = getelementptr inbounds %struct.tcf_mirred, ptr %act, i32 0, i32 1
  %14 = ptrtoint ptr %tcfm_eaction.i72 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tcfm_eaction.i72, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp2.i73 = icmp eq i32 %15, 2
  br i1 %cmp2.i73, label %if.then4, label %land.lhs.true.i86

if.then4:                                         ; preds = %is_tcf_mirred_egress_mirror.exit
  %16 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 5, ptr %entry_data, align 8
  %17 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %act, align 16
  %get_dev.i76 = getelementptr inbounds %struct.tc_action_ops, ptr %18, i32 0, i32 13
  %19 = ptrtoint ptr %get_dev.i76 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_dev.i76, align 4
  %destructor.i77 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 3
  %call.i78 = tail call ptr %20(ptr noundef %act, ptr noundef %destructor.i77) #14
  %21 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i78, ptr %21, align 8
  %tobool.not.i79 = icmp eq ptr %call.i78, null
  br i1 %tobool.not.i79, label %if.then4.cleanup_crit_edge, label %if.then4.cleanup.sink.split_crit_edge

if.then4.cleanup.sink.split_crit_edge:            ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i86:                                ; preds = %is_tcf_mirred_egress_mirror.exit
  %23 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr168 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr168)
  %cmp.i85 = icmp eq i32 %.pr168, 8
  br i1 %cmp.i85, label %is_tcf_mirred_ingress_redirect.exit, label %land.lhs.true.i86.return_crit_edge

land.lhs.true.i86.return_crit_edge:               ; preds = %land.lhs.true.i86
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

is_tcf_mirred_ingress_redirect.exit:              ; preds = %land.lhs.true.i86
  %tcfm_eaction.i87 = getelementptr inbounds %struct.tcf_mirred, ptr %act, i32 0, i32 1
  %24 = ptrtoint ptr %tcfm_eaction.i87 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tcfm_eaction.i87, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp2.i88 = icmp eq i32 %25, 3
  br i1 %cmp2.i88, label %if.then8, label %land.lhs.true.i101

if.then8:                                         ; preds = %is_tcf_mirred_ingress_redirect.exit
  %26 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 6, ptr %entry_data, align 8
  %27 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %act, align 16
  %get_dev.i91 = getelementptr inbounds %struct.tc_action_ops, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %get_dev.i91 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_dev.i91, align 4
  %destructor.i92 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 3
  %call.i93 = tail call ptr %30(ptr noundef %act, ptr noundef %destructor.i92) #14
  %31 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i93, ptr %31, align 8
  %tobool.not.i94 = icmp eq ptr %call.i93, null
  br i1 %tobool.not.i94, label %if.then8.cleanup_crit_edge, label %if.then8.cleanup.sink.split_crit_edge

if.then8.cleanup.sink.split_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.i101:                               ; preds = %is_tcf_mirred_ingress_redirect.exit
  %33 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr170.pr = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr170.pr)
  %cmp.i100 = icmp eq i32 %.pr170.pr, 8
  br i1 %cmp.i100, label %is_tcf_mirred_ingress_mirror.exit, label %land.lhs.true.i101.return_crit_edge

land.lhs.true.i101.return_crit_edge:              ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

is_tcf_mirred_ingress_mirror.exit:                ; preds = %land.lhs.true.i101
  %tcfm_eaction.i102 = getelementptr inbounds %struct.tcf_mirred, ptr %act, i32 0, i32 1
  %34 = ptrtoint ptr %tcfm_eaction.i102 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tcfm_eaction.i102, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp2.i103 = icmp eq i32 %35, 4
  br i1 %cmp2.i103, label %if.then12, label %is_tcf_mirred_ingress_mirror.exit.return_crit_edge

is_tcf_mirred_ingress_mirror.exit.return_crit_edge: ; preds = %is_tcf_mirred_ingress_mirror.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then12:                                        ; preds = %is_tcf_mirred_ingress_mirror.exit
  %36 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 7, ptr %entry_data, align 8
  %37 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %act, align 16
  %get_dev.i106 = getelementptr inbounds %struct.tc_action_ops, ptr %38, i32 0, i32 13
  %39 = ptrtoint ptr %get_dev.i106 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %get_dev.i106, align 4
  %destructor.i107 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 3
  %call.i108 = tail call ptr %40(ptr noundef %act, ptr noundef %destructor.i107) #14
  %41 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i108, ptr %41, align 8
  %tobool.not.i109 = icmp eq ptr %call.i108, null
  br i1 %tobool.not.i109, label %if.then12.cleanup_crit_edge, label %if.then12.cleanup.sink.split_crit_edge

if.then12.cleanup.sink.split_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.then12.cleanup.sink.split_crit_edge, %if.then8.cleanup.sink.split_crit_edge, %if.then4.cleanup.sink.split_crit_edge, %if.then2.cleanup.sink.split_crit_edge
  %call.i.sink = phi ptr [ %call.i, %if.then2.cleanup.sink.split_crit_edge ], [ %call.i78, %if.then4.cleanup.sink.split_crit_edge ], [ %call.i93, %if.then8.cleanup.sink.split_crit_edge ], [ %call.i108, %if.then12.cleanup.sink.split_crit_edge ]
  %destructor_priv.i = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 4
  %43 = ptrtoint ptr %destructor_priv.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i.sink, ptr %destructor_priv.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then12.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %44 = ptrtoint ptr %index_inc to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %index_inc, align 4
  br label %return

if.else18:                                        ; preds = %entry
  br i1 %tobool.not.i, label %if.else18.return_crit_edge, label %land.lhs.true.i116

if.else18.return_crit_edge:                       ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

land.lhs.true.i116:                               ; preds = %if.else18
  %id.i114 = getelementptr inbounds %struct.tc_action_ops, ptr %1, i32 0, i32 2
  %45 = ptrtoint ptr %id.i114 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %id.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %46)
  %cmp.i115 = icmp eq i32 %46, 8
  br i1 %cmp.i115, label %is_tcf_mirred_egress_redirect.exit121, label %land.lhs.true.i116.return_crit_edge

land.lhs.true.i116.return_crit_edge:              ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

is_tcf_mirred_egress_redirect.exit121:            ; preds = %land.lhs.true.i116
  %tcfm_eaction.i117 = getelementptr inbounds %struct.tcf_mirred, ptr %act, i32 0, i32 1
  %47 = ptrtoint ptr %tcfm_eaction.i117 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tcfm_eaction.i117, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp2.i118 = icmp eq i32 %48, 1
  br i1 %cmp2.i118, label %if.then20, label %land.lhs.true.i125

if.then20:                                        ; preds = %is_tcf_mirred_egress_redirect.exit121
  call void @__sanitizer_cov_trace_pc() #16
  %id21 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %49 = ptrtoint ptr %id21 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 4, ptr %id21, align 8
  br label %return

land.lhs.true.i125:                               ; preds = %is_tcf_mirred_egress_redirect.exit121
  %50 = ptrtoint ptr %id.i114 to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr172 = load i32, ptr %id.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr172)
  %cmp.i124 = icmp eq i32 %.pr172, 8
  br i1 %cmp.i124, label %is_tcf_mirred_egress_mirror.exit130, label %land.lhs.true.i125.return_crit_edge

land.lhs.true.i125.return_crit_edge:              ; preds = %land.lhs.true.i125
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

is_tcf_mirred_egress_mirror.exit130:              ; preds = %land.lhs.true.i125
  %tcfm_eaction.i126 = getelementptr inbounds %struct.tcf_mirred, ptr %act, i32 0, i32 1
  %51 = ptrtoint ptr %tcfm_eaction.i126 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tcfm_eaction.i126, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp2.i127 = icmp eq i32 %52, 2
  br i1 %cmp2.i127, label %if.then24, label %land.lhs.true.i134

if.then24:                                        ; preds = %is_tcf_mirred_egress_mirror.exit130
  call void @__sanitizer_cov_trace_pc() #16
  %id25 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %53 = ptrtoint ptr %id25 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 5, ptr %id25, align 8
  br label %return

land.lhs.true.i134:                               ; preds = %is_tcf_mirred_egress_mirror.exit130
  %54 = ptrtoint ptr %id.i114 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr174 = load i32, ptr %id.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr174)
  %cmp.i133 = icmp eq i32 %.pr174, 8
  br i1 %cmp.i133, label %is_tcf_mirred_ingress_redirect.exit139, label %land.lhs.true.i134.return_crit_edge

land.lhs.true.i134.return_crit_edge:              ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

is_tcf_mirred_ingress_redirect.exit139:           ; preds = %land.lhs.true.i134
  %tcfm_eaction.i135 = getelementptr inbounds %struct.tcf_mirred, ptr %act, i32 0, i32 1
  %55 = ptrtoint ptr %tcfm_eaction.i135 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %tcfm_eaction.i135, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %56)
  %cmp2.i136 = icmp eq i32 %56, 3
  br i1 %cmp2.i136, label %if.then28, label %land.lhs.true.i143

if.then28:                                        ; preds = %is_tcf_mirred_ingress_redirect.exit139
  call void @__sanitizer_cov_trace_pc() #16
  %id29 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %57 = ptrtoint ptr %id29 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 6, ptr %id29, align 8
  br label %return

land.lhs.true.i143:                               ; preds = %is_tcf_mirred_ingress_redirect.exit139
  %58 = ptrtoint ptr %id.i114 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pr176.pr = load i32, ptr %id.i114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr176.pr)
  %cmp.i142 = icmp eq i32 %.pr176.pr, 8
  br i1 %cmp.i142, label %is_tcf_mirred_ingress_mirror.exit148, label %land.lhs.true.i143.return_crit_edge

land.lhs.true.i143.return_crit_edge:              ; preds = %land.lhs.true.i143
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

is_tcf_mirred_ingress_mirror.exit148:             ; preds = %land.lhs.true.i143
  %tcfm_eaction.i144 = getelementptr inbounds %struct.tcf_mirred, ptr %act, i32 0, i32 1
  %59 = ptrtoint ptr %tcfm_eaction.i144 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tcfm_eaction.i144, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %60)
  %cmp2.i145 = icmp eq i32 %60, 4
  br i1 %cmp2.i145, label %if.then32, label %is_tcf_mirred_ingress_mirror.exit148.return_crit_edge

is_tcf_mirred_ingress_mirror.exit148.return_crit_edge: ; preds = %is_tcf_mirred_ingress_mirror.exit148
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then32:                                        ; preds = %is_tcf_mirred_ingress_mirror.exit148
  call void @__sanitizer_cov_trace_pc() #16
  %id33 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %61 = ptrtoint ptr %id33 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 7, ptr %id33, align 8
  br label %return

return:                                           ; preds = %if.then32, %is_tcf_mirred_ingress_mirror.exit148.return_crit_edge, %land.lhs.true.i143.return_crit_edge, %if.then28, %land.lhs.true.i134.return_crit_edge, %if.then24, %land.lhs.true.i125.return_crit_edge, %if.then20, %land.lhs.true.i116.return_crit_edge, %if.else18.return_crit_edge, %cleanup, %is_tcf_mirred_ingress_mirror.exit.return_crit_edge, %land.lhs.true.i101.return_crit_edge, %land.lhs.true.i86.return_crit_edge, %land.lhs.true.i71.return_crit_edge, %land.lhs.true.i.return_crit_edge, %if.then.return_crit_edge
  %retval.2 = phi i32 [ -95, %is_tcf_mirred_ingress_mirror.exit148.return_crit_edge ], [ 0, %cleanup ], [ -95, %is_tcf_mirred_ingress_mirror.exit.return_crit_edge ], [ -95, %land.lhs.true.i101.return_crit_edge ], [ -95, %if.then.return_crit_edge ], [ -95, %land.lhs.true.i143.return_crit_edge ], [ -95, %if.else18.return_crit_edge ], [ 0, %if.then24 ], [ 0, %if.then32 ], [ 0, %if.then28 ], [ 0, %if.then20 ], [ -95, %land.lhs.true.i86.return_crit_edge ], [ -95, %land.lhs.true.i134.return_crit_edge ], [ -95, %land.lhs.true.i.return_crit_edge ], [ -95, %land.lhs.true.i71.return_crit_edge ], [ -95, %land.lhs.true.i116.return_crit_edge ], [ -95, %land.lhs.true.i125.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bstats_update(ptr noundef %bstats, ptr nocapture noundef readonly %skb) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i.i, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.i.not = icmp eq i16 %5, 0
  br i1 %tobool.i.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gso_segs, align 2
  %conv4 = zext i16 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv4, %cond.true ], [ 1, %entry.cond.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %cond.end._bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i

cond.end._bstats_update.exit_crit_edge:           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %_bstats_update.exit

land.lhs.true.i.i.i:                              ; preds = %cond.end
  %9 = tail call i32 @llvm.read_register.i32(metadata !99) #14
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !123
  %13 = tail call i32 @llvm.read_register.i32(metadata !99) #14
  %and.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %18, ptrtoint (ptr @lockdep_recursion to i32)
  %19 = inttoptr i32 %add.i.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !124
  %22 = tail call i32 @llvm.read_register.i32(metadata !99) #14
  %and.i.i.i7.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i._bstats_update.exit_crit_edge

land.lhs.true.i.i.i._bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_bstats_update.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !99) #14
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i._bstats_update.exit_crit_edge

land.rhs.i.i.i._bstats_update.exit_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_bstats_update.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !99) #14
  %and.i.i.i9.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %33, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !125
  %34 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %37, ptrtoint (ptr @hardirqs_enabled to i32)
  %38 = inttoptr i32 %add47.i.i.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !126
  %41 = tail call i32 @llvm.read_register.i32(metadata !99) #14
  %and.i.i.i12.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool54.not.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i._bstats_update.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i._bstats_update.exit_crit_edge:   ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_bstats_update.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i._bstats_update.exit_crit_edge, label %if.then.i.i.i, !prof !111

land.rhs58.i.i.i._bstats_update.exit_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %_bstats_update.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 271, i32 noundef 9, ptr noundef null) #14
  br label %_bstats_update.exit

_bstats_update.exit:                              ; preds = %if.then.i.i.i, %land.rhs58.i.i.i._bstats_update.exit_crit_edge, %land.rhs22.i.i.i._bstats_update.exit_crit_edge, %land.rhs.i.i.i._bstats_update.exit_crit_edge, %land.lhs.true.i.i.i._bstats_update.exit_crit_edge, %cond.end._bstats_update.exit_crit_edge
  %conv = zext i32 %1 to i64
  %syncp.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2
  %45 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !127
  %dep_map.i.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2, i32 0, i32 1
  %47 = tail call ptr @llvm.returnaddress(i32 0) #14
  %48 = ptrtoint ptr %47 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %48) #14
  %49 = ptrtoint ptr %bstats to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bstats, align 8
  %add.i.i = add i64 %50, %conv
  store i64 %add.i.i, ptr %bstats, align 8
  %packets2.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 1
  %conv.i7.i = zext i32 %cond to i64
  %51 = ptrtoint ptr %packets2.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %packets2.i, align 8
  %add.i8.i = add i64 %52, %conv.i7.i
  store i64 %add.i8.i, ptr %packets2.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %48) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !128
  %53 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %54, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_dev_queue_xmit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dev_put_track(ptr noundef %dev, ptr noundef %tracker) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %tobool.not = icmp eq ptr %dev, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body1.i:                                       ; preds = %entry
  %refcnt_tracker.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i, ptr noundef %tracker) #14
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !116
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt.i, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !99) #14
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, %3
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13.i = add i32 %12, -1
  store i32 %add13.i, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !117
  %and.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !109

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !118
  br label %if.end

if.end:                                           ; preds = %dev_put.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = tail call i32 @llvm.read_register.i32(metadata !99) #14
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !121
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.17, i32 noundef 45, ptr noundef nonnull @.str.5) #14
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !122
  %8 = tail call i32 @llvm.read_register.i32(metadata !99) #14
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_search(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_check_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_release(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_idr_cleanup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_create_from_flags(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_check_ctrlact(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @dev_is_mac_header_xmit(ptr nocapture noundef readonly %dev) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %type = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 32
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %type, align 16
  %2 = zext i16 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.29)
  switch i16 %1, label %sw.default [
    i16 768, label %entry.return_crit_edge
    i16 769, label %entry.return_crit_edge1
    i16 776, label %entry.return_crit_edge2
    i16 778, label %entry.return_crit_edge3
    i16 823, label %entry.return_crit_edge4
    i16 -1, label %entry.return_crit_edge5
    i16 -2, label %entry.return_crit_edge6
    i16 519, label %entry.return_crit_edge7
    i16 779, label %entry.return_crit_edge8
  ]

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8
  %retval.0 = phi i1 [ true, %sw.default ], [ false, %entry.return_crit_edge ], [ false, %entry.return_crit_edge1 ], [ false, %entry.return_crit_edge2 ], [ false, %entry.return_crit_edge3 ], [ false, %entry.return_crit_edge4 ], [ false, %entry.return_crit_edge5 ], [ false, %entry.return_crit_edge6 ], [ false, %entry.return_crit_edge7 ], [ false, %entry.return_crit_edge8 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcf_action_set_ctrlact(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_chain_put_by_act(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_generic_walker(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_action_update_stats(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_mirred_dev_put(ptr noundef readonly %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %priv, null
  br i1 %tobool.not.i, label %entry.dev_put.exit_crit_edge, label %do.body1.i

entry.dev_put.exit_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit

do.body1.i:                                       ; preds = %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !116
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %priv, i32 0, i32 118
  %1 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pcpu_refcnt.i, align 4
  %3 = ptrtoint ptr %2 to i32
  %4 = tail call i32 @llvm.read_register.i32(metadata !99) #14
  %and.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %7
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %9, %3
  %10 = inttoptr i32 %add.i to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  %add13.i = add i32 %12, -1
  store i32 %add13.i, ptr %10, align 4
  %13 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !117
  %and.i.i.i = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !109

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #14, !srcloc !118
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %entry.dev_put.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mirred_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mirred_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 156) #18
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %call, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.tc_action_net_init.exit_crit_edge, label %if.end.i

entry.tc_action_net_init.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %tc_action_net_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %ops2.i = getelementptr inbounds %struct.tc_action_net, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @act_mirred_ops, ptr %ops2.i, align 4
  %net4.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %net, ptr %net4.i, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @tc_action_net_init.__key) #14
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %action_idr.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %action_idr.i, ptr noundef nonnull @.str.25, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #14
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
define internal void @mirred_exit_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mirred_net_id, align 4
  tail call void @rtnl_lock() #14
  %1 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn12.i = load ptr, ptr %net_list, align 4
  %cmp.not13.i = icmp eq ptr %.pn12.i, %net_list
  br i1 %cmp.not13.i, label %entry.tc_action_net_exit.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.tc_action_net_exit.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %tc_action_net_exit.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn14.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn12.i, %entry.for.body.i_crit_edge ]
  %net.0.i = getelementptr i8, ptr %.pn14.i, i32 -116
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net.0.i, i32 noundef %0) #14
  %ops.i = getelementptr inbounds %struct.tc_action_net, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  tail call void @tcf_idrinfo_destroy(ptr noundef %3, ptr noundef %5) #14
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  tail call void @kfree(ptr noundef %7) #14
  %8 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %net_list
  br i1 %cmp.not.i, label %for.body.i.tc_action_net_exit.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.body.i.tc_action_net_exit.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tc_action_net_exit.exit

tc_action_net_exit.exit:                          ; preds = %for.body.i.tc_action_net_exit.exit_crit_edge, %entry.tc_action_net_exit.exit_crit_edge
  tail call void @rtnl_unlock() #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_idrinfo_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mirred_device_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %call1 = tail call i32 @rtnl_is_locked() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.rhs, label %entry.if.end30_crit_edge

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

land.rhs:                                         ; preds = %entry
  %.b75 = load i1, ptr @mirred_device_event.__already_done, align 1
  br i1 %.b75, label %land.rhs.if.end30_crit_edge, label %if.then, !prof !111

land.rhs.if.end30_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end30

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @mirred_device_event.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 399, i32 noundef 9, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.3, i32 noundef 399) #14
  br label %if.end30

if.end30:                                         ; preds = %if.then, %land.rhs.if.end30_crit_edge, %entry.if.end30_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %event)
  %cmp = icmp eq i32 %event, 6
  br i1 %cmp, label %if.then38, label %if.end30.if.end65_crit_edge

if.end30.if.end65_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end65

if.then38:                                        ; preds = %if.end30
  tail call void @_raw_spin_lock(ptr noundef nonnull @mirred_list_lock) #14
  %.pn78 = load ptr, ptr @mirred_list, align 4
  %cmp40.not79 = icmp eq ptr %.pn78, @mirred_list
  br i1 %cmp40.not79, label %if.then38.for.end_crit_edge, label %for.body.lr.ph

if.then38.for.end_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then38
  %tobool.not.i76 = icmp eq ptr %1, null
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 119
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  br label %for.body

for.body:                                         ; preds = %if.end58.for.body_crit_edge, %for.body.lr.ph
  %.pn80 = phi ptr [ %.pn78, %for.body.lr.ph ], [ %.pn, %if.end58.for.body_crit_edge ]
  %tcfa_lock = getelementptr i8, ptr %.pn80, i32 -104
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #14
  %dep_map.i = getelementptr i8, ptr %.pn80, i32 -88
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %for.body.tcf_mirred_dev_dereference.exit_crit_edge

for.body.tcf_mirred_dev_dereference.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %tcf_mirred_dev_dereference.exit

land.lhs.true.i:                                  ; preds = %for.body
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.tcf_mirred_dev_dereference.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.tcf_mirred_dev_dereference.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tcf_mirred_dev_dereference.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @tcf_mirred_dev_dereference.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.tcf_mirred_dev_dereference.exit_crit_edge, label %if.then.i

land.lhs.true3.i.tcf_mirred_dev_dereference.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %tcf_mirred_dev_dereference.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @tcf_mirred_dev_dereference.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 68, ptr noundef nonnull @.str.14) #14
  br label %tcf_mirred_dev_dereference.exit

tcf_mirred_dev_dereference.exit:                  ; preds = %if.then.i, %land.lhs.true3.i.tcf_mirred_dev_dereference.exit_crit_edge, %land.lhs.true.i.tcf_mirred_dev_dereference.exit_crit_edge, %for.body.tcf_mirred_dev_dereference.exit_crit_edge
  %tcfm_dev.i = getelementptr i8, ptr %.pn80, i32 -8
  %2 = ptrtoint ptr %tcfm_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcfm_dev.i, align 8
  %cmp44 = icmp eq ptr %3, %1
  br i1 %cmp44, label %if.then45, label %tcf_mirred_dev_dereference.exit.if.end58_crit_edge

tcf_mirred_dev_dereference.exit.if.end58_crit_edge: ; preds = %tcf_mirred_dev_dereference.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then45:                                        ; preds = %tcf_mirred_dev_dereference.exit
  br i1 %tobool.not.i76, label %if.then45.dev_put_track.exit_crit_edge, label %do.body1.i.i

if.then45.dev_put_track.exit_crit_edge:           ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %if.then45
  %tcfm_dev_tracker = getelementptr i8, ptr %.pn80, i32 -4
  %call.i.i77 = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %tcfm_dev_tracker) #14
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !116
  %5 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !99) #14
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add13.i.i = add i32 %16, -1
  store i32 %add13.i.i, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !117
  %and.i.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !109

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #14, !srcloc !118
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %if.then45.dev_put_track.exit_crit_edge
  %18 = ptrtoint ptr %tcfm_dev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr null, ptr %tcfm_dev.i, align 8
  br label %if.end58

if.end58:                                         ; preds = %dev_put_track.exit, %tcf_mirred_dev_dereference.exit.if.end58_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #14
  %19 = ptrtoint ptr %.pn80 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn = load ptr, ptr %.pn80, align 4
  %cmp40.not = icmp eq ptr %.pn, @mirred_list
  br i1 %cmp40.not, label %if.end58.for.end_crit_edge, label %if.end58.for.body_crit_edge

if.end58.for.body_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end58.for.end_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %if.end58.for.end_crit_edge, %if.then38.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mirred_list_lock) #14
  br label %if.end65

if.end65:                                         ; preds = %for.end, %if.end30.if.end65_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_register_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !26, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !42, !43, !45, !46, !48, !50, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !86, !88, !89, !91, !93, !94, !96, !97, !98}
!llvm.named.register.sp = !{!99}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @__UNIQUE_ID_author393, !1, !"__UNIQUE_ID_author393", i1 false, i1 false}
!1 = !{!"../net/sched/act_mirred.c", i32 538, i32 1}
!2 = !{ptr @__UNIQUE_ID_description394, !3, !"__UNIQUE_ID_description394", i1 false, i1 false}
!3 = !{!"../net/sched/act_mirred.c", i32 539, i32 1}
!4 = !{ptr @__UNIQUE_ID_file395, !5, !"__UNIQUE_ID_file395", i1 false, i1 false}
!5 = !{!"../net/sched/act_mirred.c", i32 540, i32 1}
!6 = !{ptr @__UNIQUE_ID_license396, !5, !"__UNIQUE_ID_license396", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_act_mirred__397_562_mirred_init_module6, !8, !"__initcall__kmod_act_mirred__397_562_mirred_init_module6", i1 false, i1 false}
!8 = !{!"../net/sched/act_mirred.c", i32 562, i32 1}
!9 = !{ptr @__exitcall_mirred_cleanup_module, !10, !"__exitcall_mirred_cleanup_module", i1 false, i1 false}
!10 = !{!"../net/sched/act_mirred.c", i32 563, i32 1}
!11 = !{ptr @__pcpu_unique_mirred_rec_level, !12, !"__pcpu_unique_mirred_rec_level", i1 false, i1 false}
!12 = !{!"../net/sched/act_mirred.c", i32 32, i32 8}
!13 = !{ptr @mirred_rec_level, !12, !"mirred_rec_level", i1 false, i1 false}
!14 = !{ptr @act_mirred_ops, !15, !"act_mirred_ops", i1 false, i1 false}
!15 = !{!"../net/sched/act_mirred.c", i32 502, i32 29}
!16 = distinct !{null, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../net/sched/act_mirred.c", i32 239, i32 14}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../net/sched/act_mirred.c", i32 241, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tcf_mirred_act._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @tcf_mirred_act._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/sched/act_mirred.c", i32 243, i32 3}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../net/sched/act_mirred.c", i32 253, i32 8}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../net/sched/act_mirred.c", i32 255, i32 3}
!31 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tcf_mirred_act._entry.6, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @tcf_mirred_act._entry_ptr.8, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../net/sched/act_mirred.c", i32 260, i32 3}
!36 = !{ptr @tcf_mirred_act._entry.9, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @tcf_mirred_act._entry_ptr.11, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!40 = distinct !{null, !41, !"__already_done", i1 false, i1 false}
!41 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../net/sched/act_mirred.c", i32 67, i32 9}
!45 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/net/netlink.h", i32 991, i32 3}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/sched/act_mirred.c", i32 81, i32 8}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../net/sched/act_mirred.c", i32 29, i32 8}
!52 = !{ptr @mirred_list_lock, !51, !"mirred_list_lock", i1 false, i1 false}
!53 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!54 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!55 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!58 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!62 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mirred_net_id, !64, !"mirred_net_id", i1 false, i1 false}
!64 = !{!"../net/sched/act_mirred.c", i32 89, i32 21}
!65 = !{ptr @tcf_mirred_init.__msg, !66, !"__msg", i1 false, i1 false}
!66 = !{!"../net/sched/act_mirred.c", i32 109, i32 3}
!67 = !{ptr @tcf_mirred_init.__msg.21, !68, !"__msg", i1 false, i1 false}
!68 = !{!"../net/sched/act_mirred.c", i32 117, i32 3}
!69 = !{ptr @tcf_mirred_init.__msg.22, !70, !"__msg", i1 false, i1 false}
!70 = !{!"../net/sched/act_mirred.c", i32 140, i32 3}
!71 = !{ptr @tcf_mirred_init.__msg.23, !72, !"__msg", i1 false, i1 false}
!72 = !{!"../net/sched/act_mirred.c", i32 147, i32 4}
!73 = distinct !{null, !74, !"__warned", i1 false, i1 false}
!74 = !{!"../net/sched/act_mirred.c", i32 182, i32 10}
!75 = !{ptr @mirred_policy, !76, !"mirred_policy", i1 false, i1 false}
!76 = !{!"../net/sched/act_mirred.c", i32 85, i32 32}
!77 = !{ptr @mirred_list, !78, !"mirred_list", i1 false, i1 false}
!78 = !{!"../net/sched/act_mirred.c", i32 28, i32 8}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../net/sched/act_mirred.c", i32 438, i32 8}
!81 = !{ptr @mirred_net_ops, !82, !"mirred_net_ops", i1 false, i1 false}
!82 = !{!"../net/sched/act_mirred.c", i32 531, i32 33}
!83 = !{ptr @tc_action_net_init.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../include/net/act_api.h", i32 156, i32 2}
!85 = !{ptr @.str.24, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @xa_init_flags.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!88 = !{ptr @.str.25, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mirred_device_notifier, !90, !"mirred_device_notifier", i1 false, i1 false}
!90 = !{!"../net/sched/act_mirred.c", i32 419, i32 30}
!91 = distinct !{null, !92, !"__already_done", i1 false, i1 false}
!92 = !{!"../net/sched/act_mirred.c", i32 399, i32 2}
!93 = !{ptr @.str.26, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../net/sched/act_mirred.c", i32 548, i32 2}
!96 = !{ptr @.str.28, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @mirred_init_module._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @mirred_init_module._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{!"sp"}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!109 = !{!"branch_weights", i32 1, i32 2000}
!110 = !{i8 0, i8 2}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{i64 2156505150, i64 2156505636, i64 2156505187, i64 2156505243, i64 2156505277, i64 2156505301, i64 2156505342, i64 2156505363, i64 2156505391, i64 2156505425}
!113 = !{i64 2148311706}
!114 = !{i64 2148226170, i64 2148226202, i64 2148226231, i64 2148226265, i64 2148226296, i64 2148226319}
!115 = !{i64 2150532333}
!116 = !{i64 614656, i64 614717}
!117 = !{i64 617388}
!118 = !{i64 617673}
!119 = !{!"auto-init"}
!120 = !{i64 2156516134}
!121 = !{i64 2149657786}
!122 = !{i64 2149658052}
!123 = !{i64 2150166407}
!124 = !{i64 2150171341}
!125 = !{i64 2150193059}
!126 = !{i64 2150197953}
!127 = !{i64 2150274480}
!128 = !{i64 2150274805}
