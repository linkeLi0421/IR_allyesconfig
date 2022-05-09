; ModuleID = '/llk/IR_all_yes/net/ipv4/netfilter/ipt_CLUSTERIP.c_pt.bc'
source_filename = "../net/ipv4/netfilter/ipt_CLUSTERIP.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.nf_hook_ops = type { ptr, ptr, ptr, i8, i8, i32, i32 }
%struct.proc_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.134, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.134 = type { ptr }
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
%struct.clusterip_net = type { %struct.list_head, %struct.spinlock, i8, ptr, %struct.mutex, i32 }
%struct.clusterip_config = type { %struct.list_head, %struct.refcount_struct, %struct.refcount_struct, i32, [6 x i8], i32, i16, i32, ptr, i32, i32, %struct.callback_head, ptr, [16 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.105, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.105 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.xt_action_param = type { %union.anon.152, %union.anon.153, ptr, i32, i16, i8 }
%union.anon.152 = type { ptr }
%union.anon.153 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.135, %union.anon.136, [48 x i8], %union.anon.137, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.139, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.135 = type { ptr }
%union.anon.136 = type { i64 }
%union.anon.137 = type { %struct.anon.138 }
%struct.anon.138 = type { i32, ptr }
%union.anon.139 = type { %struct.anon.140 }
%struct.anon.140 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.141, i32, i32, i32, i16, i16, %union.anon.143, i32, %union.anon.144, %union.anon.145, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.141 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.144 = type { i32 }
%union.anon.145 = type { i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipt_clusterip_tgt_info = type { i32, [6 x i8], i16, i16, [16 x i16], i32, i32, ptr }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.172, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.164 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.164 = type { %union.nf_inet_addr, %union.anon.165, i8, i8 }
%union.anon.165 = type { i16 }
%struct.anon.172 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ipt_ip = type { %struct.in_addr, %struct.in_addr, %struct.in_addr, %struct.in_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8 }
%struct.in_addr = type { i32 }
%struct.xt_tgdtor_param = type { ptr, ptr, ptr, i8 }
%struct.file = type { %union.anon.43, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.43 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.154, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.155, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.156, ptr, %struct.address_space, %struct.list_head, %union.anon.157, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.154 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.155 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.156 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%union.anon.157 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.clusterip_seq_position = type { i32, i32, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.arphdr = type { i16, i16, i8, i8, i16 }

@__UNIQUE_ID_file589 = internal constant [52 x i8] c"ipt_CLUSTERIP.file=net/ipv4/netfilter/ipt_CLUSTERIP\00", section ".modinfo", align 1
@__UNIQUE_ID_license590 = internal constant [26 x i8] c"ipt_CLUSTERIP.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author591 = internal constant [58 x i8] c"ipt_CLUSTERIP.author=Harald Welte <laforge@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description592 = internal constant [52 x i8] c"ipt_CLUSTERIP.description=Xtables: CLUSTERIP target\00", section ".modinfo", align 1
@clusterip_tg_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 918, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016ipt_CLUSTERIP: ClusterIP Version %s unloading\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clusterip_tg_exit\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"net/ipv4/netfilter/ipt_CLUSTERIP.c\00", [61 x i8] zeroinitializer }, align 32
@clusterip_tg_exit._entry_ptr = internal global ptr @clusterip_tg_exit._entry, section ".printk_index", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0.8\00", [28 x i8] zeroinitializer }, align 32
@cip_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @clusterip_netdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@clusterip_tg_reg = internal global %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"CLUSTERIP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @clusterip_tg, ptr @clusterip_tg_check, ptr @clusterip_tg_destroy, ptr null, ptr null, i32 60, i32 56, i32 0, i16 0, i16 2 }, section ".data..read_mostly", align 4
@clusterip_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @clusterip_net_init, ptr null, ptr @clusterip_net_exit, ptr null, ptr @clusterip_net_id, i32 156 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_ipt_CLUSTERIP__601_928_clusterip_tg_init6 = internal global ptr @clusterip_tg_init, section ".initcall6.init", align 4
@__exitcall_clusterip_tg_exit = internal global ptr @clusterip_tg_exit, section ".exitcall.exit", align 4
@clusterip_netdev_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@clusterip_net_id = internal global i32 0, section ".data..read_mostly", align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@clusterip_tg.__UNIQUE_ID_ddebug597 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ipt_CLUSTERIP\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clusterip_tg\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"hash=%u ct_hash=%u \00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ipt_CLUSTERIP: hash=%u ct_hash=%u \00", [61 x i8] zeroinitializer }, align 32
@clusterip_tg.__UNIQUE_ID_ddebug598 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.2, ptr @.str.14, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"not responsible\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ipt_CLUSTERIP: not responsible\0A\00", [32 x i8] zeroinitializer }, align 32
@clusterip_tg.__UNIQUE_ID_ddebug599 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.2, ptr @.str.16, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"responsible\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ipt_CLUSTERIP: responsible\0A\00", [36 x i8] zeroinitializer }, align 32
@clusterip_hashfn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016ipt_CLUSTERIP: unknown protocol %u\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clusterip_hashfn\00", [47 x i8] zeroinitializer }, align 32
@clusterip_hashfn._entry_ptr = internal global ptr @clusterip_hashfn._entry, section ".printk_index", align 4
@clusterip_hashfn._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016ipt_CLUSTERIP: unknown mode %u\0A\00", [62 x i8] zeroinitializer }, align 32
@clusterip_hashfn._entry_ptr.22 = internal global ptr @clusterip_hashfn._entry.20, section ".printk_index", align 4
@clusterip_tg_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013ipt_CLUSTERIP: cannot use CLUSTERIP target from nftables compat\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clusterip_tg_check\00", [45 x i8] zeroinitializer }, align 32
@clusterip_tg_check._entry_ptr = internal global ptr @clusterip_tg_check._entry, section ".printk_index", align 4
@clusterip_tg_check._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.24, ptr @.str.2, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@clusterip_tg_check._entry_ptr.26 = internal global ptr @clusterip_tg_check._entry.25, section ".printk_index", align 4
@clusterip_tg_check._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.24, ptr @.str.2, i32 494, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016ipt_CLUSTERIP: Please specify destination IP\0A\00", [48 x i8] zeroinitializer }, align 32
@clusterip_tg_check._entry_ptr.29 = internal global ptr @clusterip_tg_check._entry.27, section ".printk_index", align 4
@clusterip_tg_check._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.24, ptr @.str.2, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016ipt_CLUSTERIP: bad num_local_nodes %u\0A\00", [55 x i8] zeroinitializer }, align 32
@clusterip_tg_check._entry_ptr.32 = internal global ptr @clusterip_tg_check._entry.30, section ".printk_index", align 4
@clusterip_tg_check._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.24, ptr @.str.2, i32 505, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016ipt_CLUSTERIP: bad local_nodes[%d] %u\0A\00", [55 x i8] zeroinitializer }, align 32
@clusterip_tg_check._entry_ptr.35 = internal global ptr @clusterip_tg_check._entry.33, section ".printk_index", align 4
@clusterip_tg_check._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.24, ptr @.str.2, i32 514, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016ipt_CLUSTERIP: no config found for %pI4, need 'new'\0A\00", [41 x i8] zeroinitializer }, align 32
@clusterip_tg_check._entry_ptr.38 = internal global ptr @clusterip_tg_check._entry.36, section ".printk_index", align 4
@clusterip_tg_check._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.24, ptr @.str.2, i32 532, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016ipt_CLUSTERIP: cannot load conntrack support for proto=%u\0A\00", [35 x i8] zeroinitializer }, align 32
@clusterip_tg_check._entry_ptr.41 = internal global ptr @clusterip_tg_check._entry.39, section ".printk_index", align 4
@cip_arp_ops = internal constant { %struct.nf_hook_ops, [40 x i8] } { %struct.nf_hook_ops { ptr @clusterip_arp_mangle, ptr null, ptr null, i8 3, i8 0, i32 1, i32 -1 }, [40 x i8] zeroinitializer }, align 32
@clusterip_tg_check._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.24, ptr @.str.2, i32 553, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\016ipt_CLUSTERIP: ipt_CLUSTERIP is deprecated and it will removed soon, use xt_cluster instead\0A\00", [33 x i8] zeroinitializer }, align 32
@clusterip_tg_check._entry_ptr.44 = internal global ptr @clusterip_tg_check._entry.42, section ".printk_index", align 4
@rcu_bh_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"rcu_read_lock_bh() used illegally while idle\00", [51 x i8] zeroinitializer }, align 32
@__clusterip_config_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_read_unlock_bh.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.46 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"rcu_read_unlock_bh() used illegally while idle\00", [49 x i8] zeroinitializer }, align 32
@clusterip_config_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016ipt_CLUSTERIP: Please specify an interface name\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clusterip_config_init\00", [42 x i8] zeroinitializer }, align 32
@clusterip_config_init._entry_ptr = internal global ptr @clusterip_config_init._entry, section ".printk_index", align 4
@clusterip_config_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016ipt_CLUSTERIP: no such interface %s\0A\00", [57 x i8] zeroinitializer }, align 32
@clusterip_config_init._entry_ptr.51 = internal global ptr @clusterip_config_init._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pI4\00", [27 x i8] zeroinitializer }, align 32
@clusterip_proc_ops = internal constant { %struct.proc_ops, [52 x i8] } { %struct.proc_ops { i32 0, ptr @clusterip_proc_open, ptr @seq_read, ptr null, ptr @clusterip_proc_write, ptr @seq_lseek, ptr @clusterip_proc_release, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@clusterip_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @clusterip_seq_start, ptr @clusterip_seq_stop, ptr @clusterip_seq_next, ptr @clusterip_seq_show }, [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@clusterip_arp_mangle.__UNIQUE_ID_ddebug600 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.57, ptr @.str.2, ptr @.str.58, i8 0, i8 -88, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clusterip_arp_mangle\00", [43 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"not mangling arp reply on different interface: cip'%d'-skb'%d'\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"ipt_CLUSTERIP: not mangling arp reply on different interface: cip'%d'-skb'%d'\0A\00", [49 x i8] zeroinitializer }, align 32
@clusterip_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&cn->lock\00", [22 x i8] zeroinitializer }, align 32
@clusterip_net_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ipt_CLUSTERIP: Unable to proc dir entry\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clusterip_net_init\00", [45 x i8] zeroinitializer }, align 32
@clusterip_net_init._entry_ptr = internal global ptr @clusterip_net_init._entry, section ".printk_index", align 4
@clusterip_net_init.__key.63 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cn->mutex\00", [21 x i8] zeroinitializer }, align 32
@clusterip_tg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 905, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016ipt_CLUSTERIP: ClusterIP Version %s loaded successfully\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clusterip_tg_init\00", [46 x i8] zeroinitializer }, align 32
@clusterip_tg_init._entry_ptr = internal global ptr @clusterip_tg_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 6, i64 11]
@__sancov_gen_cov_switch_values.67 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.68 = internal global [9 x i64] [i64 7, i64 8, i64 6, i64 17, i64 33, i64 50, i64 51, i64 132, i64 136]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.70 = internal global [4 x i64] [i64 2, i64 8, i64 43, i64 45]
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 918, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [20 x i8] c"cip_netdev_notifier\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 884, i32 30 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"clusterip_net_ops\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 877, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 208, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 45, i32 7 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 695, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 723, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 455, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 457, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 460, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 367, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 388, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 478, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 488, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 494, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 498, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 504, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 513, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 531, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant [12 x i8] c"cip_arp_ops\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 80, i32 33 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 552, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 749, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.204, i32 760, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 248, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 258, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 290, i32 19 }
@___asan_gen_.224 = private unnamed_addr constant [19 x i8] c"clusterip_proc_ops\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 835, i32 30 }
@___asan_gen_.227 = private unnamed_addr constant [18 x i8] c"clusterip_seq_ops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 766, i32 36 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 758, i32 16 }
@___asan_gen_.234 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.234, i32 156, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 673, i32 3 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 851, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 856, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 859, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.273 = private constant [38 x i8] c"../net/ipv4/netfilter/ipt_CLUSTERIP.c\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 904, i32 2 }
@llvm.compiler.used = appending global [90 x ptr] [ptr @__UNIQUE_ID_author591, ptr @__UNIQUE_ID_description592, ptr @__UNIQUE_ID_file589, ptr @__UNIQUE_ID_license590, ptr @__exitcall_clusterip_tg_exit, ptr @__initcall__kmod_ipt_CLUSTERIP__601_928_clusterip_tg_init6, ptr @clusterip_config_init._entry, ptr @clusterip_config_init._entry.49, ptr @clusterip_config_init._entry_ptr, ptr @clusterip_config_init._entry_ptr.51, ptr @clusterip_hashfn._entry, ptr @clusterip_hashfn._entry.20, ptr @clusterip_hashfn._entry_ptr, ptr @clusterip_hashfn._entry_ptr.22, ptr @clusterip_net_init._entry, ptr @clusterip_net_init._entry_ptr, ptr @clusterip_tg_check._entry, ptr @clusterip_tg_check._entry.25, ptr @clusterip_tg_check._entry.27, ptr @clusterip_tg_check._entry.30, ptr @clusterip_tg_check._entry.33, ptr @clusterip_tg_check._entry.36, ptr @clusterip_tg_check._entry.39, ptr @clusterip_tg_check._entry.42, ptr @clusterip_tg_check._entry_ptr, ptr @clusterip_tg_check._entry_ptr.26, ptr @clusterip_tg_check._entry_ptr.29, ptr @clusterip_tg_check._entry_ptr.32, ptr @clusterip_tg_check._entry_ptr.35, ptr @clusterip_tg_check._entry_ptr.38, ptr @clusterip_tg_check._entry_ptr.41, ptr @clusterip_tg_check._entry_ptr.44, ptr @clusterip_tg_exit, ptr @clusterip_tg_exit._entry, ptr @clusterip_tg_exit._entry_ptr, ptr @clusterip_tg_init._entry, ptr @clusterip_tg_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @cip_netdev_notifier, ptr @clusterip_net_ops, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @cip_arp_ops, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @clusterip_proc_ops, ptr @clusterip_seq_ops, ptr @.str.53, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @clusterip_net_init.__key, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @clusterip_net_init.__key.63, ptr @.str.64, ptr @.str.65, ptr @.str.66], section "llvm.metadata"
@0 = internal global [68 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_tg_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cip_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_hashfn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_hashfn._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_tg_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_tg_check._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_tg_check._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_tg_check._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_tg_check._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_tg_check._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_tg_check._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cip_arp_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_tg_check._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_config_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_config_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_proc_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_net_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_net_init.__key.63 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clusterip_tg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @clusterip_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #17
  %call1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @cip_netdev_notifier) #14
  tail call void @xt_unregister_target(ptr noundef nonnull @clusterip_tg_reg) #14
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @clusterip_net_ops) #14
  tail call void @rcu_barrier() #14
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clusterip_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_pernet_subsys(ptr noundef nonnull @clusterip_net_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xt_register_target(ptr noundef nonnull @clusterip_tg_reg) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_subsys_crit_edge, label %if.end4

if.end.cleanup_subsys_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup_subsys

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @cip_netdev_notifier) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %unregister_target, label %do.end

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.3) #17
  br label %cleanup

