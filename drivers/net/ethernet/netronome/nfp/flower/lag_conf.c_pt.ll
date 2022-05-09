; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/netronome/nfp/flower/lag_conf.c_pt.bc'
source_filename = "../drivers/net/ethernet/netronome/nfp/flower/lag_conf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.136, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.136 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.79, i32, %struct.spinlock }
%union.anon.79 = type { %struct.anon.80 }
%struct.anon.80 = type { ptr, ptr }
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
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nfp_app = type { ptr, ptr, ptr, ptr, [3 x ptr], ptr, i32, %struct.notifier_block, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nfp_flower_priv = type { ptr, ptr, i32, i64, i64, i8, %struct.nfp_fl_stats_id, %struct.nfp_fl_mask_id, [1024 x %struct.hlist_head], i32, %struct.rhashtable, ptr, %struct.spinlock, %struct.rhashtable, %struct.work_struct, %struct.sk_buff_head, %struct.sk_buff_head, %struct.nfp_fl_tunnel_offloads, %struct.atomic_t, %struct.wait_queue_head, %struct.nfp_mtu_conf, %struct.nfp_fl_lag, %struct.list_head, %struct.list_head, i32, i32, %struct.nfp_fl_internal_ports, %struct.delayed_work, i32, %struct.spinlock, i32, %struct.rhashtable, %struct.rhashtable, ptr, %struct.rhashtable }
%struct.nfp_fl_stats_id = type { %struct.circ_buf, i32, i8 }
%struct.circ_buf = type { ptr, i32, i32 }
%struct.nfp_fl_mask_id = type { %struct.circ_buf, ptr, i8 }
%struct.nfp_fl_tunnel_offloads = type { %struct.rhashtable, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.spinlock, %struct.ida, %struct.notifier_block }
%struct.ida = type { %struct.xarray }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nfp_mtu_conf = type { i32, i32, i8, %struct.wait_queue_head, %struct.spinlock }
%struct.nfp_fl_lag = type { %struct.delayed_work, %struct.mutex, %struct.list_head, %struct.ida, i32, i32, i8, i8, %struct.sk_buff_head }
%struct.nfp_fl_internal_ports = type { %struct.idr, %struct.spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.nfp_fl_pre_lag = type { %struct.nfp_fl_act_head, i16, [3 x i8], i8 }
%struct.nfp_fl_act_head = type { i8, i8 }
%struct.sk_buff = type { %union.anon.50, %union.anon.53, %union.anon.54, [48 x i8], %union.anon.55, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.57, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type { ptr, ptr, %union.anon.52 }
%union.anon.52 = type { ptr }
%union.anon.53 = type { ptr }
%union.anon.54 = type { i64 }
%union.anon.55 = type { %struct.anon.56 }
%struct.anon.56 = type { i32, ptr }
%union.anon.57 = type { %struct.anon.58 }
%struct.anon.58 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.59, i32, i32, i32, i16, i16, %union.anon.61, i32, %union.anon.62, %union.anon.63, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.59 = type { i32 }
%union.anon.61 = type { i32 }
%union.anon.62 = type { i32 }
%union.anon.63 = type { i16 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.177, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.198, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.177 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.198 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_lag_upper_info = type { i32, i32 }
%struct.nfp_fl_lag_group = type { i32, i8, %struct.list_head, ptr, i8, i8, i8, i8, i32 }
%struct.netdev_notifier_changelowerstate_info = type { %struct.netdev_notifier_info, ptr }
%struct.nfp_flower_repr_priv = type { ptr, i32, i8, [6 x i8], i8, %struct.list_head, %struct.nfp_fl_qos, i8 }
%struct.nfp_fl_qos = type { i32, %struct.nfp_stat_pair, %struct.nfp_stat_pair, i64 }
%struct.nfp_stat_pair = type { i64, i64 }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.211 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%union.anon.211 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.212, i16, i8, i8, i32, i16, i16 }
%union.anon.212 = type { %struct.anon.214 }
%struct.anon.214 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.dst_cache = type { ptr, i32 }
%struct.hw_port_info = type { ptr, i32 }
%struct.nfp_flower_cmsg_lag_config = type { i8, [2 x i8], i8, i32, i32, i32, i32, [0 x i32] }

@nfp_flower_lag_populate_pre_action.__msg = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"nfp: invalid entry: group does not exist for LAG action\00", [40 x i8] zeroinitializer }, align 32
@nfp_flower_lag_unprocessed_msg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 459, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfp: mem err in group reset msg\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"nfp_flower_lag_unprocessed_msg\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/netronome/nfp/flower/lag_conf.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nfp_flower_lag_unprocessed_msg._entry_ptr = internal global ptr @nfp_flower_lag_unprocessed_msg._entry, section ".printk_index", align 4
@nfp_flower_lag_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&(&lag->work)->work)\00", [57 x i8] zeroinitializer }, align 32
@nfp_flower_lag_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&(&lag->work)->timer\00", [43 x i8] zeroinitializer }, align 32
@nfp_flower_lag_init.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&lag->lock\00", [21 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@nfp_fl_lag_changeupper_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@nfp_fl_lag_changeupper_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 553, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"nfp: Unable to offload tx_type %u hash %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"nfp_fl_lag_changeupper_event\00", [35 x i8] zeroinitializer }, align 32
@nfp_fl_lag_changeupper_event._entry_ptr = internal global ptr @nfp_fl_lag_changeupper_event._entry, section ".printk_index", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@nfp_repr_netdev_ops = external dso_local constant %struct.net_device_ops, align 4
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nfp_fl_lag_group_create._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 118, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"nfp: No more bonding groups available\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"nfp_fl_lag_group_create\00", [40 x i8] zeroinitializer }, align 32
@nfp_fl_lag_group_create._entry_ptr = internal global ptr @nfp_fl_lag_group_create._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nfp_fl_lag_schedule_group_delete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 494, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"nfp: untracked bond got unregistered %s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"nfp_fl_lag_schedule_group_delete\00", [63 x i8] zeroinitializer }, align 32
@nfp_fl_lag_schedule_group_delete._entry_ptr = internal global ptr @nfp_fl_lag_schedule_group_delete._entry, section ".printk_index", align 4
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(unnamed net_device)\00", [43 x i8] zeroinitializer }, align 32
@nfp_fl_lag_do_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 294, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"nfp: group delete failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nfp_fl_lag_do_work\00", [45 x i8] zeroinitializer }, align 32
@nfp_fl_lag_do_work._entry_ptr = internal global ptr @nfp_fl_lag_do_work._entry, section ".printk_index", align 4
@nfp_fl_lag_do_work.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nfp_fl_lag_do_work._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.2, i32 363, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"nfp: group offload failed\0A\00", [37 x i8] zeroinitializer }, align 32
@nfp_fl_lag_do_work._entry_ptr.25 = internal global ptr @nfp_fl_lag_do_work._entry.23, section ".printk_index", align 4
@nfp_fl_lag_do_work._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.2, i32 376, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"nfp: group batch end cmsg failed\0A\00", [62 x i8] zeroinitializer }, align 32
@nfp_fl_lag_do_work._entry_ptr.28 = internal global ptr @nfp_fl_lag_do_work._entry.26, section ".printk_index", align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 6, i64 21, i64 27]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 5]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 5, i64 7]
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 171, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 458, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 665, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 667, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 523, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 550, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 695, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 723, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 117, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 493, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [29 x i8] c"../include/linux/netdevice.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 4963, i32 10 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 293, i32 5 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 362, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private constant [56 x i8] c"../drivers/net/ethernet/netronome/nfp/flower/lag_conf.c\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.132, i32 375, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 378, i32 2 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @nfp_fl_lag_changeupper_event._entry, ptr @nfp_fl_lag_changeupper_event._entry_ptr, ptr @nfp_fl_lag_do_work._entry, ptr @nfp_fl_lag_do_work._entry.23, ptr @nfp_fl_lag_do_work._entry.26, ptr @nfp_fl_lag_do_work._entry_ptr, ptr @nfp_fl_lag_do_work._entry_ptr.25, ptr @nfp_fl_lag_do_work._entry_ptr.28, ptr @nfp_fl_lag_group_create._entry, ptr @nfp_fl_lag_group_create._entry_ptr, ptr @nfp_fl_lag_schedule_group_delete._entry, ptr @nfp_fl_lag_schedule_group_delete._entry_ptr, ptr @nfp_flower_lag_unprocessed_msg._entry, ptr @nfp_flower_lag_unprocessed_msg._entry_ptr, ptr @nfp_flower_lag_populate_pre_action.__msg, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @nfp_flower_lag_init.__key, ptr @.str.5, ptr @nfp_flower_lag_init.__key.6, ptr @.str.7, ptr @nfp_flower_lag_init.__key.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @xa_init_flags.__key, ptr @.str.29], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_lag_populate_pre_action.__msg to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_lag_unprocessed_msg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_lag_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_lag_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_flower_lag_init.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_lag_changeupper_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_lag_group_create._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_lag_schedule_group_delete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_lag_do_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_lag_do_work._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfp_fl_lag_do_work._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_lag_populate_pre_action(ptr nocapture noundef readonly %app, ptr noundef readnone %master, ptr nocapture noundef writeonly %pre_act, ptr noundef writeonly %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 21, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %master, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i:                                         ; preds = %entry
  %group_list.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 21, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %group_list.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %group_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.then_crit_edge, label %for.body.i

for.cond.i.if.then_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

for.body.i:                                       ; preds = %for.cond.i
  %master_ndev.i = getelementptr i8, ptr %.pn.i, i32 8
  %3 = ptrtoint ptr %master_ndev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master_ndev.i, align 4
  %cmp3.i = icmp eq ptr %4, %master
  br i1 %cmp3.i, label %nfp_fl_lag_find_group_for_master_with_lag.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

nfp_fl_lag_find_group_for_master_with_lag.exit:   ; preds = %for.body.i
  %entry1.0.le.i = getelementptr i8, ptr %.pn.i, i32 -8
  %tobool.not = icmp eq ptr %entry1.0.le.i, null
  br i1 %tobool.not, label %nfp_fl_lag_find_group_for_master_with_lag.exit.if.then_crit_edge, label %if.end7

nfp_fl_lag_find_group_for_master_with_lag.exit.if.then_crit_edge: ; preds = %nfp_fl_lag_find_group_for_master_with_lag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %nfp_fl_lag_find_group_for_master_with_lag.exit.if.then_crit_edge, %for.cond.i.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nfp_flower_lag_populate_pre_action.__msg) #10
  %tobool5.not = icmp eq ptr %extack, null
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.then6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @nfp_flower_lag_populate_pre_action.__msg, ptr %extack, align 4
  br label %cleanup

