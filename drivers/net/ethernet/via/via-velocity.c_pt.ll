; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/via/via-velocity.c_pt.bc'
source_filename = "../drivers/net/ethernet/via/via-velocity.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.90 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.velocity_info_tbl = type { i32, ptr, i32, i32 }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.130, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.147, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.130 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.147 = type { ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.velocity_info = type { ptr, ptr, ptr, i32, [128 x i32], [4 x i8], i32, ptr, i32, i32, %struct.tx_info, %struct.rx_info, [32 x i32], %struct.velocity_opt, i32, i32, i32, i32, i32, [8 x i8], [8 x i8], %struct.spinlock, i32, [6 x i8], %struct.velocity_context, i32, i32, i8, %struct.napi_struct }
%struct.tx_info = type { i32, [4 x i32], [4 x i32], [4 x i32], [4 x ptr], [4 x ptr], [4 x i32] }
%struct.rx_info = type { i32, i32, i32, i32, ptr, ptr, i32 }
%struct.velocity_opt = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.velocity_context = type { [256 x i8], [64 x [6 x i8]], [64 x i16], [2 x i32], [2 x i32], [8 x i32] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.rx_desc = type { %struct.rdesc0, %struct.rdesc1, i32, i16, i16 }
%struct.rdesc0 = type { i16, i16 }
%struct.rdesc1 = type { i16, i8, i8 }
%struct.mac_regs = type { [6 x i8], i8, i8, i32, i32, [8 x i8], i32, i16, i16, i16, i8, i8, i32, i32, i32, i16, i8, i8, i16, i8, i8, i32, i16, i8, i8, [4 x i32], i16, i16, [4 x i16], i16, i16, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i8, i8, i8, i8, i8, i8, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i8, i8, i16, i16, i16, i16, [8 x i16], [4 x [4 x i32]] }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.velocity_td_info = type { ptr, i32, [7 x i32] }
%struct.tx_desc = type { %struct.tdesc0, %struct.tdesc1, [7 x %struct.td_buf] }
%struct.tdesc0 = type { i16, i16 }
%struct.tdesc1 = type { i16, i8, i8 }
%struct.td_buf = type { i32, i16, i16 }
%struct.page = type { i32, %union.anon.2, %union.anon.123, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.123 = type { %struct.atomic_t }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.ifreq = type { %union.anon.131, %union.anon.132 }
%union.anon.131 = type { [16 x i8] }
%union.anon.132 = type { %struct.ifmap }
%struct.ifmap = type { i32, i32, i16, i8, i8, i8 }
%struct.mii_ioctl_data = type { i16, i16, i16, i16 }
%struct.velocity_rd_info = type { ptr, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.148, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.148 = type { ptr }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_wolinfo = type { i32, i32, i32, [6 x i8] }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.146, i32 }
%struct.anon.146 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.pdev_archdata = type { ptr }

@__UNIQUE_ID_author482 = internal constant [54 x i8] c"via_velocity.author=VIA Networking Technologies, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file483 = internal constant [56 x i8] c"via_velocity.file=drivers/net/ethernet/via/via-velocity\00", section ".modinfo", align 1
@__UNIQUE_ID_license484 = internal constant [25 x i8] c"via_velocity.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description485 = internal constant [88 x i8] c"via_velocity.description=VIA Networking Velocity Family Gigabit Ethernet Adapter Driver\00", section ".modinfo", align 1
@__param_str_RxDescriptors = internal constant [27 x i8] c"via_velocity.RxDescriptors\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_RxDescriptors = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @RxDescriptors }, align 4
@__param_RxDescriptors = internal constant %struct.kernel_param { ptr @__param_str_RxDescriptors, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_RxDescriptors } }, section "__param", align 4
@__UNIQUE_ID_RxDescriptorstype486 = internal constant [49 x i8] c"via_velocity.parmtype=RxDescriptors:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_RxDescriptors487 = internal constant [62 x i8] c"via_velocity.parm=RxDescriptors:Number of receive descriptors\00", section ".modinfo", align 1
@__param_str_TxDescriptors = internal constant [27 x i8] c"via_velocity.TxDescriptors\00", align 1
@__param_arr_TxDescriptors = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @TxDescriptors }, align 4
@__param_TxDescriptors = internal constant %struct.kernel_param { ptr @__param_str_TxDescriptors, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_TxDescriptors } }, section "__param", align 4
@__UNIQUE_ID_TxDescriptorstype488 = internal constant [49 x i8] c"via_velocity.parmtype=TxDescriptors:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_TxDescriptors489 = internal constant [63 x i8] c"via_velocity.parm=TxDescriptors:Number of transmit descriptors\00", section ".modinfo", align 1
@__param_str_rx_thresh = internal constant [23 x i8] c"via_velocity.rx_thresh\00", align 1
@__param_arr_rx_thresh = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @rx_thresh }, align 4
@__param_rx_thresh = internal constant %struct.kernel_param { ptr @__param_str_rx_thresh, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_rx_thresh } }, section "__param", align 4
@__UNIQUE_ID_rx_threshtype490 = internal constant [45 x i8] c"via_velocity.parmtype=rx_thresh:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_thresh491 = internal constant [51 x i8] c"via_velocity.parm=rx_thresh:Receive fifo threshold\00", section ".modinfo", align 1
@__param_str_DMA_length = internal constant [24 x i8] c"via_velocity.DMA_length\00", align 1
@__param_arr_DMA_length = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @DMA_length }, align 4
@__param_DMA_length = internal constant %struct.kernel_param { ptr @__param_str_DMA_length, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_DMA_length } }, section "__param", align 4
@__UNIQUE_ID_DMA_lengthtype492 = internal constant [46 x i8] c"via_velocity.parmtype=DMA_length:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_DMA_length493 = internal constant [40 x i8] c"via_velocity.parm=DMA_length:DMA length\00", section ".modinfo", align 1
@__param_str_IP_byte_align = internal constant [27 x i8] c"via_velocity.IP_byte_align\00", align 1
@__param_arr_IP_byte_align = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @IP_byte_align }, align 4
@__param_IP_byte_align = internal constant %struct.kernel_param { ptr @__param_str_IP_byte_align, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_IP_byte_align } }, section "__param", align 4
@__UNIQUE_ID_IP_byte_aligntype494 = internal constant [49 x i8] c"via_velocity.parmtype=IP_byte_align:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_IP_byte_align495 = internal constant [63 x i8] c"via_velocity.parm=IP_byte_align:Enable IP header dword aligned\00", section ".modinfo", align 1
@__param_str_flow_control = internal constant [26 x i8] c"via_velocity.flow_control\00", align 1
@__param_arr_flow_control = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @flow_control }, align 4
@__param_flow_control = internal constant %struct.kernel_param { ptr @__param_str_flow_control, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_flow_control } }, section "__param", align 4
@__UNIQUE_ID_flow_controltype496 = internal constant [48 x i8] c"via_velocity.parmtype=flow_control:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_flow_control497 = internal constant [59 x i8] c"via_velocity.parm=flow_control:Enable flow control ability\00", section ".modinfo", align 1
@__param_str_speed_duplex = internal constant [26 x i8] c"via_velocity.speed_duplex\00", align 1
@__param_arr_speed_duplex = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @speed_duplex }, align 4
@__param_speed_duplex = internal constant %struct.kernel_param { ptr @__param_str_speed_duplex, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_speed_duplex } }, section "__param", align 4
@__UNIQUE_ID_speed_duplextype498 = internal constant [48 x i8] c"via_velocity.parmtype=speed_duplex:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_speed_duplex499 = internal constant [65 x i8] c"via_velocity.parm=speed_duplex:Setting the speed and duplex mode\00", section ".modinfo", align 1
@__param_str_wol_opts = internal constant [22 x i8] c"via_velocity.wol_opts\00", align 1
@__param_arr_wol_opts = internal constant %struct.kparam_array { i32 8, i32 4, ptr null, ptr @param_ops_int, ptr @wol_opts }, align 4
@__param_wol_opts = internal constant %struct.kernel_param { ptr @__param_str_wol_opts, ptr null, ptr @param_array_ops, i16 0, i8 -1, i8 0, %union.anon.124 { ptr @__param_arr_wol_opts } }, section "__param", align 4
@__UNIQUE_ID_wol_optstype500 = internal constant [44 x i8] c"via_velocity.parmtype=wol_opts:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_wol_opts501 = internal constant [47 x i8] c"via_velocity.parm=wol_opts:Wake On Lan options\00", section ".modinfo", align 1
@__param_str_rx_copybreak = internal constant [26 x i8] c"via_velocity.rx_copybreak\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@rx_copybreak = internal global { i32, [28 x i8] } { i32 200, [28 x i8] zeroinitializer }, align 32
@__param_rx_copybreak = internal constant %struct.kernel_param { ptr @__param_str_rx_copybreak, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @rx_copybreak } }, section "__param", align 4
@__UNIQUE_ID_rx_copybreaktype502 = internal constant [39 x i8] c"via_velocity.parmtype=rx_copybreak:int\00", section ".modinfo", align 1
@__UNIQUE_ID_rx_copybreak503 = internal constant [73 x i8] c"via_velocity.parm=rx_copybreak:Copy breakpoint for copy-only-tiny-frames\00", section ".modinfo", align 1
@velocity_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.28, ptr @velocity_pci_id_table, ptr @velocity_pci_probe, ptr @velocity_pci_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @velocity_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@velocity_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @velocity_platform_probe, ptr @velocity_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.28, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @velocity_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @velocity_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_via_velocity__510_3745_velocity_init_module6 = internal global ptr @velocity_init_module, section ".initcall6.init", align 4
@__exitcall_velocity_cleanup_module = internal global ptr @velocity_cleanup_module, section ".exitcall.exit", align 4
@RxDescriptors = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@TxDescriptors = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@rx_thresh = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@DMA_length = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@IP_byte_align = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@flow_control = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@speed_duplex = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@wol_opts = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], [32 x i8] zeroinitializer }, align 32
@velocity_inetaddr_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @velocity_netdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@velocity_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @velocity_open, ptr @velocity_close, ptr @velocity_xmit, ptr null, ptr null, ptr null, ptr @velocity_set_multi, ptr @eth_mac_addr, ptr @eth_validate_addr, ptr null, ptr @velocity_ioctl, ptr null, ptr null, ptr null, ptr null, ptr @velocity_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @velocity_get_stats, ptr @velocity_vlan_rx_add_vid, ptr @velocity_vlan_rx_kill_vid, ptr @velocity_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@velocity_init_dma_rings._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1497, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s : DMA memory allocation failed.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"velocity_init_dma_rings\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/via/via-velocity.c\00", [56 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@velocity_init_dma_rings._entry_ptr = internal global ptr @velocity_init_dma_rings._entry, section ".printk_index", align 4
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to allocate RX buffer\0A\00", [34 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Velocity is in AUTO mode\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"set Velocity to forced full mode\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"set Velocity to forced half mode\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to detect cable link\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"auto-negotiation\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1000\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"100\00", [28 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"10\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"full\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"half\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"forced\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Link %s speed %sM bps %s duplex\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"TD structure error TDindex=%hx\0A\00", [32 x i8] zeroinitializer }, align 32
@velocity_get_ip.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/net/ethernet/via/via-velocity.h\00", [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"via-velocity\00", [19 x i8] zeroinitializer }, align 32
@velocity_pci_id_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 4358, i32 12569, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@velocity_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @velocity_suspend, ptr @velocity_resume, ptr @velocity_suspend, ptr @velocity_resume, ptr @velocity_suspend, ptr @velocity_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@chip_info_table = internal global { [2 x %struct.velocity_info_tbl], [32 x i8] } { [2 x %struct.velocity_info_tbl] [%struct.velocity_info_tbl { i32 1, ptr @.str.31, i32 1, i32 16777215 }, %struct.velocity_info_tbl zeroinitializer], [32 x i8] zeroinitializer }, align 32
@velocity_pci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 2924, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"No PCI resources.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"velocity_pci_probe\00", [45 x i8] zeroinitializer }, align 32
@velocity_pci_probe._entry_ptr = internal global ptr @velocity_pci_probe._entry, section ".printk_index", align 4
@.str.31 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"VIA Networking Velocity Family Gigabit Ethernet Adapter\00", [40 x i8] zeroinitializer }, align 32
@velocity_nics = internal global { i32, [28 x i8] } zeroinitializer, align 32
@velocity_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 2776, ptr @.str.34, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"already found %d NICs.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"velocity_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@velocity_probe._entry_ptr = internal global ptr @velocity_probe._entry, section ".printk_index", align 4
@velocity_probe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@velocity_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.2, i32 2789, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016via_velocity: %s Ver. %s\0A\00", [36 x i8] zeroinitializer }, align 32
@velocity_probe._entry_ptr.37 = internal global ptr @velocity_probe._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"VIA Networking Velocity Family Gigabit Ethernet Adapter Driver\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.15\00", [27 x i8] zeroinitializer }, align 32
@velocity_probe.__already_done.40 = internal unnamed_addr global i1 false, section ".data.once", align 1
@velocity_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.33, ptr @.str.2, i32 2790, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\016via_velocity: Copyright (c) 2002, 2003 VIA Networking Technologies, Inc.\0A\00", [52 x i8] zeroinitializer }, align 32
@velocity_probe._entry_ptr.43 = internal global ptr @velocity_probe._entry.41, section ".printk_index", align 4
@velocity_probe.__already_done.44 = internal unnamed_addr global i1 false, section ".data.once", align 1
@velocity_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.33, ptr @.str.2, i32 2791, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016via_velocity: Copyright (c) 2004 Red Hat Inc.\0A\00", [47 x i8] zeroinitializer }, align 32
@velocity_probe._entry_ptr.47 = internal global ptr @velocity_probe._entry.45, section ".printk_index", align 4
@velocity_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 51, i32 0, ptr @velocity_get_drvinfo, ptr null, ptr null, ptr @velocity_ethtool_get_wol, ptr @velocity_ethtool_set_wol, ptr null, ptr null, ptr null, ptr @velocity_get_link, ptr null, ptr null, ptr null, ptr null, ptr @velocity_get_coalesce, ptr @velocity_set_coalesce, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @velocity_get_strings, ptr null, ptr @velocity_get_ethtool_stats, ptr @velocity_ethtool_up, ptr @velocity_ethtool_down, ptr null, ptr null, ptr @velocity_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @velocity_get_link_ksettings, ptr @velocity_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@velocity_init_info.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&vptr->lock\00", [20 x i8] zeroinitializer }, align 32
@velocity_get_pci_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 2683, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"region #0 is not an I/O resource, aborting.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"velocity_get_pci_info\00", [42 x i8] zeroinitializer }, align 32
@velocity_get_pci_info._entry_ptr = internal global ptr @velocity_get_pci_info._entry, section ".printk_index", align 4
@velocity_get_pci_info._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.2, i32 2689, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"region #1 is an I/O resource, aborting.\0A\00", [55 x i8] zeroinitializer }, align 32
@velocity_get_pci_info._entry_ptr.53 = internal global ptr @velocity_get_pci_info._entry.51, section ".printk_index", align 4
@velocity_get_pci_info._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.2, i32 2694, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"region #1 is too small.\0A\00", [39 x i8] zeroinitializer }, align 32
@velocity_get_pci_info._entry_ptr.56 = internal global ptr @velocity_get_pci_info._entry.54, section ".printk_index", align 4
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no-eeprom\00", [22 x i8] zeroinitializer }, align 32
@velocity_get_platform_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 2717, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to find memory address\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"velocity_get_platform_info\00", [37 x i8] zeroinitializer }, align 32
@velocity_get_platform_info._entry_ptr = internal global ptr @velocity_get_platform_info._entry, section ".printk_index", align 4
@velocity_get_platform_info._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 2724, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"memory region is too small.\0A\00", [35 x i8] zeroinitializer }, align 32
@velocity_get_platform_info._entry_ptr.62 = internal global ptr @velocity_get_platform_info._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rx_thresh\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DMA_length\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RxDescriptors\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"TxDescriptors\00", [18 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"flow_control\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IP_byte_align\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Media link mode\00", [16 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Wake On Lan options\00", [44 x i8] zeroinitializer }, align 32
@velocity_set_int_opt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\015via_velocity: the value of parameter %s is invalid, the valid range is (%d-%d)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"velocity_set_int_opt\00", [43 x i8] zeroinitializer }, align 32
@velocity_set_int_opt._entry_ptr = internal global ptr @velocity_set_int_opt._entry, section ".printk_index", align 4
@velocity_set_int_opt._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016via_velocity: set value of parameter %s to %d\0A\00", [47 x i8] zeroinitializer }, align 32
@velocity_set_int_opt._entry_ptr.75 = internal global ptr @velocity_set_int_opt._entry.73, section ".printk_index", align 4
@velocity_set_bool_opt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.76, ptr @.str.2, i32 449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"velocity_set_bool_opt\00", [42 x i8] zeroinitializer }, align 32
@velocity_set_bool_opt._entry_ptr = internal global ptr @velocity_set_bool_opt._entry, section ".printk_index", align 4
@velocity_set_bool_opt._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.2, i32 453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016via_velocity: set parameter %s to %s\0A\00", [56 x i8] zeroinitializer }, align 32
@velocity_set_bool_opt._entry_ptr.79 = internal global ptr @velocity_set_bool_opt._entry.77, section ".printk_index", align 4
@.str.80 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"TRUE\00", [27 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FALSE\00", [26 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"platform\00", [23 x i8] zeroinitializer }, align 32
@velocity_gstrings = internal constant { [32 x [32 x i8]], [256 x i8] } { [32 x [32 x i8]] [[32 x i8] c"rx_all\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_error\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_runt_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_runt_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_64\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_65_to_127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_65_to_127\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_128_to_255\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_128_to_255\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_256_to_511\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_256_to_511\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_512_to_1023\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_512_to_1023\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_1024_to_1518\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_1024_to_1518\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_ether_collisions\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_crc_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_jumbo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_jumbo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_mac_control_frames\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_mac_control_frames\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_frame_alignment_errors\00\00\00\00\00\00\00", [32 x i8] c"rx_long_ok\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_long_err\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"tx_sqe_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_no_buf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"rx_symbol_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"in_range_length_errors\00\00\00\00\00\00\00\00\00\00", [32 x i8] c"late_collisions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"], [256 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"received frame spans multiple RDs\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s - Ethernet Address: %pM\0A\00", [36 x i8] zeroinitializer }, align 32
@velocity_set_wol.buf = internal global { [256 x i8], [64 x i8] } zeroinitializer, align 32
@velocity_set_wol.mask_pattern = internal constant { [2 x [4 x i32]], [32 x i8] } { [2 x [4 x i32]] [[4 x i32] [i32 2109440, i32 960, i32 0, i32 0], [4 x i32] [i32 -4096, i32 -1, i32 -1, i32 65535]], [32 x i8] zeroinitializer }, align 32
@byte_rev_table = external dso_local local_unnamed_addr constant [256 x i8], align 1
@velocity_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"via,velocity-vt6110\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @chip_info_table }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"via_velocity\00", [19 x i8] zeroinitializer }, align 32
@switch.table.velocity_init_registers = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 32, i32 4, i32 20, i32 2, i32 18, i32 24], [40 x i8] zeroinitializer }, align 32
@switch.table.velocity_init_registers.86 = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 32, i32 4, i32 20, i32 2, i32 18, i32 24], [40 x i8] zeroinitializer }, align 32
@switch.table.velocity_get_coalesce = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 16, i32 64], [20 x i8] zeroinitializer }, align 32
@switch.table.velocity_get_coalesce.87 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 4, i32 16, i32 64], [20 x i8] zeroinitializer }, align 32
@switch.table.velocity_get_link_ksettings = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 255, i32 196, i32 200, i32 193, i32 194, i32 224], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 32, i64 35143, i64 35144, i64 35145]
@__sancov_gen_cov_switch_values.89 = internal global [7 x i64] [i64 5, i64 32, i64 1033232, i64 1033728, i64 1033744, i64 21040192, i64 21040208]
@__sancov_gen_cov_switch_values.90 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.91 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.92 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@___asan_gen_.94 = private unnamed_addr constant [13 x i8] c"rx_copybreak\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 351, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"velocity_pci_driver\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 3242, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant [25 x i8] c"velocity_platform_driver\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 3252, i32 31 }
@___asan_gen_.103 = private unnamed_addr constant [14 x i8] c"RxDescriptors\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 266, i32 1 }
@___asan_gen_.106 = private unnamed_addr constant [14 x i8] c"TxDescriptors\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 271, i32 1 }
@___asan_gen_.109 = private unnamed_addr constant [10 x i8] c"rx_thresh\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 282, i32 1 }
@___asan_gen_.112 = private unnamed_addr constant [11 x i8] c"DMA_length\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 298, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant [14 x i8] c"IP_byte_align\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 307, i32 1 }
@___asan_gen_.118 = private unnamed_addr constant [13 x i8] c"flow_control\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 320, i32 1 }
@___asan_gen_.121 = private unnamed_addr constant [13 x i8] c"speed_duplex\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 337, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant [9 x i8] c"wol_opts\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 349, i32 1 }
@___asan_gen_.127 = private unnamed_addr constant [27 x i8] c"velocity_inetaddr_notifier\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 3682, i32 30 }
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c"velocity_netdev_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2631, i32 36 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1496, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1642, i32 28 }
@___asan_gen_.158 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 326, i32 6 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 895, i32 29 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 931, i32 9 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 937, i32 9 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 995, i32 31 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1000, i32 10 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1003, i32 12 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1005, i32 12 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1007, i32 12 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1010, i32 13 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1012, i32 13 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1014, i32 10 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1038, i32 12 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1043, i32 30 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 1826, i32 28 }
@___asan_gen_.206 = private unnamed_addr constant [43 x i8] c"../drivers/net/ethernet/via/via-velocity.h\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.206, i32 1469, i32 9 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 695, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.215, i32 232, i32 9 }
@___asan_gen_.218 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 723, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 3243, i32 11 }
@___asan_gen_.223 = private unnamed_addr constant [22 x i8] c"velocity_pci_id_table\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 368, i32 35 }
@___asan_gen_.226 = private unnamed_addr constant [16 x i8] c"velocity_pm_ops\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 3236, i32 8 }
@___asan_gen_.229 = private unnamed_addr constant [16 x i8] c"chip_info_table\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 358, i32 33 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2924, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 359, i32 21 }
@___asan_gen_.244 = private unnamed_addr constant [14 x i8] c"velocity_nics\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 84, i32 12 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2776, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2789, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2790, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2791, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant [21 x i8] c"velocity_ethtool_ops\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 3651, i32 33 }
@___asan_gen_.286 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2662, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2682, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2688, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2694, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2712, i32 42 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2717, i32 3 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2724, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 471, i32 9 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 474, i32 9 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 477, i32 9 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 480, i32 9 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 484, i32 9 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 487, i32 10 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 490, i32 9 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 493, i32 9 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 420, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 424, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 448, i32 3 }
@___asan_gen_.376 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 452, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 3429, i32 27 }
@___asan_gen_.391 = private unnamed_addr constant [18 x i8] c"velocity_gstrings\00", align 1
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 3580, i32 19 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2057, i32 29 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 2740, i32 28 }
@___asan_gen_.400 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 3019, i32 12 }
@___asan_gen_.403 = private unnamed_addr constant [13 x i8] c"mask_pattern\00", align 1
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 3022, i32 13 }
@___asan_gen_.406 = private unnamed_addr constant [16 x i8] c"velocity_of_ids\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 379, i32 34 }
@___asan_gen_.409 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.410 = private constant [43 x i8] c"../drivers/net/ethernet/via/via-velocity.c\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.410, i32 3717, i32 12 }
@___asan_gen_.412 = private unnamed_addr constant [37 x i8] c"switch.table.velocity_init_registers\00", align 1
@___asan_gen_.413 = private unnamed_addr constant [40 x i8] c"switch.table.velocity_init_registers.86\00", align 1
@___asan_gen_.414 = private unnamed_addr constant [35 x i8] c"switch.table.velocity_get_coalesce\00", align 1
@___asan_gen_.415 = private unnamed_addr constant [38 x i8] c"switch.table.velocity_get_coalesce.87\00", align 1
@___asan_gen_.416 = private unnamed_addr constant [41 x i8] c"switch.table.velocity_get_link_ksettings\00", align 1
@llvm.compiler.used = appending global [160 x ptr] [ptr @__UNIQUE_ID_DMA_length493, ptr @__UNIQUE_ID_DMA_lengthtype492, ptr @__UNIQUE_ID_IP_byte_align495, ptr @__UNIQUE_ID_IP_byte_aligntype494, ptr @__UNIQUE_ID_RxDescriptors487, ptr @__UNIQUE_ID_RxDescriptorstype486, ptr @__UNIQUE_ID_TxDescriptors489, ptr @__UNIQUE_ID_TxDescriptorstype488, ptr @__UNIQUE_ID_author482, ptr @__UNIQUE_ID_description485, ptr @__UNIQUE_ID_file483, ptr @__UNIQUE_ID_flow_control497, ptr @__UNIQUE_ID_flow_controltype496, ptr @__UNIQUE_ID_license484, ptr @__UNIQUE_ID_rx_copybreak503, ptr @__UNIQUE_ID_rx_copybreaktype502, ptr @__UNIQUE_ID_rx_thresh491, ptr @__UNIQUE_ID_rx_threshtype490, ptr @__UNIQUE_ID_speed_duplex499, ptr @__UNIQUE_ID_speed_duplextype498, ptr @__UNIQUE_ID_wol_opts501, ptr @__UNIQUE_ID_wol_optstype500, ptr @__exitcall_velocity_cleanup_module, ptr @__initcall__kmod_via_velocity__510_3745_velocity_init_module6, ptr @__param_DMA_length, ptr @__param_IP_byte_align, ptr @__param_RxDescriptors, ptr @__param_TxDescriptors, ptr @__param_flow_control, ptr @__param_rx_copybreak, ptr @__param_rx_thresh, ptr @__param_speed_duplex, ptr @__param_wol_opts, ptr @velocity_cleanup_module, ptr @velocity_get_pci_info._entry, ptr @velocity_get_pci_info._entry.51, ptr @velocity_get_pci_info._entry.54, ptr @velocity_get_pci_info._entry_ptr, ptr @velocity_get_pci_info._entry_ptr.53, ptr @velocity_get_pci_info._entry_ptr.56, ptr @velocity_get_platform_info._entry, ptr @velocity_get_platform_info._entry.60, ptr @velocity_get_platform_info._entry_ptr, ptr @velocity_get_platform_info._entry_ptr.62, ptr @velocity_init_dma_rings._entry, ptr @velocity_init_dma_rings._entry_ptr, ptr @velocity_pci_probe._entry, ptr @velocity_pci_probe._entry_ptr, ptr @velocity_probe._entry, ptr @velocity_probe._entry.35, ptr @velocity_probe._entry.41, ptr @velocity_probe._entry.45, ptr @velocity_probe._entry_ptr, ptr @velocity_probe._entry_ptr.37, ptr @velocity_probe._entry_ptr.43, ptr @velocity_probe._entry_ptr.47, ptr @velocity_set_bool_opt._entry, ptr @velocity_set_bool_opt._entry.77, ptr @velocity_set_bool_opt._entry_ptr, ptr @velocity_set_bool_opt._entry_ptr.79, ptr @velocity_set_int_opt._entry, ptr @velocity_set_int_opt._entry.73, ptr @velocity_set_int_opt._entry_ptr, ptr @velocity_set_int_opt._entry_ptr.75, ptr @rx_copybreak, ptr @velocity_pci_driver, ptr @velocity_platform_driver, ptr @RxDescriptors, ptr @TxDescriptors, ptr @rx_thresh, ptr @DMA_length, ptr @IP_byte_align, ptr @flow_control, ptr @speed_duplex, ptr @wol_opts, ptr @velocity_inetaddr_notifier, ptr @velocity_netdev_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @velocity_pci_id_table, ptr @velocity_pm_ops, ptr @chip_info_table, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @velocity_nics, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.42, ptr @.str.46, ptr @velocity_ethtool_ops, ptr @velocity_init_info.__key, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @velocity_gstrings, ptr @.str.83, ptr @.str.84, ptr @velocity_set_wol.buf, ptr @velocity_set_wol.mask_pattern, ptr @velocity_of_ids, ptr @.str.85, ptr @switch.table.velocity_init_registers, ptr @switch.table.velocity_init_registers.86, ptr @switch.table.velocity_get_coalesce, ptr @switch.table.velocity_get_coalesce.87, ptr @switch.table.velocity_get_link_ksettings], section "llvm.metadata"
@0 = internal global [111 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_copybreak to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @RxDescriptors to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @TxDescriptors to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_thresh to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @DMA_length to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @IP_byte_align to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flow_control to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speed_duplex to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wol_opts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_inetaddr_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_init_dma_rings._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_pci_id_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chip_info_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_pci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_nics to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_init_info.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_get_pci_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_get_pci_info._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_get_pci_info._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_get_platform_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_get_platform_info._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_set_int_opt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_set_int_opt._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_set_bool_opt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_set_bool_opt._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_gstrings to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_set_wol.buf to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_set_wol.mask_pattern to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @velocity_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.velocity_init_registers to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.velocity_init_registers.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.velocity_get_coalesce to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.velocity_get_coalesce.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.velocity_get_link_ksettings to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @velocity_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @unregister_inetaddr_notifier(ptr noundef nonnull @velocity_inetaddr_notifier) #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @velocity_pci_driver) #15
  tail call void @platform_driver_unregister(ptr noundef nonnull @velocity_platform_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @register_inetaddr_notifier(ptr noundef nonnull @velocity_inetaddr_notifier) #15
  %call = tail call i32 @__pci_register_driver(ptr noundef nonnull @velocity_pci_driver, ptr noundef null, ptr noundef nonnull @.str.85) #15
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @velocity_platform_driver, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  %or.cond = select i1 %cmp, i1 %cmp2, i1 false
  br i1 %or.cond, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i5 = tail call i32 @unregister_inetaddr_notifier(ptr noundef nonnull @velocity_inetaddr_notifier) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inetaddr_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_netdev_event(ptr nocapture noundef readnone %nb, i32 noundef %notification, ptr nocapture noundef readonly %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ifa_dev = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %ifa_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifa_dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 127
  %4 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nd_net.i, align 4
  %cmp = icmp eq ptr %5, @init_net
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %6 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netdev_ops, align 8
  %cmp2 = icmp eq ptr %7, @velocity_netdev_ops
  br i1 %cmp2, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  tail call fastcc void @velocity_get_ip(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @velocity_get_ip(ptr nocapture noundef %vptr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !259) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !269
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 696, ptr noundef nonnull @.str.25) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %netdev = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 2
  %4 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev, align 8
  %ip_ptr.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 78
  %6 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i2 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i3 = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i3, label %land.lhs.true.i4, label %rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge

rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge: ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %__in_dev_get_rcu.exit

land.lhs.true.i4:                                 ; preds = %rcu_read_lock.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i4.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i4.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true.i4
  call void @__sanitizer_cov_trace_pc() #17
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i4
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i5

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__in_dev_get_rcu.exit

if.then.i5:                                       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.26, i32 noundef 232, ptr noundef nonnull @.str.23) #15
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i5, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i4.__in_dev_get_rcu.exit_crit_edge, %rcu_read_lock.exit.__in_dev_get_rcu.exit_crit_edge
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %__in_dev_get_rcu.exit.if.end14_crit_edge, label %if.then

__in_dev_get_rcu.exit.if.end14_crit_edge:         ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then:                                          ; preds = %__in_dev_get_rcu.exit
  %ifa_list = getelementptr inbounds %struct.in_device, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %ifa_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ifa_list, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.then.do.end9_crit_edge

if.then.do.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

land.lhs.true:                                    ; preds = %if.then
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end9_crit_edge, label %land.lhs.true5

land.lhs.true.do.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @velocity_get_ip.__warned, align 1
  br i1 %.b1, label %land.lhs.true5.do.end9_crit_edge, label %if.then7

land.lhs.true5.do.end9_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @velocity_get_ip.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.22, i32 noundef 1469, ptr noundef nonnull @.str.23) #15
  br label %do.end9

do.end9:                                          ; preds = %if.then7, %land.lhs.true5.do.end9_crit_edge, %land.lhs.true.do.end9_crit_edge, %if.then.do.end9_crit_edge
  %cmp11.not = icmp eq ptr %9, null
  br i1 %cmp11.not, label %do.end9.if.end14_crit_edge, label %if.then12

do.end9.if.end14_crit_edge:                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then12:                                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #17
  %ip_addr = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 5
  %ifa_address = getelementptr inbounds %struct.in_ifaddr, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %ifa_address to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ifa_address, align 4
  %12 = ptrtoint ptr %ip_addr to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ip_addr, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end9.if.end14_crit_edge, %__in_dev_get_rcu.exit.if.end14_crit_edge
  %call.i6 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i6, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i9

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i9:                                 ; preds = %if.end14
  %call1.i7 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i7)
  %tobool.not.i8 = icmp eq i32 %call1.i7, 0
  br i1 %tobool.not.i8, label %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i11

land.lhs.true.i9.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i9
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i11:                               ; preds = %land.lhs.true.i9
  %.b4.i10 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i10, label %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, label %if.then.i12

land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i12:                                      ; preds = %land.lhs.true2.i11
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.24, i32 noundef 724, ptr noundef nonnull @.str.27) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i12, %land.lhs.true2.i11.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i9.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !270
  %13 = tail call i32 @llvm.read_register.i32(metadata !259) #15
  %and.i.i.i.i.i13 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i13 to ptr
  %preempt_count.i.i.i.i14 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i.i.i14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i.i.i14, align 4
  %sub.i.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i14, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_open(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mtu, align 4
  %call1 = tail call fastcc i32 @velocity_init_rings(ptr noundef %add.ptr.i, i32 noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %pdev.i = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @pci_set_power_state(ptr noundef nonnull %3, i32 noundef 0) #15
  br label %velocity_set_power_state.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %mac_regs.i = getelementptr i8, ptr %dev, i32 2840
  %4 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !271
  tail call void @arm_heavy_mb() #15
  %add.ptr.i21 = getelementptr i8, ptr %5, i32 340
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i21, i8 0) #15, !srcloc !272
  br label %velocity_set_power_state.exit

velocity_set_power_state.exit:                    ; preds = %do.body.i, %if.then.i
  tail call fastcc void @velocity_init_registers(ptr noundef %add.ptr.i, i32 noundef 0)
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call.i22 = tail call i32 @request_threaded_irq(i32 noundef %7, ptr noundef nonnull @velocity_intr, ptr noundef null, i32 noundef 128, ptr noundef %dev, ptr noundef %dev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %cmp3 = icmp slt i32 %call.i22, 0
  br i1 %cmp3, label %if.then4, label %if.end5

if.then4:                                         ; preds = %velocity_set_power_state.exit
  %8 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev.i, align 4
  %tobool.not.i24 = icmp eq ptr %9, null
  br i1 %tobool.not.i24, label %do.body.i29, label %if.then.i26

if.then.i26:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %call.i25 = tail call i32 @pci_set_power_state(ptr noundef nonnull %9, i32 noundef 3) #15
  br label %velocity_set_power_state.exit30

do.body.i29:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %mac_regs.i27 = getelementptr i8, ptr %dev, i32 2840
  %10 = ptrtoint ptr %mac_regs.i27 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac_regs.i27, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !271
  tail call void @arm_heavy_mb() #15
  %add.ptr.i28 = getelementptr i8, ptr %11, i32 340
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i28, i8 3) #15, !srcloc !272
  br label %velocity_set_power_state.exit30

velocity_set_power_state.exit30:                  ; preds = %do.body.i29, %if.then.i26
  tail call fastcc void @velocity_free_rings(ptr noundef %add.ptr.i)
  br label %out

if.end5:                                          ; preds = %velocity_set_power_state.exit
  %mac_regs.i31 = getelementptr i8, ptr %dev, i32 2840
  %12 = ptrtoint ptr %mac_regs.i31 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac_regs.i31, align 8
  %filled.i = getelementptr i8, ptr %dev, i32 2964
  %14 = ptrtoint ptr %filled.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %filled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp.i = icmp ult i32 %15, 4
  br i1 %cmp.i, label %if.end5.velocity_give_many_rx_descs.exit_crit_edge, label %do.body.i32

if.end5.velocity_give_many_rx_descs.exit_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_give_many_rx_descs.exit

do.body.i32:                                      ; preds = %if.end5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !273
  tail call void @arm_heavy_mb() #15
  %16 = ptrtoint ptr %filled.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %filled.i, align 4
  %and.i = and i32 %17, 3
  %and7.i = and i32 %17, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not37.i = icmp eq i32 %and7.i, 0
  br i1 %tobool.not37.i, label %do.body.i32.do.body13.i_crit_edge, label %for.body.lr.ph.i

do.body.i32.do.body13.i_crit_edge:                ; preds = %do.body.i32
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body13.i

for.body.lr.ph.i:                                 ; preds = %do.body.i32
  %dirty4.i = getelementptr i8, ptr %dev, i32 2956
  %18 = ptrtoint ptr %dirty4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dirty4.i, align 4
  %sub.i = sub i32 %19, %and.i
  %options.i = getelementptr i8, ptr %dev, i32 3108
  %ring.i = getelementptr i8, ptr %dev, i32 2968
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %dirty.039.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %cond.i, %cond.end.i.for.body.i_crit_edge ]
  %avail.038.i = phi i32 [ %and7.i, %for.body.lr.ph.i ], [ %dec.i, %cond.end.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dirty.039.i)
  %cmp8.i = icmp sgt i32 %dirty.039.i, 0
  br i1 %cmp8.i, label %for.body.i.cond.end.i_crit_edge, label %cond.false.i

for.body.i.cond.end.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i

cond.false.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %options.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %for.body.i.cond.end.i_crit_edge
  %cond.in.i = phi i32 [ %21, %cond.false.i ], [ %dirty.039.i, %for.body.i.cond.end.i_crit_edge ]
  %cond.i = add i32 %cond.in.i, -1
  %22 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ring.i, align 8
  %len.i = getelementptr %struct.rx_desc, ptr %23, i32 %cond.i, i32 0, i32 1
  %24 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %len.i, align 1
  %26 = or i16 %25, 128
  store i16 %26, ptr %len.i, align 1
  %dec.i = add nsw i32 %avail.038.i, -1
  %tobool.not.i33 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i33, label %cond.end.i.do.body13.i_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

cond.end.i.do.body13.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body13.i

do.body13.i:                                      ; preds = %cond.end.i.do.body13.i_crit_edge, %do.body.i32.do.body13.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !274
  tail call void @arm_heavy_mb() #15
  %27 = ptrtoint ptr %filled.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %filled.i, align 4
  %29 = trunc i32 %28 to i16
  %conv19.i = and i16 %29, -4
  %30 = tail call i16 @llvm.bswap.i16(i16 %conv19.i) #15
  %RBRDU.i = getelementptr inbounds %struct.mac_regs, ptr %13, i32 0, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RBRDU.i, i16 %30) #15, !srcloc !275
  %31 = ptrtoint ptr %filled.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and.i, ptr %filled.i, align 4
  br label %velocity_give_many_rx_descs.exit

velocity_give_many_rx_descs.exit:                 ; preds = %do.body13.i, %if.end5.velocity_give_many_rx_descs.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !276
  tail call void @arm_heavy_mb() #15
  %32 = ptrtoint ptr %mac_regs.i31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %mac_regs.i31, align 8
  %CR0Set = getelementptr inbounds %struct.mac_regs, ptr %33, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Set, i32 2) #15, !srcloc !277
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %34 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %35, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  %napi = getelementptr i8, ptr %dev, i32 4096
  tail call void @napi_enable(ptr noundef %napi) #15
  %flags = getelementptr i8, ptr %dev, i32 3180
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags, align 4
  %or = or i32 %37, 65536
  store i32 %or, ptr %flags, align 4
  br label %out

out:                                              ; preds = %velocity_give_many_rx_descs.exit, %velocity_set_power_state.exit30, %entry.out_crit_edge
  %ret.0 = phi i32 [ %call1, %entry.out_crit_edge ], [ %call.i22, %velocity_set_power_state.exit30 ], [ %call.i22, %velocity_give_many_rx_descs.exit ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_close(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %napi = getelementptr i8, ptr %dev, i32 4096
  tail call void @napi_disable(ptr noundef %napi) #15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  tail call fastcc void @velocity_shutdown(ptr noundef %add.ptr.i)
  %flags = getelementptr i8, ptr %dev, i32 3180
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @velocity_get_ip(ptr noundef %add.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %5, ptr noundef %dev) #15
  tail call fastcc void @velocity_free_rings(ptr noundef %add.ptr.i)
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and4 = and i32 %7, -65537
  store i32 %and4, ptr %flags, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_xmit(ptr noundef %skb, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %1)
  %cmp.i = icmp ugt i32 %1, 59
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %skb_padto.exit, !prof !278

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

skb_padto.exit:                                   ; preds = %entry
  %sub.i = sub nuw nsw i32 60, %1
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i, i1 noundef zeroext true) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not, label %skb_padto.exit.if.end_crit_edge, label %skb_padto.exit.cleanup_crit_edge

skb_padto.exit.cleanup_crit_edge:                 ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

skb_padto.exit.if.end_crit_edge:                  ; preds = %skb_padto.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %skb_padto.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %5)
  %cmp = icmp ugt i8 %5, 6
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i, align 8
  %call.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %7) #15
  %tobool.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.not, label %if.then6, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #15
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %end.i, align 4
  %nr_frags9 = getelementptr inbounds %struct.skb_shared_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %nr_frags9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %nr_frags9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp11 = icmp eq i8 %11, 0
  %12 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len1.i, align 4
  br i1 %cmp11, label %cond.true, label %cond.false16

cond.true:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %14 = tail call i32 @llvm.umax.i32(i32 %13, i32 60)
  br label %cond.end18

cond.false16:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %data_len.i262 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %15 = ptrtoint ptr %data_len.i262 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %data_len.i262, align 8
  %sub.i263 = sub i32 %13, %16
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false16, %cond.true
  %cond19 = phi i32 [ %14, %cond.true ], [ %sub.i263, %cond.false16 ]
  %lock = getelementptr i8, ptr %dev, i32 3212
  %call25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %curr = getelementptr i8, ptr %dev, i32 2872
  %17 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %curr, align 4
  %rings = getelementptr i8, ptr %dev, i32 2904
  %19 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rings, align 4
  %infos = getelementptr i8, ptr %dev, i32 2920
  %21 = ptrtoint ptr %infos to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %infos, align 4
  %arrayidx33 = getelementptr %struct.velocity_td_info, ptr %22, i32 %18
  %tdesc1 = getelementptr %struct.tx_desc, ptr %20, i32 %18, i32 1
  %TCR = getelementptr %struct.tx_desc, ptr %20, i32 %18, i32 1, i32 1
  %23 = ptrtoint ptr %TCR to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -128, ptr %TCR, align 2
  %td_buf = getelementptr %struct.tx_desc, ptr %20, i32 %18, i32 2
  %size = getelementptr inbounds %struct.td_buf, ptr %td_buf, i32 0, i32 2
  %24 = ptrtoint ptr %size to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %size, align 2
  %26 = and i16 %25, -129
  store i16 %26, ptr %size, align 2
  %27 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %skb, ptr %arrayidx33, align 4
  %28 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %add.ptr.i, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %call.i264 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %31) #15
  br i1 %call.i264, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %cond.end18
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !278

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %29) #15
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 3
  %32 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %29, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %35, %if.end.i.i ], [ %33, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #15
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_dma_map_single(ptr noundef %29, ptr noundef %31, i32 noundef %cond19) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %36 = load ptr, ptr @mem_map, align 4
  %37 = ptrtoint ptr %31 to i32
  %sub.i265 = add i32 %37, 1073741824
  %shr.i = lshr i32 %sub.i265, 12
  %add.ptr.i266 = getelementptr %struct.page, ptr %36, i32 %shr.i
  %and.i = and i32 %37, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %29, ptr noundef %add.ptr.i266, i32 noundef %and.i, i32 noundef %cond19, i32 noundef 1, i32 noundef 0) #15
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i267 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %skb_dma = getelementptr %struct.velocity_td_info, ptr %22, i32 %18, i32 2
  %38 = ptrtoint ptr %skb_dma to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i267, ptr %skb_dma, align 4
  %conv41 = trunc i32 %cond19 to i16
  %39 = tail call i16 @llvm.bswap.i16(i16 %conv41)
  %len42 = getelementptr %struct.tx_desc, ptr %20, i32 %18, i32 0, i32 1
  %40 = ptrtoint ptr %len42 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %len42, align 2
  %41 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %skb_dma, align 4
  %43 = tail call i32 @llvm.bswap.i32(i32 %42)
  %44 = ptrtoint ptr %td_buf to i32
  call void @__asan_storeN_noabort(i32 %44, i32 4)
  store i32 %43, ptr %td_buf, align 2
  %pa_high = getelementptr inbounds %struct.td_buf, ptr %td_buf, i32 0, i32 1
  %45 = ptrtoint ptr %pa_high to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %pa_high, align 2
  %46 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %39, ptr %size, align 2
  %47 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %end.i, align 4
  %nr_frags54273 = getelementptr inbounds %struct.skb_shared_info, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %nr_frags54273 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %nr_frags54273, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp56275.not = icmp eq i8 %50, 0
  br i1 %cmp56275.not, label %dma_map_single_attrs.exit.for.end_crit_edge, label %dma_map_single_attrs.exit.for.body_crit_edge

dma_map_single_attrs.exit.for.body_crit_edge:     ; preds = %dma_map_single_attrs.exit
  br label %for.body

dma_map_single_attrs.exit.for.end_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %dma_map_single_attrs.exit.for.body_crit_edge
  %51 = phi ptr [ %69, %for.body.for.body_crit_edge ], [ %48, %dma_map_single_attrs.exit.for.body_crit_edge ]
  %i.0276 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %dma_map_single_attrs.exit.for.body_crit_edge ]
  %arrayidx59 = getelementptr %struct.skb_shared_info, ptr %51, i32 0, i32 12, i32 %i.0276
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 8
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %51, i32 0, i32 12, i32 %i.0276, i32 1
  %54 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bv_len.i, align 4
  %56 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx59, align 4
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %51, i32 0, i32 12, i32 %i.0276, i32 2
  %58 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %bv_offset.i.i, align 4
  %call2.i = tail call i32 @dma_map_page_attrs(ptr noundef %53, ptr noundef %57, i32 noundef %59, i32 noundef %55, i32 noundef 1, i32 noundef 0) #15
  %add = add nuw nsw i32 %i.0276, 1
  %arrayidx64 = getelementptr %struct.velocity_td_info, ptr %22, i32 %18, i32 2, i32 %add
  %60 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call2.i, ptr %arrayidx64, align 4
  %61 = tail call i32 @llvm.bswap.i32(i32 %call2.i)
  %arrayidx70 = getelementptr %struct.tx_desc, ptr %20, i32 %18, i32 2, i32 %add
  %62 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 %61, ptr %arrayidx70, align 2
  %pa_high75 = getelementptr %struct.tx_desc, ptr %20, i32 %18, i32 2, i32 %add, i32 1
  %63 = ptrtoint ptr %pa_high75 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 0, ptr %pa_high75, align 2
  %64 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bv_len.i, align 4
  %conv77 = trunc i32 %65 to i16
  %66 = tail call i16 @llvm.bswap.i16(i16 %conv77)
  %size81 = getelementptr %struct.tx_desc, ptr %20, i32 %18, i32 2, i32 %add, i32 2
  %67 = ptrtoint ptr %size81 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %size81, align 2
  %68 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %end.i, align 4
  %nr_frags54 = getelementptr inbounds %struct.skb_shared_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %nr_frags54 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %nr_frags54, align 2
  %conv55 = zext i8 %71 to i32
  %cmp56 = icmp ult i32 %add, %conv55
  br i1 %cmp56, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %dma_map_single_attrs.exit.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %dma_map_single_attrs.exit.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %add82 = add nuw i32 %i.0.lcssa, 1
  %nskb_dma = getelementptr %struct.velocity_td_info, ptr %22, i32 %18, i32 1
  %72 = ptrtoint ptr %nskb_dma to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %add82, ptr %nskb_dma, align 4
  %i.0.tr = trunc i32 %i.0.lcssa to i8
  %73 = shl i8 %i.0.tr, 4
  %conv86 = add i8 %73, 35
  %cmd = getelementptr %struct.tx_desc, ptr %20, i32 %18, i32 1, i32 2
  %74 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %conv86, ptr %cmd, align 1
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %75 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %75, i32 4)
  %bf.load = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool88.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool88.not, label %for.end.if.end95_crit_edge, label %if.then89

for.end.if.end95_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end95

if.then89:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %76 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %vlan_tci, align 2
  %78 = tail call i16 @llvm.bswap.i16(i16 %77)
  %79 = ptrtoint ptr %tdesc1 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 %78, ptr %tdesc1, align 2
  %80 = ptrtoint ptr %TCR to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %TCR, align 2
  %82 = or i8 %81, 32
  store i8 %82, ptr %TCR, align 2
  br label %if.end95

if.end95:                                         ; preds = %if.then89, %for.end.if.end95_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %83 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %83)
  %bf.load96 = load i16, ptr %ip_summed, align 8
  %84 = and i16 %bf.load96, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %84)
  %cmp100 = icmp eq i16 %84, 1536
  br i1 %cmp100, label %if.then102, label %if.end95.if.end130_crit_edge

if.end95.if.end130_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end130

if.then102:                                       ; preds = %if.end95
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %85 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %87 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %88 to i32
  %add.ptr.i.i = getelementptr i8, ptr %86, i32 %conv.i.i
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %89 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %protocol, align 1
  %91 = zext i8 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values)
  switch i8 %90, label %if.then102.if.end124_crit_edge [
    i8 6, label %if.then102.if.end124.sink.split_crit_edge
    i8 17, label %if.then117
  ]

if.then102.if.end124.sink.split_crit_edge:        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end124.sink.split

if.then102.if.end124_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end124

if.then117:                                       ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end124.sink.split

if.end124.sink.split:                             ; preds = %if.then117, %if.then102.if.end124.sink.split_crit_edge
  %.sink278 = phi i8 [ 8, %if.then117 ], [ 4, %if.then102.if.end124.sink.split_crit_edge ]
  %92 = ptrtoint ptr %TCR to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %TCR, align 2
  %94 = or i8 %93, %.sink278
  store i8 %94, ptr %TCR, align 2
  br label %if.end124

if.end124:                                        ; preds = %if.end124.sink.split, %if.then102.if.end124_crit_edge
  %95 = ptrtoint ptr %TCR to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %TCR, align 2
  %97 = or i8 %96, 16
  store i8 %97, ptr %TCR, align 2
  br label %if.end130

if.end130:                                        ; preds = %if.end124, %if.end95.if.end130_crit_edge
  %sub = add i32 %18, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp131 = icmp slt i32 %sub, 0
  br i1 %cmp131, label %if.then133, label %if.end130.if.end135_crit_edge

if.end130.if.end135_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end135

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #17
  %numtx = getelementptr i8, ptr %dev, i32 3112
  %98 = ptrtoint ptr %numtx to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %numtx, align 4
  %sub134 = add i32 %99, -1
  br label %if.end135

if.end135:                                        ; preds = %if.then133, %if.end130.if.end135_crit_edge
  %prev.0 = phi i32 [ %sub134, %if.then133 ], [ %sub, %if.end130.if.end135_crit_edge ]
  %100 = ptrtoint ptr %len42 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %len42, align 2
  %102 = or i16 %101, 128
  store i16 %102, ptr %len42, align 2
  %used = getelementptr i8, ptr %dev, i32 2856
  %103 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %used, align 4
  %inc143 = add i32 %104, 1
  store i32 %inc143, ptr %used, align 4
  %add144 = add i32 %18, 1
  %numtx146 = getelementptr i8, ptr %dev, i32 3112
  %105 = ptrtoint ptr %numtx146 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %numtx146, align 4
  %rem = srem i32 %add144, %106
  %107 = ptrtoint ptr %curr to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %rem, ptr %curr, align 4
  %sub155 = sub i32 %106, %inc143
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub155)
  %cmp156 = icmp slt i32 %sub155, 1
  br i1 %cmp156, label %if.then158, label %if.end135.if.end159_crit_edge

if.end135.if.end159_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end159

if.then158:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #17
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %108 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %109, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  br label %if.end159

if.end159:                                        ; preds = %if.then158, %if.end135.if.end159_crit_edge
  %110 = ptrtoint ptr %rings to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %rings, align 4
  %size166 = getelementptr %struct.tx_desc, ptr %111, i32 %prev.0, i32 2, i32 0, i32 2
  %112 = ptrtoint ptr %size166 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %size166, align 2
  %114 = or i16 %113, 128
  store i16 %114, ptr %size166, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !279
  tail call void @arm_heavy_mb() #15
  %mac_regs = getelementptr i8, ptr %dev, i32 2840
  %115 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %mac_regs, align 8
  %TDCSRSet = getelementptr inbounds %struct.mac_regs, ptr %116, i32 0, i32 15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %TDCSRSet, i16 1024) #15, !srcloc !275
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call25) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end159, %if.then6, %skb_padto.exit.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @velocity_set_multi(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %mac_regs = getelementptr i8, ptr %dev, i32 2840
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 8
  %flags = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !280
  tail call void @arm_heavy_mb() #15
  %MARCAM = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MARCAM, i32 -1) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !281
  tail call void @arm_heavy_mb() #15
  %arrayidx5 = getelementptr %struct.mac_regs, ptr %1, i32 0, i32 5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx5, i32 -1) #15, !srcloc !277
  br label %if.end41

if.else:                                          ; preds = %entry
  %mc = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 8
  %multicast_limit = getelementptr i8, ptr %dev, i32 3192
  %6 = ptrtoint ptr %multicast_limit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %multicast_limit, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp sle i32 %5, %7
  %and7 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  %or.cond = select i1 %cmp, i1 %tobool8.not, i1 false
  br i1 %or.cond, label %if.else20, label %do.body10

do.body10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !282
  tail call void @arm_heavy_mb() #15
  %MARCAM13 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %MARCAM13, i32 -1) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !283
  tail call void @arm_heavy_mb() #15
  %arrayidx19 = getelementptr %struct.mac_regs, ptr %1, i32 0, i32 5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx19, i32 -1) #15, !srcloc !277
  br label %if.end41

if.else20:                                        ; preds = %if.else
  %sub = sub i32 64, %7
  %mCAMmask = getelementptr i8, ptr %dev, i32 3204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !284
  tail call void @arm_heavy_mb() #15
  %CAMCR.i = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 34
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CAMCR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !286
  %9 = and i8 %8, 63
  %10 = or i8 %9, 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMCR.i, i8 %10) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !287
  tail call void @arm_heavy_mb() #15
  %CAMADDR.i = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 33
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMADDR.i, i8 0) #15, !srcloc !272
  %arrayidx.i = getelementptr %struct.mac_regs, ptr %1, i32 0, i32 5, i32 0
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !288
  %incdec.ptr.i = getelementptr i8, ptr %dev, i32 3205
  %12 = ptrtoint ptr %mCAMmask to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %mCAMmask, align 1
  %arrayidx.1.i = getelementptr %struct.mac_regs, ptr %1, i32 0, i32 5, i32 1
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.1.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !288
  %incdec.ptr.1.i = getelementptr i8, ptr %dev, i32 3206
  %14 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %incdec.ptr.i, align 1
  %arrayidx.2.i = getelementptr %struct.mac_regs, ptr %1, i32 0, i32 5, i32 2
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.2.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !288
  %incdec.ptr.2.i = getelementptr i8, ptr %dev, i32 3207
  %16 = ptrtoint ptr %incdec.ptr.1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %incdec.ptr.1.i, align 1
  %arrayidx.3.i = getelementptr %struct.mac_regs, ptr %1, i32 0, i32 5, i32 3
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.3.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !288
  %incdec.ptr.3.i = getelementptr i8, ptr %dev, i32 3208
  %18 = ptrtoint ptr %incdec.ptr.2.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %incdec.ptr.2.i, align 1
  %arrayidx.4.i = getelementptr %struct.mac_regs, ptr %1, i32 0, i32 5, i32 4
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.4.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !288
  %incdec.ptr.4.i = getelementptr i8, ptr %dev, i32 3209
  %20 = ptrtoint ptr %incdec.ptr.3.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %incdec.ptr.3.i, align 1
  %arrayidx.5.i = getelementptr %struct.mac_regs, ptr %1, i32 0, i32 5, i32 5
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.5.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !288
  %incdec.ptr.5.i = getelementptr i8, ptr %dev, i32 3210
  %22 = ptrtoint ptr %incdec.ptr.4.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %incdec.ptr.4.i, align 1
  %arrayidx.6.i = getelementptr %struct.mac_regs, ptr %1, i32 0, i32 5, i32 6
  %23 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.6.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !288
  %incdec.ptr.6.i = getelementptr i8, ptr %dev, i32 3211
  %24 = ptrtoint ptr %incdec.ptr.5.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %incdec.ptr.5.i, align 1
  %arrayidx.7.i = getelementptr %struct.mac_regs, ptr %1, i32 0, i32 5, i32 7
  %25 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.7.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !288
  %26 = ptrtoint ptr %incdec.ptr.6.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %incdec.ptr.6.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !289
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMADDR.i, i8 0) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !290
  tail call void @arm_heavy_mb() #15
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CAMCR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !291
  %28 = and i8 %27, 63
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMCR.i, i8 %28) #15, !srcloc !272
  %29 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %29)
  %ha.0104 = load ptr, ptr %mc, align 4
  %cmp26.not105 = icmp eq ptr %ha.0104, %mc
  br i1 %cmp26.not105, label %if.else20.for.end_crit_edge, label %if.else20.for.body_crit_edge

if.else20.for.body_crit_edge:                     ; preds = %if.else20
  br label %for.body

if.else20.for.end_crit_edge:                      ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.else20.for.body_crit_edge
  %ha.0107 = phi ptr [ %ha.0, %for.body.for.body_crit_edge ], [ %ha.0104, %if.else20.for.body_crit_edge ]
  %i.0106 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.else20.for.body_crit_edge ]
  %add = add i32 %i.0106, %sub
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0107, i32 0, i32 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !292
  tail call void @arm_heavy_mb() #15
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CAMCR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  %31 = and i8 %30, 63
  %32 = or i8 %31, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMCR.i, i8 %32) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  tail call void @arm_heavy_mb() #15
  %33 = trunc i32 %add to i8
  %34 = and i8 %33, 63
  %conv12.i = or i8 %34, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMADDR.i, i8 %conv12.i) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %incdec.ptr.i93 = getelementptr %struct.netdev_hw_addr, ptr %ha.0107, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %addr, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.i, i8 %36) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %incdec.ptr.1.i95 = getelementptr %struct.netdev_hw_addr, ptr %ha.0107, i32 0, i32 2, i32 2
  %37 = ptrtoint ptr %incdec.ptr.i93 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %incdec.ptr.i93, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.1.i, i8 %38) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %incdec.ptr.2.i97 = getelementptr %struct.netdev_hw_addr, ptr %ha.0107, i32 0, i32 2, i32 3
  %39 = ptrtoint ptr %incdec.ptr.1.i95 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %incdec.ptr.1.i95, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.2.i, i8 %40) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %incdec.ptr.3.i99 = getelementptr %struct.netdev_hw_addr, ptr %ha.0107, i32 0, i32 2, i32 4
  %41 = ptrtoint ptr %incdec.ptr.2.i97 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %incdec.ptr.2.i97, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.3.i, i8 %42) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %incdec.ptr.4.i101 = getelementptr %struct.netdev_hw_addr, ptr %ha.0107, i32 0, i32 2, i32 5
  %43 = ptrtoint ptr %incdec.ptr.3.i99 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %incdec.ptr.3.i99, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.4.i, i8 %44) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  tail call void @arm_heavy_mb() #15
  %45 = ptrtoint ptr %incdec.ptr.4.i101 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %incdec.ptr.4.i101, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.5.i, i8 %46) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !296
  tail call void @arm_heavy_mb() #15
  %47 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CAMCR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !297
  %48 = or i8 %47, 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMCR.i, i8 %48) #15, !srcloc !272
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 2147480) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !298
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMADDR.i, i8 0) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !299
  tail call void @arm_heavy_mb() #15
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CAMCR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !300
  %51 = and i8 %50, 63
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMCR.i, i8 %51) #15, !srcloc !272
  %and29 = and i32 %add, 7
  %shl = shl nuw nsw i32 1, %and29
  %div = sdiv i32 %add, 8
  %arrayidx32 = getelementptr %struct.velocity_info, ptr %add.ptr.i, i32 0, i32 20, i32 %div
  %52 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx32, align 1
  %54 = trunc i32 %shl to i8
  %conv33 = or i8 %53, %54
  store i8 %conv33, ptr %arrayidx32, align 1
  %inc = add i32 %i.0106, 1
  %55 = ptrtoint ptr %ha.0107 to i32
  call void @__asan_load4_noabort(i32 %55)
  %ha.0 = load ptr, ptr %ha.0107, align 4
  %cmp26.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp26.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.else20.for.end_crit_edge
  tail call fastcc void @mac_set_cam_mask(ptr noundef %1, ptr noundef %mCAMmask)
  br label %if.end41

if.end41:                                         ; preds = %for.end, %do.body10, %do.body
  %rx_mode.0 = phi i8 [ 28, %do.body ], [ 12, %do.body10 ], [ 76, %for.end ]
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %56 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500, i32 %57)
  %cmp42 = icmp ugt i32 %57, 1500
  %58 = or i8 %rx_mode.0, 32
  %spec.select = select i1 %cmp42, i8 %58, i8 %rx_mode.0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !301
  tail call void @arm_heavy_mb() #15
  %RCR = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 1
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %RCR) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !302
  %or5890 = or i8 %59, %spec.select
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %RCR, i8 %or5890) #15, !srcloc !272
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_mac_addr(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_ioctl(ptr noundef %dev, ptr nocapture noundef %rq, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %pdev.i = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @pci_set_power_state(ptr noundef nonnull %3, i32 noundef 0) #15
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %mac_regs.i = getelementptr i8, ptr %dev, i32 2840
  %4 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !271
  tail call void @arm_heavy_mb() #15
  %add.ptr.i11 = getelementptr i8, ptr %5, i32 340
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i11, i8 0) #15, !srcloc !272
  br label %if.end

if.end:                                           ; preds = %do.body.i, %if.then.i, %entry.if.end_crit_edge
  %cmd.off = add i32 %cmd, -35143
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cmd.off)
  %switch = icmp ult i32 %cmd.off, 3
  br i1 %switch, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %mac_regs.i12 = getelementptr i8, ptr %dev, i32 2840
  %6 = ptrtoint ptr %mac_regs.i12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_regs.i12, align 8
  %ifr_ifru.i.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %cmd, label %sw.bb.sw.epilog_crit_edge [
    i32 35143, label %sw.bb.i
    i32 35144, label %sw.bb5.i
    i32 35145, label %do.body13.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %MIIADR.i = getelementptr inbounds %struct.mac_regs, ptr %7, i32 0, i32 42
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIIADR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !303
  %10 = and i8 %9, 31
  %conv4.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %ifr_ifru.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv4.i, ptr %ifr_ifru.i.i, align 2
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %sw.bb
  %reg_num.i = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %reg_num.i, align 2
  %14 = trunc i16 %13 to i8
  %conv9.i = and i8 %14, 31
  %val_out.i = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i.i, i32 0, i32 3
  %call10.i = tail call fastcc i32 @velocity_mii_read(ptr noundef %7, i8 noundef zeroext %conv9.i, ptr noundef %val_out.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i = icmp slt i32 %call10.i, 0
  br i1 %cmp.i, label %sw.bb5.i.sw.epilog_crit_edge, label %sw.bb5.i.sw.epilog.i_crit_edge

sw.bb5.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.bb5.i.sw.epilog_crit_edge:                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.body13.i:                                      ; preds = %sw.bb
  %lock.i = getelementptr i8, ptr %dev, i32 3212
  %call18.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  %15 = ptrtoint ptr %mac_regs.i12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mac_regs.i12, align 8
  %reg_num22.i = getelementptr inbounds %struct.mii_ioctl_data, ptr %ifr_ifru.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %reg_num22.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %reg_num22.i, align 2
  %19 = trunc i16 %18 to i8
  %conv25.i = and i8 %19, 31
  %val_in.i = getelementptr inbounds %struct.ifreq, ptr %rq, i32 0, i32 1, i32 0, i32 1
  %20 = ptrtoint ptr %val_in.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %val_in.i, align 2
  %call26.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %16, i8 noundef zeroext %conv25.i, i16 noundef zeroext %21) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call18.i) #15
  %22 = ptrtoint ptr %mac_regs.i12 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mac_regs.i12, align 8
  %call29.i = tail call fastcc i32 @check_connection_type(ptr noundef %23) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool.not.i13 = icmp eq i32 %call26.i, 0
  br i1 %tobool.not.i13, label %do.body13.i.sw.epilog.i_crit_edge, label %do.body13.i.sw.epilog_crit_edge

do.body13.i.sw.epilog_crit_edge:                  ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.body13.i.sw.epilog.i_crit_edge:                ; preds = %do.body13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.body13.i.sw.epilog.i_crit_edge, %sw.bb5.i.sw.epilog.i_crit_edge, %sw.bb.i
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.i, %do.body13.i.sw.epilog_crit_edge, %sw.bb5.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %ret.0 = phi i32 [ -95, %if.end.sw.epilog_crit_edge ], [ 0, %sw.epilog.i ], [ -110, %sw.bb5.i.sw.epilog_crit_edge ], [ %call26.i, %do.body13.i.sw.epilog_crit_edge ], [ -95, %sw.bb.sw.epilog_crit_edge ]
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i, align 4
  %and1.i.i15 = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i15)
  %tobool.i16.not = icmp eq i32 %and1.i.i15, 0
  br i1 %tobool.i16.not, label %if.then4, label %sw.epilog.if.end5_crit_edge

sw.epilog.if.end5_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %sw.epilog
  %pdev.i17 = getelementptr i8, ptr %dev, i32 2308
  %26 = ptrtoint ptr %pdev.i17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev.i17, align 4
  %tobool.not.i18 = icmp eq ptr %27, null
  br i1 %tobool.not.i18, label %do.body.i23, label %if.then.i20

if.then.i20:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %call.i19 = tail call i32 @pci_set_power_state(ptr noundef nonnull %27, i32 noundef 3) #15
  br label %if.end5

do.body.i23:                                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  %mac_regs.i21 = getelementptr i8, ptr %dev, i32 2840
  %28 = ptrtoint ptr %mac_regs.i21 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mac_regs.i21, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !271
  tail call void @arm_heavy_mb() #15
  %add.ptr.i22 = getelementptr i8, ptr %29, i32 340
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i22, i8 3) #15, !srcloc !272
  br label %if.end5

if.end5:                                          ; preds = %do.body.i23, %if.then.i20, %sw.epilog.if.end5_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #2 align 64 {
entry:
  %tx = alloca %struct.tx_info, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %new_mtu, ptr %mtu, align 4
  br label %cleanup42

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %new_mtu)
  %cmp.not = icmp eq i32 %4, %new_mtu
  br i1 %cmp.not, label %if.end.cleanup42_crit_edge, label %if.then3

if.end.cleanup42_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup42

if.then3:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %tx)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 2016) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.then3.cleanup_crit_edge, label %if.end6

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  %netdev = getelementptr inbounds %struct.velocity_info, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %netdev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %netdev, align 8
  %pdev = getelementptr i8, ptr %dev, i32 2308
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %pdev7 = getelementptr inbounds %struct.velocity_info, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %pdev7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %pdev7, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %call7.i.i, align 8
  %options = getelementptr inbounds %struct.velocity_info, ptr %call7.i.i, i32 0, i32 13
  %options10 = getelementptr i8, ptr %dev, i32 3108
  %13 = call ptr @memcpy(ptr %options, ptr %options10, i32 68)
  %tx11 = getelementptr i8, ptr %dev, i32 2852
  %14 = ptrtoint ptr %tx11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx11, align 4
  %tx12 = getelementptr inbounds %struct.velocity_info, ptr %call7.i.i, i32 0, i32 10
  %16 = ptrtoint ptr %tx12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tx12, align 4
  %call14 = tail call fastcc i32 @velocity_init_rings(ptr noundef nonnull %call7.i.i, i32 noundef %new_mtu)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end6.out_free_tmp_vptr_1_crit_edge, label %if.end17

if.end6.out_free_tmp_vptr_1_crit_edge:            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_free_tmp_vptr_1

if.end17:                                         ; preds = %if.end6
  %napi = getelementptr i8, ptr %dev, i32 4096
  tail call void @napi_disable(ptr noundef %napi) #15
  %lock = getelementptr i8, ptr %dev, i32 3212
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %17 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  tail call fastcc void @velocity_shutdown(ptr noundef %add.ptr.i)
  %rx24 = getelementptr i8, ptr %dev, i32 2952
  %19 = ptrtoint ptr %rx24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %rx.sroa.0.0.copyload = load i32, ptr %rx24, align 8
  %rx.sroa.5.0.rx24.sroa_idx = getelementptr i8, ptr %dev, i32 2956
  %20 = ptrtoint ptr %rx.sroa.5.0.rx24.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %20)
  %rx.sroa.5.0.copyload = load i32, ptr %rx.sroa.5.0.rx24.sroa_idx, align 4
  %rx.sroa.6.0.rx24.sroa_idx = getelementptr i8, ptr %dev, i32 2960
  %21 = ptrtoint ptr %rx.sroa.6.0.rx24.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %rx.sroa.6.0.copyload = load i32, ptr %rx.sroa.6.0.rx24.sroa_idx, align 8
  %rx.sroa.7.0.rx24.sroa_idx = getelementptr i8, ptr %dev, i32 2964
  %22 = ptrtoint ptr %rx.sroa.7.0.rx24.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %rx.sroa.7.0.copyload = load i32, ptr %rx.sroa.7.0.rx24.sroa_idx, align 4
  %rx.sroa.8.0.rx24.sroa_idx = getelementptr i8, ptr %dev, i32 2968
  %23 = ptrtoint ptr %rx.sroa.8.0.rx24.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %23)
  %rx.sroa.8.0.copyload = load ptr, ptr %rx.sroa.8.0.rx24.sroa_idx, align 8
  %rx.sroa.9.0.rx24.sroa_idx = getelementptr i8, ptr %dev, i32 2972
  %24 = ptrtoint ptr %rx.sroa.9.0.rx24.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %24)
  %rx.sroa.9.0.copyload = load ptr, ptr %rx.sroa.9.0.rx24.sroa_idx, align 4
  %rx.sroa.10.0.rx24.sroa_idx = getelementptr i8, ptr %dev, i32 2976
  %25 = ptrtoint ptr %rx.sroa.10.0.rx24.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %25)
  %rx.sroa.10.0.copyload = load i32, ptr %rx.sroa.10.0.rx24.sroa_idx, align 8
  %26 = call ptr @memcpy(ptr %tx, ptr %tx11, i32 100)
  %rx27 = getelementptr inbounds %struct.velocity_info, ptr %call7.i.i, i32 0, i32 11
  %27 = call ptr @memcpy(ptr %rx24, ptr %rx27, i32 28)
  %28 = call ptr @memcpy(ptr %tx11, ptr %tx12, i32 100)
  %29 = ptrtoint ptr %rx27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %rx.sroa.0.0.copyload, ptr %rx27, align 8
  %rx.sroa.5.0.rx30.sroa_idx = getelementptr inbounds %struct.velocity_info, ptr %call7.i.i, i32 0, i32 11, i32 1
  %30 = ptrtoint ptr %rx.sroa.5.0.rx30.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %rx.sroa.5.0.copyload, ptr %rx.sroa.5.0.rx30.sroa_idx, align 4
  %rx.sroa.6.0.rx30.sroa_idx = getelementptr inbounds %struct.velocity_info, ptr %call7.i.i, i32 0, i32 11, i32 2
  %31 = ptrtoint ptr %rx.sroa.6.0.rx30.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %rx.sroa.6.0.copyload, ptr %rx.sroa.6.0.rx30.sroa_idx, align 8
  %rx.sroa.7.0.rx30.sroa_idx = getelementptr inbounds %struct.velocity_info, ptr %call7.i.i, i32 0, i32 11, i32 3
  %32 = ptrtoint ptr %rx.sroa.7.0.rx30.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %rx.sroa.7.0.copyload, ptr %rx.sroa.7.0.rx30.sroa_idx, align 4
  %rx.sroa.8.0.rx30.sroa_idx = getelementptr inbounds %struct.velocity_info, ptr %call7.i.i, i32 0, i32 11, i32 4
  %33 = ptrtoint ptr %rx.sroa.8.0.rx30.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %rx.sroa.8.0.copyload, ptr %rx.sroa.8.0.rx30.sroa_idx, align 8
  %rx.sroa.9.0.rx30.sroa_idx = getelementptr inbounds %struct.velocity_info, ptr %call7.i.i, i32 0, i32 11, i32 5
  %34 = ptrtoint ptr %rx.sroa.9.0.rx30.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %rx.sroa.9.0.copyload, ptr %rx.sroa.9.0.rx30.sroa_idx, align 4
  %rx.sroa.10.0.rx30.sroa_idx = getelementptr inbounds %struct.velocity_info, ptr %call7.i.i, i32 0, i32 11, i32 6
  %35 = ptrtoint ptr %rx.sroa.10.0.rx30.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %rx.sroa.10.0.copyload, ptr %rx.sroa.10.0.rx30.sroa_idx, align 8
  %36 = call ptr @memcpy(ptr %tx12, ptr %tx, i32 100)
  %37 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %new_mtu, ptr %mtu, align 4
  tail call fastcc void @velocity_init_registers(ptr noundef %add.ptr.i, i32 noundef 0)
  %mac_regs.i = getelementptr i8, ptr %dev, i32 2840
  %38 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mac_regs.i, align 8
  %40 = ptrtoint ptr %rx.sroa.7.0.rx24.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rx.sroa.7.0.rx24.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %41)
  %cmp.i = icmp ult i32 %41, 4
  br i1 %cmp.i, label %if.end17.velocity_give_many_rx_descs.exit_crit_edge, label %do.body.i

if.end17.velocity_give_many_rx_descs.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_give_many_rx_descs.exit

do.body.i:                                        ; preds = %if.end17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !273
  tail call void @arm_heavy_mb() #15
  %42 = ptrtoint ptr %rx.sroa.7.0.rx24.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rx.sroa.7.0.rx24.sroa_idx, align 4
  %and.i = and i32 %43, 3
  %and7.i = and i32 %43, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool.not37.i = icmp eq i32 %and7.i, 0
  br i1 %tobool.not37.i, label %do.body.i.do.body13.i_crit_edge, label %for.body.lr.ph.i

do.body.i.do.body13.i_crit_edge:                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body13.i

for.body.lr.ph.i:                                 ; preds = %do.body.i
  %44 = ptrtoint ptr %rx.sroa.5.0.rx24.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx.sroa.5.0.rx24.sroa_idx, align 4
  %sub.i = sub i32 %45, %and.i
  br label %for.body.i

for.body.i:                                       ; preds = %cond.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %dirty.039.i = phi i32 [ %sub.i, %for.body.lr.ph.i ], [ %cond.i, %cond.end.i.for.body.i_crit_edge ]
  %avail.038.i = phi i32 [ %and7.i, %for.body.lr.ph.i ], [ %dec.i, %cond.end.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dirty.039.i)
  %cmp8.i = icmp sgt i32 %dirty.039.i, 0
  br i1 %cmp8.i, label %for.body.i.cond.end.i_crit_edge, label %cond.false.i

for.body.i.cond.end.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i

cond.false.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %46 = ptrtoint ptr %options10 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %options10, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %for.body.i.cond.end.i_crit_edge
  %cond.in.i = phi i32 [ %47, %cond.false.i ], [ %dirty.039.i, %for.body.i.cond.end.i_crit_edge ]
  %cond.i = add i32 %cond.in.i, -1
  %48 = ptrtoint ptr %rx.sroa.8.0.rx24.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %rx.sroa.8.0.rx24.sroa_idx, align 8
  %len.i = getelementptr %struct.rx_desc, ptr %49, i32 %cond.i, i32 0, i32 1
  %50 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %len.i, align 1
  %52 = or i16 %51, 128
  store i16 %52, ptr %len.i, align 1
  %dec.i = add nsw i32 %avail.038.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %cond.end.i.do.body13.i_crit_edge, label %cond.end.i.for.body.i_crit_edge

cond.end.i.for.body.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

cond.end.i.do.body13.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body13.i

do.body13.i:                                      ; preds = %cond.end.i.do.body13.i_crit_edge, %do.body.i.do.body13.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !274
  tail call void @arm_heavy_mb() #15
  %53 = ptrtoint ptr %rx.sroa.7.0.rx24.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %rx.sroa.7.0.rx24.sroa_idx, align 4
  %55 = trunc i32 %54 to i16
  %conv19.i = and i16 %55, -4
  %56 = tail call i16 @llvm.bswap.i16(i16 %conv19.i) #15
  %RBRDU.i = getelementptr inbounds %struct.mac_regs, ptr %39, i32 0, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RBRDU.i, i16 %56) #15, !srcloc !275
  %57 = ptrtoint ptr %rx.sroa.7.0.rx24.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %and.i, ptr %rx.sroa.7.0.rx24.sroa_idx, align 4
  br label %velocity_give_many_rx_descs.exit

velocity_give_many_rx_descs.exit:                 ; preds = %do.body13.i, %if.end17.velocity_give_many_rx_descs.exit_crit_edge
  tail call void @napi_enable(ptr noundef %napi) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !304
  tail call void @arm_heavy_mb() #15
  %58 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mac_regs.i, align 8
  %CR0Set = getelementptr inbounds %struct.mac_regs, ptr %59, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Set, i32 2) #15, !srcloc !277
  %60 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i90 = getelementptr inbounds %struct.netdev_queue, ptr %61, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i90) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call21) #15
  tail call fastcc void @velocity_free_rings(ptr noundef nonnull %call7.i.i)
  br label %out_free_tmp_vptr_1

out_free_tmp_vptr_1:                              ; preds = %velocity_give_many_rx_descs.exit, %if.end6.out_free_tmp_vptr_1_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %out_free_tmp_vptr_1, %if.then3.cleanup_crit_edge
  %ret.0 = phi i32 [ %call14, %out_free_tmp_vptr_1 ], [ -12, %if.then3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %tx)
  br label %cleanup42

cleanup42:                                        ; preds = %cleanup, %if.end.cleanup42_crit_edge, %if.then
  %ret.1 = phi i32 [ %ret.0, %cleanup ], [ 0, %if.end.cleanup42_crit_edge ], [ 0, %if.then ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @velocity_get_stats(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %dev, i32 3212
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !305
  tail call void @arm_heavy_mb() #15
  %mac_regs.i = getelementptr i8, ptr %dev, i32 2840
  %2 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_regs.i, align 8
  %MIBCR.i = getelementptr inbounds %struct.mac_regs, ptr %3, i32 0, i32 56
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIBCR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !306
  %5 = or i8 %4, 4
  %6 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_regs.i, align 8
  %MIBCR6.i = getelementptr inbounds %struct.mac_regs, ptr %7, i32 0, i32 56
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIBCR6.i, i8 %5) #15, !srcloc !272
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end
  %8 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac_regs.i, align 8
  %MIBCR12.i = getelementptr inbounds %struct.mac_regs, ptr %9, i32 0, i32 56
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIBCR12.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !307
  %11 = and i8 %10, 4
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %do.body18.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i

do.body18.i:                                      ; preds = %while.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !308
  tail call void @arm_heavy_mb() #15
  %12 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac_regs.i, align 8
  %MIBCR24.i = getelementptr inbounds %struct.mac_regs, ptr %13, i32 0, i32 56
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIBCR24.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !309
  %15 = or i8 %14, 2
  %16 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mac_regs.i, align 8
  %MIBCR32.i = getelementptr inbounds %struct.mac_regs, ptr %17, i32 0, i32 56
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIBCR32.i, i8 %15) #15, !srcloc !272
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body18.i
  %i.051.i = phi i32 [ 0, %do.body18.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mac_regs.i, align 8
  %MIBData.i = getelementptr inbounds %struct.mac_regs, ptr %19, i32 0, i32 60
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MIBData.i) #15, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !311
  %21 = and i32 %20, -256
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #15
  %arrayidx.i = getelementptr %struct.velocity_info, ptr %add.ptr.i, i32 0, i32 12, i32 %i.051.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %24, %22
  store i32 %add.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.051.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %velocity_update_hw_mibs.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

velocity_update_hw_mibs.exit:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  %mib_counter = getelementptr i8, ptr %dev, i32 2980
  %25 = ptrtoint ptr %mib_counter to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mib_counter, align 4
  %stats3 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %27 = ptrtoint ptr %stats3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %stats3, align 8
  %arrayidx5 = getelementptr i8, ptr %dev, i32 2992
  %28 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx5, align 4
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 4
  %30 = ptrtoint ptr %rx_errors to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %rx_errors, align 8
  %arrayidx8 = getelementptr i8, ptr %dev, i32 3100
  %31 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx8, align 4
  %rx_length_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 10
  %33 = ptrtoint ptr %rx_length_errors to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %rx_length_errors, align 8
  %arrayidx11 = getelementptr i8, ptr %dev, i32 3052
  %34 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx11, align 4
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %36 = ptrtoint ptr %collisions to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %collisions, align 4
  %arrayidx14 = getelementptr i8, ptr %dev, i32 3056
  %37 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx14, align 4
  %rx_crc_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 12
  %39 = ptrtoint ptr %rx_crc_errors to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %rx_crc_errors, align 8
  br label %cleanup

cleanup:                                          ; preds = %velocity_update_hw_mibs.exit, %if.then
  %retval.0 = phi ptr [ %stats3, %velocity_update_hw_mibs.exit ], [ %stats, %if.then ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_vlan_rx_add_vid(ptr noundef %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 3212
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %conv = zext i16 %vid to i32
  %active_vlans = getelementptr i8, ptr %dev, i32 2320
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %active_vlans) #15
  tail call fastcc void @velocity_init_cam_filter(ptr noundef %add.ptr.i)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_vlan_rx_kill_vid(ptr noundef %dev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 3212
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  %conv = zext i16 %vid to i32
  %active_vlans = getelementptr i8, ptr %dev, i32 2320
  tail call void @_clear_bit(i32 noundef %conv, ptr noundef %active_vlans) #15
  tail call fastcc void @velocity_init_cam_filter(ptr noundef %add.ptr.i)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @velocity_poll_controller(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #15
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call i32 @velocity_intr(i32 noundef %3, ptr noundef %dev)
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @velocity_init_rings(ptr noundef %vptr, i32 noundef %mtu) unnamed_addr #2 align 64 {
entry:
  %pool_dma.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1501, i32 %mtu)
  %cmp.i = icmp slt i32 %mtu, 1501
  %add.i = add i32 %mtu, 32
  %spec.select.i = select i1 %cmp.i, i32 1540, i32 %add.i
  %rx.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11
  %0 = ptrtoint ptr %rx.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %spec.select.i, ptr %rx.i, align 8
  %options.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13
  %1 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %options.i, align 4
  %mul.i = shl i32 %2, 4
  %numtx.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13, i32 1
  %3 = ptrtoint ptr %numtx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %numtx.i, align 4
  %mul1.i = shl i32 %4, 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pool_dma.i) #15
  %5 = ptrtoint ptr %pool_dma.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %pool_dma.i, align 4, !annotation !312
  %6 = ptrtoint ptr %vptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vptr, align 8
  %tx.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 10
  %8 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tx.i, align 4
  %mul2.i = mul i32 %9, %mul1.i
  %add.i17 = add i32 %mul2.i, %mul.i
  %call.i.i = call ptr @dma_alloc_attrs(ptr noundef %7, i32 noundef %add.i17, ptr noundef nonnull %pool_dma.i, i32 noundef 2592, i32 noundef 0) #15
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %velocity_init_dma_rings.exit, label %if.end.i

if.end.i:                                         ; preds = %entry
  %ring.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 4
  %10 = ptrtoint ptr %ring.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %ring.i, align 8
  %11 = ptrtoint ptr %pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pool_dma.i, align 4
  %pool_dma5.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 6
  %13 = ptrtoint ptr %pool_dma5.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pool_dma5.i, align 8
  %14 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp42.not.i = icmp eq i32 %15, 0
  br i1 %cmp42.not.i, label %if.end.i.if.end_crit_edge, label %for.body.preheader.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.preheader.i:                             ; preds = %if.end.i
  %add6.i = add i32 %12, %mul.i
  %add.ptr.i = getelementptr i8, ptr %call.i.i, i32 %mul.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.045.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %pool.044.i = phi ptr [ %add.ptr13.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i, %for.body.preheader.i ]
  %add144143.i = phi i32 [ %add14.i, %for.body.i.for.body.i_crit_edge ], [ %add6.i, %for.body.preheader.i ]
  %arrayidx.i = getelementptr %struct.velocity_info, ptr %vptr, i32 0, i32 10, i32 4, i32 %i.045.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %pool.044.i, ptr %arrayidx.i, align 4
  %arrayidx12.i = getelementptr %struct.velocity_info, ptr %vptr, i32 0, i32 10, i32 6, i32 %i.045.i
  %17 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add144143.i, ptr %arrayidx12.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %pool.044.i, i32 %mul1.i
  %add14.i = add i32 %add144143.i, %mul1.i
  %inc.i = add nuw i32 %i.045.i, 1
  %18 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx.i, align 4
  %cmp.i18 = icmp ult i32 %inc.i, %19
  br i1 %cmp.i18, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end_crit_edge

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

velocity_init_dma_rings.exit:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %vptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vptr, align 8
  %netdev.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 2
  %22 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str, ptr noundef %23) #19
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pool_dma.i) #15
  br label %out

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pool_dma.i) #15
  %24 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %options.i, align 4
  %26 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %25, i32 8) #15
  %27 = extractvalue { i32, i1 } %26, 1
  br i1 %27, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !313

kcalloc.exit.thread.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %info16.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 5
  %28 = ptrtoint ptr %info16.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %info16.i, align 4
  br label %err_free_dma_rings_0

if.end7.i.i.i:                                    ; preds = %if.end
  %29 = extractvalue { i32, i1 } %26, 0
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3520) #20
  %info.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 5
  %30 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call8.i.i.i, ptr %info.i, align 4
  %tobool.not.i20 = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i20, label %if.end7.i.i.i.err_free_dma_rings_0_crit_edge, label %if.end.i21

if.end7.i.i.i.err_free_dma_rings_0_crit_edge:     ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free_dma_rings_0

if.end.i21:                                       ; preds = %if.end7.i.i.i
  %curr.i.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 2
  %31 = ptrtoint ptr %curr.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %curr.i.i, align 8
  %filled.i.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 3
  %32 = ptrtoint ptr %filled.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %filled.i.i, align 4
  %dirty.i.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 1
  %33 = ptrtoint ptr %dirty.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %dirty.i.i, align 4
  %call3.i = call fastcc i32 @velocity_rx_refill(ptr noundef %vptr) #15
  %34 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %options.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %35)
  %cmp.not.i = icmp eq i32 %call3.i, %35
  br i1 %cmp.not.i, label %if.end4, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i21
  call void @__sanitizer_cov_trace_pc() #17
  %netdev.i22 = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 2
  %36 = ptrtoint ptr %netdev.i22 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %netdev.i22, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %37, ptr noundef nonnull @.str.5) #19
  call fastcc void @velocity_free_rd_ring(ptr noundef %vptr) #15
  br label %err_free_dma_rings_0

if.end4:                                          ; preds = %if.end.i21
  %38 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp35.i = icmp sgt i32 %39, 0
  br i1 %cmp35.i, label %if.end4.for.body.i25_crit_edge, label %if.end4.out_crit_edge

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end4.for.body.i25_crit_edge:                   ; preds = %if.end4
  br label %for.body.i25

for.body.i25:                                     ; preds = %if.end.i65.for.body.i25_crit_edge, %if.end4.for.body.i25_crit_edge
  %j.036.i = phi i32 [ %inc.i63, %if.end.i65.for.body.i25_crit_edge ], [ 0, %if.end4.for.body.i25_crit_edge ]
  %40 = ptrtoint ptr %numtx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %numtx.i, align 4
  %42 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %41, i32 36) #15
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %kcalloc.exit.thread43.i, label %if.end7.i.i.i57, !prof !313

kcalloc.exit.thread43.i:                          ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx45.i = getelementptr %struct.velocity_info, ptr %vptr, i32 0, i32 10, i32 5, i32 %j.036.i
  %44 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %arrayidx45.i, align 4
  br label %while.cond.preheader.i

if.end7.i.i.i57:                                  ; preds = %for.body.i25
  %45 = extractvalue { i32, i1 } %42, 0
  %call8.i.i.i56 = call noalias align 128 ptr @__kmalloc(i32 noundef %45, i32 noundef 3520) #20
  %arrayidx.i59 = getelementptr %struct.velocity_info, ptr %vptr, i32 0, i32 10, i32 5, i32 %j.036.i
  %46 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call8.i.i.i56, ptr %arrayidx.i59, align 4
  %tobool.not.i60 = icmp eq ptr %call8.i.i.i56, null
  br i1 %tobool.not.i60, label %if.end7.i.i.i57.while.cond.preheader.i_crit_edge, label %if.end.i65

if.end7.i.i.i57.while.cond.preheader.i_crit_edge: ; preds = %if.end7.i.i.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %if.end7.i.i.i57.while.cond.preheader.i_crit_edge, %kcalloc.exit.thread43.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.036.i)
  %cmp539.not.i = icmp eq i32 %j.036.i, 0
  br i1 %cmp539.not.i, label %while.cond.preheader.i.err_free_rd_ring_1_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.err_free_rd_ring_1_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free_rd_ring_1

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %dec40.in.i = phi i32 [ %dec40.i, %while.body.i.while.body.i_crit_edge ], [ %j.036.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec40.i = add nsw i32 %dec40.in.i, -1
  %arrayidx8.i = getelementptr %struct.velocity_info, ptr %vptr, i32 0, i32 10, i32 5, i32 %dec40.i
  %47 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx8.i, align 4
  call void @kfree(ptr noundef %48) #15
  %cmp5.i = icmp sgt i32 %dec40.in.i, 1
  br i1 %cmp5.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.err_free_rd_ring_1_crit_edge

while.body.i.err_free_rd_ring_1_crit_edge:        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free_rd_ring_1

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

if.end.i65:                                       ; preds = %if.end7.i.i.i57
  %arrayidx10.i = getelementptr %struct.velocity_info, ptr %vptr, i32 0, i32 10, i32 1, i32 %j.036.i
  %49 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %arrayidx10.i, align 4
  %arrayidx12.i62 = getelementptr %struct.velocity_info, ptr %vptr, i32 0, i32 10, i32 2, i32 %j.036.i
  %50 = ptrtoint ptr %arrayidx12.i62 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %arrayidx12.i62, align 4
  %arrayidx14.i = getelementptr %struct.velocity_info, ptr %vptr, i32 0, i32 10, i32 3, i32 %j.036.i
  %51 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %arrayidx14.i, align 4
  %inc.i63 = add nuw nsw i32 %j.036.i, 1
  %52 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %tx.i, align 4
  %cmp.i64 = icmp slt i32 %inc.i63, %53
  br i1 %cmp.i64, label %if.end.i65.for.body.i25_crit_edge, label %if.end.i65.out_crit_edge

if.end.i65.out_crit_edge:                         ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end.i65.for.body.i25_crit_edge:                ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i25

out:                                              ; preds = %err_free_dma_rings_0, %if.end.i65.out_crit_edge, %if.end4.out_crit_edge, %velocity_init_dma_rings.exit
  %ret.0 = phi i32 [ -12, %velocity_init_dma_rings.exit ], [ -12, %err_free_dma_rings_0 ], [ 0, %if.end4.out_crit_edge ], [ 0, %if.end.i65.out_crit_edge ]
  ret i32 %ret.0

err_free_rd_ring_1:                               ; preds = %while.body.i.err_free_rd_ring_1_crit_edge, %while.cond.preheader.i.err_free_rd_ring_1_crit_edge
  call fastcc void @velocity_free_rd_ring(ptr noundef %vptr)
  br label %err_free_dma_rings_0

err_free_dma_rings_0:                             ; preds = %err_free_rd_ring_1, %if.then6.i, %if.end7.i.i.i.err_free_dma_rings_0_crit_edge, %kcalloc.exit.thread.i
  %54 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %options.i, align 4
  %mul.i68 = shl i32 %55, 4
  %56 = ptrtoint ptr %numtx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %numtx.i, align 4
  %mul2.i70 = shl i32 %57, 6
  %58 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx.i, align 4
  %mul3.i = mul i32 %mul2.i70, %59
  %add.i72 = add i32 %mul3.i, %mul.i68
  %60 = ptrtoint ptr %vptr to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vptr, align 8
  %62 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ring.i, align 8
  %64 = ptrtoint ptr %pool_dma5.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %pool_dma5.i, align 8
  call void @dma_free_attrs(ptr noundef %61, i32 noundef %add.i72, ptr noundef %63, i32 noundef %65, i32 noundef 0) #15
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @velocity_init_registers(ptr noundef %vptr, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  %BMCR.i = alloca i16, align 2
  %w41.i = alloca i16, align 2
  %w56.i = alloca i16, align 2
  %w68.i = alloca i16, align 2
  %w80.i = alloca i16, align 2
  %w92.i = alloca i16, align 2
  %w107.i = alloca i16, align 2
  %w119.i = alloca i16, align 2
  %w132.i = alloca i16, align 2
  %w143.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 7
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 8
  %netdev1 = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 2
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 8
  tail call fastcc void @mac_wol_reset(ptr noundef %1)
  %type.off = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %type.off)
  %switch = icmp ult i32 %type.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %entry
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %4 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %5, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  %6 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_regs, align 8
  %curr.i.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 2
  %8 = ptrtoint ptr %curr.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %curr.i.i, align 8
  %filled.i.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 3
  %9 = ptrtoint ptr %filled.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %filled.i.i, align 4
  %dirty.i.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 1
  %10 = ptrtoint ptr %dirty.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %dirty.i.i, align 4
  %options.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13
  %11 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %options.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp29.i = icmp sgt i32 %12, 0
  br i1 %cmp29.i, label %for.body.lr.ph.i, label %sw.bb.velocity_rx_reset.exit_crit_edge

sw.bb.velocity_rx_reset.exit_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_rx_reset.exit

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %ring.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.030.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %13 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ring.i, align 8
  %len.i = getelementptr %struct.rx_desc, ptr %14, i32 %i.030.i, i32 0, i32 1
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 2)
  %16 = load i16, ptr %len.i, align 1
  %17 = or i16 %16, 128
  store i16 %17, ptr %len.i, align 1
  %inc.i = add nuw nsw i32 %i.030.i, 1
  %18 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %options.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %19
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.velocity_rx_reset.exit_crit_edge

for.body.i.velocity_rx_reset.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_rx_reset.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

velocity_rx_reset.exit:                           ; preds = %for.body.i.velocity_rx_reset.exit_crit_edge, %sw.bb.velocity_rx_reset.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !314
  tail call void @arm_heavy_mb() #15
  %20 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %options.i, align 4
  %conv4.i = trunc i32 %21 to i16
  %22 = tail call i16 @llvm.bswap.i16(i16 %conv4.i) #15
  %RBRDU.i = getelementptr inbounds %struct.mac_regs, ptr %7, i32 0, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RBRDU.i, i16 %22) #15, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !315
  tail call void @arm_heavy_mb() #15
  %pool_dma.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 6
  %23 = ptrtoint ptr %pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pool_dma.i, align 8
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #15
  %RDBaseLo.i = getelementptr inbounds %struct.mac_regs, ptr %7, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RDBaseLo.i, i32 %25) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !316
  tail call void @arm_heavy_mb() #15
  %RDIdx.i = getelementptr inbounds %struct.mac_regs, ptr %7, i32 0, i32 22
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RDIdx.i, i16 0) #15, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !317
  tail call void @arm_heavy_mb() #15
  %26 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %options.i, align 4
  %28 = trunc i32 %27 to i16
  %conv17.i = add i16 %28, -1
  %29 = tail call i16 @llvm.bswap.i16(i16 %conv17.i) #15
  %RDCSize.i = getelementptr inbounds %struct.mac_regs, ptr %7, i32 0, i32 26
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RDCSize.i, i16 %29) #15, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !318
  tail call void @arm_heavy_mb() #15
  %RDCSRSet = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %RDCSRSet, i8 1) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !319
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %RDCSRSet, i8 4) #15, !srcloc !272
  %spd_dpx.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13, i32 2
  %30 = ptrtoint ptr %spd_dpx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %spd_dpx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %31)
  %32 = icmp ult i32 %31, 6
  br i1 %32, label %switch.lookup, label %velocity_rx_reset.exit.velocity_get_opt_media_mode.exit_crit_edge

velocity_rx_reset.exit.velocity_get_opt_media_mode.exit_crit_edge: ; preds = %velocity_rx_reset.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_get_opt_media_mode.exit

switch.lookup:                                    ; preds = %velocity_rx_reset.exit
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.velocity_init_registers, i32 0, i32 %31
  %33 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %velocity_get_opt_media_mode.exit

velocity_get_opt_media_mode.exit:                 ; preds = %switch.lookup, %velocity_rx_reset.exit.velocity_get_opt_media_mode.exit_crit_edge
  %status.0.i = phi i32 [ 0, %velocity_rx_reset.exit.velocity_get_opt_media_mode.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %mii_status.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 16
  %34 = ptrtoint ptr %mii_status.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %status.0.i, ptr %mii_status.i, align 8
  tail call fastcc void @velocity_set_media_mode(ptr noundef %vptr, i32 noundef %status.0.i)
  tail call fastcc void @enable_flow_control_ability(ptr noundef %vptr)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !320
  tail call void @arm_heavy_mb() #15
  %ISR = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ISR, i32 -1) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !321
  tail call void @arm_heavy_mb() #15
  %CR0Clr = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Clr, i32 33554432) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !322
  tail call void @arm_heavy_mb() #15
  %CR0Set = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Set, i32 218628096) #15, !srcloc !277
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %35 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mac_regs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !323
  tail call void @arm_heavy_mb() #15
  %CR0Set.i = getelementptr inbounds %struct.mac_regs, ptr %36, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Set.i, i32 8388608) #15, !srcloc !277
  br label %for.body.i293

for.body.i293:                                    ; preds = %for.inc.i.for.body.i293_crit_edge, %sw.default
  %i.03.i = phi i32 [ 0, %sw.default ], [ %inc.i294, %for.inc.i.for.body.i293_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 1073740) #15
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %CR0Set.i) #15, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !324
  %39 = and i32 %38, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i = icmp eq i32 %39, 0
  br i1 %tobool.not.i, label %for.body.i293.velocity_soft_reset.exit_crit_edge, label %for.inc.i

for.body.i293.velocity_soft_reset.exit_crit_edge: ; preds = %for.body.i293
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_soft_reset.exit

for.inc.i:                                        ; preds = %for.body.i293
  %inc.i294 = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i294, 4095
  br i1 %exitcond.not.i, label %do.body5.i, label %for.inc.i.for.body.i293_crit_edge

for.inc.i.for.body.i293_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i293

do.body5.i:                                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !325
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Set.i, i32 64) #15, !srcloc !277
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 429496000) #15
  br label %velocity_soft_reset.exit

velocity_soft_reset.exit:                         ; preds = %do.body5.i, %for.body.i293.velocity_soft_reset.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #15
  %no_eeprom = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 3
  %46 = ptrtoint ptr %no_eeprom to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %no_eeprom, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool22.not = icmp eq i32 %47, 0
  br i1 %tobool22.not, label %if.then23, label %velocity_soft_reset.exit.do.body30_crit_edge

velocity_soft_reset.exit.do.body30_crit_edge:     ; preds = %velocity_soft_reset.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body30

if.then23:                                        ; preds = %velocity_soft_reset.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !326
  tail call void @arm_heavy_mb() #15
  %EECSR.i = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 67
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EECSR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !327
  %49 = or i8 %48, 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %EECSR.i, i8 %49) #15, !srcloc !272
  br label %do.body7.i

do.body7.i:                                       ; preds = %do.cond9.i.do.body7.i_crit_edge, %if.then23
  %i.0.i = phi i32 [ 0, %if.then23 ], [ %inc.i295, %do.cond9.i.do.body7.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 2147480) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %i.0.i)
  %exitcond.i = icmp eq i32 %i.0.i, 4097
  br i1 %exitcond.i, label %do.body7.i.mac_eeprom_reload.exit_crit_edge, label %do.cond9.i

do.body7.i.mac_eeprom_reload.exit_crit_edge:      ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mac_eeprom_reload.exit

do.cond9.i:                                       ; preds = %do.body7.i
  %inc.i295 = add nuw nsw i32 %i.0.i, 1
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %EECSR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !328
  %52 = and i8 %51, 32
  %tobool.not.i296 = icmp eq i8 %52, 0
  br i1 %tobool.not.i296, label %do.cond9.i.mac_eeprom_reload.exit_crit_edge, label %do.cond9.i.do.body7.i_crit_edge

do.cond9.i.do.body7.i_crit_edge:                  ; preds = %do.cond9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body7.i

do.cond9.i.mac_eeprom_reload.exit_crit_edge:      ; preds = %do.cond9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mac_eeprom_reload.exit

mac_eeprom_reload.exit:                           ; preds = %do.cond9.i.mac_eeprom_reload.exit_crit_edge, %do.body7.i.mac_eeprom_reload.exit_crit_edge
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !329
  tail call void @arm_heavy_mb() #15
  %53 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev_addr, align 64
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %54, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1, i8 %56) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !329
  tail call void @arm_heavy_mb() #15
  %57 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %58, i32 1
  %59 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.1, align 1
  %add.ptr.1 = getelementptr i8, ptr %1, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.1, i8 %60) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !329
  tail call void @arm_heavy_mb() #15
  %61 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %62, i32 2
  %63 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %arrayidx.2, align 1
  %add.ptr.2 = getelementptr i8, ptr %1, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.2, i8 %64) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !329
  tail call void @arm_heavy_mb() #15
  %65 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev_addr, align 64
  %arrayidx.3 = getelementptr i8, ptr %66, i32 3
  %67 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.3, align 1
  %add.ptr.3 = getelementptr i8, ptr %1, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.3, i8 %68) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !329
  tail call void @arm_heavy_mb() #15
  %69 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_addr, align 64
  %arrayidx.4 = getelementptr i8, ptr %70, i32 4
  %71 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.4, align 1
  %add.ptr.4 = getelementptr i8, ptr %1, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.4, i8 %72) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !329
  tail call void @arm_heavy_mb() #15
  %73 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev_addr, align 64
  %arrayidx.5 = getelementptr i8, ptr %74, i32 5
  %75 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.5, align 1
  %add.ptr.5 = getelementptr i8, ptr %1, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.5, i8 %76) #15, !srcloc !272
  br label %do.body30

do.body30:                                        ; preds = %mac_eeprom_reload.exit, %velocity_soft_reset.exit.do.body30_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !330
  tail call void @arm_heavy_mb() #15
  %CFGA = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 46
  %77 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CFGA) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !331
  %78 = and i8 %77, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CFGA, i8 %78) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !332
  tail call void @arm_heavy_mb() #15
  %MCFG = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 51
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MCFG) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !333
  %80 = and i8 %79, -49
  %options = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13
  %rx_thresh = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13, i32 4
  %81 = ptrtoint ptr %rx_thresh to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %rx_thresh, align 4
  %83 = trunc i32 %82 to i8
  %conv51 = or i8 %80, %83
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MCFG, i8 %conv51) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !334
  tail call void @arm_heavy_mb() #15
  %DCFG = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 50
  %84 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %DCFG) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !335
  %85 = and i8 %84, -8
  %DMA_length = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13, i32 3
  %86 = ptrtoint ptr %DMA_length to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %DMA_length, align 4
  %88 = trunc i32 %87 to i8
  %conv68 = or i8 %85, %88
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %DCFG, i8 %conv68) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !336
  tail call void @arm_heavy_mb() #15
  %WOLCFGSet = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 81
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %WOLCFGSet, i8 48) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !337
  tail call void @arm_heavy_mb() #15
  %CFGB = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 47
  %89 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CFGB) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !338
  %90 = and i8 %89, -32
  %91 = or i8 %90, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CFGB, i8 %91) #15, !srcloc !272
  tail call fastcc void @velocity_init_cam_filter(ptr noundef %vptr)
  tail call void @velocity_set_multi(ptr noundef %3)
  tail call fastcc void @enable_mii_autopoll(ptr noundef %1)
  tail call fastcc void @setup_adaptive_interrupts(ptr noundef %vptr)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !339
  tail call void @arm_heavy_mb() #15
  %pool_dma = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 6
  %92 = ptrtoint ptr %pool_dma to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %pool_dma, align 8
  %94 = tail call i32 @llvm.bswap.i32(i32 %93)
  %RDBaseLo = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %RDBaseLo, i32 %94) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !340
  tail call void @arm_heavy_mb() #15
  %95 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %options, align 4
  %97 = trunc i32 %96 to i16
  %conv98 = add i16 %97, -1
  %98 = tail call i16 @llvm.bswap.i16(i16 %conv98)
  %RDCSize = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 26
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RDCSize, i16 %98) #15, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !341
  tail call void @arm_heavy_mb() #15
  %RDCSRSet102 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %RDCSRSet102, i8 1) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !342
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %RDCSRSet102, i8 4) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !343
  tail call void @arm_heavy_mb() #15
  %numtx = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13, i32 1
  %99 = ptrtoint ptr %numtx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %numtx, align 4
  %101 = trunc i32 %100 to i16
  %conv112 = add i16 %101, -1
  %102 = tail call i16 @llvm.bswap.i16(i16 %conv112)
  %TDCSize = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 27
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %TDCSize, i16 %102) #15, !srcloc !275
  %tx = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 10
  %103 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %cmp114315 = icmp sgt i32 %104, 0
  br i1 %cmp114315, label %do.body117.lr.ph, label %do.body30.for.end130_crit_edge

do.body30.for.end130_crit_edge:                   ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end130

do.body117.lr.ph:                                 ; preds = %do.body30
  %TDCSRSet = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 15
  br label %do.body117

do.body117:                                       ; preds = %do.body117.do.body117_crit_edge, %do.body117.lr.ph
  %i.1316 = phi i32 [ 0, %do.body117.lr.ph ], [ %inc129, %do.body117.do.body117_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !344
  tail call void @arm_heavy_mb() #15
  %arrayidx122 = getelementptr %struct.velocity_info, ptr %vptr, i32 0, i32 10, i32 6, i32 %i.1316
  %105 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx122, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  %arrayidx123 = getelementptr %struct.mac_regs, ptr %1, i32 0, i32 25, i32 %i.1316
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx123, i32 %107) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !345
  tail call void @arm_heavy_mb() #15
  %mul = shl i32 %i.1316, 2
  %shl = shl nuw i32 1, %mul
  %conv127 = trunc i32 %shl to i16
  %108 = tail call i16 @llvm.bswap.i16(i16 %conv127)
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %TDCSRSet, i16 %108) #15, !srcloc !275
  %inc129 = add nuw nsw i32 %i.1316, 1
  %109 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %tx, align 4
  %cmp114 = icmp slt i32 %inc129, %110
  br i1 %cmp114, label %do.body117.do.body117_crit_edge, label %do.body117.for.end130_crit_edge

do.body117.for.end130_crit_edge:                  ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end130

do.body117.do.body117_crit_edge:                  ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body117

for.end130:                                       ; preds = %do.body117.for.end130_crit_edge, %do.body30.for.end130_crit_edge
  %111 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %mac_regs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !346
  tail call void @arm_heavy_mb() #15
  %CR0Set.i298 = getelementptr inbounds %struct.mac_regs, ptr %112, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Set.i298, i32 35584) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !347
  tail call void @arm_heavy_mb() #15
  %CR0Clr.i = getelementptr inbounds %struct.mac_regs, ptr %112, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Clr.i, i32 29696) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !348
  tail call void @arm_heavy_mb() #15
  %tx_pause_timer.i = getelementptr inbounds %struct.mac_regs, ptr %112, i32 0, i32 29
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %tx_pause_timer.i, i16 -1) #15, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !349
  tail call void @arm_heavy_mb() #15
  %113 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %options, align 4
  %conv.i = trunc i32 %114 to i16
  %115 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #15
  %RBRDU.i300 = getelementptr inbounds %struct.mac_regs, ptr %112, i32 0, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RBRDU.i300, i16 %115) #15, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !350
  tail call void @arm_heavy_mb() #15
  %CR0Clr134 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Clr134, i32 33554432) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !351
  tail call void @arm_heavy_mb() #15
  %CR0Set138 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Set138, i32 218628096) #15, !srcloc !277
  %spd_dpx.i301 = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13, i32 2
  %116 = ptrtoint ptr %spd_dpx.i301 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %spd_dpx.i301, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %117)
  %118 = icmp ult i32 %117, 6
  br i1 %118, label %switch.lookup317, label %for.end130.velocity_get_opt_media_mode.exit310_crit_edge

for.end130.velocity_get_opt_media_mode.exit310_crit_edge: ; preds = %for.end130
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_get_opt_media_mode.exit310

switch.lookup317:                                 ; preds = %for.end130
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep318 = getelementptr inbounds [6 x i32], ptr @switch.table.velocity_init_registers.86, i32 0, i32 %117
  %119 = ptrtoint ptr %switch.gep318 to i32
  call void @__asan_load4_noabort(i32 %119)
  %switch.load319 = load i32, ptr %switch.gep318, align 4
  br label %velocity_get_opt_media_mode.exit310

velocity_get_opt_media_mode.exit310:              ; preds = %switch.lookup317, %for.end130.velocity_get_opt_media_mode.exit310_crit_edge
  %status.0.i308 = phi i32 [ 0, %for.end130.velocity_get_opt_media_mode.exit310_crit_edge ], [ %switch.load319, %switch.lookup317 ]
  %mii_status.i309 = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 16
  %120 = ptrtoint ptr %mii_status.i309 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %status.0.i308, ptr %mii_status.i309, align 8
  %_tx.i.i311 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 103
  %121 = ptrtoint ptr %_tx.i.i311 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %_tx.i.i311, align 128
  %state.i.i312 = getelementptr inbounds %struct.netdev_queue, ptr %122, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i312) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %BMCR.i) #15
  %123 = ptrtoint ptr %BMCR.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 -1, ptr %BMCR.i, align 2, !annotation !312
  %phy_id.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 17
  %124 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %phy_id.i, align 4
  %and.i = and i32 %125, -16
  %126 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %and.i, label %velocity_get_opt_media_mode.exit310.sw.epilog.i_crit_edge [
    i32 21040192, label %velocity_get_opt_media_mode.exit310.do.body131.i_crit_edge
    i32 1033232, label %do.body40.i
    i32 1033744, label %velocity_get_opt_media_mode.exit310.do.body91.i_crit_edge
    i32 1033728, label %velocity_get_opt_media_mode.exit310.do.body91.i_crit_edge320
    i32 21040208, label %velocity_get_opt_media_mode.exit310.do.body131.i_crit_edge321
  ]

velocity_get_opt_media_mode.exit310.do.body131.i_crit_edge321: ; preds = %velocity_get_opt_media_mode.exit310
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body131.i

velocity_get_opt_media_mode.exit310.do.body91.i_crit_edge320: ; preds = %velocity_get_opt_media_mode.exit310
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body91.i

velocity_get_opt_media_mode.exit310.do.body91.i_crit_edge: ; preds = %velocity_get_opt_media_mode.exit310
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body91.i

velocity_get_opt_media_mode.exit310.do.body131.i_crit_edge: ; preds = %velocity_get_opt_media_mode.exit310
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body131.i

velocity_get_opt_media_mode.exit310.sw.epilog.i_crit_edge: ; preds = %velocity_get_opt_media_mode.exit310
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.i

do.body40.i:                                      ; preds = %velocity_get_opt_media_mode.exit310
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w41.i) #15
  %127 = ptrtoint ptr %w41.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 -1, ptr %w41.i, align 2, !annotation !312
  %128 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %mac_regs, align 8
  %call43.i = call fastcc i32 @velocity_mii_read(ptr noundef %129, i8 noundef zeroext 4, ptr noundef nonnull %w41.i) #15
  %130 = ptrtoint ptr %w41.i to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %w41.i, align 2
  %132 = and i16 %131, -3073
  %133 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %mac_regs, align 8
  %call48.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %134, i8 noundef zeroext 4, i16 noundef zeroext %132) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w41.i) #15
  %135 = ptrtoint ptr %mii_status.i309 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %mii_status.i309, align 8
  %and52.i = and i32 %136, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52.i)
  %tobool53.not.i = icmp eq i32 %and52.i, 0
  br i1 %tobool53.not.i, label %do.body67.i, label %do.body55.i

do.body55.i:                                      ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w56.i) #15
  %137 = ptrtoint ptr %w56.i to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 -1, ptr %w56.i, align 2, !annotation !312
  %138 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %mac_regs, align 8
  %call58.i = call fastcc i32 @velocity_mii_read(ptr noundef %139, i8 noundef zeroext 22, ptr noundef nonnull %w56.i) #15
  %140 = ptrtoint ptr %w56.i to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %w56.i, align 2
  %142 = or i16 %141, 8192
  %143 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %mac_regs, align 8
  %call63.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %144, i8 noundef zeroext 22, i16 noundef zeroext %142) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w56.i) #15
  br label %do.body79.i

do.body67.i:                                      ; preds = %do.body40.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w68.i) #15
  %145 = ptrtoint ptr %w68.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 -1, ptr %w68.i, align 2, !annotation !312
  %146 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %mac_regs, align 8
  %call70.i = call fastcc i32 @velocity_mii_read(ptr noundef %147, i8 noundef zeroext 22, ptr noundef nonnull %w68.i) #15
  %148 = ptrtoint ptr %w68.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %w68.i, align 2
  %150 = and i16 %149, -8193
  %151 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %mac_regs, align 8
  %call75.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %152, i8 noundef zeroext 22, i16 noundef zeroext %150) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w68.i) #15
  br label %do.body79.i

do.body79.i:                                      ; preds = %do.body67.i, %do.body55.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w80.i) #15
  %153 = ptrtoint ptr %w80.i to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 -1, ptr %w80.i, align 2, !annotation !312
  %154 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %mac_regs, align 8
  %call82.i = call fastcc i32 @velocity_mii_read(ptr noundef %155, i8 noundef zeroext 27, ptr noundef nonnull %w80.i) #15
  %156 = ptrtoint ptr %w80.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %w80.i, align 2
  %158 = or i16 %157, 4
  %159 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mac_regs, align 8
  %call87.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %160, i8 noundef zeroext 27, i16 noundef zeroext %158) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w80.i) #15
  br label %sw.epilog.i

do.body91.i:                                      ; preds = %velocity_get_opt_media_mode.exit310.do.body91.i_crit_edge, %velocity_get_opt_media_mode.exit310.do.body91.i_crit_edge320
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w92.i) #15
  %161 = ptrtoint ptr %w92.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 -1, ptr %w92.i, align 2, !annotation !312
  %162 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %mac_regs, align 8
  %call94.i = call fastcc i32 @velocity_mii_read(ptr noundef %163, i8 noundef zeroext 4, ptr noundef nonnull %w92.i) #15
  %164 = ptrtoint ptr %w92.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %165 = load i16, ptr %w92.i, align 2
  %166 = or i16 %165, 3072
  %167 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mac_regs, align 8
  %call99.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %168, i8 noundef zeroext 4, i16 noundef zeroext %166) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w92.i) #15
  %169 = ptrtoint ptr %mii_status.i309 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %mii_status.i309, align 8
  %and103.i = and i32 %170, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i)
  %tobool104.not.i = icmp eq i32 %and103.i, 0
  br i1 %tobool104.not.i, label %do.body118.i, label %do.body106.i

do.body106.i:                                     ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w107.i) #15
  %171 = ptrtoint ptr %w107.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 -1, ptr %w107.i, align 2, !annotation !312
  %172 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mac_regs, align 8
  %call109.i = call fastcc i32 @velocity_mii_read(ptr noundef %173, i8 noundef zeroext 22, ptr noundef nonnull %w107.i) #15
  %174 = ptrtoint ptr %w107.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %w107.i, align 2
  %176 = or i16 %175, 8192
  %177 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %mac_regs, align 8
  %call114.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %178, i8 noundef zeroext 22, i16 noundef zeroext %176) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w107.i) #15
  br label %sw.epilog.i

do.body118.i:                                     ; preds = %do.body91.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w119.i) #15
  %179 = ptrtoint ptr %w119.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 -1, ptr %w119.i, align 2, !annotation !312
  %180 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %mac_regs, align 8
  %call121.i = call fastcc i32 @velocity_mii_read(ptr noundef %181, i8 noundef zeroext 22, ptr noundef nonnull %w119.i) #15
  %182 = ptrtoint ptr %w119.i to i32
  call void @__asan_load2_noabort(i32 %182)
  %183 = load i16, ptr %w119.i, align 2
  %184 = and i16 %183, -8193
  %185 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %mac_regs, align 8
  %call126.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %186, i8 noundef zeroext 22, i16 noundef zeroext %184) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w119.i) #15
  br label %sw.epilog.i

do.body131.i:                                     ; preds = %velocity_get_opt_media_mode.exit310.do.body131.i_crit_edge, %velocity_get_opt_media_mode.exit310.do.body131.i_crit_edge321
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w132.i) #15
  %187 = ptrtoint ptr %w132.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 -1, ptr %w132.i, align 2, !annotation !312
  %188 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %mac_regs, align 8
  %call134.i = call fastcc i32 @velocity_mii_read(ptr noundef %189, i8 noundef zeroext 16, ptr noundef nonnull %w132.i) #15
  %190 = ptrtoint ptr %w132.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %w132.i, align 2
  %192 = or i16 %191, 2048
  %193 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mac_regs, align 8
  %call139.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %194, i8 noundef zeroext 16, i16 noundef zeroext %192) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w132.i) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w143.i) #15
  %195 = ptrtoint ptr %w143.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 -1, ptr %w143.i, align 2, !annotation !312
  %196 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %mac_regs, align 8
  %call145.i = call fastcc i32 @velocity_mii_read(ptr noundef %197, i8 noundef zeroext 4, ptr noundef nonnull %w143.i) #15
  %198 = ptrtoint ptr %w143.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %w143.i, align 2
  %200 = or i16 %199, 3072
  %201 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %mac_regs, align 8
  %call150.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %202, i8 noundef zeroext 4, i16 noundef zeroext %200) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w143.i) #15
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %do.body131.i, %do.body118.i, %do.body106.i, %do.body79.i, %velocity_get_opt_media_mode.exit310.sw.epilog.i_crit_edge
  %203 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %mac_regs, align 8
  %call154.i = call fastcc i32 @velocity_mii_read(ptr noundef %204, i8 noundef zeroext 0, ptr noundef nonnull %BMCR.i) #15
  %205 = ptrtoint ptr %BMCR.i to i32
  call void @__asan_load2_noabort(i32 %205)
  %206 = load i16, ptr %BMCR.i, align 2
  %207 = and i16 %206, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %207)
  %tobool157.not.i = icmp eq i16 %207, 0
  br i1 %tobool157.not.i, label %sw.epilog.i.mii_init.exit_crit_edge, label %if.then158.i

sw.epilog.i.mii_init.exit_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mii_init.exit

if.then158.i:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #17
  %and160.i = and i16 %206, -1025
  %208 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %mac_regs, align 8
  %call163.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %209, i8 noundef zeroext 0, i16 noundef zeroext %and160.i) #15
  br label %mii_init.exit

mii_init.exit:                                    ; preds = %if.then158.i, %sw.epilog.i.mii_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %BMCR.i) #15
  tail call fastcc void @velocity_set_media_mode(ptr noundef %vptr, i32 noundef %status.0.i308)
  tail call fastcc void @enable_flow_control_ability(ptr noundef %vptr)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !352
  tail call void @arm_heavy_mb() #15
  %MIBCR = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 56
  %210 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIBCR) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !353
  %211 = or i8 %210, 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIBCR, i8 %211) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !354
  tail call void @arm_heavy_mb() #15
  %212 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIBCR) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !355
  %213 = or i8 %212, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIBCR, i8 %213) #15, !srcloc !272
  br label %do.body181

do.body181:                                       ; preds = %do.body181.do.body181_crit_edge, %mii_init.exit
  %214 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIBCR) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !356
  %215 = and i8 %214, 1
  %tobool191.not = icmp eq i8 %215, 0
  br i1 %tobool191.not, label %do.body194, label %do.body181.do.body181_crit_edge

do.body181.do.body181_crit_edge:                  ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body181

do.body194:                                       ; preds = %do.body181
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !357
  tail call void @arm_heavy_mb() #15
  %216 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIBCR) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !358
  %217 = and i8 %216, -9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIBCR, i8 %217) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !359
  tail call void @arm_heavy_mb() #15
  %int_mask = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 14
  %218 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %int_mask, align 8
  %220 = tail call i32 @llvm.bswap.i32(i32 %219)
  %IMR = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IMR, i32 %220) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !360
  tail call void @arm_heavy_mb() #15
  %ISR215 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ISR215, i32 -1) #15, !srcloc !277
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body194, %velocity_get_opt_media_mode.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_intr(i32 noundef %irq, ptr noundef %dev_instance) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev_instance, i32 2304
  %lock = getelementptr i8, ptr %dev_instance, i32 3212
  tail call void @_raw_spin_lock(ptr noundef %lock) #15
  %mac_regs = getelementptr i8, ptr %dev_instance, i32 2840
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 8
  %ISR = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ISR) #15, !srcloc !310
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !361
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !362
  tail call void @arm_heavy_mb() #15
  %4 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mac_regs, align 8
  %ISR5 = getelementptr inbounds %struct.mac_regs, ptr %5, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ISR5, i32 %2) #15, !srcloc !277
  %napi = getelementptr i8, ptr %dev_instance, i32 4096
  %call6 = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #15
  br i1 %call6, label %do.body9, label %do.body.if.end14_crit_edge, !prof !278

do.body.if.end14_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

do.body9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !363
  tail call void @arm_heavy_mb() #15
  %6 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_regs, align 8
  %CR0Clr = getelementptr inbounds %struct.mac_regs, ptr %7, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Clr, i32 2) #15, !srcloc !277
  tail call void @__napi_schedule(ptr noundef %napi) #15
  br label %if.end14

if.end14:                                         ; preds = %do.body9, %do.body.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %tobool15.not = icmp ult i32 %3, 16
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.then16

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then16:                                        ; preds = %if.end14
  %and.i = and i32 %3, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then16.if.end.i_crit_edge, label %if.then.i

if.then16.if.end.i_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac_regs, align 8
  %netdev.i = getelementptr i8, ptr %dev_instance, i32 2312
  %10 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev.i, align 8
  %TDIdx.i = getelementptr inbounds %struct.mac_regs, ptr %9, i32 0, i32 28
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %TDIdx.i) #15, !srcloc !364
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !365
  %conv.i = zext i16 %13 to i32
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.21, i32 noundef %conv.i) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !366
  tail call void @arm_heavy_mb() #15
  %TXESR.i = getelementptr inbounds %struct.mac_regs, ptr %9, i32 0, i32 10
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %TXESR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !367
  %15 = or i8 %14, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TXESR.i, i8 %15) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !368
  tail call void @arm_heavy_mb() #15
  %TDCSRClr.i = getelementptr inbounds %struct.mac_regs, ptr %9, i32 0, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %TDCSRClr.i, i16 256) #15, !srcloc !275
  %16 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netdev.i, align 8
  %_tx.i.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 103
  %18 = ptrtoint ptr %_tx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %_tx.i.i.i, align 128
  %state.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %19, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i.i) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then16.if.end.i_crit_edge
  %and17.i = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end.i.if.end132.i_crit_edge, label %if.then19.i

if.end.i.if.end132.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end132.i

if.then19.i:                                      ; preds = %if.end.i
  %20 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac_regs, align 8
  %spd_dpx.i = getelementptr i8, ptr %dev_instance, i32 3116
  %22 = ptrtoint ptr %spd_dpx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %spd_dpx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i = icmp eq i32 %23, 0
  br i1 %cmp.i, label %if.then23.i, label %if.then19.i.if.end106.i_crit_edge

if.then19.i.if.end106.i_crit_edge:                ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end106.i

if.then23.i:                                      ; preds = %if.then19.i
  %call24.i = tail call fastcc i32 @check_connection_type(ptr noundef %21) #15
  %mii_status.i = getelementptr i8, ptr %dev_instance, i32 3184
  %24 = ptrtoint ptr %mii_status.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call24.i, ptr %mii_status.i, align 8
  %rev_id.i = getelementptr i8, ptr %dev_instance, i32 4092
  %25 = ptrtoint ptr %rev_id.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %rev_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %26)
  %cmp26.i = icmp ult i8 %26, 16
  br i1 %cmp26.i, label %if.then28.i, label %if.then23.i.if.end65.i_crit_edge

if.then23.i.if.end65.i_crit_edge:                 ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end65.i

if.then28.i:                                      ; preds = %if.then23.i
  %and30.i = and i32 %call24.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  tail call void @arm_heavy_mb() #15
  %TCR54.i = getelementptr inbounds %struct.mac_regs, ptr %21, i32 0, i32 2
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %TCR54.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  br i1 %tobool31.not.i, label %do.body49.i, label %do.body34.i

do.body34.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #17
  %28 = or i8 %27, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TCR54.i, i8 %28) #15, !srcloc !272
  br label %if.end65.i

do.body49.i:                                      ; preds = %if.then28.i
  call void @__sanitizer_cov_trace_pc() #17
  %29 = and i8 %27, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TCR54.i, i8 %29) #15, !srcloc !272
  br label %if.end65.i

if.end65.i:                                       ; preds = %do.body49.i, %do.body34.i, %if.then23.i.if.end65.i_crit_edge
  %30 = ptrtoint ptr %mii_status.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mii_status.i, align 8
  %32 = and i32 %31, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %.not.i = icmp eq i32 %32, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  tail call void @arm_heavy_mb() #15
  %TESTCFG.i = getelementptr inbounds %struct.mac_regs, ptr %21, i32 0, i32 76
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %TESTCFG.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  br i1 %.not.i, label %do.body74.i, label %do.body90.i

do.body74.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #17
  %34 = and i8 %33, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TESTCFG.i, i8 %34) #15, !srcloc !272
  br label %if.end105.i

do.body90.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #17
  %35 = or i8 %33, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TESTCFG.i, i8 %35) #15, !srcloc !272
  br label %if.end105.i

if.end105.i:                                      ; preds = %do.body90.i, %do.body74.i
  %36 = ptrtoint ptr %rev_id.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %rev_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %37)
  %cmp.i.i = icmp ugt i8 %37, 15
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end105.i.if.end106.i_crit_edge

if.end105.i.if.end106.i_crit_edge:                ; preds = %if.end105.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end106.i

if.then.i.i:                                      ; preds = %if.end105.i
  %38 = ptrtoint ptr %mii_status.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mii_status.i, align 8
  %and.i.i = and i32 %39, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i.do.body.i.i_crit_edge, label %if.then2.i.i

if.then.i.i.do.body.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %txqueue_timer3.i.i = getelementptr i8, ptr %dev_instance, i32 3160
  %40 = ptrtoint ptr %txqueue_timer3.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %txqueue_timer3.i.i, align 4
  %conv4.i.i = trunc i32 %41 to i8
  %rxqueue_timer6.i.i = getelementptr i8, ptr %dev_instance, i32 3156
  %42 = ptrtoint ptr %rxqueue_timer6.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rxqueue_timer6.i.i, align 4
  %conv7.i.i = trunc i32 %43 to i8
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.then2.i.i, %if.then.i.i.do.body.i.i_crit_edge
  %txqueue_timer.0.i.i = phi i8 [ %conv4.i.i, %if.then2.i.i ], [ 0, %if.then.i.i.do.body.i.i_crit_edge ]
  %rxqueue_timer.0.i.i = phi i8 [ %conv7.i.i, %if.then2.i.i ], [ 0, %if.then.i.i.do.body.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !369
  tail call void @arm_heavy_mb() #15
  %44 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mac_regs, align 8
  %TQETMR.i.i = getelementptr inbounds %struct.mac_regs, ptr %45, i32 0, i32 23
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TQETMR.i.i, i8 %txqueue_timer.0.i.i) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !370
  tail call void @arm_heavy_mb() #15
  %46 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mac_regs, align 8
  %RQETMR.i.i = getelementptr inbounds %struct.mac_regs, ptr %47, i32 0, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %RQETMR.i.i, i8 %rxqueue_timer.0.i.i) #15, !srcloc !272
  br label %if.end106.i

if.end106.i:                                      ; preds = %do.body.i.i, %if.end105.i.if.end106.i_crit_edge, %if.then19.i.if.end106.i_crit_edge
  %PHYSR0.i = getelementptr inbounds %struct.mac_regs, ptr %21, i32 0, i32 39
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PHYSR0.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !371
  %49 = and i8 %48, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool114.not.i = icmp eq i8 %49, 0
  %mii_status120.i = getelementptr i8, ptr %dev_instance, i32 3184
  %50 = ptrtoint ptr %mii_status120.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mii_status120.i, align 8
  br i1 %tobool114.not.i, label %if.else119.i, label %if.then115.i

if.then115.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #17
  %and117.i = and i32 %51, -2
  %52 = ptrtoint ptr %mii_status120.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and117.i, ptr %mii_status120.i, align 8
  %netdev118.i = getelementptr i8, ptr %dev_instance, i32 2312
  %53 = ptrtoint ptr %netdev118.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %netdev118.i, align 8
  tail call void @netif_carrier_on(ptr noundef %54) #15
  br label %if.end123.i

if.else119.i:                                     ; preds = %if.end106.i
  call void @__sanitizer_cov_trace_pc() #17
  %or121.i = or i32 %51, 1
  %55 = ptrtoint ptr %mii_status120.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or121.i, ptr %mii_status120.i, align 8
  %netdev122.i = getelementptr i8, ptr %dev_instance, i32 2312
  %56 = ptrtoint ptr %netdev122.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %netdev122.i, align 8
  tail call void @netif_carrier_off(ptr noundef %57) #15
  br label %if.end123.i

if.end123.i:                                      ; preds = %if.else119.i, %if.then115.i
  %58 = ptrtoint ptr %mii_status120.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mii_status120.i, align 8
  %and.i183.i = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i183.i)
  %tobool.not.i184.i = icmp eq i32 %and.i183.i, 0
  br i1 %tobool.not.i184.i, label %if.end.i.i, label %if.then.i185.i

if.then.i185.i:                                   ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #17
  %netdev.i.i = getelementptr i8, ptr %dev_instance, i32 2312
  %60 = ptrtoint ptr %netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %netdev.i.i, align 8
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %61, ptr noundef nonnull @.str.11) #19
  br label %velocity_print_link_status.exit.i

if.end.i.i:                                       ; preds = %if.end123.i
  %62 = ptrtoint ptr %spd_dpx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %spd_dpx.i, align 4
  %64 = zext i32 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %63, label %sw.default.i.i [
    i32 0, label %if.then1.i.i
    i32 5, label %if.end.i.i.if.end26.i.i_crit_edge
    i32 1, label %sw.bb22.i.i
    i32 2, label %sw.bb23.i.i
    i32 3, label %sw.bb24.i.i
    i32 4, label %sw.bb25.i.i
  ]

if.end.i.i.if.end26.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %and3.i.i = and i32 %59, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  %and7.i.i = and i32 %59, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  %.str.15..str.14.i.i = select i1 %tobool8.not.i.i, ptr @.str.15, ptr @.str.14
  %speed.0.i.i = select i1 %tobool4.not.i.i, ptr %.str.15..str.14.i.i, ptr @.str.13
  %and14.i.i = and i32 %59, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i.i)
  %tobool15.not.i.i = icmp eq i32 %and14.i.i, 0
  %spec.select.i.i = select i1 %tobool15.not.i.i, ptr @.str.17, ptr @.str.16
  br label %if.end26.i.i

sw.bb22.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i.i

sw.bb23.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i.i

sw.bb24.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i.i

sw.bb25.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i.i

sw.default.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %sw.default.i.i, %sw.bb25.i.i, %sw.bb24.i.i, %sw.bb23.i.i, %sw.bb22.i.i, %if.then1.i.i, %if.end.i.i.if.end26.i.i_crit_edge
  %link.0.i.i = phi ptr [ @.str.18, %sw.default.i.i ], [ @.str.18, %sw.bb25.i.i ], [ @.str.18, %sw.bb24.i.i ], [ @.str.18, %sw.bb23.i.i ], [ @.str.18, %sw.bb22.i.i ], [ @.str.18, %if.end.i.i.if.end26.i.i_crit_edge ], [ @.str.12, %if.then1.i.i ]
  %speed.1.i.i = phi ptr [ @.str.19, %sw.default.i.i ], [ @.str.15, %sw.bb25.i.i ], [ @.str.15, %sw.bb24.i.i ], [ @.str.14, %sw.bb23.i.i ], [ @.str.14, %sw.bb22.i.i ], [ @.str.13, %if.end.i.i.if.end26.i.i_crit_edge ], [ %speed.0.i.i, %if.then1.i.i ]
  %duplex.0.i.i = phi ptr [ @.str.19, %sw.default.i.i ], [ @.str.16, %sw.bb25.i.i ], [ @.str.17, %sw.bb24.i.i ], [ @.str.16, %sw.bb23.i.i ], [ @.str.17, %sw.bb22.i.i ], [ @.str.16, %if.end.i.i.if.end26.i.i_crit_edge ], [ %spec.select.i.i, %if.then1.i.i ]
  %netdev27.i.i = getelementptr i8, ptr %dev_instance, i32 2312
  %65 = ptrtoint ptr %netdev27.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %netdev27.i.i, align 8
  tail call void (ptr, ptr, ...) @netdev_notice(ptr noundef %66, ptr noundef nonnull @.str.20, ptr noundef nonnull %link.0.i.i, ptr noundef nonnull %speed.1.i.i, ptr noundef nonnull %duplex.0.i.i) #19
  br label %velocity_print_link_status.exit.i

velocity_print_link_status.exit.i:                ; preds = %if.end26.i.i, %if.then.i185.i
  tail call fastcc void @enable_flow_control_ability(ptr noundef %add.ptr.i) #15
  tail call fastcc void @enable_mii_autopoll(ptr noundef %21) #15
  %67 = ptrtoint ptr %mii_status120.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %mii_status120.i, align 8
  %and125.i = and i32 %68, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125.i)
  %tobool126.not.i = icmp eq i32 %and125.i, 0
  %netdev130.i = getelementptr i8, ptr %dev_instance, i32 2312
  %69 = ptrtoint ptr %netdev130.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %netdev130.i, align 8
  %_tx.i.i188.i = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 103
  %71 = ptrtoint ptr %_tx.i.i188.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %_tx.i.i188.i, align 128
  br i1 %tobool126.not.i, label %if.else129.i, label %if.then127.i

if.then127.i:                                     ; preds = %velocity_print_link_status.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %state.i.i187.i = getelementptr inbounds %struct.netdev_queue, ptr %72, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i187.i) #15
  br label %if.end132.i

if.else129.i:                                     ; preds = %velocity_print_link_status.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netif_tx_wake_queue(ptr noundef %72) #15
  br label %if.end132.i

if.end132.i:                                      ; preds = %if.else129.i, %if.then127.i, %if.end.i.if.end132.i_crit_edge
  %and133.i = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.i)
  %tobool134.not.i = icmp eq i32 %and133.i, 0
  br i1 %tobool134.not.i, label %if.end132.i.if.end136.i_crit_edge, label %if.then135.i

if.end132.i.if.end136.i_crit_edge:                ; preds = %if.end132.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end136.i

if.then135.i:                                     ; preds = %if.end132.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !305
  tail call void @arm_heavy_mb() #15
  %73 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %mac_regs, align 8
  %MIBCR.i.i = getelementptr inbounds %struct.mac_regs, ptr %74, i32 0, i32 56
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIBCR.i.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !306
  %76 = or i8 %75, 4
  %77 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mac_regs, align 8
  %MIBCR6.i.i = getelementptr inbounds %struct.mac_regs, ptr %78, i32 0, i32 56
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIBCR6.i.i, i8 %76) #15, !srcloc !272
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %if.then135.i
  %79 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mac_regs, align 8
  %MIBCR12.i.i = getelementptr inbounds %struct.mac_regs, ptr %80, i32 0, i32 56
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIBCR12.i.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !307
  %82 = and i8 %81, 4
  %tobool.not.i190.i = icmp eq i8 %82, 0
  br i1 %tobool.not.i190.i, label %do.body18.i.i, label %while.cond.i.i.while.cond.i.i_crit_edge

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i.i

do.body18.i.i:                                    ; preds = %while.cond.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !308
  tail call void @arm_heavy_mb() #15
  %83 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mac_regs, align 8
  %MIBCR24.i.i = getelementptr inbounds %struct.mac_regs, ptr %84, i32 0, i32 56
  %85 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIBCR24.i.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !309
  %86 = or i8 %85, 2
  %87 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mac_regs, align 8
  %MIBCR32.i.i = getelementptr inbounds %struct.mac_regs, ptr %88, i32 0, i32 56
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIBCR32.i.i, i8 %86) #15, !srcloc !272
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.body18.i.i
  %i.051.i.i = phi i32 [ 0, %do.body18.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %89 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %mac_regs, align 8
  %MIBData.i.i = getelementptr inbounds %struct.mac_regs, ptr %90, i32 0, i32 60
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MIBData.i.i) #15, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !311
  %92 = and i32 %91, -256
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #15
  %arrayidx.i.i = getelementptr %struct.velocity_info, ptr %add.ptr.i, i32 0, i32 12, i32 %i.051.i.i
  %94 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %95, %93
  store i32 %add.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.051.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 32
  br i1 %exitcond.not.i.i, label %for.body.i.i.if.end136.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body.i.i.if.end136.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end136.i

if.end136.i:                                      ; preds = %for.body.i.i.if.end136.i_crit_edge, %if.end132.i.if.end136.i_crit_edge
  %and137.i = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137.i)
  %tobool138.not.i = icmp eq i32 %and137.i, 0
  br i1 %tobool138.not.i, label %if.end136.i.cleanup_crit_edge, label %do.body140.i

if.end136.i.cleanup_crit_edge:                    ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.body140.i:                                     ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !372
  tail call void @arm_heavy_mb() #15
  %96 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mac_regs, align 8
  %RDCSRSet.i = getelementptr inbounds %struct.mac_regs, ptr %97, i32 0, i32 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %RDCSRSet.i, i8 4) #15, !srcloc !272
  br label %cleanup

cleanup:                                          ; preds = %do.body140.i, %if.end136.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %do.body140.i ], [ 1, %if.end136.i.cleanup_crit_edge ], [ 1, %if.end14.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @velocity_free_rings(ptr nocapture noundef %vptr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tx.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 10
  %0 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp31.i = icmp sgt i32 %1, 0
  br i1 %cmp31.i, label %for.body.lr.ph.i, label %entry.velocity_free_td_ring.exit_crit_edge

entry.velocity_free_td_ring.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_free_td_ring.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %numtx.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc12.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.032.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc13.i, %for.inc12.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.velocity_info, ptr %vptr, i32 0, i32 10, i32 5, i32 %j.032.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.i = icmp eq ptr %3, null
  br i1 %cmp2.i, label %for.body.i.for.inc12.i_crit_edge, label %for.cond3.preheader.i

for.body.i.for.inc12.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc12.i

for.cond3.preheader.i:                            ; preds = %for.body.i
  %4 = ptrtoint ptr %numtx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %numtx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp427.i = icmp sgt i32 %5, 0
  br i1 %cmp427.i, label %for.cond3.preheader.i.for.body5.i_crit_edge, label %for.cond3.preheader.i.for.end.i_crit_edge

for.cond3.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.cond3.preheader.i.for.body5.i_crit_edge:      ; preds = %for.cond3.preheader.i
  br label %for.body5.i

for.body5.i:                                      ; preds = %velocity_free_td_ring_entry.exit.i.for.body5.i_crit_edge, %for.cond3.preheader.i.for.body5.i_crit_edge
  %i.028.i = phi i32 [ %inc.i, %velocity_free_td_ring_entry.exit.i.for.body5.i_crit_edge ], [ 0, %for.cond3.preheader.i.for.body5.i_crit_edge ]
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i.i = getelementptr %struct.velocity_td_info, ptr %7, i32 %i.028.i
  %cmp.i.i = icmp eq ptr %arrayidx1.i.i, null
  br i1 %cmp.i.i, label %for.body5.i.velocity_free_td_ring_entry.exit.i_crit_edge, label %if.end.i.i

for.body5.i.velocity_free_td_ring_entry.exit.i_crit_edge: ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_free_td_ring_entry.exit.i

if.end.i.i:                                       ; preds = %for.body5.i
  %8 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i.velocity_free_td_ring_entry.exit.i_crit_edge, label %for.cond.preheader.i.i

if.end.i.i.velocity_free_td_ring_entry.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_free_td_ring_entry.exit.i

for.cond.preheader.i.i:                           ; preds = %if.end.i.i
  %nskb_dma.i.i = getelementptr %struct.velocity_td_info, ptr %7, i32 %i.028.i, i32 1
  %10 = ptrtoint ptr %nskb_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nskb_dma.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp330.i.i = icmp sgt i32 %11, 0
  br i1 %cmp330.i.i, label %for.cond.preheader.i.i.for.body.i.i_crit_edge, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.031.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %arrayidx4.i.i = getelementptr %struct.velocity_td_info, ptr %7, i32 %i.028.i, i32 2, i32 %i.031.i.i
  %12 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not.i.i = icmp eq i32 %13, 0
  br i1 %tobool5.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then6.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.then6.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %14 = ptrtoint ptr %vptr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vptr, align 8
  %16 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx1.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len.i.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %15, i32 noundef %13, i32 noundef %19, i32 noundef 1, i32 noundef 0) #15
  %20 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx4.i.i, align 4
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.then6.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.031.i.i, 1
  %21 = ptrtoint ptr %nskb_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nskb_dma.i.i, align 4
  %cmp3.i.i = icmp slt i32 %inc.i.i, %22
  br i1 %cmp3.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %23 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx1.i.i, align 4
  tail call void @consume_skb(ptr noundef %24) #15
  %25 = ptrtoint ptr %arrayidx1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %arrayidx1.i.i, align 4
  br label %velocity_free_td_ring_entry.exit.i

velocity_free_td_ring_entry.exit.i:               ; preds = %for.end.i.i, %if.end.i.i.velocity_free_td_ring_entry.exit.i_crit_edge, %for.body5.i.velocity_free_td_ring_entry.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.028.i, 1
  %26 = ptrtoint ptr %numtx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %numtx.i, align 4
  %cmp4.i = icmp slt i32 %inc.i, %27
  br i1 %cmp4.i, label %velocity_free_td_ring_entry.exit.i.for.body5.i_crit_edge, label %velocity_free_td_ring_entry.exit.i.for.end.i_crit_edge

velocity_free_td_ring_entry.exit.i.for.end.i_crit_edge: ; preds = %velocity_free_td_ring_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

velocity_free_td_ring_entry.exit.i.for.body5.i_crit_edge: ; preds = %velocity_free_td_ring_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body5.i

for.end.i:                                        ; preds = %velocity_free_td_ring_entry.exit.i.for.end.i_crit_edge, %for.cond3.preheader.i.for.end.i_crit_edge
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %29) #15
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc12.i

for.inc12.i:                                      ; preds = %for.end.i, %for.body.i.for.inc12.i_crit_edge
  %inc13.i = add nuw nsw i32 %j.032.i, 1
  %31 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx.i, align 4
  %cmp.i = icmp slt i32 %inc13.i, %32
  br i1 %cmp.i, label %for.inc12.i.for.body.i_crit_edge, label %for.inc12.i.velocity_free_td_ring.exit_crit_edge

for.inc12.i.velocity_free_td_ring.exit_crit_edge: ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_free_td_ring.exit

for.inc12.i.for.body.i_crit_edge:                 ; preds = %for.inc12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

velocity_free_td_ring.exit:                       ; preds = %for.inc12.i.velocity_free_td_ring.exit_crit_edge, %entry.velocity_free_td_ring.exit_crit_edge
  tail call fastcc void @velocity_free_rd_ring(ptr noundef %vptr)
  %options.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13
  %33 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %options.i, align 4
  %mul.i = shl i32 %34, 4
  %numtx.i3 = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13, i32 1
  %35 = ptrtoint ptr %numtx.i3 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %numtx.i3, align 4
  %mul2.i = shl i32 %36, 6
  %37 = ptrtoint ptr %tx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tx.i, align 4
  %mul3.i = mul i32 %mul2.i, %38
  %add.i = add i32 %mul3.i, %mul.i
  %39 = ptrtoint ptr %vptr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vptr, align 8
  %ring.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 4
  %41 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ring.i, align 8
  %pool_dma.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 6
  %43 = ptrtoint ptr %pool_dma.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pool_dma.i, align 8
  tail call void @dma_free_attrs(ptr noundef %40, i32 noundef %add.i, ptr noundef %42, i32 noundef %44, i32 noundef 0) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @velocity_free_rd_ring(ptr nocapture noundef %vptr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rx = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11
  %info = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 5
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup16_crit_edge, label %for.cond.preheader

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup16

for.cond.preheader:                               ; preds = %entry
  %options = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13
  %2 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %options, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp133 = icmp sgt i32 %3, 0
  br i1 %cmp133, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ring = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.034 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %arrayidx = getelementptr %struct.velocity_rd_info, ptr %5, i32 %i.034
  %6 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring, align 8
  %add.ptr = getelementptr %struct.rx_desc, ptr %7, i32 %i.034
  %8 = call ptr @memset(ptr %add.ptr, i32 0, i32 16)
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %vptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vptr, align 8
  %skb_dma = getelementptr %struct.velocity_rd_info, ptr %5, i32 %i.034, i32 1
  %13 = ptrtoint ptr %skb_dma to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %skb_dma, align 4
  %15 = ptrtoint ptr %rx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %12, i32 noundef %14, i32 noundef %16, i32 noundef 2, i32 noundef 0) #15
  %17 = ptrtoint ptr %skb_dma to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %skb_dma, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  tail call void @consume_skb(ptr noundef %19) #15
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.034, 1
  %21 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %options, align 4
  %cmp1 = icmp slt i32 %inc, %22
  br i1 %cmp1, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %23 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %info, align 4
  tail call void @kfree(ptr noundef %24) #15
  %25 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %info, align 4
  br label %cleanup16

cleanup16:                                        ; preds = %for.end, %entry.cleanup16_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @velocity_rx_refill(ptr nocapture noundef %vptr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dirty1 = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %dirty1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dirty1, align 4
  %rx.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11
  %netdev.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 2
  %ring = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 4
  %info = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 5
  %options = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13
  %curr = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 2
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  %done.0 = phi i32 [ 0, %entry ], [ %inc, %do.cond.do.body_crit_edge ]
  %dirty.0 = phi i32 [ %1, %entry ], [ %spec.select, %do.cond.do.body_crit_edge ]
  %2 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ring, align 8
  %len = getelementptr %struct.rx_desc, ptr %3, i32 %dirty.0, i32 0, i32 1
  %4 = ptrtoint ptr %len to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %len, align 1
  %6 = and i16 %5, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %if.end, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end:                                           ; preds = %do.body
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 4
  %arrayidx = getelementptr %struct.velocity_rd_info, ptr %8, i32 %dirty.0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %if.then5, label %if.end.do.cond_crit_edge

if.end.do.cond_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.cond

if.then5:                                         ; preds = %if.end
  %11 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev.i, align 8
  %13 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx.i, align 8
  %add.i = add i32 %14, 64
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %12, i32 noundef %add.i, i32 noundef 2592) #15
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i.i, ptr %arrayidx, align 4
  %cmp.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i, label %if.then5.do.end_crit_edge, label %if.end.i

if.then5.do.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.end.i:                                         ; preds = %if.then5
  %arrayidx.i = getelementptr %struct.rx_desc, ptr %3, i32 %dirty.0
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %18 = ptrtoint ptr %17 to i32
  %and.i = and i32 %18, 63
  %sub.i = sub nuw nsw i32 64, %and.i
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %sub.i
  store ptr %add.ptr.i.i, ptr %data.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %19 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %20, i32 %sub.i
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %21 = ptrtoint ptr %vptr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vptr, align 8
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %data8.i = getelementptr inbounds %struct.sk_buff, ptr %24, i32 0, i32 19
  %25 = ptrtoint ptr %data8.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %data8.i, align 4
  %27 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx.i, align 8
  %call.i34.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %26) #15
  br i1 %call.i34.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.velocity_alloc_rx_buf.exit_crit_edge, label %if.then.i.i, !prof !278

land.rhs.i.i.velocity_alloc_rx_buf.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_alloc_rx_buf.exit

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %22) #15
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %22, i32 0, i32 3
  %29 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %22, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %32, %if.end.i.i.i ], [ %30, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.7, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #15
  br label %velocity_alloc_rx_buf.exit

if.end39.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @debug_dma_map_single(ptr noundef %22, ptr noundef %26, i32 noundef %28) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %33 = load ptr, ptr @mem_map, align 4
  %34 = ptrtoint ptr %26 to i32
  %sub.i.i = add i32 %34, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i35.i = getelementptr %struct.page, ptr %33, i32 %shr.i.i
  %and.i.i = and i32 %34, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %22, ptr noundef %add.ptr.i35.i, i32 noundef %and.i.i, i32 noundef %28, i32 noundef 2, i32 noundef 0) #15
  br label %velocity_alloc_rx_buf.exit

velocity_alloc_rx_buf.exit:                       ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.velocity_alloc_rx_buf.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.velocity_alloc_rx_buf.exit_crit_edge ]
  %skb_dma.i = getelementptr %struct.velocity_rd_info, ptr %8, i32 %dirty.0, i32 1
  %35 = ptrtoint ptr %skb_dma.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %retval.0.i.i, ptr %skb_dma.i, align 4
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_storeN_noabort(i32 %36, i32 4)
  store i32 0, ptr %arrayidx.i, align 1
  %37 = ptrtoint ptr %rx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rx.i, align 8
  %conv.i = trunc i32 %38 to i16
  %39 = or i16 %conv.i, -32768
  %40 = tail call i16 @llvm.bswap.i16(i16 %39) #15
  %size.i = getelementptr %struct.rx_desc, ptr %3, i32 %dirty.0, i32 4
  %41 = ptrtoint ptr %size.i to i32
  call void @__asan_storeN_noabort(i32 %41, i32 2)
  store i16 %40, ptr %size.i, align 1
  %42 = ptrtoint ptr %skb_dma.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %skb_dma.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #15
  %pa_low.i = getelementptr %struct.rx_desc, ptr %3, i32 %dirty.0, i32 2
  %45 = ptrtoint ptr %pa_low.i to i32
  call void @__asan_storeN_noabort(i32 %45, i32 4)
  store i32 %44, ptr %pa_low.i, align 1
  %pa_high.i = getelementptr %struct.rx_desc, ptr %3, i32 %dirty.0, i32 3
  %46 = ptrtoint ptr %pa_high.i to i32
  call void @__asan_storeN_noabort(i32 %46, i32 2)
  store i16 0, ptr %pa_high.i, align 1
  br label %do.cond

do.cond:                                          ; preds = %velocity_alloc_rx_buf.exit, %if.end.do.cond_crit_edge
  %inc = add i32 %done.0, 1
  %47 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %options, align 4
  %sub = add i32 %48, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %dirty.0, i32 %sub)
  %cmp10 = icmp slt i32 %dirty.0, %sub
  %add = add i32 %dirty.0, 1
  %spec.select = select i1 %cmp10, i32 %add, i32 0
  %49 = ptrtoint ptr %curr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %curr, align 8
  %cmp13.not = icmp eq i32 %spec.select, %50
  br i1 %cmp13.not, label %do.cond.do.end_crit_edge, label %do.cond.do.body_crit_edge

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %if.then5.do.end_crit_edge, %do.body.do.end_crit_edge
  %dirty.147 = phi i32 [ %spec.select, %do.cond.do.end_crit_edge ], [ %dirty.0, %do.body.do.end_crit_edge ], [ %dirty.0, %if.then5.do.end_crit_edge ]
  %done.146 = phi i32 [ %inc, %do.cond.do.end_crit_edge ], [ %done.0, %do.body.do.end_crit_edge ], [ %done.0, %if.then5.do.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %done.146)
  %tobool15.not = icmp eq i32 %done.146, 0
  br i1 %tobool15.not, label %do.end.if.end21_crit_edge, label %if.then16

do.end.if.end21_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then16:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %dirty1 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %dirty.147, ptr %dirty1, align 4
  %filled = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 11, i32 3
  %52 = ptrtoint ptr %filled to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %filled, align 4
  %add20 = add i32 %53, %done.146
  store i32 %add20, ptr %filled, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then16, %do.end.if.end21_crit_edge
  ret i32 %done.146
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mac_wol_reset(ptr noundef %regs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !373
  tail call void @arm_heavy_mb() #15
  %STICKHW = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 55
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %STICKHW) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !374
  %1 = and i8 %0, -17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %STICKHW, i8 %1) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !375
  tail call void @arm_heavy_mb() #15
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %STICKHW) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !376
  %3 = and i8 %2, -4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %STICKHW, i8 %3) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !377
  tail call void @arm_heavy_mb() #15
  %CHIPGCR = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 78
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CHIPGCR) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !378
  %5 = and i8 %4, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CHIPGCR, i8 %5) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !379
  tail call void @arm_heavy_mb() #15
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CHIPGCR) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !380
  %7 = and i8 %6, -17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CHIPGCR, i8 %7) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !381
  tail call void @arm_heavy_mb() #15
  %WOLCFGClr = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 84
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %WOLCFGClr, i8 -128) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !382
  tail call void @arm_heavy_mb() #15
  %WOLCRClr = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 82
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %WOLCRClr, i16 -1) #15, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !383
  tail call void @arm_heavy_mb() #15
  %WOLSRClr = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 87
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %WOLSRClr, i16 -1) #15, !srcloc !275
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @velocity_set_media_mode(ptr nocapture noundef %vptr, i32 noundef %mii_status) unnamed_addr #2 align 64 {
entry:
  %w.i1 = alloca i16, align 2
  %w5.i = alloca i16, align 2
  %w15.i = alloca i16, align 2
  %w25.i = alloca i16, align 2
  %w36.i = alloca i16, align 2
  %w46.i = alloca i16, align 2
  %w57.i = alloca i16, align 2
  %w67.i = alloca i16, align 2
  %ANAR.i = alloca i16, align 2
  %w.i = alloca i16, align 2
  %w1.i = alloca i16, align 2
  %w9.i = alloca i16, align 2
  %w43.i = alloca i16, align 2
  %w55.i = alloca i16, align 2
  %w = alloca i16, align 2
  %w23 = alloca i16, align 2
  %w34 = alloca i16, align 2
  %w45 = alloca i16, align 2
  %CTRL1000 = alloca i16, align 2
  %ANAR = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 7
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ANAR.i) #15
  %2 = ptrtoint ptr %ANAR.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %ANAR.i, align 2, !annotation !312
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w.i) #15
  %3 = ptrtoint ptr %w.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 -1, ptr %w.i, align 2, !annotation !312
  %call.i = call fastcc i32 @velocity_mii_read(ptr noundef %1, i8 noundef zeroext 1, ptr noundef nonnull %w.i) #15
  %4 = ptrtoint ptr %w.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %w.i, align 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w.i) #15
  %6 = lshr i16 %5, 2
  %.lobit.i = and i16 %6, 1
  %7 = xor i16 %.lobit.i, 1
  %8 = zext i16 %7 to i32
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w1.i) #15
  %9 = ptrtoint ptr %w1.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %w1.i, align 2, !annotation !312
  %call2.i = call fastcc i32 @velocity_mii_read(ptr noundef %1, i8 noundef zeroext 9, ptr noundef nonnull %w1.i) #15
  %10 = ptrtoint ptr %w1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %w1.i, align 2
  %12 = and i16 %11, 512
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w1.i) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool6.not.i = icmp eq i16 %12, 0
  br i1 %tobool6.not.i, label %if.else.i, label %entry.if.end42.i_crit_edge

entry.if.end42.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i

if.else.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w9.i) #15
  %13 = ptrtoint ptr %w9.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %w9.i, align 2, !annotation !312
  %call10.i = call fastcc i32 @velocity_mii_read(ptr noundef %1, i8 noundef zeroext 9, ptr noundef nonnull %w9.i) #15
  %14 = ptrtoint ptr %w9.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %w9.i, align 2
  %16 = and i16 %15, 256
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w9.i) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %tobool14.not.i = icmp eq i16 %16, 0
  br i1 %tobool14.not.i, label %if.else17.i, label %if.else.i.if.end42.i_crit_edge

if.else.i.if.end42.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i

if.else17.i:                                      ; preds = %if.else.i
  %call18.i = call fastcc i32 @velocity_mii_read(ptr noundef %1, i8 noundef zeroext 4, ptr noundef nonnull %ANAR.i) #15
  %17 = ptrtoint ptr %ANAR.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %ANAR.i, align 2
  %conv19.i = zext i16 %18 to i32
  %and20.i = and i32 %conv19.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.else24.i, label %if.else17.i.if.end42.i_crit_edge

if.else17.i.if.end42.i_crit_edge:                 ; preds = %if.else17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i

if.else24.i:                                      ; preds = %if.else17.i
  %and26.i = and i32 %conv19.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %if.else30.i, label %if.else24.i.if.end42.i_crit_edge

if.else24.i.if.end42.i_crit_edge:                 ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i

if.else30.i:                                      ; preds = %if.else24.i
  call void @__sanitizer_cov_trace_pc() #17
  %and32.i = and i32 %conv19.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  %..i = select i1 %tobool33.not.i, i32 2, i32 18
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.else30.i, %if.else24.i.if.end42.i_crit_edge, %if.else17.i.if.end42.i_crit_edge, %if.else.i.if.end42.i_crit_edge, %entry.if.end42.i_crit_edge
  %.sink.i = phi i32 [ 24, %entry.if.end42.i_crit_edge ], [ 8, %if.else.i.if.end42.i_crit_edge ], [ 20, %if.else17.i.if.end42.i_crit_edge ], [ 4, %if.else24.i.if.end42.i_crit_edge ], [ %..i, %if.else30.i ]
  %or16.i = or i32 %.sink.i, %8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w43.i) #15
  %19 = ptrtoint ptr %w43.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %w43.i, align 2, !annotation !312
  %call44.i = call fastcc i32 @velocity_mii_read(ptr noundef %1, i8 noundef zeroext 0, ptr noundef nonnull %w43.i) #15
  %20 = ptrtoint ptr %w43.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %w43.i, align 2
  %22 = and i16 %21, 4096
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w43.i) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool48.not.i = icmp eq i16 %22, 0
  br i1 %tobool48.not.i, label %if.end42.i.mii_check_media_mode.exit_crit_edge, label %if.then49.i

if.end42.i.mii_check_media_mode.exit_crit_edge:   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mii_check_media_mode.exit

if.then49.i:                                      ; preds = %if.end42.i
  %call50.i = call fastcc i32 @velocity_mii_read(ptr noundef %1, i8 noundef zeroext 4, ptr noundef nonnull %ANAR.i) #15
  %23 = ptrtoint ptr %ANAR.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %ANAR.i, align 2
  %25 = and i16 %24, 480
  call void @__sanitizer_cov_trace_const_cmp2(i16 480, i16 %25)
  %cmp.i = icmp eq i16 %25, 480
  br i1 %cmp.i, label %if.then54.i, label %if.then49.i.mii_check_media_mode.exit_crit_edge

if.then49.i.mii_check_media_mode.exit_crit_edge:  ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %mii_check_media_mode.exit

if.then54.i:                                      ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w55.i) #15
  %26 = ptrtoint ptr %w55.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 -1, ptr %w55.i, align 2, !annotation !312
  %call56.i = call fastcc i32 @velocity_mii_read(ptr noundef %1, i8 noundef zeroext 9, ptr noundef nonnull %w55.i) #15
  %27 = ptrtoint ptr %w55.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %w55.i, align 2
  %29 = and i16 %28, 768
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w55.i) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %29)
  %tobool60.not.i = icmp eq i16 %29, 0
  %or62.i = or i32 %or16.i, 32
  %spec.select80.i = select i1 %tobool60.not.i, i32 %or16.i, i32 %or62.i
  br label %mii_check_media_mode.exit

mii_check_media_mode.exit:                        ; preds = %if.then54.i, %if.then49.i.mii_check_media_mode.exit_crit_edge, %if.end42.i.mii_check_media_mode.exit_crit_edge
  %status.2.i = phi i32 [ %or16.i, %if.then49.i.mii_check_media_mode.exit_crit_edge ], [ %or16.i, %if.end42.i.mii_check_media_mode.exit_crit_edge ], [ %spec.select80.i, %if.then54.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ANAR.i) #15
  %mii_status2 = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 16
  %30 = ptrtoint ptr %mii_status2 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %status.2.i, ptr %mii_status2, align 8
  %flow_cntl.i = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13, i32 5
  %31 = ptrtoint ptr %flow_cntl.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flow_cntl.i, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %32, label %mii_check_media_mode.exit.set_mii_flow_control.exit_crit_edge [
    i32 2, label %do.body.i
    i32 3, label %do.body14.i
    i32 4, label %do.body35.i
    i32 5, label %do.body56.i
  ]

mii_check_media_mode.exit.set_mii_flow_control.exit_crit_edge: ; preds = %mii_check_media_mode.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %set_mii_flow_control.exit

do.body.i:                                        ; preds = %mii_check_media_mode.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w.i1) #15
  %34 = ptrtoint ptr %w.i1 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 -1, ptr %w.i1, align 2, !annotation !312
  %35 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mac_regs, align 8
  %call.i2 = call fastcc i32 @velocity_mii_read(ptr noundef %36, i8 noundef zeroext 4, ptr noundef nonnull %w.i1) #15
  %37 = ptrtoint ptr %w.i1 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %w.i1, align 2
  %39 = and i16 %38, -1025
  %40 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mac_regs, align 8
  %call3.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %41, i8 noundef zeroext 4, i16 noundef zeroext %39) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w.i1) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w5.i) #15
  %42 = ptrtoint ptr %w5.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 -1, ptr %w5.i, align 2, !annotation !312
  %43 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mac_regs, align 8
  %call7.i = call fastcc i32 @velocity_mii_read(ptr noundef %44, i8 noundef zeroext 4, ptr noundef nonnull %w5.i) #15
  %45 = ptrtoint ptr %w5.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %w5.i, align 2
  %47 = or i16 %46, 2048
  %48 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mac_regs, align 8
  %call11.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %49, i8 noundef zeroext 4, i16 noundef zeroext %47) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w5.i) #15
  br label %set_mii_flow_control.exit

do.body14.i:                                      ; preds = %mii_check_media_mode.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w15.i) #15
  %50 = ptrtoint ptr %w15.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 -1, ptr %w15.i, align 2, !annotation !312
  %51 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mac_regs, align 8
  %call17.i = call fastcc i32 @velocity_mii_read(ptr noundef %52, i8 noundef zeroext 4, ptr noundef nonnull %w15.i) #15
  %53 = ptrtoint ptr %w15.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %w15.i, align 2
  %55 = or i16 %54, 1024
  %56 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mac_regs, align 8
  %call22.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %57, i8 noundef zeroext 4, i16 noundef zeroext %55) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w15.i) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w25.i) #15
  %58 = ptrtoint ptr %w25.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 -1, ptr %w25.i, align 2, !annotation !312
  %59 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mac_regs, align 8
  %call27.i = call fastcc i32 @velocity_mii_read(ptr noundef %60, i8 noundef zeroext 4, ptr noundef nonnull %w25.i) #15
  %61 = ptrtoint ptr %w25.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %w25.i, align 2
  %63 = or i16 %62, 2048
  %64 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mac_regs, align 8
  %call32.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %65, i8 noundef zeroext 4, i16 noundef zeroext %63) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w25.i) #15
  br label %set_mii_flow_control.exit

do.body35.i:                                      ; preds = %mii_check_media_mode.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w36.i) #15
  %66 = ptrtoint ptr %w36.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 -1, ptr %w36.i, align 2, !annotation !312
  %67 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %mac_regs, align 8
  %call38.i = call fastcc i32 @velocity_mii_read(ptr noundef %68, i8 noundef zeroext 4, ptr noundef nonnull %w36.i) #15
  %69 = ptrtoint ptr %w36.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %w36.i, align 2
  %71 = or i16 %70, 1024
  %72 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mac_regs, align 8
  %call43.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %73, i8 noundef zeroext 4, i16 noundef zeroext %71) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w36.i) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w46.i) #15
  %74 = ptrtoint ptr %w46.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 -1, ptr %w46.i, align 2, !annotation !312
  %75 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %mac_regs, align 8
  %call48.i = call fastcc i32 @velocity_mii_read(ptr noundef %76, i8 noundef zeroext 4, ptr noundef nonnull %w46.i) #15
  %77 = ptrtoint ptr %w46.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %w46.i, align 2
  %79 = and i16 %78, -2049
  %80 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %mac_regs, align 8
  %call53.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %81, i8 noundef zeroext 4, i16 noundef zeroext %79) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w46.i) #15
  br label %set_mii_flow_control.exit

do.body56.i:                                      ; preds = %mii_check_media_mode.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w57.i) #15
  %82 = ptrtoint ptr %w57.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 -1, ptr %w57.i, align 2, !annotation !312
  %83 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %mac_regs, align 8
  %call59.i = call fastcc i32 @velocity_mii_read(ptr noundef %84, i8 noundef zeroext 4, ptr noundef nonnull %w57.i) #15
  %85 = ptrtoint ptr %w57.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %w57.i, align 2
  %87 = and i16 %86, -1025
  %88 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %mac_regs, align 8
  %call64.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %89, i8 noundef zeroext 4, i16 noundef zeroext %87) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w57.i) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w67.i) #15
  %90 = ptrtoint ptr %w67.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 -1, ptr %w67.i, align 2, !annotation !312
  %91 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mac_regs, align 8
  %call69.i = call fastcc i32 @velocity_mii_read(ptr noundef %92, i8 noundef zeroext 4, ptr noundef nonnull %w67.i) #15
  %93 = ptrtoint ptr %w67.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %w67.i, align 2
  %95 = and i16 %94, -2049
  %96 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mac_regs, align 8
  %call74.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %97, i8 noundef zeroext 4, i16 noundef zeroext %95) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w67.i) #15
  br label %set_mii_flow_control.exit

set_mii_flow_control.exit:                        ; preds = %do.body56.i, %do.body35.i, %do.body14.i, %do.body.i, %mii_check_media_mode.exit.set_mii_flow_control.exit_crit_edge
  %phy_id = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 17
  %98 = ptrtoint ptr %phy_id to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %phy_id, align 4
  %and = and i32 %99, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1033232, i32 %and)
  %cmp = icmp eq i32 %and, 1033232
  br i1 %cmp, label %do.body, label %set_mii_flow_control.exit.if.end_crit_edge

set_mii_flow_control.exit.if.end_crit_edge:       ; preds = %set_mii_flow_control.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.body:                                          ; preds = %set_mii_flow_control.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w) #15
  %100 = ptrtoint ptr %w to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 -1, ptr %w, align 2, !annotation !312
  %101 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mac_regs, align 8
  %call4 = call fastcc i32 @velocity_mii_read(ptr noundef %102, i8 noundef zeroext 28, ptr noundef nonnull %w)
  %103 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %w, align 2
  %105 = or i16 %104, 4
  %106 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %mac_regs, align 8
  %call7 = tail call fastcc i32 @velocity_mii_write(ptr noundef %107, i8 noundef zeroext 28, i16 noundef zeroext %105)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w) #15
  br label %if.end

if.end:                                           ; preds = %do.body, %set_mii_flow_control.exit.if.end_crit_edge
  %and8 = and i32 %mii_status, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool.not = icmp eq i32 %and8, 0
  br i1 %tobool.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %netdev = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 2
  %108 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %netdev, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %109, ptr noundef nonnull @.str.8) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !384
  tail call void @arm_heavy_mb() #15
  %CHIPGCR = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 78
  %110 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CHIPGCR) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !385
  %111 = and i8 %110, -17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CHIPGCR, i8 %111) #15, !srcloc !272
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w23) #15
  %112 = ptrtoint ptr %w23 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 -1, ptr %w23, align 2, !annotation !312
  %113 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %mac_regs, align 8
  %call25 = call fastcc i32 @velocity_mii_read(ptr noundef %114, i8 noundef zeroext 4, ptr noundef nonnull %w23)
  %115 = ptrtoint ptr %w23 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %w23, align 2
  %117 = or i16 %116, 480
  %118 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %mac_regs, align 8
  %call30 = tail call fastcc i32 @velocity_mii_write(ptr noundef %119, i8 noundef zeroext 4, i16 noundef zeroext %117)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w23) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w34) #15
  %120 = ptrtoint ptr %w34 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 -1, ptr %w34, align 2, !annotation !312
  %121 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %mac_regs, align 8
  %call36 = call fastcc i32 @velocity_mii_read(ptr noundef %122, i8 noundef zeroext 9, ptr noundef nonnull %w34)
  %123 = ptrtoint ptr %w34 to i32
  call void @__asan_load2_noabort(i32 %123)
  %124 = load i16, ptr %w34, align 2
  %125 = or i16 %124, 768
  %126 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %mac_regs, align 8
  %call41 = tail call fastcc i32 @velocity_mii_write(ptr noundef %127, i8 noundef zeroext 9, i16 noundef zeroext %125)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w34) #15
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w45) #15
  %128 = ptrtoint ptr %w45 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 -1, ptr %w45, align 2, !annotation !312
  %129 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %mac_regs, align 8
  %call47 = call fastcc i32 @velocity_mii_read(ptr noundef %130, i8 noundef zeroext 0, ptr noundef nonnull %w45)
  %131 = ptrtoint ptr %w45 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %w45, align 2
  %133 = or i16 %132, 64
  %134 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mac_regs, align 8
  %call52 = tail call fastcc i32 @velocity_mii_write(ptr noundef %135, i8 noundef zeroext 0, i16 noundef zeroext %133)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w45) #15
  tail call fastcc void @mii_set_auto_on(ptr noundef %vptr)
  br label %if.end245

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %CTRL1000) #15
  %136 = ptrtoint ptr %CTRL1000 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 -1, ptr %CTRL1000, align 2, !annotation !312
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ANAR) #15
  %137 = ptrtoint ptr %ANAR to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 -1, ptr %ANAR, align 2, !annotation !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !386
  tail call void @arm_heavy_mb() #15
  %CHIPGCR62 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 78
  %138 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CHIPGCR62) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !387
  %139 = or i8 %138, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CHIPGCR62, i8 %139) #15, !srcloc !272
  %140 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CHIPGCR62) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !388
  %141 = and i8 %140, 127
  %142 = trunc i32 %mii_status to i8
  %143 = shl i8 %142, 4
  %144 = and i8 %143, -128
  %CHIPGCR55.0 = or i8 %141, %144
  %and89 = and i32 %mii_status, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.else120, label %if.then91

if.then91:                                        ; preds = %if.else
  %145 = or i8 %CHIPGCR55.0, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !389
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CHIPGCR62, i8 %145) #15, !srcloc !272
  %netdev99 = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 2
  %146 = ptrtoint ptr %netdev99 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %netdev99, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %147, ptr noundef nonnull @.str.9) #19
  %rev_id = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 27
  %148 = ptrtoint ptr %rev_id to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %rev_id, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %149)
  %cmp101 = icmp ult i8 %149, 16
  br i1 %cmp101, label %do.body105, label %if.then91.if.end151_crit_edge

if.then91.if.end151_crit_edge:                    ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end151

do.body105:                                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !390
  tail call void @arm_heavy_mb() #15
  %TCR = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 2
  %150 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %TCR) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !391
  %151 = and i8 %150, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TCR, i8 %151) #15, !srcloc !272
  br label %if.end151

if.else120:                                       ; preds = %if.else
  %152 = and i8 %CHIPGCR55.0, -65
  %netdev124 = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 2
  %153 = ptrtoint ptr %netdev124 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %netdev124, align 8
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %154, ptr noundef nonnull @.str.10) #19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !392
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CHIPGCR62, i8 %152) #15, !srcloc !272
  %rev_id129 = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 27
  %155 = ptrtoint ptr %rev_id129 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %rev_id129, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %156)
  %cmp131 = icmp ult i8 %156, 16
  br i1 %cmp131, label %do.body135, label %if.else120.if.end151_crit_edge

if.else120.if.end151_crit_edge:                   ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end151

do.body135:                                       ; preds = %if.else120
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !393
  tail call void @arm_heavy_mb() #15
  %TCR140 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 2
  %157 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %TCR140) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !394
  %158 = or i8 %157, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TCR140, i8 %158) #15, !srcloc !272
  br label %if.end151

if.end151:                                        ; preds = %do.body135, %if.else120.if.end151_crit_edge, %do.body105, %if.then91.if.end151_crit_edge
  %159 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %mac_regs, align 8
  %call153 = call fastcc i32 @velocity_mii_read(ptr noundef %160, i8 noundef zeroext 9, ptr noundef nonnull %CTRL1000)
  %161 = ptrtoint ptr %CTRL1000 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %CTRL1000, align 2
  %163 = and i16 %162, -769
  %164 = and i32 %mii_status, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %164)
  %.not = icmp eq i32 %164, 24
  %165 = or i16 %163, 512
  %spec.select = select i1 %.not, i16 %165, i16 %163
  %166 = ptrtoint ptr %CTRL1000 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 %spec.select, ptr %CTRL1000, align 2
  %167 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %mac_regs, align 8
  %call167 = tail call fastcc i32 @velocity_mii_write(ptr noundef %168, i8 noundef zeroext 9, i16 noundef zeroext %spec.select)
  %tobool90.not.not = xor i1 %tobool90.not, true
  %and171 = and i32 %mii_status, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171)
  %tobool172.not = icmp eq i32 %and171, 0
  %or.cond = or i1 %tobool172.not, %tobool90.not.not
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  tail call void @arm_heavy_mb() #15
  %TESTCFG196 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 76
  %169 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %TESTCFG196) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  br i1 %or.cond, label %do.body191, label %do.body175

do.body175:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #17
  %170 = and i8 %169, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TESTCFG196, i8 %170) #15, !srcloc !272
  br label %if.end206

do.body191:                                       ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #17
  %171 = or i8 %169, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TESTCFG196, i8 %171) #15, !srcloc !272
  br label %if.end206

if.end206:                                        ; preds = %do.body191, %do.body175
  %172 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %mac_regs, align 8
  %call208 = call fastcc i32 @velocity_mii_read(ptr noundef %173, i8 noundef zeroext 4, ptr noundef nonnull %ANAR)
  %174 = ptrtoint ptr %ANAR to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %ANAR, align 2
  %176 = and i16 %175, -481
  store i16 %176, ptr %ANAR, align 2
  %and212 = and i32 %mii_status, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and212)
  %tobool213.not = icmp eq i32 %and212, 0
  br i1 %tobool213.not, label %if.else226, label %if.then214

if.then214:                                       ; preds = %if.end206
  br i1 %tobool90.not, label %if.else221, label %if.then217

if.then217:                                       ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #17
  %177 = or i16 %176, 256
  %178 = ptrtoint ptr %ANAR to i32
  call void @__asan_store2_noabort(i32 %178)
  store i16 %177, ptr %ANAR, align 2
  br label %if.end242

if.else221:                                       ; preds = %if.then214
  call void @__sanitizer_cov_trace_pc() #17
  %179 = or i16 %176, 128
  %180 = ptrtoint ptr %ANAR to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 %179, ptr %ANAR, align 2
  br label %if.end242

if.else226:                                       ; preds = %if.end206
  br i1 %tobool172.not, label %if.else226.if.end242_crit_edge, label %if.then229

if.else226.if.end242_crit_edge:                   ; preds = %if.else226
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end242

if.then229:                                       ; preds = %if.else226
  br i1 %tobool90.not, label %if.else236, label %if.then232

if.then232:                                       ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #17
  %181 = or i16 %176, 64
  %182 = ptrtoint ptr %ANAR to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 %181, ptr %ANAR, align 2
  br label %if.end242

if.else236:                                       ; preds = %if.then229
  call void @__sanitizer_cov_trace_pc() #17
  %183 = or i16 %176, 32
  %184 = ptrtoint ptr %ANAR to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %183, ptr %ANAR, align 2
  br label %if.end242

if.end242:                                        ; preds = %if.else236, %if.then232, %if.else226.if.end242_crit_edge, %if.else221, %if.then217
  %185 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %mac_regs, align 8
  %187 = ptrtoint ptr %ANAR to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %ANAR, align 2
  %call244 = tail call fastcc i32 @velocity_mii_write(ptr noundef %186, i8 noundef zeroext 4, i16 noundef zeroext %188)
  tail call fastcc void @mii_set_auto_on(ptr noundef %vptr)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ANAR) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %CTRL1000) #15
  br label %if.end245

if.end245:                                        ; preds = %if.end242, %if.then9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_flow_control_ability(ptr nocapture noundef readonly %vptr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 7
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 8
  %flow_cntl = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13, i32 5
  %2 = ptrtoint ptr %flow_cntl to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flow_cntl, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %do.body26
    i32 3, label %do.body35
    i32 4, label %do.body44
    i32 5, label %do.body53
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %PHYSR0 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 39
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PHYSR0) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !395
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  tail call void @arm_heavy_mb() #15
  br i1 %tobool.not, label %do.body2, label %do.body

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %CR0Set = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Set, i32 8192) #15, !srcloc !277
  br label %if.end

do.body2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %CR0Clr = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Clr, i32 8192) #15, !srcloc !277
  br label %if.end

if.end:                                           ; preds = %do.body2, %do.body
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PHYSR0) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !396
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool13.not = icmp eq i8 %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15
  tail call void @arm_heavy_mb() #15
  br i1 %tobool13.not, label %do.body20, label %do.body15

do.body15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %CR0Set18 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Set18, i32 16384) #15, !srcloc !277
  br label %sw.epilog

do.body20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %CR0Clr23 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Clr23, i32 16384) #15, !srcloc !277
  br label %sw.epilog

do.body26:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !397
  tail call void @arm_heavy_mb() #15
  %CR0Set29 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Set29, i32 16384) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !398
  tail call void @arm_heavy_mb() #15
  %CR0Clr33 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Clr33, i32 8192) #15, !srcloc !277
  br label %sw.epilog

do.body35:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !399
  tail call void @arm_heavy_mb() #15
  %CR0Set38 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Set38, i32 8192) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !400
  tail call void @arm_heavy_mb() #15
  %CR0Clr42 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Clr42, i32 16384) #15, !srcloc !277
  br label %sw.epilog

do.body44:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !401
  tail call void @arm_heavy_mb() #15
  %CR0Set47 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Set47, i32 16384) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !402
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Set47, i32 8192) #15, !srcloc !277
  br label %sw.epilog

do.body53:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !403
  tail call void @arm_heavy_mb() #15
  %CR0Clr56 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Clr56, i32 8192) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !404
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Clr56, i32 16384) #15, !srcloc !277
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body53, %do.body44, %do.body35, %do.body26, %do.body20, %do.body15, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @velocity_init_cam_filter(ptr noundef %vptr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 7
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !405
  tail call void @arm_heavy_mb() #15
  %MCFG = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 51
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %MCFG) #15, !srcloc !364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !406
  %3 = and i16 %2, -1537
  %4 = or i16 %3, 1024
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %MCFG, i16 %4) #15, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !407
  tail call void @arm_heavy_mb() #15
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %MCFG) #15, !srcloc !364
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !408
  %6 = or i16 %5, 256
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %MCFG, i16 %6) #15, !srcloc !275
  %vCAMmask = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 19
  %mCAMmask = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 20
  %7 = call ptr @memset(ptr %vCAMmask, i32 0, i32 16)
  tail call fastcc void @mac_set_vlan_cam_mask(ptr noundef %1, ptr noundef %vCAMmask)
  tail call fastcc void @mac_set_cam_mask(ptr noundef %1, ptr noundef %mCAMmask)
  %active_vlans = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 4
  %call29 = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans, i32 noundef 4096, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call29)
  %cmp62 = icmp ult i32 %call29, 4096
  br i1 %cmp62, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %CAMCR.i = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 34
  %CAMADDR.i = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 33
  %MARCAM.i = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %storemerge63 = phi i32 [ %call29, %for.body.lr.ph ], [ %call39, %for.inc.for.body_crit_edge ]
  %vid.sroa.0.0.extract.shift = lshr i32 %storemerge63, 16
  %vid.sroa.0.0.extract.trunc = trunc i32 %vid.sroa.0.0.extract.shift to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !409
  tail call void @arm_heavy_mb() #15
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CAMCR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !410
  %9 = and i8 %8, 63
  %10 = or i8 %9, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMCR.i, i8 %10) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !411
  tail call void @arm_heavy_mb() #15
  %11 = trunc i32 %i.064 to i8
  %conv10.i = or i8 %11, -64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMADDR.i, i8 %conv10.i) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !412
  tail call void @arm_heavy_mb() #15
  %12 = tail call i16 @llvm.bswap.i16(i16 %vid.sroa.0.0.extract.trunc) #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %MARCAM.i, i16 %12) #15, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !413
  tail call void @arm_heavy_mb() #15
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CAMCR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !414
  %14 = or i8 %13, 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMCR.i, i8 %14) #15, !srcloc !272
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !415
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMADDR.i, i8 0) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !416
  tail call void @arm_heavy_mb() #15
  %16 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CAMCR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !417
  %17 = and i8 %16, 63
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMCR.i, i8 %17) #15, !srcloc !272
  %rem = and i32 %i.064, 7
  %shl = shl nuw nsw i32 1, %rem
  %div60 = lshr i32 %i.064, 3
  %arrayidx = getelementptr %struct.velocity_info, ptr %vptr, i32 0, i32 19, i32 %div60
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx, align 1
  %20 = trunc i32 %shl to i8
  %conv34 = or i8 %19, %20
  store i8 %conv34, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %i.064)
  %exitcond = icmp eq i32 %i.064, 63
  br i1 %exitcond, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.064, 1
  %add = add nuw nsw i32 %storemerge63, 1
  %call39 = tail call i32 @_find_next_bit_be(ptr noundef %active_vlans, i32 noundef 4096, i32 noundef %add) #15
  %cmp = icmp ult i32 %call39, 4096
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call fastcc void @mac_set_vlan_cam_mask(ptr noundef %1, ptr noundef %vCAMmask)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @enable_mii_autopoll(ptr noundef %regs) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !418
  tail call void @arm_heavy_mb() #15
  %MIICR = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIICR, i8 0) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !419
  tail call void @arm_heavy_mb() #15
  %MIIADR = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 42
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIIADR, i8 -128) #15, !srcloc !272
  %MIISR = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 38
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %ii.034 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #15
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIISR) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !420
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp slt i8 %1, 0
  %inc = add nuw nsw i32 %ii.034, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 4095
  %or.cond = select i1 %tobool.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %do.body5, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.body5:                                         ; preds = %for.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !421
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIICR, i8 -128) #15, !srcloc !272
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %do.body5
  %ii.135 = phi i32 [ 0, %do.body5 ], [ %inc25, %for.body12.for.body12_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #15
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIISR) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !422
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool21.not = icmp sgt i8 %3, -1
  %inc25 = add nuw nsw i32 %ii.135, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %inc25)
  %exitcond36.not = icmp eq i32 %inc25, 4095
  %or.cond37 = select i1 %tobool21.not, i1 true, i1 %exitcond36.not
  br i1 %or.cond37, label %for.end26, label %for.body12.for.body12_crit_edge

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body12

for.end26:                                        ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @setup_adaptive_interrupts(ptr nocapture noundef %vptr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 7
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 8
  %tx_intsup1 = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13, i32 14
  %2 = ptrtoint ptr %tx_intsup1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tx_intsup1, align 4
  %rx_intsup3 = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13, i32 15
  %4 = ptrtoint ptr %rx_intsup3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rx_intsup3, align 4
  %conv4 = trunc i32 %5 to i16
  %int_mask = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 14
  %6 = ptrtoint ptr %int_mask to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 37223183, ptr %int_mask, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !423
  tail call void @arm_heavy_mb() #15
  %CAMCR = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 34
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMCR, i8 64) #15, !srcloc !272
  %conv5 = and i32 %3, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv5)
  %cmp.not = icmp eq i32 %conv5, 0
  br i1 %cmp.not, label %do.body11, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv = trunc i32 %3 to i16
  %7 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %int_mask, align 8
  %and = and i32 %8, -249
  store i32 %and, ptr %int_mask, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !424
  tail call void @arm_heavy_mb() #15
  %9 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %ISRCTL = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ISRCTL, i16 %9) #15, !srcloc !275
  br label %do.body15

do.body11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !425
  tail call void @arm_heavy_mb() #15
  %ISRCTL14 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ISRCTL14, i16 64) #15, !srcloc !275
  br label %do.body15

do.body15:                                        ; preds = %do.body11, %if.then
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !426
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMCR, i8 -128) #15, !srcloc !272
  %conv19 = and i32 %5, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv19)
  %cmp20.not = icmp eq i32 %conv19, 0
  br i1 %cmp20.not, label %do.body30, label %if.then22

if.then22:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %int_mask, align 8
  %and24 = and i32 %11, -5
  store i32 %and24, ptr %int_mask, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !427
  tail call void @arm_heavy_mb() #15
  %12 = tail call i16 @llvm.bswap.i16(i16 %conv4)
  %ISRCTL28 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ISRCTL28, i16 %12) #15, !srcloc !275
  br label %do.body35

do.body30:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !428
  tail call void @arm_heavy_mb() #15
  %ISRCTL33 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %ISRCTL33, i16 32) #15, !srcloc !275
  br label %do.body35

do.body35:                                        ; preds = %do.body30, %if.then22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !429
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMCR, i8 0) #15, !srcloc !272
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @velocity_mii_read(ptr noundef %regs, i8 noundef zeroext %index, ptr nocapture noundef writeonly %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !430
  tail call void @arm_heavy_mb() #15
  %MIICR.i = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIICR.i, i8 0) #15, !srcloc !272
  %MIISR.i = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 38
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %ww.06.i = phi i16 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #15
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIISR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool.not.i = icmp sgt i8 %1, -1
  %inc.i = add nuw nsw i16 %ww.06.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4094, i16 %ww.06.i)
  %cmp.i = icmp ult i16 %ww.06.i, 4094
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.body.i_crit_edge, label %safe_disable_mii_autopoll.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

safe_disable_mii_autopoll.exit:                   ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !432
  tail call void @arm_heavy_mb() #15
  %MIIADR = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 42
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIIADR, i8 %index) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !433
  tail call void @arm_heavy_mb() #15
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIICR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !434
  %3 = or i8 %2, 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIICR.i, i8 %3) #15, !srcloc !272
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %safe_disable_mii_autopoll.exit
  %ww.037 = phi i16 [ 0, %safe_disable_mii_autopoll.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIICR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !435
  %5 = and i8 %4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i16 %ww.037, 1
  %cmp = icmp ult i16 %ww.037, 4094
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %ww.0.lcssa = phi i16 [ %ww.037, %for.body.for.end_crit_edge ], [ 4095, %for.inc.for.end_crit_edge ]
  %MIIDATA = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 43
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %MIIDATA) #15, !srcloc !364
  %7 = tail call i16 @llvm.bswap.i16(i16 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !436
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %data, align 2
  tail call fastcc void @enable_mii_autopoll(ptr noundef %regs)
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %ww.0.lcssa)
  %cmp25 = icmp eq i16 %ww.0.lcssa, 4095
  %spec.select = select i1 %cmp25, i32 -110, i32 0
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @velocity_mii_write(ptr noundef %regs, i8 noundef zeroext %mii_addr, i16 noundef zeroext %data) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !430
  tail call void @arm_heavy_mb() #15
  %MIICR.i = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIICR.i, i8 0) #15, !srcloc !272
  %MIISR.i = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 38
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %ww.06.i = phi i16 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %0(i32 noundef 214748) #15
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIISR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %1)
  %tobool.not.i = icmp sgt i8 %1, -1
  %inc.i = add nuw nsw i16 %ww.06.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4094, i16 %ww.06.i)
  %cmp.i = icmp ult i16 %ww.06.i, 4094
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.body.i_crit_edge, label %safe_disable_mii_autopoll.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

safe_disable_mii_autopoll.exit:                   ; preds = %for.body.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !437
  tail call void @arm_heavy_mb() #15
  %MIIADR = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 42
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIIADR, i8 %mii_addr) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !438
  tail call void @arm_heavy_mb() #15
  %2 = tail call i16 @llvm.bswap.i16(i16 %data)
  %MIIDATA = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 43
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %MIIDATA, i16 %2) #15, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !439
  tail call void @arm_heavy_mb() #15
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIICR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !440
  %4 = or i8 %3, 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIICR.i, i8 %4) #15, !srcloc !272
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %safe_disable_mii_autopoll.exit
  %ww.035 = phi i16 [ 0, %safe_disable_mii_autopoll.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 1073740) #15
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIICR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !441
  %7 = and i8 %6, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i16 %ww.035, 1
  %cmp = icmp ult i16 %ww.035, 4094
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %8 = phi i32 [ 0, %for.body.for.end_crit_edge ], [ -110, %for.inc.for.end_crit_edge ]
  tail call fastcc void @enable_mii_autopoll(ptr noundef %regs)
  ret i32 %8
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mii_set_auto_on(ptr nocapture noundef readonly %vptr) unnamed_addr #2 align 64 {
entry:
  %w = alloca i16, align 2
  %w1 = alloca i16, align 2
  %w9 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w) #15
  %0 = ptrtoint ptr %w to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %w, align 2, !annotation !312
  %mac_regs = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 7
  %1 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mac_regs, align 8
  %call = call fastcc i32 @velocity_mii_read(ptr noundef %2, i8 noundef zeroext 0, ptr noundef nonnull %w)
  %3 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %w, align 2
  %5 = and i16 %4, 4096
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %do.body8, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w1) #15
  %6 = ptrtoint ptr %w1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %w1, align 2, !annotation !312
  %7 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac_regs, align 8
  %call3 = call fastcc i32 @velocity_mii_read(ptr noundef %8, i8 noundef zeroext 0, ptr noundef nonnull %w1)
  %9 = ptrtoint ptr %w1 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %w1, align 2
  %11 = or i16 %10, 512
  %12 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac_regs, align 8
  %call7 = tail call fastcc i32 @velocity_mii_write(ptr noundef %13, i8 noundef zeroext 0, i16 noundef zeroext %11)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w1) #15
  br label %if.end

do.body8:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w9) #15
  %14 = ptrtoint ptr %w9 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 -1, ptr %w9, align 2, !annotation !312
  %15 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mac_regs, align 8
  %call11 = call fastcc i32 @velocity_mii_read(ptr noundef %16, i8 noundef zeroext 0, ptr noundef nonnull %w9)
  %17 = ptrtoint ptr %w9 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %w9, align 2
  %19 = or i16 %18, 4096
  %20 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %mac_regs, align 8
  %call16 = tail call fastcc i32 @velocity_mii_write(ptr noundef %21, i8 noundef zeroext 0, i16 noundef zeroext %19)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w9) #15
  br label %if.end

if.end:                                           ; preds = %do.body8, %do.body
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mac_set_vlan_cam_mask(ptr noundef %regs, ptr nocapture noundef readonly %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !442
  tail call void @arm_heavy_mb() #15
  %CAMCR = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 34
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CAMCR) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !443
  %1 = and i8 %0, 63
  %2 = or i8 %1, 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMCR, i8 %2) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !444
  tail call void @arm_heavy_mb() #15
  %CAMADDR = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 33
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMADDR, i8 -64) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !445
  tail call void @arm_heavy_mb() #15
  %incdec.ptr = getelementptr i8, ptr %mask, i32 1
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mask, align 1
  %arrayidx = getelementptr %struct.mac_regs, ptr %regs, i32 0, i32 5, i32 0
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx, i8 %4) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !445
  tail call void @arm_heavy_mb() #15
  %incdec.ptr.1 = getelementptr i8, ptr %mask, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr, align 1
  %arrayidx.1 = getelementptr %struct.mac_regs, ptr %regs, i32 0, i32 5, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.1, i8 %6) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !445
  tail call void @arm_heavy_mb() #15
  %incdec.ptr.2 = getelementptr i8, ptr %mask, i32 3
  %7 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr.1, align 1
  %arrayidx.2 = getelementptr %struct.mac_regs, ptr %regs, i32 0, i32 5, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.2, i8 %8) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !445
  tail call void @arm_heavy_mb() #15
  %incdec.ptr.3 = getelementptr i8, ptr %mask, i32 4
  %9 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr.2, align 1
  %arrayidx.3 = getelementptr %struct.mac_regs, ptr %regs, i32 0, i32 5, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.3, i8 %10) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !445
  tail call void @arm_heavy_mb() #15
  %incdec.ptr.4 = getelementptr i8, ptr %mask, i32 5
  %11 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr.3, align 1
  %arrayidx.4 = getelementptr %struct.mac_regs, ptr %regs, i32 0, i32 5, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.4, i8 %12) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !445
  tail call void @arm_heavy_mb() #15
  %incdec.ptr.5 = getelementptr i8, ptr %mask, i32 6
  %13 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr.4, align 1
  %arrayidx.5 = getelementptr %struct.mac_regs, ptr %regs, i32 0, i32 5, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.5, i8 %14) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !445
  tail call void @arm_heavy_mb() #15
  %incdec.ptr.6 = getelementptr i8, ptr %mask, i32 7
  %15 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr.5, align 1
  %arrayidx.6 = getelementptr %struct.mac_regs, ptr %regs, i32 0, i32 5, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.6, i8 %16) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !445
  tail call void @arm_heavy_mb() #15
  %17 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %incdec.ptr.6, align 1
  %arrayidx.7 = getelementptr %struct.mac_regs, ptr %regs, i32 0, i32 5, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.7, i8 %18) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !446
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMADDR, i8 0) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !447
  tail call void @arm_heavy_mb() #15
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CAMCR) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !448
  %20 = and i8 %19, 63
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMCR, i8 %20) #15, !srcloc !272
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mac_set_cam_mask(ptr noundef %regs, ptr nocapture noundef readonly %mask) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !449
  tail call void @arm_heavy_mb() #15
  %CAMCR = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 34
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CAMCR) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !450
  %1 = and i8 %0, 63
  %2 = or i8 %1, 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMCR, i8 %2) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !451
  tail call void @arm_heavy_mb() #15
  %CAMADDR = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 33
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMADDR, i8 -128) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !452
  tail call void @arm_heavy_mb() #15
  %incdec.ptr = getelementptr i8, ptr %mask, i32 1
  %3 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mask, align 1
  %arrayidx = getelementptr %struct.mac_regs, ptr %regs, i32 0, i32 5, i32 0
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx, i8 %4) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !452
  tail call void @arm_heavy_mb() #15
  %incdec.ptr.1 = getelementptr i8, ptr %mask, i32 2
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %incdec.ptr, align 1
  %arrayidx.1 = getelementptr %struct.mac_regs, ptr %regs, i32 0, i32 5, i32 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.1, i8 %6) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !452
  tail call void @arm_heavy_mb() #15
  %incdec.ptr.2 = getelementptr i8, ptr %mask, i32 3
  %7 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %incdec.ptr.1, align 1
  %arrayidx.2 = getelementptr %struct.mac_regs, ptr %regs, i32 0, i32 5, i32 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.2, i8 %8) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !452
  tail call void @arm_heavy_mb() #15
  %incdec.ptr.3 = getelementptr i8, ptr %mask, i32 4
  %9 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %incdec.ptr.2, align 1
  %arrayidx.3 = getelementptr %struct.mac_regs, ptr %regs, i32 0, i32 5, i32 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.3, i8 %10) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !452
  tail call void @arm_heavy_mb() #15
  %incdec.ptr.4 = getelementptr i8, ptr %mask, i32 5
  %11 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %incdec.ptr.3, align 1
  %arrayidx.4 = getelementptr %struct.mac_regs, ptr %regs, i32 0, i32 5, i32 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.4, i8 %12) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !452
  tail call void @arm_heavy_mb() #15
  %incdec.ptr.5 = getelementptr i8, ptr %mask, i32 6
  %13 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %incdec.ptr.4, align 1
  %arrayidx.5 = getelementptr %struct.mac_regs, ptr %regs, i32 0, i32 5, i32 5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.5, i8 %14) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !452
  tail call void @arm_heavy_mb() #15
  %incdec.ptr.6 = getelementptr i8, ptr %mask, i32 7
  %15 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %incdec.ptr.5, align 1
  %arrayidx.6 = getelementptr %struct.mac_regs, ptr %regs, i32 0, i32 5, i32 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.6, i8 %16) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !452
  tail call void @arm_heavy_mb() #15
  %17 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %incdec.ptr.6, align 1
  %arrayidx.7 = getelementptr %struct.mac_regs, ptr %regs, i32 0, i32 5, i32 7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %arrayidx.7, i8 %18) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !453
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMADDR, i8 0) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !454
  tail call void @arm_heavy_mb() #15
  %19 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CAMCR) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !455
  %20 = and i8 %19, 63
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CAMCR, i8 %20) #15, !srcloc !272
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_connection_type(ptr noundef %regs) unnamed_addr #2 align 64 {
entry:
  %ANAR = alloca i16, align 2
  %w = alloca i16, align 2
  %w28 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ANAR) #15
  %0 = ptrtoint ptr %ANAR to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %ANAR, align 2, !annotation !312
  %PHYSR01 = getelementptr inbounds %struct.mac_regs, ptr %regs, i32 0, i32 39
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PHYSR01) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !456
  %conv = zext i8 %1 to i32
  %and = and i32 %conv, 16
  %and4 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %and9 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  %. = select i1 %tobool10.not, i32 4, i32 2
  %.sink = select i1 %tobool5.not, i32 %., i32 8
  %or12 = or i32 %and, %.sink
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w) #15
  %2 = ptrtoint ptr %w to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %w, align 2, !annotation !312
  %call17 = call fastcc i32 @velocity_mii_read(ptr noundef %regs, i8 noundef zeroext 0, ptr noundef nonnull %w)
  %3 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %w, align 2
  %5 = and i16 %4, 4096
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool21.not = icmp eq i16 %5, 0
  br i1 %tobool21.not, label %entry.if.end38_crit_edge, label %if.then22

entry.if.end38_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then22:                                        ; preds = %entry
  %call23 = call fastcc i32 @velocity_mii_read(ptr noundef %regs, i8 noundef zeroext 4, ptr noundef nonnull %ANAR)
  %6 = ptrtoint ptr %ANAR to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %ANAR, align 2
  %8 = and i16 %7, 480
  call void @__sanitizer_cov_trace_const_cmp2(i16 480, i16 %8)
  %cmp = icmp eq i16 %8, 480
  br i1 %cmp, label %if.then27, label %if.then22.if.end38_crit_edge

if.then22.if.end38_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then27:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w28) #15
  %9 = ptrtoint ptr %w28 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %w28, align 2, !annotation !312
  %call29 = call fastcc i32 @velocity_mii_read(ptr noundef %regs, i8 noundef zeroext 9, ptr noundef nonnull %w28)
  %10 = ptrtoint ptr %w28 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %w28, align 2
  %12 = and i16 %11, 768
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w28) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool33.not = icmp eq i16 %12, 0
  %or35 = or i32 %or12, 32
  %spec.select49 = select i1 %tobool33.not, i32 %or12, i32 %or35
  br label %if.end38

if.end38:                                         ; preds = %if.then27, %if.then22.if.end38_crit_edge, %entry.if.end38_crit_edge
  %status.2 = phi i32 [ %or12, %if.then22.if.end38_crit_edge ], [ %or12, %entry.if.end38_crit_edge ], [ %spec.select49, %if.then27 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ANAR) #15
  ret i32 %status.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @velocity_shutdown(ptr nocapture noundef readonly %vptr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 7
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !457
  tail call void @arm_heavy_mb() #15
  %CR0Clr = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Clr, i32 2) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !458
  tail call void @arm_heavy_mb() #15
  %CR0Set = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Set, i32 33554432) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !459
  tail call void @arm_heavy_mb() #15
  %TDCSRClr = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %TDCSRClr, i16 -1) #15, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !460
  tail call void @arm_heavy_mb() #15
  %RDCSRClr = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 19
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %RDCSRClr, i8 -1) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !430
  tail call void @arm_heavy_mb() #15
  %MIICR.i = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIICR.i, i8 0) #15, !srcloc !272
  %MIISR.i = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 38
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %ww.06.i = phi i16 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 214748) #15
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIISR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !431
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %tobool.not.i = icmp sgt i8 %3, -1
  %inc.i = add nuw nsw i16 %ww.06.i, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 4094, i16 %ww.06.i)
  %cmp.i = icmp ult i16 %ww.06.i, 4094
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  br i1 %or.cond.i, label %for.body.i.for.body.i_crit_edge, label %safe_disable_mii_autopoll.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

safe_disable_mii_autopoll.exit:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !461
  tail call void @arm_heavy_mb() #15
  %ISR = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ISR, i32 -1) #15, !srcloc !277
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_pci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %0 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %driver_data, align 4
  %arrayidx = getelementptr [2 x %struct.velocity_info_tbl], ptr @chip_info_table, i32 0, i32 %1
  %call = tail call i32 @pci_enable_device(ptr noundef %pdev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @.str.28) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %cmp2, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #19
  br label %fail1

if.end4:                                          ; preds = %if.end
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call6 = tail call fastcc i32 @velocity_probe(ptr noundef %dev, i32 noundef %3, ptr noundef %arrayidx, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp eq i32 %call6, 0
  br i1 %cmp7, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @pci_release_regions(ptr noundef %pdev) #15
  br label %fail1

fail1:                                            ; preds = %if.end9, %do.end
  %ret.0 = phi i32 [ %call1, %do.end ], [ %call6, %if.end9 ]
  tail call void @pci_disable_device(ptr noundef %pdev) #15
  br label %cleanup

cleanup:                                          ; preds = %fail1, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail1 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @velocity_pci_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #15
  %napi.i = getelementptr i8, ptr %1, i32 4096
  tail call void @__netif_napi_del(ptr noundef %napi.i) #15
  tail call void @synchronize_net() #15
  %mac_regs.i = getelementptr i8, ptr %1, i32 2840
  %2 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_regs.i, align 8
  tail call void @iounmap(ptr noundef %3) #15
  tail call void @free_netdev(ptr noundef %1) #15
  %4 = load i32, ptr @velocity_nics, align 4
  %dec.i = add i32 %4, -1
  store i32 %dec.i, ptr @velocity_nics, align 4
  tail call void @pci_release_regions(ptr noundef %pdev) #15
  tail call void @pci_disable_device(ptr noundef %pdev) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @velocity_probe(ptr noundef %dev, i32 noundef %irq, ptr nocapture noundef readonly %info, i32 noundef %bustype) unnamed_addr #2 align 64 {
entry:
  %res.i = alloca %struct.resource, align 4
  %addr = alloca [6 x i8], align 1
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #15
  %0 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 1
  %1 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 2
  %2 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 3
  %3 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 4
  %4 = getelementptr inbounds [6 x i8], ptr %addr, i32 0, i32 5
  %5 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %6 = load i32, ptr @velocity_nics, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %6)
  %cmp = icmp sgt i32 %6, 7
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev, ptr noundef nonnull @.str.32, i32 noundef %6) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 2016, i32 noundef 1, i32 noundef 1) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %.b206 = load i1, ptr @velocity_probe.__already_done, align 1
  br i1 %.b206, label %if.end2.land.end29_crit_edge, label %if.then10, !prof !278

if.end2.land.end29_crit_edge:                     ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end29

if.then10:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @velocity_probe.__already_done, align 1
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #19
  br label %land.end29

land.end29:                                       ; preds = %if.then10, %if.end2.land.end29_crit_edge
  %.b204207 = load i1, ptr @velocity_probe.__already_done.40, align 1
  br i1 %.b204207, label %land.end29.land.end56_crit_edge, label %if.then36, !prof !278

land.end29.land.end56_crit_edge:                  ; preds = %land.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.end56

if.then36:                                        ; preds = %land.end29
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @velocity_probe.__already_done.40, align 1
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42) #19
  br label %land.end56

land.end56:                                       ; preds = %if.then36, %land.end29.land.end56_crit_edge
  %.b205208 = load i1, ptr @velocity_probe.__already_done.44, align 1
  br i1 %.b205208, label %land.end56.if.end69_crit_edge, label %if.then63, !prof !278

land.end56.if.end69_crit_edge:                    ; preds = %land.end56
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end69

if.then63:                                        ; preds = %land.end56
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @velocity_probe.__already_done.44, align 1
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #19
  br label %if.end69

if.end69:                                         ; preds = %if.then63, %land.end56.if.end69_crit_edge
  %irq77 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %8 = ptrtoint ptr %irq77 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %irq, ptr %irq77, align 4
  %netdev78 = getelementptr i8, ptr %call, i32 2312
  %9 = ptrtoint ptr %netdev78 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %netdev78, align 8
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %add.ptr.i, align 8
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %info, align 4
  %chip_id1.i = getelementptr i8, ptr %call, i32 2836
  %13 = ptrtoint ptr %chip_id1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %chip_id1.i, align 4
  %txqueue.i = getelementptr inbounds %struct.velocity_info_tbl, ptr %info, i32 0, i32 2
  %14 = ptrtoint ptr %txqueue.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %txqueue.i, align 4
  %tx.i = getelementptr i8, ptr %call, i32 2852
  %16 = ptrtoint ptr %tx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %tx.i, align 4
  %multicast_limit.i = getelementptr i8, ptr %call, i32 3192
  %17 = ptrtoint ptr %multicast_limit.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 64, ptr %multicast_limit.i, align 8
  %lock.i = getelementptr i8, ptr %call, i32 3212
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @velocity_init_info.__key, i16 noundef signext 3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bustype)
  %cmp80 = icmp eq i32 %bustype, 0
  br i1 %cmp80, label %if.then81, label %if.else

if.then81:                                        ; preds = %if.end69
  %add.ptr = getelementptr i8, ptr %dev, i32 -136
  %pdev = getelementptr i8, ptr %call, i32 2308
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %pdev, align 4
  tail call void @pci_set_master(ptr noundef %add.ptr) #15
  %resource.i = getelementptr i8, ptr %dev, i32 936
  %19 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %resource.i, align 8
  %ioaddr.i = getelementptr i8, ptr %call, i32 2848
  %21 = ptrtoint ptr %ioaddr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ioaddr.i, align 8
  %arrayidx3.i = getelementptr i8, ptr %dev, i32 968
  %22 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx3.i, align 8
  %memaddr.i = getelementptr i8, ptr %call, i32 2844
  %24 = ptrtoint ptr %memaddr.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %memaddr.i, align 4
  %flags.i = getelementptr i8, ptr %dev, i32 948
  %25 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then81.velocity_get_pci_info.exit.thread_crit_edge, label %if.end.i

if.then81.velocity_get_pci_info.exit.thread_crit_edge: ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_get_pci_info.exit.thread

if.end.i:                                         ; preds = %if.then81
  %flags9.i = getelementptr i8, ptr %dev, i32 980
  %27 = ptrtoint ptr %flags9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags9.i, align 4
  %and10.i = and i32 %28, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.end17.i, label %if.end.i.velocity_get_pci_info.exit.thread_crit_edge

if.end.i.velocity_get_pci_info.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_get_pci_info.exit.thread

if.end17.i:                                       ; preds = %if.end.i
  %end.i = getelementptr i8, ptr %dev, i32 972
  %29 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i = icmp eq i32 %30, 0
  br i1 %cmp.i, label %if.end17.i.velocity_get_pci_info.exit.thread_crit_edge, label %cond.false.i

if.end17.i.velocity_get_pci_info.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_get_pci_info.exit.thread

cond.false.i:                                     ; preds = %if.end17.i
  %31 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx3.i, align 8
  %sub.i = add i32 %30, 1
  %add.i = sub i32 %sub.i, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add.i)
  %phi.cmp.i = icmp ult i32 %add.i, 256
  br i1 %phi.cmp.i, label %cond.false.i.velocity_get_pci_info.exit.thread_crit_edge, label %cond.false.i.if.end92_crit_edge

cond.false.i.if.end92_crit_edge:                  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end92

cond.false.i.velocity_get_pci_info.exit.thread_crit_edge: ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_get_pci_info.exit.thread

velocity_get_pci_info.exit.thread:                ; preds = %cond.false.i.velocity_get_pci_info.exit.thread_crit_edge, %if.end17.i.velocity_get_pci_info.exit.thread_crit_edge, %if.end.i.velocity_get_pci_info.exit.thread_crit_edge, %if.then81.velocity_get_pci_info.exit.thread_crit_edge
  %.str.55.sink.i = phi ptr [ @.str.49, %if.then81.velocity_get_pci_info.exit.thread_crit_edge ], [ @.str.52, %if.end.i.velocity_get_pci_info.exit.thread_crit_edge ], [ @.str.55, %if.end17.i.velocity_get_pci_info.exit.thread_crit_edge ], [ @.str.55, %cond.false.i.velocity_get_pci_info.exit.thread_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.55.sink.i) #19
  br label %err_free_dev

if.else:                                          ; preds = %if.end69
  %pdev87 = getelementptr i8, ptr %call, i32 2308
  %33 = ptrtoint ptr %pdev87 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %pdev87, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #15
  %34 = getelementptr inbounds %struct.resource, ptr %res.i, i32 0, i32 1
  %35 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %37, i32 0, i32 27
  %38 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_get_property(ptr noundef %39, ptr noundef nonnull @.str.57, ptr noundef null) #15
  %tobool.not.i209 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i209, label %if.else.if.end.i210_crit_edge, label %if.then.i

if.else.if.end.i210_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i210

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %no_eeprom.i = getelementptr i8, ptr %call, i32 2316
  %40 = ptrtoint ptr %no_eeprom.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %no_eeprom.i, align 4
  br label %if.end.i210

if.end.i210:                                      ; preds = %if.then.i, %if.else.if.end.i210_crit_edge
  %41 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %add.ptr.i, align 8
  %of_node2.i = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 27
  %43 = ptrtoint ptr %of_node2.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node2.i, align 8
  %call3.i = call i32 @of_address_to_resource(ptr noundef %44, i32 noundef 0, ptr noundef nonnull %res.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %velocity_get_platform_info.exit

if.end7.i:                                        ; preds = %if.end.i210
  %45 = ptrtoint ptr %res.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %res.i, align 4
  %memaddr.i211 = getelementptr i8, ptr %call, i32 2844
  %47 = ptrtoint ptr %memaddr.i211 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %memaddr.i211, align 4
  %48 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %34, align 4
  %sub.i.i = sub i32 1, %46
  %add.i.i = add i32 %sub.i.i, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %add.i.i)
  %cmp.i212 = icmp ult i32 %add.i.i, 256
  br i1 %cmp.i212, label %velocity_get_platform_info.exit.thread228, label %velocity_get_platform_info.exit.thread

velocity_get_platform_info.exit.thread228:        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.61) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #15
  br label %err_free_dev

velocity_get_platform_info.exit.thread:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #15
  br label %if.end92

velocity_get_platform_info.exit:                  ; preds = %if.end.i210
  %52 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.58) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp89 = icmp slt i32 %call3.i, 0
  br i1 %cmp89, label %velocity_get_platform_info.exit.err_free_dev_crit_edge, label %velocity_get_platform_info.exit.if.end92_crit_edge

velocity_get_platform_info.exit.if.end92_crit_edge: ; preds = %velocity_get_platform_info.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end92

velocity_get_platform_info.exit.err_free_dev_crit_edge: ; preds = %velocity_get_platform_info.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free_dev

if.end92:                                         ; preds = %velocity_get_platform_info.exit.if.end92_crit_edge, %velocity_get_platform_info.exit.thread, %cond.false.i.if.end92_crit_edge
  %memaddr = getelementptr i8, ptr %call, i32 2844
  %54 = ptrtoint ptr %memaddr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %memaddr, align 4
  %call93 = call ptr @ioremap(i32 noundef %55, i32 noundef 256) #15
  %cmp94 = icmp eq ptr %call93, null
  br i1 %cmp94, label %if.end92.err_free_dev_crit_edge, label %if.end96

if.end92.err_free_dev_crit_edge:                  ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_free_dev

if.end96:                                         ; preds = %if.end92
  %mac_regs = getelementptr i8, ptr %call, i32 2840
  %56 = ptrtoint ptr %mac_regs to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call93, ptr %mac_regs, align 8
  %rev_id = getelementptr inbounds %struct.mac_regs, ptr %call93, i32 0, i32 58
  %57 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %rev_id) #15, !srcloc !285
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !462
  %rev_id100 = getelementptr i8, ptr %call, i32 4092
  %58 = ptrtoint ptr %rev_id100 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %rev_id100, align 4
  call fastcc void @mac_wol_reset(ptr noundef nonnull %call93)
  %59 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %call93) #15, !srcloc !285
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !463
  %60 = ptrtoint ptr %addr to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %addr, align 1
  %arrayidx.1 = getelementptr [6 x i8], ptr %call93, i32 0, i32 1
  %61 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.1) #15, !srcloc !285
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !463
  %62 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %0, align 1
  %arrayidx.2 = getelementptr [6 x i8], ptr %call93, i32 0, i32 2
  %63 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.2) #15, !srcloc !285
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !463
  %64 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %1, align 1
  %arrayidx.3 = getelementptr [6 x i8], ptr %call93, i32 0, i32 3
  %65 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.3) #15, !srcloc !285
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !463
  %66 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %2, align 1
  %arrayidx.4 = getelementptr [6 x i8], ptr %call93, i32 0, i32 4
  %67 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.4) #15, !srcloc !285
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !463
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %3, align 1
  %arrayidx.5 = getelementptr [6 x i8], ptr %call93, i32 0, i32 5
  %69 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %arrayidx.5) #15, !srcloc !285
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !463
  %70 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %4, align 1
  call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #15
  %options = getelementptr i8, ptr %call, i32 3108
  %71 = load i32, ptr @velocity_nics, align 4
  %rx_thresh.i = getelementptr i8, ptr %call, i32 3124
  %arrayidx.i = getelementptr [8 x i32], ptr @rx_thresh, i32 0, i32 %71
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %73)
  %cmp.i.i = icmp eq i32 %73, -1
  br i1 %cmp.i.i, label %if.end96.velocity_set_int_opt.exit.i_crit_edge, label %if.else.i.i

if.end96.velocity_set_int_opt.exit.i_crit_edge:   ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_set_int_opt.exit.i

if.else.i.i:                                      ; preds = %if.end96
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %73)
  %74 = icmp ugt i32 %73, 3
  br i1 %74, label %do.end.i.i, label %do.end6.i.i

do.end.i.i:                                       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.63, i32 noundef 0, i32 noundef 3) #19
  br label %velocity_set_int_opt.exit.i

do.end6.i.i:                                      ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call8.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.63, i32 noundef %73) #19
  br label %velocity_set_int_opt.exit.i

velocity_set_int_opt.exit.i:                      ; preds = %do.end6.i.i, %do.end.i.i, %if.end96.velocity_set_int_opt.exit.i_crit_edge
  %def.sink.i.i = phi i32 [ 0, %do.end.i.i ], [ %73, %do.end6.i.i ], [ 0, %if.end96.velocity_set_int_opt.exit.i_crit_edge ]
  %75 = ptrtoint ptr %rx_thresh.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %def.sink.i.i, ptr %rx_thresh.i, align 4
  %DMA_length.i = getelementptr i8, ptr %call, i32 3120
  %arrayidx1.i = getelementptr [8 x i32], ptr @DMA_length, i32 0, i32 %71
  %76 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %77)
  %cmp.i26.i = icmp eq i32 %77, -1
  br i1 %cmp.i26.i, label %velocity_set_int_opt.exit.i.velocity_set_int_opt.exit36.i_crit_edge, label %if.else.i30.i

velocity_set_int_opt.exit.i.velocity_set_int_opt.exit36.i_crit_edge: ; preds = %velocity_set_int_opt.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_set_int_opt.exit36.i

if.else.i30.i:                                    ; preds = %velocity_set_int_opt.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %77)
  %78 = icmp ugt i32 %77, 7
  br i1 %78, label %do.end.i32.i, label %do.end6.i34.i

do.end.i32.i:                                     ; preds = %if.else.i30.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i31.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.64, i32 noundef 0, i32 noundef 7) #19
  br label %velocity_set_int_opt.exit36.i

do.end6.i34.i:                                    ; preds = %if.else.i30.i
  call void @__sanitizer_cov_trace_pc() #17
  %call8.i33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.64, i32 noundef %77) #19
  br label %velocity_set_int_opt.exit36.i

velocity_set_int_opt.exit36.i:                    ; preds = %do.end6.i34.i, %do.end.i32.i, %velocity_set_int_opt.exit.i.velocity_set_int_opt.exit36.i_crit_edge
  %def.sink.i35.i = phi i32 [ 6, %do.end.i32.i ], [ %77, %do.end6.i34.i ], [ 6, %velocity_set_int_opt.exit.i.velocity_set_int_opt.exit36.i_crit_edge ]
  %79 = ptrtoint ptr %DMA_length.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %def.sink.i35.i, ptr %DMA_length.i, align 4
  %arrayidx2.i = getelementptr [8 x i32], ptr @RxDescriptors, i32 0, i32 %71
  %80 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %81)
  %cmp.i37.i = icmp eq i32 %81, -1
  br i1 %cmp.i37.i, label %velocity_set_int_opt.exit36.i.velocity_set_int_opt.exit47.i_crit_edge, label %if.else.i41.i

velocity_set_int_opt.exit36.i.velocity_set_int_opt.exit47.i_crit_edge: ; preds = %velocity_set_int_opt.exit36.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_set_int_opt.exit47.i

if.else.i41.i:                                    ; preds = %velocity_set_int_opt.exit36.i
  %82 = add i32 %81, -256
  call void @__sanitizer_cov_trace_const_cmp4(i32 -192, i32 %82)
  %83 = icmp ult i32 %82, -192
  br i1 %83, label %do.end.i43.i, label %do.end6.i45.i

do.end.i43.i:                                     ; preds = %if.else.i41.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.65, i32 noundef 64, i32 noundef 255) #19
  br label %velocity_set_int_opt.exit47.i

do.end6.i45.i:                                    ; preds = %if.else.i41.i
  call void @__sanitizer_cov_trace_pc() #17
  %call8.i44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.65, i32 noundef %81) #19
  br label %velocity_set_int_opt.exit47.i

velocity_set_int_opt.exit47.i:                    ; preds = %do.end6.i45.i, %do.end.i43.i, %velocity_set_int_opt.exit36.i.velocity_set_int_opt.exit47.i_crit_edge
  %def.sink.i46.i = phi i32 [ 64, %do.end.i43.i ], [ %81, %do.end6.i45.i ], [ 64, %velocity_set_int_opt.exit36.i.velocity_set_int_opt.exit47.i_crit_edge ]
  %84 = ptrtoint ptr %options to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %def.sink.i46.i, ptr %options, align 4
  %numtx.i = getelementptr i8, ptr %call, i32 3112
  %arrayidx3.i215 = getelementptr [8 x i32], ptr @TxDescriptors, i32 0, i32 %71
  %85 = ptrtoint ptr %arrayidx3.i215 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx3.i215, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %86)
  %cmp.i48.i = icmp eq i32 %86, -1
  br i1 %cmp.i48.i, label %velocity_set_int_opt.exit47.i.velocity_set_int_opt.exit58.i_crit_edge, label %if.else.i52.i

velocity_set_int_opt.exit47.i.velocity_set_int_opt.exit58.i_crit_edge: ; preds = %velocity_set_int_opt.exit47.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_set_int_opt.exit58.i

if.else.i52.i:                                    ; preds = %velocity_set_int_opt.exit47.i
  %87 = add i32 %86, -257
  call void @__sanitizer_cov_trace_const_cmp4(i32 -241, i32 %87)
  %88 = icmp ult i32 %87, -241
  br i1 %88, label %do.end.i54.i, label %do.end6.i56.i

do.end.i54.i:                                     ; preds = %if.else.i52.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.66, i32 noundef 16, i32 noundef 256) #19
  br label %velocity_set_int_opt.exit58.i

do.end6.i56.i:                                    ; preds = %if.else.i52.i
  call void @__sanitizer_cov_trace_pc() #17
  %call8.i55.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.66, i32 noundef %86) #19
  br label %velocity_set_int_opt.exit58.i

velocity_set_int_opt.exit58.i:                    ; preds = %do.end6.i56.i, %do.end.i54.i, %velocity_set_int_opt.exit47.i.velocity_set_int_opt.exit58.i_crit_edge
  %def.sink.i57.i = phi i32 [ 64, %do.end.i54.i ], [ %86, %do.end6.i56.i ], [ 64, %velocity_set_int_opt.exit47.i.velocity_set_int_opt.exit58.i_crit_edge ]
  %89 = ptrtoint ptr %numtx.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %def.sink.i57.i, ptr %numtx.i, align 4
  %flow_cntl.i = getelementptr i8, ptr %call, i32 3128
  %arrayidx4.i = getelementptr [8 x i32], ptr @flow_control, i32 0, i32 %71
  %90 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %91)
  %cmp.i59.i = icmp eq i32 %91, -1
  br i1 %cmp.i59.i, label %velocity_set_int_opt.exit58.i.velocity_set_int_opt.exit69.i_crit_edge, label %if.else.i63.i

velocity_set_int_opt.exit58.i.velocity_set_int_opt.exit69.i_crit_edge: ; preds = %velocity_set_int_opt.exit58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_set_int_opt.exit69.i

if.else.i63.i:                                    ; preds = %velocity_set_int_opt.exit58.i
  %92 = add i32 %91, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %92)
  %93 = icmp ult i32 %92, -5
  br i1 %93, label %do.end.i65.i, label %do.end6.i67.i

do.end.i65.i:                                     ; preds = %if.else.i63.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i64.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.67, i32 noundef 1, i32 noundef 5) #19
  br label %velocity_set_int_opt.exit69.i

do.end6.i67.i:                                    ; preds = %if.else.i63.i
  call void @__sanitizer_cov_trace_pc() #17
  %call8.i66.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.67, i32 noundef %91) #19
  br label %velocity_set_int_opt.exit69.i

velocity_set_int_opt.exit69.i:                    ; preds = %do.end6.i67.i, %do.end.i65.i, %velocity_set_int_opt.exit58.i.velocity_set_int_opt.exit69.i_crit_edge
  %def.sink.i68.i = phi i32 [ 1, %do.end.i65.i ], [ %91, %do.end6.i67.i ], [ 1, %velocity_set_int_opt.exit58.i.velocity_set_int_opt.exit69.i_crit_edge ]
  %94 = ptrtoint ptr %flow_cntl.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %def.sink.i68.i, ptr %flow_cntl.i, align 4
  %flags.i216 = getelementptr i8, ptr %call, i32 3172
  %arrayidx5.i = getelementptr [8 x i32], ptr @IP_byte_align, i32 0, i32 %71
  %95 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx5.i, align 4
  %97 = ptrtoint ptr %flags.i216 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags.i216, align 4
  %and.i.i = and i32 %98, -9
  store i32 %and.i.i, ptr %flags.i216, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %96)
  %cmp.i70.i = icmp eq i32 %96, -1
  br i1 %cmp.i70.i, label %velocity_set_int_opt.exit69.i.velocity_set_bool_opt.exit.i_crit_edge, label %if.else.i71.i

velocity_set_int_opt.exit69.i.velocity_set_bool_opt.exit.i_crit_edge: ; preds = %velocity_set_int_opt.exit69.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_set_bool_opt.exit.i

if.else.i71.i:                                    ; preds = %velocity_set_int_opt.exit69.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %96)
  %99 = icmp ugt i32 %96, 1
  br i1 %99, label %do.end.i73.i, label %do.end12.i.i

do.end.i73.i:                                     ; preds = %if.else.i71.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.68, i32 noundef 0, i32 noundef 1) #19
  br label %velocity_set_bool_opt.exit.i

do.end12.i.i:                                     ; preds = %if.else.i71.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool14.not.i.i = icmp eq i32 %96, 0
  %cond15.i.i = select i1 %tobool14.not.i.i, ptr @.str.81, ptr @.str.80
  %call16.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.68, ptr noundef nonnull %cond15.i.i) #19
  %spec.select.i.i = select i1 %tobool14.not.i.i, i32 0, i32 8
  %100 = ptrtoint ptr %flags.i216 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %flags.i216, align 4
  %or22.i.i = or i32 %101, %spec.select.i.i
  store i32 %or22.i.i, ptr %flags.i216, align 4
  br label %velocity_set_bool_opt.exit.i

velocity_set_bool_opt.exit.i:                     ; preds = %do.end12.i.i, %do.end.i73.i, %velocity_set_int_opt.exit69.i.velocity_set_bool_opt.exit.i_crit_edge
  %spd_dpx.i = getelementptr i8, ptr %call, i32 3116
  %arrayidx6.i = getelementptr [8 x i32], ptr @speed_duplex, i32 0, i32 %71
  %102 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx6.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %103)
  %cmp.i74.i = icmp eq i32 %103, -1
  br i1 %cmp.i74.i, label %velocity_set_bool_opt.exit.i.velocity_set_int_opt.exit84.i_crit_edge, label %if.else.i78.i

velocity_set_bool_opt.exit.i.velocity_set_int_opt.exit84.i_crit_edge: ; preds = %velocity_set_bool_opt.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_set_int_opt.exit84.i

if.else.i78.i:                                    ; preds = %velocity_set_bool_opt.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %103)
  %104 = icmp ugt i32 %103, 5
  br i1 %104, label %do.end.i80.i, label %do.end6.i82.i

do.end.i80.i:                                     ; preds = %if.else.i78.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i79.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.69, i32 noundef 0, i32 noundef 5) #19
  br label %velocity_set_int_opt.exit84.i

do.end6.i82.i:                                    ; preds = %if.else.i78.i
  call void @__sanitizer_cov_trace_pc() #17
  %call8.i81.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.69, i32 noundef %103) #19
  br label %velocity_set_int_opt.exit84.i

velocity_set_int_opt.exit84.i:                    ; preds = %do.end6.i82.i, %do.end.i80.i, %velocity_set_bool_opt.exit.i.velocity_set_int_opt.exit84.i_crit_edge
  %def.sink.i83.i = phi i32 [ 0, %do.end.i80.i ], [ %103, %do.end6.i82.i ], [ 0, %velocity_set_bool_opt.exit.i.velocity_set_int_opt.exit84.i_crit_edge ]
  %105 = ptrtoint ptr %spd_dpx.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %def.sink.i83.i, ptr %spd_dpx.i, align 4
  %arrayidx7.i = getelementptr [8 x i32], ptr @wol_opts, i32 0, i32 %71
  %106 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %107)
  %cmp.i85.i = icmp eq i32 %107, -1
  br i1 %cmp.i85.i, label %velocity_set_int_opt.exit84.i.velocity_get_options.exit_crit_edge, label %if.else.i89.i

velocity_set_int_opt.exit84.i.velocity_get_options.exit_crit_edge: ; preds = %velocity_set_int_opt.exit84.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_get_options.exit

if.else.i89.i:                                    ; preds = %velocity_set_int_opt.exit84.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %107)
  %108 = icmp ugt i32 %107, 7
  br i1 %108, label %do.end.i91.i, label %do.end6.i93.i

do.end.i91.i:                                     ; preds = %if.else.i89.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i90.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.70, i32 noundef 0, i32 noundef 7) #19
  br label %velocity_get_options.exit

do.end6.i93.i:                                    ; preds = %if.else.i89.i
  call void @__sanitizer_cov_trace_pc() #17
  %call8.i92.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.70, i32 noundef %107) #19
  br label %velocity_get_options.exit

velocity_get_options.exit:                        ; preds = %do.end6.i93.i, %do.end.i91.i, %velocity_set_int_opt.exit84.i.velocity_get_options.exit_crit_edge
  %def.sink.i94.i = phi i32 [ 0, %do.end.i91.i ], [ %107, %do.end6.i93.i ], [ 0, %velocity_set_int_opt.exit84.i.velocity_get_options.exit_crit_edge ]
  %wol_opts.i = getelementptr i8, ptr %call, i32 3132
  %109 = ptrtoint ptr %wol_opts.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %def.sink.i94.i, ptr %wol_opts.i, align 4
  %110 = ptrtoint ptr %options to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %options, align 4
  %and.i217 = and i32 %111, -4
  store i32 %and.i217, ptr %options, align 4
  %flags = getelementptr inbounds %struct.velocity_info_tbl, ptr %info, i32 0, i32 3
  %112 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flags, align 4
  %114 = ptrtoint ptr %flags.i216 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %flags.i216, align 4
  %and = and i32 %115, %113
  store i32 %and, ptr %flags.i216, align 4
  %116 = load i32, ptr %flags, align 4
  %and113 = and i32 %116, -16777216
  %or = or i32 %and113, %and
  %flags114 = getelementptr i8, ptr %call, i32 3180
  %wol_opts116 = getelementptr i8, ptr %call, i32 3256
  %117 = ptrtoint ptr %wol_opts116 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %def.sink.i94.i, ptr %wol_opts116, align 8
  %or118 = or i32 %or, 524288
  %118 = ptrtoint ptr %flags114 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %or118, ptr %flags114, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #15
  %119 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 -1, ptr %id, align 4, !annotation !312
  %120 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %mac_regs, align 8
  %call120 = call fastcc i32 @velocity_mii_read(ptr noundef %121, i8 noundef zeroext 3, ptr noundef nonnull %id)
  %122 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %mac_regs, align 8
  %add.ptr122 = getelementptr inbounds i16, ptr %id, i32 1
  %call123 = call fastcc i32 @velocity_mii_read(ptr noundef %123, i8 noundef zeroext 2, ptr noundef %add.ptr122)
  %124 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %id, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #15
  %phy_id = getelementptr i8, ptr %call, i32 3188
  %126 = ptrtoint ptr %phy_id to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %phy_id, align 4
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %127 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @velocity_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %128 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr @velocity_ethtool_ops, ptr %ethtool_ops, align 16
  %napi = getelementptr i8, ptr %call, i32 4096
  call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi, ptr noundef nonnull @velocity_poll, i32 noundef 64) #15
  %hw_features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 24
  %129 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 131, ptr %hw_features, align 8
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %130 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %130)
  %131 = load i64, ptr %features, align 16
  %or125 = or i64 %131, 898
  store i64 %or125, ptr %features, align 16
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 30
  %132 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 64, ptr %min_mtu, align 8
  %max_mtu = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 31
  %133 = ptrtoint ptr %max_mtu to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 9000, ptr %max_mtu, align 4
  %call126 = call i32 @register_netdev(ptr noundef nonnull %call) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %cmp127 = icmp slt i32 %call126, 0
  br i1 %cmp127, label %err_iounmap, label %if.end129

if.end129:                                        ; preds = %velocity_get_options.exit
  %134 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %mac_regs, align 8
  %PHYSR0.i = getelementptr inbounds %struct.mac_regs, ptr %135, i32 0, i32 39
  %136 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PHYSR0.i) #15, !srcloc !285
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !464
  %137 = and i8 %136, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool131.not = icmp eq i8 %137, 0
  br i1 %tobool131.not, label %if.then132, label %if.end129.if.end134_crit_edge

if.end129.if.end134_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end134

if.then132:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #17
  call void @netif_carrier_off(ptr noundef nonnull %call) #15
  %mii_status = getelementptr i8, ptr %call, i32 3184
  %138 = ptrtoint ptr %mii_status to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %mii_status, align 8
  %or133 = or i32 %139, 1
  store i32 %or133, ptr %mii_status, align 8
  br label %if.end134

if.end134:                                        ; preds = %if.then132, %if.end129.if.end134_crit_edge
  %140 = ptrtoint ptr %netdev78 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %netdev78, align 8
  %142 = ptrtoint ptr %chip_id1.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %chip_id1.i, align 4
  %144 = load ptr, ptr getelementptr inbounds ([2 x %struct.velocity_info_tbl], ptr @chip_info_table, i32 0, i32 0, i32 1), align 4
  %cmp.not9.i.i = icmp eq ptr %144, null
  br i1 %cmp.not9.i.i, label %if.end134.velocity_print_info.exit_crit_edge, label %for.body.i.preheader.i

if.end134.velocity_print_info.exit_crit_edge:     ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_print_info.exit

for.body.i.preheader.i:                           ; preds = %if.end134
  %145 = load i32, ptr @chip_info_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %143)
  %cmp3.i4.i = icmp eq i32 %145, %143
  br i1 %cmp3.i4.i, label %for.body.i.preheader.i.velocity_print_info.exit_crit_edge, label %for.body.i.preheader.i.for.cond.i.i_crit_edge

for.body.i.preheader.i.for.cond.i.i_crit_edge:    ; preds = %for.body.i.preheader.i
  br label %for.cond.i.i

for.body.i.preheader.i.velocity_print_info.exit_crit_edge: ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_print_info.exit

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %for.body.i.preheader.i.for.cond.i.i_crit_edge
  %i.010.i5.i = phi i32 [ %inc.i.i, %for.body.i.i.for.cond.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.for.cond.i.i_crit_edge ]
  %inc.i.i = add i32 %i.010.i5.i, 1
  %name.i.i = getelementptr [2 x %struct.velocity_info_tbl], ptr @chip_info_table, i32 0, i32 %inc.i.i, i32 1
  %146 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %name.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %147, null
  br i1 %cmp.not.i.i, label %for.cond.i.i.velocity_print_info.exit_crit_edge, label %for.body.i.i

for.cond.i.i.velocity_print_info.exit_crit_edge:  ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_print_info.exit

for.body.i.i:                                     ; preds = %for.cond.i.i
  %arrayidx.i.i = getelementptr [2 x %struct.velocity_info_tbl], ptr @chip_info_table, i32 0, i32 %inc.i.i
  %148 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx.i.i, align 4
  %cmp3.i.i = icmp eq i32 %149, %143
  br i1 %cmp3.i.i, label %for.body.i.i.velocity_print_info.exit_crit_edge, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i

for.body.i.i.velocity_print_info.exit_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_print_info.exit

velocity_print_info.exit:                         ; preds = %for.body.i.i.velocity_print_info.exit_crit_edge, %for.cond.i.i.velocity_print_info.exit_crit_edge, %for.body.i.preheader.i.velocity_print_info.exit_crit_edge, %if.end134.velocity_print_info.exit_crit_edge
  %.lcssa.i.i = phi ptr [ null, %if.end134.velocity_print_info.exit_crit_edge ], [ %144, %for.body.i.preheader.i.velocity_print_info.exit_crit_edge ], [ null, %for.cond.i.i.velocity_print_info.exit_crit_edge ], [ %147, %for.body.i.i.velocity_print_info.exit_crit_edge ]
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %141, i32 0, i32 86
  %150 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev_addr.i, align 64
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %141, ptr noundef nonnull @.str.84, ptr noundef %.lcssa.i.i, ptr noundef %151) #19
  %152 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %add.ptr.i, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %153, i32 0, i32 8
  %154 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %call, ptr %driver_data.i, align 4
  %pdev.i = getelementptr i8, ptr %call, i32 2308
  %155 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pdev.i, align 4
  %tobool.not.i218 = icmp eq ptr %156, null
  br i1 %tobool.not.i218, label %do.body.i, label %if.then.i220

if.then.i220:                                     ; preds = %velocity_print_info.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call.i219 = call i32 @pci_set_power_state(ptr noundef nonnull %156, i32 noundef 3) #15
  br label %velocity_set_power_state.exit

do.body.i:                                        ; preds = %velocity_print_info.exit
  call void @__sanitizer_cov_trace_pc() #17
  %157 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %mac_regs, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !271
  call void @arm_heavy_mb() #15
  %add.ptr.i222 = getelementptr i8, ptr %158, i32 340
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i222, i8 3) #15, !srcloc !272
  br label %velocity_set_power_state.exit

velocity_set_power_state.exit:                    ; preds = %do.body.i, %if.then.i220
  %159 = load i32, ptr @velocity_nics, align 4
  %inc136 = add i32 %159, 1
  store i32 %inc136, ptr @velocity_nics, align 4
  br label %cleanup

err_iounmap:                                      ; preds = %velocity_get_options.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @__netif_napi_del(ptr noundef %napi) #15
  call void @synchronize_net() #15
  call void @iounmap(ptr noundef nonnull %call93) #15
  br label %err_free_dev

err_free_dev:                                     ; preds = %err_iounmap, %if.end92.err_free_dev_crit_edge, %velocity_get_platform_info.exit.err_free_dev_crit_edge, %velocity_get_platform_info.exit.thread228, %velocity_get_pci_info.exit.thread
  %ret.1 = phi i32 [ %call126, %err_iounmap ], [ %call3.i, %velocity_get_platform_info.exit.err_free_dev_crit_edge ], [ -5, %if.end92.err_free_dev_crit_edge ], [ -22, %velocity_get_pci_info.exit.thread ], [ -22, %velocity_get_platform_info.exit.thread228 ]
  call void @free_netdev(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %err_free_dev, %velocity_set_power_state.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %ret.1, %err_free_dev ], [ %call126, %velocity_set_power_state.exit ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_poll(ptr noundef %napi, i32 noundef %budget) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -1792
  %netdev.i = getelementptr i8, ptr %napi, i32 -1784
  %curr.i = getelementptr i8, ptr %napi, i32 -1136
  %ring.i = getelementptr i8, ptr %napi, i32 -1128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp92.i = icmp sgt i32 %budget, 0
  br i1 %cmp92.i, label %while.body.lr.ph.i, label %entry.velocity_rx_srv.exit_crit_edge

entry.velocity_rx_srv.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_rx_srv.exit

while.body.lr.ph.i:                               ; preds = %entry
  %0 = ptrtoint ptr %curr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %curr.i, align 8
  %2 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev.i, align 8
  %info.i = getelementptr i8, ptr %napi, i32 -1124
  %rx.i.i = getelementptr i8, ptr %napi, i32 -1144
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 6
  %flags.i.i.i = getelementptr i8, ptr %napi, i32 -916
  %rx_crc_errors.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 12
  %rx_frame_errors.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 13
  %options.i = getelementptr i8, ptr %napi, i32 -988
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %works.096.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc42.i, %cleanup.i.while.body.i_crit_edge ]
  %rd_curr.093.i = phi i32 [ %1, %while.body.lr.ph.i ], [ %spec.store.select.i, %cleanup.i.while.body.i_crit_edge ]
  %4 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ring.i, align 8
  %add.ptr.i = getelementptr %struct.rx_desc, ptr %5, i32 %rd_curr.093.i
  %6 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info.i, align 4
  %arrayidx.i = getelementptr %struct.velocity_rd_info, ptr %7, i32 %rd_curr.093.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %while.body.i.while.end.i_crit_edge, label %if.end.i

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

if.end.i:                                         ; preds = %while.body.i
  %len.i = getelementptr inbounds %struct.rdesc0, ptr %add.ptr.i, i32 0, i32 1
  %10 = ptrtoint ptr %len.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 2)
  %11 = load i16, ptr %len.i, align 1
  %12 = and i16 %11, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool4.not.i = icmp eq i16 %12, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.while.end.i_crit_edge

if.end.i.while.end.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

if.end6.i:                                        ; preds = %if.end.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !465
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 2)
  %14 = load i16, ptr %add.ptr.i, align 1
  %conv8.i = zext i16 %14 to i32
  %and9.i = and i32 %conv8.i, 6272
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.else.i, label %if.then11.i

if.then11.i:                                      ; preds = %if.end6.i
  %15 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netdev.i, align 8
  %stats1.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 36
  %17 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info.i, align 4
  %arrayidx.i.i = getelementptr %struct.velocity_rd_info, ptr %18, i32 %rd_curr.093.i
  %19 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ring.i, align 8
  %arrayidx3.i.i = getelementptr %struct.rx_desc, ptr %20, i32 %rd_curr.093.i
  %len.i.i = getelementptr inbounds %struct.rdesc0, ptr %arrayidx3.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %len.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 2)
  %22 = load i16, ptr %len.i.i, align 1
  %23 = and i16 %22, -193
  %24 = tail call i16 @llvm.bswap.i16(i16 %23) #15
  %and.i.i = zext i16 %24 to i32
  %25 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %arrayidx3.i.i, align 1
  %conv5.i.i = zext i16 %26 to i32
  %and6.i.i = and i32 %conv5.i.i, 4099
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool.not.i.i, label %if.end16.i.i, label %if.then.i.i, !prof !278

if.then.i.i:                                      ; preds = %if.then11.i
  %and12.i.i = and i32 %conv5.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i.i)
  %tobool13.not.i.i = icmp eq i32 %and12.i.i, 0
  br i1 %tobool13.not.i.i, label %if.then.i.i.if.then14.i_crit_edge, label %if.then14.i.i

if.then.i.i.if.then14.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i

if.then14.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %16, ptr noundef nonnull @.str.83) #19
  br label %if.then14.i

if.end16.i.i:                                     ; preds = %if.then11.i
  %and20.i.i = and i32 %conv5.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i.i)
  %tobool21.not.i.i = icmp eq i32 %and20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.end16.i.i.if.end24.i.i_crit_edge, label %if.then22.i.i

if.end16.i.i.if.end24.i.i_crit_edge:              ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24.i.i

if.then22.i.i:                                    ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %multicast.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 36, i32 8
  %27 = ptrtoint ptr %multicast.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %multicast.i.i, align 4
  %inc23.i.i = add i32 %28, 1
  store i32 %inc23.i.i, ptr %multicast.i.i, align 4
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then22.i.i, %if.end16.i.i.if.end24.i.i_crit_edge
  %29 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx.i.i, align 4
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %add.ptr, align 8
  %skb_dma.i.i = getelementptr %struct.velocity_rd_info, ptr %18, i32 %rd_curr.093.i, i32 1
  %33 = ptrtoint ptr %skb_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %skb_dma.i.i, align 4
  %35 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rx.i.i, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef 2) #15
  %CSM.i.i.i = getelementptr %struct.rx_desc, ptr %20, i32 %rd_curr.093.i, i32 1, i32 1
  %37 = ptrtoint ptr %CSM.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %CSM.i.i.i, align 1
  %conv.i.i.i = zext i8 %38 to i32
  %39 = and i32 %conv.i.i.i, 68
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %39)
  %.not.i.i.i = icmp eq i32 %39, 68
  br i1 %.not.i.i.i, label %if.then6.i.i.i, label %if.end24.i.i.velocity_rx_csum.exit.i.i_crit_edge

if.end24.i.i.velocity_rx_csum.exit.i.i_crit_edge: ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_rx_csum.exit.i.i

if.then6.i.i.i:                                   ; preds = %if.end24.i.i
  %40 = and i32 %conv.i.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %41 = icmp ne i32 %40, 0
  %42 = and i8 %38, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool22.not.i.i.i = icmp eq i8 %42, 0
  %or.cond33.i.i.i = select i1 %41, i1 %tobool22.not.i.i.i, i1 false
  br i1 %or.cond33.i.i.i, label %if.then6.i.i.i.velocity_rx_csum.exit.i.i_crit_edge, label %if.end24.i.i.i

if.then6.i.i.i.velocity_rx_csum.exit.i.i_crit_edge: ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_rx_csum.exit.i.i

if.end24.i.i.i:                                   ; preds = %if.then6.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %ip_summed.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 15
  %43 = ptrtoint ptr %ip_summed.i.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %bf.load.i.i.i = load i16, ptr %ip_summed.i.i.i, align 8
  %bf.clear.i.i.i = and i16 %bf.load.i.i.i, -1537
  %bf.set.i.i.i = or i16 %bf.clear.i.i.i, 512
  store i16 %bf.set.i.i.i, ptr %ip_summed.i.i.i, align 8
  br label %velocity_rx_csum.exit.i.i

velocity_rx_csum.exit.i.i:                        ; preds = %if.end24.i.i.i, %if.then6.i.i.i.velocity_rx_csum.exit.i.i_crit_edge, %if.end24.i.i.velocity_rx_csum.exit.i.i_crit_edge
  %44 = load i32, ptr @rx_copybreak, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %and.i.i)
  %cmp.i.i.i = icmp sgt i32 %44, %and.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %velocity_rx_csum.exit.i.i.if.then28.i.i_crit_edge

velocity_rx_csum.exit.i.i.if.then28.i.i_crit_edge: ; preds = %velocity_rx_csum.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28.i.i

if.then.i.i.i:                                    ; preds = %velocity_rx_csum.exit.i.i
  %45 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netdev.i, align 8
  %add.i.i.i.i.i = add nuw nsw i32 %and.i.i, 2
  %call.i.i.i.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %46, i32 noundef %add.i.i.i.i.i, i32 noundef 2592) #15
  %tobool.not.i.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.if.then28.i.i_crit_edge, label %if.else.i.i

if.then.i.i.i.if.then28.i.i_crit_edge:            ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then28.i.i

if.then28.i.i:                                    ; preds = %if.then.i.i.i.if.then28.i.i_crit_edge, %velocity_rx_csum.exit.i.i.if.then28.i.i_crit_edge
  %47 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %48, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then28.i.i.velocity_iph_realign.exit.i.i_crit_edge, label %if.then.i87.i.i

if.then28.i.i.velocity_iph_realign.exit.i.i_crit_edge: ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_iph_realign.exit.i.i

if.then.i87.i.i:                                  ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 19
  %49 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %50, i32 2
  %51 = call ptr @memmove(ptr %add.ptr.i.i.i, ptr %50, i32 %and.i.i)
  %52 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %52, i32 2
  store ptr %add.ptr.i.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 16
  %53 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tail.i.i.i.i, align 8
  %add.ptr1.i.i.i.i = getelementptr i8, ptr %54, i32 2
  store ptr %add.ptr1.i.i.i.i, ptr %tail.i.i.i.i, align 8
  br label %velocity_iph_realign.exit.i.i

velocity_iph_realign.exit.i.i:                    ; preds = %if.then.i87.i.i, %if.then28.i.i.velocity_iph_realign.exit.i.i_crit_edge
  %55 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %arrayidx.i.i, align 4
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %add.ptr, align 8
  %58 = ptrtoint ptr %skb_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %skb_dma.i.i, align 4
  %60 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx.i.i, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef 2, i32 noundef 0) #15
  br label %if.end38.i.i

if.else.i.i:                                      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %data.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 19
  %62 = ptrtoint ptr %data.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %data.i.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %63, i32 2
  store ptr %add.ptr.i.i.i.i.i.i, ptr %data.i.i.i.i.i.i, align 4
  %tail.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 16
  %64 = ptrtoint ptr %tail.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tail.i.i.i.i.i.i, align 8
  %add.ptr1.i.i.i.i.i.i = getelementptr i8, ptr %65, i32 2
  store ptr %add.ptr1.i.i.i.i.i.i, ptr %tail.i.i.i.i.i.i, align 8
  %ip_summed.i84.i.i = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 15
  %66 = ptrtoint ptr %ip_summed.i84.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %bf.load.i85.i.i = load i16, ptr %ip_summed.i84.i.i, align 8
  %ip_summed2.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i.i, i32 0, i32 15
  %67 = and i16 %bf.load.i85.i.i, 1536
  %68 = ptrtoint ptr %ip_summed2.i.i.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %bf.load3.i.i.i = load i16, ptr %ip_summed2.i.i.i, align 8
  %bf.clear4.i.i.i = and i16 %bf.load3.i.i.i, -1537
  %bf.set.i86.i.i = or i16 %bf.clear4.i.i.i, %67
  store i16 %bf.set.i86.i.i, ptr %ip_summed2.i.i.i, align 8
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %30, i32 0, i32 19
  %69 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i.i.i.i, align 4
  %71 = call ptr @memcpy(ptr %add.ptr.i.i.i.i.i.i, ptr %70, i32 %and.i.i)
  %72 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %add.ptr, align 8
  %74 = ptrtoint ptr %skb_dma.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %skb_dma.i.i, align 4
  %76 = ptrtoint ptr %rx.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rx.i.i, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %73, i32 noundef %75, i32 noundef %77, i32 noundef 2) #15
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.else.i.i, %velocity_iph_realign.exit.i.i
  %skb.0102.i.i = phi ptr [ %call.i.i.i.i.i, %if.else.i.i ], [ %30, %velocity_iph_realign.exit.i.i ]
  %sub.i.i = add nsw i32 %and.i.i, -4
  %call39.i.i = tail call ptr @skb_put(ptr noundef %skb.0102.i.i, i32 noundef %sub.i.i) #15
  %78 = ptrtoint ptr %netdev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %netdev.i, align 8
  %call41.i.i = tail call zeroext i16 @eth_type_trans(ptr noundef %skb.0102.i.i, ptr noundef %79) #15
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0102.i.i, i32 0, i32 15, i32 0, i32 18
  %80 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %call41.i.i, ptr %protocol.i.i, align 8
  %81 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_loadN_noabort(i32 %81, i32 2)
  %82 = load i16, ptr %arrayidx3.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %82)
  %tobool46.not.i.i = icmp sgt i16 %82, -1
  br i1 %tobool46.not.i.i, label %if.end38.i.i.velocity_receive_frame.exit.i_crit_edge, label %if.then47.i.i

if.end38.i.i.velocity_receive_frame.exit.i_crit_edge: ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_receive_frame.exit.i

if.then47.i.i:                                    ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %rdesc1.i.i = getelementptr %struct.rx_desc, ptr %20, i32 %rd_curr.093.i, i32 1
  %83 = ptrtoint ptr %rdesc1.i.i to i32
  call void @__asan_loadN_noabort(i32 %83, i32 2)
  %84 = load i16, ptr %rdesc1.i.i, align 1
  %vlan_proto1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0102.i.i, i32 0, i32 15, i32 0, i32 9
  %85 = ptrtoint ptr %vlan_proto1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 -32512, ptr %vlan_proto1.i.i.i, align 8
  %vlan_tci2.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0102.i.i, i32 0, i32 15, i32 0, i32 10
  %86 = ptrtoint ptr %vlan_tci2.i.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %84, ptr %vlan_tci2.i.i.i, align 2
  %vlan_present.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0102.i.i, i32 0, i32 15, i32 0, i32 3
  %87 = ptrtoint ptr %vlan_present.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %bf.load.i88.i.i = load i32, ptr %vlan_present.i.i.i, align 2
  %bf.set.i89.i.i = or i32 %bf.load.i88.i.i, -2147483648
  store i32 %bf.set.i89.i.i, ptr %vlan_present.i.i.i, align 2
  br label %velocity_receive_frame.exit.i

velocity_receive_frame.exit.i:                    ; preds = %if.then47.i.i, %if.end38.i.i.velocity_receive_frame.exit.i_crit_edge
  %call49.i.i = tail call i32 @netif_receive_skb(ptr noundef %skb.0102.i.i) #15
  %rx_bytes.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 36, i32 2
  br label %cleanup.sink.split.i

if.then14.i:                                      ; preds = %if.then14.i.i, %if.then.i.i.if.then14.i_crit_edge
  %rx_length_errors.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 36, i32 10
  br label %cleanup.sink.split.i

if.else.i:                                        ; preds = %if.end6.i
  %and19.i = and i32 %conv8.i, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19.i)
  %tobool20.not.i = icmp eq i32 %and19.i, 0
  br i1 %tobool20.not.i, label %if.else.i.if.end23.i_crit_edge, label %if.then21.i

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23.i

if.then21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %88 = ptrtoint ptr %rx_crc_errors.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %rx_crc_errors.i, align 4
  %inc22.i = add i32 %89, 1
  store i32 %inc22.i, ptr %rx_crc_errors.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.else.i.if.end23.i_crit_edge
  %90 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 2)
  %91 = load i16, ptr %add.ptr.i, align 1
  %92 = and i16 %91, 1024
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %92)
  %tobool28.not.i = icmp eq i16 %92, 0
  br i1 %tobool28.not.i, label %if.end23.i.cleanup.i_crit_edge, label %if.end23.i.cleanup.sink.split.i_crit_edge

if.end23.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i

if.end23.i.cleanup.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

cleanup.sink.split.i:                             ; preds = %if.end23.i.cleanup.sink.split.i_crit_edge, %if.then14.i, %velocity_receive_frame.exit.i
  %rx_frame_errors.sink108.i = phi ptr [ %rx_length_errors.i.i, %if.then14.i ], [ %rx_bytes.i.i, %velocity_receive_frame.exit.i ], [ %rx_frame_errors.i, %if.end23.i.cleanup.sink.split.i_crit_edge ]
  %.sink107.i = phi i32 [ 1, %if.then14.i ], [ %and.i.i, %velocity_receive_frame.exit.i ], [ 1, %if.end23.i.cleanup.sink.split.i_crit_edge ]
  %rx_dropped.sink106.ph.i = phi ptr [ %rx_dropped.i, %if.then14.i ], [ %stats1.i.i, %velocity_receive_frame.exit.i ], [ %rx_dropped.i, %if.end23.i.cleanup.sink.split.i_crit_edge ]
  %93 = ptrtoint ptr %rx_frame_errors.sink108.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rx_frame_errors.sink108.i, align 4
  %inc30.i = add i32 %94, %.sink107.i
  store i32 %inc30.i, ptr %rx_frame_errors.sink108.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %cleanup.sink.split.i, %if.end23.i.cleanup.i_crit_edge
  %rx_dropped.sink106.i = phi ptr [ %rx_dropped.i, %if.end23.i.cleanup.i_crit_edge ], [ %rx_dropped.sink106.ph.i, %cleanup.sink.split.i ]
  %95 = ptrtoint ptr %rx_dropped.sink106.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %rx_dropped.sink106.i, align 4
  %inc33.i = add i32 %96, 1
  store i32 %inc33.i, ptr %rx_dropped.sink106.i, align 4
  %size.i = getelementptr %struct.rx_desc, ptr %5, i32 %rd_curr.093.i, i32 4
  %97 = ptrtoint ptr %size.i to i32
  call void @__asan_loadN_noabort(i32 %97, i32 2)
  %98 = load i16, ptr %size.i, align 1
  %99 = or i16 %98, 128
  store i16 %99, ptr %size.i, align 1
  %inc37.i = add i32 %rd_curr.093.i, 1
  %100 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %options.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc37.i, i32 %101)
  %cmp38.not.i = icmp slt i32 %inc37.i, %101
  %spec.store.select.i = select i1 %cmp38.not.i, i32 %inc37.i, i32 0
  %inc42.i = add nuw nsw i32 %works.096.i, 1
  %exitcond.not.i = icmp eq i32 %inc42.i, %budget
  br i1 %exitcond.not.i, label %cleanup.i.while.end.i_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.end.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %rd_curr.0.lcssa.i = phi i32 [ %spec.store.select.i, %cleanup.i.while.end.i_crit_edge ], [ %rd_curr.093.i, %while.body.i.while.end.i_crit_edge ], [ %rd_curr.093.i, %if.end.i.while.end.i_crit_edge ]
  %works.0.lcssa.i = phi i32 [ %budget, %cleanup.i.while.end.i_crit_edge ], [ %works.096.i, %while.body.i.while.end.i_crit_edge ], [ %works.096.i, %if.end.i.while.end.i_crit_edge ]
  %102 = ptrtoint ptr %curr.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %rd_curr.0.lcssa.i, ptr %curr.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %works.0.lcssa.i)
  %cmp45.i = icmp sgt i32 %works.0.lcssa.i, 0
  br i1 %cmp45.i, label %land.lhs.true.i, label %while.end.i.velocity_rx_srv.exit_crit_edge

while.end.i.velocity_rx_srv.exit_crit_edge:       ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_rx_srv.exit

land.lhs.true.i:                                  ; preds = %while.end.i
  %call47.i = tail call fastcc i32 @velocity_rx_refill(ptr noundef %add.ptr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %cmp48.i = icmp sgt i32 %call47.i, 0
  br i1 %cmp48.i, label %if.then50.i, label %land.lhs.true.i.velocity_rx_srv.exit_crit_edge

land.lhs.true.i.velocity_rx_srv.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_rx_srv.exit

if.then50.i:                                      ; preds = %land.lhs.true.i
  %mac_regs.i.i = getelementptr i8, ptr %napi, i32 -1256
  %103 = ptrtoint ptr %mac_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %mac_regs.i.i, align 8
  %filled.i.i = getelementptr i8, ptr %napi, i32 -1132
  %105 = ptrtoint ptr %filled.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %filled.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %106)
  %cmp.i.i = icmp ult i32 %106, 4
  br i1 %cmp.i.i, label %if.then50.i.velocity_rx_srv.exit_crit_edge, label %do.body.i.i

if.then50.i.velocity_rx_srv.exit_crit_edge:       ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_rx_srv.exit

do.body.i.i:                                      ; preds = %if.then50.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !273
  tail call void @arm_heavy_mb() #15
  %107 = ptrtoint ptr %filled.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %filled.i.i, align 4
  %and.i79.i = and i32 %108, 3
  %and7.i.i = and i32 %108, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool.not37.i.i = icmp eq i32 %and7.i.i, 0
  br i1 %tobool.not37.i.i, label %do.body.i.i.do.body13.i.i_crit_edge, label %for.body.lr.ph.i.i

do.body.i.i.do.body13.i.i_crit_edge:              ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body13.i.i

for.body.lr.ph.i.i:                               ; preds = %do.body.i.i
  %dirty4.i.i = getelementptr i8, ptr %napi, i32 -1140
  %109 = ptrtoint ptr %dirty4.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dirty4.i.i, align 4
  %sub.i80.i = sub i32 %110, %and.i79.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cond.end.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %dirty.039.i.i = phi i32 [ %sub.i80.i, %for.body.lr.ph.i.i ], [ %cond.i.i, %cond.end.i.i.for.body.i.i_crit_edge ]
  %avail.038.i.i = phi i32 [ %and7.i.i, %for.body.lr.ph.i.i ], [ %dec.i.i, %cond.end.i.i.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dirty.039.i.i)
  %cmp8.i.i = icmp sgt i32 %dirty.039.i.i, 0
  br i1 %cmp8.i.i, label %for.body.i.i.cond.end.i.i_crit_edge, label %cond.false.i.i

for.body.i.i.cond.end.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %111 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %options.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %for.body.i.i.cond.end.i.i_crit_edge
  %cond.in.i.i = phi i32 [ %112, %cond.false.i.i ], [ %dirty.039.i.i, %for.body.i.i.cond.end.i.i_crit_edge ]
  %cond.i.i = add i32 %cond.in.i.i, -1
  %113 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %ring.i, align 8
  %len.i82.i = getelementptr %struct.rx_desc, ptr %114, i32 %cond.i.i, i32 0, i32 1
  %115 = ptrtoint ptr %len.i82.i to i32
  call void @__asan_loadN_noabort(i32 %115, i32 2)
  %116 = load i16, ptr %len.i82.i, align 1
  %117 = or i16 %116, 128
  store i16 %117, ptr %len.i82.i, align 1
  %dec.i.i = add nsw i32 %avail.038.i.i, -1
  %tobool.not.i83.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i83.i, label %cond.end.i.i.do.body13.i.i_crit_edge, label %cond.end.i.i.for.body.i.i_crit_edge

cond.end.i.i.for.body.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

cond.end.i.i.do.body13.i.i_crit_edge:             ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body13.i.i

do.body13.i.i:                                    ; preds = %cond.end.i.i.do.body13.i.i_crit_edge, %do.body.i.i.do.body13.i.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !274
  tail call void @arm_heavy_mb() #15
  %118 = ptrtoint ptr %filled.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %filled.i.i, align 4
  %120 = trunc i32 %119 to i16
  %conv19.i.i = and i16 %120, -4
  %121 = tail call i16 @llvm.bswap.i16(i16 %conv19.i.i) #15
  %RBRDU.i.i = getelementptr inbounds %struct.mac_regs, ptr %104, i32 0, i32 30
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %RBRDU.i.i, i16 %121) #15, !srcloc !275
  %122 = ptrtoint ptr %filled.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %and.i79.i, ptr %filled.i.i, align 4
  br label %velocity_rx_srv.exit

velocity_rx_srv.exit:                             ; preds = %do.body13.i.i, %if.then50.i.velocity_rx_srv.exit_crit_edge, %land.lhs.true.i.velocity_rx_srv.exit_crit_edge, %while.end.i.velocity_rx_srv.exit_crit_edge, %entry.velocity_rx_srv.exit_crit_edge
  %works.0.lcssa105.i = phi i32 [ %works.0.lcssa.i, %do.body13.i.i ], [ %works.0.lcssa.i, %if.then50.i.velocity_rx_srv.exit_crit_edge ], [ %works.0.lcssa.i, %while.end.i.velocity_rx_srv.exit_crit_edge ], [ %works.0.lcssa.i, %land.lhs.true.i.velocity_rx_srv.exit_crit_edge ], [ 0, %entry.velocity_rx_srv.exit_crit_edge ]
  %lock = getelementptr i8, ptr %napi, i32 -884
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  tail call fastcc void @velocity_tx_srv(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_cmp4(i32 %works.0.lcssa105.i, i32 %budget)
  %cmp8 = icmp ult i32 %works.0.lcssa105.i, %budget
  br i1 %cmp8, label %if.then, label %velocity_rx_srv.exit.if.end_crit_edge

velocity_rx_srv.exit.if.end_crit_edge:            ; preds = %velocity_rx_srv.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %velocity_rx_srv.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %works.0.lcssa105.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !466
  tail call void @arm_heavy_mb() #15
  %mac_regs = getelementptr i8, ptr %napi, i32 -1256
  %123 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %mac_regs, align 8
  %CR0Set = getelementptr inbounds %struct.mac_regs, ptr %124, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Set, i32 2) #15, !srcloc !277
  br label %if.end

if.end:                                           ; preds = %if.then, %velocity_rx_srv.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #15
  ret i32 %works.0.lcssa105.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_get_link(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr i8, ptr %dev, i32 2840
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 8
  %PHYSR0 = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 39
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PHYSR0) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !464
  %3 = lshr i8 %2, 6
  %.lobit = and i8 %3, 1
  %4 = zext i8 %.lobit to i32
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @velocity_get_drvinfo(ptr nocapture noundef readonly %dev, ptr noundef %info) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call1 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.28, i32 noundef 32) #15
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call3 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.39, i32 noundef 32) #15
  %pdev = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 4
  %tobool.not = icmp eq ptr %1, null
  %bus_info8 = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %2 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.pci_name.exit_crit_edge

if.then.pci_name.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %if.then.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %5, %if.end.i.i ], [ %3, %if.then.pci_name.exit_crit_edge ]
  %call7 = tail call i32 @strlcpy(ptr noundef %bus_info8, ptr noundef %retval.0.i.i, i32 noundef 32) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = tail call i32 @strlcpy(ptr noundef %bus_info8, ptr noundef nonnull @.str.82, i32 noundef 32) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %pci_name.exit
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @velocity_ethtool_get_wol(ptr nocapture noundef readonly %dev, ptr nocapture noundef %wol) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %supported = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 1
  %0 = ptrtoint ptr %supported to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 51, ptr %supported, align 4
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %1 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %wolopts, align 4
  %or = or i32 %2, 32
  store i32 %or, ptr %wolopts, align 4
  %wol_opts = getelementptr i8, ptr %dev, i32 3256
  %3 = ptrtoint ptr %wol_opts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wol_opts, align 8
  %and = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %or2 = or i32 %2, 34
  %5 = ptrtoint ptr %wolopts to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or2, ptr %wolopts, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %wol_opts to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wol_opts, align 8
  %and4 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end9_crit_edge, label %if.then6

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wolopts, align 4
  %or8 = or i32 %9, 16
  store i32 %or8, ptr %wolopts, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %wol_passwd = getelementptr i8, ptr %dev, i32 3260
  %10 = call ptr @memcpy(ptr %sopass, ptr %wol_passwd, i32 6)
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @velocity_ethtool_set_wol(ptr nocapture noundef %dev, ptr nocapture noundef readonly %wol) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %wolopts = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 2
  %0 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %wolopts, align 4
  %and = and i32 %1, 51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %wol_opts = getelementptr i8, ptr %dev, i32 3256
  %2 = ptrtoint ptr %wol_opts to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %wol_opts, align 8
  %3 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wolopts, align 4
  %and2 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr i8, ptr %dev, i32 3180
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or6 = or i32 %6, 524288
  store i32 %or6, ptr %flags, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %7 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %wolopts, align 4
  %and9 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end7.if.end16_crit_edge, label %if.then11

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %9 = ptrtoint ptr %wol_opts to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %wol_opts, align 8
  %or13 = or i32 %10, 4
  store i32 %or13, ptr %wol_opts, align 8
  %flags14 = getelementptr i8, ptr %dev, i32 3180
  %11 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags14, align 4
  %or15 = or i32 %12, 524288
  store i32 %or15, ptr %flags14, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %if.end7.if.end16_crit_edge
  %13 = ptrtoint ptr %wolopts to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wolopts, align 4
  %and18 = and i32 %14, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18)
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %if.end16.if.end25_crit_edge, label %if.then20

if.end16.if.end25_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then20:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %15 = ptrtoint ptr %wol_opts to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wol_opts, align 8
  %or22 = or i32 %16, 2
  store i32 %or22, ptr %wol_opts, align 8
  %flags23 = getelementptr i8, ptr %dev, i32 3180
  %17 = ptrtoint ptr %flags23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags23, align 4
  %or24 = or i32 %18, 524288
  store i32 %or24, ptr %flags23, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then20, %if.end16.if.end25_crit_edge
  %wol_passwd = getelementptr i8, ptr %dev, i32 3260
  %sopass = getelementptr inbounds %struct.ethtool_wolinfo, ptr %wol, i32 0, i32 3
  %19 = call ptr @memcpy(ptr %wol_passwd, ptr %sopass, i32 6)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end25 ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @velocity_get_coalesce(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ecmd, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_intsup = getelementptr i8, ptr %dev, i32 3164
  %0 = ptrtoint ptr %tx_intsup to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_intsup, align 4
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 6
  %2 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tx_max_coalesced_frames, align 4
  %rx_intsup = getelementptr i8, ptr %dev, i32 3168
  %3 = ptrtoint ptr %rx_intsup to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rx_intsup, align 4
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 2
  %5 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rx_max_coalesced_frames, align 4
  %rxqueue_timer = getelementptr i8, ptr %dev, i32 3156
  %6 = ptrtoint ptr %rxqueue_timer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rxqueue_timer, align 4
  %shr.i = ashr i32 %7, 6
  %switch.tableidx = add nsw i32 %shr.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %8 = icmp ult i32 %switch.tableidx, 3
  br i1 %8, label %switch.lookup, label %entry.get_pending_timer_val.exit_crit_edge

entry.get_pending_timer_val.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_pending_timer_val.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.velocity_get_coalesce, i32 0, i32 %switch.tableidx
  %9 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %9)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_pending_timer_val.exit

get_pending_timer_val.exit:                       ; preds = %switch.lookup, %entry.get_pending_timer_val.exit_crit_edge
  %mult.0.i = phi i32 [ 1, %entry.get_pending_timer_val.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %and.i = and i32 %7, 63
  %mul.i = mul nuw nsw i32 %mult.0.i, %and.i
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 1
  %10 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %mul.i, ptr %rx_coalesce_usecs, align 4
  %txqueue_timer = getelementptr i8, ptr %dev, i32 3160
  %11 = ptrtoint ptr %txqueue_timer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %txqueue_timer, align 4
  %shr.i12 = ashr i32 %12, 6
  %switch.tableidx21 = add nsw i32 %shr.i12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx21)
  %13 = icmp ult i32 %switch.tableidx21, 3
  br i1 %13, label %switch.lookup20, label %get_pending_timer_val.exit.get_pending_timer_val.exit19_crit_edge

get_pending_timer_val.exit.get_pending_timer_val.exit19_crit_edge: ; preds = %get_pending_timer_val.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %get_pending_timer_val.exit19

switch.lookup20:                                  ; preds = %get_pending_timer_val.exit
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep22 = getelementptr inbounds [3 x i32], ptr @switch.table.velocity_get_coalesce.87, i32 0, i32 %switch.tableidx21
  %14 = ptrtoint ptr %switch.gep22 to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load23 = load i32, ptr %switch.gep22, align 4
  br label %get_pending_timer_val.exit19

get_pending_timer_val.exit19:                     ; preds = %switch.lookup20, %get_pending_timer_val.exit.get_pending_timer_val.exit19_crit_edge
  %mult.0.i16 = phi i32 [ 1, %get_pending_timer_val.exit.get_pending_timer_val.exit19_crit_edge ], [ %switch.load23, %switch.lookup20 ]
  %and.i17 = and i32 %12, 63
  %mul.i18 = mul nuw nsw i32 %mult.0.i16, %and.i17
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 5
  %15 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %mul.i18, ptr %tx_coalesce_usecs, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_set_coalesce(ptr noundef %dev, ptr nocapture noundef readonly %ecmd, ptr nocapture noundef readnone %kernel_coal, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %tx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 5
  %0 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4032, i32 %1)
  %cmp = icmp ugt i32 %1, 4032
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 1
  %2 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4032, i32 %3)
  %cmp1 = icmp ugt i32 %3, 4032
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 6
  %4 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %5)
  %cmp4 = icmp ugt i32 %5, 255
  br i1 %cmp4, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %rx_max_coalesced_frames = getelementptr inbounds %struct.ethtool_coalesce, ptr %ecmd, i32 0, i32 2
  %6 = ptrtoint ptr %rx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rx_max_coalesced_frames, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %7)
  %cmp7 = icmp ugt i32 %7, 255
  br i1 %cmp7, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %rx_intsup = getelementptr i8, ptr %dev, i32 3168
  %8 = ptrtoint ptr %rx_intsup to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rx_intsup, align 4
  %9 = ptrtoint ptr %tx_max_coalesced_frames to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tx_max_coalesced_frames, align 4
  %tx_intsup = getelementptr i8, ptr %dev, i32 3164
  %11 = ptrtoint ptr %tx_intsup to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tx_intsup, align 4
  %rxqueue_timer = getelementptr i8, ptr %dev, i32 3156
  %12 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %13)
  %cmp.i = icmp ugt i32 %13, 62
  %spec.select.i = select i1 %cmp.i, i32 64, i32 0
  %spec.select11.i = select i1 %cmp.i, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 251, i32 %13)
  %cmp1.i = icmp ugt i32 %13, 251
  %mult.1.i = select i1 %cmp1.i, i32 128, i32 %spec.select.i
  %shift.1.i = select i1 %cmp1.i, i32 4, i32 %spec.select11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1007, i32 %13)
  %cmp4.i = icmp ugt i32 %13, 1007
  %mult.2.i = select i1 %cmp4.i, i32 192, i32 %mult.1.i
  %shift.2.i = select i1 %cmp4.i, i32 6, i32 %shift.1.i
  %shr.i = lshr i32 %13, %shift.2.i
  %and.i = and i32 %shr.i, 63
  %or.i = or i32 %and.i, %mult.2.i
  %14 = ptrtoint ptr %rxqueue_timer to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or.i, ptr %rxqueue_timer, align 4
  %txqueue_timer = getelementptr i8, ptr %dev, i32 3160
  %15 = ptrtoint ptr %tx_coalesce_usecs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_coalesce_usecs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %16)
  %cmp.i61 = icmp ugt i32 %16, 62
  %spec.select.i62 = select i1 %cmp.i61, i32 64, i32 0
  %spec.select11.i63 = select i1 %cmp.i61, i32 2, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 251, i32 %16)
  %cmp1.i64 = icmp ugt i32 %16, 251
  %mult.1.i65 = select i1 %cmp1.i64, i32 128, i32 %spec.select.i62
  %shift.1.i66 = select i1 %cmp1.i64, i32 4, i32 %spec.select11.i63
  call void @__sanitizer_cov_trace_const_cmp4(i32 1007, i32 %16)
  %cmp4.i67 = icmp ugt i32 %16, 1007
  %mult.2.i68 = select i1 %cmp4.i67, i32 192, i32 %mult.1.i65
  %shift.2.i69 = select i1 %cmp4.i67, i32 6, i32 %shift.1.i66
  %shr.i70 = lshr i32 %16, %shift.2.i69
  %and.i71 = and i32 %shr.i70, 63
  %or.i72 = or i32 %and.i71, %mult.2.i68
  %17 = ptrtoint ptr %txqueue_timer to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or.i72, ptr %txqueue_timer, align 4
  %lock = getelementptr i8, ptr %dev, i32 3212
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !467
  tail call void @arm_heavy_mb() #15
  %mac_regs = getelementptr i8, ptr %dev, i32 2840
  %18 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mac_regs, align 8
  %CR0Clr = getelementptr inbounds %struct.mac_regs, ptr %19, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Clr, i32 2) #15, !srcloc !277
  tail call fastcc void @setup_adaptive_interrupts(ptr noundef %add.ptr.i)
  %rev_id.i = getelementptr i8, ptr %dev, i32 4092
  %20 = ptrtoint ptr %rev_id.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %rev_id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %21)
  %cmp.i73 = icmp ugt i8 %21, 15
  br i1 %cmp.i73, label %if.then.i, label %if.end9.setup_queue_timers.exit_crit_edge

if.end9.setup_queue_timers.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %setup_queue_timers.exit

if.then.i:                                        ; preds = %if.end9
  %mii_status.i = getelementptr i8, ptr %dev, i32 3184
  %22 = ptrtoint ptr %mii_status.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mii_status.i, align 8
  %and.i74 = and i32 %23, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i74)
  %tobool.not.i = icmp eq i32 %and.i74, 0
  br i1 %tobool.not.i, label %if.then.i.do.body.i_crit_edge, label %if.then2.i

if.then.i.do.body.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %txqueue_timer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %txqueue_timer, align 4
  %conv4.i = trunc i32 %25 to i8
  %26 = ptrtoint ptr %rxqueue_timer to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rxqueue_timer, align 4
  %conv7.i = trunc i32 %27 to i8
  br label %do.body.i

do.body.i:                                        ; preds = %if.then2.i, %if.then.i.do.body.i_crit_edge
  %txqueue_timer.0.i = phi i8 [ %conv4.i, %if.then2.i ], [ 0, %if.then.i.do.body.i_crit_edge ]
  %rxqueue_timer.0.i = phi i8 [ %conv7.i, %if.then2.i ], [ 0, %if.then.i.do.body.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !369
  tail call void @arm_heavy_mb() #15
  %28 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %mac_regs, align 8
  %TQETMR.i = getelementptr inbounds %struct.mac_regs, ptr %29, i32 0, i32 23
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %TQETMR.i, i8 %txqueue_timer.0.i) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !370
  tail call void @arm_heavy_mb() #15
  %30 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mac_regs, align 8
  %RQETMR.i = getelementptr inbounds %struct.mac_regs, ptr %31, i32 0, i32 24
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %RQETMR.i, i8 %rxqueue_timer.0.i) #15, !srcloc !272
  br label %setup_queue_timers.exit

setup_queue_timers.exit:                          ; preds = %do.body.i, %if.end9.setup_queue_timers.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !468
  tail call void @arm_heavy_mb() #15
  %int_mask = getelementptr i8, ptr %dev, i32 3176
  %32 = ptrtoint ptr %int_mask to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %int_mask, align 8
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mac_regs, align 8
  %IMR = getelementptr inbounds %struct.mac_regs, ptr %36, i32 0, i32 13
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %IMR, i32 %34) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !469
  tail call void @arm_heavy_mb() #15
  %37 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mac_regs, align 8
  %ISR = getelementptr inbounds %struct.mac_regs, ptr %38, i32 0, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ISR, i32 -1) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !470
  tail call void @arm_heavy_mb() #15
  %39 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mac_regs, align 8
  %CR0Set = getelementptr inbounds %struct.mac_regs, ptr %40, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Set, i32 2) #15, !srcloc !277
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call20) #15
  br label %cleanup

cleanup:                                          ; preds = %setup_queue_timers.exit, %if.end6.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %setup_queue_timers.exit ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @velocity_get_strings(ptr nocapture noundef readnone %dev, i32 noundef %sset, ptr nocapture noundef writeonly %data) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = call ptr @memcpy(ptr %data, ptr @velocity_gstrings, i32 1024)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @velocity_get_ethtool_stats(ptr noundef %dev, ptr nocapture noundef readnone %stats, ptr nocapture noundef writeonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %lock = getelementptr i8, ptr %dev, i32 3212
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !305
  tail call void @arm_heavy_mb() #15
  %mac_regs.i = getelementptr i8, ptr %dev, i32 2840
  %2 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_regs.i, align 8
  %MIBCR.i = getelementptr inbounds %struct.mac_regs, ptr %3, i32 0, i32 56
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIBCR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !306
  %5 = or i8 %4, 4
  %6 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_regs.i, align 8
  %MIBCR6.i = getelementptr inbounds %struct.mac_regs, ptr %7, i32 0, i32 56
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIBCR6.i, i8 %5) #15, !srcloc !272
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.then
  %8 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac_regs.i, align 8
  %MIBCR12.i = getelementptr inbounds %struct.mac_regs, ptr %9, i32 0, i32 56
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIBCR12.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !307
  %11 = and i8 %10, 4
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %do.body18.i, label %while.cond.i.while.cond.i_crit_edge

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i

do.body18.i:                                      ; preds = %while.cond.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !308
  tail call void @arm_heavy_mb() #15
  %12 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mac_regs.i, align 8
  %MIBCR24.i = getelementptr inbounds %struct.mac_regs, ptr %13, i32 0, i32 56
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIBCR24.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !309
  %15 = or i8 %14, 2
  %16 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mac_regs.i, align 8
  %MIBCR32.i = getelementptr inbounds %struct.mac_regs, ptr %17, i32 0, i32 56
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %MIBCR32.i, i8 %15) #15, !srcloc !272
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %do.body18.i
  %i.051.i = phi i32 [ 0, %do.body18.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mac_regs.i, align 8
  %MIBData.i = getelementptr inbounds %struct.mac_regs, ptr %19, i32 0, i32 60
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %MIBData.i) #15, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !311
  %21 = and i32 %20, -256
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #15
  %arrayidx.i = getelementptr %struct.velocity_info, ptr %add.ptr.i, i32 0, i32 12, i32 %i.051.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %24, %22
  store i32 %add.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.051.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %velocity_update_hw_mibs.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

velocity_update_hw_mibs.exit:                     ; preds = %for.body.i
  %mib_counter = getelementptr i8, ptr %dev, i32 2980
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #15
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %velocity_update_hw_mibs.exit
  %i.011 = phi i32 [ 0, %velocity_update_hw_mibs.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %p.010 = phi ptr [ %mib_counter, %velocity_update_hw_mibs.exit ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %data.addr.09 = phi ptr [ %data, %velocity_update_hw_mibs.exit ], [ %incdec.ptr3, %for.body.for.body_crit_edge ]
  %incdec.ptr = getelementptr i32, ptr %p.010, i32 1
  %25 = ptrtoint ptr %p.010 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %p.010, align 4
  %conv = zext i32 %26 to i64
  %incdec.ptr3 = getelementptr i64, ptr %data.addr.09, i32 1
  %27 = ptrtoint ptr %data.addr.09 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv, ptr %data.addr.09, align 8
  %inc = add nuw nsw i32 %i.011, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_ethtool_up(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops_nesting = getelementptr i8, ptr %dev, i32 4088
  %0 = ptrtoint ptr %ethtool_ops_nesting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ethtool_ops_nesting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %inc = add nuw i32 %1, 1
  %2 = ptrtoint ptr %ethtool_ops_nesting to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %ethtool_ops_nesting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then3, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %land.lhs.true
  %pdev.i = getelementptr i8, ptr %dev, i32 2308
  %5 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @pci_set_power_state(ptr noundef nonnull %6, i32 noundef 0) #15
  br label %cleanup

do.body.i:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  %mac_regs.i = getelementptr i8, ptr %dev, i32 2840
  %7 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mac_regs.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !271
  tail call void @arm_heavy_mb() #15
  %add.ptr.i8 = getelementptr i8, ptr %8, i32 340
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i8, i8 0) #15, !srcloc !272
  br label %cleanup

cleanup:                                          ; preds = %do.body.i, %if.then.i, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.then.i ], [ 0, %do.body.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @velocity_ethtool_down(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ethtool_ops_nesting = getelementptr i8, ptr %dev, i32 4088
  %0 = ptrtoint ptr %ethtool_ops_nesting to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ethtool_ops_nesting, align 8
  %dec = add i32 %1, -1
  store i32 %dec, ptr %ethtool_ops_nesting, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %pdev.i = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @pci_set_power_state(ptr noundef nonnull %5, i32 noundef 3) #15
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %mac_regs.i = getelementptr i8, ptr %dev, i32 2840
  %6 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mac_regs.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !271
  tail call void @arm_heavy_mb() #15
  %add.ptr.i4 = getelementptr i8, ptr %7, i32 340
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i4, i8 3) #15, !srcloc !272
  br label %if.end

if.end:                                           ; preds = %do.body.i, %if.then.i, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @velocity_get_sset_count(ptr nocapture noundef readnone %dev, i32 noundef %sset) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 32, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_get_link_ksettings(ptr nocapture noundef readonly %dev, ptr noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr i8, ptr %dev, i32 2840
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 8
  %call2 = tail call fastcc i32 @check_connection_type(ptr noundef %1)
  %spd_dpx = getelementptr i8, ptr %dev, i32 3116
  %2 = ptrtoint ptr %spd_dpx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %spd_dpx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %4 = icmp ult i32 %3, 6
  br i1 %4, label %switch.lookup, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.velocity_get_link_ksettings, i32 0, i32 %3
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end

if.end:                                           ; preds = %switch.lookup, %entry.if.end_crit_edge
  %advertising.0 = phi i32 [ %switch.load, %switch.lookup ], [ 192, %entry.if.end_crit_edge ]
  %and = and i32 %call2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else15, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %6 = ptrtoint ptr %speed to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1000, ptr %speed, align 4
  br label %if.end25

if.else15:                                        ; preds = %if.end
  %and16 = and i32 %call2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %speed23 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  br i1 %tobool17.not, label %if.else21, label %if.then18

if.then18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %speed23 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 100, ptr %speed23, align 4
  br label %if.end25

if.else21:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %speed23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %speed23, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else21, %if.then18, %if.then14
  %9 = trunc i32 %call2 to i8
  %10 = lshr i8 %9, 5
  %11 = and i8 %10, 1
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %12 = ptrtoint ptr %autoneg to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %autoneg, align 1
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 3
  %13 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %port, align 1
  %MIIADR = getelementptr inbounds %struct.mac_regs, ptr %1, i32 0, i32 42
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %MIIADR) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !471
  %15 = and i8 %14, 31
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 4
  %16 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %phy_address, align 2
  %17 = trunc i32 %call2 to i8
  %18 = lshr i8 %17, 4
  %19 = and i8 %18, 1
  %20 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %19, ptr %20, align 4
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %link_modes, i32 noundef 255) #15
  %advertising46 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %cmd, i32 0, i32 1, i32 1
  tail call void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef %advertising46, i32 noundef %advertising.0) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_set_link_ksettings(ptr nocapture noundef %dev, ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %speed1 = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 1
  %0 = ptrtoint ptr %speed1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %speed1, align 4
  %mac_regs = getelementptr i8, ptr %dev, i32 2840
  %2 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_regs, align 8
  %call2 = tail call fastcc i32 @check_connection_type(ptr noundef %3)
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 5
  %4 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %autoneg, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not, i32 0, i32 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %1)
  %cmp = icmp eq i32 %1, 1000
  %cond5 = select i1 %cmp, i32 8, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %1)
  %cmp7 = icmp eq i32 %1, 100
  %cond9 = select i1 %cmp7, i32 4, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp11 = icmp eq i32 %1, 10
  %cond13 = select i1 %cmp11, i32 2, i32 0
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %cmd, i32 0, i32 2
  %6 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %7)
  %cmp17 = icmp eq i8 %7, 1
  %cond19 = select i1 %cmp17, i32 16, i32 0
  %or6 = or i32 %cond9, %cond5
  %or10 = or i32 %or6, %cond13
  %or14 = or i32 %or10, %cond
  %or20 = or i32 %or14, %cond19
  br i1 %tobool.not, label %if.else29, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %and = and i32 %call2, -34
  %or23 = or i32 %and, 32
  call void @__sanitizer_cov_trace_cmp4(i32 %or20, i32 %or23)
  %cmp24.not = icmp eq i32 %or20, %or23
  br i1 %cmp24.not, label %land.lhs.true.if.end53_crit_edge, label %land.lhs.true.cleanup57_crit_edge

land.lhs.true.cleanup57_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup57

land.lhs.true.if.end53_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.else29:                                        ; preds = %entry
  %8 = select i1 %cmp, i1 %cmp17, i1 false
  br i1 %8, label %if.else29.if.end53_crit_edge, label %if.else36

if.else29.if.end53_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.else36:                                        ; preds = %if.else29
  br i1 %cmp7, label %if.then39, label %if.else43

if.then39:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #17
  %cond42 = select i1 %cmp17, i32 2, i32 1
  br label %if.end53

if.else43:                                        ; preds = %if.else36
  br i1 %cmp11, label %if.then46, label %if.else43.cleanup57_crit_edge

if.else43.cleanup57_crit_edge:                    ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup57

if.then46:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #17
  %cond49 = select i1 %cmp17, i32 4, i32 3
  br label %if.end53

if.end53:                                         ; preds = %if.then46, %if.then39, %if.else29.if.end53_crit_edge, %land.lhs.true.if.end53_crit_edge
  %spd_dpx.0 = phi i32 [ %cond42, %if.then39 ], [ %cond49, %if.then46 ], [ 5, %if.else29.if.end53_crit_edge ], [ 0, %land.lhs.true.if.end53_crit_edge ]
  %spd_dpx54 = getelementptr i8, ptr %dev, i32 3116
  %9 = ptrtoint ptr %spd_dpx54 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %spd_dpx.0, ptr %spd_dpx54, align 4
  tail call fastcc void @velocity_set_media_mode(ptr noundef %add.ptr.i, i32 noundef %or20)
  br label %cleanup57

cleanup57:                                        ; preds = %if.end53, %if.else43.cleanup57_crit_edge, %land.lhs.true.cleanup57_crit_edge
  %retval.1 = phi i32 [ -95, %if.else43.cleanup57_crit_edge ], [ -22, %land.lhs.true.cleanup57_crit_edge ], [ 0, %if.end53 ]
  ret i32 %retval.1
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @ethtool_convert_legacy_u32_to_link_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @velocity_tx_srv(ptr nocapture noundef %vptr) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 2
  %tx = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 10
  %0 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp15 = icmp sgt i32 %1, 0
  br i1 %cmp15, label %for.body.lr.ph, label %entry.for.end78_crit_edge

entry.for.end78_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end78

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev, align 8
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 5
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 7
  %tx_heartbeat_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 19
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 17
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 16
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 20
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 1
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 36, i32 3
  %numtx = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 13, i32 1
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %works.019 = phi i32 [ 0, %for.body.lr.ph ], [ %works.2, %for.end.for.body_crit_edge ]
  %full.018 = phi i32 [ 0, %for.body.lr.ph ], [ %spec.select, %for.end.for.body_crit_edge ]
  %qnum.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc77, %for.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.velocity_info, ptr %vptr, i32 0, i32 10, i32 3, i32 %qnum.016
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx9 = getelementptr %struct.velocity_info, ptr %vptr, i32 0, i32 10, i32 4, i32 %qnum.016
  %arrayidx5 = getelementptr %struct.velocity_info, ptr %vptr, i32 0, i32 10, i32 1, i32 %qnum.016
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp62 = icmp sgt i32 %7, 0
  br i1 %cmp62, label %for.body7.lr.ph, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body7.lr.ph:                                  ; preds = %for.body
  %arrayidx12 = getelementptr %struct.velocity_info, ptr %vptr, i32 0, i32 10, i32 5, i32 %qnum.016
  %smax = call i32 @llvm.smax.i32(i32 %works.019, i32 16)
  %8 = add nuw i32 %smax, 1
  %9 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx9, align 4
  %arrayidx1023 = getelementptr %struct.tx_desc, ptr %10, i32 %5
  %len25 = getelementptr inbounds %struct.tdesc0, ptr %arrayidx1023, i32 0, i32 1
  %11 = ptrtoint ptr %len25 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %len25, align 2
  %13 = and i16 %12, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool.not26 = icmp eq i16 %13, 0
  br i1 %tobool.not26, label %if.end.lr.ph, label %for.body7.lr.ph.for.end_crit_edge

for.body7.lr.ph.for.end_crit_edge:                ; preds = %for.body7.lr.ph
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end.lr.ph:                                     ; preds = %for.body7.lr.ph
  %14 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx12, align 4
  %arrayidx1324 = getelementptr %struct.velocity_td_info, ptr %15, i32 %5
  br label %if.end

for.body7:                                        ; preds = %velocity_free_tx_buf.exit
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx9, align 4
  %arrayidx10 = getelementptr %struct.tx_desc, ptr %17, i32 %rem
  %18 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx12, align 4
  %arrayidx13 = getelementptr %struct.velocity_td_info, ptr %19, i32 %rem
  %len = getelementptr inbounds %struct.tdesc0, ptr %arrayidx10, i32 0, i32 1
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %len, align 2
  %22 = and i16 %21, 128
  %tobool.not = icmp eq i16 %22, 0
  br i1 %tobool.not, label %for.body7.if.end_crit_edge, label %for.body7.for.end_crit_edge

for.body7.for.end_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body7.if.end_crit_edge:                       ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %for.body7.if.end_crit_edge, %if.end.lr.ph
  %arrayidx1331 = phi ptr [ %arrayidx1324, %if.end.lr.ph ], [ %arrayidx13, %for.body7.if.end_crit_edge ]
  %23 = phi ptr [ %15, %if.end.lr.ph ], [ %19, %for.body7.if.end_crit_edge ]
  %arrayidx1029 = phi ptr [ %arrayidx1023, %if.end.lr.ph ], [ %arrayidx10, %for.body7.if.end_crit_edge ]
  %24 = phi ptr [ %10, %if.end.lr.ph ], [ %17, %for.body7.if.end_crit_edge ]
  %idx.0328 = phi i32 [ %5, %if.end.lr.ph ], [ %rem, %for.body7.if.end_crit_edge ]
  %works.1527 = phi i32 [ %works.019, %if.end.lr.ph ], [ %inc, %for.body7.if.end_crit_edge ]
  %25 = phi i32 [ %7, %if.end.lr.ph ], [ %dec, %for.body7.if.end_crit_edge ]
  %inc = add i32 %works.1527, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %works.1527, i32 %smax)
  %exitcond = icmp eq i32 %works.1527, %smax
  br i1 %exitcond, label %if.end.for.end_crit_edge, label %if.end17

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end17:                                         ; preds = %if.end
  %26 = ptrtoint ptr %arrayidx1029 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %arrayidx1029, align 2
  %28 = and i16 %27, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool21.not = icmp eq i16 %28, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end17
  %29 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tx_errors, align 4
  %inc23 = add i32 %30, 1
  store i32 %inc23, ptr %tx_errors, align 4
  %31 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_dropped, align 4
  %inc24 = add i32 %32, 1
  store i32 %inc24, ptr %tx_dropped, align 4
  %33 = ptrtoint ptr %arrayidx1029 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx1029, align 2
  %35 = and i16 %34, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %35)
  %tobool29.not = icmp eq i16 %35, 0
  br i1 %tobool29.not, label %if.then22.if.end32_crit_edge, label %if.then30

if.then22.if.end32_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then30:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  %36 = ptrtoint ptr %tx_heartbeat_errors to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tx_heartbeat_errors, align 4
  %inc31 = add i32 %37, 1
  store i32 %inc31, ptr %tx_heartbeat_errors, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.then22.if.end32_crit_edge
  %38 = ptrtoint ptr %arrayidx1029 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx1029, align 2
  %40 = and i16 %39, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool37.not = icmp eq i16 %40, 0
  br i1 %tobool37.not, label %if.end32.if.end40_crit_edge, label %if.then38

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end40

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_carrier_errors, align 4
  %inc39 = add i32 %42, 1
  store i32 %inc39, ptr %tx_carrier_errors, align 4
  %43 = ptrtoint ptr %arrayidx1029 to i32
  call void @__asan_load2_noabort(i32 %43)
  %.pr = load i16, ptr %arrayidx1029, align 2
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end32.if.end40_crit_edge
  %44 = phi i16 [ %.pr, %if.then38 ], [ %39, %if.end32.if.end40_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %44)
  %tobool45.not = icmp sgt i16 %44, -1
  br i1 %tobool45.not, label %if.end40.if.end48_crit_edge, label %if.then46

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end48

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %45 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %tx_aborted_errors, align 4
  %inc47 = add i32 %46, 1
  store i32 %inc47, ptr %tx_aborted_errors, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %if.end40.if.end48_crit_edge
  %47 = ptrtoint ptr %arrayidx1029 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %arrayidx1029, align 2
  %49 = and i16 %48, 8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool53.not = icmp eq i16 %49, 0
  br i1 %tobool53.not, label %if.end48.if.end59_crit_edge, label %if.end48.if.end59.sink.split_crit_edge

if.end48.if.end59.sink.split_crit_edge:           ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59.sink.split

if.end48.if.end59_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.else:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tx_packets, align 4
  %inc57 = add i32 %51, 1
  store i32 %inc57, ptr %tx_packets, align 4
  %52 = ptrtoint ptr %arrayidx1331 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx1331, align 4
  %len58 = getelementptr inbounds %struct.sk_buff, ptr %53, i32 0, i32 6
  %54 = ptrtoint ptr %len58 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len58, align 4
  br label %if.end59.sink.split

if.end59.sink.split:                              ; preds = %if.else, %if.end48.if.end59.sink.split_crit_edge
  %tx_window_errors.sink22 = phi ptr [ %tx_bytes, %if.else ], [ %tx_window_errors, %if.end48.if.end59.sink.split_crit_edge ]
  %.sink21 = phi i32 [ %55, %if.else ], [ 1, %if.end48.if.end59.sink.split_crit_edge ]
  %56 = ptrtoint ptr %tx_window_errors.sink22 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %tx_window_errors.sink22, align 4
  %inc55 = add i32 %57, %.sink21
  store i32 %inc55, ptr %tx_window_errors.sink22, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %if.end48.if.end59_crit_edge
  %58 = ptrtoint ptr %arrayidx1331 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx1331, align 4
  %nskb_dma.i = getelementptr %struct.velocity_td_info, ptr %23, i32 %idx.0328, i32 1
  %60 = ptrtoint ptr %nskb_dma.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nskb_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp30.i = icmp sgt i32 %61, 0
  br i1 %cmp30.i, label %for.body.lr.ph.i, label %if.end59.velocity_free_tx_buf.exit_crit_edge

if.end59.velocity_free_tx_buf.exit_crit_edge:     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_free_tx_buf.exit

for.body.lr.ph.i:                                 ; preds = %if.end59
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 6
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 17
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.031.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %62 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %len.i, align 4
  %64 = tail call i32 @llvm.umax.i32(i32 %63, i32 60) #15
  %65 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %nr_frags.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp3.not.i = icmp eq i8 %68, 0
  br i1 %cmp3.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %size.i = getelementptr %struct.tx_desc, ptr %24, i32 %idx.0328, i32 2, i32 %i.031.i, i32 2
  %69 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %size.i, align 2
  %71 = and i16 %70, -129
  %and.i = zext i16 %71 to i32
  %72 = tail call i32 @llvm.umax.i32(i32 %64, i32 %and.i) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %pktlen.0.i = phi i32 [ %72, %if.then.i ], [ %64, %for.body.i.if.end.i_crit_edge ]
  %73 = ptrtoint ptr %vptr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vptr, align 8
  %arrayidx13.i = getelementptr %struct.velocity_td_info, ptr %23, i32 %idx.0328, i32 2, i32 %i.031.i
  %75 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx13.i, align 4
  %conv14.i = trunc i32 %pktlen.0.i to i16
  %77 = tail call i16 @llvm.bswap.i16(i16 %conv14.i) #15
  %conv15.i = zext i16 %77 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %74, i32 noundef %76, i32 noundef %conv15.i, i32 noundef 1, i32 noundef 0) #15
  %inc.i = add nuw nsw i32 %i.031.i, 1
  %78 = ptrtoint ptr %nskb_dma.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nskb_dma.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %79
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.velocity_free_tx_buf.exit_crit_edge

if.end.i.velocity_free_tx_buf.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_free_tx_buf.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

velocity_free_tx_buf.exit:                        ; preds = %if.end.i.velocity_free_tx_buf.exit_crit_edge, %if.end59.velocity_free_tx_buf.exit_crit_edge
  tail call void @__dev_kfree_skb_irq(ptr noundef %59, i32 noundef 0) #15
  %80 = ptrtoint ptr %arrayidx1331 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %arrayidx1331, align 4
  %81 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %arrayidx5, align 4
  %dec = add i32 %82, -1
  store i32 %dec, ptr %arrayidx5, align 4
  %add63 = add i32 %idx.0328, 1
  %83 = ptrtoint ptr %numtx to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %numtx, align 4
  %rem = srem i32 %add63, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp6 = icmp sgt i32 %dec, 0
  br i1 %cmp6, label %for.body7, label %velocity_free_tx_buf.exit.for.end_crit_edge

velocity_free_tx_buf.exit.for.end_crit_edge:      ; preds = %velocity_free_tx_buf.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %velocity_free_tx_buf.exit.for.end_crit_edge, %if.end.for.end_crit_edge, %for.body7.for.end_crit_edge, %for.body7.lr.ph.for.end_crit_edge, %for.body.for.end_crit_edge
  %idx.0.lcssa = phi i32 [ %5, %for.body.for.end_crit_edge ], [ %5, %for.body7.lr.ph.for.end_crit_edge ], [ %rem, %velocity_free_tx_buf.exit.for.end_crit_edge ], [ %rem, %for.body7.for.end_crit_edge ], [ %idx.0328, %if.end.for.end_crit_edge ]
  %.lcssa = phi i32 [ %7, %for.body.for.end_crit_edge ], [ %7, %for.body7.lr.ph.for.end_crit_edge ], [ %dec, %velocity_free_tx_buf.exit.for.end_crit_edge ], [ %dec, %for.body7.for.end_crit_edge ], [ %25, %if.end.for.end_crit_edge ]
  %works.2 = phi i32 [ %works.019, %for.body.for.end_crit_edge ], [ %works.019, %for.body7.lr.ph.for.end_crit_edge ], [ %inc, %velocity_free_tx_buf.exit.for.end_crit_edge ], [ %inc, %for.body7.for.end_crit_edge ], [ %8, %if.end.for.end_crit_edge ]
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %idx.0.lcssa, ptr %arrayidx, align 4
  %86 = ptrtoint ptr %numtx to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %numtx, align 4
  %sub = sub i32 %87, %.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub)
  %cmp72 = icmp slt i32 %sub, 1
  %spec.select = select i1 %cmp72, i32 1, i32 %full.018
  %inc77 = add nuw nsw i32 %qnum.016, 1
  %88 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx, align 4
  %cmp = icmp slt i32 %inc77, %89
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end78.loopexit

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end78.loopexit:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %phi.cmp = icmp eq i32 %spec.select, 0
  br label %for.end78

for.end78:                                        ; preds = %for.end78.loopexit, %entry.for.end78_crit_edge
  %full.0.lcssa = phi i1 [ true, %entry.for.end78_crit_edge ], [ %phi.cmp, %for.end78.loopexit ]
  %90 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %netdev, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %91, i32 0, i32 103
  %92 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %93, i32 0, i32 13
  %94 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %95, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i = icmp ne i32 %and1.i.i.i, 0
  %or.cond = select i1 %tobool.i.i, i1 %full.0.lcssa, i1 false
  br i1 %or.cond, label %land.lhs.true83, label %for.end78.if.end88_crit_edge

for.end78.if.end88_crit_edge:                     ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

land.lhs.true83:                                  ; preds = %for.end78
  %mii_status = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 16
  %96 = ptrtoint ptr %mii_status to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mii_status, align 8
  %and84 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.then86, label %land.lhs.true83.if.end88_crit_edge

land.lhs.true83.if.end88_crit_edge:               ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end88

if.then86:                                        ; preds = %land.lhs.true83
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netif_tx_wake_queue(ptr noundef %93) #15
  br label %if.end88

if.end88:                                         ; preds = %if.then86, %land.lhs.true83.if.end88_crit_edge, %for.end78.if.end88_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  %w.i = alloca i16, align 2
  %w87.i = alloca i16, align 2
  %w103.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %netdev2 = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev2, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @netif_device_detach(ptr noundef %3) #15
  %lock = getelementptr i8, ptr %1, i32 3212
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %pdev = getelementptr i8, ptr %1, i32 2308
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %if.then10

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call12 = tail call i32 @pci_save_state(ptr noundef nonnull %7) #15
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.end.if.end13_crit_edge
  %flags14 = getelementptr i8, ptr %1, i32 3180
  %8 = ptrtoint ptr %flags14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags14, align 4
  %and = and i32 %9, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end13
  tail call fastcc void @velocity_get_ip(ptr noundef %add.ptr.i)
  %context = getelementptr i8, ptr %1, i32 3268
  tail call fastcc void @velocity_save_context(ptr noundef %add.ptr.i, ptr noundef %context)
  tail call fastcc void @velocity_shutdown(ptr noundef %add.ptr.i)
  %mac_regs.i = getelementptr i8, ptr %1, i32 2840
  %10 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mac_regs.i, align 8
  %spd_dpx1.i = getelementptr i8, ptr %1, i32 3116
  %12 = ptrtoint ptr %spd_dpx1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spd_dpx1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !472
  tail call void @arm_heavy_mb() #15
  %WOLCRClr.i = getelementptr inbounds %struct.mac_regs, ptr %11, i32 0, i32 82
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %WOLCRClr.i, i16 -1) #15, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !473
  tail call void @arm_heavy_mb() #15
  %WOLCFGSet.i = getelementptr inbounds %struct.mac_regs, ptr %11, i32 0, i32 81
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %WOLCFGSet.i, i8 48) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !474
  tail call void @arm_heavy_mb() #15
  %WOLCRSet.i = getelementptr inbounds %struct.mac_regs, ptr %11, i32 0, i32 79
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %WOLCRSet.i, i16 2) #15, !srcloc !275
  %wol_opts.i = getelementptr i8, ptr %1, i32 3256
  %14 = ptrtoint ptr %wol_opts.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %wol_opts.i, align 8
  %and.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then16.if.end.i_crit_edge, label %do.body8.i

if.then16.if.end.i_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

do.body8.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !475
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %WOLCRSet.i, i16 1) #15, !srcloc !275
  br label %if.end.i

if.end.i:                                         ; preds = %do.body8.i, %if.then16.if.end.i_crit_edge
  %16 = ptrtoint ptr %wol_opts.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wol_opts.i, align 8
  %and13.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.end.i.do.body32.i_crit_edge, label %if.then15.i

if.end.i.do.body32.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body32.i

if.then15.i:                                      ; preds = %if.end.i
  %18 = call ptr @memset(ptr @velocity_set_wol.buf, i32 0, i32 49)
  %ByteMask.i = getelementptr inbounds %struct.mac_regs, ptr %11, i32 0, i32 90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !476
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ByteMask.i, i32 3153920) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !476
  tail call void @arm_heavy_mb() #15
  %arrayidx20.1.i = getelementptr %struct.mac_regs, ptr %11, i32 0, i32 90, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx20.1.i, i32 -1073545216) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !476
  tail call void @arm_heavy_mb() #15
  %arrayidx20.2.i = getelementptr %struct.mac_regs, ptr %11, i32 0, i32 90, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx20.2.i, i32 0) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !476
  tail call void @arm_heavy_mb() #15
  %arrayidx20.3.i = getelementptr %struct.mac_regs, ptr %11, i32 0, i32 90, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %arrayidx20.3.i, i32 0) #15, !srcloc !277
  store i16 2054, ptr getelementptr inbounds ([256 x i8], ptr @velocity_set_wol.buf, i32 0, i32 12), align 1
  store i16 1, ptr getelementptr inbounds ([256 x i8], ptr @velocity_set_wol.buf, i32 0, i32 20), align 1
  %ip_addr.i = getelementptr i8, ptr %1, i32 2832
  %19 = ptrtoint ptr %ip_addr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ip_addr.i, align 8
  store i32 %20, ptr getelementptr inbounds ([256 x i8], ptr @velocity_set_wol.buf, i32 0, i32 38), align 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc18.i.i.for.body.i.i_crit_edge, %if.then15.i
  %crc.08.i.i = phi i16 [ -1, %if.then15.i ], [ %crc.3.i.i, %for.inc18.i.i.for.body.i.i_crit_edge ]
  %i.06.i.i = phi i32 [ 0, %if.then15.i ], [ %inc19.i.i, %for.inc18.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr i8, ptr @velocity_set_wol.mask_pattern, i32 %i.06.i.i
  %21 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp1.i.i = icmp eq i8 %22, 0
  br i1 %cmp1.i.i, label %for.body.i.i.for.inc18.i.i_crit_edge, label %for.cond3.preheader.i.i

for.body.i.i.for.inc18.i.i_crit_edge:             ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc18.i.i

for.cond3.preheader.i.i:                          ; preds = %for.body.i.i
  %mul.i.i = shl i32 %i.06.i.i, 3
  %23 = and i8 %22, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp8.i.i = icmp eq i8 %23, 0
  br i1 %cmp8.i.i, label %for.cond3.preheader.i.i.for.inc.i.i_crit_edge, label %if.end13.i.i

for.cond3.preheader.i.i.for.inc.i.i_crit_edge:    ; preds = %for.cond3.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.end13.i.i:                                     ; preds = %for.cond3.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %arrayidx17.i.i = getelementptr i8, ptr @velocity_set_wol.buf, i32 %mul.i.i
  %call.i.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext %crc.08.i.i, ptr noundef %arrayidx17.i.i, i32 noundef 1) #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end13.i.i, %for.cond3.preheader.i.i.for.inc.i.i_crit_edge
  %crc.2.i.i = phi i16 [ %call.i.i, %if.end13.i.i ], [ %crc.08.i.i, %for.cond3.preheader.i.i.for.inc.i.i_crit_edge ]
  %24 = and i8 %22, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp8.1.i.i = icmp eq i8 %24, 0
  br i1 %cmp8.1.i.i, label %for.inc.i.i.for.inc.1.i.i_crit_edge, label %if.end13.1.i.i

for.inc.i.i.for.inc.1.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1.i.i

if.end13.1.i.i:                                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.1.i.i = or i32 %mul.i.i, 1
  %arrayidx17.1.i.i = getelementptr i8, ptr @velocity_set_wol.buf, i32 %add.1.i.i
  %call.1.i.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext %crc.2.i.i, ptr noundef %arrayidx17.1.i.i, i32 noundef 1) #15
  br label %for.inc.1.i.i

for.inc.1.i.i:                                    ; preds = %if.end13.1.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge
  %crc.2.1.i.i = phi i16 [ %call.1.i.i, %if.end13.1.i.i ], [ %crc.2.i.i, %for.inc.i.i.for.inc.1.i.i_crit_edge ]
  %25 = and i8 %22, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp8.2.i.i = icmp eq i8 %25, 0
  br i1 %cmp8.2.i.i, label %for.inc.1.i.i.for.inc.2.i.i_crit_edge, label %if.end13.2.i.i

for.inc.1.i.i.for.inc.2.i.i_crit_edge:            ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2.i.i

if.end13.2.i.i:                                   ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.2.i.i = or i32 %mul.i.i, 2
  %arrayidx17.2.i.i = getelementptr i8, ptr @velocity_set_wol.buf, i32 %add.2.i.i
  %call.2.i.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext %crc.2.1.i.i, ptr noundef %arrayidx17.2.i.i, i32 noundef 1) #15
  br label %for.inc.2.i.i

for.inc.2.i.i:                                    ; preds = %if.end13.2.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge
  %crc.2.2.i.i = phi i16 [ %call.2.i.i, %if.end13.2.i.i ], [ %crc.2.1.i.i, %for.inc.1.i.i.for.inc.2.i.i_crit_edge ]
  %26 = and i8 %22, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp8.3.i.i = icmp eq i8 %26, 0
  br i1 %cmp8.3.i.i, label %for.inc.2.i.i.for.inc.3.i.i_crit_edge, label %if.end13.3.i.i

for.inc.2.i.i.for.inc.3.i.i_crit_edge:            ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3.i.i

if.end13.3.i.i:                                   ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.3.i.i = or i32 %mul.i.i, 3
  %arrayidx17.3.i.i = getelementptr i8, ptr @velocity_set_wol.buf, i32 %add.3.i.i
  %call.3.i.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext %crc.2.2.i.i, ptr noundef %arrayidx17.3.i.i, i32 noundef 1) #15
  br label %for.inc.3.i.i

for.inc.3.i.i:                                    ; preds = %if.end13.3.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge
  %crc.2.3.i.i = phi i16 [ %call.3.i.i, %if.end13.3.i.i ], [ %crc.2.2.i.i, %for.inc.2.i.i.for.inc.3.i.i_crit_edge ]
  %27 = and i8 %22, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp8.4.i.i = icmp eq i8 %27, 0
  br i1 %cmp8.4.i.i, label %for.inc.3.i.i.for.inc.4.i.i_crit_edge, label %if.end13.4.i.i

for.inc.3.i.i.for.inc.4.i.i_crit_edge:            ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.4.i.i

if.end13.4.i.i:                                   ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.4.i.i = or i32 %mul.i.i, 4
  %arrayidx17.4.i.i = getelementptr i8, ptr @velocity_set_wol.buf, i32 %add.4.i.i
  %call.4.i.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext %crc.2.3.i.i, ptr noundef %arrayidx17.4.i.i, i32 noundef 1) #15
  br label %for.inc.4.i.i

for.inc.4.i.i:                                    ; preds = %if.end13.4.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge
  %crc.2.4.i.i = phi i16 [ %call.4.i.i, %if.end13.4.i.i ], [ %crc.2.3.i.i, %for.inc.3.i.i.for.inc.4.i.i_crit_edge ]
  %28 = and i8 %22, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp8.5.i.i = icmp eq i8 %28, 0
  br i1 %cmp8.5.i.i, label %for.inc.4.i.i.for.inc.5.i.i_crit_edge, label %if.end13.5.i.i

for.inc.4.i.i.for.inc.5.i.i_crit_edge:            ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.5.i.i

if.end13.5.i.i:                                   ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.5.i.i = or i32 %mul.i.i, 5
  %arrayidx17.5.i.i = getelementptr i8, ptr @velocity_set_wol.buf, i32 %add.5.i.i
  %call.5.i.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext %crc.2.4.i.i, ptr noundef %arrayidx17.5.i.i, i32 noundef 1) #15
  br label %for.inc.5.i.i

for.inc.5.i.i:                                    ; preds = %if.end13.5.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge
  %crc.2.5.i.i = phi i16 [ %call.5.i.i, %if.end13.5.i.i ], [ %crc.2.4.i.i, %for.inc.4.i.i.for.inc.5.i.i_crit_edge ]
  %29 = and i8 %22, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp8.6.i.i = icmp eq i8 %29, 0
  br i1 %cmp8.6.i.i, label %for.inc.5.i.i.for.inc.6.i.i_crit_edge, label %if.end13.6.i.i

for.inc.5.i.i.for.inc.6.i.i_crit_edge:            ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.6.i.i

if.end13.6.i.i:                                   ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.6.i.i = or i32 %mul.i.i, 6
  %arrayidx17.6.i.i = getelementptr i8, ptr @velocity_set_wol.buf, i32 %add.6.i.i
  %call.6.i.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext %crc.2.5.i.i, ptr noundef %arrayidx17.6.i.i, i32 noundef 1) #15
  br label %for.inc.6.i.i

for.inc.6.i.i:                                    ; preds = %if.end13.6.i.i, %for.inc.5.i.i.for.inc.6.i.i_crit_edge
  %crc.2.6.i.i = phi i16 [ %call.6.i.i, %if.end13.6.i.i ], [ %crc.2.5.i.i, %for.inc.5.i.i.for.inc.6.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %22)
  %cmp8.7.i.i = icmp sgt i8 %22, -1
  br i1 %cmp8.7.i.i, label %for.inc.6.i.i.for.inc18.i.i_crit_edge, label %if.end13.7.i.i

for.inc.6.i.i.for.inc18.i.i_crit_edge:            ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc18.i.i

if.end13.7.i.i:                                   ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.7.i.i = or i32 %mul.i.i, 7
  %arrayidx17.7.i.i = getelementptr i8, ptr @velocity_set_wol.buf, i32 %add.7.i.i
  %call.7.i.i = tail call zeroext i16 @crc_ccitt(i16 noundef zeroext %crc.2.6.i.i, ptr noundef %arrayidx17.7.i.i, i32 noundef 1) #15
  br label %for.inc18.i.i

for.inc18.i.i:                                    ; preds = %if.end13.7.i.i, %for.inc.6.i.i.for.inc18.i.i_crit_edge, %for.body.i.i.for.inc18.i.i_crit_edge
  %crc.3.i.i = phi i16 [ %crc.08.i.i, %for.body.i.i.for.inc18.i.i_crit_edge ], [ %call.7.i.i, %if.end13.7.i.i ], [ %crc.2.6.i.i, %for.inc.6.i.i.for.inc18.i.i_crit_edge ]
  %inc19.i.i = add nuw nsw i32 %i.06.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc19.i.i, 6
  br i1 %exitcond.not.i.i, label %wol_calc_crc.exit.i, label %for.inc18.i.i.for.body.i.i_crit_edge

for.inc18.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc18.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

wol_calc_crc.exit.i:                              ; preds = %for.inc18.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %neg.i.i = xor i16 %crc.3.i.i, -1
  %conv23.i.i = zext i16 %neg.i.i to i32
  %30 = lshr i32 %conv23.i.i, 8
  %arrayidx.i10.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx.i10.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i10.i.i.i.i, align 1
  %conv6.i.i.i.i = zext i8 %32 to i16
  %33 = and i32 %conv23.i.i, 255
  %arrayidx.i.i.i.i.i = getelementptr [256 x i8], ptr @byte_rev_table, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  %conv2.i.i.i.i = zext i8 %35 to i16
  %36 = shl nuw i16 %conv2.i.i.i.i, 8
  %shl.i.i.i = or i16 %36, %conv6.i.i.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !477
  tail call void @arm_heavy_mb() #15
  %37 = tail call i16 @llvm.bswap.i16(i16 %shl.i.i.i) #15
  %PatternCRC.i = getelementptr inbounds %struct.mac_regs, ptr %11, i32 0, i32 89
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %PatternCRC.i, i16 %37) #15, !srcloc !275
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !478
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %WOLCRSet.i, i16 256) #15, !srcloc !275
  br label %do.body32.i

do.body32.i:                                      ; preds = %wol_calc_crc.exit.i, %if.end.i.do.body32.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !479
  tail call void @arm_heavy_mb() #15
  %PWCFGSet.i = getelementptr inbounds %struct.mac_regs, ptr %11, i32 0, i32 80
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PWCFGSet.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !480
  %39 = or i8 %38, 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %PWCFGSet.i, i8 %39) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !481
  tail call void @arm_heavy_mb() #15
  %40 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %PWCFGSet.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !482
  %41 = or i8 %40, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %PWCFGSet.i, i8 %41) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !483
  tail call void @arm_heavy_mb() #15
  %WOLSRClr.i = getelementptr inbounds %struct.mac_regs, ptr %11, i32 0, i32 87
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %WOLSRClr.i, i16 -241) #15, !srcloc !275
  %42 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %13, label %do.body32.i.do.body115.i_crit_edge [
    i32 5, label %do.body32.i.velocity_set_wol.exit_crit_edge
    i32 0, label %if.end67.i
  ]

do.body32.i.velocity_set_wol.exit_crit_edge:      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %velocity_set_wol.exit

do.body32.i.do.body115.i_crit_edge:               ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body115.i

if.end67.i:                                       ; preds = %do.body32.i
  %mii_status.i = getelementptr i8, ptr %1, i32 3184
  %43 = ptrtoint ptr %mii_status.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %mii_status.i, align 8
  %and68.i = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %if.end67.i.if.end97.i_crit_edge, label %if.then70.i

if.end67.i.if.end97.i_crit_edge:                  ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end97.i

if.then70.i:                                      ; preds = %if.end67.i
  %phy_id.i = getelementptr i8, ptr %1, i32 3188
  %45 = ptrtoint ptr %phy_id.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %phy_id.i, align 4
  %and71.i = and i32 %46, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1033232, i32 %and71.i)
  %cmp72.i = icmp eq i32 %and71.i, 1033232
  br i1 %cmp72.i, label %do.body75.i, label %if.then70.i.do.body86.i_crit_edge

if.then70.i.do.body86.i_crit_edge:                ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body86.i

do.body75.i:                                      ; preds = %if.then70.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w.i) #15
  %47 = ptrtoint ptr %w.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 -1, ptr %w.i, align 2, !annotation !312
  %48 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mac_regs.i, align 8
  %call77.i = call fastcc i32 @velocity_mii_read(ptr noundef %49, i8 noundef zeroext 28, ptr noundef nonnull %w.i) #15
  %50 = ptrtoint ptr %w.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %w.i, align 2
  %52 = or i16 %51, 4
  %53 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mac_regs.i, align 8
  %call82.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %54, i8 noundef zeroext 28, i16 noundef zeroext %52) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w.i) #15
  br label %do.body86.i

do.body86.i:                                      ; preds = %do.body75.i, %if.then70.i.do.body86.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w87.i) #15
  %55 = ptrtoint ptr %w87.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 -1, ptr %w87.i, align 2, !annotation !312
  %56 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mac_regs.i, align 8
  %call89.i = call fastcc i32 @velocity_mii_read(ptr noundef %57, i8 noundef zeroext 9, ptr noundef nonnull %w87.i) #15
  %58 = ptrtoint ptr %w87.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %w87.i, align 2
  %60 = and i16 %59, -769
  %61 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %mac_regs.i, align 8
  %call94.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %62, i8 noundef zeroext 9, i16 noundef zeroext %60) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w87.i) #15
  br label %if.end97.i

if.end97.i:                                       ; preds = %do.body86.i, %if.end67.i.if.end97.i_crit_edge
  %63 = ptrtoint ptr %mii_status.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %mii_status.i, align 8
  %and99.i = and i32 %64, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99.i)
  %tobool100.not.i = icmp eq i32 %and99.i, 0
  br i1 %tobool100.not.i, label %if.end97.i.do.body115.i_crit_edge, label %do.body102.i

if.end97.i.do.body115.i_crit_edge:                ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body115.i

do.body102.i:                                     ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %w103.i) #15
  %65 = ptrtoint ptr %w103.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -1, ptr %w103.i, align 2, !annotation !312
  %66 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mac_regs.i, align 8
  %call105.i = call fastcc i32 @velocity_mii_read(ptr noundef %67, i8 noundef zeroext 0, ptr noundef nonnull %w103.i) #15
  %68 = ptrtoint ptr %w103.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %w103.i, align 2
  %70 = or i16 %69, 512
  %71 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mac_regs.i, align 8
  %call110.i = tail call fastcc i32 @velocity_mii_write(ptr noundef %72, i8 noundef zeroext 0, i16 noundef zeroext %70) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %w103.i) #15
  br label %do.body115.i

do.body115.i:                                     ; preds = %do.body102.i, %if.end97.i.do.body115.i_crit_edge, %do.body32.i.do.body115.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !484
  tail call void @arm_heavy_mb() #15
  %CHIPGCR.i = getelementptr inbounds %struct.mac_regs, ptr %11, i32 0, i32 78
  %73 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CHIPGCR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !485
  %74 = or i8 %73, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CHIPGCR.i, i8 %74) #15, !srcloc !272
  %75 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %CHIPGCR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !486
  %76 = and i8 %75, 63
  %77 = or i8 %76, 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !487
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %CHIPGCR.i, i8 %77) #15, !srcloc !272
  br label %velocity_set_wol.exit

velocity_set_wol.exit:                            ; preds = %do.body115.i, %do.body32.i.velocity_set_wol.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !488
  tail call void @arm_heavy_mb() #15
  %ISR.i = getelementptr inbounds %struct.mac_regs, ptr %11, i32 0, i32 12
  %78 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %ISR.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !489
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %ISR.i, i8 %78) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !490
  tail call void @arm_heavy_mb() #15
  %STICKHW.i = getelementptr inbounds %struct.mac_regs, ptr %11, i32 0, i32 55
  %79 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %STICKHW.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !491
  %80 = or i8 %79, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %STICKHW.i, i8 %80) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !492
  tail call void @arm_heavy_mb() #15
  %81 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %STICKHW.i) #15, !srcloc !285
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !493
  %82 = or i8 %81, 3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %STICKHW.i, i8 %82) #15, !srcloc !272
  %83 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %pdev, align 4
  %tobool20.not = icmp eq ptr %84, null
  br i1 %tobool20.not, label %velocity_set_wol.exit.do.body.i_crit_edge, label %if.end24

velocity_set_wol.exit.do.body.i_crit_edge:        ; preds = %velocity_set_wol.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

if.end24:                                         ; preds = %velocity_set_wol.exit
  %call23 = tail call i32 @pci_enable_wake(ptr noundef nonnull %84, i32 noundef 3, i1 noundef zeroext true) #15
  %85 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pr = load ptr, ptr %pdev, align 4
  %tobool.not.i57 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i57, label %if.end24.do.body.i_crit_edge, label %if.then.i

if.end24.do.body.i_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

if.then.i:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @pci_set_power_state(ptr noundef nonnull %.pr, i32 noundef 3) #15
  br label %if.end31

do.body.i:                                        ; preds = %if.end24.do.body.i_crit_edge, %velocity_set_wol.exit.do.body.i_crit_edge
  %86 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %mac_regs.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !271
  tail call void @arm_heavy_mb() #15
  %add.ptr.i59 = getelementptr i8, ptr %87, i32 340
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i59, i8 3) #15, !srcloc !272
  br label %if.end31

if.else:                                          ; preds = %if.end13
  %context25 = getelementptr i8, ptr %1, i32 3268
  tail call fastcc void @velocity_save_context(ptr noundef %add.ptr.i, ptr noundef %context25)
  tail call fastcc void @velocity_shutdown(ptr noundef %add.ptr.i)
  %88 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdev, align 4
  %tobool27.not = icmp eq ptr %89, null
  br i1 %tobool27.not, label %if.else.do.body.i67_crit_edge, label %if.end30

if.else.do.body.i67_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i67

if.end30:                                         ; preds = %if.else
  tail call void @pci_disable_device(ptr noundef nonnull %89) #15
  %90 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr71 = load ptr, ptr %pdev, align 4
  %tobool.not.i62 = icmp eq ptr %.pr71, null
  br i1 %tobool.not.i62, label %if.end30.do.body.i67_crit_edge, label %if.then.i64

if.end30.do.body.i67_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i67

if.then.i64:                                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  %call.i63 = tail call i32 @pci_set_power_state(ptr noundef nonnull %.pr71, i32 noundef 3) #15
  br label %if.end31

do.body.i67:                                      ; preds = %if.end30.do.body.i67_crit_edge, %if.else.do.body.i67_crit_edge
  %mac_regs.i65 = getelementptr i8, ptr %1, i32 2840
  %91 = ptrtoint ptr %mac_regs.i65 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %mac_regs.i65, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !271
  tail call void @arm_heavy_mb() #15
  %add.ptr.i66 = getelementptr i8, ptr %92, i32 340
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i66, i8 3) #15, !srcloc !272
  br label %if.end31

if.end31:                                         ; preds = %do.body.i67, %if.then.i64, %do.body.i, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %netdev2 = getelementptr i8, ptr %1, i32 2312
  %2 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev2, align 8
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev.i = getelementptr i8, ptr %1, i32 2308
  %6 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call.i = tail call i32 @pci_set_power_state(ptr noundef nonnull %7, i32 noundef 0) #15
  br label %velocity_set_power_state.exit

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %mac_regs.i = getelementptr i8, ptr %1, i32 2840
  %8 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mac_regs.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !271
  tail call void @arm_heavy_mb() #15
  %add.ptr.i59 = getelementptr i8, ptr %9, i32 340
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i59, i8 0) #15, !srcloc !272
  br label %velocity_set_power_state.exit

velocity_set_power_state.exit:                    ; preds = %do.body.i, %if.then.i
  %10 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev.i, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %velocity_set_power_state.exit.if.end8_crit_edge, label %if.then4

velocity_set_power_state.exit.if.end8_crit_edge:  ; preds = %velocity_set_power_state.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then4:                                         ; preds = %velocity_set_power_state.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call6 = tail call i32 @pci_enable_wake(ptr noundef nonnull %11, i32 noundef 0, i1 noundef zeroext false) #15
  %12 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev.i, align 4
  tail call void @pci_restore_state(ptr noundef %13) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then4, %velocity_set_power_state.exit.if.end8_crit_edge
  %mac_regs = getelementptr i8, ptr %1, i32 2840
  %14 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mac_regs, align 8
  tail call fastcc void @mac_wol_reset(ptr noundef %15)
  %lock = getelementptr i8, ptr %1, i32 3212
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %context = getelementptr i8, ptr %1, i32 3268
  %16 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mac_regs, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !494
  tail call void @arm_heavy_mb() #15
  %18 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %context, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %20) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !494
  tail call void @arm_heavy_mb() #15
  %add.ptr.1.i = getelementptr i8, ptr %1, i32 3272
  %21 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.1.i, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #15
  %add.ptr1.1.i = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.1.i, i32 %23) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !495
  tail call void @arm_heavy_mb() #15
  %add.ptr10.i = getelementptr i8, ptr %1, i32 3277
  %24 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr10.i, align 1
  %neg.i = xor i8 %25, -1
  %add.ptr12.i = getelementptr i8, ptr %17, i32 9
  %add.ptr13.i = getelementptr i8, ptr %17, i32 13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.i, i8 %neg.i) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !496
  tail call void @arm_heavy_mb() #15
  %26 = ptrtoint ptr %add.ptr10.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr10.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.i, i8 %27) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !495
  tail call void @arm_heavy_mb() #15
  %add.ptr10.1.i = getelementptr i8, ptr %1, i32 3278
  %28 = ptrtoint ptr %add.ptr10.1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr10.1.i, align 1
  %neg.1.i = xor i8 %29, -1
  %add.ptr12.1.i = getelementptr i8, ptr %17, i32 10
  %add.ptr13.1.i = getelementptr i8, ptr %17, i32 14
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.1.i, i8 %neg.1.i) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !496
  tail call void @arm_heavy_mb() #15
  %30 = ptrtoint ptr %add.ptr10.1.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %add.ptr10.1.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.1.i, i8 %31) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !495
  tail call void @arm_heavy_mb() #15
  %add.ptr10.2.i = getelementptr i8, ptr %1, i32 3279
  %32 = ptrtoint ptr %add.ptr10.2.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr10.2.i, align 1
  %neg.2.i = xor i8 %33, -1
  %add.ptr12.2.i = getelementptr i8, ptr %17, i32 11
  %add.ptr13.2.i = getelementptr i8, ptr %17, i32 15
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr13.2.i, i8 %neg.2.i) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !496
  tail call void @arm_heavy_mb() #15
  %34 = ptrtoint ptr %add.ptr10.2.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr10.2.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr12.2.i, i8 %35) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !497
  tail call void @arm_heavy_mb() #15
  %add.ptr32.i = getelementptr i8, ptr %1, i32 3284
  %36 = ptrtoint ptr %add.ptr32.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr32.i, align 4
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #15
  %add.ptr33.i = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.i, i32 %38) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !497
  tail call void @arm_heavy_mb() #15
  %add.ptr32.1.i = getelementptr i8, ptr %1, i32 3288
  %39 = ptrtoint ptr %add.ptr32.1.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr32.1.i, align 4
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #15
  %add.ptr33.1.i = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.1.i, i32 %41) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !497
  tail call void @arm_heavy_mb() #15
  %add.ptr32.2.i = getelementptr i8, ptr %1, i32 3292
  %42 = ptrtoint ptr %add.ptr32.2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr32.2.i, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #15
  %add.ptr33.2.i = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.2.i, i32 %44) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !497
  tail call void @arm_heavy_mb() #15
  %add.ptr32.3.i = getelementptr i8, ptr %1, i32 3296
  %45 = ptrtoint ptr %add.ptr32.3.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %add.ptr32.3.i, align 4
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #15
  %add.ptr33.3.i = getelementptr i8, ptr %17, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.3.i, i32 %47) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !497
  tail call void @arm_heavy_mb() #15
  %add.ptr32.4.i = getelementptr i8, ptr %1, i32 3300
  %48 = ptrtoint ptr %add.ptr32.4.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr32.4.i, align 4
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #15
  %add.ptr33.4.i = getelementptr i8, ptr %17, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.4.i, i32 %50) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !497
  tail call void @arm_heavy_mb() #15
  %add.ptr32.5.i = getelementptr i8, ptr %1, i32 3304
  %51 = ptrtoint ptr %add.ptr32.5.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %add.ptr32.5.i, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #15
  %add.ptr33.5.i = getelementptr i8, ptr %17, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33.5.i, i32 %53) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !498
  tail call void @arm_heavy_mb() #15
  %add.ptr46.i = getelementptr i8, ptr %1, i32 3324
  %54 = ptrtoint ptr %add.ptr46.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %add.ptr46.i, align 4
  %56 = tail call i32 @llvm.bswap.i32(i32 %55) #15
  %add.ptr47.i = getelementptr i8, ptr %17, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.i, i32 %56) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !498
  tail call void @arm_heavy_mb() #15
  %add.ptr46.1.i = getelementptr i8, ptr %1, i32 3328
  %57 = ptrtoint ptr %add.ptr46.1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr46.1.i, align 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %58) #15
  %add.ptr47.1.i = getelementptr i8, ptr %17, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.1.i, i32 %59) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !498
  tail call void @arm_heavy_mb() #15
  %add.ptr46.2.i = getelementptr i8, ptr %1, i32 3332
  %60 = ptrtoint ptr %add.ptr46.2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %add.ptr46.2.i, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61) #15
  %add.ptr47.2.i = getelementptr i8, ptr %17, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.2.i, i32 %62) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !498
  tail call void @arm_heavy_mb() #15
  %add.ptr46.3.i = getelementptr i8, ptr %1, i32 3336
  %63 = ptrtoint ptr %add.ptr46.3.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %add.ptr46.3.i, align 4
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #15
  %add.ptr47.3.i = getelementptr i8, ptr %17, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.3.i, i32 %65) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !498
  tail call void @arm_heavy_mb() #15
  %add.ptr46.4.i = getelementptr i8, ptr %1, i32 3340
  %66 = ptrtoint ptr %add.ptr46.4.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr46.4.i, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #15
  %add.ptr47.4.i = getelementptr i8, ptr %17, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.4.i, i32 %68) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !498
  tail call void @arm_heavy_mb() #15
  %add.ptr46.5.i = getelementptr i8, ptr %1, i32 3344
  %69 = ptrtoint ptr %add.ptr46.5.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %add.ptr46.5.i, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70) #15
  %add.ptr47.5.i = getelementptr i8, ptr %17, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.5.i, i32 %71) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !498
  tail call void @arm_heavy_mb() #15
  %add.ptr46.6.i = getelementptr i8, ptr %1, i32 3348
  %72 = ptrtoint ptr %add.ptr46.6.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %add.ptr46.6.i, align 4
  %74 = tail call i32 @llvm.bswap.i32(i32 %73) #15
  %add.ptr47.6.i = getelementptr i8, ptr %17, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.6.i, i32 %74) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !498
  tail call void @arm_heavy_mb() #15
  %add.ptr46.7.i = getelementptr i8, ptr %1, i32 3352
  %75 = ptrtoint ptr %add.ptr46.7.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr46.7.i, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #15
  %add.ptr47.7.i = getelementptr i8, ptr %17, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.7.i, i32 %77) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !498
  tail call void @arm_heavy_mb() #15
  %add.ptr46.8.i = getelementptr i8, ptr %1, i32 3356
  %78 = ptrtoint ptr %add.ptr46.8.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr46.8.i, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #15
  %add.ptr47.8.i = getelementptr i8, ptr %17, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.8.i, i32 %80) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !498
  tail call void @arm_heavy_mb() #15
  %add.ptr46.9.i = getelementptr i8, ptr %1, i32 3360
  %81 = ptrtoint ptr %add.ptr46.9.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %add.ptr46.9.i, align 4
  %83 = tail call i32 @llvm.bswap.i32(i32 %82) #15
  %add.ptr47.9.i = getelementptr i8, ptr %17, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr47.9.i, i32 %83) #15, !srcloc !277
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !499
  tail call void @arm_heavy_mb() #15
  %add.ptr60.i = getelementptr i8, ptr %1, i32 3316
  %84 = ptrtoint ptr %add.ptr60.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %add.ptr60.i, align 1
  %add.ptr61.i = getelementptr i8, ptr %17, i32 48
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr61.i, i8 %85) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !499
  tail call void @arm_heavy_mb() #15
  %add.ptr60.1.i = getelementptr i8, ptr %1, i32 3317
  %86 = ptrtoint ptr %add.ptr60.1.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %add.ptr60.1.i, align 1
  %add.ptr61.1.i = getelementptr i8, ptr %17, i32 49
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr61.1.i, i8 %87) #15, !srcloc !272
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !499
  tail call void @arm_heavy_mb() #15
  %add.ptr60.2.i = getelementptr i8, ptr %1, i32 3318
  %88 = ptrtoint ptr %add.ptr60.2.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %add.ptr60.2.i, align 1
  %add.ptr61.2.i = getelementptr i8, ptr %17, i32 50
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr61.2.i, i8 %89) #15, !srcloc !272
  tail call fastcc void @velocity_init_registers(ptr noundef %add.ptr.i, i32 noundef 2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !500
  tail call void @arm_heavy_mb() #15
  %90 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mac_regs, align 8
  %CR0Clr = getelementptr inbounds %struct.mac_regs, ptr %91, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Clr, i32 2) #15, !srcloc !277
  tail call fastcc void @velocity_tx_srv(ptr noundef %add.ptr.i)
  %tx = getelementptr i8, ptr %1, i32 2852
  %92 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %cmp1961 = icmp sgt i32 %93, 0
  br i1 %cmp1961, label %if.end8.for.body_crit_edge, label %if.end8.do.body30_crit_edge

if.end8.do.body30_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body30

if.end8.for.body_crit_edge:                       ; preds = %if.end8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end8.for.body_crit_edge
  %i.062 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end8.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.velocity_info, ptr %add.ptr.i, i32 0, i32 10, i32 1, i32 %i.062
  %94 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool22.not = icmp eq i32 %95, 0
  br i1 %tobool22.not, label %for.body.for.inc_crit_edge, label %do.body24

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

do.body24:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !501
  tail call void @arm_heavy_mb() #15
  %mul = shl i32 %i.062, 2
  %shl = shl i32 4, %mul
  %conv27 = trunc i32 %shl to i16
  %96 = tail call i16 @llvm.bswap.i16(i16 %conv27)
  %97 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %mac_regs, align 8
  %TDCSRSet = getelementptr inbounds %struct.mac_regs, ptr %98, i32 0, i32 15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %TDCSRSet, i16 %96) #15, !srcloc !275
  br label %for.inc

for.inc:                                          ; preds = %do.body24, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.062, 1
  %99 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %tx, align 4
  %cmp19 = icmp slt i32 %inc, %100
  br i1 %cmp19, label %for.inc.for.body_crit_edge, label %for.inc.do.body30_crit_edge

for.inc.do.body30_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body30

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.body30:                                        ; preds = %for.inc.do.body30_crit_edge, %if.end8.do.body30_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !502
  tail call void @arm_heavy_mb() #15
  %101 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %mac_regs, align 8
  %CR0Set = getelementptr inbounds %struct.mac_regs, ptr %102, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %CR0Set, i32 2) #15, !srcloc !277
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #15
  %103 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %netdev2, align 8
  tail call void @netif_device_attach(ptr noundef %104) #15
  br label %cleanup

cleanup:                                          ; preds = %do.body30, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @velocity_save_context(ptr nocapture noundef readonly %vptr, ptr nocapture noundef writeonly %context) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mac_regs = getelementptr inbounds %struct.velocity_info, ptr %vptr, i32 0, i32 7
  %0 = ptrtoint ptr %mac_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mac_regs, align 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #15, !srcloc !310
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !503
  %4 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %context, align 4
  %add.ptr.1 = getelementptr i8, ptr %1, i32 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #15, !srcloc !310
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !503
  %add.ptr5.1 = getelementptr i8, ptr %context, i32 4
  %7 = ptrtoint ptr %add.ptr5.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %add.ptr5.1, align 4
  %add.ptr.2 = getelementptr i8, ptr %1, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.2) #15, !srcloc !310
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !503
  %add.ptr5.2 = getelementptr i8, ptr %context, i32 8
  %10 = ptrtoint ptr %add.ptr5.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %add.ptr5.2, align 4
  %add.ptr16 = getelementptr i8, ptr %1, i32 16
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #15, !srcloc !310
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !504
  %add.ptr23 = getelementptr i8, ptr %context, i32 16
  %13 = ptrtoint ptr %add.ptr23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %add.ptr23, align 4
  %add.ptr16.1 = getelementptr i8, ptr %1, i32 20
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.1) #15, !srcloc !310
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !504
  %add.ptr23.1 = getelementptr i8, ptr %context, i32 20
  %16 = ptrtoint ptr %add.ptr23.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %add.ptr23.1, align 4
  %add.ptr16.2 = getelementptr i8, ptr %1, i32 24
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.2) #15, !srcloc !310
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !504
  %add.ptr23.2 = getelementptr i8, ptr %context, i32 24
  %19 = ptrtoint ptr %add.ptr23.2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %add.ptr23.2, align 4
  %add.ptr16.3 = getelementptr i8, ptr %1, i32 28
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.3) #15, !srcloc !310
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !504
  %add.ptr23.3 = getelementptr i8, ptr %context, i32 28
  %22 = ptrtoint ptr %add.ptr23.3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %add.ptr23.3, align 4
  %add.ptr16.4 = getelementptr i8, ptr %1, i32 32
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.4) #15, !srcloc !310
  %24 = tail call i32 @llvm.bswap.i32(i32 %23)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !504
  %add.ptr23.4 = getelementptr i8, ptr %context, i32 32
  %25 = ptrtoint ptr %add.ptr23.4 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %add.ptr23.4, align 4
  %add.ptr16.5 = getelementptr i8, ptr %1, i32 36
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.5) #15, !srcloc !310
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !504
  %add.ptr23.5 = getelementptr i8, ptr %context, i32 36
  %28 = ptrtoint ptr %add.ptr23.5 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %add.ptr23.5, align 4
  %add.ptr16.6 = getelementptr i8, ptr %1, i32 40
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.6) #15, !srcloc !310
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !504
  %add.ptr23.6 = getelementptr i8, ptr %context, i32 40
  %31 = ptrtoint ptr %add.ptr23.6 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %add.ptr23.6, align 4
  %add.ptr16.7 = getelementptr i8, ptr %1, i32 44
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.7) #15, !srcloc !310
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !504
  %add.ptr23.7 = getelementptr i8, ptr %context, i32 44
  %34 = ptrtoint ptr %add.ptr23.7 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %add.ptr23.7, align 4
  %add.ptr16.8 = getelementptr i8, ptr %1, i32 48
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.8) #15, !srcloc !310
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !504
  %add.ptr23.8 = getelementptr i8, ptr %context, i32 48
  %37 = ptrtoint ptr %add.ptr23.8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %add.ptr23.8, align 4
  %add.ptr37 = getelementptr i8, ptr %1, i32 56
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #15, !srcloc !310
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !505
  %add.ptr44 = getelementptr i8, ptr %context, i32 56
  %40 = ptrtoint ptr %add.ptr44 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %add.ptr44, align 4
  %add.ptr37.1 = getelementptr i8, ptr %1, i32 60
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.1) #15, !srcloc !310
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !505
  %add.ptr44.1 = getelementptr i8, ptr %context, i32 60
  %43 = ptrtoint ptr %add.ptr44.1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %add.ptr44.1, align 4
  %add.ptr37.2 = getelementptr i8, ptr %1, i32 64
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.2) #15, !srcloc !310
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !505
  %add.ptr44.2 = getelementptr i8, ptr %context, i32 64
  %46 = ptrtoint ptr %add.ptr44.2 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %add.ptr44.2, align 4
  %add.ptr37.3 = getelementptr i8, ptr %1, i32 68
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.3) #15, !srcloc !310
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !505
  %add.ptr44.3 = getelementptr i8, ptr %context, i32 68
  %49 = ptrtoint ptr %add.ptr44.3 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %add.ptr44.3, align 4
  %add.ptr37.4 = getelementptr i8, ptr %1, i32 72
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.4) #15, !srcloc !310
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !505
  %add.ptr44.4 = getelementptr i8, ptr %context, i32 72
  %52 = ptrtoint ptr %add.ptr44.4 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %add.ptr44.4, align 4
  %add.ptr37.5 = getelementptr i8, ptr %1, i32 76
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.5) #15, !srcloc !310
  %54 = tail call i32 @llvm.bswap.i32(i32 %53)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !505
  %add.ptr44.5 = getelementptr i8, ptr %context, i32 76
  %55 = ptrtoint ptr %add.ptr44.5 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %add.ptr44.5, align 4
  %add.ptr37.6 = getelementptr i8, ptr %1, i32 80
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.6) #15, !srcloc !310
  %57 = tail call i32 @llvm.bswap.i32(i32 %56)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !505
  %add.ptr44.6 = getelementptr i8, ptr %context, i32 80
  %58 = ptrtoint ptr %add.ptr44.6 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %add.ptr44.6, align 4
  %add.ptr37.7 = getelementptr i8, ptr %1, i32 84
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.7) #15, !srcloc !310
  %60 = tail call i32 @llvm.bswap.i32(i32 %59)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !505
  %add.ptr44.7 = getelementptr i8, ptr %context, i32 84
  %61 = ptrtoint ptr %add.ptr44.7 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %add.ptr44.7, align 4
  %add.ptr37.8 = getelementptr i8, ptr %1, i32 88
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.8) #15, !srcloc !310
  %63 = tail call i32 @llvm.bswap.i32(i32 %62)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !505
  %add.ptr44.8 = getelementptr i8, ptr %context, i32 88
  %64 = ptrtoint ptr %add.ptr44.8 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %add.ptr44.8, align 4
  %add.ptr37.9 = getelementptr i8, ptr %1, i32 92
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37.9) #15, !srcloc !310
  %66 = tail call i32 @llvm.bswap.i32(i32 %65)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !505
  %add.ptr44.9 = getelementptr i8, ptr %context, i32 92
  %67 = ptrtoint ptr %add.ptr44.9 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %add.ptr44.9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc_ccitt(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_platform_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call2 = tail call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call7 = tail call fastcc i32 @velocity_probe(ptr noundef %dev, i32 noundef %call2, ptr noundef nonnull %call, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @velocity_platform_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #15
  %napi.i = getelementptr i8, ptr %1, i32 4096
  tail call void @__netif_napi_del(ptr noundef %napi.i) #15
  tail call void @synchronize_net() #15
  %mac_regs.i = getelementptr i8, ptr %1, i32 2840
  %2 = ptrtoint ptr %mac_regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mac_regs.i, align 8
  tail call void @iounmap(ptr noundef %3) #15
  tail call void @free_netdev(ptr noundef %1) #15
  %4 = load i32, ptr @velocity_nics, align 4
  %dec.i = add i32 %4, -1
  store i32 %dec.i, ptr @velocity_nics, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_notifier(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 111)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !44, !46, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !75, !77, !79, !81, !82, !83, !84, !85, !86, !87, !89, !91, !92, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !124, !125, !127, !128, !129, !131, !132, !134, !135, !137, !139, !141, !143, !144, !145, !146, !148, !150, !152, !153, !154, !155, !156, !158, !159, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !177, !178, !180, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !195, !196, !197, !198, !200, !201, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !236, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257}
!llvm.named.register.sp = !{!259}
!llvm.module.flags = !{!260, !261, !262, !263, !264, !265, !266, !267}
!llvm.ident = !{!268}

!0 = !{ptr @__UNIQUE_ID_author482, !1, !"__UNIQUE_ID_author482", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 254, i32 1}
!2 = !{ptr @__UNIQUE_ID_file483, !3, !"__UNIQUE_ID_file483", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 255, i32 1}
!4 = !{ptr @__UNIQUE_ID_license484, !3, !"__UNIQUE_ID_license484", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description485, !6, !"__UNIQUE_ID_description485", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 256, i32 1}
!7 = !{ptr @__param_RxDescriptors, !8, !"__param_RxDescriptors", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 266, i32 1}
!9 = !{ptr @__UNIQUE_ID_RxDescriptorstype486, !8, !"__UNIQUE_ID_RxDescriptorstype486", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_RxDescriptors487, !8, !"__UNIQUE_ID_RxDescriptors487", i1 false, i1 false}
!11 = !{ptr @__param_TxDescriptors, !12, !"__param_TxDescriptors", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 271, i32 1}
!13 = !{ptr @__UNIQUE_ID_TxDescriptorstype488, !12, !"__UNIQUE_ID_TxDescriptorstype488", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_TxDescriptors489, !12, !"__UNIQUE_ID_TxDescriptors489", i1 false, i1 false}
!15 = !{ptr @__param_rx_thresh, !16, !"__param_rx_thresh", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 282, i32 1}
!17 = !{ptr @__UNIQUE_ID_rx_threshtype490, !16, !"__UNIQUE_ID_rx_threshtype490", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_rx_thresh491, !16, !"__UNIQUE_ID_rx_thresh491", i1 false, i1 false}
!19 = !{ptr @__param_DMA_length, !20, !"__param_DMA_length", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 298, i32 1}
!21 = !{ptr @__UNIQUE_ID_DMA_lengthtype492, !20, !"__UNIQUE_ID_DMA_lengthtype492", i1 false, i1 false}
!22 = !{ptr @__UNIQUE_ID_DMA_length493, !20, !"__UNIQUE_ID_DMA_length493", i1 false, i1 false}
!23 = !{ptr @__param_IP_byte_align, !24, !"__param_IP_byte_align", i1 false, i1 false}
!24 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 307, i32 1}
!25 = !{ptr @__UNIQUE_ID_IP_byte_aligntype494, !24, !"__UNIQUE_ID_IP_byte_aligntype494", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_IP_byte_align495, !24, !"__UNIQUE_ID_IP_byte_align495", i1 false, i1 false}
!27 = !{ptr @__param_flow_control, !28, !"__param_flow_control", i1 false, i1 false}
!28 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 320, i32 1}
!29 = !{ptr @__UNIQUE_ID_flow_controltype496, !28, !"__UNIQUE_ID_flow_controltype496", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_flow_control497, !28, !"__UNIQUE_ID_flow_control497", i1 false, i1 false}
!31 = !{ptr @__param_speed_duplex, !32, !"__param_speed_duplex", i1 false, i1 false}
!32 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 337, i32 1}
!33 = !{ptr @__UNIQUE_ID_speed_duplextype498, !32, !"__UNIQUE_ID_speed_duplextype498", i1 false, i1 false}
!34 = !{ptr @__UNIQUE_ID_speed_duplex499, !32, !"__UNIQUE_ID_speed_duplex499", i1 false, i1 false}
!35 = !{ptr @__param_wol_opts, !36, !"__param_wol_opts", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 349, i32 1}
!37 = !{ptr @__UNIQUE_ID_wol_optstype500, !36, !"__UNIQUE_ID_wol_optstype500", i1 false, i1 false}
!38 = !{ptr @__UNIQUE_ID_wol_opts501, !36, !"__UNIQUE_ID_wol_opts501", i1 false, i1 false}
!39 = !{ptr @__param_rx_copybreak, !40, !"__param_rx_copybreak", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 352, i32 1}
!41 = !{ptr @__UNIQUE_ID_rx_copybreaktype502, !40, !"__UNIQUE_ID_rx_copybreaktype502", i1 false, i1 false}
!42 = !{ptr @__UNIQUE_ID_rx_copybreak503, !43, !"__UNIQUE_ID_rx_copybreak503", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 353, i32 1}
!44 = !{ptr @__initcall__kmod_via_velocity__510_3745_velocity_init_module6, !45, !"__initcall__kmod_via_velocity__510_3745_velocity_init_module6", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 3745, i32 1}
!46 = !{ptr @__exitcall_velocity_cleanup_module, !47, !"__exitcall_velocity_cleanup_module", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 3746, i32 1}
!48 = !{ptr @__param_str_RxDescriptors, !8, !"__param_str_RxDescriptors", i1 false, i1 false}
!49 = !{ptr @__param_arr_RxDescriptors, !8, !"__param_arr_RxDescriptors", i1 false, i1 false}
!50 = !{ptr @RxDescriptors, !8, !"RxDescriptors", i1 false, i1 false}
!51 = !{ptr @__param_str_TxDescriptors, !12, !"__param_str_TxDescriptors", i1 false, i1 false}
!52 = !{ptr @__param_arr_TxDescriptors, !12, !"__param_arr_TxDescriptors", i1 false, i1 false}
!53 = !{ptr @TxDescriptors, !12, !"TxDescriptors", i1 false, i1 false}
!54 = !{ptr @__param_str_rx_thresh, !16, !"__param_str_rx_thresh", i1 false, i1 false}
!55 = !{ptr @__param_arr_rx_thresh, !16, !"__param_arr_rx_thresh", i1 false, i1 false}
!56 = !{ptr @rx_thresh, !16, !"rx_thresh", i1 false, i1 false}
!57 = !{ptr @__param_str_DMA_length, !20, !"__param_str_DMA_length", i1 false, i1 false}
!58 = !{ptr @__param_arr_DMA_length, !20, !"__param_arr_DMA_length", i1 false, i1 false}
!59 = !{ptr @DMA_length, !20, !"DMA_length", i1 false, i1 false}
!60 = !{ptr @__param_str_IP_byte_align, !24, !"__param_str_IP_byte_align", i1 false, i1 false}
!61 = !{ptr @__param_arr_IP_byte_align, !24, !"__param_arr_IP_byte_align", i1 false, i1 false}
!62 = !{ptr @IP_byte_align, !24, !"IP_byte_align", i1 false, i1 false}
!63 = !{ptr @__param_str_flow_control, !28, !"__param_str_flow_control", i1 false, i1 false}
!64 = !{ptr @__param_arr_flow_control, !28, !"__param_arr_flow_control", i1 false, i1 false}
!65 = !{ptr @flow_control, !28, !"flow_control", i1 false, i1 false}
!66 = !{ptr @__param_str_speed_duplex, !32, !"__param_str_speed_duplex", i1 false, i1 false}
!67 = !{ptr @__param_arr_speed_duplex, !32, !"__param_arr_speed_duplex", i1 false, i1 false}
!68 = !{ptr @speed_duplex, !32, !"speed_duplex", i1 false, i1 false}
!69 = !{ptr @__param_str_wol_opts, !36, !"__param_str_wol_opts", i1 false, i1 false}
!70 = !{ptr @__param_arr_wol_opts, !36, !"__param_arr_wol_opts", i1 false, i1 false}
!71 = !{ptr @wol_opts, !36, !"wol_opts", i1 false, i1 false}
!72 = !{ptr @__param_str_rx_copybreak, !40, !"__param_str_rx_copybreak", i1 false, i1 false}
!73 = !{ptr @rx_copybreak, !74, !"rx_copybreak", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 351, i32 12}
!75 = !{ptr @velocity_inetaddr_notifier, !76, !"velocity_inetaddr_notifier", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 3682, i32 30}
!77 = !{ptr @velocity_netdev_ops, !78, !"velocity_netdev_ops", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 2631, i32 36}
!79 = !{ptr @.str, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 1496, i32 3}
!81 = !{ptr @.str.1, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.2, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.3, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.4, !80, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @velocity_init_dma_rings._entry, !80, !"_entry", i1 false, i1 false}
!86 = !{ptr @velocity_init_dma_rings._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.5, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 1642, i32 28}
!89 = distinct !{null, !90, !"__already_done", i1 false, i1 false}
!90 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!91 = !{ptr @.str.6, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @.str.7, !90, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.8, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 895, i32 29}
!95 = !{ptr @.str.9, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 931, i32 9}
!97 = !{ptr @.str.10, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 937, i32 9}
!99 = !{ptr @.str.11, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 995, i32 31}
!101 = !{ptr @.str.12, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 1000, i32 10}
!103 = !{ptr @.str.13, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 1003, i32 12}
!105 = !{ptr @.str.14, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 1005, i32 12}
!107 = !{ptr @.str.15, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 1007, i32 12}
!109 = !{ptr @.str.16, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 1010, i32 13}
!111 = !{ptr @.str.17, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 1012, i32 13}
!113 = !{ptr @.str.18, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 1014, i32 10}
!115 = !{ptr @.str.19, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 1038, i32 12}
!117 = !{ptr @.str.20, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 1043, i32 30}
!119 = !{ptr @.str.21, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 1826, i32 28}
!121 = distinct !{null, !122, !"__warned", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/via/via-velocity.h", i32 1469, i32 9}
!123 = !{ptr @.str.22, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.23, !122, !"<string literal>", i1 false, i1 false}
!125 = distinct !{null, !126, !"__warned", i1 false, i1 false}
!126 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!127 = !{ptr @.str.24, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.25, !126, !"<string literal>", i1 false, i1 false}
!129 = distinct !{null, !130, !"__warned", i1 false, i1 false}
!130 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!131 = !{ptr @.str.26, !130, !"<string literal>", i1 false, i1 false}
!132 = distinct !{null, !133, !"__warned", i1 false, i1 false}
!133 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!134 = !{ptr @.str.27, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @.str.28, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 3243, i32 11}
!137 = !{ptr @velocity_pci_driver, !138, !"velocity_pci_driver", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 3242, i32 26}
!139 = !{ptr @velocity_pci_id_table, !140, !"velocity_pci_id_table", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 368, i32 35}
!141 = !{ptr @.str.29, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 2924, i32 3}
!143 = !{ptr @.str.30, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @velocity_pci_probe._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @velocity_pci_probe._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.31, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 359, i32 21}
!148 = !{ptr @chip_info_table, !149, !"chip_info_table", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 358, i32 33}
!150 = !{ptr @.str.32, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 2776, i32 3}
!152 = !{ptr @.str.33, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @.str.34, !151, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @velocity_probe._entry, !151, !"_entry", i1 false, i1 false}
!155 = !{ptr @velocity_probe._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!156 = distinct !{null, !157, !"__already_done", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 2789, i32 2}
!158 = !{ptr @.str.36, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @velocity_probe._entry.35, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @velocity_probe._entry_ptr.37, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.38, !157, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.39, !157, !"<string literal>", i1 false, i1 false}
!163 = distinct !{null, !164, !"__already_done", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 2790, i32 2}
!165 = !{ptr @.str.42, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @velocity_probe._entry.41, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @velocity_probe._entry_ptr.43, !164, !"_entry_ptr", i1 false, i1 false}
!168 = distinct !{null, !169, !"__already_done", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 2791, i32 2}
!170 = !{ptr @.str.46, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @velocity_probe._entry.45, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @velocity_probe._entry_ptr.47, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @velocity_nics, !174, !"velocity_nics", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 84, i32 12}
!175 = !{ptr @velocity_init_info.__key, !176, !"__key", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 2662, i32 2}
!177 = !{ptr @.str.48, !176, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.49, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 2682, i32 3}
!180 = !{ptr @.str.50, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @velocity_get_pci_info._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @velocity_get_pci_info._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.52, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 2688, i32 3}
!185 = !{ptr @velocity_get_pci_info._entry.51, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @velocity_get_pci_info._entry_ptr.53, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.55, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 2694, i32 3}
!189 = !{ptr @velocity_get_pci_info._entry.54, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @velocity_get_pci_info._entry_ptr.56, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.57, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 2712, i32 42}
!193 = !{ptr @.str.58, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 2717, i32 3}
!195 = !{ptr @.str.59, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @velocity_get_platform_info._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @velocity_get_platform_info._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.61, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 2724, i32 3}
!200 = !{ptr @velocity_get_platform_info._entry.60, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @velocity_get_platform_info._entry_ptr.62, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.63, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 471, i32 9}
!204 = !{ptr @.str.64, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 474, i32 9}
!206 = !{ptr @.str.65, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 477, i32 9}
!208 = !{ptr @.str.66, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 480, i32 9}
!210 = !{ptr @.str.67, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 484, i32 9}
!212 = !{ptr @.str.68, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 487, i32 10}
!214 = !{ptr @.str.69, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 490, i32 9}
!216 = !{ptr @.str.70, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 493, i32 9}
!218 = !{ptr @.str.71, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 420, i32 3}
!220 = !{ptr @.str.72, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @velocity_set_int_opt._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @velocity_set_int_opt._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.74, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 424, i32 3}
!225 = !{ptr @velocity_set_int_opt._entry.73, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @velocity_set_int_opt._entry_ptr.75, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.76, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 448, i32 3}
!229 = !{ptr @velocity_set_bool_opt._entry, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @velocity_set_bool_opt._entry_ptr, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.78, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 452, i32 3}
!233 = !{ptr @velocity_set_bool_opt._entry.77, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @velocity_set_bool_opt._entry_ptr.79, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.80, !232, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.81, !232, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @velocity_ethtool_ops, !238, !"velocity_ethtool_ops", i1 false, i1 false}
!238 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 3651, i32 33}
!239 = !{ptr @.str.82, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 3429, i32 27}
!241 = !{ptr @velocity_gstrings, !242, !"velocity_gstrings", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 3580, i32 19}
!243 = !{ptr @.str.83, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 2057, i32 29}
!245 = !{ptr @.str.84, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 2740, i32 28}
!247 = !{ptr @velocity_pm_ops, !248, !"velocity_pm_ops", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 3236, i32 8}
!249 = !{ptr @velocity_set_wol.buf, !250, !"buf", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 3019, i32 12}
!251 = !{ptr @velocity_set_wol.mask_pattern, !252, !"mask_pattern", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 3022, i32 13}
!253 = !{ptr @velocity_platform_driver, !254, !"velocity_platform_driver", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 3252, i32 31}
!255 = !{ptr @velocity_of_ids, !256, !"velocity_of_ids", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 379, i32 34}
!257 = !{ptr @.str.85, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/net/ethernet/via/via-velocity.c", i32 3717, i32 12}
!259 = !{!"sp"}
!260 = !{i32 1, !"wchar_size", i32 2}
!261 = !{i32 1, !"min_enum_size", i32 4}
!262 = !{i32 8, !"branch-target-enforcement", i32 0}
!263 = !{i32 8, !"sign-return-address", i32 0}
!264 = !{i32 8, !"sign-return-address-all", i32 0}
!265 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!266 = !{i32 7, !"uwtable", i32 1}
!267 = !{i32 7, !"frame-pointer", i32 2}
!268 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!269 = !{i64 2149450529}
!270 = !{i64 2149450795}
!271 = !{i64 2157966155}
!272 = !{i64 6310964}
!273 = !{i64 2158110224}
!274 = !{i64 2158110454}
!275 = !{i64 6310541}
!276 = !{i64 2158135612}
!277 = !{i64 6311161}
!278 = !{!"branch_weights", i32 2000, i32 1}
!279 = !{i64 2158143323}
!280 = !{i64 2158080879}
!281 = !{i64 2158081294}
!282 = !{i64 2158081805}
!283 = !{i64 2158082220}
!284 = !{i64 2157966958}
!285 = !{i64 6311359}
!286 = !{i64 2157967133}
!287 = !{i64 2157967414}
!288 = !{i64 2157967696}
!289 = !{i64 2157967905}
!290 = !{i64 2157968706}
!291 = !{i64 2157968881}
!292 = !{i64 2157975329}
!293 = !{i64 2157975504}
!294 = !{i64 2157975799}
!295 = !{i64 2157976075}
!296 = !{i64 2157976827}
!297 = !{i64 2157977000}
!298 = !{i64 2157977801}
!299 = !{i64 2157978602}
!300 = !{i64 2157978777}
!301 = !{i64 2158086557}
!302 = !{i64 2158086728}
!303 = !{i64 2158139161}
!304 = !{i64 2158138716}
!305 = !{i64 2157961503}
!306 = !{i64 2157961688}
!307 = !{i64 2157962058}
!308 = !{i64 2157962824}
!309 = !{i64 2157963009}
!310 = !{i64 6311579}
!311 = !{i64 2157963593}
!312 = !{!"auto-init"}
!313 = !{!"branch_weights", i32 1, i32 2000}
!314 = !{i64 2158051486}
!315 = !{i64 2158051930}
!316 = !{i64 2158052352}
!317 = !{i64 2158052747}
!318 = !{i64 2158093282}
!319 = !{i64 2158093623}
!320 = !{i64 2158093970}
!321 = !{i64 2158094400}
!322 = !{i64 2158094918}
!323 = !{i64 2158077634}
!324 = !{i64 2158078921}
!325 = !{i64 2158079161}
!326 = !{i64 2157954831}
!327 = !{i64 2157955006}
!328 = !{i64 2157955878}
!329 = !{i64 2158096777}
!330 = !{i64 2158097551}
!331 = !{i64 2158097725}
!332 = !{i64 2158098722}
!333 = !{i64 2158098902}
!334 = !{i64 2158099894}
!335 = !{i64 2158100074}
!336 = !{i64 2158100399}
!337 = !{i64 2158101252}
!338 = !{i64 2158101426}
!339 = !{i64 2158101741}
!340 = !{i64 2158102187}
!341 = !{i64 2158102700}
!342 = !{i64 2158103041}
!343 = !{i64 2158103332}
!344 = !{i64 2158103796}
!345 = !{i64 2158104326}
!346 = !{i64 2157964082}
!347 = !{i64 2157964747}
!348 = !{i64 2157965313}
!349 = !{i64 2157965726}
!350 = !{i64 2158104782}
!351 = !{i64 2158105300}
!352 = !{i64 2158106651}
!353 = !{i64 2158106830}
!354 = !{i64 2158107616}
!355 = !{i64 2158107795}
!356 = !{i64 2158108141}
!357 = !{i64 2158108880}
!358 = !{i64 2158109059}
!359 = !{i64 2158109398}
!360 = !{i64 2158109878}
!361 = !{i64 2158134116}
!362 = !{i64 2158134403}
!363 = !{i64 2158134981}
!364 = !{i64 6310741}
!365 = !{i64 2158118199}
!366 = !{i64 2158118893}
!367 = !{i64 2158119066}
!368 = !{i64 2158119338}
!369 = !{i64 2158089666}
!370 = !{i64 2158089965}
!371 = !{i64 2158123495}
!372 = !{i64 2158123866}
!373 = !{i64 2157984014}
!374 = !{i64 2157984189}
!375 = !{i64 2157984987}
!376 = !{i64 2157985162}
!377 = !{i64 2157985944}
!378 = !{i64 2157986119}
!379 = !{i64 2157986890}
!380 = !{i64 2157987065}
!381 = !{i64 2157987340}
!382 = !{i64 2157987608}
!383 = !{i64 2157988005}
!384 = !{i64 2158065144}
!385 = !{i64 2158065319}
!386 = !{i64 2158066685}
!387 = !{i64 2158066860}
!388 = !{i64 2158067138}
!389 = !{i64 2158067394}
!390 = !{i64 2158068144}
!391 = !{i64 2158068315}
!392 = !{i64 2158068587}
!393 = !{i64 2158069328}
!394 = !{i64 2158069499}
!395 = !{i64 2158071967}
!396 = !{i64 2158073102}
!397 = !{i64 2158074194}
!398 = !{i64 2158074624}
!399 = !{i64 2158075054}
!400 = !{i64 2158075484}
!401 = !{i64 2158075914}
!402 = !{i64 2158076344}
!403 = !{i64 2158076774}
!404 = !{i64 2158077204}
!405 = !{i64 2158047749}
!406 = !{i64 2158048700}
!407 = !{i64 2158049767}
!408 = !{i64 2158050678}
!409 = !{i64 2157979602}
!410 = !{i64 2157979777}
!411 = !{i64 2157980084}
!412 = !{i64 2157980373}
!413 = !{i64 2157981277}
!414 = !{i64 2157981450}
!415 = !{i64 2157982251}
!416 = !{i64 2157983052}
!417 = !{i64 2157983227}
!418 = !{i64 2158054374}
!419 = !{i64 2158054638}
!420 = !{i64 2158055504}
!421 = !{i64 2158055719}
!422 = !{i64 2158056584}
!423 = !{i64 2158090747}
!424 = !{i64 2158091077}
!425 = !{i64 2158091486}
!426 = !{i64 2158091881}
!427 = !{i64 2158092159}
!428 = !{i64 2158092568}
!429 = !{i64 2158092955}
!430 = !{i64 2158053303}
!431 = !{i64 2158054165}
!432 = !{i64 2158056796}
!433 = !{i64 2158057541}
!434 = !{i64 2158057714}
!435 = !{i64 2158057994}
!436 = !{i64 2158058473}
!437 = !{i64 2158059496}
!438 = !{i64 2158059762}
!439 = !{i64 2158060631}
!440 = !{i64 2158060804}
!441 = !{i64 2158061620}
!442 = !{i64 2157972508}
!443 = !{i64 2157972683}
!444 = !{i64 2157972984}
!445 = !{i64 2157973261}
!446 = !{i64 2157973528}
!447 = !{i64 2157974329}
!448 = !{i64 2157974504}
!449 = !{i64 2157969706}
!450 = !{i64 2157969881}
!451 = !{i64 2157970170}
!452 = !{i64 2157970440}
!453 = !{i64 2157970707}
!454 = !{i64 2157971508}
!455 = !{i64 2157971683}
!456 = !{i64 2158063793}
!457 = !{i64 2158136121}
!458 = !{i64 2158136557}
!459 = !{i64 2158136970}
!460 = !{i64 2158137365}
!461 = !{i64 2158137678}
!462 = !{i64 2158164237}
!463 = !{i64 2158164461}
!464 = !{i64 2158153025}
!465 = !{i64 2158126801}
!466 = !{i64 2158133343}
!467 = !{i64 2158193383}
!468 = !{i64 2158193896}
!469 = !{i64 2158194406}
!470 = !{i64 2158194916}
!471 = !{i64 2158192206}
!472 = !{i64 2158168125}
!473 = !{i64 2158168538}
!474 = !{i64 2158168820}
!475 = !{i64 2158169237}
!476 = !{i64 2158169665}
!477 = !{i64 2158170256}
!478 = !{i64 2158170656}
!479 = !{i64 2158171550}
!480 = !{i64 2158171726}
!481 = !{i64 2158172491}
!482 = !{i64 2158172667}
!483 = !{i64 2158172935}
!484 = !{i64 2158174474}
!485 = !{i64 2158174649}
!486 = !{i64 2158174927}
!487 = !{i64 2158175148}
!488 = !{i64 2158175913}
!489 = !{i64 2158176084}
!490 = !{i64 2158176850}
!491 = !{i64 2158177025}
!492 = !{i64 2158177810}
!493 = !{i64 2158177985}
!494 = !{i64 2158180105}
!495 = !{i64 2158180610}
!496 = !{i64 2158180922}
!497 = !{i64 2158181238}
!498 = !{i64 2158181737}
!499 = !{i64 2158182235}
!500 = !{i64 2158183015}
!501 = !{i64 2158183548}
!502 = !{i64 2158184078}
!503 = !{i64 2158178504}
!504 = !{i64 2158178960}
!505 = !{i64 2158179416}
