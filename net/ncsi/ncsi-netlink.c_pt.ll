; ModuleID = '/llk/IR_all_yes/net/ncsi/ncsi-netlink.c_pt.bc'
source_filename = "../net/ncsi/ncsi-netlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ncsi_request = type { i8, i8, i32, ptr, ptr, ptr, %struct.timer_list, i8, i32, i32, %struct.nlmsghdr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.123, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
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
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.123 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.ncsi_pkt_hdr = type { i8, i8, i8, i8, i8, i8, i16, [2 x i32] }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.113 }
%union.anon.113 = type { [6 x i32], [24 x i8] }
%struct.sock_common = type { %union.anon.97, %union.anon.99, %union.anon.100, i16, i8, i8, i32, %union.anon.102, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.105, [0 x i32], %union.anon.106, i16, i16, %union.anon.107, %struct.refcount_struct, [0 x i32], %union.anon.108 }
%union.anon.97 = type { i64 }
%union.anon.99 = type { i32 }
%union.anon.100 = type { i32 }
%union.anon.102 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.105 = type { i32 }
%union.anon.106 = type { %struct.hlist_node }
%union.anon.107 = type { i32 }
%union.anon.108 = type { i32 }
%struct.ncsi_dev_priv = type { %struct.ncsi_dev, i32, i32, %struct.spinlock, i32, i32, %struct.list_head, ptr, [256 x %struct.ncsi_request], i32, i32, ptr, ptr, %struct.list_head, %struct.work_struct, %struct.packet_type, %struct.list_head, %struct.list_head, i8, i8, i32 }
%struct.ncsi_dev = type { i32, i32, ptr, ptr }
%struct.packet_type = type { i16, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.ncsi_package = type { i8, [16 x i8], ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, i8, i32, ptr }
%struct.ncsi_cmd_arg = type { ptr, i8, i8, i8, i8, i16, i32, %union.anon.146, ptr, ptr }
%union.anon.146 = type { [4 x i32] }

@ncsi_genl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"NCSI\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 8, i32 0, i8 0, i8 0, i8 6, i8 0, ptr @ncsi_genl_policy, ptr null, ptr null, ptr null, ptr @ncsi_ops, ptr null, ptr null }, section ".data..ro_after_init", align 4
@__initcall__kmod_ncsi_netlink__477_777_ncsi_init_netlink4 = internal global ptr @ncsi_init_netlink, section ".initcall4.init", align 4
@ncsi_genl_policy = internal constant { [9 x %struct.nla_policy], [56 x i8] } { [9 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 2048, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@ncsi_ops = internal constant { [6 x %struct.genl_small_ops], [56 x i8] } { [6 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @ncsi_pkg_info_nl, ptr @ncsi_pkg_info_all_nl, i8 1, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @ncsi_set_interface_nl, ptr null, i8 2, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @ncsi_clear_interface_nl, ptr null, i8 3, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @ncsi_send_cmd_nl, ptr null, i8 4, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @ncsi_set_package_mask_nl, ptr null, i8 5, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @ncsi_set_channel_mask_nl, ptr null, i8 6, i8 0, i8 1, i8 3 }], [56 x i8] zeroinitializer }, align 32
@ndp_from_ifindex._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 46, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013NCSI netlink: No device for ifindex %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ndp_from_ifindex\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/ncsi/ncsi-netlink.c\00", [40 x i8] zeroinitializer }, align 32
@ndp_from_ifindex._entry_ptr = internal global ptr @ndp_from_ifindex._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NCSI: No package with id %u\0A\00", [35 x i8] zeroinitializer }, align 32
@ncsi_write_package_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@ncsi_write_package_info.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@ncsi_pkg_info_all_nl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__nlmsg_parse.__msg = internal constant [22 x i8] c"Invalid header length\00", align 1
@ncsi_set_interface_nl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_set_interface_nl.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NCSI: Channel %u does not exist!\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Set package 0x%x, channel 0x%x as preferred\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Set package 0x%x as preferred\0A\00", [33 x i8] zeroinitializer }, align 32
@ncsi_clear_interface_nl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.11 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"NCSI: Cleared preferred package/channel\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NCSI: no command to send %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"NCSI: Error %d sending command\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"NCSI: Can't use multiple packages without HWA\0A\00", [49 x i8] zeroinitializer }, align 32
@ncsi_set_channel_mask_nl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_set_channel_mask_nl.__warned.15 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@ncsi_set_channel_mask_nl.__UNIQUE_ID_ddebug475 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 -83, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ncsi_netlink\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ncsi_set_channel_mask_nl\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NCSI: Channel %u set as preferred channel\0A\00", [53 x i8] zeroinitializer }, align 32
@ncsi_set_channel_mask_nl.__UNIQUE_ID_ddebug476 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 -81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"NCSI: Package %u set to all channels disabled\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"NCSI: Multi-channel enabled on package %u\0A\00", [53 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"ncsi_genl_policy\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 23, i32 32 }
@___asan_gen_.24 = private unnamed_addr constant [9 x i8] c"ncsi_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 723, i32 36 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 46, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 104, i32 30 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 109, i32 2 }
@___asan_gen_.46 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 991, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 318, i32 9 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 343, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 346, i32 30 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 386, i32 29 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 447, i32 30 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 470, i32 7 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 619, i32 8 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 691, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 699, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [27 x i8] c"../net/ncsi/ncsi-netlink.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 708, i32 8 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__initcall__kmod_ncsi_netlink__477_777_ncsi_init_netlink4, ptr @ndp_from_ifindex._entry, ptr @ndp_from_ifindex._entry_ptr, ptr @ncsi_genl_policy, ptr @ncsi_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncsi_genl_policy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ncsi_ops to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ndp_from_ifindex._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ncsi_send_netlink_rsp(ptr nocapture noundef readonly %nr, ptr noundef readonly %np, ptr noundef readonly %nc) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i54 = alloca i32, align 4
  %tmp.i52 = alloca i32, align 4
  %tmp.i50 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %rsp = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 5
  %0 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rsp, align 4
  %2 = getelementptr inbounds %struct.anon, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %4, i32 0, i32 127
  %5 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nd_net.i, align 4
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3844, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %snd_portid = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 9
  %7 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %snd_portid, align 4
  %snd_seq = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 8
  %9 = ptrtoint ptr %snd_seq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %snd_seq, align 4
  %call2 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef %8, i32 noundef %10, ptr noundef nonnull @ncsi_genl_family, i32 noundef 0, i8 noundef zeroext 4) #10
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %rsp, align 4
  %13 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 17
  %16 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %18 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  %tobool8.not = icmp eq ptr %np, null
  br i1 %tobool8.not, label %if.end5.if.end11_crit_edge, label %if.then9

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %np to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %np, align 4
  %conv = zext i8 %20 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i50) #10
  %21 = ptrtoint ptr %tmp.i50 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %tmp.i50, align 4
  %call.i51 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i50) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i50) #10
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end5.if.end11_crit_edge
  %tobool12.not = icmp eq ptr %nc, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %nc to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %nc, align 8
  %conv15 = zext i8 %23 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i52) #10
  %24 = ptrtoint ptr %tmp.i52 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %conv15, ptr %tmp.i52, align 4
  %call.i53 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i52) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i52) #10
  br label %if.end18

if.else:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i54) #10
  %25 = ptrtoint ptr %tmp.i54 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 31, ptr %tmp.i54, align 4
  %call.i55 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i54) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i54) #10
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then13
  %26 = ptrtoint ptr %rsp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rsp, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %27, i32 0, i32 19
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %call21 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 5, i32 noundef %29, ptr noundef %31) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %err

if.end24:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr1.i = getelementptr i8, ptr %call2, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %34 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %35 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %snd_portid, align 4
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 21
  %37 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %genl_sock.i, align 4
  %call.i.i = call i32 @netlink_unicast(ptr noundef %38, ptr noundef nonnull %call.i.i.i, i32 noundef %36, i32 noundef 64) #10
  %39 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #10
  br label %cleanup

err:                                              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end24, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %err ], [ %39, %if.end24 ], [ -90, %if.then4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ncsi_send_netlink_timeout(ptr nocapture noundef readonly %nr, ptr noundef readonly %np, ptr noundef readonly %nc) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i50 = alloca i32, align 4
  %tmp.i48 = alloca i32, align 4
  %tmp.i46 = alloca i32, align 4
  %tmp.i44 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3844, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %snd_portid = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 9
  %0 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snd_portid, align 4
  %snd_seq = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 8
  %2 = ptrtoint ptr %snd_seq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %snd_seq, align 4
  %call1 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef %1, i32 noundef %3, ptr noundef nonnull @ncsi_genl_family, i32 noundef 0, i8 noundef zeroext 4) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %cmd = getelementptr inbounds %struct.ncsi_request, ptr %nr, i32 0, i32 4
  %4 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cmd, align 4
  %6 = getelementptr inbounds %struct.anon, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 127
  %9 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nd_net.i, align 4
  %ifindex = getelementptr inbounds %struct.net_device, ptr %8, i32 0, i32 17
  %11 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ifindex, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %13 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  %tobool8.not = icmp eq ptr %np, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %np to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %np, align 4
  %conv = zext i8 %15 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i44) #10
  %16 = ptrtoint ptr %tmp.i44 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %tmp.i44, align 4
  %call.i45 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i44) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i44) #10
  br label %if.end14

if.else:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cmd, align 4
  %data = getelementptr inbounds %struct.sk_buff, ptr %18, i32 0, i32 19
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %channel = getelementptr inbounds %struct.ncsi_pkt_hdr, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %channel, align 1
  %23 = lshr i8 %22, 5
  %24 = zext i8 %23 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i46) #10
  %25 = ptrtoint ptr %tmp.i46 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %tmp.i46, align 4
  %call.i47 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i46) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i46) #10
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then9
  %tobool15.not = icmp eq ptr %nc, null
  br i1 %tobool15.not, label %if.else20, label %if.then16

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %nc to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %nc, align 8
  %conv18 = zext i8 %27 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i48) #10
  %28 = ptrtoint ptr %tmp.i48 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %conv18, ptr %tmp.i48, align 4
  %call.i49 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i48) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i48) #10
  br label %if.end22

if.else20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i50) #10
  %29 = ptrtoint ptr %tmp.i50 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 31, ptr %tmp.i50, align 4
  %call.i51 = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i50) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i50) #10
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then16
  %add.ptr1.i = getelementptr i8, ptr %call1, i32 -20
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %30 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %32 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %33 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %snd_portid, align 4
  %genl_sock.i = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 21
  %35 = ptrtoint ptr %genl_sock.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %genl_sock.i, align 4
  %call.i.i = call i32 @netlink_unicast(ptr noundef %36, ptr noundef nonnull %call.i.i.i, i32 noundef %34, i32 noundef 64) #10
  %37 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %37, %if.end22 ], [ -90, %if.then3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ncsi_send_netlink_err(ptr nocapture noundef readonly %dev, i32 noundef %snd_seq, i32 noundef %snd_portid, ptr nocapture noundef readonly %nlhdr, i32 noundef %err) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 127
  %0 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nd_net.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end.nlmsg_put.exit_crit_edge

if.end.nlmsg_put.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsg_put.exit

skb_tailroom.exit.i:                              ; preds = %if.end
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %4 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %5 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 36
  br i1 %cmp.i, label %skb_tailroom.exit.i.nlmsg_put.exit_crit_edge, label %if.end.i, !prof !71

skb_tailroom.exit.i.nlmsg_put.exit_crit_edge:     ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsg_put.exit

if.end.i:                                         ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %snd_portid, i32 noundef %snd_seq, i32 noundef 2, i32 noundef 20, i32 noundef 0) #10
  br label %nlmsg_put.exit