if.end7:                                          ; preds = %nfp_fl_lag_find_group_for_master_with_lag.exit
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %entry1.0.le.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %entry1.0.le.i, align 4
  %conv = trunc i32 %7 to i16
  %group_id8 = getelementptr inbounds %struct.nfp_fl_pre_lag, ptr %pre_act, i32 0, i32 1
  %8 = ptrtoint ptr %group_id8 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %group_id8, align 2
  %batch_ver = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 21, i32 5
  %9 = ptrtoint ptr %batch_ver to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %batch_ver, align 4
  %lag_version = getelementptr inbounds %struct.nfp_fl_pre_lag, ptr %pre_act, i32 0, i32 2
  %temp_vers.0.extract.trunc = trunc i32 %10 to i24
  %11 = ptrtoint ptr %lag_version to i32
  call void @__asan_storeN_noabort(i32 %11, i32 3)
  store i24 %temp_vers.0.extract.trunc, ptr %lag_version, align 2
  %group_inst = getelementptr i8, ptr %.pn.i, i32 -4
  %12 = ptrtoint ptr %group_inst to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %group_inst, align 4
  %instance = getelementptr inbounds %struct.nfp_fl_pre_lag, ptr %pre_act, i32 0, i32 3
  %14 = ptrtoint ptr %instance to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %instance, align 1
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -2, %if.then6 ], [ -2, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_lag_get_output_id(ptr nocapture noundef readonly %app, ptr noundef readnone %master) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 21, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %tobool.not.i = icmp eq ptr %master, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %entry
  %group_list.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 21, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %group_list.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %2 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %group_list.i
  br i1 %cmp.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %master_ndev.i = getelementptr i8, ptr %.pn.i, i32 8
  %3 = ptrtoint ptr %master_ndev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %master_ndev.i, align 4
  %cmp3.i = icmp eq ptr %4, %master
  br i1 %cmp3.i, label %nfp_fl_lag_find_group_for_master_with_lag.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

nfp_fl_lag_find_group_for_master_with_lag.exit:   ; preds = %for.body.i
  %entry1.0.le.i = getelementptr i8, ptr %.pn.i, i32 -8
  %tobool.not = icmp eq ptr %entry1.0.le.i, null
  br i1 %tobool.not, label %nfp_fl_lag_find_group_for_master_with_lag.exit.if.end_crit_edge, label %if.then

nfp_fl_lag_find_group_for_master_with_lag.exit.if.end_crit_edge: ; preds = %nfp_fl_lag_find_group_for_master_with_lag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %nfp_fl_lag_find_group_for_master_with_lag.exit
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %entry1.0.le.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %entry1.0.le.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %nfp_fl_lag_find_group_for_master_with_lag.exit.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %group_id.0 = phi i32 [ %6, %if.then ], [ -2, %nfp_fl_lag_find_group_for_master_with_lag.exit.if.end_crit_edge ], [ -2, %entry.if.end_crit_edge ], [ -2, %for.cond.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %group_id.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nfp_flower_lag_unprocessed_msg(ptr nocapture noundef readonly %app, ptr noundef %skb) local_unnamed_addr #0 align 64 {
entry:
  %batch.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nfp_app, ptr %app, i32 0, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.i, align 4
  %conv = zext i8 %5 to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %group_id.i = getelementptr i8, ptr %3, i32 16
  %6 = ptrtoint ptr %group_id.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %group_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %7)
  %cmp.i = icmp ugt i32 %7, 31
  br i1 %cmp.i, label %if.then.if.end5_crit_edge, label %if.end.i

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end.i:                                         ; preds = %if.then
  %qlen.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 21, i32 8, i32 1
  %8 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %qlen.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 99, i32 %9)
  %cmp2.i = icmp ugt i32 %9, 99
  br i1 %cmp2.i, label %if.end.i.if.end5_crit_edge, label %if.end4.i

if.end.i.if.end5_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %retrans_skbs.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 21, i32 8
  %prev.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 21, i32 8, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i, align 4
  %12 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %retrans_skbs.i, ptr %skb, align 8
  %prev10.i.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %13 = ptrtoint ptr %prev10.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %prev10.i.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %skb, ptr %11, align 4
  %15 = ptrtoint ptr %qlen.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %qlen.i.i, align 4
  %add.i.i.i.i = add i32 %16, 1
  store volatile i32 %add.i.i.i.i, ptr %qlen.i.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.end4.i, %if.end.i.if.end5_crit_edge, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %store_skb.0.off0 = phi i1 [ false, %entry.if.end5_crit_edge ], [ false, %if.then.if.end5_crit_edge ], [ false, %if.end.i.if.end5_crit_edge ], [ true, %if.end4.i ]
  %and6 = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end10_crit_edge, label %if.then8

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then8:                                         ; preds = %if.end5
  %retrans_skbs.i60 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 21, i32 8
  %17 = ptrtoint ptr %retrans_skbs.i60 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %retrans_skbs.i60, align 4
  %cmp.i.i4.i = icmp eq ptr %18, %retrans_skbs.i60
  %tobool.not.i35.i = icmp eq ptr %18, null
  %tobool.not.i6.i = or i1 %cmp.i.i4.i, %tobool.not.i35.i
  br i1 %tobool.not.i6.i, label %if.then8.if.end10_crit_edge, label %while.body.lr.ph.i

if.then8.if.end10_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

while.body.lr.ph.i:                               ; preds = %if.then8
  %qlen.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 21, i32 8, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %19 = phi ptr [ %18, %while.body.lr.ph.i ], [ %33, %while.body.i.while.body.i_crit_edge ]
  %20 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %21, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %19, i32 0, i32 1
  %24 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %19, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %23, i32 0, i32 1
  %26 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %25, ptr %prev17.i.i.i, align 4
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %23, ptr %25, align 8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %ctrl.i = getelementptr inbounds %struct.nfp_app, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctrl.i, align 4
  %call1.i = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %31, ptr noundef nonnull %19) #10
  %32 = ptrtoint ptr %retrans_skbs.i60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %retrans_skbs.i60, align 4
  %cmp.i.i.i = icmp eq ptr %33, %retrans_skbs.i60
  %tobool.not.i3.i = icmp eq ptr %33, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i3.i
  br i1 %tobool.not.i.i, label %while.body.i.if.end10_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.if.end10_crit_edge:                  ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.end10:                                         ; preds = %while.body.i.if.end10_crit_edge, %if.then8.if.end10_crit_edge, %if.end5.if.end10_crit_edge
  %and11 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end43_crit_edge, label %if.then13

if.end10.if.end43_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end43

if.then13:                                        ; preds = %if.end10
  %nfp_lag14 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 21
  %retrans_skbs = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 21, i32 8
  %34 = ptrtoint ptr %retrans_skbs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %retrans_skbs, align 4
  %cmp.i.i2.i = icmp eq ptr %35, %retrans_skbs
  %tobool.not.i13.i = icmp eq ptr %35, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %if.then13.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i62

if.then13.__skb_queue_purge.exit_crit_edge:       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit

while.body.lr.ph.i62:                             ; preds = %if.then13
  %qlen.i.i.i61 = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 21, i32 8, i32 1
  br label %while.body.i68

while.body.i68:                                   ; preds = %while.body.i68.while.body.i68_crit_edge, %while.body.lr.ph.i62
  %36 = phi ptr [ %35, %while.body.lr.ph.i62 ], [ %46, %while.body.i68.while.body.i68_crit_edge ]
  %37 = ptrtoint ptr %qlen.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %qlen.i.i.i61, align 4
  %sub.i.i.i63 = add i32 %38, -1
  store volatile i32 %sub.i.i.i63, ptr %qlen.i.i.i61, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 8
  %prev9.i.i.i64 = getelementptr inbounds %struct.anon.51, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev9.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev9.i.i.i64, align 4
  store ptr null, ptr %prev9.i.i.i64, align 4
  store ptr null, ptr %36, align 8
  %prev17.i.i.i65 = getelementptr inbounds %struct.anon.51, ptr %40, i32 0, i32 1
  %43 = ptrtoint ptr %prev17.i.i.i65 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %42, ptr %prev17.i.i.i65, align 4
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %40, ptr %42, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %36, i32 noundef 0) #10
  %45 = ptrtoint ptr %retrans_skbs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %retrans_skbs, align 4
  %cmp.i.i.i66 = icmp eq ptr %46, %retrans_skbs
  %tobool.not.i1.i = icmp eq ptr %46, null
  %tobool.not.i.i67 = or i1 %cmp.i.i.i66, %tobool.not.i1.i
  br i1 %tobool.not.i.i67, label %while.body.i68.__skb_queue_purge.exit_crit_edge, label %while.body.i68.while.body.i68_crit_edge

while.body.i68.while.body.i68_crit_edge:          ; preds = %while.body.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i68

while.body.i68.__skb_queue_purge.exit_crit_edge:  ; preds = %while.body.i68
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i68.__skb_queue_purge.exit_crit_edge, %if.then13.__skb_queue_purge.exit_crit_edge
  %lock = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 21, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %group_list = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 21, i32 2
  %47 = ptrtoint ptr %group_list to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn69 = load ptr, ptr %group_list, align 4
  %cmp.not70 = icmp eq ptr %.pn69, %group_list
  br i1 %cmp.not70, label %__skb_queue_purge.exit.for.end_crit_edge, label %__skb_queue_purge.exit.for.body_crit_edge

__skb_queue_purge.exit.for.body_crit_edge:        ; preds = %__skb_queue_purge.exit
  br label %for.body

__skb_queue_purge.exit.for.end_crit_edge:         ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %__skb_queue_purge.exit.for.body_crit_edge
  %.pn71 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn69, %__skb_queue_purge.exit.for.body_crit_edge ]
  %dirty = getelementptr i8, ptr %.pn71, i32 12
  %48 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %dirty, align 4
  %49 = ptrtoint ptr %.pn71 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn = load ptr, ptr %.pn71, align 4
  %cmp.not = icmp eq ptr %.pn, %group_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %__skb_queue_purge.exit.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %batch.i) #10
  %50 = ptrtoint ptr %batch.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %batch.i, align 4
  %rst_cfg.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %1, i32 0, i32 21, i32 7
  %51 = ptrtoint ptr %rst_cfg.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %rst_cfg.i, align 1
  %call.i = call fastcc i32 @nfp_fl_lag_config_group(ptr noundef %nfp_lag14, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %batch.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %batch.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %for.end.if.end38_crit_edge, label %do.body

for.end.if.end38_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.body:                                          ; preds = %for.end
  %call29 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %do.body.if.end38_crit_edge, label %do.end

do.body.if.end38_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cpp, align 4
  %call34 = tail call ptr @nfp_cpp_device(ptr noundef %55) #10
  %parent = getelementptr inbounds %struct.device, ptr %call34, i32 0, i32 1
  %56 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str) #13
  br label %if.end38