unregister_target:                                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @xt_unregister_target(ptr noundef nonnull @clusterip_tg_reg) #14
  br label %cleanup_subsys

cleanup_subsys:                                   ; preds = %unregister_target, %if.end.cleanup_subsys_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.cleanup_subsys_crit_edge ], [ %call5, %unregister_target ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @clusterip_net_ops) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup_subsys, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %cleanup_subsys ], [ 0, %do.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clusterip_netdev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %call2 = tail call fastcc ptr @clusterip_pernet(ptr noundef %3)
  %lock = getelementptr inbounds %struct.clusterip_net, ptr %call2, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #14
  %call3 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call4 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true6

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %.b90 = load i1, ptr @clusterip_netdev_event.__warned, align 1
  br i1 %.b90, label %land.lhs.true6.do.end_crit_edge, label %if.then

land.lhs.true6.do.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end

if.then:                                          ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @clusterip_netdev_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 208, ptr noundef nonnull @.str.4) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true6.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %c.091 = load volatile ptr, ptr %call2, align 4
  %cmp.not92 = icmp eq ptr %c.091, %call2
  br i1 %cmp.not92, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %ifindex44 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %c.093 = phi ptr [ %c.091, %for.body.lr.ph ], [ %c.0, %for.inc.for.body_crit_edge ]
  %5 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i32 %event, label %for.body.for.inc_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb21
    i32 11, label %sw.bb31
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %ifname = getelementptr inbounds %struct.clusterip_config, ptr %c.093, i32 0, i32 13
  %call14 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %ifname) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then16, label %sw.bb.for.inc_crit_edge

sw.bb.for.inc_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then16:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %ifindex44 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ifindex44, align 4
  %ifindex17 = getelementptr inbounds %struct.clusterip_config, ptr %c.093, i32 0, i32 5
  %8 = ptrtoint ptr %ifindex17 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %ifindex17, align 4
  %clustermac = getelementptr inbounds %struct.clusterip_config, ptr %c.093, i32 0, i32 4
  %call19 = tail call i32 @dev_mc_add(ptr noundef %1, ptr noundef %clustermac) #14
  br label %for.inc

sw.bb21:                                          ; preds = %for.body
  %9 = ptrtoint ptr %ifindex44 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ifindex44, align 4
  %ifindex23 = getelementptr inbounds %struct.clusterip_config, ptr %c.093, i32 0, i32 5
  %11 = ptrtoint ptr %ifindex23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ifindex23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp24 = icmp eq i32 %10, %12
  br i1 %cmp24, label %if.then25, label %sw.bb21.for.inc_crit_edge

sw.bb21.for.inc_crit_edge:                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then25:                                        ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #16
  %clustermac26 = getelementptr inbounds %struct.clusterip_config, ptr %c.093, i32 0, i32 4
  %call28 = tail call i32 @dev_mc_del(ptr noundef %1, ptr noundef %clustermac26) #14
  %13 = ptrtoint ptr %ifindex23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %ifindex23, align 4
  br label %for.inc

sw.bb31:                                          ; preds = %for.body
  %ifname34 = getelementptr inbounds %struct.clusterip_config, ptr %c.093, i32 0, i32 13
  %call36 = tail call i32 @strcmp(ptr noundef %1, ptr noundef %ifname34) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  %14 = ptrtoint ptr %ifindex44 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifindex44, align 4
  %ifindex40 = getelementptr inbounds %struct.clusterip_config, ptr %c.093, i32 0, i32 5
  br i1 %tobool37.not, label %if.then38, label %if.else

if.then38:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %ifindex40 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %ifindex40, align 4
  %clustermac41 = getelementptr inbounds %struct.clusterip_config, ptr %c.093, i32 0, i32 4
  %call43 = tail call i32 @dev_mc_add(ptr noundef %1, ptr noundef %clustermac41) #14
  br label %for.inc

if.else:                                          ; preds = %sw.bb31
  %17 = ptrtoint ptr %ifindex40 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ifindex40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %18)
  %cmp46 = icmp eq i32 %15, %18
  br i1 %cmp46, label %if.then47, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %clustermac48 = getelementptr inbounds %struct.clusterip_config, ptr %c.093, i32 0, i32 4
  %call50 = tail call i32 @dev_mc_del(ptr noundef %1, ptr noundef %clustermac48) #14
  %19 = ptrtoint ptr %ifindex40 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %ifindex40, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then47, %if.else.for.inc_crit_edge, %if.then38, %if.then25, %sw.bb21.for.inc_crit_edge, %if.then16, %sw.bb.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %c.093 to i32
  call void @__asan_load4_noabort(i32 %20)
  %c.0 = load volatile ptr, ptr %c.093, align 4
  %cmp.not = icmp eq ptr %c.0, %call2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @clusterip_pernet(ptr noundef %net) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %0 = load i32, ptr @clusterip_net_id, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !150) #14
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !160
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i, label %entry.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

entry.rcu_read_lock.exit.i_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %entry
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #14
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %entry.rcu_read_lock.exit.i_crit_edge
  %gen.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %5 = ptrtoint ptr %gen.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %gen.i, align 128
  %call.i = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b9.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 45, ptr noundef nonnull @.str.6) #14
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %arrayidx.i = getelementptr [0 x ptr], ptr %6, i32 0, i32 %0
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx.i, align 4
  %call.i10.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i10.i, label %do.end7.i.net_generic.exit_crit_edge, label %land.lhs.true.i13.i

do.end7.i.net_generic.exit_crit_edge:             ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %net_generic.exit

land.lhs.true.i13.i:                              ; preds = %do.end7.i
  %call1.i11.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i)
  %tobool.not.i12.i = icmp eq i32 %call1.i11.i, 0
  br i1 %tobool.not.i12.i, label %land.lhs.true.i13.i.net_generic.exit_crit_edge, label %land.lhs.true2.i15.i

land.lhs.true.i13.i.net_generic.exit_crit_edge:   ; preds = %land.lhs.true.i13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %net_generic.exit

land.lhs.true2.i15.i:                             ; preds = %land.lhs.true.i13.i
  %.b4.i14.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i, label %land.lhs.true2.i15.i.net_generic.exit_crit_edge, label %if.then.i16.i

land.lhs.true2.i15.i.net_generic.exit_crit_edge:  ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %net_generic.exit

if.then.i16.i:                                    ; preds = %land.lhs.true2.i15.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #14
  br label %net_generic.exit

net_generic.exit:                                 ; preds = %if.then.i16.i, %land.lhs.true2.i15.i.net_generic.exit_crit_edge, %land.lhs.true.i13.i.net_generic.exit_crit_edge, %do.end7.i.net_generic.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !161
  %9 = tail call i32 @llvm.read_register.i32(metadata !150) #14
  %and.i.i.i.i.i17.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i17.i to ptr
  %preempt_count.i.i.i.i18.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i18.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i18.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i18.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  ret ptr %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_mc_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr noundef %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef %map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr noundef %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef %map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clusterip_tg(ptr noundef %skb, ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  %_ports.i = alloca [2 x i16], align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %3 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_nfct.i.i, align 8
  %and.i = and i32 %4, 7
  %and1.i = and i32 %4, -8
  %5 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp = icmp eq i32 %and1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %10 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %protocol, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp2 = icmp eq i8 %11, 1
  br i1 %cmp2, label %land.lhs.true, label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %12 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.67)
  switch i32 %and.i, label %if.end9.thread [
    i32 1, label %land.lhs.true.cleanup_crit_edge
    i32 4, label %land.lhs.true.cleanup_crit_edge82
  ]

land.lhs.true.cleanup_crit_edge82:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9.thread:                                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %config75 = getelementptr inbounds %struct.ipt_clusterip_tgt_info, ptr %2, i32 0, i32 7
  %13 = ptrtoint ptr %config75 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %config75, align 4
  br label %do.body.i

if.end9:                                          ; preds = %if.end
  %config = getelementptr inbounds %struct.ipt_clusterip_tgt_info, ptr %2, i32 0, i32 7
  %15 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %config, align 4
  %17 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %11, label %if.end9.do.body.i_crit_edge [
    i8 6, label %if.end9.if.then.i_crit_edge
    i8 17, label %if.end9.if.then.i_crit_edge83
    i8 33, label %if.end9.if.then.i_crit_edge84
    i8 50, label %if.end9.if.then.i_crit_edge85
    i8 -124, label %if.end9.if.then.i_crit_edge86
    i8 -120, label %if.end9.if.then.i_crit_edge87
    i8 51, label %sw.bb1.i.i
  ]

if.end9.if.then.i_crit_edge87:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end9.if.then.i_crit_edge86:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end9.if.then.i_crit_edge85:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end9.if.then.i_crit_edge84:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end9.if.then.i_crit_edge83:                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end9.if.then.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.end9.do.body.i_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

sw.bb1.i.i:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i

if.then.i:                                        ; preds = %sw.bb1.i.i, %if.end9.if.then.i_crit_edge, %if.end9.if.then.i_crit_edge83, %if.end9.if.then.i_crit_edge84, %if.end9.if.then.i_crit_edge85, %if.end9.if.then.i_crit_edge86, %if.end9.if.then.i_crit_edge87
  %retval.0.i.ph.i = phi i32 [ 0, %if.end9.if.then.i_crit_edge ], [ 0, %if.end9.if.then.i_crit_edge83 ], [ 0, %if.end9.if.then.i_crit_edge84 ], [ 0, %if.end9.if.then.i_crit_edge85 ], [ 0, %if.end9.if.then.i_crit_edge86 ], [ 0, %if.end9.if.then.i_crit_edge87 ], [ 4, %sw.bb1.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_ports.i) #14
  %18 = ptrtoint ptr %_ports.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 -1, ptr %_ports.i, align 2, !annotation !162
  %19 = getelementptr inbounds [2 x i16], ptr %_ports.i, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 -1, ptr %19, align 2, !annotation !162
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %add.ptr.i.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %22 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %22 to i32
  %add.i = add nuw nsw i32 %retval.0.i.ph.i, %mul.i
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %23 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %25 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i.i, align 8
  %27 = add i32 %26, %add.i
  %sub.i1.i.i = sub i32 %24, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i)
  %cmp.i.i.i = icmp sgt i32 %sub.i1.i.i, 3
  br i1 %cmp.i.i.i, label %skb_header_pointer.exit.i, label %if.end.i.i.i, !prof !163

if.end.i.i.i:                                     ; preds = %if.then.i
  %tobool2.not.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.if.end.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.if.end.i_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add.i, ptr noundef nonnull %_ports.i, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.if.end.i_crit_edge, label %lor.lhs.false.i.i.i.if.then5.i_crit_edge

lor.lhs.false.i.i.i.if.then5.i_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5.i

lor.lhs.false.i.i.i.if.end.i_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

skb_header_pointer.exit.i:                        ; preds = %if.then.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i60.i = getelementptr i8, ptr %29, i32 %add.i
  %tobool.not.i = icmp eq ptr %add.ptr.i.i60.i, null
  br i1 %tobool.not.i, label %skb_header_pointer.exit.i.if.end.i_crit_edge, label %skb_header_pointer.exit.i.if.then5.i_crit_edge

skb_header_pointer.exit.i.if.then5.i_crit_edge:   ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then5.i

skb_header_pointer.exit.i.if.end.i_crit_edge:     ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then5.i:                                       ; preds = %skb_header_pointer.exit.i.if.then5.i_crit_edge, %lor.lhs.false.i.i.i.if.then5.i_crit_edge
  %retval.0.i.i115.i = phi ptr [ %add.ptr.i.i60.i, %skb_header_pointer.exit.i.if.then5.i_crit_edge ], [ %_ports.i, %lor.lhs.false.i.i.i.if.then5.i_crit_edge ]
  %30 = ptrtoint ptr %retval.0.i.i115.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %retval.0.i.i115.i, align 2
  %arrayidx6.i = getelementptr i16, ptr %retval.0.i.i115.i, i32 1
  %32 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx6.i, align 2
  br label %if.end.i