nlmsg_put.exit:                                   ; preds = %if.end.i, %skb_tailroom.exit.i.nlmsg_put.exit_crit_edge, %if.end.nlmsg_put.exit_crit_edge
  %retval.0.i = phi ptr [ %call3.i, %if.end.i ], [ null, %skb_tailroom.exit.i.nlmsg_put.exit_crit_edge ], [ null, %if.end.nlmsg_put.exit_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %retval.0.i, i32 16
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %err, ptr %add.ptr.i, align 4
  %msg = getelementptr i8, ptr %retval.0.i, i32 20
  %9 = call ptr @memcpy(ptr %msg, ptr %nlhdr, i32 16)
  %tail.i.i14 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i14, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %retval.0.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %12 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub.ptr.sub.i, ptr %retval.0.i, align 4
  %genl_sock = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 21
  %13 = ptrtoint ptr %genl_sock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %genl_sock, align 4
  %call.i = tail call i32 @netlink_unicast(ptr noundef %14, ptr noundef nonnull %call.i.i, i32 noundef %snd_portid, i32 noundef 64) #10
  %15 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #10
  br label %cleanup

cleanup:                                          ; preds = %nlmsg_put.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %15, %nlmsg_put.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_init_netlink() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @ncsi_genl_family) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_pkg_info_nl(ptr nocapture noundef readnone %msg, ptr noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %arrayidx7 = getelementptr ptr, ptr %1, i32 3
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %6 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %_net.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end10.cleanup_crit_edge, label %if.end.i

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %if.end10
  %call.i = tail call ptr @dev_get_by_index(ptr noundef nonnull %7, i32 noundef %9) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %do.end.i, label %do.body1.i.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %9) #13
  br label %cleanup

do.body1.i.i:                                     ; preds = %if.end.i
  %call5.i = tail call ptr @ncsi_find_dev(ptr noundef nonnull %call.i) #10
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !72
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %11 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !61) #10
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
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !73
  %and.i.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.ndp_from_ifindex.exit_crit_edge, !prof !71

do.body1.i.i.ndp_from_ifindex.exit_crit_edge:     ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ndp_from_ifindex.exit

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %ndp_from_ifindex.exit

ndp_from_ifindex.exit:                            ; preds = %if.then28.i.i, %do.body1.i.i.ndp_from_ifindex.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #10, !srcloc !74
  %tobool15.not = icmp eq ptr %call5.i, null
  br i1 %tobool15.not, label %ndp_from_ifindex.exit.cleanup_crit_edge, label %if.end17

ndp_from_ifindex.exit.cleanup_crit_edge:          ; preds = %ndp_from_ifindex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end17:                                         ; preds = %ndp_from_ifindex.exit
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 3844, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool19.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %24 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %snd_portid, align 4
  %26 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %info, align 4
  %call22 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef %25, i32 noundef %27, ptr noundef nonnull @ncsi_genl_family, i32 noundef 0, i8 noundef zeroext 1) #10
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #10
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %28 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %attrs, align 4
  %arrayidx27 = getelementptr ptr, ptr %29, i32 3
  %30 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx27, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i68 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %add.ptr.i.i68, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %34 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool30.not73 = icmp eq ptr %35, null
  %tobool30.not = select i1 %cmp.i, i1 true, i1 %tobool30.not73
  br i1 %tobool30.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #10
  br label %cleanup

if.end32:                                         ; preds = %if.end25
  %call33 = tail call fastcc i32 @ncsi_write_package_info(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %call5.i, i32 noundef %33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @nla_nest_cancel(ptr noundef nonnull %call.i.i.i, ptr noundef nonnull %35)
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #10
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %37 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i, ptr %35, align 2
  %add.ptr1.i = getelementptr i8, ptr %call22, i32 -20
  %39 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %39 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %40 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %sub.ptr.sub.i.i, ptr %add.ptr1.i, align 4
  %41 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %_net.i, align 4
  %43 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %42, i32 0, i32 21
  %45 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i70 = tail call i32 @netlink_unicast(ptr noundef %46, ptr noundef nonnull %call.i.i.i, i32 noundef %44, i32 noundef 64) #10
  %47 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i70, i32 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then35, %if.then31, %if.then24, %if.end17.cleanup_crit_edge, %ndp_from_ifindex.exit.cleanup_crit_edge, %do.end.i, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.then35 ], [ %47, %if.end36 ], [ -90, %if.then31 ], [ -90, %if.then24 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -19, %ndp_from_ifindex.exit.cleanup_crit_edge ], [ -12, %if.end17.cleanup_crit_edge ], [ -19, %do.end.i ], [ -19, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_pkg_info_all_nl(ptr noundef %skb, ptr nocapture noundef %cb) #0 align 64 {
entry:
  %attrs = alloca [9 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %attrs) #10
  %0 = call ptr @memset(ptr %attrs, i32 255, i32 36)
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %1 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %nlh, align 4
  %3 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @ncsi_genl_family, i32 0, i32 1), align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %2, align 4
  %add.i.i.i = add i32 %3, 20
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %add.i.i.i)
  %cmp.i.i = icmp ult i32 %5, %add.i.i.i
  br i1 %cmp.i.i, label %genlmsg_parse_deprecated.exit.thread, label %genlmsg_parse_deprecated.exit

genlmsg_parse_deprecated.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @__nlmsg_parse.__msg) #10
  br label %cleanup

genlmsg_parse_deprecated.exit:                    ; preds = %entry
  %add.ptr.i.i.i.i = getelementptr i8, ptr %2, i32 16
  %sub.i.i.i = add i32 %3, 7
  %and.i.i.i = and i32 %sub.i.i.i, -4
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i.i, i32 %and.i.i.i
  %sub.i.i.i.i = add i32 %5, -16
  %sub1.i.i.i = sub i32 %sub.i.i.i.i, %and.i.i.i
  %call5.i.i = call i32 @__nla_parse(ptr noundef nonnull %attrs, i32 noundef 8, ptr noundef %add.ptr.i.i.i, i32 noundef %sub1.i.i.i, ptr noundef nonnull @ncsi_genl_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool.not = icmp eq i32 %call5.i.i, 0
  br i1 %tobool.not, label %if.end, label %genlmsg_parse_deprecated.exit.cleanup_crit_edge

genlmsg_parse_deprecated.exit.cleanup_crit_edge:  ; preds = %genlmsg_parse_deprecated.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %genlmsg_parse_deprecated.exit
  %arrayidx = getelementptr inbounds [9 x ptr], ptr %attrs, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %8 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_net.i, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %12, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #10
  %13 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end3.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !71

if.end3.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end3
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_net.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !76

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_net.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_net.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end3.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end3.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #10
  br label %get_net.exit

get_net.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_net.exit_crit_edge
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %get_net.exit.cleanup_crit_edge, label %if.end.i

get_net.exit.cleanup_crit_edge:                   ; preds = %get_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %get_net.exit
  %call.i = call ptr @dev_get_by_index(ptr noundef nonnull %12, i32 noundef %18) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %do.end.i, label %do.body1.i.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %18) #13
  br label %cleanup

do.body1.i.i:                                     ; preds = %if.end.i
  %call5.i = call ptr @ncsi_find_dev(ptr noundef nonnull %call.i) #10
  %19 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !72
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %20 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i96 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i96 to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %28, %22
  %29 = inttoptr i32 %add.i.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add13.i.i = add i32 %31, -1
  store i32 %add13.i.i, ptr %29, align 4
  %32 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !73
  %and.i.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.ndp_from_ifindex.exit_crit_edge, !prof !71

do.body1.i.i.ndp_from_ifindex.exit_crit_edge:     ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ndp_from_ifindex.exit

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %ndp_from_ifindex.exit

ndp_from_ifindex.exit:                            ; preds = %if.then28.i.i, %do.body1.i.i.ndp_from_ifindex.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #10, !srcloc !74
  %tobool9.not = icmp eq ptr %call5.i, null
  br i1 %tobool9.not, label %ndp_from_ifindex.exit.cleanup_crit_edge, label %if.end11

ndp_from_ifindex.exit.cleanup_crit_edge:          ; preds = %ndp_from_ifindex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %ndp_from_ifindex.exit
  %33 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %call13 = call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true, label %if.end11.do.end_crit_edge

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %if.end11
  %call15 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true17

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b95 = load i1, ptr @ncsi_pkg_info_all_nl.__warned, align 1
  br i1 %.b95, label %land.lhs.true17.do.end_crit_edge, label %if.then19

land.lhs.true17.do.end_crit_edge:                 ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ncsi_pkg_info_all_nl.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 239, ptr noundef nonnull @.str.4) #10
  br label %do.end

do.end:                                           ; preds = %if.then19, %land.lhs.true17.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end11.do.end_crit_edge
  %packages = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call5.i, i32 0, i32 6
  %36 = ptrtoint ptr %packages to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn113 = load volatile ptr, ptr %packages, align 4
  %cmp.not114 = icmp eq ptr %.pn113, %packages
  br i1 %cmp.not114, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn116 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn113, %do.end.for.body_crit_edge ]
  %package.0115 = phi ptr [ %spec.select, %for.body.for.body_crit_edge ], [ null, %do.end.for.body_crit_edge ]
  %np.0 = getelementptr i8, ptr %.pn116, i32 -80
  %37 = ptrtoint ptr %np.0 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %np.0, align 4
  %conv = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %conv)
  %cmp26 = icmp eq i32 %35, %conv
  %spec.select = select i1 %cmp26, ptr %np.0, ptr %package.0115
  %39 = ptrtoint ptr %.pn116 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn = load volatile ptr, ptr %.pn116, align 4
  %cmp.not = icmp eq ptr %.pn, %packages
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %tobool39.not = icmp eq ptr %spec.select, null
  br i1 %tobool39.not, label %for.end.cleanup_crit_edge, label %if.end41

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end41:                                         ; preds = %for.end
  %40 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %41, i32 0, i32 3, i32 12
  %42 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %portid, align 4
  %44 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nlmsg_seq, align 4
  %call45 = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %43, i32 noundef %47, ptr noundef nonnull @ncsi_genl_family, i32 noundef 2, i8 noundef zeroext 1) #10
  %tobool46.not = icmp eq ptr %call45, null
  br i1 %tobool46.not, label %if.end41.cleanup_crit_edge, label %if.end48

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end48:                                         ; preds = %if.end41
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %48 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool50.not112 = icmp eq ptr %49, null
  %tobool50.not = select i1 %cmp.i, i1 true, i1 %tobool50.not112
  br i1 %tobool50.not, label %if.end48.if.then.i_crit_edge, label %if.end52

if.end48.if.then.i_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.end52:                                         ; preds = %if.end48
  %50 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %spec.select, align 4
  %conv54 = zext i8 %51 to i32
  %call55 = call fastcc i32 @ncsi_write_package_info(ptr noundef %skb, ptr noundef nonnull %call5.i, i32 noundef %conv54)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %if.end58, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end52
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %52 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i97 = icmp ugt ptr %53, %49
  br i1 %cmp.i.i97, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !71

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %54 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %49 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %55 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #10
  br label %if.then.i