if.end38:                                         ; preds = %do.end, %do.body.if.end38_crit_edge, %for.end.if.end38_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %58 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %58, ptr noundef %nfp_lag14, i32 noundef 0) #10
  br label %if.end43

if.end43:                                         ; preds = %if.end38, %if.end10.if.end43_crit_edge
  ret i1 %store_skb.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_lag_reset(ptr nocapture noundef %lag) local_unnamed_addr #0 align 64 {
entry:
  %batch = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %batch) #10
  %0 = ptrtoint ptr %batch to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %batch, align 4
  %rst_cfg = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 7
  %1 = ptrtoint ptr %rst_cfg to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %rst_cfg, align 1
  %call = call fastcc i32 @nfp_fl_lag_config_group(ptr noundef %lag, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %batch)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %batch) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_cpp_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfp_flower_lag_netdev_event(ptr noundef %priv, ptr noundef %netdev, i32 noundef %event, ptr nocapture noundef readonly %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nfp_lag = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 21
  %0 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 21, label %sw.bb
    i32 27, label %sw.bb1
    i32 6, label %sw.bb2
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %upper_dev.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %1 = ptrtoint ptr %upper_dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %upper_dev.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 14
  %3 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %sw.bb.netif_is_lag_master.exit.i_crit_edge, label %netif_is_bond_master.exit.i.i

sw.bb.netif_is_lag_master.exit.i_crit_edge:       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_is_lag_master.exit.i

netif_is_bond_master.exit.i.i:                    ; preds = %sw.bb
  %priv_flags.i.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 15
  %5 = ptrtoint ptr %priv_flags.i.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %priv_flags.i.i.i, align 16
  %and1.i.i.i = and i64 %6, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i.i)
  %tobool2.i.not.i.i = icmp eq i64 %and1.i.i.i, 0
  br i1 %tobool2.i.not.i.i, label %netif_is_bond_master.exit.i.i.netif_is_lag_master.exit.i_crit_edge, label %netif_is_bond_master.exit.i.i.if.end.i_crit_edge

netif_is_bond_master.exit.i.i.if.end.i_crit_edge: ; preds = %netif_is_bond_master.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

netif_is_bond_master.exit.i.i.netif_is_lag_master.exit.i_crit_edge: ; preds = %netif_is_bond_master.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_is_lag_master.exit.i

netif_is_lag_master.exit.i:                       ; preds = %netif_is_bond_master.exit.i.i.netif_is_lag_master.exit.i_crit_edge, %sw.bb.netif_is_lag_master.exit.i_crit_edge
  %priv_flags.i3.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 15
  %7 = ptrtoint ptr %priv_flags.i3.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %priv_flags.i3.i.i, align 16
  %and.i4.i.i = and i64 %8, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i.i)
  %tobool.i.i.not.i = icmp eq i64 %and.i4.i.i, 0
  br i1 %tobool.i.i.not.i, label %netif_is_lag_master.exit.i.cleanup_crit_edge, label %netif_is_lag_master.exit.i.if.end.i_crit_edge

netif_is_lag_master.exit.i.if.end.i_crit_edge:    ; preds = %netif_is_lag_master.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

netif_is_lag_master.exit.i.cleanup_crit_edge:     ; preds = %netif_is_lag_master.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %netif_is_lag_master.exit.i.if.end.i_crit_edge, %netif_is_bond_master.exit.i.i.if.end.i_crit_edge
  %9 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.end.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i.rcu_read_lock.exit.i_crit_edge
  %call1.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end.i_crit_edge

rcu_read_lock.exit.i.do.end.i_crit_edge:          ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b135.i = load i1, ptr @nfp_fl_lag_changeupper_event.__warned, align 1
  br i1 %.b135.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then6.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then6.i:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nfp_fl_lag_changeupper_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 523, ptr noundef nonnull @.str.10) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then6.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %rcu_read_lock.exit.i.do.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn160.i = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not161.i = icmp eq ptr %.pn160.i, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not161.i, label %do.end.i.for.end.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.for.end.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn163.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn160.i, %do.end.i.for.body.i_crit_edge ]
  %slave_count.0162.i = phi i32 [ %slave_count.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.end.i.for.body.i_crit_edge ]
  %iter_netdev.0.i = getelementptr i8, ptr %.pn163.i, i32 -40
  %call15.i = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %iter_netdev.0.i) #10
  %cmp16.i = icmp eq ptr %call15.i, %2
  br i1 %cmp16.i, label %if.then17.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.then17.i:                                      ; preds = %for.body.i
  %netdev_ops.i.i = getelementptr i8, ptr %.pn163.i, i32 80
  %13 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp eq ptr %14, @nfp_repr_netdev_ops
  br i1 %cmp.i.i, label %if.end20.i, label %if.then17.i.for.end.i_crit_edge

if.then17.i.for.end.i_crit_edge:                  ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end20.i:                                       ; preds = %if.then17.i
  %app.i = getelementptr i8, ptr %.pn163.i, i32 2276
  %15 = ptrtoint ptr %app.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %app.i, align 4
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 8
  %cmp23.not.i = icmp eq ptr %16, %18
  br i1 %cmp23.not.i, label %if.end25.i, label %if.end20.i.for.end.i_crit_edge

if.end20.i.for.end.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

if.end25.i:                                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #12
  %inc.i = add i32 %slave_count.0162.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end25.i, %for.body.i.for.inc.i_crit_edge
  %slave_count.1.i = phi i32 [ %inc.i, %if.end25.i ], [ %slave_count.0162.i, %for.body.i.for.inc.i_crit_edge ]
  %19 = ptrtoint ptr %.pn163.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i = load volatile ptr, ptr %.pn163.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end20.i.for.end.i_crit_edge, %if.then17.i.for.end.i_crit_edge, %do.end.i.for.end.i_crit_edge
  %slave_count.0.lcssa.i = phi i32 [ 0, %do.end.i.for.end.i_crit_edge ], [ %slave_count.1.i, %for.inc.i.for.end.i_crit_edge ], [ %slave_count.0162.i, %if.then17.i.for.end.i_crit_edge ], [ %slave_count.0162.i, %if.end20.i.for.end.i_crit_edge ]
  %cmp.not.lcssa.i = phi i1 [ true, %do.end.i.for.end.i_crit_edge ], [ true, %for.inc.i.for.end.i_crit_edge ], [ false, %if.then17.i.for.end.i_crit_edge ], [ false, %if.end20.i.for.end.i_crit_edge ]
  %call.i136.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i136.i, label %for.end.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i139.i

for.end.i.rcu_read_unlock.exit.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true.i139.i:                             ; preds = %for.end.i
  %call1.i137.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i137.i)
  %tobool.not.i138.i = icmp eq i32 %call1.i137.i, 0
  br i1 %tobool.not.i138.i, label %land.lhs.true.i139.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i141.i

land.lhs.true.i139.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i139.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i141.i:                            ; preds = %land.lhs.true.i139.i
  %.b4.i140.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i140.i, label %land.lhs.true2.i141.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i142.i

land.lhs.true2.i141.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i141.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit.i

if.then.i142.i:                                   ; preds = %land.lhs.true2.i141.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #10
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i142.i, %land.lhs.true2.i141.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i139.i.rcu_read_unlock.exit.i_crit_edge, %for.end.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %20 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i143.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i143.i to ptr
  %preempt_count.i.i.i.i144.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i.i.i144.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i.i.i144.i, align 4
  %sub.i.i.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i144.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %upper_info.i = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 4
  %24 = ptrtoint ptr %upper_info.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %upper_info.i, align 4
  %tobool35.not.i = icmp eq ptr %25, null
  br i1 %tobool35.not.i, label %rcu_read_unlock.exit.i.if.end63.i_crit_edge, label %land.lhs.true36.i

rcu_read_unlock.exit.i.if.end63.i_crit_edge:      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

land.lhs.true36.i:                                ; preds = %rcu_read_unlock.exit.i
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %27, label %land.lhs.true36.i.if.then48.i_crit_edge [
    i32 4, label %land.lhs.true36.i.if.end63.i_crit_edge
    i32 5, label %lor.lhs.false.i
  ]

land.lhs.true36.i.if.end63.i_crit_edge:           ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

land.lhs.true36.i.if.then48.i_crit_edge:          ; preds = %land.lhs.true36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true36.i
  %hash_type.i = getelementptr inbounds %struct.netdev_lag_upper_info, ptr %25, i32 0, i32 1
  %29 = ptrtoint ptr %hash_type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hash_type.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %30, label %lor.lhs.false.i.if.then48.i_crit_edge [
    i32 2, label %lor.lhs.false.i.if.end63.i_crit_edge
    i32 5, label %lor.lhs.false.i.if.end63.i_crit_edge62
    i32 7, label %lor.lhs.false.i.if.end63.i_crit_edge63
  ]

lor.lhs.false.i.if.end63.i_crit_edge63:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

lor.lhs.false.i.if.end63.i_crit_edge62:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

lor.lhs.false.i.if.end63.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

lor.lhs.false.i.if.then48.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then48.i

if.then48.i:                                      ; preds = %lor.lhs.false.i.if.then48.i_crit_edge, %land.lhs.true36.i.if.then48.i_crit_edge
  %call50.i = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.then48.i.if.end63.i_crit_edge, label %do.end55.i

if.then48.i.if.end63.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63.i

do.end55.i:                                       ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %priv, align 8
  %cpp.i = getelementptr inbounds %struct.nfp_app, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %cpp.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cpp.i, align 4
  %call57.i = tail call ptr @nfp_cpp_device(ptr noundef %35) #10
  %parent.i = getelementptr inbounds %struct.device, ptr %call57.i, i32 0, i32 1
  %36 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %parent.i, align 8
  %38 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %25, align 4
  %hash_type59.i = getelementptr inbounds %struct.netdev_lag_upper_info, ptr %25, i32 0, i32 1
  %40 = ptrtoint ptr %hash_type59.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hash_type59.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %37, ptr noundef nonnull @.str.11, i32 noundef %39, i32 noundef %41) #13
  br label %if.end63.i