if.end.i:                                         ; preds = %if.then5.i, %skb_header_pointer.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i_crit_edge, %if.end.i.i.i.if.end.i_crit_edge
  %sport.0.i = phi i16 [ %31, %if.then5.i ], [ 0, %skb_header_pointer.exit.i.if.end.i_crit_edge ], [ 0, %if.end.i.i.i.if.end.i_crit_edge ], [ 0, %lor.lhs.false.i.i.i.if.end.i_crit_edge ]
  %dport.0.i = phi i16 [ %33, %if.then5.i ], [ 0, %skb_header_pointer.exit.i.if.end.i_crit_edge ], [ 0, %if.end.i.i.i.if.end.i_crit_edge ], [ 0, %lor.lhs.false.i.i.i.if.end.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_ports.i) #14
  br label %if.end17.i

do.body.i:                                        ; preds = %if.end9.do.body.i_crit_edge, %if.end9.thread
  %34 = phi ptr [ %14, %if.end9.thread ], [ %16, %if.end9.do.body.i_crit_edge ]
  %config77 = phi ptr [ %config75, %if.end9.thread ], [ %config, %if.end9.do.body.i_crit_edge ]
  %call7.i = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %do.body.i.if.end17.i_crit_edge, label %do.end.i

do.body.i.if.end17.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %protocol, align 1
  %conv12.i = zext i8 %36 to i32
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %conv12.i) #17
  br label %if.end17.i

if.end17.i:                                       ; preds = %do.end.i, %do.body.i.if.end17.i_crit_edge, %if.end.i
  %37 = phi ptr [ %16, %if.end.i ], [ %34, %do.end.i ], [ %34, %do.body.i.if.end17.i_crit_edge ]
  %config76 = phi ptr [ %config, %if.end.i ], [ %config77, %do.end.i ], [ %config77, %do.body.i.if.end17.i_crit_edge ]
  %sport.1.i = phi i16 [ %sport.0.i, %if.end.i ], [ 0, %do.end.i ], [ 0, %do.body.i.if.end17.i_crit_edge ]
  %dport.1.i = phi i16 [ %dport.0.i, %if.end.i ], [ 0, %do.end.i ], [ 0, %do.body.i.if.end17.i_crit_edge ]
  %hash_mode.i = getelementptr inbounds %struct.clusterip_config, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %hash_mode.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %hash_mode.i, align 4
  %40 = zext i32 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.69)
  switch i32 %39, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb19.i
    i32 2, label %sw.bb24.i
  ]

sw.bb.i:                                          ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %41 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %saddr.i, align 4
  %hash_initval.i = getelementptr inbounds %struct.clusterip_config, ptr %37, i32 0, i32 10
  %43 = ptrtoint ptr %hash_initval.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hash_initval.i, align 4
  %add1.i.i = add i32 %44, -559038733
  %add.i.i.i = add i32 %add1.i.i, %42
  %or.i.i.i.i = call i32 @llvm.fshl.i32(i32 %add1.i.i, i32 %add1.i.i, i32 14) #14
  %sub.i.i.i = sub i32 0, %or.i.i.i.i
  %xor3.i.i.i = xor i32 %add.i.i.i, %sub.i.i.i
  %or.i52.i.i.i = call i32 @llvm.fshl.i32(i32 %sub.i.i.i, i32 %sub.i.i.i, i32 11) #14
  %sub5.i.i.i = sub i32 %xor3.i.i.i, %or.i52.i.i.i
  %xor6.i.i.i = xor i32 %sub5.i.i.i, %add1.i.i
  %or.i53.i.i.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i.i, i32 %sub5.i.i.i, i32 25) #14
  %sub8.i.i.i = sub i32 %xor6.i.i.i, %or.i53.i.i.i
  %xor9.i.i.i = xor i32 %sub8.i.i.i, %sub.i.i.i
  %or.i54.i.i.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i.i, i32 %sub8.i.i.i, i32 16) #14
  %sub11.i.i.i = sub i32 %xor9.i.i.i, %or.i54.i.i.i
  %xor12.i.i.i = xor i32 %sub11.i.i.i, %sub5.i.i.i
  %or.i55.i.i.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i.i, i32 %sub11.i.i.i, i32 4) #14
  %sub14.i.i.i = sub i32 %xor12.i.i.i, %or.i55.i.i.i
  %xor15.i.i.i = xor i32 %sub14.i.i.i, %sub8.i.i.i
  %or.i56.i.i.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i.i, i32 %sub14.i.i.i, i32 14) #14
  %sub17.i.i.i = sub i32 %xor15.i.i.i, %or.i56.i.i.i
  %xor18.i.i.i = xor i32 %sub17.i.i.i, %sub11.i.i.i
  %or.i57.i.i.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i.i, i32 %sub17.i.i.i, i32 24) #14
  %sub20.i.i.i = sub i32 %xor18.i.i.i, %or.i57.i.i.i
  br label %clusterip_hashfn.exit

sw.bb19.i:                                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  %saddr20.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %45 = ptrtoint ptr %saddr20.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %saddr20.i, align 4
  %conv21.i = zext i16 %sport.1.i to i32
  %hash_initval22.i = getelementptr inbounds %struct.clusterip_config, ptr %37, i32 0, i32 10
  %47 = ptrtoint ptr %hash_initval22.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %hash_initval22.i, align 4
  %add1.i61.i = add i32 %48, -559038729
  %add.i.i62.i = add i32 %add1.i61.i, %46
  %add1.i.i.i = add i32 %add1.i61.i, %conv21.i
  %xor.i.i.i = xor i32 %add1.i.i.i, %add1.i61.i
  %or.i.i.i63.i = call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #14
  %sub.i.i64.i = sub i32 %xor.i.i.i, %or.i.i.i63.i
  %xor3.i.i65.i = xor i32 %sub.i.i64.i, %add.i.i62.i
  %or.i52.i.i66.i = call i32 @llvm.fshl.i32(i32 %sub.i.i64.i, i32 %sub.i.i64.i, i32 11) #14
  %sub5.i.i67.i = sub i32 %xor3.i.i65.i, %or.i52.i.i66.i
  %xor6.i.i68.i = xor i32 %sub5.i.i67.i, %add1.i.i.i
  %or.i53.i.i69.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i67.i, i32 %sub5.i.i67.i, i32 25) #14
  %sub8.i.i70.i = sub i32 %xor6.i.i68.i, %or.i53.i.i69.i
  %xor9.i.i71.i = xor i32 %sub8.i.i70.i, %sub.i.i64.i
  %or.i54.i.i72.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i70.i, i32 %sub8.i.i70.i, i32 16) #14
  %sub11.i.i73.i = sub i32 %xor9.i.i71.i, %or.i54.i.i72.i
  %xor12.i.i74.i = xor i32 %sub11.i.i73.i, %sub5.i.i67.i
  %or.i55.i.i75.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i73.i, i32 %sub11.i.i73.i, i32 4) #14
  %sub14.i.i76.i = sub i32 %xor12.i.i74.i, %or.i55.i.i75.i
  %xor15.i.i77.i = xor i32 %sub14.i.i76.i, %sub8.i.i70.i
  %or.i56.i.i78.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i76.i, i32 %sub14.i.i76.i, i32 14) #14
  %sub17.i.i79.i = sub i32 %xor15.i.i77.i, %or.i56.i.i78.i
  %xor18.i.i80.i = xor i32 %sub17.i.i79.i, %sub11.i.i73.i
  %or.i57.i.i81.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i79.i, i32 %sub17.i.i79.i, i32 24) #14
  %sub20.i.i82.i = sub i32 %xor18.i.i80.i, %or.i57.i.i81.i
  br label %clusterip_hashfn.exit

sw.bb24.i:                                        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  %saddr25.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %49 = ptrtoint ptr %saddr25.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %saddr25.i, align 4
  %conv26.i = zext i16 %sport.1.i to i32
  %conv27.i = zext i16 %dport.1.i to i32
  %hash_initval28.i = getelementptr inbounds %struct.clusterip_config, ptr %37, i32 0, i32 10
  %51 = ptrtoint ptr %hash_initval28.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hash_initval28.i, align 4
  %add1.i83.i = add i32 %52, -559038725
  %add.i.i84.i = add i32 %add1.i83.i, %50
  %add1.i.i85.i = add i32 %add1.i83.i, %conv26.i
  %add2.i.i.i = add i32 %add1.i83.i, %conv27.i
  %xor.i.i86.i = xor i32 %add2.i.i.i, %add1.i.i85.i
  %or.i.i.i87.i = call i32 @llvm.fshl.i32(i32 %add1.i.i85.i, i32 %add1.i.i85.i, i32 14) #14
  %sub.i.i88.i = sub i32 %xor.i.i86.i, %or.i.i.i87.i
  %xor3.i.i89.i = xor i32 %sub.i.i88.i, %add.i.i84.i
  %or.i52.i.i90.i = call i32 @llvm.fshl.i32(i32 %sub.i.i88.i, i32 %sub.i.i88.i, i32 11) #14
  %sub5.i.i91.i = sub i32 %xor3.i.i89.i, %or.i52.i.i90.i
  %xor6.i.i92.i = xor i32 %sub5.i.i91.i, %add1.i.i85.i
  %or.i53.i.i93.i = call i32 @llvm.fshl.i32(i32 %sub5.i.i91.i, i32 %sub5.i.i91.i, i32 25) #14
  %sub8.i.i94.i = sub i32 %xor6.i.i92.i, %or.i53.i.i93.i
  %xor9.i.i95.i = xor i32 %sub8.i.i94.i, %sub.i.i88.i
  %or.i54.i.i96.i = call i32 @llvm.fshl.i32(i32 %sub8.i.i94.i, i32 %sub8.i.i94.i, i32 16) #14
  %sub11.i.i97.i = sub i32 %xor9.i.i95.i, %or.i54.i.i96.i
  %xor12.i.i98.i = xor i32 %sub11.i.i97.i, %sub5.i.i91.i
  %or.i55.i.i99.i = call i32 @llvm.fshl.i32(i32 %sub11.i.i97.i, i32 %sub11.i.i97.i, i32 4) #14
  %sub14.i.i100.i = sub i32 %xor12.i.i98.i, %or.i55.i.i99.i
  %xor15.i.i101.i = xor i32 %sub14.i.i100.i, %sub8.i.i94.i
  %or.i56.i.i102.i = call i32 @llvm.fshl.i32(i32 %sub14.i.i100.i, i32 %sub14.i.i100.i, i32 14) #14
  %sub17.i.i103.i = sub i32 %xor15.i.i101.i, %or.i56.i.i102.i
  %xor18.i.i104.i = xor i32 %sub17.i.i103.i, %sub11.i.i97.i
  %or.i57.i.i105.i = call i32 @llvm.fshl.i32(i32 %sub17.i.i103.i, i32 %sub17.i.i103.i, i32 24) #14
  %sub20.i.i106.i = sub i32 %xor18.i.i104.i, %or.i57.i.i105.i
  br label %clusterip_hashfn.exit

sw.default.i:                                     ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %39) #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/ipv4/netfilter/ipt_CLUSTERIP.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 389, 0\0A.popsection", ""() #14, !srcloc !164
  unreachable

clusterip_hashfn.exit:                            ; preds = %sw.bb24.i, %sw.bb19.i, %sw.bb.i
  %hashval.0.i = phi i32 [ %sub20.i.i106.i, %sw.bb24.i ], [ %sub20.i.i82.i, %sw.bb19.i ], [ %sub20.i.i.i, %sw.bb.i ]
  %num_total_nodes.i = getelementptr inbounds %struct.clusterip_config, ptr %37, i32 0, i32 6
  %53 = ptrtoint ptr %num_total_nodes.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %num_total_nodes.i, align 4
  %conv.i.i72 = zext i32 %hashval.0.i to i64
  %conv1.i.i = zext i16 %54 to i64
  %mul.i.i = mul nuw nsw i64 %conv1.i.i, %conv.i.i72
  %shr.i.i = lshr i64 %mul.i.i, 32
  %conv2.i.i = trunc i64 %shr.i.i to i32
  %add44.i = add nuw nsw i32 %conv2.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cond = icmp eq i32 %and.i, 2
  br i1 %cond, label %sw.bb, label %clusterip_hashfn.exit.do.body_crit_edge

clusterip_hashfn.exit.do.body_crit_edge:          ; preds = %clusterip_hashfn.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

sw.bb:                                            ; preds = %clusterip_hashfn.exit
  call void @__sanitizer_cov_trace_pc() #16
  %mark = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 11
  %55 = ptrtoint ptr %mark to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add44.i, ptr %mark, align 8
  br label %do.body

do.body:                                          ; preds = %sw.bb, %clusterip_hashfn.exit.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clusterip_tg.__UNIQUE_ID_ddebug597, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clusterip_tg, %if.then15)) #14
          to label %do.end [label %if.then15], !srcloc !165

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %mark16 = getelementptr inbounds %struct.nf_conn, ptr %5, i32 0, i32 11
  %56 = ptrtoint ptr %mark16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mark16, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clusterip_tg.__UNIQUE_ID_ddebug597, ptr noundef nonnull @.str.13, i32 noundef %add44.i, i32 noundef %57) #14
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %58 = ptrtoint ptr %config76 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %config76, align 4
  %local_nodes.i = getelementptr inbounds %struct.clusterip_config, ptr %59, i32 0, i32 7
  %div3.i.i = lshr i32 %conv2.i.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %local_nodes.i, i32 %div3.i.i
  %60 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %conv2.i.i, 31
  %62 = shl nuw i32 1, %and.i.i
  %63 = and i32 %61, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool20.not = icmp eq i32 %63, 0
  br i1 %tobool20.not, label %do.body22, label %do.body39