if.end58:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %57 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %58 = ptrtoint ptr %49 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv.i, ptr %49, align 2
  %add.ptr1.i = getelementptr i8, ptr %call45, i32 -20
  %59 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i99 = ptrtoint ptr %59 to i32
  %sub.ptr.rhs.cast.i.i100 = ptrtoint ptr %add.ptr1.i to i32
  %sub.ptr.sub.i.i101 = sub i32 %sub.ptr.lhs.cast.i.i99, %sub.ptr.rhs.cast.i.i100
  %60 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %sub.ptr.sub.i.i101, ptr %add.ptr1.i, align 4
  %add = add i32 %35, 1
  %61 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %add, ptr %33, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %62 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len, align 4
  br label %cleanup

if.then.i:                                        ; preds = %nla_nest_cancel.exit, %if.end48.if.then.i_crit_edge
  %rc.0.ph = phi i32 [ -90, %if.end48.if.then.i_crit_edge ], [ %call55, %nla_nest_cancel.exit ]
  %add.ptr1.i103 = getelementptr i8, ptr %call45, i32 -20
  %tobool.not.i.i.i = icmp eq ptr %add.ptr1.i103, null
  br i1 %tobool.not.i.i.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.i.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.then.i
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %64 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %65, %add.ptr1.i103
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.i.if.end.i.i.i_crit_edge, !prof !71

if.then.i.i.i.if.end.i.i.i_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.i.if.end.i.i.i_crit_edge
  %66 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i103 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %67 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i.cleanup_crit_edge, %if.end58, %if.end41.cleanup_crit_edge, %for.end.cleanup_crit_edge, %do.end.cleanup_crit_edge, %ndp_from_ifindex.exit.cleanup_crit_edge, %do.end.i, %get_net.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %genlmsg_parse_deprecated.exit.cleanup_crit_edge, %genlmsg_parse_deprecated.exit.thread
  %retval.0 = phi i32 [ %63, %if.end58 ], [ %call5.i.i, %genlmsg_parse_deprecated.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -19, %ndp_from_ifindex.exit.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ -22, %genlmsg_parse_deprecated.exit.thread ], [ %rc.0.ph, %if.then.i.cleanup_crit_edge ], [ %rc.0.ph, %if.end.i.i.i ], [ -90, %if.end41.cleanup_crit_edge ], [ -19, %do.end.i ], [ -19, %get_net.exit.cleanup_crit_edge ], [ 0, %do.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %attrs) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_set_interface_nl(ptr nocapture noundef readonly %msg, ptr noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %arrayidx7 = getelementptr ptr, ptr %1, i32 3
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %6 = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_net.i, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end10.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !71

if.end10.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end10
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_net.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !76

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_net.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_net.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end10.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end10.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #10
  br label %get_net.exit

get_net.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_net.exit_crit_edge
  %13 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attrs, align 4
  %arrayidx13 = getelementptr ptr, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx13, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %get_net.exit.cleanup_crit_edge, label %if.end.i

get_net.exit.cleanup_crit_edge:                   ; preds = %get_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %get_net.exit
  %call.i = tail call ptr @dev_get_by_index(ptr noundef nonnull %10, i32 noundef %18) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %do.end.i, label %do.body1.i.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %18) #13
  br label %cleanup

do.body1.i.i:                                     ; preds = %if.end.i
  %call5.i = tail call ptr @ncsi_find_dev(ptr noundef nonnull %call.i) #10
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !72
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %20 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %28, %22
  %29 = inttoptr i32 %add.i.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add13.i.i = add i32 %31, -1
  store i32 %add13.i.i, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !73
  %and.i.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.ndp_from_ifindex.exit_crit_edge, !prof !71

do.body1.i.i.ndp_from_ifindex.exit_crit_edge:     ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ndp_from_ifindex.exit

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %ndp_from_ifindex.exit

ndp_from_ifindex.exit:                            ; preds = %if.then28.i.i, %do.body1.i.i.ndp_from_ifindex.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #10, !srcloc !74
  %tobool16.not = icmp eq ptr %call5.i, null
  br i1 %tobool16.not, label %ndp_from_ifindex.exit.cleanup_crit_edge, label %if.end18

ndp_from_ifindex.exit.cleanup_crit_edge:          ; preds = %ndp_from_ifindex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %ndp_from_ifindex.exit
  %33 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %attrs, align 4
  %arrayidx20 = getelementptr ptr, ptr %34, i32 3
  %35 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx20, align 4
  %add.ptr.i.i211 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i211 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i211, align 4
  %call22 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %land.lhs.true, label %if.end18.do.end_crit_edge

if.end18.do.end_crit_edge:                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %if.end18
  %call24 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true26

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true26:                                  ; preds = %land.lhs.true
  %.b210 = load i1, ptr @ncsi_set_interface_nl.__warned, align 1
  br i1 %.b210, label %land.lhs.true26.do.end_crit_edge, label %if.then28

land.lhs.true26.do.end_crit_edge:                 ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ncsi_set_interface_nl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 300, ptr noundef nonnull @.str.4) #10
  br label %do.end

do.end:                                           ; preds = %if.then28, %land.lhs.true26.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end18.do.end_crit_edge
  %packages = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call5.i, i32 0, i32 6
  %39 = ptrtoint ptr %packages to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn220 = load volatile ptr, ptr %packages, align 4
  %cmp.not221 = icmp eq ptr %.pn220, %packages
  br i1 %cmp.not221, label %do.end.cleanup_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn223 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn220, %do.end.for.body_crit_edge ]
  %package.0222 = phi ptr [ %spec.select, %for.body.for.body_crit_edge ], [ null, %do.end.for.body_crit_edge ]
  %np.0 = getelementptr i8, ptr %.pn223, i32 -80
  %40 = ptrtoint ptr %np.0 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %np.0, align 4
  %conv = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %conv)
  %cmp35 = icmp eq i32 %38, %conv
  %spec.select = select i1 %cmp35, ptr %np.0, ptr %package.0222
  %42 = ptrtoint ptr %.pn223 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn = load volatile ptr, ptr %.pn223, align 4
  %cmp.not = icmp eq ptr %.pn, %packages
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body
  %tobool48.not = icmp eq ptr %spec.select, null
  br i1 %tobool48.not, label %for.end.cleanup_crit_edge, label %if.end50

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end50:                                         ; preds = %for.end
  %43 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %attrs, align 4
  %arrayidx52 = getelementptr ptr, ptr %44, i32 4
  %45 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx52, align 4
  %tobool53.not = icmp eq ptr %46, null
  br i1 %tobool53.not, label %if.end50.do.body106_crit_edge, label %if.then54

if.end50.do.body106_crit_edge:                    ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body106

if.then54:                                        ; preds = %if.end50
  %add.ptr.i.i212 = getelementptr i8, ptr %46, i32 4
  %47 = ptrtoint ptr %add.ptr.i.i212 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %add.ptr.i.i212, align 4
  %call59 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true61, label %if.then54.do.end69_crit_edge

if.then54.do.end69_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end69

land.lhs.true61:                                  ; preds = %if.then54
  %call62 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %land.lhs.true61.do.end69_crit_edge, label %land.lhs.true64

land.lhs.true61.do.end69_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end69

land.lhs.true64:                                  ; preds = %land.lhs.true61
  %.b207209 = load i1, ptr @ncsi_set_interface_nl.__warned.7, align 1
  br i1 %.b207209, label %land.lhs.true64.do.end69_crit_edge, label %if.then66

land.lhs.true64.do.end69_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end69

if.then66:                                        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ncsi_set_interface_nl.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 311, ptr noundef nonnull @.str.4) #10
  br label %do.end69

do.end69:                                         ; preds = %if.then66, %land.lhs.true64.do.end69_crit_edge, %land.lhs.true61.do.end69_crit_edge, %if.then54.do.end69_crit_edge
  %channels = getelementptr inbounds %struct.ncsi_package, ptr %spec.select, i32 0, i32 5
  br label %for.cond78

for.cond78:                                       ; preds = %for.body83.for.cond78_crit_edge, %do.end69
  %.pn208.in = phi ptr [ %channels, %do.end69 ], [ %.pn208, %for.body83.for.cond78_crit_edge ]
  %49 = ptrtoint ptr %.pn208.in to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn208 = load volatile ptr, ptr %.pn208.in, align 4
  %cmp81.not = icmp eq ptr %.pn208, %channels
  br i1 %cmp81.not, label %for.cond78.if.then102_crit_edge, label %for.body83

for.cond78.if.then102_crit_edge:                  ; preds = %for.cond78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then102

for.body83:                                       ; preds = %for.cond78
  %nc.0 = getelementptr i8, ptr %.pn208, i32 -828
  %50 = ptrtoint ptr %nc.0 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %nc.0, align 8
  %conv85 = zext i8 %51 to i32
  %cmp86 = icmp eq i32 %48, %conv85
  br i1 %cmp86, label %for.end100, label %for.body83.for.cond78_crit_edge

for.body83.for.cond78_crit_edge:                  ; preds = %for.body83
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond78

for.end100:                                       ; preds = %for.body83
  %nc.0.le = getelementptr i8, ptr %.pn208, i32 -828
  %tobool101.not = icmp eq ptr %nc.0.le, null
  br i1 %tobool101.not, label %for.end100.if.then102_crit_edge, label %for.end100.do.body106_crit_edge

for.end100.do.body106_crit_edge:                  ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body106

for.end100.if.then102_crit_edge:                  ; preds = %for.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then102

if.then102:                                       ; preds = %for.end100.if.then102_crit_edge, %for.cond78.if.then102_crit_edge
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %call5.i, i32 0, i32 2
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %53, ptr noundef nonnull @.str.8, i32 noundef %48) #13
  br label %cleanup

do.body106:                                       ; preds = %for.end100.do.body106_crit_edge, %if.end50.do.body106_crit_edge
  %channel_id.0 = phi i32 [ %48, %for.end100.do.body106_crit_edge ], [ -1, %if.end50.do.body106_crit_edge ]
  %channel.1 = phi ptr [ %nc.0.le, %for.end100.do.body106_crit_edge ], [ null, %if.end50.do.body106_crit_edge ]
  %lock = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call5.i, i32 0, i32 3
  %call111 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %54 = ptrtoint ptr %spec.select to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %spec.select, align 4
  %conv117 = zext i8 %55 to i32
  %shl = shl nuw i32 1, %conv117
  %package_whitelist = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call5.i, i32 0, i32 20
  %56 = ptrtoint ptr %package_whitelist to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shl, ptr %package_whitelist, align 4
  %multi_package = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call5.i, i32 0, i32 18
  %57 = ptrtoint ptr %multi_package to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 0, ptr %multi_package, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call111) #10
  %lock126 = getelementptr inbounds %struct.ncsi_package, ptr %spec.select, i32 0, i32 3
  %call128 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock126) #10
  %multi_channel = getelementptr inbounds %struct.ncsi_package, ptr %spec.select, i32 0, i32 7
  %58 = ptrtoint ptr %multi_channel to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %multi_channel, align 4
  %tobool133.not = icmp eq ptr %channel.1, null
  br i1 %tobool133.not, label %if.else, label %if.then134

if.then134:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %channel.1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %channel.1, align 8
  %conv136 = zext i8 %60 to i32
  %shl137 = shl nuw i32 1, %conv136
  %channel_whitelist = getelementptr inbounds %struct.ncsi_package, ptr %spec.select, i32 0, i32 8
  %61 = ptrtoint ptr %channel_whitelist to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %shl137, ptr %channel_whitelist, align 4
  %preferred_channel = getelementptr inbounds %struct.ncsi_package, ptr %spec.select, i32 0, i32 9
  %62 = ptrtoint ptr %preferred_channel to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %channel.1, ptr %preferred_channel, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock126, i32 noundef %call128) #10
  %dev145 = getelementptr inbounds %struct.ncsi_dev, ptr %call5.i, i32 0, i32 2
  %63 = ptrtoint ptr %dev145 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev145, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %64, ptr noundef nonnull @.str.9, i32 noundef %38, i32 noundef %channel_id.0) #13
  br label %if.end149