if.end63.i:                                       ; preds = %do.end55.i, %if.then48.i.if.end63.i_crit_edge, %lor.lhs.false.i.if.end63.i_crit_edge, %lor.lhs.false.i.if.end63.i_crit_edge62, %lor.lhs.false.i.if.end63.i_crit_edge63, %land.lhs.true36.i.if.end63.i_crit_edge, %rcu_read_unlock.exit.i.if.end63.i_crit_edge
  %can_offload.1.off0.i = phi i1 [ false, %do.end55.i ], [ false, %if.then48.i.if.end63.i_crit_edge ], [ %cmp.not.lcssa.i, %lor.lhs.false.i.if.end63.i_crit_edge ], [ %cmp.not.lcssa.i, %land.lhs.true36.i.if.end63.i_crit_edge ], [ %cmp.not.lcssa.i, %rcu_read_unlock.exit.i.if.end63.i_crit_edge ], [ %cmp.not.lcssa.i, %lor.lhs.false.i.if.end63.i_crit_edge62 ], [ %cmp.not.lcssa.i, %lor.lhs.false.i.if.end63.i_crit_edge63 ]
  %lock.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 21, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #10
  %tobool.not.i145.i = icmp eq ptr %2, null
  br i1 %tobool.not.i145.i, label %if.end63.i.nfp_fl_lag_find_group_for_master_with_lag.exit.i_crit_edge, label %if.end.i.i

if.end63.i.nfp_fl_lag_find_group_for_master_with_lag.exit.i_crit_edge: ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfp_fl_lag_find_group_for_master_with_lag.exit.i

if.end.i.i:                                       ; preds = %if.end63.i
  %group_list.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 21, i32 2
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %if.end.i.i
  %.pn.in.i.i = phi ptr [ %group_list.i.i, %if.end.i.i ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %42 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %group_list.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.nfp_fl_lag_find_group_for_master_with_lag.exit.i_crit_edge, label %for.body.i.i

for.cond.i.i.nfp_fl_lag_find_group_for_master_with_lag.exit.i_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfp_fl_lag_find_group_for_master_with_lag.exit.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %master_ndev.i.i = getelementptr i8, ptr %.pn.i.i, i32 8
  %43 = ptrtoint ptr %master_ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %master_ndev.i.i, align 4
  %cmp3.i.i = icmp eq ptr %44, %2
  br i1 %cmp3.i.i, label %cleanup.loopexit.split.loop.exit.i.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i

cleanup.loopexit.split.loop.exit.i.i:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %entry1.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -8
  br label %nfp_fl_lag_find_group_for_master_with_lag.exit.i

nfp_fl_lag_find_group_for_master_with_lag.exit.i: ; preds = %cleanup.loopexit.split.loop.exit.i.i, %for.cond.i.i.nfp_fl_lag_find_group_for_master_with_lag.exit.i_crit_edge, %if.end63.i.nfp_fl_lag_find_group_for_master_with_lag.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ null, %if.end63.i.nfp_fl_lag_find_group_for_master_with_lag.exit.i_crit_edge ], [ %entry1.0.le.i.i, %cleanup.loopexit.split.loop.exit.i.i ], [ null, %for.cond.i.i.nfp_fl_lag_find_group_for_master_with_lag.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %slave_count.0.lcssa.i)
  %cmp65.i = icmp ne i32 %slave_count.0.lcssa.i, 0
  %45 = and i1 %cmp65.i, %can_offload.1.off0.i
  %tobool76.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %45, label %if.end75.i, label %if.then68.i

if.then68.i:                                      ; preds = %nfp_fl_lag_find_group_for_master_with_lag.exit.i
  br i1 %tobool76.not.i, label %if.then68.i.if.end73.i_crit_edge, label %land.lhs.true70.i

if.then68.i.if.end73.i_crit_edge:                 ; preds = %if.then68.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.i

land.lhs.true70.i:                                ; preds = %if.then68.i
  %offloaded.i = getelementptr inbounds %struct.nfp_fl_lag_group, ptr %retval.0.i.i, i32 0, i32 5
  %46 = ptrtoint ptr %offloaded.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %offloaded.i, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool71.not.i = icmp eq i8 %47, 0
  br i1 %tobool71.not.i, label %land.lhs.true70.i.if.end73.i_crit_edge, label %if.then72.i

land.lhs.true70.i.if.end73.i_crit_edge:           ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73.i

if.then72.i:                                      ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #12
  %to_remove.i.i = getelementptr inbounds %struct.nfp_fl_lag_group, ptr %retval.0.i.i, i32 0, i32 6
  %48 = ptrtoint ptr %to_remove.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %to_remove.i.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %49 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %49, ptr noundef %nfp_lag, i32 noundef 1) #10
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.then72.i, %land.lhs.true70.i.if.end73.i_crit_edge, %if.then68.i.if.end73.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  br label %cleanup

if.end75.i:                                       ; preds = %nfp_fl_lag_find_group_for_master_with_lag.exit.i
  br i1 %tobool76.not.i, label %if.then77.i, label %if.end75.i.if.end84.i_crit_edge

if.end75.i.if.end84.i_crit_edge:                  ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84.i

if.then77.i:                                      ; preds = %if.end75.i
  %ida_handle.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 21, i32 3
  %call.i147.i = tail call i32 @ida_alloc_range(ptr noundef %ida_handle.i.i, i32 noundef 1, i32 noundef 31, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i147.i)
  %cmp.i148.i = icmp slt i32 %call.i147.i, 0
  br i1 %cmp.i148.i, label %do.body.i.i, label %if.end8.i.i

do.body.i.i:                                      ; preds = %if.then77.i
  %call1.i149.i = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i149.i)
  %tobool.not.i150.i = icmp eq i32 %call1.i149.i, 0
  br i1 %tobool.not.i150.i, label %do.body.i.i.do.end6.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.end6.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %priv, align 8
  %cpp.i.i = getelementptr inbounds %struct.nfp_app, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %cpp.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %cpp.i.i, align 4
  %call4.i.i = tail call ptr @nfp_cpp_device(ptr noundef %53) #10
  %parent.i.i = getelementptr inbounds %struct.device, ptr %call4.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %parent.i.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %55, ptr noundef nonnull @.str.16) #13
  br label %do.end6.i.i

do.end6.i.i:                                      ; preds = %do.end.i.i, %do.body.i.i.do.end6.i.i_crit_edge
  %56 = inttoptr i32 %call.i147.i to ptr
  br label %nfp_fl_lag_group_create.exit.i

if.end8.i.i:                                      ; preds = %if.then77.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3264, i32 noundef 28) #14
  %tobool10.not.i.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool10.not.i.i, label %nfp_fl_lag_group_create.exit.thread.i, label %if.end14.i.i

nfp_fl_lag_group_create.exit.thread.i:            ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @ida_free(ptr noundef %ida_handle.i.i, i32 noundef %call.i147.i) #10
  br label %nfp_fl_lag_changeupper_event.exit

if.end14.i.i:                                     ; preds = %if.end8.i.i
  %58 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call.i147.i, ptr %call7.i.i.i, align 8
  %master_ndev.i151.i = getelementptr inbounds %struct.nfp_fl_lag_group, ptr %call7.i.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %master_ndev.i151.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %2, ptr %master_ndev.i151.i, align 8
  %dirty.i.i = getelementptr inbounds %struct.nfp_fl_lag_group, ptr %call7.i.i.i, i32 0, i32 4
  %60 = ptrtoint ptr %dirty.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 1, ptr %dirty.i.i, align 4
  %offloaded.i.i = getelementptr inbounds %struct.nfp_fl_lag_group, ptr %call7.i.i.i, i32 0, i32 5
  %global_inst.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 21, i32 6
  %61 = call ptr @memset(ptr %offloaded.i.i, i32 0, i32 7)
  %62 = ptrtoint ptr %global_inst.i.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %global_inst.i.i, align 4
  %inc.i.i = add i8 %63, 1
  store i8 %inc.i.i, ptr %global_inst.i.i, align 4
  %group_inst.i.i = getelementptr inbounds %struct.nfp_fl_lag_group, ptr %call7.i.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %group_inst.i.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %inc.i.i, ptr %group_inst.i.i, align 4
  %list.i.i = getelementptr inbounds %struct.nfp_fl_lag_group, ptr %call7.i.i.i, i32 0, i32 2
  %group_list.i152.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 21, i32 2
  %prev.i.i.i = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 21, i32 2, i32 1
  %65 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i153.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i.i, ptr noundef %66, ptr noundef %group_list.i152.i) #10
  br i1 %call.i.i.i153.i, label %if.end.i.i.i.i, label %if.end14.i.i.nfp_fl_lag_group_create.exit.i_crit_edge

if.end14.i.i.nfp_fl_lag_group_create.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfp_fl_lag_group_create.exit.i

if.end.i.i.i.i:                                   ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %list.i.i, ptr %prev.i.i.i, align 4
  %68 = ptrtoint ptr %list.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %group_list.i152.i, ptr %list.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.nfp_fl_lag_group, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %69 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %list.i.i, ptr %66, align 4
  br label %nfp_fl_lag_group_create.exit.i

nfp_fl_lag_group_create.exit.i:                   ; preds = %if.end.i.i.i.i, %if.end14.i.i.nfp_fl_lag_group_create.exit.i_crit_edge, %do.end6.i.i
  %retval.0.i154.i = phi ptr [ %56, %do.end6.i.i ], [ %call7.i.i.i, %if.end14.i.i.nfp_fl_lag_group_create.exit.i_crit_edge ], [ %call7.i.i.i, %if.end.i.i.i.i ]
  %cmp.i155.i = icmp ugt ptr %retval.0.i154.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155.i, label %nfp_fl_lag_group_create.exit.i.nfp_fl_lag_changeupper_event.exit_crit_edge, label %nfp_fl_lag_group_create.exit.i.if.end84.i_crit_edge

nfp_fl_lag_group_create.exit.i.if.end84.i_crit_edge: ; preds = %nfp_fl_lag_group_create.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84.i

nfp_fl_lag_group_create.exit.i.nfp_fl_lag_changeupper_event.exit_crit_edge: ; preds = %nfp_fl_lag_group_create.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nfp_fl_lag_changeupper_event.exit