do.body22:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clusterip_tg.__UNIQUE_ID_ddebug598, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clusterip_tg, %if.then34)) #14
          to label %cleanup [label %if.then34], !srcloc !165

if.then34:                                        ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clusterip_tg.__UNIQUE_ID_ddebug598, ptr noundef nonnull @.str.15) #14
  br label %cleanup

do.body39:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clusterip_tg.__UNIQUE_ID_ddebug599, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clusterip_tg, %if.then51)) #14
          to label %do.end54 [label %if.then51], !srcloc !165

if.then51:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clusterip_tg.__UNIQUE_ID_ddebug599, ptr noundef nonnull @.str.17) #14
  br label %do.end54

do.end54:                                         ; preds = %if.then51, %do.body39
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %64 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %64)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.clear = and i16 %bf.load, 8191
  store i16 %bf.clear, ptr %pkt_type, align 8
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %if.then34, %do.body22, %land.lhs.true.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge82, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end54 ], [ 0, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge82 ], [ 0, %if.then34 ], [ 0, %do.body22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clusterip_tg_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  %ip.addr.i = alloca i32, align 4
  %buffer.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %call = tail call fastcc ptr @clusterip_pernet(ptr noundef %3)
  %entryinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 2
  %4 = ptrtoint ptr %entryinfo to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %entryinfo, align 4
  %nft_compat = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 7
  %6 = ptrtoint ptr %nft_compat to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nft_compat, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %hook_users = getelementptr inbounds %struct.clusterip_net, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %hook_users to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hook_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp = icmp eq i32 %9, -1
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %hash_mode = getelementptr inbounds %struct.ipt_clusterip_tgt_info, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %hash_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %hash_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %switch = icmp ult i32 %11, 3
  br i1 %switch, label %if.end17, label %do.end13

do.end13:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %11) #17
  br label %cleanup

if.end17:                                         ; preds = %if.end3
  %dmsk = getelementptr inbounds %struct.ipt_ip, ptr %5, i32 0, i32 3
  %12 = ptrtoint ptr %dmsk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dmsk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %13)
  %cmp18.not = icmp eq i32 %13, -1
  br i1 %cmp18.not, label %lor.lhs.false, label %if.end17.do.end25_crit_edge

if.end17.do.end25_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end25

lor.lhs.false:                                    ; preds = %if.end17
  %dst = getelementptr inbounds %struct.ipt_ip, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp21 = icmp eq i32 %15, 0
  br i1 %cmp21, label %lor.lhs.false.do.end25_crit_edge, label %if.end28

lor.lhs.false.do.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end25

do.end25:                                         ; preds = %lor.lhs.false.do.end25_crit_edge, %if.end17.do.end25_crit_edge
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #17
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false
  %num_local_nodes = getelementptr inbounds %struct.ipt_clusterip_tgt_info, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %num_local_nodes to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %num_local_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %17)
  %cmp29 = icmp ugt i16 %17, 16
  %conv = zext i16 %17 to i32
  br i1 %cmp29, label %do.end34, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp42204.not = icmp eq i16 %17, 0
  br i1 %cmp42204.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %conv) #17
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0205 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.ipt_clusterip_tgt_info, ptr %1, i32 0, i32 4, i32 %i.0205
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx, align 2
  %conv44 = zext i16 %19 to i32
  %20 = add nsw i32 %conv44, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %20)
  %cmp45 = icmp ult i32 %20, -32
  br i1 %cmp45, label %do.end50, label %for.inc

do.end50:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %conv44.le = zext i16 %19 to i32
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, i32 noundef %i.0205, i32 noundef %conv44.le) #17
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0205, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %21 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %par, align 4
  %call61 = tail call fastcc ptr @clusterip_config_find_get(ptr noundef %22, i32 noundef %15, i32 noundef 1)
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.then63, label %if.else85

if.then63:                                        ; preds = %for.end
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %1, align 4
  %and = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool64.not = icmp eq i32 %and, 0
  br i1 %tobool64.not, label %do.end68, label %if.else

do.end68:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #16
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %dst) #17
  br label %cleanup

if.else:                                          ; preds = %if.then63
  %25 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %par, align 4
  %27 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dst, align 4
  %iniface = getelementptr inbounds %struct.ipt_ip, ptr %5, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip.addr.i)
  %29 = ptrtoint ptr %ip.addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ip.addr.i, align 4
  %call.i = tail call fastcc ptr @clusterip_pernet(ptr noundef %26) #14
  %30 = ptrtoint ptr %iniface to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %iniface, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp.i = icmp eq i8 %31, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #17
  br label %clusterip_config_init.exit.thread

if.end.i:                                         ; preds = %if.else
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %32 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 2848, i32 noundef 80) #19
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.clusterip_config_init.exit.thread_crit_edge, label %if.end7.i

if.end.i.clusterip_config_init.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %clusterip_config_init.exit.thread

if.end7.i:                                        ; preds = %if.end.i
  %call8.i = tail call ptr @dev_get_by_name(ptr noundef %26, ptr noundef %iniface) #14
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %do.end13.i, label %do.body1.i.i

do.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %call15.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %iniface) #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #14
  br label %clusterip_config_init.exit.thread

do.body1.i.i:                                     ; preds = %if.end7.i
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %call8.i, i32 0, i32 17
  %33 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ifindex.i, align 4
  %ifindex18.i = getelementptr inbounds %struct.clusterip_config, ptr %call7.i.i.i, i32 0, i32 5
  %35 = ptrtoint ptr %ifindex18.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %ifindex18.i, align 4
  %ifname.i = getelementptr inbounds %struct.clusterip_config, ptr %call7.i.i.i, i32 0, i32 13
  %call20.i = tail call ptr @strcpy(ptr noundef %ifname.i, ptr noundef nonnull %call8.i) #20
  %clustermac.i = getelementptr inbounds %struct.clusterip_config, ptr %call7.i.i.i, i32 0, i32 4
  %clustermac21.i = getelementptr inbounds %struct.ipt_clusterip_tgt_info, ptr %1, i32 0, i32 1
  %36 = call ptr @memcpy(ptr %clustermac.i, ptr %clustermac21.i, i32 6)
  %call24.i = tail call i32 @dev_mc_add(ptr noundef nonnull %call8.i, ptr noundef %clustermac.i) #14
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !167
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call8.i, i32 0, i32 118
  %38 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %40 = ptrtoint ptr %39 to i32
  %41 = tail call i32 @llvm.read_register.i32(metadata !150) #14
  %and.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %46, %40
  %47 = inttoptr i32 %add.i.i to ptr
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %add13.i.i = add i32 %49, -1
  store i32 %add13.i.i, ptr %47, align 4
  %50 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !168
  %and.i.i.i.i = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !169

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %37) #14, !srcloc !170
  %51 = ptrtoint ptr %ip.addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ip.addr.i, align 4
  %clusterip.i = getelementptr inbounds %struct.clusterip_config, ptr %call7.i.i.i, i32 0, i32 3
  %53 = ptrtoint ptr %clusterip.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %clusterip.i, align 8
  %num_total_nodes.i = getelementptr inbounds %struct.ipt_clusterip_tgt_info, ptr %1, i32 0, i32 2
  %54 = ptrtoint ptr %num_total_nodes.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %num_total_nodes.i, align 2
  %num_total_nodes25.i = getelementptr inbounds %struct.clusterip_config, ptr %call7.i.i.i, i32 0, i32 6
  %56 = ptrtoint ptr %num_total_nodes25.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %num_total_nodes25.i, align 8
  %57 = ptrtoint ptr %num_local_nodes to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %num_local_nodes, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %cmp8.not.i.i = icmp eq i16 %58, 0
  br i1 %cmp8.not.i.i, label %dev_put.exit.i.clusterip_config_init_nodelist.exit.i_crit_edge, label %for.body.lr.ph.i.i

dev_put.exit.i.clusterip_config_init_nodelist.exit.i_crit_edge: ; preds = %dev_put.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %clusterip_config_init_nodelist.exit.i

for.body.lr.ph.i.i:                               ; preds = %dev_put.exit.i
  %local_nodes3.i.i = getelementptr inbounds %struct.clusterip_config, ptr %call7.i.i.i, i32 0, i32 7
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %n.09.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i93.i = getelementptr %struct.ipt_clusterip_tgt_info, ptr %1, i32 0, i32 4, i32 %n.09.i.i
  %59 = ptrtoint ptr %arrayidx.i93.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %arrayidx.i93.i, align 2
  %conv2.i.i = zext i16 %60 to i32
  %sub.i.i = add nsw i32 %conv2.i.i, -1
  tail call void @_set_bit(i32 noundef %sub.i.i, ptr noundef %local_nodes3.i.i) #14
  %inc.i.i = add nuw nsw i32 %n.09.i.i, 1
  %61 = ptrtoint ptr %num_local_nodes to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %num_local_nodes, align 4
  %conv.i.i = zext i16 %62 to i32
  %cmp.i.i = icmp ult i32 %inc.i.i, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.clusterip_config_init_nodelist.exit.i_crit_edge

for.body.i.i.clusterip_config_init_nodelist.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %clusterip_config_init_nodelist.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

clusterip_config_init_nodelist.exit.i:            ; preds = %for.body.i.i.clusterip_config_init_nodelist.exit.i_crit_edge, %dev_put.exit.i.clusterip_config_init_nodelist.exit.i_crit_edge
  %63 = ptrtoint ptr %hash_mode to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %hash_mode, align 4
  %hash_mode26.i = getelementptr inbounds %struct.clusterip_config, ptr %call7.i.i.i, i32 0, i32 9
  %65 = ptrtoint ptr %hash_mode26.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %hash_mode26.i, align 4
  %hash_initval.i = getelementptr inbounds %struct.ipt_clusterip_tgt_info, ptr %1, i32 0, i32 6
  %66 = ptrtoint ptr %hash_initval.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hash_initval.i, align 4
  %hash_initval27.i = getelementptr inbounds %struct.clusterip_config, ptr %call7.i.i.i, i32 0, i32 10
  %68 = ptrtoint ptr %hash_initval27.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %hash_initval27.i, align 8
  %net28.i = getelementptr inbounds %struct.clusterip_config, ptr %call7.i.i.i, i32 0, i32 12
  %69 = ptrtoint ptr %net28.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %26, ptr %net28.i, align 4
  %refcount.i = getelementptr inbounds %struct.clusterip_config, ptr %call7.i.i.i, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  %70 = ptrtoint ptr %refcount.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile i32 1, ptr %refcount.i, align 8
  %lock.i = getelementptr inbounds %struct.clusterip_net, ptr %call.i, i32 0, i32 1
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #14
  %71 = ptrtoint ptr %ip.addr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ip.addr.i, align 4
  %call.i.i = tail call fastcc ptr @clusterip_pernet(ptr noundef %26) #14
  %call1.i.i = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i94.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i94.i, label %land.lhs.true.i.i, label %clusterip_config_init_nodelist.exit.i.for.cond.i.i.preheader_crit_edge

clusterip_config_init_nodelist.exit.i.for.cond.i.i.preheader_crit_edge: ; preds = %clusterip_config_init_nodelist.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i.preheader

land.lhs.true.i.i:                                ; preds = %clusterip_config_init_nodelist.exit.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i.preheader

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b29.i.i = load i1, ptr @__clusterip_config_find.__warned, align 1
  br i1 %.b29.i.i, label %land.lhs.true4.i.i.for.cond.i.i.preheader_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.for.cond.i.i.preheader_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i.preheader

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__clusterip_config_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 153, ptr noundef nonnull @.str.4) #14
  br label %for.cond.i.i.preheader

for.cond.i.i.preheader:                           ; preds = %if.then.i.i, %land.lhs.true4.i.i.for.cond.i.i.preheader_crit_edge, %land.lhs.true.i.i.for.cond.i.i.preheader_crit_edge, %clusterip_config_init_nodelist.exit.i.for.cond.i.i.preheader_crit_edge
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i95.i.for.cond.i.i_crit_edge, %for.cond.i.i.preheader
  %c.0.in.i.i = phi ptr [ %c.0.i.i, %for.body.i95.i.for.cond.i.i_crit_edge ], [ %call.i.i, %for.cond.i.i.preheader ]
  %73 = ptrtoint ptr %c.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %c.0.i.i = load volatile ptr, ptr %c.0.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %c.0.i.i, %call.i.i
  br i1 %cmp.not.i.i, label %for.cond.i.i.if.end32.i_crit_edge, label %for.body.i95.i

for.cond.i.i.if.end32.i_crit_edge:                ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i

for.body.i95.i:                                   ; preds = %for.cond.i.i
  %clusterip11.i.i = getelementptr inbounds %struct.clusterip_config, ptr %c.0.i.i, i32 0, i32 3
  %74 = ptrtoint ptr %clusterip11.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %clusterip11.i.i, align 4
  %cmp12.i.i = icmp eq i32 %75, %72
  br i1 %cmp12.i.i, label %__clusterip_config_find.exit.i, label %for.body.i95.i.for.cond.i.i_crit_edge

for.body.i95.i.for.cond.i.i_crit_edge:            ; preds = %for.body.i95.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.i

__clusterip_config_find.exit.i:                   ; preds = %for.body.i95.i
  %tobool30.not.i = icmp eq ptr %c.0.i.i, null
  br i1 %tobool30.not.i, label %__clusterip_config_find.exit.i.if.end32.i_crit_edge, label %__clusterip_config_find.exit.i.out_config_put.i_crit_edge