if.else:                                          ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #12
  %channel_whitelist138 = getelementptr inbounds %struct.ncsi_package, ptr %spec.select, i32 0, i32 8
  %65 = ptrtoint ptr %channel_whitelist138 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 -1, ptr %channel_whitelist138, align 4
  %preferred_channel139 = getelementptr inbounds %struct.ncsi_package, ptr %spec.select, i32 0, i32 9
  %66 = ptrtoint ptr %preferred_channel139 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %preferred_channel139, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock126, i32 noundef %call128) #10
  %dev148 = getelementptr inbounds %struct.ncsi_dev, ptr %call5.i, i32 0, i32 2
  %67 = ptrtoint ptr %dev148 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev148, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %68, ptr noundef nonnull @.str.10, i32 noundef %38) #13
  br label %if.end149

if.end149:                                        ; preds = %if.else, %if.then134
  %flags150 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call5.i, i32 0, i32 1
  %69 = ptrtoint ptr %flags150 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %flags150, align 4
  %and = and i32 %70, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool151.not = icmp eq i32 %and, 0
  br i1 %tobool151.not, label %if.then152, label %if.end149.cleanup_crit_edge

if.end149.cleanup_crit_edge:                      ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then152:                                       ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  %call154 = tail call i32 @ncsi_reset_dev(ptr noundef nonnull %call5.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then152, %if.end149.cleanup_crit_edge, %if.then102, %for.end.cleanup_crit_edge, %do.end.cleanup_crit_edge, %ndp_from_ifindex.exit.cleanup_crit_edge, %do.end.i, %get_net.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %if.then102 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -19, %ndp_from_ifindex.exit.cleanup_crit_edge ], [ -34, %for.end.cleanup_crit_edge ], [ 0, %if.then152 ], [ 0, %if.end149.cleanup_crit_edge ], [ -19, %do.end.i ], [ -19, %get_net.exit.cleanup_crit_edge ], [ -34, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_clear_interface_nl(ptr nocapture noundef readonly %msg, ptr noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %4 = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skc_net.i, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %8, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #10
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end5.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !71

if.end5.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end5
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %10 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %.not.i.i.i.i = icmp sgt i32 %10, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_net.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !76

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_net.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_net.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end5.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end5.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #10
  br label %get_net.exit

get_net.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_net.exit_crit_edge
  %11 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attrs, align 4
  %arrayidx8 = getelementptr ptr, ptr %12, i32 1
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx8, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %get_net.exit.cleanup_crit_edge, label %if.end.i

get_net.exit.cleanup_crit_edge:                   ; preds = %get_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %get_net.exit
  %call.i = tail call ptr @dev_get_by_index(ptr noundef nonnull %8, i32 noundef %16) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %do.end.i, label %do.body1.i.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %16) #13
  br label %cleanup

do.body1.i.i:                                     ; preds = %if.end.i
  %call5.i = tail call ptr @ncsi_find_dev(ptr noundef nonnull %call.i) #10
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !72
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %18 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %26, %20
  %27 = inttoptr i32 %add.i.i to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %add13.i.i = add i32 %29, -1
  store i32 %add13.i.i, ptr %27, align 4
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !73
  %and.i.i.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.ndp_from_ifindex.exit_crit_edge, !prof !71

do.body1.i.i.ndp_from_ifindex.exit_crit_edge:     ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ndp_from_ifindex.exit

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %ndp_from_ifindex.exit

ndp_from_ifindex.exit:                            ; preds = %if.then28.i.i, %do.body1.i.i.ndp_from_ifindex.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #10, !srcloc !74
  %tobool11.not = icmp eq ptr %call5.i, null
  br i1 %tobool11.not, label %ndp_from_ifindex.exit.cleanup_crit_edge, label %do.body14

ndp_from_ifindex.exit.cleanup_crit_edge:          ; preds = %ndp_from_ifindex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body14:                                        ; preds = %ndp_from_ifindex.exit
  %lock = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call5.i, i32 0, i32 3
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %package_whitelist = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call5.i, i32 0, i32 20
  %31 = ptrtoint ptr %package_whitelist to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 -1, ptr %package_whitelist, align 4
  %multi_package = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call5.i, i32 0, i32 18
  %32 = ptrtoint ptr %multi_package to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %multi_package, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #10
  %call21 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true, label %do.body14.do.end30_crit_edge

do.body14.do.end30_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

land.lhs.true:                                    ; preds = %do.body14
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true.do.end30_crit_edge, label %land.lhs.true25

land.lhs.true.do.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

land.lhs.true25:                                  ; preds = %land.lhs.true
  %.b90 = load i1, ptr @ncsi_clear_interface_nl.__warned, align 1
  br i1 %.b90, label %land.lhs.true25.do.end30_crit_edge, label %if.then27

land.lhs.true25.do.end30_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end30

if.then27:                                        ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ncsi_clear_interface_nl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 379, ptr noundef nonnull @.str.4) #10
  br label %do.end30

do.end30:                                         ; preds = %if.then27, %land.lhs.true25.do.end30_crit_edge, %land.lhs.true.do.end30_crit_edge, %do.body14.do.end30_crit_edge
  %packages = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call5.i, i32 0, i32 6
  %33 = ptrtoint ptr %packages to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn93 = load volatile ptr, ptr %packages, align 4
  %cmp37.not94 = icmp eq ptr %.pn93, %packages
  br i1 %cmp37.not94, label %do.end30.for.end_crit_edge, label %do.end30.do.body40_crit_edge

do.end30.do.body40_crit_edge:                     ; preds = %do.end30
  br label %do.body40

do.end30.for.end_crit_edge:                       ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body40:                                        ; preds = %do.body40.do.body40_crit_edge, %do.end30.do.body40_crit_edge
  %.pn95 = phi ptr [ %.pn, %do.body40.do.body40_crit_edge ], [ %.pn93, %do.end30.do.body40_crit_edge ]
  %lock46 = getelementptr i8, ptr %.pn95, i32 -56
  %call48 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock46) #10
  %multi_channel = getelementptr i8, ptr %.pn95, i32 8
  %34 = ptrtoint ptr %multi_channel to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %multi_channel, align 4
  %channel_whitelist = getelementptr i8, ptr %.pn95, i32 12
  %35 = ptrtoint ptr %channel_whitelist to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %channel_whitelist, align 4
  %preferred_channel = getelementptr i8, ptr %.pn95, i32 16
  %36 = ptrtoint ptr %preferred_channel to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %preferred_channel, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock46, i32 noundef %call48) #10
  %37 = ptrtoint ptr %.pn95 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load volatile ptr, ptr %.pn95, align 4
  %cmp37.not = icmp eq ptr %.pn, %packages
  br i1 %cmp37.not, label %do.body40.for.end_crit_edge, label %do.body40.do.body40_crit_edge

do.body40.do.body40_crit_edge:                    ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body40

do.body40.for.end_crit_edge:                      ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %do.body40.for.end_crit_edge, %do.end30.for.end_crit_edge
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %call5.i, i32 0, i32 2
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %39, ptr noundef nonnull @.str.11) #13
  %flags63 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call5.i, i32 0, i32 1
  %40 = ptrtoint ptr %flags63 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags63, align 4
  %and = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool64.not = icmp eq i32 %and, 0
  br i1 %tobool64.not, label %if.then65, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then65:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %call67 = tail call i32 @ncsi_reset_dev(ptr noundef nonnull %call5.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then65, %for.end.cleanup_crit_edge, %ndp_from_ifindex.exit.cleanup_crit_edge, %do.end.i, %get_net.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -19, %ndp_from_ifindex.exit.cleanup_crit_edge ], [ 0, %if.then65 ], [ 0, %for.end.cleanup_crit_edge ], [ -19, %do.end.i ], [ -19, %get_net.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_send_cmd_nl(ptr nocapture noundef readonly %msg, ptr noundef %info) #0 align 64 {
entry:
  %nca = alloca %struct.ncsi_cmd_arg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %nca) #10
  %0 = call ptr @memset(ptr %nca, i32 255, i32 40)
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %lor.lhs.false

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

lor.lhs.false:                                    ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %attrs, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %lor.lhs.false.out_crit_edge, label %if.end

lor.lhs.false.out_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr ptr, ptr %2, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end5:                                          ; preds = %if.end
  %arrayidx7 = getelementptr ptr, ptr %2, i32 3
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.end5.out_crit_edge, label %if.end10

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end10:                                         ; preds = %if.end5
  %arrayidx12 = getelementptr ptr, ptr %2, i32 4
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %8, null
  br i1 %tobool13.not, label %if.end10.out_crit_edge, label %if.end15

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end15:                                         ; preds = %if.end10
  %arrayidx17 = getelementptr ptr, ptr %2, i32 5
  %9 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx17, align 4
  %tobool18.not = icmp eq ptr %10, null
  br i1 %tobool18.not, label %if.end15.out_crit_edge, label %if.end20

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end20:                                         ; preds = %if.end15
  %11 = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %skc_net.i, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %15, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #10
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end20.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !71

if.end20.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end20
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_net.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !76

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_net.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_net.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end20.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end20.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #10
  br label %get_net.exit

get_net.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_net.exit_crit_edge
  %18 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %attrs, align 4
  %arrayidx23 = getelementptr ptr, ptr %19, i32 1
  %20 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx23, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %get_net.exit.out_crit_edge, label %if.end.i

get_net.exit.out_crit_edge:                       ; preds = %get_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end.i:                                         ; preds = %get_net.exit
  %call.i = tail call ptr @dev_get_by_index(ptr noundef nonnull %15, i32 noundef %23) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %do.end.i, label %do.body1.i.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %23) #13
  br label %out

do.body1.i.i:                                     ; preds = %if.end.i
  %call5.i = tail call ptr @ncsi_find_dev(ptr noundef nonnull %call.i) #10
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !72
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %25 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %27 = ptrtoint ptr %26 to i32
  %28 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %31
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %33, %27
  %34 = inttoptr i32 %add.i.i to ptr
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %add13.i.i = add i32 %36, -1
  store i32 %add13.i.i, ptr %34, align 4
  %37 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !73
  %and.i.i.i.i = and i32 %37, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.ndp_from_ifindex.exit_crit_edge, !prof !71

do.body1.i.i.ndp_from_ifindex.exit_crit_edge:     ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ndp_from_ifindex.exit

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %ndp_from_ifindex.exit

ndp_from_ifindex.exit:                            ; preds = %if.then28.i.i, %do.body1.i.i.ndp_from_ifindex.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %24) #10, !srcloc !74
  %tobool26.not = icmp eq ptr %call5.i, null
  br i1 %tobool26.not, label %ndp_from_ifindex.exit.out_crit_edge, label %if.end28

ndp_from_ifindex.exit.out_crit_edge:              ; preds = %ndp_from_ifindex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end28:                                         ; preds = %ndp_from_ifindex.exit
  %38 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %attrs, align 4
  %arrayidx30 = getelementptr ptr, ptr %39, i32 3
  %40 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx30, align 4
  %add.ptr.i.i89 = getelementptr i8, ptr %41, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i89 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i.i89, align 4
  %arrayidx33 = getelementptr ptr, ptr %39, i32 4
  %44 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx33, align 4
  %add.ptr.i.i90 = getelementptr i8, ptr %45, i32 4
  %46 = ptrtoint ptr %add.ptr.i.i90 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %add.ptr.i.i90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %43)
  %cmp = icmp ugt i32 %43, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %47)
  %cmp36 = icmp ugt i32 %47, 31
  %or.cond = select i1 %cmp, i1 true, i1 %cmp36
  br i1 %or.cond, label %if.end28.if.then56_crit_edge, label %if.end38