if.end84.i:                                       ; preds = %nfp_fl_lag_group_create.exit.i.if.end84.i_crit_edge, %if.end75.i.if.end84.i_crit_edge
  %group.0.i = phi ptr [ %retval.0.i.i, %if.end75.i.if.end84.i_crit_edge ], [ %retval.0.i154.i, %nfp_fl_lag_group_create.exit.i.if.end84.i_crit_edge ]
  %dirty.i = getelementptr inbounds %struct.nfp_fl_lag_group, ptr %group.0.i, i32 0, i32 4
  %71 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 1, ptr %dirty.i, align 4
  %slave_cnt.i = getelementptr inbounds %struct.nfp_fl_lag_group, ptr %group.0.i, i32 0, i32 8
  %72 = ptrtoint ptr %slave_cnt.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %slave_count.0.lcssa.i, ptr %slave_cnt.i, align 4
  %to_remove.i = getelementptr inbounds %struct.nfp_fl_lag_group, ptr %group.0.i, i32 0, i32 6
  %73 = ptrtoint ptr %to_remove.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %to_remove.i, align 2
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %74 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %74, ptr noundef %nfp_lag, i32 noundef 1) #10
  br label %cleanup

nfp_fl_lag_changeupper_event.exit:                ; preds = %nfp_fl_lag_group_create.exit.i.nfp_fl_lag_changeupper_event.exit_crit_edge, %nfp_fl_lag_group_create.exit.thread.i
  tail call void @mutex_unlock(ptr noundef %lock.i) #10
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %flags.i.i.i8 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %75 = ptrtoint ptr %flags.i.i.i8 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags.i.i.i8, align 8
  %and.i.i.i9 = and i32 %76, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i9)
  %tobool.not.i.i.i10 = icmp eq i32 %and.i.i.i9, 0
  br i1 %tobool.not.i.i.i10, label %sw.bb1.netif_is_lag_port.exit.i_crit_edge, label %netif_is_bond_slave.exit.i.i

sw.bb1.netif_is_lag_port.exit.i_crit_edge:        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_is_lag_port.exit.i

netif_is_bond_slave.exit.i.i:                     ; preds = %sw.bb1
  %priv_flags.i.i.i11 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 15
  %77 = ptrtoint ptr %priv_flags.i.i.i11 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %priv_flags.i.i.i11, align 16
  %and1.i.i.i12 = and i64 %78, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i.i12)
  %tobool2.i.not.i.i13 = icmp eq i64 %and1.i.i.i12, 0
  br i1 %tobool2.i.not.i.i13, label %netif_is_bond_slave.exit.i.i.netif_is_lag_port.exit.i_crit_edge, label %netif_is_bond_slave.exit.i.i.lor.lhs.false.i19_crit_edge

netif_is_bond_slave.exit.i.i.lor.lhs.false.i19_crit_edge: ; preds = %netif_is_bond_slave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i19

netif_is_bond_slave.exit.i.i.netif_is_lag_port.exit.i_crit_edge: ; preds = %netif_is_bond_slave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netif_is_lag_port.exit.i

netif_is_lag_port.exit.i:                         ; preds = %netif_is_bond_slave.exit.i.i.netif_is_lag_port.exit.i_crit_edge, %sw.bb1.netif_is_lag_port.exit.i_crit_edge
  %priv_flags.i3.i.i14 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 15
  %79 = ptrtoint ptr %priv_flags.i3.i.i14 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %priv_flags.i3.i.i14, align 16
  %and.i4.i.i15 = and i64 %80, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i4.i.i15)
  %tobool.i.i.not.i16 = icmp eq i64 %and.i4.i.i15, 0
  br i1 %tobool.i.i.not.i16, label %netif_is_lag_port.exit.i.cleanup_crit_edge, label %netif_is_lag_port.exit.i.lor.lhs.false.i19_crit_edge

netif_is_lag_port.exit.i.lor.lhs.false.i19_crit_edge: ; preds = %netif_is_lag_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false.i19

netif_is_lag_port.exit.i.cleanup_crit_edge:       ; preds = %netif_is_lag_port.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false.i19:                                ; preds = %netif_is_lag_port.exit.i.lor.lhs.false.i19_crit_edge, %netif_is_bond_slave.exit.i.i.lor.lhs.false.i19_crit_edge
  %netdev_ops.i.i17 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %81 = ptrtoint ptr %netdev_ops.i.i17 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %netdev_ops.i.i17, align 8
  %cmp.i.i18 = icmp eq ptr %82, @nfp_repr_netdev_ops
  br i1 %cmp.i.i18, label %if.end.i21, label %lor.lhs.false.i19.cleanup_crit_edge

lor.lhs.false.i19.cleanup_crit_edge:              ; preds = %lor.lhs.false.i19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i21:                                       ; preds = %lor.lhs.false.i19
  %lower_state_info.i = getelementptr inbounds %struct.netdev_notifier_changelowerstate_info, ptr %ptr, i32 0, i32 1
  %83 = ptrtoint ptr %lower_state_info.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %lower_state_info.i, align 4
  %tobool.not.i20 = icmp eq ptr %84, null
  br i1 %tobool.not.i20, label %if.end.i21.cleanup_crit_edge, label %if.end3.i

if.end.i21.cleanup_crit_edge:                     ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i21
  %app.i23 = getelementptr i8, ptr %netdev, i32 2316
  %85 = ptrtoint ptr %app.i23 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %app.i23, align 4
  %87 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %priv, align 8
  %cmp.not.i24 = icmp eq ptr %86, %88
  br i1 %cmp.not.i24, label %if.end7.i, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %app_priv.i = getelementptr i8, ptr %netdev, i32 2324
  %89 = ptrtoint ptr %app_priv.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %app_priv.i, align 4
  %lag_port_flags.i = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %90, i32 0, i32 1
  %lock.i25 = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 21, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i25, i32 noundef 0) #10
  %91 = ptrtoint ptr %84 to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load.i = load i8, ptr %84, align 1
  %92 = ptrtoint ptr %lag_port_flags.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %lag_port_flags.i, align 4
  %and.i = and i32 %93, -2
  %bf.load.lobit.i = lshr i8 %bf.load.i, 7
  %94 = zext i8 %bf.load.lobit.i to i32
  %storemerge.i = or i32 %and.i, %94
  store i32 %storemerge.i, ptr %lag_port_flags.i, align 4
  %bf.load11.i = load i8, ptr %84, align 1
  %and17.i = and i32 %storemerge.i, -7
  %95 = lshr i8 %bf.load11.i, 5
  %96 = and i8 %95, 2
  %97 = zext i8 %96 to i32
  %storemerge39.i = or i32 %and17.i, %97
  %or19.i = or i32 %storemerge39.i, 4
  store i32 %or19.i, ptr %lag_port_flags.i, align 4
  tail call void @mutex_unlock(ptr noundef %lock.i25) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %98 = load ptr, ptr @system_wq, align 4
  %call.i.i.i26 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %98, ptr noundef %nfp_lag, i32 noundef 1) #10
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 14
  %99 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %100, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i28 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i28, label %sw.bb2.cleanup_crit_edge, label %netif_is_bond_master.exit.i

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

netif_is_bond_master.exit.i:                      ; preds = %sw.bb2
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 15
  %101 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %102, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_master.exit.i.cleanup_crit_edge, label %if.end.i30

netif_is_bond_master.exit.i.cleanup_crit_edge:    ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i30:                                       ; preds = %netif_is_bond_master.exit.i
  %lock.i29 = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 21, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock.i29, i32 noundef 0) #10
  %tobool.not.i20.i = icmp eq ptr %netdev, null
  br i1 %tobool.not.i20.i, label %if.end.i30.if.then2.i_crit_edge, label %if.end.i.i32

if.end.i30.if.then2.i_crit_edge:                  ; preds = %if.end.i30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2.i

if.end.i.i32:                                     ; preds = %if.end.i30
  %group_list.i.i31 = getelementptr inbounds %struct.nfp_flower_priv, ptr %priv, i32 0, i32 21, i32 2
  br label %for.cond.i.i36

for.cond.i.i36:                                   ; preds = %for.body.i.i39.for.cond.i.i36_crit_edge, %if.end.i.i32
  %.pn.in.i.i33 = phi ptr [ %group_list.i.i31, %if.end.i.i32 ], [ %.pn.i.i34, %for.body.i.i39.for.cond.i.i36_crit_edge ]
  %103 = ptrtoint ptr %.pn.in.i.i33 to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pn.i.i34 = load ptr, ptr %.pn.in.i.i33, align 4
  %cmp.not.i.i35 = icmp eq ptr %.pn.i.i34, %group_list.i.i31
  br i1 %cmp.not.i.i35, label %for.cond.i.i36.if.then2.i_crit_edge, label %for.body.i.i39

for.cond.i.i36.if.then2.i_crit_edge:              ; preds = %for.cond.i.i36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2.i

for.body.i.i39:                                   ; preds = %for.cond.i.i36
  %master_ndev.i.i37 = getelementptr i8, ptr %.pn.i.i34, i32 8
  %104 = ptrtoint ptr %master_ndev.i.i37 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %master_ndev.i.i37, align 4
  %cmp3.i.i38 = icmp eq ptr %105, %netdev
  br i1 %cmp3.i.i38, label %nfp_fl_lag_find_group_for_master_with_lag.exit.i42, label %for.body.i.i39.for.cond.i.i36_crit_edge

for.body.i.i39.for.cond.i.i36_crit_edge:          ; preds = %for.body.i.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i.i36

nfp_fl_lag_find_group_for_master_with_lag.exit.i42: ; preds = %for.body.i.i39
  %entry1.0.le.i.i40 = getelementptr i8, ptr %.pn.i.i34, i32 -8
  %tobool.not.i41 = icmp eq ptr %entry1.0.le.i.i40, null
  br i1 %tobool.not.i41, label %nfp_fl_lag_find_group_for_master_with_lag.exit.i42.if.then2.i_crit_edge, label %if.end6.i

nfp_fl_lag_find_group_for_master_with_lag.exit.i42.if.then2.i_crit_edge: ; preds = %nfp_fl_lag_find_group_for_master_with_lag.exit.i42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then2.i

if.then2.i:                                       ; preds = %nfp_fl_lag_find_group_for_master_with_lag.exit.i42.if.then2.i_crit_edge, %for.cond.i.i36.if.then2.i_crit_edge, %if.end.i30.if.then2.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock.i29) #10
  %106 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %priv, align 8
  %cpp.i43 = getelementptr inbounds %struct.nfp_app, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %cpp.i43 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cpp.i43, align 4
  %call4.i = tail call ptr @nfp_cpp_device(ptr noundef %109) #10
  %parent.i44 = getelementptr inbounds %struct.device, ptr %call4.i, i32 0, i32 1
  %110 = ptrtoint ptr %parent.i44 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %parent.i44, align 8
  %112 = ptrtoint ptr %netdev to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %netdev, align 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i21.i = icmp eq i8 %113, 0
  br i1 %tobool.not.i21.i, label %if.then2.i.netdev_name.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then2.i.netdev_name.exit.i_crit_edge:          ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %netdev_name.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i45 = tail call ptr @strchr(ptr noundef %netdev, i32 noundef 37) #10
  %tobool2.not.i.i = icmp eq ptr %call.i.i45, null
  %spec.select.i.i = select i1 %tobool2.not.i.i, ptr %netdev, ptr @.str.20
  br label %netdev_name.exit.i