__clusterip_config_find.exit.i.out_config_put.i_crit_edge: ; preds = %__clusterip_config_find.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out_config_put.i

__clusterip_config_find.exit.i.if.end32.i_crit_edge: ; preds = %__clusterip_config_find.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32.i

if.end32.i:                                       ; preds = %__clusterip_config_find.exit.i.if.end32.i_crit_edge, %for.cond.i.i.if.end32.i_crit_edge
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %call7.i.i.i, ptr noundef %call.i, ptr noundef %77) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end32.i.list_add_rcu.exit.i_crit_edge

if.end32.i.list_add_rcu.exit.i_crit_edge:         ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #16
  %78 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %77, ptr %call7.i.i.i, align 8
  %prev2.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call.i, ptr %prev2.i.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !171
  %80 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %call7.i.i.i, ptr %call.i, align 4
  %prev37.i.i.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %81 = ptrtoint ptr %prev37.i.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call7.i.i.i, ptr %prev37.i.i.i, align 4
  br label %list_add_rcu.exit.i

list_add_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.end32.i.list_add_rcu.exit.i_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buffer.i) #14
  %82 = call ptr @memset(ptr %buffer.i, i32 255, i32 16)
  %call35.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buffer.i, ptr noundef nonnull @.str.52, ptr noundef nonnull %ip.addr.i) #14
  %mutex.i = getelementptr inbounds %struct.clusterip_net, ptr %call.i, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #14
  %procdir.i = getelementptr inbounds %struct.clusterip_net, ptr %call.i, i32 0, i32 3
  %83 = ptrtoint ptr %procdir.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %procdir.i, align 4
  %call37.i = call ptr @proc_create_data(ptr noundef nonnull %buffer.i, i16 noundef zeroext 384, ptr noundef %84, ptr noundef nonnull @clusterip_proc_ops, ptr noundef nonnull %call7.i.i.i) #14
  %pde.i = getelementptr inbounds %struct.clusterip_config, ptr %call7.i.i.i, i32 0, i32 8
  %85 = ptrtoint ptr %pde.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call37.i, ptr %pde.i, align 8
  call void @mutex_unlock(ptr noundef %mutex.i) #14
  %86 = ptrtoint ptr %pde.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %pde.i, align 8
  %tobool40.not.i = icmp eq ptr %87, null
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buffer.i) #14
  br i1 %tobool40.not.i, label %err43.i, label %clusterip_config_init.exit

err43.i:                                          ; preds = %list_add_rcu.exit.i
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #14
  %call.i.i97.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %call7.i.i.i) #14
  br i1 %call.i.i97.i, label %if.end.i.i98.i, label %err43.i.list_del_rcu.exit.i_crit_edge

err43.i.list_del_rcu.exit.i_crit_edge:            ; preds = %err43.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_rcu.exit.i

if.end.i.i98.i:                                   ; preds = %err43.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %prev.i.i.i, align 4
  %90 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %call7.i.i.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %89, ptr %prev1.i.i.i.i, align 4
  %93 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %93)
  store volatile ptr %91, ptr %89, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i98.i, %err43.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %94 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  br label %out_config_put.i

out_config_put.i:                                 ; preds = %list_del_rcu.exit.i, %__clusterip_config_find.exit.i.out_config_put.i_crit_edge
  %err.1.i = phi ptr [ inttoptr (i32 -12 to ptr), %list_del_rcu.exit.i ], [ inttoptr (i32 -16 to ptr), %__clusterip_config_find.exit.i.out_config_put.i_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #14
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !172
  call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %95 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !173
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %95, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i99.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %out_config_put.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.clusterip_config_init.exit.thread_crit_edge, label %if.then10.i.i.i.i.i, !prof !163

if.end5.i.i.i.i.i.clusterip_config_init.exit.thread_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %clusterip_config_init.exit.thread

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %clusterip_config_init.exit.thread

if.then.i99.i:                                    ; preds = %out_config_put.i
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !174
  %rcu.i.i = getelementptr inbounds %struct.clusterip_config, ptr %call7.i.i.i, i32 0, i32 11
  call void @call_rcu(ptr noundef %rcu.i.i, ptr noundef nonnull @clusterip_config_rcu_free) #14
  br label %clusterip_config_init.exit.thread

clusterip_config_init.exit.thread:                ; preds = %if.then.i99.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.clusterip_config_init.exit.thread_crit_edge, %do.end13.i, %if.end.i.clusterip_config_init.exit.thread_crit_edge, %do.end.i
  %retval.0.i.ph = phi ptr [ %err.1.i, %if.then.i99.i ], [ %err.1.i, %if.then10.i.i.i.i.i ], [ %err.1.i, %if.end5.i.i.i.i.i.clusterip_config_init.exit.thread_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.clusterip_config_init.exit.thread_crit_edge ], [ inttoptr (i32 -2 to ptr), %do.end13.i ], [ inttoptr (i32 -22 to ptr), %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.addr.i)
  br label %if.then81

clusterip_config_init.exit:                       ; preds = %list_add_rcu.exit.i
  %entries.i = getelementptr inbounds %struct.clusterip_config, ptr %call7.i.i.i, i32 0, i32 2
  %call.i.i.i96.i = call zeroext i1 @__kasan_check_write(ptr noundef %entries.i, i32 noundef 4) #14
  %96 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile i32 1, ptr %entries.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip.addr.i)
  %cmp.i185 = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i185, label %clusterip_config_init.exit.if.then81_crit_edge, label %clusterip_config_init.exit.if.end91_crit_edge

clusterip_config_init.exit.if.end91_crit_edge:    ; preds = %clusterip_config_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

clusterip_config_init.exit.if.then81_crit_edge:   ; preds = %clusterip_config_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then81

if.then81:                                        ; preds = %clusterip_config_init.exit.if.then81_crit_edge, %clusterip_config_init.exit.thread
  %retval.0.i201 = phi ptr [ %retval.0.i.ph, %clusterip_config_init.exit.thread ], [ %call7.i.i.i, %clusterip_config_init.exit.if.then81_crit_edge ]
  %97 = ptrtoint ptr %retval.0.i201 to i32
  br label %cleanup

if.else85:                                        ; preds = %for.end
  %clustermac = getelementptr inbounds %struct.clusterip_config, ptr %call61, i32 0, i32 4
  %clustermac86 = getelementptr inbounds %struct.ipt_clusterip_tgt_info, ptr %1, i32 0, i32 1
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(6) %clustermac, ptr noundef dereferenceable(6) %clustermac86, i32 6) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool88.not = icmp eq i32 %bcmp, 0
  br i1 %tobool88.not, label %if.else85.if.end91_crit_edge, label %if.then89

if.else85.if.end91_crit_edge:                     ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end91

if.then89:                                        ; preds = %if.else85
  tail call fastcc void @clusterip_config_entry_put(ptr noundef nonnull %call61)
  %refcount.i186 = getelementptr inbounds %struct.clusterip_config, ptr %call61, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i186, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !172
  tail call void @llvm.prefetch.p0(ptr %refcount.i186, i32 1, i32 3, i32 1) #14
  %98 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i186, ptr %refcount.i186, i32 1, ptr elementtype(i32) %refcount.i186) #14, !srcloc !173
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %98, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then89
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !163

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i186, i32 noundef 3) #14
  br label %cleanup

if.then.i:                                        ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !174
  %rcu.i = getelementptr inbounds %struct.clusterip_config, ptr %call61, i32 0, i32 11
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @clusterip_config_rcu_free) #14
  br label %cleanup

if.end91:                                         ; preds = %if.else85.if.end91_crit_edge, %clusterip_config_init.exit.if.end91_crit_edge
  %config.0 = phi ptr [ %call61, %if.else85.if.end91_crit_edge ], [ %call7.i.i.i, %clusterip_config_init.exit.if.end91_crit_edge ]
  %99 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 6
  %101 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %family, align 4
  %call93 = call i32 @nf_ct_netns_get(ptr noundef %100, i8 noundef zeroext %102) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %cmp94 = icmp slt i32 %call93, 0
  br i1 %cmp94, label %do.end99, label %if.end104

do.end99:                                         ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #16
  %103 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %family, align 4
  %conv102 = zext i8 %104 to i32
  %call103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv102) #17
  call fastcc void @clusterip_config_entry_put(ptr noundef %config.0)
  call fastcc void @clusterip_config_put(ptr noundef %config.0)
  br label %cleanup

if.end104:                                        ; preds = %if.end91
  %105 = ptrtoint ptr %hook_users to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %hook_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp106 = icmp eq i32 %106, 0
  br i1 %cmp106, label %if.then108, label %if.end104.if.end117_crit_edge

if.end104.if.end117_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end117

if.then108:                                       ; preds = %if.end104
  %107 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %par, align 4
  %call110 = call i32 @nf_register_net_hook(ptr noundef %108, ptr noundef nonnull @cip_arp_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.then113, label %if.then108.if.end117_crit_edge

if.then108.if.end117_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end117

if.then113:                                       ; preds = %if.then108
  call fastcc void @clusterip_config_entry_put(ptr noundef %config.0)
  %refcount.i188 = getelementptr inbounds %struct.clusterip_config, ptr %config.0, i32 0, i32 1
  %call.i.i.i.i.i.i189 = call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i188, i32 noundef 4) #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !172
  call void @llvm.prefetch.p0(ptr %refcount.i188, i32 1, i32 3, i32 1) #14
  %109 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i188, ptr %refcount.i188, i32 1, ptr elementtype(i32) %refcount.i188) #14, !srcloc !173
  %asmresult.i.i.i.i.i.i.i190 = extractvalue { i32, i32, i32 } %109, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i190)
  %cmp.i.i.i.i191 = icmp eq i32 %asmresult.i.i.i.i.i.i.i190, 1
  br i1 %cmp.i.i.i.i191, label %if.then.i196, label %if.end5.i.i.i.i193

if.end5.i.i.i.i193:                               ; preds = %if.then113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i190)
  %.not.i.i.i.i192 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i190, 0
  br i1 %.not.i.i.i.i192, label %if.end5.i.i.i.i193.clusterip_config_put.exit198_crit_edge, label %if.then10.i.i.i.i194, !prof !163

if.end5.i.i.i.i193.clusterip_config_put.exit198_crit_edge: ; preds = %if.end5.i.i.i.i193
  call void @__sanitizer_cov_trace_pc() #16
  br label %clusterip_config_put.exit198

if.then10.i.i.i.i194:                             ; preds = %if.end5.i.i.i.i193
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount.i188, i32 noundef 3) #14
  br label %clusterip_config_put.exit198

if.then.i196:                                     ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !174
  %rcu.i195 = getelementptr inbounds %struct.clusterip_config, ptr %config.0, i32 0, i32 11
  call void @call_rcu(ptr noundef %rcu.i195, ptr noundef nonnull @clusterip_config_rcu_free) #14
  br label %clusterip_config_put.exit198

clusterip_config_put.exit198:                     ; preds = %if.then.i196, %if.then10.i.i.i.i194, %if.end5.i.i.i.i193.clusterip_config_put.exit198_crit_edge
  %110 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %par, align 4
  %112 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %family, align 4
  call void @nf_ct_netns_put(ptr noundef %111, i8 noundef zeroext %113) #14
  br label %cleanup

if.end117:                                        ; preds = %if.then108.if.end117_crit_edge, %if.end104.if.end117_crit_edge
  %ret.0 = phi i32 [ %call110, %if.then108.if.end117_crit_edge ], [ %call93, %if.end104.if.end117_crit_edge ]
  %114 = ptrtoint ptr %hook_users to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %hook_users, align 4
  %inc119 = add i32 %115, 1
  store i32 %inc119, ptr %hook_users, align 4
  %clusterip_deprecated_warning = getelementptr inbounds %struct.clusterip_net, ptr %call, i32 0, i32 2
  %116 = ptrtoint ptr %clusterip_deprecated_warning to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %clusterip_deprecated_warning, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool120.not = icmp eq i8 %117, 0
  br i1 %tobool120.not, label %do.end124, label %if.end117.if.end128_crit_edge

if.end117.if.end128_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end128

do.end124:                                        ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #17
  %118 = ptrtoint ptr %clusterip_deprecated_warning to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %clusterip_deprecated_warning, align 4
  br label %if.end128