if.end28.if.then56_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56

if.end38:                                         ; preds = %if.end28
  %arrayidx40 = getelementptr ptr, ptr %39, i32 5
  %48 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx40, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %49, align 2
  %conv.i = zext i16 %51 to i32
  %sub.i = add nsw i32 %conv.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.i)
  %cmp42 = icmp ult i32 %sub.i, 16
  br i1 %cmp42, label %if.then43, label %out_netlink

if.then43:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %call5.i, i32 0, i32 2
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %53, ptr noundef nonnull @.str.12, i32 noundef %43) #13
  br label %if.then56

out_netlink:                                      ; preds = %if.end38
  %54 = ptrtoint ptr %nca to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call5.i, ptr %nca, align 4
  %conv = trunc i32 %43 to i8
  %package = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 3
  %55 = ptrtoint ptr %package to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv, ptr %package, align 2
  %conv49 = trunc i32 %47 to i8
  %channel = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 4
  %56 = ptrtoint ptr %channel to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %conv49, ptr %channel, align 1
  %type = getelementptr i8, ptr %49, i32 8
  %57 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %type, align 4
  %type50 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 1
  %59 = ptrtoint ptr %type50 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %58, ptr %type50, align 4
  %req_flags = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 6
  %60 = ptrtoint ptr %req_flags to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %req_flags, align 4
  %info51 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 9
  %61 = ptrtoint ptr %info51 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %info, ptr %info51, align 4
  %length = getelementptr i8, ptr %49, i32 10
  %62 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %length, align 2
  %payload = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 5
  %64 = ptrtoint ptr %payload to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %payload, align 4
  %add.ptr = getelementptr i8, ptr %49, i32 20
  %data52 = getelementptr inbounds %struct.ncsi_cmd_arg, ptr %nca, i32 0, i32 8
  %65 = ptrtoint ptr %data52 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %add.ptr, ptr %data52, align 4
  %call53 = call i32 @ncsi_xmit_cmd(ptr noundef nonnull %nca) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54.not = icmp eq i32 %call53, 0
  br i1 %cmp54.not, label %out_netlink.out_crit_edge, label %out_netlink.if.then56_crit_edge

out_netlink.if.then56_crit_edge:                  ; preds = %out_netlink
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then56

out_netlink.out_crit_edge:                        ; preds = %out_netlink
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then56:                                        ; preds = %out_netlink.if.then56_crit_edge, %if.then43, %if.end28.if.then56_crit_edge
  %ret.095 = phi i32 [ %call53, %out_netlink.if.then56_crit_edge ], [ -34, %if.end28.if.then56_crit_edge ], [ -22, %if.then43 ]
  %dev58 = getelementptr inbounds %struct.ncsi_dev, ptr %call5.i, i32 0, i32 2
  %66 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev58, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %67, ptr noundef nonnull @.str.13, i32 noundef %ret.095) #13
  %68 = ptrtoint ptr %dev58 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev58, align 4
  %70 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %info, align 4
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %72 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %snd_portid, align 4
  %nlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 2
  %74 = ptrtoint ptr %nlhdr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %nlhdr, align 4
  %call61 = call i32 @ncsi_send_netlink_err(ptr noundef %69, i32 noundef %71, i32 noundef %73, ptr noundef %75, i32 noundef %ret.095)
  br label %out

out:                                              ; preds = %if.then56, %out_netlink.out_crit_edge, %ndp_from_ifindex.exit.out_crit_edge, %do.end.i, %get_net.exit.out_crit_edge, %if.end15.out_crit_edge, %if.end10.out_crit_edge, %if.end5.out_crit_edge, %if.end.out_crit_edge, %lor.lhs.false.out_crit_edge, %entry.out_crit_edge
  %ret.1 = phi i32 [ %ret.095, %if.then56 ], [ 0, %out_netlink.out_crit_edge ], [ -22, %lor.lhs.false.out_crit_edge ], [ -22, %entry.out_crit_edge ], [ -22, %if.end.out_crit_edge ], [ -22, %if.end5.out_crit_edge ], [ -22, %if.end10.out_crit_edge ], [ -22, %if.end15.out_crit_edge ], [ -19, %ndp_from_ifindex.exit.out_crit_edge ], [ -19, %do.end.i ], [ -19, %get_net.exit.out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %nca) #10
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_set_package_mask_nl(ptr nocapture noundef readonly %msg, ptr noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %arrayidx7 = getelementptr ptr, ptr %1, i32 7
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %6 = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %skc_net.i, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %10, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end10.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !71

if.end10.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end10
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %12 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %.not.i.i.i.i = icmp sgt i32 %12, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_net.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !76

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_net.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_net.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end10.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end10.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #10
  br label %get_net.exit

get_net.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_net.exit_crit_edge
  %13 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %attrs, align 4
  %arrayidx13 = getelementptr ptr, ptr %14, i32 1
  %15 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx13, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %get_net.exit.cleanup_crit_edge, label %if.end.i

get_net.exit.cleanup_crit_edge:                   ; preds = %get_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %get_net.exit
  %call.i = tail call ptr @dev_get_by_index(ptr noundef nonnull %10, i32 noundef %18) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %do.end.i, label %do.body1.i.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %18) #13
  br label %cleanup

do.body1.i.i:                                     ; preds = %if.end.i
  %call5.i = tail call ptr @ncsi_find_dev(ptr noundef nonnull %call.i) #10
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !72
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %20 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %28, %22
  %29 = inttoptr i32 %add.i.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add13.i.i = add i32 %31, -1
  store i32 %add13.i.i, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !73
  %and.i.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.ndp_from_ifindex.exit_crit_edge, !prof !71

do.body1.i.i.ndp_from_ifindex.exit_crit_edge:     ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ndp_from_ifindex.exit

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %ndp_from_ifindex.exit

ndp_from_ifindex.exit:                            ; preds = %if.then28.i.i, %do.body1.i.i.ndp_from_ifindex.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #10, !srcloc !74
  %tobool16.not = icmp eq ptr %call5.i, null
  br i1 %tobool16.not, label %ndp_from_ifindex.exit.cleanup_crit_edge, label %do.body19

ndp_from_ifindex.exit.cleanup_crit_edge:          ; preds = %ndp_from_ifindex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body19:                                        ; preds = %ndp_from_ifindex.exit
  %lock = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call5.i, i32 0, i32 3
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %33 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %attrs, align 4
  %arrayidx25 = getelementptr ptr, ptr %34, i32 6
  %35 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx25, align 4
  %tobool.i.not = icmp eq ptr %36, null
  br i1 %tobool.i.not, label %do.body19.if.then37_crit_edge, label %if.then28

do.body19.if.then37_crit_edge:                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

if.then28:                                        ; preds = %do.body19
  %flags29 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call5.i, i32 0, i32 1
  %37 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %flags29, align 4
  %and = and i32 %38, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool30.not = icmp eq i32 %and, 0
  br i1 %tobool30.not, label %if.end52.critedge, label %if.then28.if.then37_crit_edge

if.then28.if.then37_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then37

if.then37:                                        ; preds = %if.then28.if.then37_crit_edge, %do.body19.if.then37_crit_edge
  %.sink = phi i8 [ 1, %if.then28.if.then37_crit_edge ], [ 0, %do.body19.if.then37_crit_edge ]
  %multi_package = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call5.i, i32 0, i32 18
  %39 = ptrtoint ptr %multi_package to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %.sink, ptr %multi_package, align 4
  %40 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %attrs, align 4
  %arrayidx39 = getelementptr ptr, ptr %41, i32 7
  %42 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx39, align 4
  %add.ptr.i.i72 = getelementptr i8, ptr %43, i32 4
  %44 = ptrtoint ptr %add.ptr.i.i72 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %add.ptr.i.i72, align 4
  %package_whitelist = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call5.i, i32 0, i32 20
  %46 = ptrtoint ptr %package_whitelist to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %package_whitelist, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call21) #10
  %flags45 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call5.i, i32 0, i32 1
  %47 = ptrtoint ptr %flags45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags45, align 4
  %and46 = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.then48, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then48:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #12
  %call50 = tail call i32 @ncsi_reset_dev(ptr noundef nonnull %call5.i) #10
  br label %cleanup

if.end52.critedge:                                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %call5.i, i32 0, i32 2
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %50, ptr noundef nonnull @.str.14) #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call21) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end52.critedge, %if.then48, %if.then37.cleanup_crit_edge, %ndp_from_ifindex.exit.cleanup_crit_edge, %do.end.i, %get_net.exit.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -19, %ndp_from_ifindex.exit.cleanup_crit_edge ], [ -1, %if.end52.critedge ], [ 0, %if.then37.cleanup_crit_edge ], [ 0, %if.then48 ], [ -19, %do.end.i ], [ -19, %get_net.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ncsi_set_channel_mask_nl(ptr nocapture noundef readonly %msg, ptr noundef readonly %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %info, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %arrayidx7 = getelementptr ptr, ptr %1, i32 3
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %arrayidx12 = getelementptr ptr, ptr %1, i32 8
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %7, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %8 = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %skc_net.i, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %12, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #10
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #10, !srcloc !75
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end15.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !71

if.end15.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end15
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %14 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %.not.i.i.i.i = icmp sgt i32 %14, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_net.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !76

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_net.exit_crit_edge:           ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_net.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end15.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end15.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #10
  br label %get_net.exit

get_net.exit:                                     ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_net.exit_crit_edge
  %15 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %attrs, align 4
  %arrayidx18 = getelementptr ptr, ptr %16, i32 1
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx18, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %get_net.exit.cleanup_crit_edge, label %if.end.i

get_net.exit.cleanup_crit_edge:                   ; preds = %get_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %get_net.exit
  %call.i = tail call ptr @dev_get_by_index(ptr noundef nonnull %12, i32 noundef %20) #10
  %tobool1.not.i = icmp eq ptr %call.i, null
  br i1 %tobool1.not.i, label %do.end.i, label %do.body1.i.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %20) #13
  br label %cleanup

do.body1.i.i:                                     ; preds = %if.end.i
  %call5.i = tail call ptr @ncsi_find_dev(ptr noundef nonnull %call.i) #10
  %21 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !72
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %22 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %24 = ptrtoint ptr %23 to i32
  %25 = tail call i32 @llvm.read_register.i32(metadata !61) #10
  %and.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %28
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %30, %24
  %31 = inttoptr i32 %add.i.i to ptr
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %31, align 4
  %add13.i.i = add i32 %33, -1
  store i32 %add13.i.i, ptr %31, align 4
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !73
  %and.i.i.i.i = and i32 %34, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.ndp_from_ifindex.exit_crit_edge, !prof !71

do.body1.i.i.ndp_from_ifindex.exit_crit_edge:     ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ndp_from_ifindex.exit

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %ndp_from_ifindex.exit

ndp_from_ifindex.exit:                            ; preds = %if.then28.i.i, %do.body1.i.i.ndp_from_ifindex.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %21) #10, !srcloc !74
  %tobool21.not = icmp eq ptr %call5.i, null
  br i1 %tobool21.not, label %ndp_from_ifindex.exit.cleanup_crit_edge, label %if.end23