netdev_name.exit.i:                               ; preds = %lor.lhs.false.i.i, %if.then2.i.netdev_name.exit.i_crit_edge
  %retval.0.i22.i = phi ptr [ @.str.20, %if.then2.i.netdev_name.exit.i_crit_edge ], [ %spec.select.i.i, %lor.lhs.false.i.i ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %111, ptr noundef nonnull @.str.18, ptr noundef %retval.0.i22.i) #13
  br label %cleanup

if.end6.i:                                        ; preds = %nfp_fl_lag_find_group_for_master_with_lag.exit.i42
  call void @__sanitizer_cov_trace_pc() #12
  %to_remove.i46 = getelementptr i8, ptr %.pn.i.i34, i32 14
  %114 = ptrtoint ptr %to_remove.i46 to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %to_remove.i46, align 2
  %to_destroy.i = getelementptr i8, ptr %.pn.i.i34, i32 15
  %115 = ptrtoint ptr %to_destroy.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 1, ptr %to_destroy.i, align 1
  tail call void @mutex_unlock(ptr noundef %lock.i29) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %116 = load ptr, ptr @system_wq, align 4
  %call.i.i.i47 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %116, ptr noundef %nfp_lag, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i, %netdev_name.exit.i, %netif_is_bond_master.exit.i.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %if.end7.i, %if.end3.i.cleanup_crit_edge, %if.end.i21.cleanup_crit_edge, %lor.lhs.false.i19.cleanup_crit_edge, %netif_is_lag_port.exit.i.cleanup_crit_edge, %nfp_fl_lag_changeupper_event.exit, %if.end84.i, %if.end73.i, %netif_is_lag_master.exit.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 32770, %nfp_fl_lag_changeupper_event.exit ], [ 1, %netif_is_lag_port.exit.i.cleanup_crit_edge ], [ 1, %lor.lhs.false.i19.cleanup_crit_edge ], [ 1, %if.end.i21.cleanup_crit_edge ], [ 1, %if.end3.i.cleanup_crit_edge ], [ 1, %if.end7.i ], [ 1, %sw.bb2.cleanup_crit_edge ], [ 1, %netif_is_bond_master.exit.i.cleanup_crit_edge ], [ 1, %netdev_name.exit.i ], [ 1, %if.end6.i ], [ 1, %netif_is_lag_master.exit.i.cleanup_crit_edge ], [ 1, %if.end84.i ], [ 1, %if.end73.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nfp_fl_lag_config_group(ptr nocapture noundef %lag, ptr nocapture noundef readonly %group, ptr nocapture noundef readonly %active_members, i32 noundef %member_cnt, ptr nocapture noundef %batch) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %lag, i32 -5596
  %mul = shl i32 %member_cnt, 2
  %add = add i32 %mul, 20
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 8
  %call = tail call ptr @nfp_flower_cmsg_alloc(ptr noundef %1, i32 noundef %add, i32 noundef 4, i32 noundef 3264) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 19
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %batch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %batch_ver.i = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 5
  %6 = ptrtoint ptr %batch_ver.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %batch_ver.i, align 4
  %add.i = add i32 %7, 2
  %and.i = and i32 %add.i, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 2, i32 %and.i
  %8 = ptrtoint ptr %batch_ver.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %spec.select.i, ptr %batch_ver.i, align 4
  %9 = ptrtoint ptr %batch to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %batch, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge
  %flags.0 = phi i32 [ 4, %if.then2 ], [ 0, %if.end.if.end3_crit_edge ]
  %rst_cfg = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 7
  %10 = ptrtoint ptr %rst_cfg to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rst_cfg, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool4.not = icmp eq i8 %11, 0
  br i1 %tobool4.not, label %if.end7, label %if.end7.thread

if.end7.thread:                                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %or6 = or i32 %flags.0, 128
  %12 = ptrtoint ptr %batch to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %batch, align 4
  br label %if.then9

if.end7:                                          ; preds = %if.end3
  %13 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pr = load i32, ptr %batch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.pr)
  %cmp8 = icmp eq i32 %.pr, 2
  br i1 %cmp8, label %if.end7.if.then9_crit_edge, label %if.else

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9

if.then9:                                         ; preds = %if.end7.if.then9_crit_edge, %if.end7.thread
  %flags.166 = phi i32 [ %or6, %if.end7.thread ], [ %flags.0, %if.end7.if.then9_crit_edge ]
  %or10 = or i32 %flags.166, 66
  %14 = ptrtoint ptr %rst_cfg to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %rst_cfg, align 1
  %group_id = getelementptr i8, ptr %3, i32 16
  %15 = ptrtoint ptr %group_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %group_id, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %group, align 4
  %group_id13 = getelementptr i8, ptr %3, i32 16
  %18 = ptrtoint ptr %group_id13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %group_id13, align 4
  %group_inst14 = getelementptr inbounds %struct.nfp_fl_lag_group, ptr %group, i32 0, i32 1
  %19 = ptrtoint ptr %group_inst14 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %group_inst14, align 4
  %conv = zext i8 %20 to i32
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then9
  %conv.sink = phi i32 [ %conv, %if.else ], [ 0, %if.then9 ]
  %flags.2 = phi i32 [ %flags.0, %if.else ], [ %or10, %if.then9 ]
  %group_inst15 = getelementptr i8, ptr %3, i32 20
  %21 = ptrtoint ptr %group_inst15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.sink, ptr %group_inst15, align 4
  %reserved = getelementptr i8, ptr %3, i32 5
  %22 = ptrtoint ptr %reserved to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %reserved, align 1
  %arrayidx18 = getelementptr i8, ptr %3, i32 6
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx18, align 1
  %ttl = getelementptr i8, ptr %3, i32 7
  %24 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -1, ptr %ttl, align 1
  %conv19 = trunc i32 %flags.2 to i8
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv19, ptr %add.ptr.i, align 4
  %batch_ver = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 5
  %26 = ptrtoint ptr %batch_ver to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %batch_ver, align 4
  %batch_ver20 = getelementptr i8, ptr %3, i32 12
  %28 = ptrtoint ptr %batch_ver20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %batch_ver20, align 4
  %pkt_num.i = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 4
  %29 = ptrtoint ptr %pkt_num.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pkt_num.i, align 4
  %inc.i = add i32 %30, 1
  %and.i63 = and i32 %inc.i, 2147483647
  store i32 %and.i63, ptr %pkt_num.i, align 4
  %pkt_number = getelementptr i8, ptr %3, i32 8
  %31 = ptrtoint ptr %pkt_number to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and.i63, ptr %pkt_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %member_cnt)
  %cmp2267.not = icmp eq i32 %member_cnt, 0
  br i1 %cmp2267.not, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end16.for.body_crit_edge
  %i.068 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end16.for.body_crit_edge ]
  %arrayidx24 = getelementptr ptr, ptr %active_members, i32 %i.068
  %32 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx24, align 4
  %dst.i = getelementptr i8, ptr %33, i32 2308
  %34 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dst.i, align 4
  %u.i = getelementptr inbounds %struct.metadata_dst, ptr %35, i32 0, i32 2
  %port_id.i = getelementptr inbounds %struct.hw_port_info, ptr %u.i, i32 0, i32 1
  %36 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port_id.i, align 4
  %arrayidx26 = getelementptr %struct.nfp_flower_cmsg_lag_config, ptr %add.ptr.i, i32 0, i32 7, i32 %i.068
  %38 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %arrayidx26, align 4
  %inc = add nuw i32 %i.068, 1
  %exitcond.not = icmp eq i32 %inc, %member_cnt
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end16.for.end_crit_edge
  %39 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr, align 8
  %ctrl = getelementptr inbounds %struct.nfp_app, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctrl, align 4
  %call28 = tail call zeroext i1 @nfp_ctrl_tx(ptr noundef %42, ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_lag_init(ptr noundef %lag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__init_work(ptr noundef %lag, i32 noundef 0) #10
  %0 = ptrtoint ptr %lag to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %lag, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %lag, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @nfp_flower_lag_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #10
  %entry9 = getelementptr inbounds %struct.work_struct, ptr %lag, i32 0, i32 1
  %1 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %lag, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry9, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %lag, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @nfp_fl_lag_do_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.delayed_work, ptr %lag, i32 0, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.7, ptr noundef nonnull @nfp_flower_lag_init.__key.6) #10
  %group_list = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 2
  %4 = ptrtoint ptr %group_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %group_list, ptr %group_list, align 4
  %prev.i28 = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 2, i32 1
  %5 = ptrtoint ptr %prev.i28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %group_list, ptr %prev.i28, align 4
  %lock = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @nfp_flower_lag_init.__key.8) #10
  %ida_handle = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %ida_handle, ptr noundef nonnull @.str.29, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i.i = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 3, i32 0, i32 1
  %6 = ptrtoint ptr %xa_flags.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 67108869, ptr %xa_flags.i.i, align 4
  %xa_head.i.i = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 3, i32 0, i32 2
  %7 = ptrtoint ptr %xa_head.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %xa_head.i.i, align 4
  %retrans_skbs = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 8
  %8 = ptrtoint ptr %retrans_skbs to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %retrans_skbs, ptr %retrans_skbs, align 4
  %prev.i29 = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 8, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i29 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retrans_skbs, ptr %prev.i29, align 4
  %qlen.i = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 8, i32 1
  %10 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %qlen.i, align 4
  %batch_ver.i = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 5
  %11 = ptrtoint ptr %batch_ver.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %batch_ver.i, align 4
  %add.i = add i32 %12, 2
  %and.i = and i32 %add.i, 8388607
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %spec.select.i = select i1 %tobool.not.i, i32 2, i32 %and.i
  %13 = ptrtoint ptr %batch_ver.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select.i, ptr %batch_ver.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nfp_fl_lag_do_work(ptr noundef %work) #0 align 64 {
entry:
  %batch = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %batch) #10
  %0 = ptrtoint ptr %batch to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %batch, align 4
  %add.ptr4 = getelementptr i8, ptr %work, i32 -5596
  %lock = getelementptr inbounds %struct.nfp_fl_lag, ptr %work, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %group_list = getelementptr inbounds %struct.nfp_fl_lag, ptr %work, i32 0, i32 2
  %1 = ptrtoint ptr %group_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %group_list, align 4
  %cmp.not239 = icmp eq ptr %2, %group_list
  br i1 %cmp.not239, label %entry.for.end136_crit_edge, label %for.body.lr.ph