if.end128:                                        ; preds = %do.end124, %if.end117.if.end128_crit_edge
  %config129 = getelementptr inbounds %struct.ipt_clusterip_tgt_info, ptr %1, i32 0, i32 7
  %119 = ptrtoint ptr %config129 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %config.0, ptr %config129, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end128, %clusterip_config_put.exit198, %do.end99, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.then81, %do.end68, %do.end50, %do.end34, %do.end25, %do.end13, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ -22, %do.end13 ], [ -22, %do.end25 ], [ -22, %do.end34 ], [ -22, %do.end50 ], [ %call93, %do.end99 ], [ %call110, %clusterip_config_put.exit198 ], [ %ret.0, %if.end128 ], [ %97, %if.then81 ], [ -22, %do.end68 ], [ -75, %if.end.cleanup_crit_edge ], [ -22, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -22, %if.then10.i.i.i.i ], [ -22, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clusterip_tg_destroy(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %call = tail call fastcc ptr @clusterip_pernet(ptr noundef %3)
  %config = getelementptr inbounds %struct.ipt_clusterip_tgt_info, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  tail call fastcc void @clusterip_config_entry_put(ptr noundef %5)
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 4
  %refcount.i = getelementptr inbounds %struct.clusterip_config, ptr %7, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !172
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !173
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.clusterip_config_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !163

if.end5.i.i.i.i.clusterip_config_put.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %clusterip_config_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %clusterip_config_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !174
  %rcu.i = getelementptr inbounds %struct.clusterip_config, ptr %7, i32 0, i32 11
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @clusterip_config_rcu_free) #14
  br label %clusterip_config_put.exit

clusterip_config_put.exit:                        ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.clusterip_config_put.exit_crit_edge
  %9 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 3
  %11 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %family, align 4
  tail call void @nf_ct_netns_put(ptr noundef %10, i8 noundef zeroext %12) #14
  %hook_users = getelementptr inbounds %struct.clusterip_net, ptr %call, i32 0, i32 5
  %13 = ptrtoint ptr %hook_users to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hook_users, align 4
  %dec = add i32 %14, -1
  store i32 %dec, ptr %hook_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then, label %clusterip_config_put.exit.if.end_crit_edge

clusterip_config_put.exit.if.end_crit_edge:       ; preds = %clusterip_config_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %clusterip_config_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  %15 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %par, align 4
  tail call void @nf_unregister_net_hook(ptr noundef %16, ptr noundef nonnull @cip_arp_ops) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %clusterip_config_put.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @clusterip_config_find_get(ptr noundef %net, i32 noundef %clusterip, i32 noundef %entry1) unnamed_addr #5 align 64 {
entry:
  %old.i.i.i36 = alloca i32, align 4
  %old.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @local_bh_disable() #14
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_bh_lock_map) #14
  %call.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %entry.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock_bh.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock_bh.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock_bh.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock_bh.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock_bh.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock_bh.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 750, ptr noundef nonnull @.str.45) #14
  br label %rcu_read_lock_bh.exit

rcu_read_lock_bh.exit:                            ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock_bh.exit_crit_edge, %land.lhs.true.i.rcu_read_lock_bh.exit_crit_edge, %entry.rcu_read_lock_bh.exit_crit_edge
  %call.i31 = tail call fastcc ptr @clusterip_pernet(ptr noundef %net) #14
  %call1.i32 = tail call i32 @rcu_read_lock_any_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i32)
  %tobool.not.i33 = icmp eq i32 %call1.i32, 0
  br i1 %tobool.not.i33, label %land.lhs.true.i34, label %rcu_read_lock_bh.exit.for.cond.i.preheader_crit_edge

rcu_read_lock_bh.exit.for.cond.i.preheader_crit_edge: ; preds = %rcu_read_lock_bh.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.preheader

land.lhs.true.i34:                                ; preds = %rcu_read_lock_bh.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i34.for.cond.i.preheader_crit_edge, label %land.lhs.true4.i

land.lhs.true.i34.for.cond.i.preheader_crit_edge: ; preds = %land.lhs.true.i34
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.preheader

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i34
  %.b29.i = load i1, ptr @__clusterip_config_find.__warned, align 1
  br i1 %.b29.i, label %land.lhs.true4.i.for.cond.i.preheader_crit_edge, label %if.then.i35

land.lhs.true4.i.for.cond.i.preheader_crit_edge:  ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i.preheader

if.then.i35:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__clusterip_config_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 153, ptr noundef nonnull @.str.4) #14
  br label %for.cond.i.preheader

for.cond.i.preheader:                             ; preds = %if.then.i35, %land.lhs.true4.i.for.cond.i.preheader_crit_edge, %land.lhs.true.i34.for.cond.i.preheader_crit_edge, %rcu_read_lock_bh.exit.for.cond.i.preheader_crit_edge
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.cond.i.preheader
  %c.0.in.i = phi ptr [ %c.0.i, %for.body.i.for.cond.i_crit_edge ], [ %call.i31, %for.cond.i.preheader ]
  %0 = ptrtoint ptr %c.0.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %c.0.i = load volatile ptr, ptr %c.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %c.0.i, %call.i31
  br i1 %cmp.not.i, label %for.cond.i.if.end25_crit_edge, label %for.body.i

for.cond.i.if.end25_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

for.body.i:                                       ; preds = %for.cond.i
  %clusterip11.i = getelementptr inbounds %struct.clusterip_config, ptr %c.0.i, i32 0, i32 3
  %1 = ptrtoint ptr %clusterip11.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %clusterip11.i, align 4
  %cmp12.i = icmp eq i32 %2, %clusterip
  br i1 %cmp12.i, label %__clusterip_config_find.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

__clusterip_config_find.exit:                     ; preds = %for.body.i
  %tobool.not = icmp eq ptr %c.0.i, null
  br i1 %tobool.not, label %__clusterip_config_find.exit.if.end25_crit_edge, label %if.then

__clusterip_config_find.exit.if.end25_crit_edge:  ; preds = %__clusterip_config_find.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then:                                          ; preds = %__clusterip_config_find.exit
  %pde = getelementptr inbounds %struct.clusterip_config, ptr %c.0.i, i32 0, i32 8
  %3 = ptrtoint ptr %pde to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pde, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.then.if.end25_crit_edge, label %if.else

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.else:                                          ; preds = %if.then
  %refcount = getelementptr inbounds %struct.clusterip_config, ptr %c.0.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i) #14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcount, i32 noundef 4) #14
  %5 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %refcount, align 4
  br label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, %if.else
  %7 = phi i32 [ %6, %if.else ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge ]
  %8 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %old.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i.i, label %do.body.i.i.i.if.end4.i.i.i_crit_edge, label %do.cond.i.i.i

do.body.i.i.i.if.end4.i.i.i_crit_edge:            ; preds = %do.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

do.cond.i.i.i:                                    ; preds = %do.body.i.i.i
  %add.i.i.i = add i32 %7, 1
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  %call.i3.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i, i32 noundef 4) #14
  %9 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i
  %11 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 %10, i32 %add.i.i.i, ptr elementtype(i32) %refcount) #14, !srcloc !175
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i:       ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %11, 1
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %10
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge, !prof !163

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.do.body.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.if.end4.i.i.i_crit_edge, %do.body.i.i.i.if.end4.i.i.i_crit_edge
  %12 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i, align 4
  %add5.i.i.i = add i32 %13, 1
  %14 = or i32 %add5.i.i.i, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i, label %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge, label %if.then10.i.i.i, !prof !163

if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge: ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit

if.then10.i.i.i:                                  ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 0) #14
  %15 = ptrtoint ptr %old.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %old.i.i.i, align 4
  br label %refcount_inc_not_zero.exit

refcount_inc_not_zero.exit:                       ; preds = %if.then10.i.i.i, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge
  %16 = phi i32 [ %13, %if.end4.i.i.i.refcount_inc_not_zero.exit_crit_edge ], [ %.pr, %if.then10.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.i.i.i.not = icmp eq i32 %16, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i) #14
  br i1 %tobool12.i.i.i.not, label %refcount_inc_not_zero.exit.if.end25_crit_edge, label %if.else9, !prof !169

refcount_inc_not_zero.exit.if.end25_crit_edge:    ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.else9:                                         ; preds = %refcount_inc_not_zero.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %entry1)
  %tobool10.not = icmp eq i32 %entry1, 0
  br i1 %tobool10.not, label %if.else9.if.end25_crit_edge, label %if.then11

if.else9.if.end25_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then11:                                        ; preds = %if.else9
  %entries = getelementptr inbounds %struct.clusterip_config, ptr %c.0.i, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i36) #14
  %call.i.i.i.i.i.i37 = call zeroext i1 @__kasan_check_read(ptr noundef %entries, i32 noundef 4) #14
  %17 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %entries, align 4
  br label %do.body.i.i.i39

do.body.i.i.i39:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49.do.body.i.i.i39_crit_edge, %if.then11
  %19 = phi i32 [ %18, %if.then11 ], [ %asmresult3.i.i.i.i.i.i47, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49.do.body.i.i.i39_crit_edge ]
  %20 = ptrtoint ptr %old.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %old.i.i.i36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i.i38 = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i.i38, label %do.body.i.i.i39.if.end4.i.i.i52_crit_edge, label %do.cond.i.i.i43

do.body.i.i.i39.if.end4.i.i.i52_crit_edge:        ; preds = %do.body.i.i.i39
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i52

do.cond.i.i.i43:                                  ; preds = %do.body.i.i.i39
  %add.i.i.i40 = add i32 %19, 1
  %call.i.i.i.i.i41 = call zeroext i1 @__kasan_check_write(ptr noundef %entries, i32 noundef 4) #14
  %call.i3.i.i.i.i42 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i36, i32 noundef 4) #14
  %21 = ptrtoint ptr %old.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old.i.i.i36, align 4
  call void @llvm.prefetch.p0(ptr %entries, i32 1, i32 3, i32 1) #14
  br label %do.body.i.i.i.i.i.i46

do.body.i.i.i.i.i.i46:                            ; preds = %do.body.i.i.i.i.i.i46.do.body.i.i.i.i.i.i46_crit_edge, %do.cond.i.i.i43
  %23 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %entries, ptr %entries, i32 %22, i32 %add.i.i.i40, ptr elementtype(i32) %entries) #14, !srcloc !175
  %asmresult.i.i.i.i.i.i44 = extractvalue { i32, i32 } %23, 0
  %tobool.not.i.i.i.i.i.i45 = icmp eq i32 %asmresult.i.i.i.i.i.i44, 0
  br i1 %tobool.not.i.i.i.i.i.i45, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49, label %do.body.i.i.i.i.i.i46.do.body.i.i.i.i.i.i46_crit_edge

do.body.i.i.i.i.i.i46.do.body.i.i.i.i.i.i46_crit_edge: ; preds = %do.body.i.i.i.i.i.i46
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i.i.i.i46

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49:     ; preds = %do.body.i.i.i.i.i.i46
  %asmresult3.i.i.i.i.i.i47 = extractvalue { i32, i32 } %23, 1
  %cmp.not.i.i.i.i.i48 = icmp eq i32 %asmresult3.i.i.i.i.i.i47, %22
  br i1 %cmp.not.i.i.i.i.i48, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49.if.end4.i.i.i52_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49.do.body.i.i.i39_crit_edge, !prof !163

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49.do.body.i.i.i39_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i.i.i39

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49.if.end4.i.i.i52_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.i.i.i52

if.end4.i.i.i52:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i49.if.end4.i.i.i52_crit_edge, %do.body.i.i.i39.if.end4.i.i.i52_crit_edge
  %24 = ptrtoint ptr %old.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %old.i.i.i36, align 4
  %add5.i.i.i50 = add i32 %25, 1
  %26 = or i32 %add5.i.i.i50, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i51 = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i51, label %if.end4.i.i.i52.refcount_inc_not_zero.exit55_crit_edge, label %if.then10.i.i.i53, !prof !163

if.end4.i.i.i52.refcount_inc_not_zero.exit55_crit_edge: ; preds = %if.end4.i.i.i52
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc_not_zero.exit55

if.then10.i.i.i53:                                ; preds = %if.end4.i.i.i52
  call void @__sanitizer_cov_trace_pc() #16
  call void @refcount_warn_saturate(ptr noundef %entries, i32 noundef 0) #14
  %27 = ptrtoint ptr %old.i.i.i36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr66 = load i32, ptr %old.i.i.i36, align 4
  br label %refcount_inc_not_zero.exit55

refcount_inc_not_zero.exit55:                     ; preds = %if.then10.i.i.i53, %if.end4.i.i.i52.refcount_inc_not_zero.exit55_crit_edge
  %28 = phi i32 [ %25, %if.end4.i.i.i52.refcount_inc_not_zero.exit55_crit_edge ], [ %.pr66, %if.then10.i.i.i53 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool12.i.i.i54.not = icmp eq i32 %28, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i36) #14
  br i1 %tobool12.i.i.i54.not, label %if.then21, label %refcount_inc_not_zero.exit55.if.end25_crit_edge, !prof !169

refcount_inc_not_zero.exit55.if.end25_crit_edge:  ; preds = %refcount_inc_not_zero.exit55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end25

if.then21:                                        ; preds = %refcount_inc_not_zero.exit55
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @clusterip_config_put(ptr noundef nonnull %c.0.i)
  br label %if.end25

if.end25:                                         ; preds = %if.then21, %refcount_inc_not_zero.exit55.if.end25_crit_edge, %if.else9.if.end25_crit_edge, %refcount_inc_not_zero.exit.if.end25_crit_edge, %if.then.if.end25_crit_edge, %__clusterip_config_find.exit.if.end25_crit_edge, %for.cond.i.if.end25_crit_edge
  %c.0 = phi ptr [ null, %if.then21 ], [ %c.0.i, %refcount_inc_not_zero.exit55.if.end25_crit_edge ], [ %c.0.i, %if.else9.if.end25_crit_edge ], [ null, %__clusterip_config_find.exit.if.end25_crit_edge ], [ null, %if.then.if.end25_crit_edge ], [ null, %refcount_inc_not_zero.exit.if.end25_crit_edge ], [ null, %for.cond.i.if.end25_crit_edge ]
  %call.i56 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i56, label %if.end25.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true.i59

if.end25.rcu_read_unlock_bh.exit_crit_edge:       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock_bh.exit

land.lhs.true.i59:                                ; preds = %if.end25
  %call1.i57 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i59.rcu_read_unlock_bh.exit_crit_edge, label %land.lhs.true2.i61

land.lhs.true.i59.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock_bh.exit

land.lhs.true2.i61:                               ; preds = %land.lhs.true.i59
  %.b4.i60 = load i1, ptr @rcu_read_unlock_bh.__warned, align 1
  br i1 %.b4.i60, label %land.lhs.true2.i61.rcu_read_unlock_bh.exit_crit_edge, label %if.then.i62

land.lhs.true2.i61.rcu_read_unlock_bh.exit_crit_edge: ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock_bh.exit