ndp_from_ifindex.exit.cleanup_crit_edge:          ; preds = %ndp_from_ifindex.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %ndp_from_ifindex.exit
  %35 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %attrs, align 4
  %arrayidx25 = getelementptr ptr, ptr %36, i32 3
  %37 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx25, align 4
  %add.ptr.i.i238 = getelementptr i8, ptr %38, i32 4
  %39 = ptrtoint ptr %add.ptr.i.i238 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i238, align 4
  %call27 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %land.lhs.true, label %if.end23.do.end_crit_edge

if.end23.do.end_crit_edge:                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %if.end23
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true31

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true31:                                  ; preds = %land.lhs.true
  %.b233 = load i1, ptr @ncsi_set_channel_mask_nl.__warned, align 1
  br i1 %.b233, label %land.lhs.true31.do.end_crit_edge, label %if.then33

land.lhs.true31.do.end_crit_edge:                 ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ncsi_set_channel_mask_nl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 669, ptr noundef nonnull @.str.4) #10
  br label %do.end

do.end:                                           ; preds = %if.then33, %land.lhs.true31.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end23.do.end_crit_edge
  %packages = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call5.i, i32 0, i32 6
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %packages, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %41 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %41)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %packages
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %np.0 = getelementptr i8, ptr %.pn, i32 -80
  %42 = ptrtoint ptr %np.0 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %np.0, align 4
  %conv = zext i8 %43 to i32
  %cmp40 = icmp eq i32 %40, %conv
  br i1 %cmp40, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

for.end:                                          ; preds = %for.body
  %np.0.le = getelementptr i8, ptr %.pn, i32 -80
  %tobool53.not = icmp eq ptr %np.0.le, null
  br i1 %tobool53.not, label %for.end.cleanup_crit_edge, label %do.body57

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body57:                                        ; preds = %for.end
  %lock = getelementptr i8, ptr %.pn, i32 -56
  %call62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %44 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %attrs, align 4
  %arrayidx68 = getelementptr ptr, ptr %45, i32 4
  %46 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx68, align 4
  %tobool69.not = icmp eq ptr %47, null
  br i1 %tobool69.not, label %do.body57.if.end136_crit_edge, label %if.then70

do.body57.if.end136_crit_edge:                    ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

if.then70:                                        ; preds = %do.body57
  %add.ptr.i.i239 = getelementptr i8, ptr %47, i32 4
  %48 = ptrtoint ptr %add.ptr.i.i239 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i.i239, align 4
  %call75 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %land.lhs.true77, label %if.then70.do.end85_crit_edge

if.then70.do.end85_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end85

land.lhs.true77:                                  ; preds = %if.then70
  %call78 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.lhs.true77.do.end85_crit_edge, label %land.lhs.true80

land.lhs.true77.do.end85_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end85

land.lhs.true80:                                  ; preds = %land.lhs.true77
  %.b230232 = load i1, ptr @ncsi_set_channel_mask_nl.__warned.15, align 1
  br i1 %.b230232, label %land.lhs.true80.do.end85_crit_edge, label %if.then82

land.lhs.true80.do.end85_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end85

if.then82:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ncsi_set_channel_mask_nl.__warned.15, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 682, ptr noundef nonnull @.str.4) #10
  br label %do.end85

do.end85:                                         ; preds = %if.then82, %land.lhs.true80.do.end85_crit_edge, %land.lhs.true77.do.end85_crit_edge, %if.then70.do.end85_crit_edge
  %channels = getelementptr i8, ptr %.pn, i32 -8
  br label %for.cond94

for.cond94:                                       ; preds = %for.body99.for.cond94_crit_edge, %do.end85
  %.pn231.in = phi ptr [ %channels, %do.end85 ], [ %.pn231, %for.body99.for.cond94_crit_edge ]
  %50 = ptrtoint ptr %.pn231.in to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pn231 = load volatile ptr, ptr %.pn231.in, align 4
  %cmp97.not = icmp eq ptr %.pn231, %channels
  br i1 %cmp97.not, label %for.cond94.if.then118_crit_edge, label %for.body99

for.cond94.if.then118_crit_edge:                  ; preds = %for.cond94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then118

for.body99:                                       ; preds = %for.cond94
  %nc.0 = getelementptr i8, ptr %.pn231, i32 -828
  %51 = ptrtoint ptr %nc.0 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %nc.0, align 8
  %conv101 = zext i8 %52 to i32
  %cmp102 = icmp eq i32 %49, %conv101
  br i1 %cmp102, label %for.end116, label %for.body99.for.cond94_crit_edge

for.body99.for.cond94_crit_edge:                  ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond94

for.end116:                                       ; preds = %for.body99
  %nc.0.le = getelementptr i8, ptr %.pn231, i32 -828
  %tobool117.not = icmp eq ptr %nc.0.le, null
  br i1 %tobool117.not, label %for.end116.if.then118_crit_edge, label %do.body122

for.end116.if.then118_crit_edge:                  ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then118

if.then118:                                       ; preds = %for.end116.if.then118_crit_edge, %for.cond94.if.then118_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call62) #10
  br label %cleanup

do.body122:                                       ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_set_channel_mask_nl.__UNIQUE_ID_ddebug475, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_set_channel_mask_nl, %if.then128)) #10
          to label %if.end136 [label %if.then128], !srcloc !77

if.then128:                                       ; preds = %do.body122
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %call5.i, i32 0, i32 2
  %53 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev, align 4
  %55 = ptrtoint ptr %nc.0.le to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %nc.0.le, align 8
  %conv130 = zext i8 %56 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_set_channel_mask_nl.__UNIQUE_ID_ddebug475, ptr noundef %54, ptr noundef nonnull @.str.18, i32 noundef %conv130) #10
  br label %if.end136

if.end136:                                        ; preds = %if.then128, %do.body122, %do.body57.if.end136_crit_edge
  %channel.1 = phi ptr [ %nc.0.le, %if.then128 ], [ null, %do.body57.if.end136_crit_edge ], [ %nc.0.le, %do.body122 ]
  %57 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %attrs, align 4
  %arrayidx138 = getelementptr ptr, ptr %58, i32 8
  %59 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx138, align 4
  %add.ptr.i.i240 = getelementptr i8, ptr %60, i32 4
  %61 = ptrtoint ptr %add.ptr.i.i240 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr.i.i240, align 4
  %channel_whitelist = getelementptr i8, ptr %.pn, i32 12
  %63 = ptrtoint ptr %channel_whitelist to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %channel_whitelist, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp141 = icmp eq i32 %62, 0
  br i1 %cmp141, label %do.body145, label %if.end136.if.end167_crit_edge

if.end136.if.end167_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end167

do.body145:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ncsi_set_channel_mask_nl.__UNIQUE_ID_ddebug476, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ncsi_set_channel_mask_nl, %if.then157)) #10
          to label %if.end167 [label %if.then157], !srcloc !77

if.then157:                                       ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #12
  %dev159 = getelementptr inbounds %struct.ncsi_dev, ptr %call5.i, i32 0, i32 2
  %64 = ptrtoint ptr %dev159 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev159, align 4
  %66 = ptrtoint ptr %np.0.le to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %np.0.le, align 4
  %conv161 = zext i8 %67 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @ncsi_set_channel_mask_nl.__UNIQUE_ID_ddebug476, ptr noundef %65, ptr noundef nonnull @.str.19, i32 noundef %conv161) #10
  br label %if.end167

if.end167:                                        ; preds = %if.then157, %do.body145, %if.end136.if.end167_crit_edge
  %preferred_channel = getelementptr i8, ptr %.pn, i32 16
  %68 = ptrtoint ptr %preferred_channel to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %channel.1, ptr %preferred_channel, align 4
  %69 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %attrs, align 4
  %arrayidx169 = getelementptr ptr, ptr %70, i32 6
  %71 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx169, align 4
  %tobool.i.not = icmp eq ptr %72, null
  %multi_channel175 = getelementptr i8, ptr %.pn, i32 8
  br i1 %tobool.i.not, label %if.else, label %if.then172

if.then172:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %multi_channel175 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %multi_channel175, align 4
  %dev174 = getelementptr inbounds %struct.ncsi_dev, ptr %call5.i, i32 0, i32 2
  %74 = ptrtoint ptr %dev174 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev174, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %75, ptr noundef nonnull @.str.20, i32 noundef %40) #13
  br label %if.end176

if.else:                                          ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %multi_channel175 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %multi_channel175, align 4
  br label %if.end176

if.end176:                                        ; preds = %if.else, %if.then172
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call62) #10
  %flags178 = getelementptr inbounds %struct.ncsi_dev_priv, ptr %call5.i, i32 0, i32 1
  %77 = ptrtoint ptr %flags178 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %flags178, align 4
  %and = and i32 %78, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool179.not = icmp eq i32 %and, 0
  br i1 %tobool179.not, label %if.then180, label %if.end176.cleanup_crit_edge

if.end176.cleanup_crit_edge:                      ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then180:                                       ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  %call182 = tail call i32 @ncsi_reset_dev(ptr noundef nonnull %call5.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then180, %if.end176.cleanup_crit_edge, %if.then118, %for.end.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %ndp_from_ifindex.exit.cleanup_crit_edge, %do.end.i, %get_net.exit.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -34, %if.then118 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end10.cleanup_crit_edge ], [ -19, %ndp_from_ifindex.exit.cleanup_crit_edge ], [ -34, %for.end.cleanup_crit_edge ], [ 0, %if.then180 ], [ 0, %if.end176.cleanup_crit_edge ], [ -19, %do.end.i ], [ -19, %get_net.exit.cleanup_crit_edge ], [ -34, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ncsi_write_package_info(ptr noundef %skb, ptr noundef %ndp, i32 noundef %id) unnamed_addr #0 align 64 {
entry:
  %tmp.i11.i = alloca i16, align 2
  %tmp.i7.i = alloca i32, align 4
  %tmp.i5.i = alloca i32, align 4
  %tmp.i1.i = alloca i32, align 4
  %tmp.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %package_num = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 5
  %0 = ptrtoint ptr %package_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %package_num, align 4
  %sub = add i32 %1, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %id)
  %cmp = icmp ult i32 %sub, %id
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.ncsi_dev, ptr %ndp, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %id) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %if.end
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b152 = load i1, ptr @ncsi_write_package_info.__warned, align 1
  br i1 %.b152, label %land.lhs.true3.do.end_crit_edge, label %if.then5

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then5:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ncsi_write_package_info.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 109, ptr noundef nonnull @.str.4) #10
  br label %do.end

do.end:                                           ; preds = %if.then5, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end.do.end_crit_edge
  %packages = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 6
  %4 = ptrtoint ptr %packages to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn265 = load volatile ptr, ptr %packages, align 4
  %cmp12.not267 = icmp eq ptr %.pn265, %packages
  br i1 %cmp12.not267, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %package_whitelist = getelementptr inbounds %struct.ncsi_dev_priv, ptr %ndp, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc85.for.body_crit_edge, %for.body.lr.ph
  %.pn269 = phi ptr [ %.pn265, %for.body.lr.ph ], [ %.pn, %for.inc85.for.body_crit_edge ]
  %found.0.off0268 = phi i1 [ false, %for.body.lr.ph ], [ %found.1.off0, %for.inc85.for.body_crit_edge ]
  %np.0270 = getelementptr i8, ptr %.pn269, i32 -80
  %5 = ptrtoint ptr %np.0270 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %np.0270, align 4
  %conv = zext i8 %6 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %id)
  %cmp14.not = icmp eq i32 %conv, %id
  br i1 %cmp14.not, label %if.end17, label %for.body.for.inc85_crit_edge