entry.for.end136_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end136

for.body.lr.ph:                                   ; preds = %entry
  %ida_handle = getelementptr inbounds %struct.nfp_fl_lag, ptr %work, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn.in240 = phi ptr [ %2, %for.body.lr.ph ], [ %.pn244, %cleanup.for.body_crit_edge ]
  %entry1.0243 = getelementptr i8, ptr %.pn.in240, i32 -8
  %3 = ptrtoint ptr %.pn.in240 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn244 = load ptr, ptr %.pn.in240, align 4
  %to_remove = getelementptr i8, ptr %.pn.in240, i32 14
  %4 = ptrtoint ptr %to_remove to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %to_remove, align 2, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end33, label %if.then

if.then:                                          ; preds = %for.body
  %call14 = call fastcc i32 @nfp_fl_lag_config_group(ptr noundef %work, ptr noundef %entry1.0243, ptr noundef null, i32 noundef 0, ptr noundef nonnull %batch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %do.body

if.then16:                                        ; preds = %if.then
  %6 = ptrtoint ptr %to_remove to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %to_remove, align 2
  %offloaded = getelementptr i8, ptr %.pn.in240, i32 13
  %7 = ptrtoint ptr %offloaded to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %offloaded, align 1
  %to_destroy = getelementptr i8, ptr %.pn.in240, i32 15
  %8 = ptrtoint ptr %to_destroy to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %to_destroy, align 1, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool29.not = icmp eq i8 %9, 0
  br i1 %tobool29.not, label %if.then16.cleanup_crit_edge, label %if.then30

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.then
  %call18 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %do.body.do.end24_crit_edge, label %do.end

do.body.do.end24_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr4, align 8
  %cpp = getelementptr inbounds %struct.nfp_app, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpp, align 4
  %call22 = tail call ptr @nfp_cpp_device(ptr noundef %13) #10
  %parent = getelementptr inbounds %struct.device, ptr %call22, i32 0, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.21) #13
  br label %do.end24

do.end24:                                         ; preds = %do.end, %do.body.do.end24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %work, i32 noundef 1) #10
  br label %cleanup

if.then30:                                        ; preds = %if.then16
  %17 = ptrtoint ptr %entry1.0243 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %entry1.0243, align 4
  tail call void @ida_free(ptr noundef %ida_handle, i32 noundef %18) #10
  %call.i.i211 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in240) #10
  br i1 %call.i.i211, label %if.end.i.i, label %if.then30.list_del.exit_crit_edge

if.then30.list_del.exit_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in240, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %.pn.in240 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn.in240, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then30.list_del.exit_crit_edge
  %25 = ptrtoint ptr %.pn.in240 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in240, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in240, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %entry1.0243) #10
  br label %cleanup

if.end33:                                         ; preds = %for.body
  %slave_cnt = getelementptr i8, ptr %.pn.in240, i32 16
  %27 = ptrtoint ptr %slave_cnt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %slave_cnt, align 4
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 4) #10
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %if.end33.kmalloc_array.exit_crit_edge, label %if.end7.i, !prof !76

if.end33.kmalloc_array.exit_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %kmalloc_array.exit

if.end7.i:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  %31 = extractvalue { i32, i1 } %29, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %31, i32 noundef 3264) #15
  br label %kmalloc_array.exit

kmalloc_array.exit:                               ; preds = %if.end7.i, %if.end33.kmalloc_array.exit_crit_edge
  %retval.0.i = phi ptr [ %call8.i, %if.end7.i ], [ null, %if.end33.kmalloc_array.exit_crit_edge ]
  %32 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %35, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %kmalloc_array.exit.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

kmalloc_array.exit.rcu_read_lock.exit_crit_edge:  ; preds = %kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %kmalloc_array.exit
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 696, ptr noundef nonnull @.str.14) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %kmalloc_array.exit.rcu_read_lock.exit_crit_edge
  %call36 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end45_crit_edge

rcu_read_lock.exit.do.end45_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call38 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true.do.end45_crit_edge, label %land.lhs.true40

land.lhs.true.do.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

land.lhs.true40:                                  ; preds = %land.lhs.true
  %.b209 = load i1, ptr @nfp_fl_lag_do_work.__warned, align 1
  br i1 %.b209, label %land.lhs.true40.do.end45_crit_edge, label %if.then42

land.lhs.true40.do.end45_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

if.then42:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nfp_fl_lag_do_work.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 319, ptr noundef nonnull @.str.10) #10
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %land.lhs.true40.do.end45_crit_edge, %land.lhs.true.do.end45_crit_edge, %rcu_read_lock.exit.do.end45_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn208223 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp54.not225 = icmp eq ptr %.pn208223, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp54.not225, label %do.end45.for.end_crit_edge, label %for.body55.lr.ph

do.end45.for.end_crit_edge:                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body55.lr.ph:                                 ; preds = %do.end45
  %master_ndev = getelementptr i8, ptr %.pn.in240, i32 8
  %dirty = getelementptr i8, ptr %.pn.in240, i32 12
  br label %for.body55

for.body55:                                       ; preds = %for.inc.for.body55_crit_edge, %for.body55.lr.ph
  %.pn208228 = phi ptr [ %.pn208223, %for.body55.lr.ph ], [ %.pn208, %for.inc.for.body55_crit_edge ]
  %slaves.0227 = phi i32 [ 0, %for.body55.lr.ph ], [ %slaves.1, %for.inc.for.body55_crit_edge ]
  %active_count.0226 = phi i32 [ 0, %for.body55.lr.ph ], [ %active_count.1, %for.inc.for.body55_crit_edge ]
  %iter_netdev.0229 = getelementptr i8, ptr %.pn208228, i32 -40
  %call56 = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %iter_netdev.0229) #10
  %36 = ptrtoint ptr %master_ndev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %master_ndev, align 4
  %cmp57 = icmp eq ptr %call56, %37
  br i1 %cmp57, label %if.then58, label %for.body55.for.inc_crit_edge

for.body55.for.inc_crit_edge:                     ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then58:                                        ; preds = %for.body55
  %netdev_ops.i = getelementptr i8, ptr %.pn208228, i32 80
  %38 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %39, @nfp_repr_netdev_ops
  br i1 %cmp.i, label %if.end61, label %if.then58.for.end_crit_edge

if.then58.for.end_crit_edge:                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end61:                                         ; preds = %if.then58
  %app63 = getelementptr i8, ptr %.pn208228, i32 2276
  %40 = ptrtoint ptr %app63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %app63, align 4
  %42 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %add.ptr4, align 8
  %cmp65.not = icmp eq ptr %41, %43
  br i1 %cmp65.not, label %if.end67, label %if.end61.for.end_crit_edge

if.end61.for.end_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end67:                                         ; preds = %if.end61
  %inc = add i32 %slaves.0227, 1
  %44 = ptrtoint ptr %slave_cnt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %slave_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %45)
  %cmp69 = icmp ugt i32 %inc, %45
  br i1 %cmp69, label %if.end67.for.end_crit_edge, label %if.end71

if.end67.for.end_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end71:                                         ; preds = %if.end67
  %app_priv = getelementptr i8, ptr %.pn208228, i32 2284
  %46 = ptrtoint ptr %app_priv to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %app_priv, align 4
  %lag_port_flags = getelementptr inbounds %struct.nfp_flower_repr_priv, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %lag_port_flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %lag_port_flags, align 4
  %and = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool72.not = icmp eq i32 %and, 0
  br i1 %tobool72.not, label %if.end71.if.end75_crit_edge, label %if.then73

if.end71.if.end75_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end75

if.then73:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  %and74 = and i32 %49, -5
  %50 = ptrtoint ptr %lag_port_flags to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and74, ptr %lag_port_flags, align 4
  %51 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %dirty, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.then73, %if.end71.if.end75_crit_edge
  %52 = ptrtoint ptr %lag_port_flags to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %lag_port_flags, align 4
  %54 = and i32 %53, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %54)
  %.not = icmp eq i32 %54, 3
  br i1 %.not, label %if.then81, label %if.end75.for.inc_crit_edge

if.end75.for.inc_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then81:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #12
  %inc82 = add i32 %active_count.0226, 1
  %arrayidx = getelementptr ptr, ptr %retval.0.i, i32 %active_count.0226
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %iter_netdev.0229, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then81, %if.end75.for.inc_crit_edge, %for.body55.for.inc_crit_edge
  %active_count.1 = phi i32 [ %inc82, %if.then81 ], [ %active_count.0226, %if.end75.for.inc_crit_edge ], [ %active_count.0226, %for.body55.for.inc_crit_edge ]
  %slaves.1 = phi i32 [ %inc, %if.then81 ], [ %inc, %if.end75.for.inc_crit_edge ], [ %slaves.0227, %for.body55.for.inc_crit_edge ]
  %56 = ptrtoint ptr %.pn208228 to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn208 = load volatile ptr, ptr %.pn208228, align 4
  %cmp54.not = icmp eq ptr %.pn208, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp54.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body55_crit_edge

for.inc.for.body55_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body55

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end67.for.end_crit_edge, %if.end61.for.end_crit_edge, %if.then58.for.end_crit_edge, %do.end45.for.end_crit_edge
  %active_count.0.lcssa = phi i32 [ 0, %do.end45.for.end_crit_edge ], [ %active_count.0226, %if.end61.for.end_crit_edge ], [ %active_count.0226, %if.then58.for.end_crit_edge ], [ %active_count.0226, %if.end67.for.end_crit_edge ], [ %active_count.1, %for.inc.for.end_crit_edge ]
  %slaves.2 = phi i32 [ 0, %do.end45.for.end_crit_edge ], [ 0, %if.end61.for.end_crit_edge ], [ 0, %if.then58.for.end_crit_edge ], [ %inc, %if.end67.for.end_crit_edge ], [ %slaves.1, %for.inc.for.end_crit_edge ]
  %call.i213 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i213, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i216

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i216:                               ; preds = %for.end
  %call1.i214 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i214)
  %tobool.not.i215 = icmp eq i32 %call1.i214, 0
  br i1 %tobool.not.i215, label %land.lhs.true.i216.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i218

land.lhs.true.i216.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i216
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i218:                              ; preds = %land.lhs.true.i216
  %.b4.i217 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i217, label %land.lhs.true2.i218.rcu_read_unlock.exit_crit_edge, label %if.then.i219