if.then.i62:                                      ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock_bh.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 761, ptr noundef nonnull @.str.46) #14
  br label %rcu_read_unlock_bh.exit

rcu_read_unlock_bh.exit:                          ; preds = %if.then.i62, %land.lhs.true2.i61.rcu_read_unlock_bh.exit_crit_edge, %land.lhs.true.i59.rcu_read_unlock_bh.exit_crit_edge, %if.end25.rcu_read_unlock_bh.exit_crit_edge
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_bh_lock_map) #14
  call fastcc void @local_bh_enable() #14
  ret ptr %c.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clusterip_config_entry_put(ptr noundef %c) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %net = getelementptr inbounds %struct.clusterip_config, ptr %c, i32 0, i32 12
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %call = tail call fastcc ptr @clusterip_pernet(ptr noundef %1)
  tail call fastcc void @local_bh_disable()
  %entries = getelementptr inbounds %struct.clusterip_config, ptr %c, i32 0, i32 2
  %lock = getelementptr inbounds %struct.clusterip_net, ptr %call, i32 0, i32 1
  %call1 = tail call zeroext i1 @refcount_dec_and_lock(ptr noundef %entries, ptr noundef %lock) #14
  br i1 %call1, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %c) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_rcu.exit_crit_edge

if.then.list_del_rcu.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %c, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %c, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %if.then.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %c, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #14
  tail call fastcc void @local_bh_enable()
  %mutex = getelementptr inbounds %struct.clusterip_net, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %procdir = getelementptr inbounds %struct.clusterip_net, ptr %call, i32 0, i32 3
  %9 = ptrtoint ptr %procdir to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %procdir, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %list_del_rcu.exit.if.end_crit_edge, label %if.then3

list_del_rcu.exit.if.end_crit_edge:               ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then3:                                         ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #16
  %pde = getelementptr inbounds %struct.clusterip_config, ptr %c, i32 0, i32 8
  %11 = ptrtoint ptr %pde to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pde, align 4
  tail call void @proc_remove(ptr noundef %12) #14
  br label %if.end

if.end:                                           ; preds = %if.then3, %list_del_rcu.exit.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @local_bh_enable()
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clusterip_config_put(ptr noundef %c) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %refcount = getelementptr inbounds %struct.clusterip_config, ptr %c, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !172
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #14, !srcloc !173
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !163

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef 3) #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !174
  %rcu = getelementptr inbounds %struct.clusterip_config, ptr %c, i32 0, i32 11
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @clusterip_config_rcu_free) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_netns_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_register_net_hook(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_netns_put(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_create_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clusterip_proc_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @seq_open(ptr noundef %file, ptr noundef nonnull @clusterip_seq_ops) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %private, align 8
  %refcount.i = getelementptr inbounds %struct.clusterip_config, ptr %3, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !176
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !169

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !163

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #14
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clusterip_proc_write(ptr nocapture noundef readonly %file, ptr noundef %input, i32 noundef %size, ptr nocapture noundef readnone %ofs) #3 align 64 {
entry:
  %buffer = alloca [11 x i8], align 1
  %nodenum = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  %i_private.i = getelementptr inbounds %struct.inode, ptr %1, i32 0, i32 54
  %2 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i_private.i, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %buffer) #14
  %4 = getelementptr inbounds [11 x i8], ptr %buffer, i32 0, i32 1
  %5 = call ptr @memset(ptr %buffer, i32 255, i32 11)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nodenum) #14
  %6 = ptrtoint ptr %nodenum to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %nodenum, align 4, !annotation !162
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %size)
  %cmp = icmp ugt i32 %size, 10
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.then.i.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then.i.i.i:                                    ; preds = %entry
  call void @__check_object_size(ptr noundef nonnull %buffer, i32 noundef %size, i1 noundef zeroext false) #14
  call void @__might_fault(ptr noundef nonnull @.str.56, i32 noundef 156) #14
  %call.i.i = call zeroext i1 @should_fail_usercopy() #14
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %7 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %input, i32 %size, i32 -1226833920) #21, !srcloc !177
  %asmresult.i.i = extractvalue { i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !163

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buffer, i32 noundef %size) #14
  %8 = call i32 @llvm.read_register.i32(metadata !150) #14
  %and.i.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 4
  %10 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !178
  %and.i.i.i.i = and i32 %10, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #14, !srcloc !179
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !180
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buffer, ptr noundef %input, i32 noundef %size) #14
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %10) #14, !srcloc !179
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #14, !srcloc !180
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %size, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %size, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end4, label %if.then11.i.i, !prof !163

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %sub.i.i = sub i32 %size, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buffer, i32 %sub.i.i
  %11 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end4:                                          ; preds = %if.end.i.i
  %arrayidx = getelementptr [11 x i8], ptr %buffer, i32 0, i32 %size
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx, align 1
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %buffer, align 1
  %15 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.70)
  switch i8 %14, label %if.end4.cleanup_crit_edge [
    i8 43, label %if.then8
    i8 45, label %if.then23
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then8:                                         ; preds = %if.end4
  %call.i = call i32 @_kstrtoul(ptr noundef %4, i32 noundef 10, ptr noundef nonnull %nodenum) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %if.end13, label %if.then8.cleanup_crit_edge

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.then8
  %16 = ptrtoint ptr %nodenum to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nodenum, align 4
  %conv14 = trunc i32 %17 to i16
  %conv.i = and i32 %17, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv14)
  %cmp.i = icmp eq i16 %conv14, 0
  br i1 %cmp.i, label %if.end13.cleanup_crit_edge, label %lor.lhs.false.i

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end13
  %num_total_nodes.i = getelementptr inbounds %struct.clusterip_config, ptr %3, i32 0, i32 6
  %18 = ptrtoint ptr %num_total_nodes.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %num_total_nodes.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %conv14)
  %cmp4.i = icmp ult i16 %19, %conv14
  br i1 %cmp4.i, label %lor.lhs.false.i.cleanup_crit_edge, label %clusterip_add_node.exit

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

clusterip_add_node.exit:                          ; preds = %lor.lhs.false.i
  %sub.i = add nsw i32 %conv.i, -1
  %local_nodes.i = getelementptr inbounds %struct.clusterip_config, ptr %3, i32 0, i32 7
  %call.i47 = call i32 @_test_and_set_bit(i32 noundef %sub.i, ptr noundef %local_nodes.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i47)
  %tobool.not.i.not = icmp eq i32 %call.i47, 0
  br i1 %tobool.not.i.not, label %clusterip_add_node.exit.if.end36_crit_edge, label %clusterip_add_node.exit.cleanup_crit_edge

clusterip_add_node.exit.cleanup_crit_edge:        ; preds = %clusterip_add_node.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

clusterip_add_node.exit.if.end36_crit_edge:       ; preds = %clusterip_add_node.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

if.then23:                                        ; preds = %if.end4
  %call.i48 = call i32 @_kstrtoul(ptr noundef %4, i32 noundef 10, ptr noundef nonnull %nodenum) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i48)
  %tobool27.not = icmp eq i32 %call.i48, 0
  br i1 %tobool27.not, label %if.end29, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end29:                                         ; preds = %if.then23
  %20 = ptrtoint ptr %nodenum to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nodenum, align 4
  %conv30 = trunc i32 %21 to i16
  %conv.i49 = and i32 %21, 65535
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv30)
  %cmp.i50 = icmp eq i16 %conv30, 0
  br i1 %cmp.i50, label %if.end29.cleanup_crit_edge, label %lor.lhs.false.i53

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false.i53:                                ; preds = %if.end29
  %num_total_nodes.i51 = getelementptr inbounds %struct.clusterip_config, ptr %3, i32 0, i32 6
  %22 = ptrtoint ptr %num_total_nodes.i51 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %num_total_nodes.i51, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %conv30)
  %cmp4.i52 = icmp ult i16 %23, %conv30
  br i1 %cmp4.i52, label %lor.lhs.false.i53.cleanup_crit_edge, label %clusterip_del_node.exit

lor.lhs.false.i53.cleanup_crit_edge:              ; preds = %lor.lhs.false.i53
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

clusterip_del_node.exit:                          ; preds = %lor.lhs.false.i53
  %sub.i54 = add nsw i32 %conv.i49, -1
  %local_nodes.i55 = getelementptr inbounds %struct.clusterip_config, ptr %3, i32 0, i32 7
  %call.i56 = call i32 @_test_and_clear_bit(i32 noundef %sub.i54, ptr noundef %local_nodes.i55) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56)
  %tobool.not.i57 = icmp eq i32 %call.i56, 0
  br i1 %tobool.not.i57, label %clusterip_del_node.exit.cleanup_crit_edge, label %clusterip_del_node.exit.if.end36_crit_edge

clusterip_del_node.exit.if.end36_crit_edge:       ; preds = %clusterip_del_node.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end36

clusterip_del_node.exit.cleanup_crit_edge:        ; preds = %clusterip_del_node.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end36:                                         ; preds = %clusterip_del_node.exit.if.end36_crit_edge, %clusterip_add_node.exit.if.end36_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %clusterip_del_node.exit.cleanup_crit_edge, %lor.lhs.false.i53.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %clusterip_add_node.exit.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then11.i.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.end36 ], [ -5, %entry.cleanup_crit_edge ], [ %call.i, %if.then8.cleanup_crit_edge ], [ -12, %clusterip_add_node.exit.cleanup_crit_edge ], [ %call.i48, %if.then23.cleanup_crit_edge ], [ -2, %clusterip_del_node.exit.cleanup_crit_edge ], [ -5, %if.end4.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -12, %lor.lhs.false.i.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ -2, %lor.lhs.false.i53.cleanup_crit_edge ], [ -2, %if.end29.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nodenum) #14
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %buffer) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clusterip_proc_release(ptr noundef %inode, ptr noundef %file) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private.i, align 4
  %call1 = tail call i32 @seq_release(ptr noundef %inode, ptr noundef %file) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %refcount.i = getelementptr inbounds %struct.clusterip_config, ptr %1, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !172
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #14, !srcloc !173
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i, !prof !163

if.end5.i.i.i.i.if.end_crit_edge:                 ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #14
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !174
  %rcu.i = getelementptr inbounds %struct.clusterip_config, ptr %1, i32 0, i32 11
  tail call void @call_rcu(ptr noundef %rcu.i, ptr noundef nonnull @clusterip_config_rcu_free) #14
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @clusterip_seq_start(ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %local_nodes1 = getelementptr inbounds %struct.clusterip_config, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %local_nodes1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %local_nodes1, align 4
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %3) #14
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %conv281 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %conv281)
  %cmp.not = icmp slt i64 %5, %conv281
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 16) #19
  %tobool284.not = icmp eq ptr %call7.i, null
  br i1 %tobool284.not, label %if.end.cleanup_crit_edge, label %if.end287

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end287:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %pos, align 8
  %conv288 = trunc i64 %8 to i32
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv288, ptr %call7.i, align 8
  %weight290 = getelementptr inbounds %struct.clusterip_seq_position, ptr %call7.i, i32 0, i32 1
  %10 = ptrtoint ptr %weight290 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call.i, ptr %weight290, align 4
  %11 = tail call i32 @llvm.cttz.i32(i32 %3, i1 true), !range !181
  %12 = add nuw nsw i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %iszero = icmp eq i32 %3, 0
  %ffs = select i1 %iszero, i32 0, i32 %12
  %bit = getelementptr inbounds %struct.clusterip_seq_position, ptr %call7.i, i32 0, i32 2
  %13 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %ffs, ptr %bit, align 8
  %val = getelementptr inbounds %struct.clusterip_seq_position, ptr %call7.i, i32 0, i32 3
  %14 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %3, ptr %val, align 4
  %sub = add nsw i32 %ffs, -1
  tail call void @_clear_bit(i32 noundef %sub, ptr noundef %val) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end287, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i, %if.end287 ], [ null, %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clusterip_seq_stop(ptr nocapture noundef readnone %s, ptr noundef %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.i = icmp ugt ptr %v, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %v) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @clusterip_seq_next(ptr nocapture noundef readnone %s, ptr noundef %v, ptr nocapture noundef writeonly %pos) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %v, align 4
  %conv = zext i32 %inc to i64
  %2 = ptrtoint ptr %pos to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %pos, align 8
  %weight = getelementptr inbounds %struct.clusterip_seq_position, ptr %v, i32 0, i32 1
  %3 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %weight, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %4)
  %cmp.not = icmp ult i32 %inc, %4
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef %v) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %val = getelementptr inbounds %struct.clusterip_seq_position, ptr %v, i32 0, i32 3
  %5 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val, align 4
  %7 = tail call i32 @llvm.cttz.i32(i32 %6, i1 true), !range !181
  %8 = add nuw nsw i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %iszero = icmp eq i32 %6, 0
  %ffs = select i1 %iszero, i32 0, i32 %8
  %bit = getelementptr inbounds %struct.clusterip_seq_position, ptr %v, i32 0, i32 2
  %9 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %ffs, ptr %bit, align 4
  %sub = add nsw i32 %ffs, -1
  tail call void @_clear_bit(i32 noundef %sub, ptr noundef %val) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ %v, %if.end ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clusterip_seq_show(ptr noundef %s, ptr nocapture noundef readonly %v) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %v, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 44) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bit = getelementptr inbounds %struct.clusterip_seq_position, ptr %v, i32 0, i32 2
  %2 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bit, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.53, i32 noundef %3) #14
  %4 = ptrtoint ptr %v to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %v, align 4
  %weight = getelementptr inbounds %struct.clusterip_seq_position, ptr %v, i32 0, i32 1
  %6 = ptrtoint ptr %weight to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %weight, align 4
  %sub = add i32 %7, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %sub)
  %cmp2 = icmp eq i32 %5, %sub
  br i1 %cmp2, label %if.then3, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @seq_putc(ptr noundef %s, i8 noundef zeroext 10) #14
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_release(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @refcount_dec_and_lock(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clusterip_config_rcu_free(ptr noundef %head) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %net = getelementptr i8, ptr %head, i32 8
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %ifname = getelementptr i8, ptr %head, i32 12
  %call = tail call ptr @dev_get_by_name(ptr noundef %1, ptr noundef %ifname) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.body1.i:                                       ; preds = %entry
  %clustermac = getelementptr i8, ptr %head, i32 -32
  %call2 = tail call i32 @dev_mc_del(ptr noundef nonnull %call, ptr noundef %clustermac) #14
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !167
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 118
  %3 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcpu_refcnt.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !150) #14
  %and.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %11, %5
  %12 = inttoptr i32 %add.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add13.i = add i32 %14, -1
  store i32 %add13.i, ptr %12, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !168
  %and.i.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !169

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #14, !srcloc !170
  br label %if.end

if.end:                                           ; preds = %dev_put.exit, %entry.if.end_crit_edge
  %add.ptr = getelementptr i8, ptr %head, i32 -52
  tail call void @kfree(ptr noundef %add.ptr) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clusterip_arp_mangle(ptr nocapture noundef readnone %priv, ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %net1 = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %4 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %net1, align 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %7)
  %cmp.not = icmp eq i16 %7, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ar_pro = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %ar_pro to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ar_pro, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %9)
  %cmp4.not = icmp eq i16 %9, 2048
  br i1 %cmp4.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %ar_pln = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %ar_pln to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ar_pln, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %11)
  %cmp8.not = icmp eq i8 %11, 4
  br i1 %cmp8.not, label %lor.lhs.false10, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false6
  %ar_hln = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %ar_hln to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ar_hln, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %13)
  %cmp12.not = icmp eq i8 %13, 6
  br i1 %cmp12.not, label %if.end, label %lor.lhs.false10.cleanup_crit_edge

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false10
  %ar_op = getelementptr inbounds %struct.arphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %ar_op to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %ar_op, align 2
  %.off = add i16 %15, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  br i1 %switch, label %if.end22, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %add.ptr = getelementptr %struct.arphdr, ptr %add.ptr.i.i, i32 1
  %src_ip = getelementptr %struct.arphdr, ptr %add.ptr.i.i, i32 1, i32 4
  %16 = ptrtoint ptr %src_ip to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %src_ip, align 1
  %call23 = tail call fastcc ptr @clusterip_config_find_get(ptr noundef %5, i32 noundef %17, i32 noundef 0)
  %tobool.not = icmp eq ptr %call23, null
  br i1 %tobool.not, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %ifindex = getelementptr inbounds %struct.clusterip_config, ptr %call23, i32 0, i32 5
  %18 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ifindex, align 4
  %out = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %20 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %out, align 4
  %ifindex26 = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 17
  %22 = ptrtoint ptr %ifindex26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ifindex26, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %23)
  %cmp27.not = icmp eq i32 %19, %23
  br i1 %cmp27.not, label %if.end39, label %do.body