for.body.for.inc85_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc85

if.end17:                                         ; preds = %for.body
  %7 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool19.not241 = icmp eq ptr %8, null
  %tobool19.not = select i1 %cmp.i, i1 true, i1 %tobool19.not241
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %9 = ptrtoint ptr %np.0270 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %np.0270, align 4
  %conv23 = zext i8 %10 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv23, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool25.not = icmp eq i32 %call.i, 0
  br i1 %tobool25.not, label %if.end27, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end21
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %13, %8
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !71

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %14 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #10
  br label %cleanup

if.end27:                                         ; preds = %if.end21
  %16 = ptrtoint ptr %np.0270 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %np.0270, align 4
  %conv29 = zext i8 %17 to i32
  %shl = shl nuw i32 1, %conv29
  %18 = ptrtoint ptr %package_whitelist to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %package_whitelist, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %19)
  %cmp30 = icmp eq i32 %shl, %19
  br i1 %cmp30, label %if.then32, label %if.end27.if.end34_crit_edge

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then32:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %call.i153 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 0, ptr noundef null) #10
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end27.if.end34_crit_edge
  %20 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i, align 8
  %call1.i155 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i155)
  %cmp.i156 = icmp slt i32 %call1.i155, 0
  %tobool36.not242 = icmp eq ptr %21, null
  %tobool36.not = select i1 %cmp.i156, i1 true, i1 %tobool36.not242
  br i1 %tobool36.not, label %if.then.i.i161, label %do.body39

if.then.i.i161:                                   ; preds = %if.end34
  %data.i.i159 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %22 = ptrtoint ptr %data.i.i159 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i159, align 4
  %cmp.i.i160 = icmp ugt ptr %23, %8
  br i1 %cmp.i.i160, label %do.end.i.i162, label %if.then.i.i161.nla_nest_cancel.exit167_crit_edge, !prof !71

if.then.i.i161.nla_nest_cancel.exit167_crit_edge: ; preds = %if.then.i.i161
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_nest_cancel.exit167

do.end.i.i162:                                    ; preds = %if.then.i.i161
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %nla_nest_cancel.exit167

nla_nest_cancel.exit167:                          ; preds = %do.end.i.i162, %if.then.i.i161.nla_nest_cancel.exit167_crit_edge
  %24 = ptrtoint ptr %data.i.i159 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i159, align 4
  %sub.ptr.lhs.cast.i.i163 = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i164 = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i.i165 = sub i32 %sub.ptr.lhs.cast.i.i163, %sub.ptr.rhs.cast.i.i164
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i165) #10
  br label %cleanup

do.body39:                                        ; preds = %if.end34
  %call40 = call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true42, label %do.body39.do.end50_crit_edge

do.body39.do.end50_crit_edge:                     ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

land.lhs.true42:                                  ; preds = %do.body39
  %call43 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %land.lhs.true42.do.end50_crit_edge, label %land.lhs.true45

land.lhs.true42.do.end50_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

land.lhs.true45:                                  ; preds = %land.lhs.true42
  %.b148151 = load i1, ptr @ncsi_write_package_info.__warned.5, align 1
  br i1 %.b148151, label %land.lhs.true45.do.end50_crit_edge, label %if.then47

land.lhs.true45.do.end50_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end50

if.then47:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @ncsi_write_package_info.__warned.5, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 127, ptr noundef nonnull @.str.4) #10
  br label %do.end50

do.end50:                                         ; preds = %if.then47, %land.lhs.true45.do.end50_crit_edge, %land.lhs.true42.do.end50_crit_edge, %do.body39.do.end50_crit_edge
  %channels = getelementptr i8, ptr %.pn269, i32 -8
  %26 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn150260 = load volatile ptr, ptr %channels, align 4
  %cmp62.not262 = icmp eq ptr %.pn150260, %channels
  br i1 %cmp62.not262, label %do.end50.for.end_crit_edge, label %do.end50.for.body64_crit_edge

do.end50.for.body64_crit_edge:                    ; preds = %do.end50
  br label %for.body64

do.end50.for.end_crit_edge:                       ; preds = %do.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body64:                                       ; preds = %if.end72.for.body64_crit_edge, %do.end50.for.body64_crit_edge
  %.pn150263 = phi ptr [ %.pn150, %if.end72.for.body64_crit_edge ], [ %.pn150260, %do.end50.for.body64_crit_edge ]
  %nc.0264 = getelementptr i8, ptr %.pn150263, i32 -828
  %27 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tail.i.i, align 8
  %call1.i169 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i169)
  %cmp.i170 = icmp slt i32 %call1.i169, 0
  %tobool66.not243 = icmp eq ptr %28, null
  %tobool66.not = select i1 %cmp.i170, i1 true, i1 %tobool66.not243
  br i1 %tobool66.not, label %if.then.i.i175, label %if.end68

if.then.i.i175:                                   ; preds = %for.body64
  %data.i.i173 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i173 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i173, align 4
  %cmp.i.i174 = icmp ugt ptr %30, %21
  br i1 %cmp.i.i174, label %do.end.i.i176, label %if.then.i.i175.if.then.i.i185_crit_edge, !prof !71

if.then.i.i175.if.then.i.i185_crit_edge:          ; preds = %if.then.i.i175
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i185

do.end.i.i176:                                    ; preds = %if.then.i.i175
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.then.i.i185

if.then.i.i185:                                   ; preds = %do.end.i.i176, %if.then.i.i175.if.then.i.i185_crit_edge
  %31 = ptrtoint ptr %data.i.i173 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i173, align 4
  %sub.ptr.lhs.cast.i.i177 = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i178 = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i179 = sub i32 %sub.ptr.lhs.cast.i.i177, %sub.ptr.rhs.cast.i.i178
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i179) #10
  %33 = ptrtoint ptr %data.i.i173 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i173, align 4
  %cmp.i.i184 = icmp ugt ptr %34, %8
  br i1 %cmp.i.i184, label %do.end.i.i186, label %if.then.i.i185.nla_nest_cancel.exit191_crit_edge, !prof !71

if.then.i.i185.nla_nest_cancel.exit191_crit_edge: ; preds = %if.then.i.i185
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_nest_cancel.exit191

do.end.i.i186:                                    ; preds = %if.then.i.i185
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %nla_nest_cancel.exit191

nla_nest_cancel.exit191:                          ; preds = %do.end.i.i186, %if.then.i.i185.nla_nest_cancel.exit191_crit_edge
  %35 = ptrtoint ptr %data.i.i173 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i173, align 4
  %sub.ptr.lhs.cast.i.i187 = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i188 = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i189 = sub i32 %sub.ptr.lhs.cast.i.i187, %sub.ptr.rhs.cast.i.i188
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i189) #10
  br label %cleanup

if.end68:                                         ; preds = %for.body64
  %37 = ptrtoint ptr %nc.0264 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %nc.0264, align 8
  %conv.i = zext i8 %38 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #10
  %39 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %conv.i, ptr %tmp.i.i, align 4
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #10
  %arrayidx1.i = getelementptr i8, ptr %.pn150263, i32 -576
  %40 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx1.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i1.i) #10
  %42 = ptrtoint ptr %tmp.i1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %tmp.i1.i, align 4
  %call.i2.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i1.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i1.i) #10
  %state.i = getelementptr i8, ptr %.pn150263, i32 -824
  %43 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %44)
  %cmp.i192 = icmp eq i32 %44, 2
  br i1 %cmp.i192, label %if.then.i, label %if.end68.if.end.i_crit_edge

if.end68.if.end.i_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  %call.i3.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 0, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end68.if.end.i_crit_edge
  %package.i = getelementptr i8, ptr %.pn150263, i32 -772
  %45 = ptrtoint ptr %package.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %package.i, align 8
  %preferred_channel.i = getelementptr inbounds %struct.ncsi_package, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %preferred_channel.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %preferred_channel.i, align 4
  %cmp5.i = icmp eq ptr %48, %nc.0264
  br i1 %cmp5.i, label %if.then7.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i4.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 0, ptr noundef null) #10
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i.if.end9.i_crit_edge
  %version.i = getelementptr i8, ptr %.pn150263, i32 -768
  %49 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %version.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i5.i) #10
  %51 = ptrtoint ptr %tmp.i5.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %tmp.i5.i, align 4
  %call.i6.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i5.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i5.i) #10
  %alpha2.i = getelementptr i8, ptr %.pn150263, i32 -764
  %52 = ptrtoint ptr %alpha2.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %alpha2.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i7.i) #10
  %54 = ptrtoint ptr %tmp.i7.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %tmp.i7.i, align 4
  %call.i8.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i7.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i7.i) #10
  %fw_name.i = getelementptr i8, ptr %.pn150263, i32 -760
  %call.i9.i = call i32 @strlen(ptr noundef %fw_name.i) #14
  %add.i.i = add i32 %call.i9.i, 1
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef %add.i.i, ptr noundef %fw_name.i) #10
  %55 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tail.i.i, align 8
  %call1.i10.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i10.i)
  %cmp.i.i193 = icmp slt i32 %call1.i10.i, 0
  %tobool.not14.i = icmp eq ptr %56, null
  %tobool.not.i = select i1 %cmp.i.i193, i1 true, i1 %tobool.not14.i
  br i1 %tobool.not.i, label %if.then.i.i200, label %if.end18.i

if.end18.i:                                       ; preds = %if.end9.i
  %vlan_filter.i = getelementptr i8, ptr %.pn150263, i32 -308
  %bitmap.i = getelementptr i8, ptr %.pn150263, i32 -300
  %57 = ptrtoint ptr %vlan_filter.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %vlan_filter.i, align 8
  %conv1915.i = zext i8 %58 to i32
  %call2016.i = call i32 @_find_next_bit_be(ptr noundef %bitmap.i, i32 noundef %conv1915.i, i32 noundef 0) #10
  %59 = ptrtoint ptr %vlan_filter.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %vlan_filter.i, align 8
  %conv2217.i = zext i8 %60 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call2016.i, i32 %conv2217.i)
  %cmp2318.i = icmp slt i32 %call2016.i, %conv2217.i
  br i1 %cmp2318.i, label %while.body.lr.ph.i, label %if.end18.i.if.end72_crit_edge

if.end18.i.if.end72_crit_edge:                    ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

while.body.lr.ph.i:                               ; preds = %if.end18.i
  %vids.i = getelementptr i8, ptr %.pn150263, i32 -292
  br label %while.body.i

while.body.i:                                     ; preds = %if.end31.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %call2019.i = phi i32 [ %call2016.i, %while.body.lr.ph.i ], [ %call20.i, %if.end31.i.while.body.i_crit_edge ]
  %61 = ptrtoint ptr %vids.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %vids.i, align 8
  %arrayidx25.i = getelementptr i16, ptr %62, i32 %call2019.i
  %63 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %arrayidx25.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %64)
  %tobool26.not.i = icmp eq i16 %64, 0
  br i1 %tobool26.not.i, label %while.body.i.if.end31.i_crit_edge, label %if.then27.i