land.lhs.true2.i218.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i218
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i219:                                     ; preds = %land.lhs.true2.i218
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.13, i32 noundef 724, ptr noundef nonnull @.str.15) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i219, %land.lhs.true2.i218.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i216.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %57 = tail call i32 @llvm.read_register.i32(metadata !63) #10
  %and.i.i.i.i.i220 = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i.i.i220 to ptr
  %preempt_count.i.i.i.i221 = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i.i.i221 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i.i.i221, align 4
  %sub.i.i.i = add i32 %60, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i221, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %61 = ptrtoint ptr %slave_cnt to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %slave_cnt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %slaves.2, i32 %62)
  %cmp95.not = icmp eq i32 %slaves.2, %62
  br i1 %cmp95.not, label %lor.lhs.false, label %rcu_read_unlock.exit.if.then98_crit_edge

rcu_read_unlock.exit.if.then98_crit_edge:         ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then98

lor.lhs.false:                                    ; preds = %rcu_read_unlock.exit
  %dirty96 = getelementptr i8, ptr %.pn.in240, i32 12
  %63 = ptrtoint ptr %dirty96 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %dirty96, align 4, !range !75
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool97.not = icmp eq i8 %64, 0
  br i1 %tobool97.not, label %lor.lhs.false.if.then98_crit_edge, label %if.end99

lor.lhs.false.if.then98_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then98

if.then98:                                        ; preds = %lor.lhs.false.if.then98_crit_edge, %rcu_read_unlock.exit.if.then98_crit_edge
  tail call void @kfree(ptr noundef %retval.0.i) #10
  br label %cleanup

if.end99:                                         ; preds = %lor.lhs.false
  %call100 = call fastcc i32 @nfp_fl_lag_config_group(ptr noundef %work, ptr noundef %entry1.0243, ptr noundef %retval.0.i, i32 noundef %active_count.0.lcssa, ptr noundef nonnull %batch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %if.then102, label %do.body106

if.then102:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #12
  %offloaded103 = getelementptr i8, ptr %.pn.in240, i32 13
  %65 = ptrtoint ptr %offloaded103 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %offloaded103, align 1
  %66 = ptrtoint ptr %dirty96 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 0, ptr %dirty96, align 4
  br label %if.end123

do.body106:                                       ; preds = %if.end99
  %call107 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %tobool108.not = icmp eq i32 %call107, 0
  br i1 %tobool108.not, label %do.body106.do.end119_crit_edge, label %do.end112

do.body106.do.end119_crit_edge:                   ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end119

do.end112:                                        ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %add.ptr4, align 8
  %cpp114 = getelementptr inbounds %struct.nfp_app, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %cpp114 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cpp114, align 4
  %call115 = tail call ptr @nfp_cpp_device(ptr noundef %70) #10
  %parent116 = getelementptr inbounds %struct.device, ptr %call115, i32 0, i32 1
  %71 = ptrtoint ptr %parent116 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %parent116, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %72, ptr noundef nonnull @.str.24) #13
  br label %do.end119

do.end119:                                        ; preds = %do.end112, %do.body106.do.end119_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %73 = load ptr, ptr @system_wq, align 4
  %call.i.i222 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %73, ptr noundef %work, i32 noundef 1) #10
  br label %if.end123

if.end123:                                        ; preds = %do.end119, %if.then102
  tail call void @kfree(ptr noundef %retval.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end123, %if.then98, %list_del.exit, %do.end24, %if.then16.cleanup_crit_edge
  %cmp.not = icmp eq ptr %.pn244, %group_list
  br i1 %cmp.not, label %cleanup.for.end136_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end136_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end136

for.end136:                                       ; preds = %cleanup.for.end136_crit_edge, %entry.for.end136_crit_edge
  %74 = ptrtoint ptr %batch to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %batch, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %75)
  %cmp137 = icmp eq i32 %75, 1
  br i1 %cmp137, label %if.then138, label %for.end136.if.end157_crit_edge

for.end136.if.end157_crit_edge:                   ; preds = %for.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

if.then138:                                       ; preds = %for.end136
  %76 = ptrtoint ptr %batch to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 2, ptr %batch, align 4
  %call139 = call fastcc i32 @nfp_fl_lag_config_group(ptr noundef %work, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef nonnull %batch)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.then138.if.end157_crit_edge, label %do.body142

if.then138.if.end157_crit_edge:                   ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

do.body142:                                       ; preds = %if.then138
  %call143 = tail call i32 @net_ratelimit() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call143)
  %tobool144.not = icmp eq i32 %call143, 0
  br i1 %tobool144.not, label %do.body142.if.end157_crit_edge, label %do.end148

do.body142.if.end157_crit_edge:                   ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end157

do.end148:                                        ; preds = %do.body142
  call void @__sanitizer_cov_trace_pc() #12
  %77 = ptrtoint ptr %add.ptr4 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %add.ptr4, align 8
  %cpp150 = getelementptr inbounds %struct.nfp_app, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %cpp150 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %cpp150, align 4
  %call151 = tail call ptr @nfp_cpp_device(ptr noundef %80) #10
  %parent152 = getelementptr inbounds %struct.device, ptr %call151, i32 0, i32 1
  %81 = ptrtoint ptr %parent152 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %parent152, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %82, ptr noundef nonnull @.str.27) #13
  br label %if.end157

if.end157:                                        ; preds = %do.end148, %do.body142.if.end157_crit_edge, %if.then138.if.end157_crit_edge, %for.end136.if.end157_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %batch) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfp_flower_lag_cleanup(ptr noundef %lag) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %lag) #10
  %retrans_skbs = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 8
  %0 = ptrtoint ptr %retrans_skbs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %retrans_skbs, align 4
  %cmp.i.i2.i = icmp eq ptr %1, %retrans_skbs
  %tobool.not.i13.i = icmp eq ptr %1, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %entry.__skb_queue_purge.exit_crit_edge, label %while.body.lr.ph.i

entry.__skb_queue_purge.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit

while.body.lr.ph.i:                               ; preds = %entry
  %qlen.i.i.i = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 8, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %2 = phi ptr [ %1, %while.body.lr.ph.i ], [ %12, %while.body.i.while.body.i_crit_edge ]
  %3 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %4, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %2, i32 0, i32 1
  %7 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %2, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %6, i32 0, i32 1
  %9 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %8, ptr %prev17.i.i.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %6, ptr %8, align 8
  tail call void @kfree_skb_reason(ptr noundef nonnull %2, i32 noundef 0) #10
  %11 = ptrtoint ptr %retrans_skbs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %retrans_skbs, align 4
  %cmp.i.i.i = icmp eq ptr %12, %retrans_skbs
  %tobool.not.i1.i = icmp eq ptr %12, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.__skb_queue_purge.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.__skb_queue_purge.exit_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__skb_queue_purge.exit

__skb_queue_purge.exit:                           ; preds = %while.body.i.__skb_queue_purge.exit_crit_edge, %entry.__skb_queue_purge.exit_crit_edge
  %lock = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %group_list = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 2
  %13 = ptrtoint ptr %group_list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %group_list, align 4
  %cmp.not28 = icmp eq ptr %14, %group_list
  br i1 %cmp.not28, label %__skb_queue_purge.exit.for.end_crit_edge, label %__skb_queue_purge.exit.for.body_crit_edge

__skb_queue_purge.exit.for.body_crit_edge:        ; preds = %__skb_queue_purge.exit
  br label %for.body

__skb_queue_purge.exit.for.end_crit_edge:         ; preds = %__skb_queue_purge.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %__skb_queue_purge.exit.for.body_crit_edge
  %.pn.in29 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %14, %__skb_queue_purge.exit.for.body_crit_edge ]
  %entry1.0 = getelementptr i8, ptr %.pn.in29, i32 -8
  %15 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn.in29, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in29) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %.pn.in29, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %22 = ptrtoint ptr %.pn.in29 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in29, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in29, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %entry1.0) #10
  %cmp.not = icmp eq ptr %.pn, %group_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %__skb_queue_purge.exit.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #10
  tail call void @mutex_destroy(ptr noundef %lock) #10
  %ida_handle = getelementptr inbounds %struct.nfp_fl_lag, ptr %lag, i32 0, i32 3
  tail call void @ida_destroy(ptr noundef %ida_handle) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nfp_ctrl_tx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nfp_flower_cmsg_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !45, !47, !48, !49, !50, !52, !54, !55, !56, !58, !59, !60, !62}
!llvm.named.register.sp = !{!63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @nfp_flower_lag_populate_pre_action.__msg, !1, !"__msg", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/netronome/nfp/flower/lag_conf.c", i32 171, i32 3}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/netronome/nfp/flower/lag_conf.c", i32 458, i32 4}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @nfp_flower_lag_unprocessed_msg._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @nfp_flower_lag_unprocessed_msg._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @nfp_flower_lag_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/netronome/nfp/flower/lag_conf.c", i32 665, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @nfp_flower_lag_init.__key.6, !11, !"__key", i1 false, i1 false}
!14 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @nfp_flower_lag_init.__key.8, !16, !"__key", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/netronome/nfp/flower/lag_conf.c", i32 667, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/netronome/nfp/flower/lag_conf.c", i32 523, i32 2}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/netronome/nfp/flower/lag_conf.c", i32 550, i32 3}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nfp_fl_lag_changeupper_event._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @nfp_fl_lag_changeupper_event._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/netronome/nfp/flower/lag_conf.c", i32 117, i32 3}
!35 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @nfp_fl_lag_group_create._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @nfp_fl_lag_group_create._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/netronome/nfp/flower/lag_conf.c", i32 493, i32 3}
!40 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @nfp_fl_lag_schedule_group_delete._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @nfp_fl_lag_schedule_group_delete._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../include/linux/netdevice.h", i32 4963, i32 10}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/net/ethernet/netronome/nfp/flower/lag_conf.c", i32 293, i32 5}
!47 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @nfp_fl_lag_do_work._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @nfp_fl_lag_do_work._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/netronome/nfp/flower/lag_conf.c", i32 319, i32 3}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/netronome/nfp/flower/lag_conf.c", i32 362, i32 4}
!54 = !{ptr @nfp_fl_lag_do_work._entry.23, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @nfp_fl_lag_do_work._entry_ptr.25, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/netronome/nfp/flower/lag_conf.c", i32 375, i32 4}
!58 = !{ptr @nfp_fl_lag_do_work._entry.26, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @nfp_fl_lag_do_work._entry_ptr.28, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @xa_init_flags.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!62 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!63 = !{!"sp"}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2149733308}
!74 = !{i64 2149733574}
!75 = !{i8 0, i8 2}
!76 = !{!"branch_weights", i32 1, i32 2000}