do.body:                                          ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clusterip_arp_mangle.__UNIQUE_ID_ddebug600, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clusterip_arp_mangle, %if.then34)) #14
          to label %cleanup.sink.split [label %if.then34], !srcloc !165

if.then34:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %24 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ifindex, align 4
  %26 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %out, align 4
  %ifindex37 = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %ifindex37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ifindex37, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clusterip_arp_mangle.__UNIQUE_ID_ddebug600, ptr noundef nonnull @.str.59, i32 noundef %25, i32 noundef %29) #14
  br label %cleanup.sink.split

if.end39:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  %clustermac = getelementptr inbounds %struct.clusterip_config, ptr %call23, i32 0, i32 4
  %30 = ptrtoint ptr %ar_hln to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %ar_hln, align 2
  %conv42 = zext i8 %31 to i32
  %32 = call ptr @memcpy(ptr %add.ptr, ptr %clustermac, i32 %conv42)
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end39, %if.then34, %do.body
  tail call fastcc void @clusterip_config_put(ptr noundef nonnull %call23)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_unregister_net_hook(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clusterip_net_init(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @clusterip_pernet(ptr noundef %net)
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %call, ptr %call, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.clusterip_net, ptr %call, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.60, ptr noundef nonnull @clusterip_net_init.__key, i16 noundef signext 3) #14
  %proc_net = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 17
  %2 = ptrtoint ptr %proc_net to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %proc_net, align 4
  %call2 = tail call ptr @proc_mkdir(ptr noundef nonnull @.str.10, ptr noundef %3) #14
  %procdir = getelementptr inbounds %struct.clusterip_net, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %procdir to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %procdir, align 4
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end6, label %do.body8

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #17
  br label %cleanup

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %mutex = getelementptr inbounds %struct.clusterip_net, ptr %call, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.64, ptr noundef nonnull @clusterip_net_init.__key.63) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body8, %do.end6
  %retval.0 = phi i32 [ 0, %do.body8 ], [ -12, %do.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clusterip_net_exit(ptr noundef %net) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @clusterip_pernet(ptr noundef %net)
  %mutex = getelementptr inbounds %struct.clusterip_net, ptr %call, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %procdir = getelementptr inbounds %struct.clusterip_net, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %procdir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %procdir, align 4
  tail call void @proc_remove(ptr noundef %1) #14
  %2 = ptrtoint ptr %procdir to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %procdir, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_target(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 68)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }
attributes #18 = { nobuiltin }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !11, !12, !13, !14, !16, !18, !20, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !36, !38, !40, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !98, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !114, !116, !118, !120, !121, !123, !125, !127, !129, !130, !131, !132, !134, !136, !137, !139, !140, !141, !142, !144, !145, !147, !148, !149}
!llvm.named.register.sp = !{!150}
!llvm.module.flags = !{!151, !152, !153, !154, !155, !156, !157, !158}
!llvm.ident = !{!159}

!0 = !{ptr @__UNIQUE_ID_file589, !1, !"__UNIQUE_ID_file589", i1 false, i1 false}
!1 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 34, i32 1}
!2 = !{ptr @__UNIQUE_ID_license590, !1, !"__UNIQUE_ID_license590", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author591, !4, !"__UNIQUE_ID_author591", i1 false, i1 false}
!4 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 35, i32 1}
!5 = !{ptr @__UNIQUE_ID_description592, !6, !"__UNIQUE_ID_description592", i1 false, i1 false}
!6 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 36, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 918, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @clusterip_tg_exit._entry, !8, !"_entry", i1 false, i1 false}
!12 = !{ptr @clusterip_tg_exit._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @__initcall__kmod_ipt_CLUSTERIP__601_928_clusterip_tg_init6, !15, !"__initcall__kmod_ipt_CLUSTERIP__601_928_clusterip_tg_init6", i1 false, i1 false}
!15 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 928, i32 1}
!16 = !{ptr @__exitcall_clusterip_tg_exit, !17, !"__exitcall_clusterip_tg_exit", i1 false, i1 false}
!17 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 929, i32 1}
!18 = !{ptr @cip_netdev_notifier, !19, !"cip_netdev_notifier", i1 false, i1 false}
!19 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 884, i32 30}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 208, i32 2}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!25 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @clusterip_net_id, !35, !"clusterip_net_id", i1 false, i1 false}
!35 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 87, i32 21}
!36 = !{ptr @clusterip_tg_reg, !37, !"clusterip_tg_reg", i1 false, i1 false}
!37 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 594, i32 25}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 455, i32 2}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @clusterip_tg.__UNIQUE_ID_ddebug597, !39, !"__UNIQUE_ID_ddebug597", i1 false, i1 false}
!43 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 457, i32 3}
!46 = !{ptr @clusterip_tg.__UNIQUE_ID_ddebug598, !45, !"__UNIQUE_ID_ddebug598", i1 false, i1 false}
!47 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 460, i32 2}
!50 = !{ptr @clusterip_tg.__UNIQUE_ID_ddebug599, !49, !"__UNIQUE_ID_ddebug599", i1 false, i1 false}
!51 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 367, i32 3}
!54 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @clusterip_hashfn._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @clusterip_hashfn._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 388, i32 3}
!59 = !{ptr @clusterip_hashfn._entry.20, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @clusterip_hashfn._entry_ptr.22, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 478, i32 3}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @clusterip_tg_check._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @clusterip_tg_check._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @clusterip_tg_check._entry.25, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 488, i32 3}
!68 = !{ptr @clusterip_tg_check._entry_ptr.26, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 494, i32 3}
!71 = !{ptr @clusterip_tg_check._entry.27, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @clusterip_tg_check._entry_ptr.29, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 498, i32 3}
!75 = !{ptr @clusterip_tg_check._entry.30, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @clusterip_tg_check._entry_ptr.32, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 504, i32 4}
!79 = !{ptr @clusterip_tg_check._entry.33, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @clusterip_tg_check._entry_ptr.35, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.37, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 513, i32 4}
!83 = !{ptr @clusterip_tg_check._entry.36, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @clusterip_tg_check._entry_ptr.38, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.40, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 531, i32 3}
!87 = !{ptr @clusterip_tg_check._entry.39, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @clusterip_tg_check._entry_ptr.41, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 552, i32 3}
!91 = !{ptr @clusterip_tg_check._entry.42, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @clusterip_tg_check._entry_ptr.44, !90, !"_entry_ptr", i1 false, i1 false}
!93 = distinct !{null, !94, !"__warned", i1 false, i1 false}
!94 = !{!"../include/linux/rcupdate.h", i32 749, i32 2}
!95 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 153, i32 2}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../include/linux/rcupdate.h", i32 760, i32 2}
!100 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 248, i32 3}
!103 = !{ptr @.str.48, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @clusterip_config_init._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @clusterip_config_init._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 258, i32 3}
!108 = !{ptr @clusterip_config_init._entry.49, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @clusterip_config_init._entry_ptr.51, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 290, i32 19}
!112 = !{ptr @clusterip_proc_ops, !113, !"clusterip_proc_ops", i1 false, i1 false}
!113 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 835, i32 30}
!114 = !{ptr @clusterip_seq_ops, !115, !"clusterip_seq_ops", i1 false, i1 false}
!115 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 766, i32 36}
!116 = !{ptr @.str.53, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 758, i32 16}
!118 = distinct !{null, !119, !"__already_done", i1 false, i1 false}
!119 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!120 = distinct !{null, !119, !"<string literal>", i1 false, i1 false}
!121 = distinct !{null, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!125 = !{ptr @cip_arp_ops, !126, !"cip_arp_ops", i1 false, i1 false}
!126 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 80, i32 33}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 673, i32 3}
!129 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @clusterip_arp_mangle.__UNIQUE_ID_ddebug600, !128, !"__UNIQUE_ID_ddebug600", i1 false, i1 false}
!131 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @clusterip_net_ops, !133, !"clusterip_net_ops", i1 false, i1 false}
!133 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 877, i32 33}
!134 = !{ptr @clusterip_net_init.__key, !135, !"__key", i1 false, i1 false}
!135 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 851, i32 2}
!136 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 856, i32 3}
!139 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @clusterip_net_init._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @clusterip_net_init._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @clusterip_net_init.__key.63, !143, !"__key", i1 false, i1 false}
!143 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 859, i32 2}
!144 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../net/ipv4/netfilter/ipt_CLUSTERIP.c", i32 904, i32 2}
!147 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @clusterip_tg_init._entry, !146, !"_entry", i1 false, i1 false}
!149 = !{ptr @clusterip_tg_init._entry_ptr, !146, !"_entry_ptr", i1 false, i1 false}
!150 = !{!"sp"}
!151 = !{i32 1, !"wchar_size", i32 2}
!152 = !{i32 1, !"min_enum_size", i32 4}
!153 = !{i32 8, !"branch-target-enforcement", i32 0}
!154 = !{i32 8, !"sign-return-address", i32 0}
!155 = !{i32 8, !"sign-return-address-all", i32 0}
!156 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!157 = !{i32 7, !"uwtable", i32 1}
!158 = !{i32 7, !"frame-pointer", i32 2}
!159 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!160 = !{i64 2149377403}
!161 = !{i64 2149377669}
!162 = !{!"auto-init"}
!163 = !{!"branch_weights", i32 2000, i32 1}
!164 = !{i64 2158165709, i64 2158166208, i64 2158165746, i64 2158165802, i64 2158165836, i64 2158165860, i64 2158165901, i64 2158165922, i64 2158165950, i64 2158165984}
!165 = !{i64 2148974621, i64 2148974626, i64 2148974639, i64 2148974683, i64 2148974717, i64 2148974738}
!166 = !{i8 0, i8 2}
!167 = !{i64 764944, i64 765005}
!168 = !{i64 767676}
!169 = !{!"branch_weights", i32 1, i32 2000}
!170 = !{i64 767961}
!171 = !{i64 2151740681}
!172 = !{i64 2148450799}
!173 = !{i64 2148365239, i64 2148365271, i64 2148365300, i64 2148365334, i64 2148365365, i64 2148365388}
!174 = !{i64 2149326913}
!175 = !{i64 845777, i64 845801, i64 845822, i64 845839, i64 845856}
!176 = !{i64 2148362774, i64 2148362806, i64 2148362835, i64 2148362869, i64 2148362900, i64 2148362923}
!177 = !{i64 2152434766, i64 2152434791}
!178 = !{i64 4930321}
!179 = !{i64 4930518}
!180 = !{i64 2152415751}
!181 = !{i32 0, i32 33}