while.body.i.if.end31.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.then27.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i11.i) #10
  %65 = ptrtoint ptr %tmp.i11.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %64, ptr %tmp.i11.i, align 2
  %call.i12.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 2, ptr noundef nonnull %tmp.i11.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i11.i) #10
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then27.i, %while.body.i.if.end31.i_crit_edge
  %66 = ptrtoint ptr %vlan_filter.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %vlan_filter.i, align 8
  %conv19.i = zext i8 %67 to i32
  %add.i = add nsw i32 %call2019.i, 1
  %call20.i = call i32 @_find_next_bit_be(ptr noundef %bitmap.i, i32 noundef %conv19.i, i32 noundef %add.i) #10
  %68 = ptrtoint ptr %vlan_filter.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %vlan_filter.i, align 8
  %conv22.i = zext i8 %69 to i32
  %cmp23.i = icmp slt i32 %call20.i, %conv22.i
  br i1 %cmp23.i, label %if.end31.i.while.body.i_crit_edge, label %if.end31.i.if.end72_crit_edge

if.end31.i.if.end72_crit_edge:                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

if.end31.i.while.body.i_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

if.then.i.i200:                                   ; preds = %if.end9.i
  %data.i.i198 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %70 = ptrtoint ptr %data.i.i198 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i.i198, align 4
  %cmp.i.i199 = icmp ugt ptr %71, %28
  br i1 %cmp.i.i199, label %do.end.i.i201, label %if.then.i.i200.if.then.i.i210_crit_edge, !prof !71

if.then.i.i200.if.then.i.i210_crit_edge:          ; preds = %if.then.i.i200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i210

do.end.i.i201:                                    ; preds = %if.then.i.i200
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.then.i.i210

if.then.i.i210:                                   ; preds = %do.end.i.i201, %if.then.i.i200.if.then.i.i210_crit_edge
  %72 = ptrtoint ptr %data.i.i198 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i.i198, align 4
  %sub.ptr.lhs.cast.i.i202 = ptrtoint ptr %28 to i32
  %sub.ptr.rhs.cast.i.i203 = ptrtoint ptr %73 to i32
  %sub.ptr.sub.i.i204 = sub i32 %sub.ptr.lhs.cast.i.i202, %sub.ptr.rhs.cast.i.i203
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i204) #10
  %74 = ptrtoint ptr %data.i.i198 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i.i198, align 4
  %cmp.i.i209 = icmp ugt ptr %75, %21
  br i1 %cmp.i.i209, label %do.end.i.i211, label %if.then.i.i210.if.then.i.i220_crit_edge, !prof !71

if.then.i.i210.if.then.i.i220_crit_edge:          ; preds = %if.then.i.i210
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i220

do.end.i.i211:                                    ; preds = %if.then.i.i210
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.then.i.i220

if.then.i.i220:                                   ; preds = %do.end.i.i211, %if.then.i.i210.if.then.i.i220_crit_edge
  %76 = ptrtoint ptr %data.i.i198 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i.i198, align 4
  %sub.ptr.lhs.cast.i.i212 = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i213 = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i.i214 = sub i32 %sub.ptr.lhs.cast.i.i212, %sub.ptr.rhs.cast.i.i213
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i214) #10
  %78 = ptrtoint ptr %data.i.i198 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %data.i.i198, align 4
  %cmp.i.i219 = icmp ugt ptr %79, %8
  br i1 %cmp.i.i219, label %do.end.i.i221, label %if.then.i.i220.nla_nest_cancel.exit226_crit_edge, !prof !71

if.then.i.i220.nla_nest_cancel.exit226_crit_edge: ; preds = %if.then.i.i220
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_nest_cancel.exit226

do.end.i.i221:                                    ; preds = %if.then.i.i220
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %nla_nest_cancel.exit226

nla_nest_cancel.exit226:                          ; preds = %do.end.i.i221, %if.then.i.i220.nla_nest_cancel.exit226_crit_edge
  %80 = ptrtoint ptr %data.i.i198 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %data.i.i198, align 4
  %sub.ptr.lhs.cast.i.i222 = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i223 = ptrtoint ptr %81 to i32
  %sub.ptr.sub.i.i224 = sub i32 %sub.ptr.lhs.cast.i.i222, %sub.ptr.rhs.cast.i.i223
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i224) #10
  br label %cleanup

if.end72:                                         ; preds = %if.end31.i.if.end72_crit_edge, %if.end18.i.if.end72_crit_edge
  %82 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i194 = ptrtoint ptr %83 to i32
  %sub.ptr.rhs.cast.i.i195 = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i.i196 = sub i32 %sub.ptr.lhs.cast.i.i194, %sub.ptr.rhs.cast.i.i195
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i196 to i16
  %84 = ptrtoint ptr %56 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv.i.i, ptr %56, align 2
  %85 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %85 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i228 = trunc i32 %sub.ptr.sub.i to i16
  %86 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i228, ptr %28, align 2
  %87 = ptrtoint ptr %.pn150263 to i32
  call void @__asan_load4_noabort(i32 %87)
  %.pn150 = load volatile ptr, ptr %.pn150263, align 4
  %cmp62.not = icmp eq ptr %.pn150, %channels
  br i1 %cmp62.not, label %if.end72.for.end_crit_edge, label %if.end72.for.body64_crit_edge

if.end72.for.body64_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body64

if.end72.for.end_crit_edge:                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end72.for.end_crit_edge, %do.end50.for.end_crit_edge
  %88 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i230 = ptrtoint ptr %89 to i32
  %sub.ptr.rhs.cast.i231 = ptrtoint ptr %21 to i32
  %sub.ptr.sub.i232 = sub i32 %sub.ptr.lhs.cast.i230, %sub.ptr.rhs.cast.i231
  %conv.i233 = trunc i32 %sub.ptr.sub.i232 to i16
  %90 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 %conv.i233, ptr %21, align 2
  %91 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i235 = ptrtoint ptr %91 to i32
  %sub.ptr.rhs.cast.i236 = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i237 = sub i32 %sub.ptr.lhs.cast.i235, %sub.ptr.rhs.cast.i236
  %conv.i238 = trunc i32 %sub.ptr.sub.i237 to i16
  %92 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 %conv.i238, ptr %8, align 2
  br label %for.inc85

for.inc85:                                        ; preds = %for.end, %for.body.for.inc85_crit_edge
  %found.1.off0 = phi i1 [ %found.0.off0268, %for.body.for.inc85_crit_edge ], [ true, %for.end ]
  %93 = ptrtoint ptr %.pn269 to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pn = load volatile ptr, ptr %.pn269, align 4
  %cmp12.not = icmp eq ptr %.pn, %packages
  br i1 %cmp12.not, label %for.end95, label %for.inc85.for.body_crit_edge

for.inc85.for.body_crit_edge:                     ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end95:                                        ; preds = %for.inc85
  call void @__sanitizer_cov_trace_pc() #12
  %spec.select = select i1 %found.1.off0, i32 0, i32 -19
  br label %cleanup

cleanup:                                          ; preds = %for.end95, %nla_nest_cancel.exit226, %nla_nest_cancel.exit191, %nla_nest_cancel.exit167, %nla_nest_cancel.exit, %if.end17.cleanup_crit_edge, %do.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -19, %if.then ], [ %call.i, %nla_nest_cancel.exit ], [ -12, %nla_nest_cancel.exit226 ], [ -12, %nla_nest_cancel.exit191 ], [ -12, %nla_nest_cancel.exit167 ], [ -19, %do.end.cleanup_crit_edge ], [ %spec.select, %for.end95 ], [ -12, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nla_nest_cancel(ptr noundef %skb, ptr noundef %start) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %tobool.not.i = icmp eq ptr %start, null
  br i1 %tobool.not.i, label %entry.nlmsg_trim.exit_crit_edge, label %if.then.i

entry.nlmsg_trim.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %nlmsg_trim.exit

if.then.i:                                        ; preds = %entry
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %1, %start
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !71

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %start to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  tail call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #10
  br label %nlmsg_trim.exit

nlmsg_trim.exit:                                  ; preds = %if.end.i, %entry.nlmsg_trim.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ncsi_find_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ncsi_reset_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ncsi_xmit_cmd(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !13, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !54, !55, !56, !58, !59}
!llvm.named.register.sp = !{!61}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_ncsi_netlink__477_777_ncsi_init_netlink4, !1, !"__initcall__kmod_ncsi_netlink__477_777_ncsi_init_netlink4", i1 false, i1 false}
!1 = !{!"../net/ncsi/ncsi-netlink.c", i32 777, i32 1}
!2 = !{ptr @ncsi_genl_family, !3, !"ncsi_genl_family", i1 false, i1 false}
!3 = !{!"../net/ncsi/ncsi-netlink.c", i32 763, i32 27}
!4 = !{ptr @ncsi_genl_policy, !5, !"ncsi_genl_policy", i1 false, i1 false}
!5 = !{!"../net/ncsi/ncsi-netlink.c", i32 23, i32 32}
!6 = !{ptr @ncsi_ops, !7, !"ncsi_ops", i1 false, i1 false}
!7 = !{!"../net/ncsi/ncsi-netlink.c", i32 723, i32 36}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../net/ncsi/ncsi-netlink.c", i32 46, i32 3}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ndp_from_ifindex._entry, !9, !"_entry", i1 false, i1 false}
!13 = !{ptr @ndp_from_ifindex._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../net/ncsi/ncsi-netlink.c", i32 104, i32 30}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../net/ncsi/ncsi-netlink.c", i32 109, i32 2}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/ncsi/ncsi-netlink.c", i32 127, i32 3}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../include/net/netlink.h", i32 991, i32 3}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../net/ncsi/ncsi-netlink.c", i32 239, i32 2}
!25 = !{ptr @__nlmsg_parse.__msg, !26, !"__msg", i1 false, i1 false}
!26 = !{!"../include/net/netlink.h", i32 729, i32 3}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/ncsi/ncsi-netlink.c", i32 300, i32 2}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/ncsi/ncsi-netlink.c", i32 311, i32 3}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/ncsi/ncsi-netlink.c", i32 318, i32 9}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/ncsi/ncsi-netlink.c", i32 343, i32 8}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/ncsi/ncsi-netlink.c", i32 346, i32 30}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../net/ncsi/ncsi-netlink.c", i32 379, i32 2}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../net/ncsi/ncsi-netlink.c", i32 386, i32 29}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../net/ncsi/ncsi-netlink.c", i32 447, i32 30}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../net/ncsi/ncsi-netlink.c", i32 470, i32 7}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/ncsi/ncsi-netlink.c", i32 619, i32 8}
!47 = distinct !{null, !48, !"__warned", i1 false, i1 false}
!48 = !{!"../net/ncsi/ncsi-netlink.c", i32 669, i32 2}
!49 = distinct !{null, !50, !"__warned", i1 false, i1 false}
!50 = !{!"../net/ncsi/ncsi-netlink.c", i32 682, i32 3}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../net/ncsi/ncsi-netlink.c", i32 691, i32 3}
!53 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ncsi_set_channel_mask_nl.__UNIQUE_ID_ddebug475, !52, !"__UNIQUE_ID_ddebug475", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../net/ncsi/ncsi-netlink.c", i32 699, i32 3}
!58 = !{ptr @ncsi_set_channel_mask_nl.__UNIQUE_ID_ddebug476, !57, !"__UNIQUE_ID_ddebug476", i1 false, i1 false}
!59 = !{ptr @.str.20, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../net/ncsi/ncsi-netlink.c", i32 708, i32 8}
!61 = !{!"sp"}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i64 759874, i64 759935}
!73 = !{i64 762606}
!74 = !{i64 762891}
!75 = !{i64 2148357704, i64 2148357736, i64 2148357765, i64 2148357799, i64 2148357830, i64 2148357853}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2148969551, i64 2148969556, i64 2148969569, i64 2148969613, i64 2148969647, i64 2148969668}
