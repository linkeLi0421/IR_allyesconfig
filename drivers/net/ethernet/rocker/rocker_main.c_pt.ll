; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/rocker/rocker_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/rocker/rocker_main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pci_driver = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pci_dynids }
%struct.list_head = type { ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pci_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.14 }
%union.anon.14 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.neigh_table = type { i32, i32, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.neigh_parms, %struct.list_head, i32, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.timer_list, %struct.sk_buff_head, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.rwlock_t, i32, ptr, ptr, ptr }
%struct.neigh_parms = type { %struct.possible_net_t, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, %struct.refcount_struct, %struct.callback_head, i32, [13 x i32], [1 x i32] }
%struct.possible_net_t = type { ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.anon.53 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rocker_world_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rocker_port_stats = type { [32 x i8], i32 }
%struct.rocker_port = type { ptr, ptr, ptr, i32, i32, %struct.napi_struct, %struct.napi_struct, %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rocker_dma_ring_info = type { i32, i32, i32, ptr, i32, ptr, i32 }
%struct.rocker = type { ptr, ptr, ptr, i32, ptr, %struct.anon.144, %struct.spinlock, %struct.rocker_dma_ring_info, %struct.rocker_dma_ring_info, %struct.notifier_block, ptr, ptr, ptr }
%struct.anon.144 = type { i64 }
%struct.rocker_desc_info = type { ptr, i32, i32, ptr, i32 }
%struct.rocker_desc = type { i64, i64, i16, i16, [5 x i16], i16 }
%struct.rocker_wait = type { %struct.wait_queue_head, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.rocker_tlv = type { i32, i16 }
%struct.netdev_nested_priv = type { i8, ptr }
%struct.rocker_walk_data = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.142 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.143, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.143 = type { ptr }
%struct.msix_entry = type { i32, i16 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.port_name = type { ptr, i32 }
%struct.page = type { i32, %union.anon.10, %union.anon.95, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.95 = type { %struct.atomic_t }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }
%struct.rocker_fib_event_work = type { %struct.work_struct, %union.anon.151, ptr, i32 }
%union.anon.151 = type { %struct.fib_entry_notifier_info }
%struct.fib_entry_notifier_info = type { %struct.fib_notifier_info, i32, i32, ptr, i8, i8, i32 }
%struct.fib_notifier_info = type { i32, ptr }
%struct.fib_info = type { %struct.hlist_node, %struct.hlist_node, %struct.list_head, ptr, %struct.refcount_struct, %struct.refcount_struct, i32, i8, i8, i8, i8, i32, i32, i32, ptr, i32, i8, i8, ptr, %struct.callback_head, [0 x %struct.fib_nh] }
%struct.fib_nh = type { %struct.fib_nh_common, %struct.hlist_node, ptr, i32, i32, i32 }
%struct.fib_nh_common = type { ptr, ptr, i32, i8, i8, i8, i8, ptr, %union.anon.145, i32, %struct.atomic_t, ptr, ptr, ptr }
%union.anon.145 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.fib_rule = type { %struct.list_head, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i64, ptr, ptr, %struct.refcount_struct, i32, i32, i32, [16 x i8], [16 x i8], %struct.fib_kuid_range, %struct.fib_rule_port_range, %struct.fib_rule_port_range, %struct.callback_head }
%struct.fib_kuid_range = type { %struct.kuid_t, %struct.kuid_t }
%struct.kuid_t = type { i32 }
%struct.fib_rule_port_range = type { i16, i16 }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_link_ksettings = type { %struct.ethtool_link_settings, %struct.anon.141, i32 }
%struct.ethtool_link_settings = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [1 x i8], [7 x i32], [0 x i32] }
%struct.anon.141 = type { [3 x i32], [3 x i32], [3 x i32] }
%struct.rocker_switchdev_event_work = type { %struct.work_struct, %struct.switchdev_notifier_fdb_info, ptr, i32 }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.switchdev_notifier_port_attr_info = type { %struct.switchdev_notifier_info, ptr, i8 }
%struct.switchdev_attr = type { ptr, i32, i32, ptr, ptr, %union.anon.152 }
%union.anon.152 = type { %struct.switchdev_brport_flags }
%struct.switchdev_brport_flags = type { i32, i32 }
%struct.switchdev_notifier_port_obj_info = type { %struct.switchdev_notifier_info, ptr, i8 }
%struct.switchdev_obj = type { %struct.list_head, ptr, i32, i32, ptr, ptr }

@rocker_netevent_nb = internal global %struct.notifier_block { ptr @rocker_netevent_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@rocker_netdevice_nb = internal global %struct.notifier_block { ptr @rocker_netdevice_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@rocker_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @rocker_driver_name, ptr @rocker_pci_id_table, ptr @rocker_probe, ptr @rocker_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_rocker__495_3192_rocker_module_init6 = internal global ptr @rocker_module_init, section ".initcall6.init", align 4
@__exitcall_rocker_module_exit = internal global ptr @rocker_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file496 = internal constant [47 x i8] c"rocker.file=drivers/net/ethernet/rocker/rocker\00", section ".modinfo", align 1
@__UNIQUE_ID_license497 = internal constant [22 x i8] c"rocker.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author498 = internal constant [44 x i8] c"rocker.author=Jiri Pirko <jiri@resnulli.us>\00", section ".modinfo", align 1
@__UNIQUE_ID_author499 = internal constant [48 x i8] c"rocker.author=Scott Feldman <sfeldma@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description500 = internal constant [47 x i8] c"rocker.description=Rocker switch device driver\00", section ".modinfo", align 1
@rocker_wait_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&wait->wait\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/net/ethernet/rocker/rocker_main.c\00", [54 x i8] zeroinitializer }, align 32
@rocker_port_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @rocker_port_open, ptr @rocker_port_stop, ptr @rocker_port_xmit, ptr null, ptr null, ptr null, ptr null, ptr @rocker_port_set_mac_address, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rocker_port_change_mtu, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rocker_port_neigh_destroy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rocker_port_get_port_parent_id, ptr @rocker_port_get_phys_port_name, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@rocker_driver_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rocker\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot assign tx irq\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cannot assign rx irq\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cannot open port in world\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to create tx dma ring\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to alloc tx dma ring buffers\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to create rx dma ring\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to alloc rx dma ring buffers\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to alloc rx dma ring skbs\0A\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tx ring full when queue awake\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to dma map tx frag\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"MTU change from %d to %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to handle neigh destroy (err %d)\0A\00", [55 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@arp_tbl = external dso_local global %struct.neigh_table, align 4
@.str.16 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to handle neigh update (err %d)\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to reflect master linked (err %d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"failed to reflect master unlinked (err %d)\0A\00", [52 x i8] zeroinitializer }, align 32
@rocker_pci_id_table = internal constant { [2 x %struct.pci_device_id], [32 x i8] } { [2 x %struct.pci_device_id] [%struct.pci_device_id { i32 6966, i32 6, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@rocker_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.1, i32 2863, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pci_enable_device failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rocker_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rocker_probe._entry_ptr = internal global ptr @rocker_probe._entry, section ".printk_index", align 4
@rocker_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.20, ptr @.str.1, i32 2869, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pci_request_regions failed\0A\00", [36 x i8] zeroinitializer }, align 32
@rocker_probe._entry_ptr.25 = internal global ptr @rocker_probe._entry.23, section ".printk_index", align 4
@rocker_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.20, ptr @.str.1, i32 2875, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dma_set_mask failed\0A\00", [43 x i8] zeroinitializer }, align 32
@rocker_probe._entry_ptr.28 = internal global ptr @rocker_probe._entry.26, section ".printk_index", align 4
@rocker_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.20, ptr @.str.1, i32 2880, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid PCI region size\0A\00", [39 x i8] zeroinitializer }, align 32
@rocker_probe._entry_ptr.31 = internal global ptr @rocker_probe._entry.29, section ".printk_index", align 4
@rocker_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.20, ptr @.str.1, i32 2888, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ioremap failed\0A\00", [16 x i8] zeroinitializer }, align 32
@rocker_probe._entry_ptr.34 = internal global ptr @rocker_probe._entry.32, section ".printk_index", align 4
@rocker_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.20, ptr @.str.1, i32 2901, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MSI-X init failed\0A\00", [45 x i8] zeroinitializer }, align 32
@rocker_probe._entry_ptr.37 = internal global ptr @rocker_probe._entry.35, section ".printk_index", align 4
@rocker_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.20, ptr @.str.1, i32 2907, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"basic hw test failed\0A\00", [42 x i8] zeroinitializer }, align 32
@rocker_probe._entry_ptr.40 = internal global ptr @rocker_probe._entry.38, section ".printk_index", align 4
@rocker_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.20, ptr @.str.1, i32 2921, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cannot assign cmd irq\0A\00", [41 x i8] zeroinitializer }, align 32
@rocker_probe._entry_ptr.43 = internal global ptr @rocker_probe._entry.41, section ".printk_index", align 4
@rocker_probe._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.20, ptr @.str.1, i32 2929, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot assign event irq\0A\00", [39 x i8] zeroinitializer }, align 32
@rocker_probe._entry_ptr.46 = internal global ptr @rocker_probe._entry.44, section ".printk_index", align 4
@rocker_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.20, ptr @.str.1, i32 2942, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to probe ports\0A\00", [41 x i8] zeroinitializer }, align 32
@rocker_probe._entry_ptr.49 = internal global ptr @rocker_probe._entry.47, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@rocker_switchdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @rocker_switchdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@rocker_probe._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.20, ptr @.str.1, i32 2956, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to register switchdev notifier\0A\00", [57 x i8] zeroinitializer }, align 32
@rocker_probe._entry_ptr.52 = internal global ptr @rocker_probe._entry.50, section ".printk_index", align 4
@rocker_switchdev_blocking_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @rocker_switchdev_blocking_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@rocker_probe._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.20, ptr @.str.1, i32 2963, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Failed to register switchdev blocking notifier\0A\00", [48 x i8] zeroinitializer }, align 32
@rocker_probe._entry_ptr.55 = internal global ptr @rocker_probe._entry.53, section ".printk_index", align 4
@rocker_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.20, ptr @.str.1, i32 2970, ptr @.str.58, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Rocker switch with id %*phN\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@rocker_probe._entry_ptr.59 = internal global ptr @rocker_probe._entry.56, section ".printk_index", align 4
@rocker_basic_hw_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.1, i32 276, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg test failed\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rocker_basic_hw_test\00", [43 x i8] zeroinitializer }, align 32
@rocker_basic_hw_test._entry_ptr = internal global ptr @rocker_basic_hw_test._entry, section ".printk_index", align 4
@rocker_basic_hw_test._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.1, i32 284, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cannot assign test irq\0A\00", [40 x i8] zeroinitializer }, align 32
@rocker_basic_hw_test._entry_ptr.64 = internal global ptr @rocker_basic_hw_test._entry.62, section ".printk_index", align 4
@rocker_basic_hw_test._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.1, i32 292, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"no interrupt received within a timeout\0A\00", [56 x i8] zeroinitializer }, align 32
@rocker_basic_hw_test._entry_ptr.67 = internal global ptr @rocker_basic_hw_test._entry.65, section ".printk_index", align 4
@rocker_basic_hw_test._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.1, i32 299, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dma test failed\0A\00", [47 x i8] zeroinitializer }, align 32
@rocker_basic_hw_test._entry_ptr.70 = internal global ptr @rocker_basic_hw_test._entry.68, section ".printk_index", align 4
@rocker_reg_test._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.1, i32 138, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"unexpected 32bit register value %08llx, expected %08llx\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rocker_reg_test\00", [16 x i8] zeroinitializer }, align 32
@rocker_reg_test._entry_ptr = internal global ptr @rocker_reg_test._entry, section ".printk_index", align 4
@rocker_reg_test._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.1, i32 149, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"unexpected 64bit register value %16llx, expected %16llx\0A\00", [39 x i8] zeroinitializer }, align 32
@rocker_reg_test._entry_ptr.75 = internal global ptr @rocker_reg_test._entry.73, section ".printk_index", align 4
@rocker_dma_test_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.76, ptr @.str.1, i32 168, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rocker_dma_test_one\00", [44 x i8] zeroinitializer }, align 32
@rocker_dma_test_one._entry_ptr = internal global ptr @rocker_dma_test_one._entry, section ".printk_index", align 4
@rocker_dma_test_one._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.1, i32 175, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"unexpected memory content %02x at byte %x\0A, %02x expected\00", [38 x i8] zeroinitializer }, align 32
@rocker_dma_test_one._entry_ptr.79 = internal global ptr @rocker_dma_test_one._entry.77, section ".printk_index", align 4
@rocker_dma_rings_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str.1, i32 614, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to create command dma ring\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rocker_dma_rings_init\00", [42 x i8] zeroinitializer }, align 32
@rocker_dma_rings_init._entry_ptr = internal global ptr @rocker_dma_rings_init._entry, section ".printk_index", align 4
@rocker_dma_rings_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&rocker->cmd_ring_lock\00", [41 x i8] zeroinitializer }, align 32
@rocker_dma_rings_init._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.81, ptr @.str.1, i32 623, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to alloc command dma ring buffers\0A\00", [54 x i8] zeroinitializer }, align 32
@rocker_dma_rings_init._entry_ptr.85 = internal global ptr @rocker_dma_rings_init._entry.83, section ".printk_index", align 4
@rocker_dma_rings_init._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.81, ptr @.str.1, i32 629, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to alloc command dma ring waits\0A\00", [56 x i8] zeroinitializer }, align 32
@rocker_dma_rings_init._entry_ptr.88 = internal global ptr @rocker_dma_rings_init._entry.86, section ".printk_index", align 4
@rocker_dma_rings_init._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.81, ptr @.str.1, i32 637, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to create event dma ring\0A\00", [63 x i8] zeroinitializer }, align 32
@rocker_dma_rings_init._entry_ptr.91 = internal global ptr @rocker_dma_rings_init._entry.89, section ".printk_index", align 4
@rocker_dma_rings_init._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.81, ptr @.str.1, i32 644, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to alloc event dma ring buffers\0A\00", [56 x i8] zeroinitializer }, align 32
@rocker_dma_rings_init._entry_ptr.94 = internal global ptr @rocker_dma_rings_init._entry.92, section ".printk_index", align 4
@rocker_event_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.96, ptr @.str.1, i32 1009, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"event desc received with err %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rocker_event_irq_handler\00", [39 x i8] zeroinitializer }, align 32
@rocker_event_irq_handler._entry_ptr = internal global ptr @rocker_event_irq_handler._entry, section ".printk_index", align 4
@rocker_event_irq_handler._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.1, i32 1014, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"event processing failed with err %d\0A\00", [59 x i8] zeroinitializer }, align 32
@rocker_event_irq_handler._entry_ptr.99 = internal global ptr @rocker_event_irq_handler._entry.97, section ".printk_index", align 4
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Link is up\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Link is down\0A\00", [18 x i8] zeroinitializer }, align 32
@rocker_probe_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.1, i32 2569, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"world init failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rocker_probe_port\00", [46 x i8] zeroinitializer }, align 32
@rocker_probe_port._entry_ptr = internal global ptr @rocker_probe_port._entry, section ".printk_index", align 4
@rocker_port_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 0, i32 0, ptr @rocker_port_get_drvinfo, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rocker_port_get_strings, ptr null, ptr @rocker_port_get_stats, ptr null, ptr null, ptr null, ptr null, ptr @rocker_port_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rocker_port_get_link_ksettings, ptr @rocker_port_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@rocker_probe_port._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.103, ptr @.str.1, i32 2590, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"port world pre-init failed\0A\00", [36 x i8] zeroinitializer }, align 32
@rocker_probe_port._entry_ptr.106 = internal global ptr @rocker_probe_port._entry.104, section ".printk_index", align 4
@rocker_probe_port._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.103, ptr @.str.1, i32 2595, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"register_netdev failed\0A\00", [40 x i8] zeroinitializer }, align 32
@rocker_probe_port._entry_ptr.109 = internal global ptr @rocker_probe_port._entry.107, section ".printk_index", align 4
@rocker_probe_port._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.103, ptr @.str.1, i32 2602, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"port world init failed\0A\00", [40 x i8] zeroinitializer }, align 32
@rocker_probe_port._entry_ptr.112 = internal global ptr @rocker_probe_port._entry.110, section ".printk_index", align 4
@rocker_world_check_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.114, ptr @.str.1, i32 1477, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get port mode\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rocker_world_check_init\00", [40 x i8] zeroinitializer }, align 32
@rocker_world_check_init._entry_ptr = internal global ptr @rocker_world_check_init._entry, section ".printk_index", align 4
@rocker_world_check_init._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.114, ptr @.str.1, i32 1482, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"hardware has ports in different worlds, which is not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@rocker_world_check_init._entry_ptr.117 = internal global ptr @rocker_world_check_init._entry.115, section ".printk_index", align 4
@rocker_world_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.119, ptr @.str.1, i32 1444, ptr @.str.21, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"port mode \22%d\22 is not supported\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"rocker_world_init\00", [46 x i8] zeroinitializer }, align 32
@rocker_world_init._entry_ptr = internal global ptr @rocker_world_init._entry, section ".printk_index", align 4
@rocker_ofdpa_ops = external dso_local global %struct.rocker_world_ops, align 4
@rocker_port_dev_addr_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.1, i32 2543, ptr @.str.122, ptr @.str.22 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to get mac address, using random\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rocker_port_dev_addr_init\00", [38 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rocker_port_dev_addr_init._entry_ptr = internal global ptr @rocker_port_dev_addr_init._entry, section ".printk_index", align 4
@.str.123 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"5.17.0\00", [25 x i8] zeroinitializer }, align 32
@rocker_port_stats = internal constant { [8 x %struct.rocker_port_stats], [64 x i8] } { [8 x %struct.rocker_port_stats] [%struct.rocker_port_stats { [32 x i8] c"rx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 2 }, %struct.rocker_port_stats { [32 x i8] c"rx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 3 }, %struct.rocker_port_stats { [32 x i8] c"rx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 4 }, %struct.rocker_port_stats { [32 x i8] c"rx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 5 }, %struct.rocker_port_stats { [32 x i8] c"tx_packets\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 6 }, %struct.rocker_port_stats { [32 x i8] c"tx_bytes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 7 }, %struct.rocker_port_stats { [32 x i8] c"tx_dropped\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8 }, %struct.rocker_port_stats { [32 x i8] c"tx_errors\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 9 }], [64 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tx desc received with err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"rx desc received with err %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"rx processing failed with err %d\0A\00", [62 x i8] zeroinitializer }, align 32
@rocker_router_fib_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.127 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"(work_completion)(&fib_work->work)\00", [61 x i8] zeroinitializer }, align 32
@rocker_router_fib_event.__msg = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"rocker: IPv6 gateway with IPv4 route is not supported\00", [42 x i8] zeroinitializer }, align 32
@rocker_router_fib_event.__msg.128 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"rocker: IPv4 route with nexthop objects is not supported\00", [39 x i8] zeroinitializer }, align 32
@rocker_switchdev_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.129 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&switchdev_work->work)\00", [55 x i8] zeroinitializer }, align 32
@rocker_switchdev_event_work.__UNIQUE_ID_ddebug493 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.130, ptr @.str.131, ptr @.str.1, ptr @.str.132, i8 2, i8 -85, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rocker\00", [25 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rocker_switchdev_event_work\00", [36 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fdb add failed err=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@rocker_switchdev_event_work.__UNIQUE_ID_ddebug494 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.130, ptr @.str.131, ptr @.str.1, ptr @.str.132, i8 2, i8 -82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.133 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.134 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.135 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.136 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 4]
@__sancov_gen_cov_switch_values.137 = internal global [5 x i64] [i64 3, i64 32, i64 7, i64 8, i64 9]
@___asan_gen_.138 = private unnamed_addr constant [18 x i8] c"rocker_pci_driver\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 3027, i32 26 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 62, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 84, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant [23 x i8] c"rocker_port_netdev_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2022, i32 36 }
@___asan_gen_.153 = private unnamed_addr constant [19 x i8] c"rocker_driver_name\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 41, i32 19 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1769, i32 32 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1777, i32 32 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1783, i32 32 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 797, i32 32 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 805, i32 32 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 814, i32 32 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 822, i32 32 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 828, i32 32 }
@___asan_gen_.184 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 326, i32 6 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1895, i32 20 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1861, i32 33 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1970, i32 19 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2006, i32 33 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 3152, i32 21 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 3112, i32 22 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 3118, i32 22 }
@___asan_gen_.207 = private unnamed_addr constant [20 x i8] c"rocker_pci_id_table\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 43, i32 35 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2863, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2869, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2875, i32 3 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2880, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2888, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2901, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2907, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2921, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2929, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2942, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant [26 x i8] c"rocker_switchdev_notifier\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2843, i32 30 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2956, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [35 x i8] c"rocker_switchdev_blocking_notifier\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2847, i32 30 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2963, i32 3 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2969, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 276, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 284, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 292, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 299, i32 3 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 137, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 148, i32 3 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 168, i32 3 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 174, i32 4 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 614, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 618, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 623, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 629, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 637, i32 3 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 644, i32 3 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1008, i32 4 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1013, i32 5 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 903, i32 32 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 909, i32 32 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2569, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant [24 x i8] c"rocker_port_ethtool_ops\00", align 1
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2360, i32 33 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2590, i32 3 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2595, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2602, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1477, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1482, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 1443, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2543, i32 3 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2230, i32 28 }
@___asan_gen_.489 = private unnamed_addr constant [18 x i8] c"rocker_port_stats\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2236, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2393, i32 33 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2472, i32 34 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2478, i32 34 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2164, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2175, i32 5 }
@___asan_gen_.510 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2180, i32 5 }
@___asan_gen_.513 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2775, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.526 = private constant [45 x i8] c"../drivers/net/ethernet/rocker/rocker_main.c\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 2734, i32 4 }
@llvm.compiler.used = appending global [174 x ptr] [ptr @__UNIQUE_ID_author498, ptr @__UNIQUE_ID_author499, ptr @__UNIQUE_ID_description500, ptr @__UNIQUE_ID_file496, ptr @__UNIQUE_ID_license497, ptr @__exitcall_rocker_module_exit, ptr @__initcall__kmod_rocker__495_3192_rocker_module_init6, ptr @rocker_basic_hw_test._entry, ptr @rocker_basic_hw_test._entry.62, ptr @rocker_basic_hw_test._entry.65, ptr @rocker_basic_hw_test._entry.68, ptr @rocker_basic_hw_test._entry_ptr, ptr @rocker_basic_hw_test._entry_ptr.64, ptr @rocker_basic_hw_test._entry_ptr.67, ptr @rocker_basic_hw_test._entry_ptr.70, ptr @rocker_dma_rings_init._entry, ptr @rocker_dma_rings_init._entry.83, ptr @rocker_dma_rings_init._entry.86, ptr @rocker_dma_rings_init._entry.89, ptr @rocker_dma_rings_init._entry.92, ptr @rocker_dma_rings_init._entry_ptr, ptr @rocker_dma_rings_init._entry_ptr.85, ptr @rocker_dma_rings_init._entry_ptr.88, ptr @rocker_dma_rings_init._entry_ptr.91, ptr @rocker_dma_rings_init._entry_ptr.94, ptr @rocker_dma_test_one._entry, ptr @rocker_dma_test_one._entry.77, ptr @rocker_dma_test_one._entry_ptr, ptr @rocker_dma_test_one._entry_ptr.79, ptr @rocker_event_irq_handler._entry, ptr @rocker_event_irq_handler._entry.97, ptr @rocker_event_irq_handler._entry_ptr, ptr @rocker_event_irq_handler._entry_ptr.99, ptr @rocker_module_exit, ptr @rocker_port_dev_addr_init._entry, ptr @rocker_port_dev_addr_init._entry_ptr, ptr @rocker_probe._entry, ptr @rocker_probe._entry.23, ptr @rocker_probe._entry.26, ptr @rocker_probe._entry.29, ptr @rocker_probe._entry.32, ptr @rocker_probe._entry.35, ptr @rocker_probe._entry.38, ptr @rocker_probe._entry.41, ptr @rocker_probe._entry.44, ptr @rocker_probe._entry.47, ptr @rocker_probe._entry.50, ptr @rocker_probe._entry.53, ptr @rocker_probe._entry.56, ptr @rocker_probe._entry_ptr, ptr @rocker_probe._entry_ptr.25, ptr @rocker_probe._entry_ptr.28, ptr @rocker_probe._entry_ptr.31, ptr @rocker_probe._entry_ptr.34, ptr @rocker_probe._entry_ptr.37, ptr @rocker_probe._entry_ptr.40, ptr @rocker_probe._entry_ptr.43, ptr @rocker_probe._entry_ptr.46, ptr @rocker_probe._entry_ptr.49, ptr @rocker_probe._entry_ptr.52, ptr @rocker_probe._entry_ptr.55, ptr @rocker_probe._entry_ptr.59, ptr @rocker_probe_port._entry, ptr @rocker_probe_port._entry.104, ptr @rocker_probe_port._entry.107, ptr @rocker_probe_port._entry.110, ptr @rocker_probe_port._entry_ptr, ptr @rocker_probe_port._entry_ptr.106, ptr @rocker_probe_port._entry_ptr.109, ptr @rocker_probe_port._entry_ptr.112, ptr @rocker_reg_test._entry, ptr @rocker_reg_test._entry.73, ptr @rocker_reg_test._entry_ptr, ptr @rocker_reg_test._entry_ptr.75, ptr @rocker_world_check_init._entry, ptr @rocker_world_check_init._entry.115, ptr @rocker_world_check_init._entry_ptr, ptr @rocker_world_check_init._entry_ptr.117, ptr @rocker_world_init._entry, ptr @rocker_world_init._entry_ptr, ptr @rocker_pci_driver, ptr @rocker_wait_init.__key, ptr @.str, ptr @.str.1, ptr @rocker_port_netdev_ops, ptr @rocker_driver_name, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @rocker_pci_id_table, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.48, ptr @rocker_switchdev_notifier, ptr @.str.51, ptr @rocker_switchdev_blocking_notifier, ptr @.str.54, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.81, ptr @rocker_dma_rings_init.__key, ptr @.str.82, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @rocker_port_ethtool_ops, ptr @.str.105, ptr @.str.108, ptr @.str.111, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @rocker_port_stats, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @rocker_router_fib_event.__key, ptr @.str.127, ptr @rocker_router_fib_event.__msg, ptr @rocker_router_fib_event.__msg.128, ptr @rocker_switchdev_event.__key, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_wait_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_port_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_driver_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_pci_id_table to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_probe._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_switchdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_probe._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_switchdev_blocking_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_probe._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_basic_hw_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_basic_hw_test._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_basic_hw_test._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_basic_hw_test._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_reg_test._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_reg_test._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_dma_test_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_dma_test_one._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_dma_rings_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_dma_rings_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_dma_rings_init._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_dma_rings_init._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_dma_rings_init._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_dma_rings_init._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_event_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_event_irq_handler._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_probe_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_port_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_probe_port._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_probe_port._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_probe_port._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_world_check_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_world_check_init._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_world_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_port_dev_addr_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_port_stats to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_router_fib_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_router_fib_event.__msg to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_router_fib_event.__msg.128 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rocker_switchdev_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rocker_cmd_exec(ptr noundef %rocker_port, i1 noundef zeroext %nowait, ptr nocapture noundef readonly %prepare, ptr noundef %prepare_priv, ptr noundef readonly %process, ptr noundef %process_priv) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rocker1 = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 1
  %0 = ptrtoint ptr %rocker1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rocker1, align 4
  %cmd_ring_lock = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %cmd_ring_lock) #15
  %cmd_ring = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 7
  %head1.i = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head1.i, align 4
  %4 = ptrtoint ptr %cmd_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cmd_ring, align 4
  %inc.i.i = add i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %5)
  %cmp.i.i = icmp eq i32 %inc.i.i, %5
  %spec.select.i.i = select i1 %cmp.i.i, i32 0, i32 %inc.i.i
  %tail.i = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 7, i32 2
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i, i32 %7)
  %cmp.i = icmp eq i32 %spec.select.i.i, %7
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %rocker_desc_head_get.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

rocker_desc_head_get.exit:                        ; preds = %entry
  %desc_info2.i = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 7, i32 5
  %8 = ptrtoint ptr %desc_info2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc_info2.i, align 4
  %arrayidx.i = getelementptr %struct.rocker_desc_info, ptr %9, i32 %3
  %tlv_size.i = getelementptr %struct.rocker_desc_info, ptr %9, i32 %3, i32 2
  %10 = ptrtoint ptr %tlv_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %tlv_size.i, align 4
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %rocker_desc_head_get.exit.if.then_crit_edge, label %if.end

rocker_desc_head_get.exit.if.then_crit_edge:      ; preds = %rocker_desc_head_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %rocker_desc_head_get.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_ring_lock, i32 noundef %call3) #15
  br label %cleanup

if.end:                                           ; preds = %rocker_desc_head_get.exit
  %frombool = zext i1 %nowait to i8
  %desc.i = getelementptr %struct.rocker_desc_info, ptr %9, i32 %3, i32 3
  %11 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc.i, align 4
  %cookie.i = getelementptr inbounds %struct.rocker_desc, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %cookie.i, align 8
  %conv.i = trunc i64 %14 to i32
  %15 = inttoptr i32 %conv.i to ptr
  tail call void @__init_waitqueue_head(ptr noundef %15, ptr noundef nonnull @.str, ptr noundef nonnull @rocker_wait_init.__key) #15
  %done.i.i = getelementptr inbounds %struct.rocker_wait, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %done.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %done.i.i, align 4
  %nowait.i.i = getelementptr inbounds %struct.rocker_wait, ptr %15, i32 0, i32 2
  %17 = ptrtoint ptr %nowait.i.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %frombool, ptr %nowait.i.i, align 1
  %call12 = tail call i32 %prepare(ptr noundef %rocker_port, ptr noundef nonnull %arrayidx.i, ptr noundef %prepare_priv) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end16, label %if.then14

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_ring_lock, i32 noundef %call3) #15
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %18 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %head1.i, align 4
  %20 = ptrtoint ptr %cmd_ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cmd_ring, align 4
  %inc.i.i62 = add i32 %19, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i62, i32 %21)
  %cmp.i.i63 = icmp eq i32 %inc.i.i62, %21
  %spec.select.i.i64 = select i1 %cmp.i.i63, i32 0, i32 %inc.i.i62
  %22 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i64, i32 %23)
  %cmp.i66 = icmp eq i32 %spec.select.i.i64, %23
  br i1 %cmp.i66, label %do.body3.i, label %rocker_desc_head_set.exit, !prof !273

do.body3.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/rocker/rocker_main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 392, 0\0A.popsection", ""() #15, !srcloc !274
  unreachable

rocker_desc_head_set.exit:                        ; preds = %if.end16
  %data_size.i.i = getelementptr %struct.rocker_desc_info, ptr %9, i32 %3, i32 1
  %24 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data_size.i.i, align 4
  %conv.i.i = trunc i32 %25 to i16
  %26 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc.i, align 4
  %buf_size.i.i = getelementptr inbounds %struct.rocker_desc, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i.i, ptr %buf_size.i.i, align 8
  %29 = ptrtoint ptr %tlv_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tlv_size.i, align 4
  %conv1.i.i = trunc i32 %30 to i16
  %31 = load ptr, ptr %desc.i, align 4
  %tlv_size3.i.i = getelementptr inbounds %struct.rocker_desc, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %tlv_size3.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv1.i.i, ptr %tlv_size3.i.i, align 2
  %33 = ptrtoint ptr %head1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %spec.select.i.i64, ptr %head1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !275
  tail call void @arm_heavy_mb() #15
  %34 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i64) #15
  %hw_addr.i = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_addr.i, align 4
  %type.i = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 7, i32 6
  %37 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type.i, align 4
  %mul.i = shl i32 %38, 5
  %add.i = add i32 %mul.i, 4108
  %add.ptr.i = getelementptr i8, ptr %36, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %34) #15, !srcloc !276
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %cmd_ring_lock, i32 noundef %call3) #15
  br i1 %nowait, label %rocker_desc_head_set.exit.cleanup_crit_edge, label %if.end21

rocker_desc_head_set.exit.cleanup_crit_edge:      ; preds = %rocker_desc_head_set.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end21:                                         ; preds = %rocker_desc_head_set.exit
  %call22 = tail call fastcc zeroext i1 @rocker_wait_event_timeout(ptr noundef %15)
  br i1 %call22, label %if.end24, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end24:                                         ; preds = %if.end21
  %39 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %desc.i, align 4
  %comp_err.i = getelementptr inbounds %struct.rocker_desc, ptr %40, i32 0, i32 5
  %41 = ptrtoint ptr %comp_err.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %comp_err.i, align 2
  %43 = and i16 %42, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %43)
  %cond.i = icmp eq i16 %43, 0
  br i1 %cond.i, label %if.end28, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end28:                                         ; preds = %if.end24
  %tobool29.not = icmp eq ptr %process, null
  br i1 %tobool29.not, label %if.end28.if.end32_crit_edge, label %if.then30

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %call31 = tail call i32 %process(ptr noundef %rocker_port, ptr noundef nonnull %arrayidx.i, ptr noundef %process_priv) #15
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28.if.end32_crit_edge
  %err.0 = phi i32 [ %call31, %if.then30 ], [ 0, %if.end28.if.end32_crit_edge ]
  %44 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %desc.i, align 4
  %comp_err.i69 = getelementptr inbounds %struct.rocker_desc, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %comp_err.i69 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %comp_err.i69, align 2
  %48 = and i16 %47, 32767
  store i16 %48, ptr %comp_err.i69, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end24.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %rocker_desc_head_set.exit.cleanup_crit_edge, %if.then14, %if.then
  %retval.0 = phi i32 [ %call12, %if.then14 ], [ %err.0, %if.end32 ], [ -11, %if.then ], [ 0, %rocker_desc_head_set.exit.cleanup_crit_edge ], [ -5, %if.end21.cleanup_crit_edge ], [ -22, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @rocker_wait_event_timeout(ptr noundef %wait) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 84) #15
  %done = getelementptr inbounds %struct.rocker_wait, ptr %wait, i32 0, i32 1
  %0 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %done, align 4, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then9, label %entry.if.end34_crit_edge

entry.if.end34_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then9:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %2 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %call4 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %3 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %done, align 4, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool14.not5.not = icmp eq i8 %4, 0
  br i1 %tobool14.not5.not, label %if.then9.cleanup_crit_edge, label %if.then9.for.end_crit_edge

if.then9.for.end_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then9.cleanup_crit_edge
  %__ret10.17 = phi i32 [ %__ret10.1, %cleanup.cleanup_crit_edge ], [ 10, %if.then9.cleanup_crit_edge ]
  %call31 = call i32 @schedule_timeout(i32 noundef %__ret10.17) #15
  %call = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %5 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %done, align 4, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool14.not = icmp eq i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool18.not = icmp eq i32 %call31, 0
  %spec.store.select40 = select i1 %tobool18.not, i32 1, i32 %call31
  %__ret10.1 = select i1 %tobool14.not, i32 %call31, i32 %spec.store.select40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1)
  %tobool24.not = icmp eq i32 %__ret10.1, 0
  %not.tobool14.not = xor i1 %tobool14.not, true
  %7 = select i1 %not.tobool14.not, i1 true, i1 %tobool24.not
  br i1 %7, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then9.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %if.end34

if.end34:                                         ; preds = %for.end, %entry.if.end34_crit_edge
  %8 = ptrtoint ptr %done to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %done, align 4, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool37.not = icmp ne i8 %9, 0
  ret i1 %tobool37.not
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rocker_port_set_learning(ptr noundef %rocker_port, i1 noundef zeroext %learning) local_unnamed_addr #0 align 64 {
entry:
  %learning.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %learning to i8
  %0 = ptrtoint ptr %learning.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %frombool, ptr %learning.addr, align 1
  %call = call i32 @rocker_cmd_exec(ptr noundef %rocker_port, i1 noundef zeroext false, ptr noundef nonnull @rocker_cmd_set_port_learning_prep, ptr noundef nonnull %learning.addr, ptr noundef null, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_cmd_set_port_learning_prep(ptr nocapture noundef readonly %rocker_port, ptr noundef %desc_info, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %tmp.i23 = alloca i8, align 1
  %tmp.i21 = alloca i32, align 4
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv, align 1, !range !277
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #15
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 2, ptr %tmp.i, align 2
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not = icmp eq i32 %call.i, 0
  br i1 %tobool1.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc_info, align 4
  %tlv_size.i.i = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 2
  %5 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %6
  %call1.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 2, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool3.not27 = icmp eq ptr %add.ptr.i.i, null
  %tobool3.not = select i1 %cmp.i, i1 true, i1 %tobool3.not27
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %pport = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 4
  %7 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pport, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i21) #15
  %9 = ptrtoint ptr %tmp.i21 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i21, align 4
  %call.i22 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i21) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i21) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool7.not = icmp eq i32 %call.i22, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i23) #15
  %10 = ptrtoint ptr %tmp.i23 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %1, ptr %tmp.i23, align 1
  %call.i24 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i23) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i23) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool12.not = icmp eq i32 %call.i24, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc_info, align 4
  %13 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i26 = getelementptr i8, ptr %12, i32 %14
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i26 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %len.i = getelementptr inbounds %struct.rocker_tlv, ptr %add.ptr.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end5.cleanup_crit_edge ], [ -90, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rocker_port_dev_lower_find(ptr noundef %dev, ptr noundef %rocker) local_unnamed_addr #0 align 64 {
entry:
  %priv = alloca %struct.netdev_nested_priv, align 8
  %data = alloca %struct.rocker_walk_data, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %priv) #15
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %priv, align 8, !annotation !278
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #15
  %1 = getelementptr inbounds %struct.rocker_walk_data, ptr %data, i32 0, i32 1
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp eq ptr %3, @rocker_port_netdev_ops
  br i1 %cmp.i.i, label %rocker_port_dev_check_under.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

rocker_port_dev_check_under.exit:                 ; preds = %entry
  %rocker2.i = getelementptr i8, ptr %dev, i32 2308
  %4 = ptrtoint ptr %rocker2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rocker2.i, align 4
  %cmp.not.i = icmp eq ptr %5, %rocker
  br i1 %cmp.not.i, label %if.then, label %rocker_port_dev_check_under.exit.if.end_crit_edge

rocker_port_dev_check_under.exit.if.end_crit_edge: ; preds = %rocker_port_dev_check_under.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %rocker_port_dev_check_under.exit
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  br label %cleanup

if.end:                                           ; preds = %rocker_port_dev_check_under.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %rocker, ptr %data, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %1, align 4
  %data3 = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %data, ptr %data3, align 4
  %call4 = call i32 @netdev_walk_all_lower_dev(ptr noundef %dev, ptr noundef nonnull @rocker_lower_dev_walk, ptr noundef nonnull %priv) #15
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi ptr [ %add.ptr.i, %if.then ], [ %10, %if.end ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %priv) #15
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netdev_walk_all_lower_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rocker_lower_dev_walk(ptr noundef %lower_dev, ptr nocapture noundef readonly %priv) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.netdev_nested_priv, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %lower_dev, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops.i.i, align 8
  %cmp.i.i = icmp eq ptr %3, @rocker_port_netdev_ops
  br i1 %cmp.i.i, label %rocker_port_dev_check_under.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

rocker_port_dev_check_under.exit:                 ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %rocker2.i = getelementptr i8, ptr %lower_dev, i32 2308
  %6 = ptrtoint ptr %rocker2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rocker2.i, align 4
  %cmp.not.i = icmp eq ptr %7, %5
  br i1 %cmp.not.i, label %if.then, label %rocker_port_dev_check_under.exit.if.end_crit_edge

rocker_port_dev_check_under.exit.if.end_crit_edge: ; preds = %rocker_port_dev_check_under.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %rocker_port_dev_check_under.exit
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %lower_dev, i32 2304
  %port = getelementptr inbounds %struct.rocker_walk_data, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr.i, ptr %port, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %rocker_port_dev_check_under.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %rocker_port_dev_check_under.exit.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rocker_module_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @unregister_netevent_notifier(ptr noundef nonnull @rocker_netevent_nb) #15
  %call1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @rocker_netdevice_nb) #15
  tail call void @pci_unregister_driver(ptr noundef nonnull @rocker_pci_driver) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netevent_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_module_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @rocker_netdevice_nb) #15
  %call1 = tail call i32 @register_netevent_notifier(ptr noundef nonnull @rocker_netevent_nb) #15
  %call2 = tail call i32 @__pci_register_driver(ptr noundef nonnull @rocker_pci_driver, ptr noundef null, ptr noundef nonnull @.str.130) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %err_pci_register_driver

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

err_pci_register_driver:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call i32 @unregister_netevent_notifier(ptr noundef nonnull @rocker_netevent_nb) #15
  %call4 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @rocker_netdevice_nb) #15
  br label %cleanup

cleanup:                                          ; preds = %err_pci_register_driver, %entry.cleanup_crit_edge
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rocker_tlv_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_port_open(ptr noundef %dev) #0 align 64 {
entry:
  %attrs.i.i.i = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rocker1.i = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %rocker1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rocker1.i, align 4
  %port_number.i = getelementptr i8, ptr %dev, i32 2316
  %2 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port_number.i, align 4
  %mul.i = shl i32 %3, 1
  %add.i = add i32 %mul.i, 2
  %tx_ring.i = getelementptr i8, ptr %dev, i32 2776
  %call.i = tail call fastcc i32 @rocker_dma_ring_create(ptr noundef %1, i32 noundef %add.i, i32 noundef 64, ptr noundef %tx_ring.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %rocker_port_dma_rings_init.exit.thread86

rocker_port_dma_rings_init.exit.thread86:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %5, ptr noundef nonnull @.str.5) #18
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call3.i = tail call fastcc i32 @rocker_dma_ring_bufs_alloc(ptr noundef %1, ptr noundef %tx_ring.i, i32 noundef 1, i32 noundef 256) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end7.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %7, ptr noundef nonnull @.str.6) #18
  br label %rocker_port_dma_rings_init.exit

if.end7.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port_number.i, align 4
  %mul9.i = shl i32 %9, 1
  %add10.i = add i32 %mul9.i, 3
  %rx_ring.i = getelementptr i8, ptr %dev, i32 2804
  %call11.i = tail call fastcc i32 @rocker_dma_ring_create(ptr noundef %1, i32 noundef %add10.i, i32 noundef 64, ptr noundef %rx_ring.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end15.i, label %if.then13.i

if.then13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.7) #18
  br label %err_dma_rx_ring_create.i

if.end15.i:                                       ; preds = %if.end7.i
  %call17.i = tail call fastcc i32 @rocker_dma_ring_bufs_alloc(ptr noundef %1, ptr noundef %rx_ring.i, i32 noundef 0, i32 noundef 256) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end21.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %13, ptr noundef nonnull @.str.8) #18
  br label %err_dma_rx_ring_bufs_alloc.i

if.end21.i:                                       ; preds = %if.end15.i
  %14 = ptrtoint ptr %rocker1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rocker1.i, align 4
  %16 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_ring.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp27.not.i.i = icmp eq i32 %17, 0
  br i1 %cmp27.not.i.i, label %if.end21.i.rocker_port_dma_rings_init.exit.thread_crit_edge, label %for.body.lr.ph.i.i

if.end21.i.rocker_port_dma_rings_init.exit.thread_crit_edge: ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_port_dma_rings_init.exit.thread

for.body.lr.ph.i.i:                               ; preds = %if.end21.i
  %desc_info.i.i = getelementptr i8, ptr %dev, i32 2824
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.028.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %18 = ptrtoint ptr %desc_info.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc_info.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.rocker_desc_info, ptr %19, i32 %i.028.i.i
  %call.i.i = tail call fastcc i32 @rocker_dma_rx_ring_skb_alloc(ptr noundef %add.ptr.i, ptr noundef %arrayidx.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %for.cond3.preheader.i.i

for.cond3.preheader.i.i:                          ; preds = %for.body.i.i
  %i.129.i.i = add i32 %i.028.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.129.i.i)
  %cmp430.i.i = icmp sgt i32 %i.129.i.i, -1
  br i1 %cmp430.i.i, label %for.body5.lr.ph.i.i, label %for.cond3.preheader.i.i.if.then24.i_crit_edge

for.cond3.preheader.i.i.if.then24.i_crit_edge:    ; preds = %for.cond3.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then24.i

for.body5.lr.ph.i.i:                              ; preds = %for.cond3.preheader.i.i
  %20 = getelementptr inbounds [6 x ptr], ptr %attrs.i.i.i, i32 0, i32 4
  %21 = getelementptr inbounds [6 x ptr], ptr %attrs.i.i.i, i32 0, i32 3
  br label %for.body5.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.028.i.i, 1
  %22 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %rx_ring.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %23
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.rocker_port_dma_rings_init.exit.thread_crit_edge

for.inc.i.i.rocker_port_dma_rings_init.exit.thread_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_port_dma_rings_init.exit.thread

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.body5.i.i:                                    ; preds = %rocker_dma_rx_ring_skb_free.exit.i.i.for.body5.i.i_crit_edge, %for.body5.lr.ph.i.i
  %i.131.i.i = phi i32 [ %i.129.i.i, %for.body5.lr.ph.i.i ], [ %i.1.i.i, %rocker_dma_rx_ring_skb_free.exit.i.i.for.body5.i.i_crit_edge ]
  %24 = ptrtoint ptr %desc_info.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc_info.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %attrs.i.i.i) #15
  %desc.i.i.i.i = getelementptr %struct.rocker_desc_info, ptr %25, i32 %i.131.i.i, i32 3
  %26 = call ptr @memset(ptr %attrs.i.i.i, i32 255, i32 24)
  %27 = ptrtoint ptr %desc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %desc.i.i.i.i, align 4
  %cookie.i.i.i.i = getelementptr inbounds %struct.rocker_desc, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %cookie.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %cookie.i.i.i.i, align 8
  %conv.i.i.i.i = trunc i64 %30 to i32
  %31 = inttoptr i32 %conv.i.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %conv.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %for.body5.i.i.rocker_dma_rx_ring_skb_free.exit.i.i_crit_edge, label %if.end.i.i.i

for.body5.i.i.rocker_dma_rx_ring_skb_free.exit.i.i_crit_edge: ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_rx_ring_skb_free.exit.i.i

if.end.i.i.i:                                     ; preds = %for.body5.i.i
  %arrayidx7.i.i = getelementptr %struct.rocker_desc_info, ptr %25, i32 %i.131.i.i
  %32 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx7.i.i, align 4
  %tlv_size.i.i.i.i = getelementptr inbounds %struct.rocker_desc, ptr %28, i32 0, i32 3
  %34 = ptrtoint ptr %tlv_size.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %tlv_size.i.i.i.i, align 2
  %conv.i6.i.i.i = zext i16 %35 to i32
  call void @rocker_tlv_parse(ptr noundef nonnull %attrs.i.i.i, i32 noundef 5, ptr noundef %33, i32 noundef %conv.i6.i.i.i) #15
  %36 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %15, align 8
  %38 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %21, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %39, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.rocker_dma_rx_ring_skb_unmap.exit.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.rocker_dma_rx_ring_skb_unmap.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_rx_ring_skb_unmap.exit.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i
  %40 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %20, align 4
  %tobool3.not.i.i.i.i = icmp eq ptr %41, null
  br i1 %tobool3.not.i.i.i.i, label %lor.lhs.false.i.i.i.i.rocker_dma_rx_ring_skb_unmap.exit.i.i.i_crit_edge, label %if.end.i.i.i.i

lor.lhs.false.i.i.i.i.rocker_dma_rx_ring_skb_unmap.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_rx_ring_skb_unmap.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %39, i32 8
  %42 = ptrtoint ptr %add.ptr.i.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %add.ptr.i.i.i.i.i.i, align 8
  %conv.i7.i.i.i = trunc i64 %43 to i32
  %add.ptr.i.i13.i.i.i.i = getelementptr i8, ptr %41, i32 8
  %44 = ptrtoint ptr %add.ptr.i.i13.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr.i.i13.i.i.i.i, align 2
  %conv7.i.i.i.i = zext i16 %45 to i32
  %dev.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  call void @dma_unmap_page_attrs(ptr noundef %dev.i.i.i.i, i32 noundef %conv.i7.i.i.i, i32 noundef %conv7.i.i.i.i, i32 noundef 2, i32 noundef 0) #15
  br label %rocker_dma_rx_ring_skb_unmap.exit.i.i.i

rocker_dma_rx_ring_skb_unmap.exit.i.i.i:          ; preds = %if.end.i.i.i.i, %lor.lhs.false.i.i.i.i.rocker_dma_rx_ring_skb_unmap.exit.i.i.i_crit_edge, %if.end.i.i.i.rocker_dma_rx_ring_skb_unmap.exit.i.i.i_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef nonnull %31, i32 noundef 1) #15
  br label %rocker_dma_rx_ring_skb_free.exit.i.i

rocker_dma_rx_ring_skb_free.exit.i.i:             ; preds = %rocker_dma_rx_ring_skb_unmap.exit.i.i.i, %for.body5.i.i.rocker_dma_rx_ring_skb_free.exit.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %attrs.i.i.i) #15
  %i.1.i.i = add i32 %i.131.i.i, -1
  %cmp4.i.i = icmp sgt i32 %i.1.i.i, -1
  br i1 %cmp4.i.i, label %rocker_dma_rx_ring_skb_free.exit.i.i.for.body5.i.i_crit_edge, label %rocker_dma_rx_ring_skb_free.exit.i.i.if.then24.i_crit_edge

rocker_dma_rx_ring_skb_free.exit.i.i.if.then24.i_crit_edge: ; preds = %rocker_dma_rx_ring_skb_free.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then24.i

rocker_dma_rx_ring_skb_free.exit.i.i.for.body5.i.i_crit_edge: ; preds = %rocker_dma_rx_ring_skb_free.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body5.i.i

if.then24.i:                                      ; preds = %rocker_dma_rx_ring_skb_free.exit.i.i.if.then24.i_crit_edge, %for.cond3.preheader.i.i.if.then24.i_crit_edge
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %47, ptr noundef nonnull @.str.9) #18
  %48 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rx_ring.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp13.not.i.i = icmp eq i32 %49, 0
  br i1 %cmp13.not.i.i, label %if.then24.i.err_dma_rx_ring_bufs_alloc.i_crit_edge, label %for.body.lr.ph.i64.i

if.then24.i.err_dma_rx_ring_bufs_alloc.i_crit_edge: ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_dma_rx_ring_bufs_alloc.i

for.body.lr.ph.i64.i:                             ; preds = %if.then24.i
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %desc3.i.i = getelementptr i8, ptr %dev, i32 2816
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  br label %for.body.i68.i

for.body.i68.i:                                   ; preds = %for.body.i68.i.for.body.i68.i_crit_edge, %for.body.lr.ph.i64.i
  %i.014.i.i = phi i32 [ 0, %for.body.lr.ph.i64.i ], [ %inc.i66.i, %for.body.i68.i.for.body.i68.i_crit_edge ]
  %52 = ptrtoint ptr %desc_info.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %desc_info.i.i, align 4
  %arrayidx.i65.i = getelementptr %struct.rocker_desc_info, ptr %53, i32 %i.014.i.i
  %54 = ptrtoint ptr %desc3.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %desc3.i.i, align 4
  %arrayidx4.i.i = getelementptr %struct.rocker_desc, ptr %55, i32 %i.014.i.i
  %56 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 0, ptr %arrayidx4.i.i, align 8
  %buf_size.i.i = getelementptr %struct.rocker_desc, ptr %55, i32 %i.014.i.i, i32 2
  %57 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 0, ptr %buf_size.i.i, align 8
  %mapaddr.i.i = getelementptr %struct.rocker_desc_info, ptr %53, i32 %i.014.i.i, i32 4
  %58 = ptrtoint ptr %mapaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mapaddr.i.i, align 4
  %data_size.i.i = getelementptr %struct.rocker_desc_info, ptr %53, i32 %i.014.i.i, i32 1
  %60 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %data_size.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %59, i32 noundef %61, i32 noundef 0, i32 noundef 0) #15
  %62 = ptrtoint ptr %arrayidx.i65.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %arrayidx.i65.i, align 4
  call void @kfree(ptr noundef %63) #15
  %inc.i66.i = add nuw i32 %i.014.i.i, 1
  %64 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %rx_ring.i, align 4
  %cmp.i67.i = icmp ult i32 %inc.i66.i, %65
  br i1 %cmp.i67.i, label %for.body.i68.i.for.body.i68.i_crit_edge, label %for.body.i68.i.err_dma_rx_ring_bufs_alloc.i_crit_edge

for.body.i68.i.err_dma_rx_ring_bufs_alloc.i_crit_edge: ; preds = %for.body.i68.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_dma_rx_ring_bufs_alloc.i

for.body.i68.i.for.body.i68.i_crit_edge:          ; preds = %for.body.i68.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i68.i

rocker_port_dma_rings_init.exit.thread:           ; preds = %for.inc.i.i.rocker_port_dma_rings_init.exit.thread_crit_edge, %if.end21.i.rocker_port_dma_rings_init.exit.thread_crit_edge
  tail call fastcc void @rocker_dma_ring_pass_to_producer(ptr noundef %1, ptr noundef %rx_ring.i) #15
  %66 = ptrtoint ptr %rocker1.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %rocker1.i, align 4
  %68 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %port_number.i, align 4
  %mul.i51 = shl i32 %69, 1
  %add.i52 = add i32 %mul.i51, 4
  %msix_entries.i.i = getelementptr inbounds %struct.rocker, ptr %67, i32 0, i32 2
  %70 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %msix_entries.i.i, align 8
  %arrayidx.i.i53 = getelementptr %struct.msix_entry, ptr %71, i32 %add.i52
  %72 = ptrtoint ptr %arrayidx.i.i53 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i53, align 4
  %call.i54 = call i32 @request_threaded_irq(i32 noundef %73, ptr noundef nonnull @rocker_tx_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @rocker_driver_name, ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool4.not = icmp eq i32 %call.i54, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

err_dma_rx_ring_bufs_alloc.i:                     ; preds = %for.body.i68.i.err_dma_rx_ring_bufs_alloc.i_crit_edge, %if.then24.i.err_dma_rx_ring_bufs_alloc.i_crit_edge, %if.then19.i
  %err.0.i = phi i32 [ %call17.i, %if.then19.i ], [ %call.i.i, %if.then24.i.err_dma_rx_ring_bufs_alloc.i_crit_edge ], [ %call.i.i, %for.body.i68.i.err_dma_rx_ring_bufs_alloc.i_crit_edge ]
  %hw_addr.i.i = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 1
  %74 = ptrtoint ptr %hw_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hw_addr.i.i, align 4
  %type.i.i = getelementptr i8, ptr %dev, i32 2828
  %76 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %type.i.i, align 4
  %mul.i.i = shl i32 %77, 5
  %add.i.i = add i32 %mul.i.i, 4096
  %add.ptr.i.i = getelementptr i8, ptr %75, i32 %add.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !279
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #15, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !280
  call void @arm_heavy_mb() #15
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 0) #15, !srcloc !276
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %1, align 8
  %dev.i69.i = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  %80 = ptrtoint ptr %rx_ring.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %rx_ring.i, align 4
  %mul1.i.i = shl i32 %81, 5
  %desc.i.i = getelementptr i8, ptr %dev, i32 2816
  %82 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %desc.i.i, align 4
  %mapaddr.i70.i = getelementptr i8, ptr %dev, i32 2820
  %84 = ptrtoint ptr %mapaddr.i70.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %mapaddr.i70.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i69.i, i32 noundef %mul1.i.i, ptr noundef %83, i32 noundef %85, i32 noundef 0) #15
  %desc_info.i71.i = getelementptr i8, ptr %dev, i32 2824
  %86 = ptrtoint ptr %desc_info.i71.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %desc_info.i71.i, align 4
  call void @kfree(ptr noundef %87) #15
  br label %err_dma_rx_ring_create.i

err_dma_rx_ring_create.i:                         ; preds = %err_dma_rx_ring_bufs_alloc.i, %if.then13.i
  %err.1.i = phi i32 [ %call11.i, %if.then13.i ], [ %err.0.i, %err_dma_rx_ring_bufs_alloc.i ]
  %88 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %tx_ring.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp13.not.i72.i = icmp eq i32 %89, 0
  br i1 %cmp13.not.i72.i, label %err_dma_rx_ring_create.i.rocker_port_dma_rings_init.exit_crit_edge, label %for.body.lr.ph.i76.i

err_dma_rx_ring_create.i.rocker_port_dma_rings_init.exit_crit_edge: ; preds = %err_dma_rx_ring_create.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_port_dma_rings_init.exit

for.body.lr.ph.i76.i:                             ; preds = %err_dma_rx_ring_create.i
  %90 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %1, align 8
  %desc_info2.i73.i = getelementptr i8, ptr %dev, i32 2796
  %desc3.i74.i = getelementptr i8, ptr %dev, i32 2788
  %dev.i75.i = getelementptr inbounds %struct.pci_dev, ptr %91, i32 0, i32 44
  br label %for.body.i85.i

for.body.i85.i:                                   ; preds = %for.body.i85.i.for.body.i85.i_crit_edge, %for.body.lr.ph.i76.i
  %i.014.i77.i = phi i32 [ 0, %for.body.lr.ph.i76.i ], [ %inc.i83.i, %for.body.i85.i.for.body.i85.i_crit_edge ]
  %92 = ptrtoint ptr %desc_info2.i73.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %desc_info2.i73.i, align 4
  %arrayidx.i78.i = getelementptr %struct.rocker_desc_info, ptr %93, i32 %i.014.i77.i
  %94 = ptrtoint ptr %desc3.i74.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %desc3.i74.i, align 4
  %arrayidx4.i79.i = getelementptr %struct.rocker_desc, ptr %95, i32 %i.014.i77.i
  %96 = ptrtoint ptr %arrayidx4.i79.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 0, ptr %arrayidx4.i79.i, align 8
  %buf_size.i80.i = getelementptr %struct.rocker_desc, ptr %95, i32 %i.014.i77.i, i32 2
  %97 = ptrtoint ptr %buf_size.i80.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 0, ptr %buf_size.i80.i, align 8
  %mapaddr.i81.i = getelementptr %struct.rocker_desc_info, ptr %93, i32 %i.014.i77.i, i32 4
  %98 = ptrtoint ptr %mapaddr.i81.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mapaddr.i81.i, align 4
  %data_size.i82.i = getelementptr %struct.rocker_desc_info, ptr %93, i32 %i.014.i77.i, i32 1
  %100 = ptrtoint ptr %data_size.i82.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %data_size.i82.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev.i75.i, i32 noundef %99, i32 noundef %101, i32 noundef 1, i32 noundef 0) #15
  %102 = ptrtoint ptr %arrayidx.i78.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx.i78.i, align 4
  call void @kfree(ptr noundef %103) #15
  %inc.i83.i = add nuw i32 %i.014.i77.i, 1
  %104 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %tx_ring.i, align 4
  %cmp.i84.i = icmp ult i32 %inc.i83.i, %105
  br i1 %cmp.i84.i, label %for.body.i85.i.for.body.i85.i_crit_edge, label %for.body.i85.i.rocker_port_dma_rings_init.exit_crit_edge

for.body.i85.i.rocker_port_dma_rings_init.exit_crit_edge: ; preds = %for.body.i85.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_port_dma_rings_init.exit

for.body.i85.i.for.body.i85.i_crit_edge:          ; preds = %for.body.i85.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i85.i

rocker_port_dma_rings_init.exit:                  ; preds = %for.body.i85.i.rocker_port_dma_rings_init.exit_crit_edge, %err_dma_rx_ring_create.i.rocker_port_dma_rings_init.exit_crit_edge, %if.then5.i
  %err.2.i = phi i32 [ %call3.i, %if.then5.i ], [ %err.1.i, %err_dma_rx_ring_create.i.rocker_port_dma_rings_init.exit_crit_edge ], [ %err.1.i, %for.body.i85.i.rocker_port_dma_rings_init.exit_crit_edge ]
  %hw_addr.i87.i = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 1
  %106 = ptrtoint ptr %hw_addr.i87.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw_addr.i87.i, align 4
  %type.i88.i = getelementptr i8, ptr %dev, i32 2800
  %108 = ptrtoint ptr %type.i88.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %type.i88.i, align 4
  %mul.i89.i = shl i32 %109, 5
  %add.i90.i = add i32 %mul.i89.i, 4096
  %add.ptr.i91.i = getelementptr i8, ptr %107, i32 %add.i90.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !279
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i, i32 0) #15, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !280
  call void @arm_heavy_mb() #15
  %add.ptr.i.i92.i = getelementptr i8, ptr %add.ptr.i91.i, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i92.i, i32 0) #15, !srcloc !276
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %1, align 8
  %dev.i93.i = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  %112 = ptrtoint ptr %tx_ring.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %tx_ring.i, align 4
  %mul1.i94.i = shl i32 %113, 5
  %desc.i95.i = getelementptr i8, ptr %dev, i32 2788
  %114 = ptrtoint ptr %desc.i95.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %desc.i95.i, align 4
  %mapaddr.i96.i = getelementptr i8, ptr %dev, i32 2792
  %116 = ptrtoint ptr %mapaddr.i96.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %mapaddr.i96.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i93.i, i32 noundef %mul1.i94.i, ptr noundef %115, i32 noundef %117, i32 noundef 0) #15
  %desc_info.i97.i = getelementptr i8, ptr %dev, i32 2796
  %118 = ptrtoint ptr %desc_info.i97.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %desc_info.i97.i, align 4
  call void @kfree(ptr noundef %119) #15
  br label %cleanup

if.then5:                                         ; preds = %rocker_port_dma_rings_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  %120 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %121, ptr noundef nonnull @.str.2) #18
  br label %err_request_tx_irq

if.end7:                                          ; preds = %rocker_port_dma_rings_init.exit.thread
  %122 = ptrtoint ptr %rocker1.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %rocker1.i, align 4
  %124 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %port_number.i, align 4
  %mul.i57 = shl i32 %125, 1
  %add.i58 = add i32 %mul.i57, 5
  %msix_entries.i.i59 = getelementptr inbounds %struct.rocker, ptr %123, i32 0, i32 2
  %126 = ptrtoint ptr %msix_entries.i.i59 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %msix_entries.i.i59, align 8
  %arrayidx.i.i60 = getelementptr %struct.msix_entry, ptr %127, i32 %add.i58
  %128 = ptrtoint ptr %arrayidx.i.i60 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %arrayidx.i.i60, align 4
  %call.i61 = call i32 @request_threaded_irq(i32 noundef %129, ptr noundef nonnull @rocker_rx_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @rocker_driver_name, ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool10.not = icmp eq i32 %call.i61, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %130 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %131, ptr noundef nonnull @.str.3) #18
  br label %err_request_rx_irq

if.end13:                                         ; preds = %if.end7
  %132 = ptrtoint ptr %rocker1.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %rocker1.i, align 4
  %wops1.i = getelementptr inbounds %struct.rocker, ptr %133, i32 0, i32 10
  %134 = ptrtoint ptr %wops1.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %wops1.i, align 8
  %port_open.i = getelementptr inbounds %struct.rocker_world_ops, ptr %135, i32 0, i32 10
  %136 = ptrtoint ptr %port_open.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %port_open.i, align 4
  %tobool.not.i63 = icmp eq ptr %137, null
  br i1 %tobool.not.i63, label %if.end13.if.end18_crit_edge, label %rocker_world_port_open.exit

if.end13.if.end18_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

rocker_world_port_open.exit:                      ; preds = %if.end13
  %call.i64 = call i32 %137(ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool15.not = icmp eq i32 %call.i64, 0
  br i1 %tobool15.not, label %rocker_world_port_open.exit.if.end18_crit_edge, label %if.then16

rocker_world_port_open.exit.if.end18_crit_edge:   ; preds = %rocker_world_port_open.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then16:                                        ; preds = %rocker_world_port_open.exit
  call void @__sanitizer_cov_trace_pc() #17
  %138 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %139, ptr noundef nonnull @.str.4) #18
  %140 = ptrtoint ptr %rocker1.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %rocker1.i, align 4
  %142 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %port_number.i, align 4
  %mul.i69 = shl i32 %143, 1
  %add.i70 = add i32 %mul.i69, 5
  %msix_entries.i.i71 = getelementptr inbounds %struct.rocker, ptr %141, i32 0, i32 2
  %144 = ptrtoint ptr %msix_entries.i.i71 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %msix_entries.i.i71, align 8
  %arrayidx.i.i72 = getelementptr %struct.msix_entry, ptr %145, i32 %add.i70
  %146 = ptrtoint ptr %arrayidx.i.i72 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx.i.i72, align 4
  %call23 = call ptr @free_irq(i32 noundef %147, ptr noundef %add.ptr.i) #15
  br label %err_request_rx_irq

if.end18:                                         ; preds = %rocker_world_port_open.exit.if.end18_crit_edge, %if.end13.if.end18_crit_edge
  %napi_tx = getelementptr i8, ptr %dev, i32 2328
  call void @napi_enable(ptr noundef %napi_tx) #15
  %napi_rx = getelementptr i8, ptr %dev, i32 2552
  call void @napi_enable(ptr noundef %napi_rx) #15
  %proto_down = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 148
  %148 = ptrtoint ptr %proto_down to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %proto_down, align 4, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool19.not = icmp eq i8 %149, 0
  br i1 %tobool19.not, label %if.then20, label %if.end18.if.end21_crit_edge

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %150 = ptrtoint ptr %rocker1.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %rocker1.i, align 4
  %hw_addr.i = getelementptr inbounds %struct.rocker, ptr %151, i32 0, i32 1
  %152 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i74 = getelementptr i8, ptr %153, i32 792
  %154 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #15, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !282
  %add.ptr.i.i75 = getelementptr i8, ptr %153, i32 796
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i75) #15, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !283
  %156 = zext i32 %155 to i64
  %157 = zext i32 %154 to i64
  %158 = shl nuw i64 %157, 32
  %159 = or i64 %158, %156
  %160 = call i64 @llvm.bswap.i64(i64 %159) #15
  %pport.i = getelementptr i8, ptr %dev, i32 2320
  %161 = ptrtoint ptr %pport.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %pport.i, align 8
  %sh_prom.i = zext i32 %162 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %or.i = or i64 %shl.i, %160
  %extract.t18.i = trunc i64 %or.i to i32
  %extract20.i = lshr i64 %or.i, 32
  %extract.t21.i = trunc i64 %extract20.i to i32
  %163 = ptrtoint ptr %rocker1.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %rocker1.i, align 4
  %hw_addr5.i = getelementptr inbounds %struct.rocker, ptr %164, i32 0, i32 1
  %165 = ptrtoint ptr %hw_addr5.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %hw_addr5.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %166, i32 792
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !279
  call void @arm_heavy_mb() #15
  %167 = call i32 @llvm.bswap.i32(i32 %extract.t18.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %167) #15, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !280
  call void @arm_heavy_mb() #15
  %168 = call i32 @llvm.bswap.i32(i32 %extract.t21.i) #15
  %add.ptr.i12.i = getelementptr i8, ptr %166, i32 796
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %168) #15, !srcloc !276
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18.if.end21_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %169 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %170, i32 0, i32 13
  call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  br label %cleanup

err_request_rx_irq:                               ; preds = %if.then16, %if.then11
  %err.0 = phi i32 [ %call.i61, %if.then11 ], [ %call.i64, %if.then16 ]
  %171 = ptrtoint ptr %rocker1.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %rocker1.i, align 4
  %173 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %port_number.i, align 4
  %mul.i80 = shl i32 %174, 1
  %add.i81 = add i32 %mul.i80, 4
  %msix_entries.i.i82 = getelementptr inbounds %struct.rocker, ptr %172, i32 0, i32 2
  %175 = ptrtoint ptr %msix_entries.i.i82 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %msix_entries.i.i82, align 8
  %arrayidx.i.i83 = getelementptr %struct.msix_entry, ptr %176, i32 %add.i81
  %177 = ptrtoint ptr %arrayidx.i.i83 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx.i.i83, align 4
  %call25 = call ptr @free_irq(i32 noundef %178, ptr noundef %add.ptr.i) #15
  br label %err_request_tx_irq

err_request_tx_irq:                               ; preds = %err_request_rx_irq, %if.then5
  %err.1 = phi i32 [ %call.i54, %if.then5 ], [ %err.0, %err_request_rx_irq ]
  call fastcc void @rocker_port_dma_rings_fini(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %err_request_tx_irq, %if.end21, %rocker_port_dma_rings_init.exit, %rocker_port_dma_rings_init.exit.thread86
  %retval.0 = phi i32 [ %err.1, %err_request_tx_irq ], [ 0, %if.end21 ], [ %err.2.i, %rocker_port_dma_rings_init.exit ], [ %call.i, %rocker_port_dma_rings_init.exit.thread86 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_port_stop(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  %rocker.i = getelementptr i8, ptr %dev, i32 2308
  %2 = ptrtoint ptr %rocker.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rocker.i, align 4
  %hw_addr.i = getelementptr inbounds %struct.rocker, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw_addr.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %5, i32 792
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #15, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !282
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 796
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !283
  %8 = zext i32 %7 to i64
  %9 = zext i32 %6 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or i64 %10, %8
  %12 = tail call i64 @llvm.bswap.i64(i64 %11) #15
  %pport.i = getelementptr i8, ptr %dev, i32 2320
  %13 = ptrtoint ptr %pport.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pport.i, align 8
  %sh_prom.i = zext i32 %14 to i64
  %shl.i = shl nuw i64 1, %sh_prom.i
  %neg.i = xor i64 %shl.i, -1
  %and.i = and i64 %12, %neg.i
  %extract.t.i = trunc i64 %and.i to i32
  %extract.i = lshr i64 %and.i, 32
  %extract.t19.i = trunc i64 %extract.i to i32
  %15 = ptrtoint ptr %rocker.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %rocker.i, align 4
  %hw_addr5.i = getelementptr inbounds %struct.rocker, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %hw_addr5.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw_addr5.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %18, i32 792
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !279
  tail call void @arm_heavy_mb() #15
  %19 = tail call i32 @llvm.bswap.i32(i32 %extract.t.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %19) #15, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !280
  tail call void @arm_heavy_mb() #15
  %20 = tail call i32 @llvm.bswap.i32(i32 %extract.t19.i) #15
  %add.ptr.i12.i = getelementptr i8, ptr %18, i32 796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %20) #15, !srcloc !276
  %napi_rx = getelementptr i8, ptr %dev, i32 2552
  tail call void @napi_disable(ptr noundef %napi_rx) #15
  %napi_tx = getelementptr i8, ptr %dev, i32 2328
  tail call void @napi_disable(ptr noundef %napi_tx) #15
  %21 = ptrtoint ptr %rocker.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rocker.i, align 4
  %wops1.i = getelementptr inbounds %struct.rocker, ptr %22, i32 0, i32 10
  %23 = ptrtoint ptr %wops1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %wops1.i, align 8
  %port_stop.i = getelementptr inbounds %struct.rocker_world_ops, ptr %24, i32 0, i32 11
  %25 = ptrtoint ptr %port_stop.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %port_stop.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %entry.rocker_world_port_stop.exit_crit_edge, label %if.end.i

entry.rocker_world_port_stop.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_world_port_stop.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %26(ptr noundef %add.ptr.i) #15
  br label %rocker_world_port_stop.exit

rocker_world_port_stop.exit:                      ; preds = %if.end.i, %entry.rocker_world_port_stop.exit_crit_edge
  %27 = ptrtoint ptr %rocker.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rocker.i, align 4
  %port_number.i = getelementptr i8, ptr %dev, i32 2316
  %29 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port_number.i, align 4
  %mul.i = shl i32 %30, 1
  %add.i = add i32 %mul.i, 5
  %msix_entries.i.i = getelementptr inbounds %struct.rocker, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %msix_entries.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.msix_entry, ptr %32, i32 %add.i
  %33 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i, align 4
  %call2 = tail call ptr @free_irq(i32 noundef %34, ptr noundef %add.ptr.i) #15
  %35 = ptrtoint ptr %rocker.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %rocker.i, align 4
  %37 = ptrtoint ptr %port_number.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %port_number.i, align 4
  %mul.i19 = shl i32 %38, 1
  %add.i20 = add i32 %mul.i19, 4
  %msix_entries.i.i21 = getelementptr inbounds %struct.rocker, ptr %36, i32 0, i32 2
  %39 = ptrtoint ptr %msix_entries.i.i21 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %msix_entries.i.i21, align 8
  %arrayidx.i.i22 = getelementptr %struct.msix_entry, ptr %40, i32 %add.i20
  %41 = ptrtoint ptr %arrayidx.i.i22 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i22, align 4
  %call4 = tail call ptr @free_irq(i32 noundef %42, ptr noundef %add.ptr.i) #15
  tail call fastcc void @rocker_port_dma_rings_fini(ptr noundef %add.ptr.i)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_port_xmit(ptr noundef %skb, ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %rocker1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %rocker1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rocker1, align 4
  %tx_ring = getelementptr i8, ptr %dev, i32 2776
  %head1.i = getelementptr i8, ptr %dev, i32 2780
  %2 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head1.i, align 4
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_ring, align 4
  %inc.i.i = add i32 %3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %5)
  %cmp.i.i = icmp eq i32 %inc.i.i, %5
  %spec.select.i.i = select i1 %cmp.i.i, i32 0, i32 %inc.i.i
  %tail.i = getelementptr i8, ptr %dev, i32 2784
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i, i32 %7)
  %cmp.i = icmp eq i32 %spec.select.i.i, %7
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %rocker_desc_head_get.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

rocker_desc_head_get.exit:                        ; preds = %entry
  %desc_info2.i = getelementptr i8, ptr %dev, i32 2796
  %8 = ptrtoint ptr %desc_info2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc_info2.i, align 4
  %arrayidx.i = getelementptr %struct.rocker_desc_info, ptr %9, i32 %3
  %tlv_size.i = getelementptr %struct.rocker_desc_info, ptr %9, i32 %3, i32 2
  %10 = ptrtoint ptr %tlv_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %tlv_size.i, align 4
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %rocker_desc_head_get.exit.if.then_crit_edge, label %if.end9, !prof !273

rocker_desc_head_get.exit.if.then_crit_edge:      ; preds = %rocker_desc_head_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %rocker_desc_head_get.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %call6 = tail call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then.cleanup47_crit_edge, label %if.then8

if.then.cleanup47_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup47

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #18
  br label %cleanup47

if.end9:                                          ; preds = %rocker_desc_head_get.exit
  %11 = ptrtoint ptr %skb to i32
  %conv.i = zext i32 %11 to i64
  %desc.i = getelementptr %struct.rocker_desc_info, ptr %9, i32 %3, i32 3
  %12 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc.i, align 4
  %cookie.i = getelementptr inbounds %struct.rocker_desc, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv.i, ptr %cookie.i, align 8
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %17 = ptrtoint ptr %tlv_size.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tlv_size.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %18
  %call1.i = tail call i32 @rocker_tlv_put(ptr noundef nonnull %arrayidx.i, i32 noundef 5, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i86 = icmp slt i32 %call1.i, 0
  %tobool11.not128 = icmp eq ptr %add.ptr.i.i, null
  %tobool11.not = select i1 %cmp.i86, i1 true, i1 %tobool11.not128
  br i1 %tobool11.not, label %if.end9.out_crit_edge, label %if.end13

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end13:                                         ; preds = %if.end9
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %23 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i, align 8
  %sub.i = sub i32 %22, %24
  %call15 = tail call fastcc i32 @rocker_tx_desc_frag_map_put(ptr noundef %add.ptr.i, ptr noundef nonnull %arrayidx.i, ptr noundef %20, i32 noundef %sub.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.nest_cancel_crit_edge

if.end13.nest_cancel_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %nest_cancel

if.end18:                                         ; preds = %if.end13
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %nr_frags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %28)
  %cmp = icmp ugt i8 %28, 16
  br i1 %cmp, label %if.then21, label %if.end18.if.end26_crit_edge

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

if.then21:                                        ; preds = %if.end18
  %29 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not.i = icmp eq i32 %30, 0
  br i1 %tobool.i.not.i, label %if.then21.if.end26_crit_edge, label %cond.true.i

if.then21.if.end26_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

cond.true.i:                                      ; preds = %if.then21
  %call.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %30) #15
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %cond.true.i.unmap_frags_crit_edge, label %cond.true.i.if.end26_crit_edge

cond.true.i.if.end26_crit_edge:                   ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26

cond.true.i.unmap_frags_crit_edge:                ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %unmap_frags

if.end26:                                         ; preds = %cond.true.i.if.end26_crit_edge, %if.then21.if.end26_crit_edge, %if.end18.if.end26_crit_edge
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %end.i, align 4
  %nr_frags28129 = getelementptr inbounds %struct.skb_shared_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %nr_frags28129 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %nr_frags28129, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp30131.not = icmp eq i8 %34, 0
  br i1 %cmp30131.not, label %if.end26.for.end_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  br label %for.body

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0132, 1
  %35 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %end.i, align 4
  %nr_frags28 = getelementptr inbounds %struct.skb_shared_info, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %nr_frags28 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %nr_frags28, align 2
  %conv29 = zext i8 %38 to i32
  %cmp30 = icmp ult i32 %inc, %conv29
  br i1 %cmp30, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end26.for.body_crit_edge
  %39 = phi ptr [ %36, %for.cond.for.body_crit_edge ], [ %32, %if.end26.for.body_crit_edge ]
  %i.0132 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end26.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.skb_shared_info, ptr %39, i32 0, i32 12, i32 %i.0132
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx, align 4
  %call1.i89 = tail call ptr @page_address(ptr noundef %41) #15
  %bv_offset.i.i = getelementptr %struct.skb_shared_info, ptr %39, i32 0, i32 12, i32 %i.0132, i32 2
  %42 = ptrtoint ptr %bv_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bv_offset.i.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %call1.i89, i32 %43
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %39, i32 0, i32 12, i32 %i.0132, i32 1
  %44 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %bv_len.i, align 4
  %call36 = tail call fastcc i32 @rocker_tx_desc_frag_map_put(ptr noundef %add.ptr.i, ptr noundef nonnull %arrayidx.i, ptr noundef %add.ptr.i90, i32 noundef %45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %for.cond, label %for.body.unmap_frags_crit_edge

for.body.unmap_frags_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %unmap_frags

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end26.for.end_crit_edge
  %46 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx.i, align 4
  %48 = ptrtoint ptr %tlv_size.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tlv_size.i, align 4
  %add.ptr.i.i92 = getelementptr i8, ptr %47, i32 %49
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i92 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i93 = trunc i32 %sub.ptr.sub.i to i16
  %len.i94 = getelementptr inbounds %struct.rocker_tlv, ptr %add.ptr.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %len.i94 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i93, ptr %len.i94, align 4
  %51 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %desc.i, align 4
  %comp_err.i = getelementptr inbounds %struct.rocker_desc, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %comp_err.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %comp_err.i, align 2
  %55 = and i16 %54, 32767
  store i16 %55, ptr %comp_err.i, align 2
  %56 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %head1.i, align 4
  %58 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %tx_ring, align 4
  %inc.i.i97 = add i32 %57, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i97, i32 %59)
  %cmp.i.i98 = icmp eq i32 %inc.i.i97, %59
  %spec.select.i.i99 = select i1 %cmp.i.i98, i32 0, i32 %inc.i.i97
  %60 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i99, i32 %61)
  %cmp.i101 = icmp eq i32 %spec.select.i.i99, %61
  br i1 %cmp.i101, label %do.body3.i, label %rocker_desc_head_set.exit, !prof !273

do.body3.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/rocker/rocker_main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 392, 0\0A.popsection", ""() #15, !srcloc !274
  unreachable

rocker_desc_head_set.exit:                        ; preds = %for.end
  %data_size.i.i = getelementptr %struct.rocker_desc_info, ptr %9, i32 %3, i32 1
  %62 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data_size.i.i, align 4
  %conv.i.i = trunc i32 %63 to i16
  %64 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %desc.i, align 4
  %buf_size.i.i = getelementptr inbounds %struct.rocker_desc, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i.i, ptr %buf_size.i.i, align 8
  %67 = ptrtoint ptr %tlv_size.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tlv_size.i, align 4
  %conv1.i.i = trunc i32 %68 to i16
  %69 = load ptr, ptr %desc.i, align 4
  %tlv_size3.i.i = getelementptr inbounds %struct.rocker_desc, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %tlv_size3.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv1.i.i, ptr %tlv_size3.i.i, align 2
  %71 = ptrtoint ptr %head1.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %spec.select.i.i99, ptr %head1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !275
  tail call void @arm_heavy_mb() #15
  %72 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i99) #15
  %hw_addr.i = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 1
  %73 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hw_addr.i, align 4
  %type.i = getelementptr i8, ptr %dev, i32 2800
  %75 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %type.i, align 4
  %mul.i = shl i32 %76, 5
  %add.i = add i32 %mul.i, 4108
  %add.ptr.i103 = getelementptr i8, ptr %74, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %72) #15, !srcloc !276
  %77 = ptrtoint ptr %head1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %head1.i, align 4
  %79 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %tx_ring, align 4
  %inc.i.i105 = add i32 %78, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i105, i32 %80)
  %cmp.i.i106 = icmp eq i32 %inc.i.i105, %80
  %spec.select.i.i107 = select i1 %cmp.i.i106, i32 0, i32 %inc.i.i105
  %81 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i107, i32 %82)
  %cmp.i109 = icmp eq i32 %spec.select.i.i107, %82
  br i1 %cmp.i109, label %rocker_desc_head_set.exit.if.then44_crit_edge, label %rocker_desc_head_get.exit115

rocker_desc_head_set.exit.if.then44_crit_edge:    ; preds = %rocker_desc_head_set.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then44

rocker_desc_head_get.exit115:                     ; preds = %rocker_desc_head_set.exit
  %83 = ptrtoint ptr %desc_info2.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %desc_info2.i, align 4
  %arrayidx.i111 = getelementptr %struct.rocker_desc_info, ptr %84, i32 %78
  %tlv_size.i112 = getelementptr %struct.rocker_desc_info, ptr %84, i32 %78, i32 2
  %85 = ptrtoint ptr %tlv_size.i112 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %tlv_size.i112, align 4
  %tobool43.not = icmp eq ptr %arrayidx.i111, null
  br i1 %tobool43.not, label %rocker_desc_head_get.exit115.if.then44_crit_edge, label %rocker_desc_head_get.exit115.cleanup47_crit_edge

rocker_desc_head_get.exit115.cleanup47_crit_edge: ; preds = %rocker_desc_head_get.exit115
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup47

rocker_desc_head_get.exit115.if.then44_crit_edge: ; preds = %rocker_desc_head_get.exit115
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then44

if.then44:                                        ; preds = %rocker_desc_head_get.exit115.if.then44_crit_edge, %rocker_desc_head_set.exit.if.then44_crit_edge
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %86 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %87, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  br label %cleanup47

unmap_frags:                                      ; preds = %for.body.unmap_frags_crit_edge, %cond.true.i.unmap_frags_crit_edge
  tail call fastcc void @rocker_tx_desc_frags_unmap(ptr noundef %add.ptr.i, ptr noundef nonnull %arrayidx.i)
  br label %nest_cancel

nest_cancel:                                      ; preds = %unmap_frags, %if.end13.nest_cancel_crit_edge
  %88 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i, align 4
  %sub.ptr.lhs.cast.i116 = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i117 = ptrtoint ptr %89 to i32
  %sub.ptr.sub.i118 = sub i32 %sub.ptr.lhs.cast.i116, %sub.ptr.rhs.cast.i117
  %90 = ptrtoint ptr %tlv_size.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %sub.ptr.sub.i118, ptr %tlv_size.i, align 4
  br label %out

out:                                              ; preds = %nest_cancel, %if.end9.out_crit_edge
  tail call void @consume_skb(ptr noundef %skb) #15
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 7
  %91 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %tx_dropped, align 4
  %inc46 = add i32 %92, 1
  store i32 %inc46, ptr %tx_dropped, align 4
  br label %cleanup47

cleanup47:                                        ; preds = %out, %if.then44, %rocker_desc_head_get.exit115.cleanup47_crit_edge, %if.then8, %if.then.cleanup47_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ 16, %if.then8 ], [ 16, %if.then.cleanup47_crit_edge ], [ 0, %if.then44 ], [ 0, %rocker_desc_head_get.exit115.cleanup47_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_port_set_mac_address(ptr noundef %dev, ptr noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sa_data, align 4
  %2 = and i32 %1, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.i.not.i = icmp eq i32 %2, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %4 to i32
  %or.i.i = or i32 %1, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %call.i = tail call i32 @rocker_cmd_exec(ptr noundef %add.ptr.i, i1 noundef zeroext false, ptr noundef nonnull @rocker_cmd_set_port_settings_macaddr_prep, ptr noundef %sa_data, ptr noundef null, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_port_change_mtu(ptr noundef %dev, i32 noundef %new_mtu) #0 align 64 {
entry:
  %mtu.addr.i = alloca i32, align 4
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
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 @rocker_port_stop(ptr noundef %dev)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %mtu = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 20
  %2 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu, align 4
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %3, i32 noundef %new_mtu) #18
  %4 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %new_mtu, ptr %mtu, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mtu.addr.i)
  %5 = ptrtoint ptr %mtu.addr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %new_mtu, ptr %mtu.addr.i, align 4
  %call.i = call i32 @rocker_cmd_exec(ptr noundef %add.ptr.i, i1 noundef zeroext false, ptr noundef nonnull @rocker_cmd_set_port_settings_mtu_prep, ptr noundef nonnull %mtu.addr.i, ptr noundef null, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mtu.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp ne i32 %call.i, 0
  %brmerge = select i1 %tobool5.not, i1 true, i1 %tobool.i.not
  br i1 %brmerge, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call10 = call i32 @rocker_port_open(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end.cleanup_crit_edge ], [ %call10, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rocker_port_neigh_destroy(ptr nocapture noundef readnone %dev, ptr noundef %n) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.neighbour, ptr %n, i32 0, i32 25
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  %rocker.i = getelementptr i8, ptr %1, i32 2308
  %2 = ptrtoint ptr %rocker.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rocker.i, align 4
  %wops1.i = getelementptr inbounds %struct.rocker, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %wops1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wops1.i, align 8
  %port_neigh_destroy.i = getelementptr inbounds %struct.rocker_world_ops, ptr %5, i32 0, i32 23
  %6 = ptrtoint ptr %port_neigh_destroy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_neigh_destroy.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %rocker_world_port_neigh_destroy.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

rocker_world_port_neigh_destroy.exit:             ; preds = %entry
  %call.i = tail call i32 %7(ptr noundef %add.ptr.i, ptr noundef %n) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %rocker_world_port_neigh_destroy.exit.if.end_crit_edge, label %rocker_world_port_neigh_destroy.exit.if.then_crit_edge

rocker_world_port_neigh_destroy.exit.if.then_crit_edge: ; preds = %rocker_world_port_neigh_destroy.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

rocker_world_port_neigh_destroy.exit.if.end_crit_edge: ; preds = %rocker_world_port_neigh_destroy.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %rocker_world_port_neigh_destroy.exit.if.then_crit_edge, %entry.if.then_crit_edge
  %retval.0.i9 = phi i32 [ %call.i, %rocker_world_port_neigh_destroy.exit.if.then_crit_edge ], [ -95, %entry.if.then_crit_edge ]
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %9, ptr noundef nonnull @.str.15, i32 noundef %retval.0.i9) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %rocker_world_port_neigh_destroy.exit.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rocker_port_get_port_parent_id(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %ppid) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rocker1 = getelementptr i8, ptr %dev, i32 2308
  %0 = ptrtoint ptr %rocker1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rocker1, align 4
  %id_len = getelementptr inbounds %struct.netdev_phys_item_id, ptr %ppid, i32 0, i32 1
  %2 = ptrtoint ptr %id_len to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %id_len, align 1
  %hw = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %hw, align 8
  %5 = ptrtoint ptr %ppid to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 %4, ptr %ppid, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_port_get_phys_port_name(ptr noundef %dev, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %name = alloca %struct.port_name, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %name) #15
  %0 = getelementptr inbounds %struct.port_name, ptr %name, i32 0, i32 1
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %buf, ptr %name, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %len, ptr %0, align 4
  %call3 = call i32 @rocker_cmd_exec(ptr noundef %add.ptr.i, i1 noundef zeroext false, ptr noundef nonnull @rocker_cmd_get_port_settings_prep, ptr noundef null, ptr noundef nonnull @rocker_cmd_get_port_settings_phys_name_proc, ptr noundef nonnull %name)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %cond = select i1 %tobool.not, i32 0, i32 -95
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %name) #15
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_tx_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %napi_tx = getelementptr inbounds %struct.rocker_port, ptr %dev_id, i32 0, i32 5
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_tx) #15
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__napi_schedule(ptr noundef %napi_tx) #15
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_rx_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %napi_rx = getelementptr inbounds %struct.rocker_port, ptr %dev_id, i32 0, i32 6
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi_rx) #15
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__napi_schedule(ptr noundef %napi_rx) #15
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rocker_port_dma_rings_fini(ptr nocapture noundef readonly %rocker_port) unnamed_addr #0 align 64 {
entry:
  %attrs.i.i = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rocker1 = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 1
  %0 = ptrtoint ptr %rocker1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rocker1, align 4
  %rx_ring1.i = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 8
  %2 = ptrtoint ptr %rx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rx_ring1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7.not.i = icmp eq i32 %3, 0
  br i1 %cmp7.not.i, label %entry.rocker_dma_ring_bufs_free.exit_crit_edge, label %for.body.lr.ph.i

entry.rocker_dma_ring_bufs_free.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_ring_bufs_free.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %desc_info.i = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 8, i32 5
  %4 = getelementptr inbounds [6 x ptr], ptr %attrs.i.i, i32 0, i32 4
  %5 = getelementptr inbounds [6 x ptr], ptr %attrs.i.i, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %rocker_dma_rx_ring_skb_free.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.08.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %rocker_dma_rx_ring_skb_free.exit.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %desc_info.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_info.i, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %attrs.i.i) #15
  %desc.i.i.i = getelementptr %struct.rocker_desc_info, ptr %7, i32 %i.08.i, i32 3
  %8 = call ptr @memset(ptr %attrs.i.i, i32 255, i32 24)
  %9 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc.i.i.i, align 4
  %cookie.i.i.i = getelementptr inbounds %struct.rocker_desc, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %cookie.i.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %cookie.i.i.i, align 8
  %conv.i.i.i = trunc i64 %12 to i32
  %13 = inttoptr i32 %conv.i.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool.not.i.i = icmp eq i32 %conv.i.i.i, 0
  br i1 %tobool.not.i.i, label %for.body.i.rocker_dma_rx_ring_skb_free.exit.i_crit_edge, label %if.end.i.i

for.body.i.rocker_dma_rx_ring_skb_free.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_rx_ring_skb_free.exit.i

if.end.i.i:                                       ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.rocker_desc_info, ptr %7, i32 %i.08.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tlv_size.i.i.i = getelementptr inbounds %struct.rocker_desc, ptr %10, i32 0, i32 3
  %16 = ptrtoint ptr %tlv_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tlv_size.i.i.i, align 2
  %conv.i6.i.i = zext i16 %17 to i32
  call void @rocker_tlv_parse(ptr noundef nonnull %attrs.i.i, i32 noundef 5, ptr noundef %15, i32 noundef %conv.i6.i.i) #15
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %20 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %5, align 4
  %tobool.not.i.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.rocker_dma_rx_ring_skb_unmap.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.rocker_dma_rx_ring_skb_unmap.exit.i.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_rx_ring_skb_unmap.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %4, align 4
  %tobool3.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool3.not.i.i.i, label %lor.lhs.false.i.i.i.rocker_dma_rx_ring_skb_unmap.exit.i.i_crit_edge, label %if.end.i.i.i

lor.lhs.false.i.i.i.rocker_dma_rx_ring_skb_unmap.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_rx_ring_skb_unmap.exit.i.i

if.end.i.i.i:                                     ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %21, i32 8
  %24 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.i.i.i.i.i, align 8
  %conv.i7.i.i = trunc i64 %25 to i32
  %add.ptr.i.i13.i.i.i = getelementptr i8, ptr %23, i32 8
  %26 = ptrtoint ptr %add.ptr.i.i13.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i.i13.i.i.i, align 2
  %conv7.i.i.i = zext i16 %27 to i32
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  call void @dma_unmap_page_attrs(ptr noundef %dev.i.i.i, i32 noundef %conv.i7.i.i, i32 noundef %conv7.i.i.i, i32 noundef 2, i32 noundef 0) #15
  br label %rocker_dma_rx_ring_skb_unmap.exit.i.i

rocker_dma_rx_ring_skb_unmap.exit.i.i:            ; preds = %if.end.i.i.i, %lor.lhs.false.i.i.i.rocker_dma_rx_ring_skb_unmap.exit.i.i_crit_edge, %if.end.i.i.rocker_dma_rx_ring_skb_unmap.exit.i.i_crit_edge
  call void @__dev_kfree_skb_any(ptr noundef nonnull %13, i32 noundef 1) #15
  br label %rocker_dma_rx_ring_skb_free.exit.i

rocker_dma_rx_ring_skb_free.exit.i:               ; preds = %rocker_dma_rx_ring_skb_unmap.exit.i.i, %for.body.i.rocker_dma_rx_ring_skb_free.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %attrs.i.i) #15
  %inc.i = add nuw i32 %i.08.i, 1
  %28 = ptrtoint ptr %rx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rx_ring1.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %29
  br i1 %cmp.i, label %rocker_dma_rx_ring_skb_free.exit.i.for.body.i_crit_edge, label %rocker_dma_rx_ring_skbs_free.exit

rocker_dma_rx_ring_skb_free.exit.i.for.body.i_crit_edge: ; preds = %rocker_dma_rx_ring_skb_free.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

rocker_dma_rx_ring_skbs_free.exit:                ; preds = %rocker_dma_rx_ring_skb_free.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp13.not.i = icmp eq i32 %29, 0
  br i1 %cmp13.not.i, label %rocker_dma_rx_ring_skbs_free.exit.rocker_dma_ring_bufs_free.exit_crit_edge, label %for.body.lr.ph.i12

rocker_dma_rx_ring_skbs_free.exit.rocker_dma_ring_bufs_free.exit_crit_edge: ; preds = %rocker_dma_rx_ring_skbs_free.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_ring_bufs_free.exit

for.body.lr.ph.i12:                               ; preds = %rocker_dma_rx_ring_skbs_free.exit
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 8
  %desc3.i = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 8, i32 3
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  br label %for.body.i16

for.body.i16:                                     ; preds = %for.body.i16.for.body.i16_crit_edge, %for.body.lr.ph.i12
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i12 ], [ %inc.i14, %for.body.i16.for.body.i16_crit_edge ]
  %32 = ptrtoint ptr %desc_info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc_info.i, align 4
  %arrayidx.i13 = getelementptr %struct.rocker_desc_info, ptr %33, i32 %i.014.i
  %34 = ptrtoint ptr %desc3.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc3.i, align 4
  %arrayidx4.i = getelementptr %struct.rocker_desc, ptr %35, i32 %i.014.i
  %36 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %arrayidx4.i, align 8
  %buf_size.i = getelementptr %struct.rocker_desc, ptr %35, i32 %i.014.i, i32 2
  %37 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %buf_size.i, align 8
  %mapaddr.i = getelementptr %struct.rocker_desc_info, ptr %33, i32 %i.014.i, i32 4
  %38 = ptrtoint ptr %mapaddr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mapaddr.i, align 4
  %data_size.i = getelementptr %struct.rocker_desc_info, ptr %33, i32 %i.014.i, i32 1
  %40 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data_size.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %39, i32 noundef %41, i32 noundef 0, i32 noundef 0) #15
  %42 = ptrtoint ptr %arrayidx.i13 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i13, align 4
  call void @kfree(ptr noundef %43) #15
  %inc.i14 = add nuw i32 %i.014.i, 1
  %44 = ptrtoint ptr %rx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %rx_ring1.i, align 4
  %cmp.i15 = icmp ult i32 %inc.i14, %45
  br i1 %cmp.i15, label %for.body.i16.for.body.i16_crit_edge, label %for.body.i16.rocker_dma_ring_bufs_free.exit_crit_edge

for.body.i16.rocker_dma_ring_bufs_free.exit_crit_edge: ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_ring_bufs_free.exit

for.body.i16.for.body.i16_crit_edge:              ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i16

rocker_dma_ring_bufs_free.exit:                   ; preds = %for.body.i16.rocker_dma_ring_bufs_free.exit_crit_edge, %rocker_dma_rx_ring_skbs_free.exit.rocker_dma_ring_bufs_free.exit_crit_edge, %entry.rocker_dma_ring_bufs_free.exit_crit_edge
  %hw_addr.i = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hw_addr.i, align 4
  %type.i = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 8, i32 6
  %48 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %type.i, align 4
  %mul.i = shl i32 %49, 5
  %add.i = add i32 %mul.i, 4096
  %add.ptr.i = getelementptr i8, ptr %47, i32 %add.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !279
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #15, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !280
  call void @arm_heavy_mb() #15
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #15, !srcloc !276
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %dev.i17 = getelementptr inbounds %struct.pci_dev, ptr %51, i32 0, i32 44
  %52 = ptrtoint ptr %rx_ring1.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rx_ring1.i, align 4
  %mul1.i = shl i32 %53, 5
  %desc.i = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 8, i32 3
  %54 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %desc.i, align 4
  %mapaddr.i18 = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 8, i32 4
  %56 = ptrtoint ptr %mapaddr.i18 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mapaddr.i18, align 4
  call void @dma_free_attrs(ptr noundef %dev.i17, i32 noundef %mul1.i, ptr noundef %55, i32 noundef %57, i32 noundef 0) #15
  %desc_info.i19 = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 8, i32 5
  %58 = ptrtoint ptr %desc_info.i19 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %desc_info.i19, align 4
  call void @kfree(ptr noundef %59) #15
  %tx_ring = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 7
  %60 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %tx_ring, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp13.not.i20 = icmp eq i32 %61, 0
  br i1 %cmp13.not.i20, label %rocker_dma_ring_bufs_free.exit.rocker_dma_ring_bufs_free.exit34_crit_edge, label %for.body.lr.ph.i24

rocker_dma_ring_bufs_free.exit.rocker_dma_ring_bufs_free.exit34_crit_edge: ; preds = %rocker_dma_ring_bufs_free.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_ring_bufs_free.exit34

for.body.lr.ph.i24:                               ; preds = %rocker_dma_ring_bufs_free.exit
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  %desc_info2.i21 = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 7, i32 5
  %desc3.i22 = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 7, i32 3
  %dev.i23 = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44
  br label %for.body.i33

for.body.i33:                                     ; preds = %for.body.i33.for.body.i33_crit_edge, %for.body.lr.ph.i24
  %i.014.i25 = phi i32 [ 0, %for.body.lr.ph.i24 ], [ %inc.i31, %for.body.i33.for.body.i33_crit_edge ]
  %64 = ptrtoint ptr %desc_info2.i21 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %desc_info2.i21, align 4
  %arrayidx.i26 = getelementptr %struct.rocker_desc_info, ptr %65, i32 %i.014.i25
  %66 = ptrtoint ptr %desc3.i22 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %desc3.i22, align 4
  %arrayidx4.i27 = getelementptr %struct.rocker_desc, ptr %67, i32 %i.014.i25
  %68 = ptrtoint ptr %arrayidx4.i27 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 0, ptr %arrayidx4.i27, align 8
  %buf_size.i28 = getelementptr %struct.rocker_desc, ptr %67, i32 %i.014.i25, i32 2
  %69 = ptrtoint ptr %buf_size.i28 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %buf_size.i28, align 8
  %mapaddr.i29 = getelementptr %struct.rocker_desc_info, ptr %65, i32 %i.014.i25, i32 4
  %70 = ptrtoint ptr %mapaddr.i29 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mapaddr.i29, align 4
  %data_size.i30 = getelementptr %struct.rocker_desc_info, ptr %65, i32 %i.014.i25, i32 1
  %72 = ptrtoint ptr %data_size.i30 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %data_size.i30, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev.i23, i32 noundef %71, i32 noundef %73, i32 noundef 1, i32 noundef 0) #15
  %74 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx.i26, align 4
  call void @kfree(ptr noundef %75) #15
  %inc.i31 = add nuw i32 %i.014.i25, 1
  %76 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %tx_ring, align 4
  %cmp.i32 = icmp ult i32 %inc.i31, %77
  br i1 %cmp.i32, label %for.body.i33.for.body.i33_crit_edge, label %for.body.i33.rocker_dma_ring_bufs_free.exit34_crit_edge

for.body.i33.rocker_dma_ring_bufs_free.exit34_crit_edge: ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_ring_bufs_free.exit34

for.body.i33.for.body.i33_crit_edge:              ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i33

rocker_dma_ring_bufs_free.exit34:                 ; preds = %for.body.i33.rocker_dma_ring_bufs_free.exit34_crit_edge, %rocker_dma_ring_bufs_free.exit.rocker_dma_ring_bufs_free.exit34_crit_edge
  %78 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %hw_addr.i, align 4
  %type.i36 = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 7, i32 6
  %80 = ptrtoint ptr %type.i36 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %type.i36, align 4
  %mul.i37 = shl i32 %81, 5
  %add.i38 = add i32 %mul.i37, 4096
  %add.ptr.i39 = getelementptr i8, ptr %79, i32 %add.i38
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !279
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i39, i32 0) #15, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !280
  call void @arm_heavy_mb() #15
  %add.ptr.i.i40 = getelementptr i8, ptr %add.ptr.i39, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i40, i32 0) #15, !srcloc !276
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 8
  %dev.i41 = getelementptr inbounds %struct.pci_dev, ptr %83, i32 0, i32 44
  %84 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %tx_ring, align 4
  %mul1.i42 = shl i32 %85, 5
  %desc.i43 = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 7, i32 3
  %86 = ptrtoint ptr %desc.i43 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %desc.i43, align 4
  %mapaddr.i44 = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 7, i32 4
  %88 = ptrtoint ptr %mapaddr.i44 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mapaddr.i44, align 4
  call void @dma_free_attrs(ptr noundef %dev.i41, i32 noundef %mul1.i42, ptr noundef %87, i32 noundef %89, i32 noundef 0) #15
  %desc_info.i45 = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 7, i32 5
  %90 = ptrtoint ptr %desc_info.i45 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %desc_info.i45, align 4
  call void @kfree(ptr noundef %91) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rocker_dma_ring_create(ptr nocapture noundef readonly %rocker, i32 noundef %type, i32 noundef %size, ptr noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sub.i = add i32 %size, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i.i.i.i = icmp eq i32 %sub.i, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 true) #15, !range !284
  %sub.i.i.i.i = sub nuw nsw i32 32, %0
  %sub.i.i.op.i.i = shl nuw i32 1, %sub.i.i.i.i
  %1 = call i32 @llvm.umin.i32(i32 %sub.i.i.op.i.i, i32 65536)
  %2 = call i32 @llvm.umax.i32(i32 %1, i32 2)
  %3 = select i1 %tobool.not.i.i.i.i, i32 2, i32 %2
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %size)
  %cmp.not = icmp eq i32 %3, %size
  br i1 %cmp.not, label %do.end7, label %do.body2, !prof !285

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/rocker/rocker_main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 434, 0\0A.popsection", ""() #15, !srcloc !286
  unreachable

do.end7:                                          ; preds = %entry
  %4 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %size, ptr %info, align 4
  %type9 = getelementptr inbounds %struct.rocker_dma_ring_info, ptr %info, i32 0, i32 6
  %5 = ptrtoint ptr %type9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %type, ptr %type9, align 4
  %head = getelementptr inbounds %struct.rocker_dma_ring_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %head, align 4
  %tail = getelementptr inbounds %struct.rocker_dma_ring_info, ptr %info, i32 0, i32 2
  %7 = ptrtoint ptr %tail to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tail, align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %size, i32 20) #15
  %9 = extractvalue { i32, i1 } %8, 1
  br i1 %9, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !273

kcalloc.exit.thread:                              ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  %desc_info78 = getelementptr inbounds %struct.rocker_dma_ring_info, ptr %info, i32 0, i32 5
  %10 = ptrtoint ptr %desc_info78 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %desc_info78, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %do.end7
  %11 = extractvalue { i32, i1 } %8, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #19
  %desc_info = getelementptr inbounds %struct.rocker_dma_ring_info, ptr %info, i32 0, i32 5
  %12 = ptrtoint ptr %desc_info to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8.i.i, ptr %desc_info, align 4
  %tobool13.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool13.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end15

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end15:                                         ; preds = %if.end7.i.i
  %13 = ptrtoint ptr %rocker to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %rocker, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %info, align 4
  %mul = shl i32 %16, 5
  %mapaddr = getelementptr inbounds %struct.rocker_dma_ring_info, ptr %info, i32 0, i32 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef %mapaddr, i32 noundef 3264, i32 noundef 0) #15
  %desc = getelementptr inbounds %struct.rocker_dma_ring_info, ptr %info, i32 0, i32 3
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %desc, align 4
  %tobool19.not = icmp eq ptr %call.i, null
  br i1 %tobool19.not, label %if.then20, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end15
  %18 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2485.not = icmp eq i32 %19, 0
  br i1 %cmp2485.not, label %for.cond.preheader.do.body29_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body29_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body29

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %20 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc_info, align 4
  tail call void @kfree(ptr noundef %21) #15
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.086 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %22 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc, align 4
  %arrayidx = getelementptr %struct.rocker_desc, ptr %23, i32 %i.086
  %24 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc_info, align 4
  %desc28 = getelementptr %struct.rocker_desc_info, ptr %25, i32 %i.086, i32 3
  %26 = ptrtoint ptr %desc28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %arrayidx, ptr %desc28, align 4
  %inc = add nuw i32 %i.086, 1
  %27 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %info, align 4
  %cmp24 = icmp ult i32 %inc, %28
  br i1 %cmp24, label %for.body.for.body_crit_edge, label %for.body.do.body29_crit_edge

for.body.do.body29_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body29

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.body29:                                        ; preds = %for.body.do.body29_crit_edge, %for.cond.preheader.do.body29_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !287
  tail call void @arm_heavy_mb() #15
  %hw_addr = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 1
  %29 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_addr, align 4
  %31 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type9, align 4
  %mul33 = shl i32 %32, 5
  %add = add i32 %mul33, 4116
  %add.ptr = getelementptr i8, ptr %30, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #15, !srcloc !276
  %33 = ptrtoint ptr %mapaddr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mapaddr, align 4
  %35 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_addr, align 4
  %37 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type9, align 4
  %mul37 = shl i32 %38, 5
  %add38 = add i32 %mul37, 4096
  %add.ptr39 = getelementptr i8, ptr %36, i32 %add38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !279
  tail call void @arm_heavy_mb() #15
  %39 = tail call i32 @llvm.bswap.i32(i32 %34) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr39, i32 %39) #15, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !280
  tail call void @arm_heavy_mb() #15
  %add.ptr.i = getelementptr i8, ptr %add.ptr39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #15, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !288
  tail call void @arm_heavy_mb() #15
  %40 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %info, align 4
  %42 = tail call i32 @llvm.bswap.i32(i32 %41)
  %43 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_addr, align 4
  %45 = ptrtoint ptr %type9 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type9, align 4
  %mul46 = shl i32 %46, 5
  %add47 = add i32 %mul46, 4104
  %add.ptr48 = getelementptr i8, ptr %44, i32 %add47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %42) #15, !srcloc !276
  br label %cleanup

cleanup:                                          ; preds = %do.body29, %if.then20, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread
  %retval.0 = phi i32 [ 0, %do.body29 ], [ -12, %if.then20 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rocker_dma_ring_bufs_alloc(ptr nocapture noundef readonly %rocker, ptr nocapture noundef readonly %info, i32 noundef %direction, i32 noundef %buf_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rocker to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rocker, align 8
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp88.not = icmp eq i32 %3, 0
  br i1 %cmp88.not, label %entry.cleanup30_crit_edge, label %for.body.lr.ph

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup30

for.body.lr.ph:                                   ; preds = %entry
  %desc_info2 = getelementptr inbounds %struct.rocker_dma_ring_info, ptr %info, i32 0, i32 5
  %desc3 = getelementptr inbounds %struct.rocker_dma_ring_info, ptr %info, i32 0, i32 3
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %conv11 = trunc i32 %buf_size to i16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %desc_info2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc_info2, align 4
  %arrayidx = getelementptr %struct.rocker_desc_info, ptr %5, i32 %i.089
  %6 = ptrtoint ptr %desc3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc3, align 4
  %arrayidx4 = getelementptr %struct.rocker_desc, ptr %7, i32 %i.089
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %buf_size, i32 noundef 3521) #19
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i) #15
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !285

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #15
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44, i32 3
  %8 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.end.i.i59, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i59:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i59, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %11, %if.end.i.i59 ], [ %9, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #15
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #15
  br label %if.then9

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef nonnull %call9.i.i, i32 noundef %buf_size) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %12 = load ptr, ptr @mem_map, align 4
  %13 = ptrtoint ptr %call9.i.i to i32
  %sub.i = add i32 %13, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %12, i32 %shr.i
  %and.i = and i32 %13, 3968
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %buf_size, i32 noundef %direction, i32 noundef 0) #15
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then9_crit_edge, label %for.inc

dma_map_single_attrs.exit.if.then9_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then9

if.then9:                                         ; preds = %dma_map_single_attrs.exit.if.then9_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %for.body.cleanup_crit_edge
  %err.1 = phi i32 [ -5, %if.then9 ], [ -12, %for.body.cleanup_crit_edge ]
  %i.190 = add i32 %i.089, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.190)
  %cmp1791 = icmp sgt i32 %i.190, -1
  br i1 %cmp1791, label %cleanup.for.body19_crit_edge, label %cleanup.cleanup30_crit_edge

cleanup.cleanup30_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup30

cleanup.for.body19_crit_edge:                     ; preds = %cleanup
  br label %for.body19

for.inc:                                          ; preds = %dma_map_single_attrs.exit
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i.i, ptr %arrayidx, align 4
  %data_size = getelementptr %struct.rocker_desc_info, ptr %5, i32 %i.089, i32 1
  %15 = ptrtoint ptr %data_size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %buf_size, ptr %data_size, align 4
  %mapaddr = getelementptr %struct.rocker_desc_info, ptr %5, i32 %i.089, i32 4
  %16 = ptrtoint ptr %mapaddr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call41.i, ptr %mapaddr, align 4
  %conv = zext i32 %call41.i to i64
  %17 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv, ptr %arrayidx4, align 8
  %buf_size12 = getelementptr %struct.rocker_desc, ptr %7, i32 %i.089, i32 2
  %18 = ptrtoint ptr %buf_size12 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv11, ptr %buf_size12, align 8
  %inc = add nuw i32 %i.089, 1
  %19 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %info, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup30_crit_edge

for.inc.cleanup30_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup30

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %cleanup.for.body19_crit_edge
  %i.192 = phi i32 [ %i.1, %for.body19.for.body19_crit_edge ], [ %i.190, %cleanup.for.body19_crit_edge ]
  %21 = ptrtoint ptr %desc_info2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc_info2, align 4
  %arrayidx22 = getelementptr %struct.rocker_desc_info, ptr %22, i32 %i.192
  %mapaddr24 = getelementptr %struct.rocker_desc_info, ptr %22, i32 %i.192, i32 4
  %23 = ptrtoint ptr %mapaddr24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mapaddr24, align 4
  %data_size25 = getelementptr %struct.rocker_desc_info, ptr %22, i32 %i.192, i32 1
  %25 = ptrtoint ptr %data_size25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_size25, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %24, i32 noundef %26, i32 noundef %direction, i32 noundef 0) #15
  %27 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx22, align 4
  tail call void @kfree(ptr noundef %28) #15
  %i.1 = add nsw i32 %i.192, -1
  %cmp17 = icmp sgt i32 %i.192, 0
  br i1 %cmp17, label %for.body19.for.body19_crit_edge, label %for.body19.cleanup30_crit_edge

for.body19.cleanup30_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup30

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body19

cleanup30:                                        ; preds = %for.body19.cleanup30_crit_edge, %for.inc.cleanup30_crit_edge, %cleanup.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.0 = phi i32 [ %err.1, %cleanup.cleanup30_crit_edge ], [ 0, %entry.cleanup30_crit_edge ], [ %err.1, %for.body19.cleanup30_crit_edge ], [ 0, %for.inc.cleanup30_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rocker_dma_ring_pass_to_producer(ptr nocapture noundef readonly %rocker, ptr nocapture noundef %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %head = getelementptr inbounds %struct.rocker_dma_ring_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %head, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.do.body4_crit_edge, !prof !285

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

lor.rhs:                                          ; preds = %entry
  %tail = getelementptr inbounds %struct.rocker_dma_ring_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool1.not = icmp eq i32 %3, 0
  br i1 %tobool1.not, label %for.cond.preheader, label %lor.rhs.do.body4_crit_edge, !prof !285

lor.rhs.do.body4_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body4

for.cond.preheader:                               ; preds = %lor.rhs
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp22.not = icmp eq i32 %5, 1
  br i1 %cmp22.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %desc_info = getelementptr inbounds %struct.rocker_dma_ring_info, ptr %info, i32 0, i32 5
  %hw_addr.i = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 1
  %type.i = getelementptr inbounds %struct.rocker_dma_ring_info, ptr %info, i32 0, i32 6
  br label %for.body

do.body4:                                         ; preds = %lor.rhs.do.body4_crit_edge, %entry.do.body4_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/rocker/rocker_main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 479, 0\0A.popsection", ""() #15, !srcloc !289
  unreachable

for.body:                                         ; preds = %rocker_desc_head_set.exit.for.body_crit_edge, %for.body.lr.ph
  %6 = phi i32 [ %5, %for.body.lr.ph ], [ %29, %rocker_desc_head_set.exit.for.body_crit_edge ]
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %rocker_desc_head_set.exit.for.body_crit_edge ]
  %7 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %head, align 4
  %inc.i.i = add i32 %8, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %6)
  %cmp.i.i = icmp eq i32 %inc.i.i, %6
  %spec.select.i.i = select i1 %cmp.i.i, i32 0, i32 %inc.i.i
  %9 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i, i32 %10)
  %cmp.i = icmp eq i32 %spec.select.i.i, %10
  br i1 %cmp.i, label %do.body3.i, label %rocker_desc_head_set.exit, !prof !273

do.body3.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/rocker/rocker_main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 392, 0\0A.popsection", ""() #15, !srcloc !274
  unreachable

rocker_desc_head_set.exit:                        ; preds = %for.body
  %11 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc_info, align 4
  %data_size.i.i = getelementptr %struct.rocker_desc_info, ptr %12, i32 %i.023, i32 1
  %13 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_size.i.i, align 4
  %conv.i.i = trunc i32 %14 to i16
  %desc.i.i = getelementptr %struct.rocker_desc_info, ptr %12, i32 %i.023, i32 3
  %15 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc.i.i, align 4
  %buf_size.i.i = getelementptr inbounds %struct.rocker_desc, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv.i.i, ptr %buf_size.i.i, align 8
  %tlv_size.i.i = getelementptr %struct.rocker_desc_info, ptr %12, i32 %i.023, i32 2
  %18 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tlv_size.i.i, align 4
  %conv1.i.i = trunc i32 %19 to i16
  %20 = load ptr, ptr %desc.i.i, align 4
  %tlv_size3.i.i = getelementptr inbounds %struct.rocker_desc, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %tlv_size3.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv1.i.i, ptr %tlv_size3.i.i, align 2
  %22 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select.i.i, ptr %head, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !275
  tail call void @arm_heavy_mb() #15
  %23 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i.i) #15
  %24 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hw_addr.i, align 4
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %type.i, align 4
  %mul.i = shl i32 %27, 5
  %add.i = add i32 %mul.i, 4108
  %add.ptr.i = getelementptr i8, ptr %25, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %23) #15, !srcloc !276
  %inc = add nuw i32 %i.023, 1
  %28 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %info, align 4
  %sub = add i32 %29, -1
  %cmp = icmp ult i32 %inc, %sub
  br i1 %cmp, label %rocker_desc_head_set.exit.for.body_crit_edge, label %rocker_desc_head_set.exit.for.end_crit_edge

rocker_desc_head_set.exit.for.end_crit_edge:      ; preds = %rocker_desc_head_set.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

rocker_desc_head_set.exit.for.body_crit_edge:     ; preds = %rocker_desc_head_set.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %rocker_desc_head_set.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %rocker_desc_head_set.exit.for.end_crit_edge ]
  %desc_info10 = getelementptr inbounds %struct.rocker_dma_ring_info, ptr %info, i32 0, i32 5
  %30 = ptrtoint ptr %desc_info10 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc_info10, align 4
  %data_size.i = getelementptr %struct.rocker_desc_info, ptr %31, i32 %i.0.lcssa, i32 1
  %32 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data_size.i, align 4
  %conv.i = trunc i32 %33 to i16
  %desc.i = getelementptr %struct.rocker_desc_info, ptr %31, i32 %i.0.lcssa, i32 3
  %34 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc.i, align 4
  %buf_size.i = getelementptr inbounds %struct.rocker_desc, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv.i, ptr %buf_size.i, align 8
  %tlv_size.i = getelementptr %struct.rocker_desc_info, ptr %31, i32 %i.0.lcssa, i32 2
  %37 = ptrtoint ptr %tlv_size.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tlv_size.i, align 4
  %conv1.i = trunc i32 %38 to i16
  %39 = load ptr, ptr %desc.i, align 4
  %tlv_size3.i = getelementptr inbounds %struct.rocker_desc, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %tlv_size3.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv1.i, ptr %tlv_size3.i, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rocker_dma_rx_ring_skb_alloc(ptr nocapture noundef readonly %rocker_port, ptr noundef %desc_info) unnamed_addr #0 align 64 {
entry:
  %tmp.i26.i = alloca i16, align 2
  %tmp.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rocker_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rocker_port, align 8
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mtu.i, align 4
  %add2.i = add i32 %3, 22
  %desc.i = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 3
  %4 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc.i, align 4
  %cookie.i = getelementptr inbounds %struct.rocker_desc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 0, ptr %cookie.i, align 8
  %tlv_size = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 2
  %7 = ptrtoint ptr %tlv_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %tlv_size, align 4
  %add.i.i = add i32 %3, 24
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %1, i32 noundef %add.i.i, i32 noundef 2592) #15
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %8 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 2
  store ptr %add.ptr.i.i.i, ptr %data.i.i.i, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr1.i.i.i = getelementptr i8, ptr %11, i32 2
  store ptr %add.ptr1.i.i.i, ptr %tail.i.i.i, align 8
  %rocker1.i = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 1
  %12 = ptrtoint ptr %rocker1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rocker1.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %call.i.i20 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i.i) #15
  br i1 %call.i.i20, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i21, !prof !285

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i21:                                    ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #15
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44, i32 3
  %16 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i21.dev_name.exit.i.i_crit_edge

if.then.i.i21.dev_name.exit.i.i_crit_edge:        ; preds = %if.then.i.i21
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i21
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i21.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %19, %if.end.i.i.i ], [ %17, %if.then.i.i21.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #15
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #15
  br label %if.then5

dma_map_single_attrs.exit.i:                      ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %add.ptr.i.i.i, i32 noundef %add2.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %20 = load ptr, ptr @mem_map, align 4
  %21 = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.i.i = add i32 %21, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %20, i32 %shr.i.i
  %and.i.i = and i32 %21, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %add2.i, i32 noundef 2, i32 noundef 0) #15
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.if.then5_crit_edge, label %if.end.i

dma_map_single_attrs.exit.i.if.then5_crit_edge:   ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then5

if.end.i:                                         ; preds = %dma_map_single_attrs.exit.i
  %conv.i = zext i32 %call41.i.i to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i) #15
  %22 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv.i, ptr %tmp.i.i, align 8
  %call.i25.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %tmp.i.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i25.i)
  %tobool6.not.i = icmp eq i32 %call.i25.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.tlv_put_failure.i_crit_edge

if.end.i.tlv_put_failure.i_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tlv_put_failure.i

if.end8.i:                                        ; preds = %if.end.i
  %conv9.i = trunc i32 %add2.i to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i26.i) #15
  %23 = ptrtoint ptr %tmp.i26.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv9.i, ptr %tmp.i26.i, align 2
  %call.i27.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tmp.i26.i) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i26.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27.i)
  %tobool11.not.i = icmp eq i32 %call.i27.i, 0
  br i1 %tobool11.not.i, label %if.end6, label %if.end8.i.tlv_put_failure.i_crit_edge

if.end8.i.tlv_put_failure.i_crit_edge:            ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %tlv_put_failure.i

tlv_put_failure.i:                                ; preds = %if.end8.i.tlv_put_failure.i_crit_edge, %if.end.i.tlv_put_failure.i_crit_edge
  call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %call41.i.i, i32 noundef %add2.i, i32 noundef 2, i32 noundef 0) #15
  %24 = ptrtoint ptr %tlv_size to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %tlv_size, align 4
  br label %if.then5

if.then5:                                         ; preds = %tlv_put_failure.i, %dma_map_single_attrs.exit.i.if.then5_crit_edge, %dma_map_single_attrs.exit.thread.i
  %retval.0.i.ph = phi i32 [ -5, %dma_map_single_attrs.exit.thread.i ], [ -5, %dma_map_single_attrs.exit.i.if.then5_crit_edge ], [ -90, %tlv_put_failure.i ]
  call void @__dev_kfree_skb_any(ptr noundef nonnull %call.i.i, i32 noundef 1) #15
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %call.i.i to i32
  %conv.i22 = zext i32 %25 to i64
  %26 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc.i, align 4
  %cookie.i24 = getelementptr inbounds %struct.rocker_desc, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %cookie.i24 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %conv.i22, ptr %cookie.i24, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.ph, %if.then5 ], [ 0, %if.end6 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rocker_tlv_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rocker_tx_desc_frag_map_put(ptr nocapture noundef readonly %rocker_port, ptr noundef %desc_info, ptr noundef %buf, i32 noundef %buf_len) unnamed_addr #0 align 64 {
entry:
  %tmp.i44 = alloca i16, align 2
  %tmp.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rocker1 = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 1
  %0 = ptrtoint ptr %rocker1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rocker1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buf) #15
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !285

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #15
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #15
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #15
  br label %if.then

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %buf, i32 noundef %buf_len) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %9 = ptrtoint ptr %buf to i32
  %sub.i = add i32 %9, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %8, i32 %shr.i
  %and.i = and i32 %9, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %buf_len, i32 noundef 1, i32 noundef 0) #15
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.if.then_crit_edge, label %if.end11

dma_map_single_attrs.exit.if.then_crit_edge:      ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %dma_map_single_attrs.exit.if.then_crit_edge, %dma_map_single_attrs.exit.thread
  %call7 = tail call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then.cleanup_crit_edge, label %if.then9

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %10 = ptrtoint ptr %rocker_port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rocker_port, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %11, ptr noundef nonnull @.str.13) #18
  br label %cleanup

if.end11:                                         ; preds = %dma_map_single_attrs.exit
  %12 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc_info, align 4
  %tlv_size.i.i = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 2
  %14 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %15
  %call1.i = tail call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i42 = icmp slt i32 %call1.i, 0
  %tobool13.not59 = icmp eq ptr %add.ptr.i.i, null
  %tobool13.not = select i1 %cmp.i42, i1 true, i1 %tobool13.not59
  br i1 %tobool13.not, label %if.end11.unmap_frag_crit_edge, label %if.end15

if.end11.unmap_frag_crit_edge:                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %unmap_frag

if.end15:                                         ; preds = %if.end11
  %conv = zext i32 %call41.i to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #15
  %16 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %conv, ptr %tmp.i, align 8
  %call.i43 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 8, ptr noundef nonnull %tmp.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool17.not = icmp eq i32 %call.i43, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.nest_cancel_crit_edge

if.end15.nest_cancel_crit_edge:                   ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %nest_cancel

if.end19:                                         ; preds = %if.end15
  %conv20 = trunc i32 %buf_len to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i44) #15
  %17 = ptrtoint ptr %tmp.i44 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv20, ptr %tmp.i44, align 2
  %call.i45 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i44) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i44) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool22.not = icmp eq i32 %call.i45, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.nest_cancel_crit_edge

if.end19.nest_cancel_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %nest_cancel

if.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc_info, align 4
  %20 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i47 = getelementptr i8, ptr %19, i32 %21
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i47 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %len.i = getelementptr inbounds %struct.rocker_tlv, ptr %add.ptr.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv.i, ptr %len.i, align 4
  br label %cleanup

nest_cancel:                                      ; preds = %if.end19.nest_cancel_crit_edge, %if.end15.nest_cancel_crit_edge
  %23 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc_info, align 4
  %sub.ptr.lhs.cast.i48 = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i49 = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i50 = sub i32 %sub.ptr.lhs.cast.i48, %sub.ptr.rhs.cast.i49
  %25 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.ptr.sub.i50, ptr %tlv_size.i.i, align 4
  br label %unmap_frag

unmap_frag:                                       ; preds = %nest_cancel, %if.end11.unmap_frag_crit_edge
  call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %call41.i, i32 noundef %buf_len, i32 noundef 1, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %unmap_frag, %if.end24, %if.then9, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %unmap_frag ], [ 0, %if.end24 ], [ -5, %if.then9 ], [ -5, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rocker_tx_desc_frags_unmap(ptr nocapture noundef readonly %rocker_port, ptr nocapture noundef readonly %desc_info) unnamed_addr #0 align 64 {
entry:
  %attrs = alloca [6 x ptr], align 4
  %frag_attrs = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rocker1 = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 1
  %0 = ptrtoint ptr %rocker1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rocker1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %attrs) #15
  %4 = getelementptr inbounds [6 x ptr], ptr %attrs, i32 0, i32 5
  %5 = call ptr @memset(ptr %attrs, i32 255, i32 24)
  %6 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_info, align 4
  %desc.i = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 3
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i, align 4
  %tlv_size.i = getelementptr inbounds %struct.rocker_desc, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %tlv_size.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tlv_size.i, align 2
  %conv.i = zext i16 %11 to i32
  call void @rocker_tlv_parse(ptr noundef nonnull %attrs, i32 noundef 5, ptr noundef %7, i32 noundef %conv.i) #15
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup26_crit_edge, label %if.end

entry.cleanup26_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup26

if.end:                                           ; preds = %entry
  %len.i = getelementptr inbounds %struct.rocker_tlv, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 15, i16 %15)
  %cmp.i48 = icmp ugt i16 %15, 15
  br i1 %cmp.i48, label %land.lhs.true.i.lr.ph, label %if.end.cleanup26_crit_edge

if.end.cleanup26_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup26

land.lhs.true.i.lr.ph:                            ; preds = %if.end
  %conv.i37 = zext i16 %15 to i32
  %sub.i = add nsw i32 %conv.i37, -8
  %add.ptr.i = getelementptr i8, ptr %13, i32 8
  %16 = getelementptr inbounds [3 x ptr], ptr %frag_attrs, i32 0, i32 1
  %17 = getelementptr inbounds [3 x ptr], ptr %frag_attrs, i32 0, i32 2
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cleanup.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %attr.050 = phi ptr [ %add.ptr.i, %land.lhs.true.i.lr.ph ], [ %add.ptr.i45, %cleanup.land.lhs.true.i_crit_edge ]
  %rem.049 = phi i32 [ %sub.i, %land.lhs.true.i.lr.ph ], [ %sub1.i, %cleanup.land.lhs.true.i_crit_edge ]
  %len.i38 = getelementptr inbounds %struct.rocker_tlv, ptr %attr.050, i32 0, i32 1
  %18 = ptrtoint ptr %len.i38 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %len.i38, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %19)
  %cmp1.i = icmp ult i16 %19, 8
  %conv.i39 = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.049, i32 %conv.i39)
  %cmp5.i.not = icmp ult i32 %rem.049, %conv.i39
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.cleanup26_crit_edge, label %for.body

land.lhs.true.i.cleanup26_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup26

for.body:                                         ; preds = %land.lhs.true.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %frag_attrs) #15
  %20 = ptrtoint ptr %frag_attrs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %frag_attrs, align 4, !annotation !278
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -1 to ptr), ptr %16, align 4, !annotation !278
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -1 to ptr), ptr %17, align 4, !annotation !278
  %23 = ptrtoint ptr %attr.050 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %attr.050, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp.not = icmp eq i32 %24, 1
  br i1 %cmp.not, label %if.end10, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %for.body
  %add.ptr.i.i = getelementptr i8, ptr %attr.050, i32 8
  %25 = ptrtoint ptr %len.i38 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %len.i38, align 4
  %conv.i.i = zext i16 %26 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -8
  call void @rocker_tlv_parse(ptr noundef nonnull %frag_attrs, i32 noundef 2, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i) #15
  %27 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %16, align 4
  %tobool13.not = icmp eq ptr %28, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %lor.lhs.false

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end10
  %29 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %17, align 4
  %tobool15.not = icmp eq ptr %30, null
  br i1 %tobool15.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end17

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i40 = getelementptr i8, ptr %28, i32 8
  %31 = ptrtoint ptr %add.ptr.i.i40 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %add.ptr.i.i40, align 8
  %conv = trunc i64 %32 to i32
  %add.ptr.i.i41 = getelementptr i8, ptr %30, i32 8
  %33 = ptrtoint ptr %add.ptr.i.i41 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %add.ptr.i.i41, align 2
  %conv22 = zext i16 %34 to i32
  call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %conv, i32 noundef %conv22, i32 noundef 1, i32 noundef 0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %lor.lhs.false.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %frag_attrs) #15
  %35 = ptrtoint ptr %len.i38 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %len.i38, align 4
  %conv.i43 = zext i16 %36 to i32
  %sub.i44 = add nuw nsw i32 %conv.i43, 7
  %and.i = and i32 %sub.i44, 131064
  %sub1.i = sub nsw i32 %rem.049, %and.i
  %add.ptr.i45 = getelementptr i8, ptr %attr.050, i32 %and.i
  %cmp.i = icmp sgt i32 %sub1.i, 7
  br i1 %cmp.i, label %cleanup.land.lhs.true.i_crit_edge, label %cleanup.cleanup26_crit_edge

cleanup.cleanup26_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup26

cleanup.land.lhs.true.i_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.i

cleanup26:                                        ; preds = %cleanup.cleanup26_crit_edge, %land.lhs.true.i.cleanup26_crit_edge, %if.end.cleanup26_crit_edge, %entry.cleanup26_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %attrs) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_cmd_set_port_settings_macaddr_prep(ptr nocapture noundef readonly %rocker_port, ptr noundef %desc_info, ptr noundef %priv) #0 align 64 {
entry:
  %tmp.i19 = alloca i32, align 4
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #15
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 2, ptr %tmp.i, align 2
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc_info, align 4
  %tlv_size.i.i = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 2
  %3 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %4
  %call1.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 2, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool2.not23 = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not = select i1 %cmp.i, i1 true, i1 %tobool2.not23
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pport = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 4
  %5 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pport, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i19) #15
  %7 = ptrtoint ptr %tmp.i19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i19, align 4
  %call.i20 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i19) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i19) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool6.not = icmp eq i32 %call.i20, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 5, i32 noundef 6, ptr noundef %priv) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc_info, align 4
  %10 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i22 = getelementptr i8, ptr %9, i32 %11
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i22 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %len.i = getelementptr inbounds %struct.rocker_tlv, ptr %add.ptr.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end4.cleanup_crit_edge ], [ -90, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_cmd_set_port_settings_mtu_prep(ptr nocapture noundef readonly %rocker_port, ptr noundef %desc_info, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %tmp.i21 = alloca i16, align 2
  %tmp.i19 = alloca i32, align 4
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #15
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 2, ptr %tmp.i, align 2
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc_info, align 4
  %tlv_size.i.i = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 2
  %5 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %6
  %call1.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 2, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool2.not25 = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not = select i1 %cmp.i, i1 true, i1 %tobool2.not25
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pport = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 4
  %7 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pport, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i19) #15
  %9 = ptrtoint ptr %tmp.i19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i19, align 4
  %call.i20 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i19) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i19) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool6.not = icmp eq i32 %call.i20, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %conv = trunc i32 %1 to i16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i21) #15
  %10 = ptrtoint ptr %tmp.i21 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %tmp.i21, align 2
  %call.i22 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 9, i32 noundef 2, ptr noundef nonnull %tmp.i21) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i21) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool10.not = icmp eq i32 %call.i22, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  %11 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc_info, align 4
  %13 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i24 = getelementptr i8, ptr %12, i32 %14
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i24 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %len.i = getelementptr inbounds %struct.rocker_tlv, ptr %add.ptr.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end4.cleanup_crit_edge ], [ -90, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_cmd_get_port_settings_prep(ptr nocapture noundef readonly %rocker_port, ptr noundef %desc_info, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  %tmp.i13 = alloca i32, align 4
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #15
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 1, ptr %tmp.i, align 2
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc_info, align 4
  %tlv_size.i.i = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 2
  %3 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %4
  %call1.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 2, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool2.not17 = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not = select i1 %cmp.i, i1 true, i1 %tobool2.not17
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pport = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 4
  %5 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pport, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i13) #15
  %7 = ptrtoint ptr %tmp.i13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i13, align 4
  %call.i14 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i13) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i13) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool6.not = icmp eq i32 %call.i14, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc_info, align 4
  %10 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %9, i32 %11
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %len.i = getelementptr inbounds %struct.rocker_tlv, ptr %add.ptr.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_cmd_get_port_settings_phys_name_proc(ptr nocapture noundef readnone %rocker_port, ptr nocapture noundef readonly %desc_info, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %info_attrs = alloca [10 x ptr], align 4
  %attrs = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info_attrs) #15
  %0 = call ptr @memset(ptr %info_attrs, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %attrs) #15
  %1 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %attrs, align 4, !annotation !278
  %2 = getelementptr inbounds [3 x ptr], ptr %attrs, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !278
  %4 = getelementptr inbounds [3 x ptr], ptr %attrs, i32 0, i32 2
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %4, align 4, !annotation !278
  %6 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_info, align 4
  %desc.i = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 3
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i, align 4
  %tlv_size.i = getelementptr inbounds %struct.rocker_desc, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %tlv_size.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tlv_size.i, align 2
  %conv.i = zext i16 %11 to i32
  call void @rocker_tlv_parse(ptr noundef nonnull %attrs, i32 noundef 2, ptr noundef %7, i32 noundef %conv.i) #15
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 8
  %len.i.i = getelementptr inbounds %struct.rocker_tlv, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -8
  call void @rocker_tlv_parse(ptr noundef nonnull %info_attrs, i32 noundef 9, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i) #15
  %arrayidx3 = getelementptr inbounds [10 x ptr], ptr %info_attrs, i32 0, i32 8
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %len.i = getelementptr inbounds %struct.rocker_tlv, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %len.i, align 4
  %conv.i48 = zext i16 %19 to i32
  %sub.i = add nsw i32 %conv.i48, -8
  %len7 = getelementptr inbounds %struct.port_name, ptr %priv, i32 0, i32 1
  %20 = ptrtoint ptr %len7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len7, align 4
  %22 = call i32 @llvm.umin.i32(i32 %sub.i, i32 %21)
  %add.ptr.i = getelementptr i8, ptr %17, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp949.not = icmp eq i32 %22, 0
  br i1 %cmp949.not, label %if.end6.cleanup_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6.for.body_crit_edge
  %j.051 = phi i32 [ %j.1, %for.inc.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %i.050 = phi i32 [ %inc19, %for.inc.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %arrayidx10 = getelementptr i8, ptr %add.ptr.i, i32 %i.050
  %23 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx10, align 1
  %conv = zext i8 %24 to i32
  %arrayidx11 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv
  %25 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx11, align 1
  %27 = and i8 %26, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp13.not = icmp eq i8 %27, 0
  br i1 %cmp13.not, label %for.body.for.inc_crit_edge, label %if.then15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv, align 4
  %arrayidx17 = getelementptr i8, ptr %29, i32 %j.051
  %30 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %24, ptr %arrayidx17, align 1
  %inc = add i32 %j.051, 1
  br label %for.inc

for.inc:                                          ; preds = %if.then15, %for.body.for.inc_crit_edge
  %j.1 = phi i32 [ %inc, %if.then15 ], [ %j.051, %for.body.for.inc_crit_edge ]
  %inc19 = add nuw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc19, %22
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.1)
  %cmp20 = icmp eq i32 %j.1, 0
  br i1 %cmp20, label %for.end.cleanup_crit_edge, label %if.end23

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end23:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %priv, align 4
  %arrayidx25 = getelementptr i8, ptr %32, i32 %j.1
  %33 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %arrayidx25, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %for.end.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %for.end.cleanup_crit_edge ], [ -5, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %attrs) #15
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info_attrs) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_netevent_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cond = icmp eq i32 %event, 1
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %tbl = getelementptr inbounds %struct.neighbour, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tbl, align 4
  %cmp.not = icmp eq ptr %1, @arp_tbl
  br i1 %cmp.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %dev1 = getelementptr inbounds %struct.neighbour, ptr %ptr, i32 0, i32 25
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %5, @rocker_port_netdev_ops
  br i1 %cmp.i, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %rocker.i = getelementptr i8, ptr %3, i32 2308
  %6 = ptrtoint ptr %rocker.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rocker.i, align 4
  %wops1.i = getelementptr inbounds %struct.rocker, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %wops1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wops1.i, align 8
  %port_neigh_update.i = getelementptr inbounds %struct.rocker_world_ops, ptr %9, i32 0, i32 22
  %10 = ptrtoint ptr %port_neigh_update.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_neigh_update.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end3.if.then6_crit_edge, label %rocker_world_port_neigh_update.exit

if.end3.if.then6_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

rocker_world_port_neigh_update.exit:              ; preds = %if.end3
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  %call.i = tail call i32 %11(ptr noundef %add.ptr.i, ptr noundef %ptr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %rocker_world_port_neigh_update.exit.cleanup_crit_edge, label %rocker_world_port_neigh_update.exit.if.then6_crit_edge

rocker_world_port_neigh_update.exit.if.then6_crit_edge: ; preds = %rocker_world_port_neigh_update.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

rocker_world_port_neigh_update.exit.cleanup_crit_edge: ; preds = %rocker_world_port_neigh_update.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then6:                                         ; preds = %rocker_world_port_neigh_update.exit.if.then6_crit_edge, %if.end3.if.then6_crit_edge
  %retval.0.i18 = phi i32 [ %call.i, %rocker_world_port_neigh_update.exit.if.then6_crit_edge ], [ -95, %if.end3.if.then6_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %retval.0.i18) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %rocker_world_port_neigh_update.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_netdevice_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %extack.i = getelementptr inbounds %struct.netdev_notifier_info, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack.i, align 4
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptr, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %5, @rocker_port_netdev_ops
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %event)
  %cond = icmp eq i32 %event, 21
  %or.cond = and i1 %cond, %cmp.i
  br i1 %or.cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %master = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 2
  %6 = ptrtoint ptr %master to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %master, align 4, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %sw.bb.cleanup_crit_edge, label %if.end4

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %sw.bb
  %add.ptr.i = getelementptr i8, ptr %3, i32 2304
  %linking = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %8 = ptrtoint ptr %linking to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %linking, align 1, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  %rocker.i34 = getelementptr i8, ptr %3, i32 2308
  %10 = ptrtoint ptr %rocker.i34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rocker.i34, align 4
  %wops1.i35 = getelementptr inbounds %struct.rocker, ptr %11, i32 0, i32 10
  %12 = ptrtoint ptr %wops1.i35 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wops1.i35, align 8
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end4
  %port_master_linked.i = getelementptr inbounds %struct.rocker_world_ops, ptr %13, i32 0, i32 20
  %14 = ptrtoint ptr %port_master_linked.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %port_master_linked.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then7.if.then10_crit_edge, label %rocker_world_port_master_linked.exit

if.then7.if.then10_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then10

rocker_world_port_master_linked.exit:             ; preds = %if.then7
  %upper_dev = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %16 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %upper_dev, align 4
  %call.i = tail call i32 %15(ptr noundef %add.ptr.i, ptr noundef %17, ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %rocker_world_port_master_linked.exit.cleanup_crit_edge, label %rocker_world_port_master_linked.exit.if.then10_crit_edge

rocker_world_port_master_linked.exit.if.then10_crit_edge: ; preds = %rocker_world_port_master_linked.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then10

rocker_world_port_master_linked.exit.cleanup_crit_edge: ; preds = %rocker_world_port_master_linked.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10:                                        ; preds = %rocker_world_port_master_linked.exit.if.then10_crit_edge, %if.then7.if.then10_crit_edge
  %retval.0.i42 = phi i32 [ %call.i, %rocker_world_port_master_linked.exit.if.then10_crit_edge ], [ -95, %if.then7.if.then10_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef %retval.0.i42) #18
  br label %cleanup

if.else:                                          ; preds = %if.end4
  %port_master_unlinked.i = getelementptr inbounds %struct.rocker_world_ops, ptr %13, i32 0, i32 21
  %18 = ptrtoint ptr %port_master_unlinked.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port_master_unlinked.i, align 4
  %tobool.not.i36 = icmp eq ptr %19, null
  br i1 %tobool.not.i36, label %if.else.if.then15_crit_edge, label %rocker_world_port_master_unlinked.exit

if.else.if.then15_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15

rocker_world_port_master_unlinked.exit:           ; preds = %if.else
  %upper_dev12 = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %20 = ptrtoint ptr %upper_dev12 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %upper_dev12, align 4
  %call.i37 = tail call i32 %19(ptr noundef %add.ptr.i, ptr noundef %21) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool14.not = icmp eq i32 %call.i37, 0
  br i1 %tobool14.not, label %rocker_world_port_master_unlinked.exit.cleanup_crit_edge, label %rocker_world_port_master_unlinked.exit.if.then15_crit_edge

rocker_world_port_master_unlinked.exit.if.then15_crit_edge: ; preds = %rocker_world_port_master_unlinked.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15

rocker_world_port_master_unlinked.exit.cleanup_crit_edge: ; preds = %rocker_world_port_master_unlinked.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then15:                                        ; preds = %rocker_world_port_master_unlinked.exit.if.then15_crit_edge, %if.else.if.then15_crit_edge
  %retval.0.i3945 = phi i32 [ %call.i37, %rocker_world_port_master_unlinked.exit.if.then15_crit_edge ], [ -95, %if.else.if.then15_crit_edge ]
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %retval.0.i3945) #18
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %rocker_world_port_master_unlinked.exit.cleanup_crit_edge, %if.then10, %rocker_world_port_master_linked.exit.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_probe(ptr noundef %pdev, ptr nocapture noundef readnone %id) #0 align 64 {
entry:
  %addr.i.i.i.i = alloca [6 x i8], align 1
  %addr.i.i.i = alloca [6 x i8], align 1
  %mode.i.i.i = alloca i8, align 1
  %wait.i = alloca %struct.rocker_wait, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 160) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @pci_enable_device(ptr noundef %pdev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #18
  br label %err_pci_enable_device

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @rocker_driver_name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  br i1 %tobool6.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.24) #18
  br label %err_pci_request_regions

if.end12:                                         ; preds = %if.end4
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev13, i64 noundef -1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end21, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.27) #18
  br label %err_pci_set_dma_mask

if.end21:                                         ; preds = %if.end12
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev13, i64 noundef -1) #15
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %end = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 1
  %1 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %if.end21.do.end31_crit_edge, label %cond.end

if.end21.do.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end31

cond.end:                                         ; preds = %if.end21
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %resource, align 8
  %sub = add i32 %2, 1
  %add = sub i32 %sub, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %add)
  %cmp27 = icmp ult i32 %add, 8192
  br i1 %cmp27, label %cond.end.do.end31_crit_edge, label %if.end33

cond.end.do.end31_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end31

do.end31:                                         ; preds = %cond.end.do.end31_crit_edge, %if.end21.do.end31_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.30) #18
  br label %err_pci_set_dma_mask

if.end33:                                         ; preds = %cond.end
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %resource, align 8
  %add50 = sub i32 %sub, %6
  %call53 = tail call ptr @ioremap(i32 noundef %6, i32 noundef %add50) #15
  %hw_addr = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %hw_addr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call53, ptr %hw_addr, align 4
  %tobool55.not = icmp eq ptr %call53, null
  br i1 %tobool55.not, label %do.end59, label %if.end61

do.end59:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.33) #18
  br label %err_pci_set_dma_mask

if.end61:                                         ; preds = %if.end33
  tail call void @pci_set_master(ptr noundef %pdev) #15
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %pdev, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hw_addr, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 772
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !281
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !290
  %port_count = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %port_count to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %port_count, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call7.i.i, align 8
  %call.i237 = tail call i32 @pci_msix_vec_count(ptr noundef %16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %cmp.i238 = icmp slt i32 %call.i237, 0
  br i1 %cmp.i238, label %if.end61.do.end71_crit_edge, label %if.end.i

if.end61.do.end71_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end71

if.end.i:                                         ; preds = %if.end61
  %17 = ptrtoint ptr %port_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port_count, align 4
  %sub.i = shl i32 %18, 1
  %add2.i = add i32 %sub.i, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i237, i32 %add2.i)
  %cmp3.not.i = icmp eq i32 %call.i237, %add2.i
  br i1 %cmp3.not.i, label %if.end5.i, label %if.end.i.do.end71_crit_edge

if.end.i.do.end71_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end71

if.end5.i:                                        ; preds = %if.end.i
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i237, i32 8) #15
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %kmalloc_array.exit.thread.i, label %if.end7.i.i, !prof !273

kmalloc_array.exit.thread.i:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #17
  %msix_entries741.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %msix_entries741.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %msix_entries741.i, align 8
  br label %do.end71

if.end7.i.i:                                      ; preds = %if.end5.i
  %22 = extractvalue { i32, i1 } %19, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %22, i32 noundef 3264) #19
  %msix_entries7.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 2
  %23 = ptrtoint ptr %msix_entries7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8.i.i, ptr %msix_entries7.i, align 8
  %tobool.not.i = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.do.end71_crit_edge, label %for.cond.preheader.i

if.end7.i.i.do.end71_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end71

for.cond.preheader.i:                             ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i237)
  %cmp1143.not.i = icmp eq i32 %call.i237, 0
  br i1 %cmp1143.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.044.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.044.i to i16
  %24 = ptrtoint ptr %msix_entries7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %msix_entries7.i, align 8
  %entry13.i = getelementptr %struct.msix_entry, ptr %25, i32 %i.044.i, i32 1
  %26 = ptrtoint ptr %entry13.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i, ptr %entry13.i, align 4
  %inc.i = add nuw nsw i32 %i.044.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %call.i237
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %27 = ptrtoint ptr %msix_entries7.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %msix_entries7.i, align 8
  %call.i.i = tail call i32 @pci_enable_msix_range(ptr noundef %16, ptr noundef %28, i32 noundef %call.i237, i32 noundef %call.i237) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp16.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp16.i, label %err_enable_msix.i, label %if.end73

err_enable_msix.i:                                ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %msix_entries7.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %msix_entries7.i, align 8
  tail call void @kfree(ptr noundef %30) #15
  br label %do.end71

do.end71:                                         ; preds = %err_enable_msix.i, %if.end7.i.i.do.end71_crit_edge, %kmalloc_array.exit.thread.i, %if.end.i.do.end71_crit_edge, %if.end61.do.end71_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %kmalloc_array.exit.thread.i ], [ -12, %if.end7.i.i.do.end71_crit_edge ], [ -22, %if.end.i.do.end71_crit_edge ], [ %call.i237, %if.end61.do.end71_crit_edge ], [ %call.i.i, %err_enable_msix.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.36) #18
  br label %err_msix_init

if.end73:                                         ; preds = %for.end.i
  %31 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call7.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %wait.i) #15
  %33 = call ptr @memset(ptr %wait.i, i32 255, i32 56)
  %call.i.i239 = tail call i32 @prandom_u32() #15
  %34 = lshr i32 %call.i.i239, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !291
  tail call void @arm_heavy_mb() #15
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #15
  %36 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hw_addr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %37, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %35) #15, !srcloc !276
  %38 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hw_addr, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %39, i32 16
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #15, !srcloc !281
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !292
  %42 = and i32 %call.i.i239, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %42)
  %cmp.not.i.i = icmp eq i32 %41, %42
  br i1 %cmp.not.i.i, label %if.end.i.i240, label %do.end11.i.i

do.end11.i.i:                                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #17
  %mul.i.i = zext i32 %42 to i64
  %conv7.i.i = zext i32 %41 to i64
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.71, i64 noundef %conv7.i.i, i64 noundef %mul.i.i) #18
  br label %do.end.i

if.end.i.i240:                                    ; preds = %if.end73
  %call13.i.i = tail call i32 @prandom_u32() #15
  %conv14.i.i = zext i32 %call13.i.i to i64
  %shl.i.i = shl nuw nsw i64 %conv14.i.i, 31
  %call15.i.i = tail call i32 @prandom_u32() #15
  %conv16.i.i = zext i32 %call15.i.i to i64
  %or.i.i = or i64 %shl.i.i, %conv16.i.i
  %43 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hw_addr, align 4
  %add.ptr18.i.i = getelementptr i8, ptr %44, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !279
  tail call void @arm_heavy_mb() #15
  %conv.i.i.i = trunc i64 %or.i.i to i32
  %45 = tail call i32 @llvm.bswap.i32(i32 %conv.i.i.i) #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i.i, i32 %45) #15, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !280
  tail call void @arm_heavy_mb() #15
  %shr.i.i.i = lshr i32 %call13.i.i, 1
  %46 = tail call i32 @llvm.bswap.i32(i32 %shr.i.i.i) #15
  %add.ptr.i.i.i = getelementptr i8, ptr %44, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %46) #15, !srcloc !276
  %47 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw_addr, align 4
  %add.ptr20.i.i = getelementptr i8, ptr %48, i32 24
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20.i.i) #15, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !282
  %add.ptr.i50.i.i = getelementptr i8, ptr %48, i32 28
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50.i.i) #15, !srcloc !281
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !283
  %51 = zext i32 %50 to i64
  %52 = zext i32 %49 to i64
  %53 = shl nuw i64 %52, 32
  %54 = or i64 %53, %51
  %55 = tail call i64 @llvm.bswap.i64(i64 %54) #15
  %mul22.i.i = shl nuw i64 %or.i.i, 1
  call void @__sanitizer_cov_trace_cmp8(i64 %55, i64 %mul22.i.i)
  %cmp23.not.i.i = icmp eq i64 %55, %mul22.i.i
  br i1 %cmp23.not.i.i, label %if.end.i241, label %do.end28.i.i

do.end28.i.i:                                     ; preds = %if.end.i.i240
  call void @__sanitizer_cov_trace_pc() #17
  %dev29.i.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i.i, ptr noundef nonnull @.str.74, i64 noundef %55, i64 noundef %mul22.i.i) #18
  br label %do.end.i

do.end.i:                                         ; preds = %do.end28.i.i, %do.end11.i.i
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.60) #18
  br label %rocker_basic_hw_test.exit.thread

if.end.i241:                                      ; preds = %if.end.i.i240
  %msix_entries.i.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %msix_entries.i.i, align 8
  %arrayidx.i.i = getelementptr %struct.msix_entry, ptr %57, i32 2
  %58 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i, align 4
  %call.i46.i = call i32 @request_threaded_irq(i32 noundef %59, ptr noundef nonnull @rocker_test_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @rocker_driver_name, ptr noundef nonnull %wait.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46.i)
  %tobool4.not.i = icmp eq i32 %call.i46.i, 0
  br i1 %tobool4.not.i, label %if.end10.i, label %do.end8.i

do.end8.i:                                        ; preds = %if.end.i241
  call void @__sanitizer_cov_trace_pc() #17
  %dev9.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9.i, ptr noundef nonnull @.str.63) #18
  br label %rocker_basic_hw_test.exit.thread

if.end10.i:                                       ; preds = %if.end.i241
  call void @__init_waitqueue_head(ptr noundef nonnull %wait.i, ptr noundef nonnull @.str, ptr noundef nonnull @rocker_wait_init.__key) #15
  %done.i.i.i = getelementptr inbounds %struct.rocker_wait, ptr %wait.i, i32 0, i32 1
  %60 = ptrtoint ptr %done.i.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %done.i.i.i, align 4
  %nowait.i.i.i = getelementptr inbounds %struct.rocker_wait, ptr %wait.i, i32 0, i32 2
  %61 = ptrtoint ptr %nowait.i.i.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %nowait.i.i.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !293
  call void @arm_heavy_mb() #15
  %62 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw_addr, align 4
  %add.ptr.i = getelementptr i8, ptr %63, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 33554432) #15, !srcloc !276
  %call14.i = call fastcc zeroext i1 @rocker_wait_event_timeout(ptr noundef nonnull %wait.i) #15
  br i1 %call14.i, label %if.end10.i.for.body.i.i_crit_edge, label %if.end10.i.free_irq.sink.split.i_crit_edge

if.end10.i.free_irq.sink.split.i_crit_edge:       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_irq.sink.split.i

if.end10.i.for.body.i.i_crit_edge:                ; preds = %if.end10.i
  br label %for.body.i.i

for.cond.i.i:                                     ; preds = %rocker_dma_test_offset.exit.i.i
  %inc.i.i = add nuw nsw i32 %i.031.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 8
  br i1 %exitcond.not.i.i, label %for.cond.i.i.rocker_basic_hw_test.exit_crit_edge, label %for.cond.i.i.for.body.i.i_crit_edge

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.cond.i.i.rocker_basic_hw_test.exit_crit_edge: ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_basic_hw_test.exit

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end10.i.for.body.i.i_crit_edge
  %i.031.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end10.i.for.body.i.i_crit_edge ]
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %call7.i.i, align 8
  %add.i.i.i = add nuw nsw i32 %i.031.i.i, 32768
  %call9.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add.i.i.i, i32 noundef 3521) #19
  %tobool.not.i.i.i = icmp eq ptr %call9.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i.free_irq.sink.split.i_crit_edge, label %if.end.i.i.i242

for.body.i.i.free_irq.sink.split.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_irq.sink.split.i

if.end.i.i.i242:                                  ; preds = %for.body.i.i
  %add.ptr.i.i47.i = getelementptr i8, ptr %call9.i.i.i.i.i, i32 %i.031.i.i
  %add.ptr2.i.i.i = getelementptr i8, ptr %add.ptr.i.i47.i, i32 16384
  %dev.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %call.i.i.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr.i.i47.i) #15
  br i1 %call.i.i.i.i, label %land.rhs.i.i.i.i, label %dma_map_single_attrs.exit.i.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.end.i.i.i242
  %.b1.i.i.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i_crit_edge, label %if.then.i.i.i.i, !prof !285

land.rhs.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.thread.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i.i.i = call ptr @dev_driver_string(ptr noundef %dev.i.i.i) #15
  %init_name.i.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44, i32 3
  %66 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i68.i.i.i, label %if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge

if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge:  ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i.i.i.i

if.end.i.i68.i.i.i:                               ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %68 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i.i.i, align 4
  br label %dev_name.exit.i.i.i.i

dev_name.exit.i.i.i.i:                            ; preds = %if.end.i.i68.i.i.i, %if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %69, %if.end.i.i68.i.i.i ], [ %67, %if.then.i.i.i.i.dev_name.exit.i.i.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef %call16.i.i.i.i, ptr noundef %retval.0.i.i.i.i.i) #15
  br label %dma_map_single_attrs.exit.thread.i.i.i

dma_map_single_attrs.exit.thread.i.i.i:           ; preds = %dev_name.exit.i.i.i.i, %land.rhs.i.i.i.i.dma_map_single_attrs.exit.thread.i.i.i_crit_edge
  call void @debug_dma_mapping_error(ptr noundef %dev.i.i.i, i32 noundef -1) #15
  br label %rocker_dma_test_offset.exit.thread7.i.i

dma_map_single_attrs.exit.i.i.i:                  ; preds = %if.end.i.i.i242
  call void @debug_dma_map_single(ptr noundef %dev.i.i.i, ptr noundef %add.ptr.i.i47.i, i32 noundef 16384) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %70 = load ptr, ptr @mem_map, align 4
  %71 = ptrtoint ptr %add.ptr.i.i47.i to i32
  %sub.i.i.i.i = add i32 %71, 1073741824
  %shr.i.i.i.i = lshr i32 %sub.i.i.i.i, 12
  %add.ptr.i.i.i.i = getelementptr %struct.page, ptr %70, i32 %shr.i.i.i.i
  %and.i.i.i.i = and i32 %71, 4095
  %call41.i.i.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev.i.i.i, ptr noundef %add.ptr.i.i.i.i, i32 noundef %and.i.i.i.i, i32 noundef 16384, i32 noundef 0, i32 noundef 0) #15
  call void @debug_dma_mapping_error(ptr noundef %dev.i.i.i, i32 noundef %call41.i.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i.i.i)
  %cmp.i.i.i.i243 = icmp eq i32 %call41.i.i.i.i, -1
  br i1 %cmp.i.i.i.i243, label %dma_map_single_attrs.exit.i.i.i.rocker_dma_test_offset.exit.thread7.i.i_crit_edge, label %if.end8.i.i.i244

dma_map_single_attrs.exit.i.i.i.rocker_dma_test_offset.exit.thread7.i.i_crit_edge: ; preds = %dma_map_single_attrs.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_test_offset.exit.thread7.i.i

if.end8.i.i.i244:                                 ; preds = %dma_map_single_attrs.exit.i.i.i
  %72 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hw_addr, align 4
  %add.ptr9.i.i.i = getelementptr i8, ptr %73, i32 40
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !279
  call void @arm_heavy_mb() #15
  %74 = call i32 @llvm.bswap.i32(i32 %call41.i.i.i.i) #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i, i32 %74) #15, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !280
  call void @arm_heavy_mb() #15
  %add.ptr.i70.i.i.i = getelementptr i8, ptr %73, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i70.i.i.i, i32 0) #15, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !294
  call void @arm_heavy_mb() #15
  %75 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hw_addr, align 4
  %add.ptr11.i.i.i = getelementptr i8, ptr %76, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i.i, i32 4194304) #15, !srcloc !276
  %77 = call ptr @memset(ptr %add.ptr2.i.i.i, i32 150, i32 16384)
  %78 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %call7.i.i, align 8
  %80 = ptrtoint ptr %done.i.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %done.i.i.i, align 4
  %81 = ptrtoint ptr %nowait.i.i.i to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %nowait.i.i.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %82 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hw_addr, align 4
  %add.ptr.i71.i.i.i = getelementptr i8, ptr %83, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71.i.i.i, i32 33554432) #15, !srcloc !276
  %call.i72.i.i.i = call fastcc zeroext i1 @rocker_wait_event_timeout(ptr noundef nonnull %wait.i) #15
  br i1 %call.i72.i.i.i, label %if.end8.i.i.i244.for.body.i.i.i.i_crit_edge, label %do.end4.i.i.i.i

if.end8.i.i.i244.for.body.i.i.i.i_crit_edge:      ; preds = %if.end8.i.i.i244
  br label %for.body.i.i.i.i

do.end4.i.i.i.i:                                  ; preds = %if.end8.i.i.i244
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i, ptr noundef nonnull @.str.66) #18
  br label %rocker_dma_test_offset.exit.i.i

for.body.i.i.i.i:                                 ; preds = %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.end8.i.i.i244.for.body.i.i.i.i_crit_edge
  %i.03.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.end8.i.i.i244.for.body.i.i.i.i_crit_edge ]
  %arrayidx.i.i.i.i = getelementptr i8, ptr %add.ptr.i.i47.i, i32 %i.03.i.i.i.i
  %84 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %arrayidx5.i.i.i.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 %i.03.i.i.i.i
  %86 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx5.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %85, i8 %87)
  %cmp7.not.i.i.i.i = icmp eq i8 %85, %87
  br i1 %cmp7.not.i.i.i.i, label %for.inc.i.i.i.i, label %do.end12.i.i.i.i

do.end12.i.i.i.i:                                 ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv6.i.i.i.i = zext i8 %87 to i32
  %conv.i.i.i.i = zext i8 %85 to i32
  %dev13.i.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i.i.i, ptr noundef nonnull @.str.78, i32 noundef %conv.i.i.i.i, i32 noundef %i.03.i.i.i.i, i32 noundef %conv6.i.i.i.i) #18
  br label %rocker_dma_test_offset.exit.i.i

for.inc.i.i.i.i:                                  ; preds = %for.body.i.i.i.i
  %inc.i.i.i.i = add nuw nsw i32 %i.03.i.i.i.i, 1
  %exitcond.not.i.i.i.i = icmp eq i32 %inc.i.i.i.i, 16384
  br i1 %exitcond.not.i.i.i.i, label %if.end15.i.i.i, label %for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge

for.inc.i.i.i.i.for.body.i.i.i.i_crit_edge:       ; preds = %for.inc.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i.i

if.end15.i.i.i:                                   ; preds = %for.inc.i.i.i.i
  %88 = call ptr @memset(ptr %add.ptr2.i.i.i, i32 0, i32 16384)
  %89 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %call7.i.i, align 8
  %91 = ptrtoint ptr %done.i.i.i to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %done.i.i.i, align 4
  %92 = ptrtoint ptr %nowait.i.i.i to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %nowait.i.i.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %93 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hw_addr, align 4
  %add.ptr.i77.i.i.i = getelementptr i8, ptr %94, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i.i.i, i32 16777216) #15, !srcloc !276
  %call.i78.i.i.i = call fastcc zeroext i1 @rocker_wait_event_timeout(ptr noundef nonnull %wait.i) #15
  br i1 %call.i78.i.i.i, label %if.end15.i.i.i.for.body.i85.i.i.i_crit_edge, label %do.end4.i80.i.i.i

if.end15.i.i.i.for.body.i85.i.i.i_crit_edge:      ; preds = %if.end15.i.i.i
  br label %for.body.i85.i.i.i

do.end4.i80.i.i.i:                                ; preds = %if.end15.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i79.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i79.i.i.i, ptr noundef nonnull @.str.66) #18
  br label %rocker_dma_test_offset.exit.i.i

for.body.i85.i.i.i:                               ; preds = %for.inc.i92.i.i.i.for.body.i85.i.i.i_crit_edge, %if.end15.i.i.i.for.body.i85.i.i.i_crit_edge
  %i.03.i81.i.i.i = phi i32 [ %inc.i90.i.i.i, %for.inc.i92.i.i.i.for.body.i85.i.i.i_crit_edge ], [ 0, %if.end15.i.i.i.for.body.i85.i.i.i_crit_edge ]
  %arrayidx.i82.i.i.i = getelementptr i8, ptr %add.ptr.i.i47.i, i32 %i.03.i81.i.i.i
  %95 = ptrtoint ptr %arrayidx.i82.i.i.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %arrayidx.i82.i.i.i, align 1
  %arrayidx5.i83.i.i.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 %i.03.i81.i.i.i
  %97 = ptrtoint ptr %arrayidx5.i83.i.i.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx5.i83.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %96, i8 %98)
  %cmp7.not.i84.i.i.i = icmp eq i8 %96, %98
  br i1 %cmp7.not.i84.i.i.i, label %for.inc.i92.i.i.i, label %do.end12.i89.i.i.i

do.end12.i89.i.i.i:                               ; preds = %for.body.i85.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv6.i86.i.i.i = zext i8 %98 to i32
  %conv.i87.i.i.i = zext i8 %96 to i32
  %dev13.i88.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %90, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i88.i.i.i, ptr noundef nonnull @.str.78, i32 noundef %conv.i87.i.i.i, i32 noundef %i.03.i81.i.i.i, i32 noundef %conv6.i86.i.i.i) #18
  br label %rocker_dma_test_offset.exit.i.i

for.inc.i92.i.i.i:                                ; preds = %for.body.i85.i.i.i
  %inc.i90.i.i.i = add nuw nsw i32 %i.03.i81.i.i.i, 1
  %exitcond.not.i91.i.i.i = icmp eq i32 %inc.i90.i.i.i, 16384
  br i1 %exitcond.not.i91.i.i.i, label %if.end19.i.i.i, label %for.inc.i92.i.i.i.for.body.i85.i.i.i_crit_edge

for.inc.i92.i.i.i.for.body.i85.i.i.i_crit_edge:   ; preds = %for.inc.i92.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i85.i.i.i

if.end19.i.i.i:                                   ; preds = %for.inc.i92.i.i.i
  call void @prandom_bytes(ptr noundef %add.ptr.i.i47.i, i32 noundef 16384) #15
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i.for.body.i.i.i_crit_edge, %if.end19.i.i.i
  %i.0144.i.i.i = phi i32 [ 0, %if.end19.i.i.i ], [ %inc.i.i.i, %for.body.i.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr i8, ptr %add.ptr.i.i47.i, i32 %i.0144.i.i.i
  %99 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.i.i.i, align 1
  %neg.i.i.i = xor i8 %100, -1
  %arrayidx23.i.i.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 %i.0144.i.i.i
  %101 = ptrtoint ptr %arrayidx23.i.i.i to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %neg.i.i.i, ptr %arrayidx23.i.i.i, align 1
  %inc.i.i.i = add nuw nsw i32 %i.0144.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 16384
  br i1 %exitcond.not.i.i.i, label %for.end.i.i.i, label %for.body.i.i.i.for.body.i.i.i_crit_edge

for.body.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i

for.end.i.i.i:                                    ; preds = %for.body.i.i.i
  %102 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %call7.i.i, align 8
  %104 = ptrtoint ptr %done.i.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %done.i.i.i, align 4
  %105 = ptrtoint ptr %nowait.i.i.i to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %nowait.i.i.i, align 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !295
  call void @arm_heavy_mb() #15
  %106 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %hw_addr, align 4
  %add.ptr.i98.i.i.i = getelementptr i8, ptr %107, i32 52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98.i.i.i, i32 67108864) #15, !srcloc !276
  %call.i99.i.i.i = call fastcc zeroext i1 @rocker_wait_event_timeout(ptr noundef nonnull %wait.i) #15
  br i1 %call.i99.i.i.i, label %for.end.i.i.i.for.body.i106.i.i.i_crit_edge, label %do.end4.i101.i.i.i

for.end.i.i.i.for.body.i106.i.i.i_crit_edge:      ; preds = %for.end.i.i.i
  br label %for.body.i106.i.i.i

do.end4.i101.i.i.i:                               ; preds = %for.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i100.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i100.i.i.i, ptr noundef nonnull @.str.66) #18
  br label %rocker_dma_test_offset.exit.i.i

for.body.i106.i.i.i:                              ; preds = %for.inc.i113.i.i.i.for.body.i106.i.i.i_crit_edge, %for.end.i.i.i.for.body.i106.i.i.i_crit_edge
  %i.03.i102.i.i.i = phi i32 [ %inc.i111.i.i.i, %for.inc.i113.i.i.i.for.body.i106.i.i.i_crit_edge ], [ 0, %for.end.i.i.i.for.body.i106.i.i.i_crit_edge ]
  %arrayidx.i103.i.i.i = getelementptr i8, ptr %add.ptr.i.i47.i, i32 %i.03.i102.i.i.i
  %108 = ptrtoint ptr %arrayidx.i103.i.i.i to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx.i103.i.i.i, align 1
  %arrayidx5.i104.i.i.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 %i.03.i102.i.i.i
  %110 = ptrtoint ptr %arrayidx5.i104.i.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx5.i104.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %109, i8 %111)
  %cmp7.not.i105.i.i.i = icmp eq i8 %109, %111
  br i1 %cmp7.not.i105.i.i.i, label %for.inc.i113.i.i.i, label %do.end12.i110.i.i.i

do.end12.i110.i.i.i:                              ; preds = %for.body.i106.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv6.i107.i.i.i = zext i8 %111 to i32
  %conv.i108.i.i.i = zext i8 %109 to i32
  %dev13.i109.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i109.i.i.i, ptr noundef nonnull @.str.78, i32 noundef %conv.i108.i.i.i, i32 noundef %i.03.i102.i.i.i, i32 noundef %conv6.i107.i.i.i) #18
  br label %rocker_dma_test_offset.exit.i.i

for.inc.i113.i.i.i:                               ; preds = %for.body.i106.i.i.i
  %inc.i111.i.i.i = add nuw nsw i32 %i.03.i102.i.i.i, 1
  %exitcond.not.i112.i.i.i = icmp eq i32 %inc.i111.i.i.i, 16384
  br i1 %exitcond.not.i112.i.i.i, label %for.inc.i113.i.i.i.rocker_dma_test_offset.exit.i.i_crit_edge, label %for.inc.i113.i.i.i.for.body.i106.i.i.i_crit_edge

for.inc.i113.i.i.i.for.body.i106.i.i.i_crit_edge: ; preds = %for.inc.i113.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i106.i.i.i

for.inc.i113.i.i.i.rocker_dma_test_offset.exit.i.i_crit_edge: ; preds = %for.inc.i113.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_test_offset.exit.i.i

rocker_dma_test_offset.exit.thread7.i.i:          ; preds = %dma_map_single_attrs.exit.i.i.i.rocker_dma_test_offset.exit.thread7.i.i_crit_edge, %dma_map_single_attrs.exit.thread.i.i.i
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i.i) #15
  br label %free_irq.sink.split.i

rocker_dma_test_offset.exit.i.i:                  ; preds = %for.inc.i113.i.i.i.rocker_dma_test_offset.exit.i.i_crit_edge, %do.end12.i110.i.i.i, %do.end4.i101.i.i.i, %do.end12.i89.i.i.i, %do.end4.i80.i.i.i, %do.end12.i.i.i.i, %do.end4.i.i.i.i
  %tobool.not.i.i = phi i1 [ false, %do.end4.i.i.i.i ], [ false, %do.end12.i.i.i.i ], [ false, %do.end4.i80.i.i.i ], [ false, %do.end12.i89.i.i.i ], [ false, %do.end4.i101.i.i.i ], [ false, %do.end12.i110.i.i.i ], [ true, %for.inc.i113.i.i.i.rocker_dma_test_offset.exit.i.i_crit_edge ]
  %err.0.i.i.i = phi i32 [ -5, %do.end4.i.i.i.i ], [ -5, %do.end12.i.i.i.i ], [ -5, %do.end4.i80.i.i.i ], [ -5, %do.end12.i89.i.i.i ], [ -5, %do.end4.i101.i.i.i ], [ -5, %do.end12.i110.i.i.i ], [ 0, %for.inc.i113.i.i.i.rocker_dma_test_offset.exit.i.i_crit_edge ]
  call void @dma_unmap_page_attrs(ptr noundef %dev.i.i.i, i32 noundef %call41.i.i.i.i, i32 noundef 16384, i32 noundef 0, i32 noundef 0) #15
  call void @kfree(ptr noundef nonnull %call9.i.i.i.i.i) #15
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %rocker_dma_test_offset.exit.i.i.free_irq.sink.split.i_crit_edge

rocker_dma_test_offset.exit.i.i.free_irq.sink.split.i_crit_edge: ; preds = %rocker_dma_test_offset.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %free_irq.sink.split.i

free_irq.sink.split.i:                            ; preds = %rocker_dma_test_offset.exit.i.i.free_irq.sink.split.i_crit_edge, %rocker_dma_test_offset.exit.thread7.i.i, %for.body.i.i.free_irq.sink.split.i_crit_edge, %if.end10.i.free_irq.sink.split.i_crit_edge
  %.str.69.sink.i = phi ptr [ @.str.66, %if.end10.i.free_irq.sink.split.i_crit_edge ], [ @.str.69, %rocker_dma_test_offset.exit.thread7.i.i ], [ @.str.69, %for.body.i.i.free_irq.sink.split.i_crit_edge ], [ @.str.69, %rocker_dma_test_offset.exit.i.i.free_irq.sink.split.i_crit_edge ]
  %err.0.ph.i = phi i32 [ -5, %if.end10.i.free_irq.sink.split.i_crit_edge ], [ -5, %rocker_dma_test_offset.exit.thread7.i.i ], [ %err.0.i.i.i, %rocker_dma_test_offset.exit.i.i.free_irq.sink.split.i_crit_edge ], [ -12, %for.body.i.i.free_irq.sink.split.i_crit_edge ]
  %dev27.i = getelementptr inbounds %struct.pci_dev, ptr %32, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev27.i, ptr noundef nonnull %.str.69.sink.i) #18
  br label %rocker_basic_hw_test.exit

rocker_basic_hw_test.exit.thread:                 ; preds = %do.end8.i, %do.end.i
  %retval.0.i245.ph = phi i32 [ %call.i46.i, %do.end8.i ], [ -5, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wait.i) #15
  br label %do.end79

rocker_basic_hw_test.exit:                        ; preds = %free_irq.sink.split.i, %for.cond.i.i.rocker_basic_hw_test.exit_crit_edge
  %err.0.i = phi i32 [ %err.0.ph.i, %free_irq.sink.split.i ], [ 0, %for.cond.i.i.rocker_basic_hw_test.exit_crit_edge ]
  %112 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %msix_entries.i.i, align 8
  %arrayidx.i50.i = getelementptr %struct.msix_entry, ptr %113, i32 2
  %114 = ptrtoint ptr %arrayidx.i50.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %arrayidx.i50.i, align 4
  %call30.i = call ptr @free_irq(i32 noundef %115, ptr noundef nonnull %wait.i) #15
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %wait.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool75.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool75.not, label %do.body82, label %rocker_basic_hw_test.exit.do.end79_crit_edge

rocker_basic_hw_test.exit.do.end79_crit_edge:     ; preds = %rocker_basic_hw_test.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end79

do.end79:                                         ; preds = %rocker_basic_hw_test.exit.do.end79_crit_edge, %rocker_basic_hw_test.exit.thread
  %retval.0.i245335 = phi i32 [ %retval.0.i245.ph, %rocker_basic_hw_test.exit.thread ], [ %err.0.i, %rocker_basic_hw_test.exit.do.end79_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.39) #18
  br label %err_basic_hw_test

do.body82:                                        ; preds = %rocker_basic_hw_test.exit
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !296
  call void @arm_heavy_mb() #15
  %116 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %hw_addr, align 4
  %add.ptr86 = getelementptr i8, ptr %117, i32 768
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr86, i32 16777216) #15, !srcloc !276
  %118 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %call7.i.i, align 8
  %cmd_ring.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 7
  %call.i246 = call fastcc i32 @rocker_dma_ring_create(ptr noundef %call7.i.i, i32 noundef 0, i32 noundef 32, ptr noundef %cmd_ring.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i246)
  %tobool.not.i247 = icmp eq i32 %call.i246, 0
  br i1 %tobool.not.i247, label %do.body2.i, label %rocker_dma_rings_init.exit.thread338

rocker_dma_rings_init.exit.thread338:             ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i248 = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i248, ptr noundef nonnull @.str.80) #18
  br label %err_basic_hw_test

do.body2.i:                                       ; preds = %do.body82
  %cmd_ring_lock.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %cmd_ring_lock.i, ptr noundef nonnull @.str.82, ptr noundef nonnull @rocker_dma_rings_init.__key, i16 noundef signext 3) #15
  %call7.i = call fastcc i32 @rocker_dma_ring_bufs_alloc(ptr noundef %call7.i.i, ptr noundef %cmd_ring.i, i32 noundef 0, i32 noundef 4096) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool8.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool8.not.i, label %if.end14.i, label %do.end12.i

do.end12.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev13.i = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i, ptr noundef nonnull @.str.84) #18
  br label %rocker_dma_rings_init.exit

if.end14.i:                                       ; preds = %do.body2.i
  %120 = ptrtoint ptr %cmd_ring.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cmd_ring.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp28.not.i.i = icmp eq i32 %121, 0
  br i1 %cmp28.not.i.i, label %if.end14.i.if.end22.i_crit_edge, label %for.body.lr.ph.i.i

if.end14.i.if.end22.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22.i

for.body.lr.ph.i.i:                               ; preds = %if.end14.i
  %desc_info.i.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 7, i32 5
  br label %for.body.i.i251

for.body.i.i251:                                  ; preds = %for.inc.i.i.for.body.i.i251_crit_edge, %for.body.lr.ph.i.i
  %i.029.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i253, %for.inc.i.i.for.body.i.i251_crit_edge ]
  %122 = ptrtoint ptr %desc_info.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %desc_info.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %124 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %124, i32 noundef 3520, i32 noundef 56) #20
  %tobool.not.i.i.i250 = icmp eq ptr %call7.i.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i250, label %for.cond2.preheader.i.i, label %for.inc.i.i

for.cond2.preheader.i.i:                          ; preds = %for.body.i.i251
  %i.130.i.i = add i32 %i.029.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.130.i.i)
  %cmp331.i.i = icmp sgt i32 %i.130.i.i, -1
  br i1 %cmp331.i.i, label %for.cond2.preheader.i.i.for.body4.i.i_crit_edge, label %for.cond2.preheader.i.i.do.end20.i_crit_edge

for.cond2.preheader.i.i.do.end20.i_crit_edge:     ; preds = %for.cond2.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end20.i

for.cond2.preheader.i.i.for.body4.i.i_crit_edge:  ; preds = %for.cond2.preheader.i.i
  br label %for.body4.i.i

for.inc.i.i:                                      ; preds = %for.body.i.i251
  %125 = ptrtoint ptr %call7.i.i.i.i.i.i to i32
  %conv.i.i.i.i252 = zext i32 %125 to i64
  %desc.i.i.i.i = getelementptr %struct.rocker_desc_info, ptr %123, i32 %i.029.i.i, i32 3
  %126 = ptrtoint ptr %desc.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %desc.i.i.i.i, align 4
  %cookie.i.i.i.i = getelementptr inbounds %struct.rocker_desc, ptr %127, i32 0, i32 1
  %128 = ptrtoint ptr %cookie.i.i.i.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %conv.i.i.i.i252, ptr %cookie.i.i.i.i, align 8
  %inc.i.i253 = add nuw i32 %i.029.i.i, 1
  %129 = ptrtoint ptr %cmd_ring.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %cmd_ring.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i253, %130
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i251_crit_edge, label %for.inc.i.i.if.end22.i_crit_edge

for.inc.i.i.if.end22.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end22.i

for.inc.i.i.for.body.i.i251_crit_edge:            ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i251

for.body4.i.i:                                    ; preds = %for.body4.i.i.for.body4.i.i_crit_edge, %for.cond2.preheader.i.i.for.body4.i.i_crit_edge
  %i.132.i.i = phi i32 [ %i.1.i.i, %for.body4.i.i.for.body4.i.i_crit_edge ], [ %i.130.i.i, %for.cond2.preheader.i.i.for.body4.i.i_crit_edge ]
  %131 = ptrtoint ptr %desc_info.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %desc_info.i.i, align 8
  %desc.i.i21.i.i = getelementptr %struct.rocker_desc_info, ptr %132, i32 %i.132.i.i, i32 3
  %133 = ptrtoint ptr %desc.i.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %desc.i.i21.i.i, align 4
  %cookie.i.i22.i.i = getelementptr inbounds %struct.rocker_desc, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %cookie.i.i22.i.i to i32
  call void @__asan_load8_noabort(i32 %135)
  %136 = load i64, ptr %cookie.i.i22.i.i, align 8
  %conv.i.i23.i.i = trunc i64 %136 to i32
  %137 = inttoptr i32 %conv.i.i23.i.i to ptr
  call void @kfree(ptr noundef %137) #15
  %i.1.i.i = add nsw i32 %i.132.i.i, -1
  %cmp3.i.not.i = icmp eq i32 %i.132.i.i, 0
  br i1 %cmp3.i.not.i, label %for.body4.i.i.do.end20.i_crit_edge, label %for.body4.i.i.for.body4.i.i_crit_edge

for.body4.i.i.for.body4.i.i_crit_edge:            ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body4.i.i

for.body4.i.i.do.end20.i_crit_edge:               ; preds = %for.body4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end20.i

do.end20.i:                                       ; preds = %for.body4.i.i.do.end20.i_crit_edge, %for.cond2.preheader.i.i.do.end20.i_crit_edge
  %dev21.i = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev21.i, ptr noundef nonnull @.str.87) #18
  %138 = ptrtoint ptr %cmd_ring.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %.pr.i = load i32, ptr %cmd_ring.i, align 4
  br label %err_dma_cmd_ring_waits_alloc.i

if.end22.i:                                       ; preds = %for.inc.i.i.if.end22.i_crit_edge, %if.end14.i.if.end22.i_crit_edge
  %event_ring.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 8
  %call23.i = call fastcc i32 @rocker_dma_ring_create(ptr noundef %call7.i.i, i32 noundef 1, i32 noundef 32, ptr noundef %event_ring.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end30.i, label %do.end28.i

do.end28.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev29.i = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev29.i, ptr noundef nonnull @.str.90) #18
  br label %err_dma_event_ring_create.i

if.end30.i:                                       ; preds = %if.end22.i
  %call32.i = call fastcc i32 @rocker_dma_ring_bufs_alloc(ptr noundef %call7.i.i, ptr noundef %event_ring.i, i32 noundef 2, i32 noundef 4096) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %rocker_dma_rings_init.exit.thread, label %do.end37.i

do.end37.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev38.i = getelementptr inbounds %struct.pci_dev, ptr %119, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev38.i, ptr noundef nonnull @.str.93) #18
  %139 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %hw_addr, align 4
  %type.i.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 8, i32 6
  %141 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %type.i.i, align 8
  %mul.i.i255 = shl i32 %142, 5
  %add.i.i = add i32 %mul.i.i255, 4096
  %add.ptr.i.i256 = getelementptr i8, ptr %140, i32 %add.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !279
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i256, i32 0) #15, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !280
  call void @arm_heavy_mb() #15
  %add.ptr.i.i.i257 = getelementptr i8, ptr %add.ptr.i.i256, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i257, i32 0) #15, !srcloc !276
  %143 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %call7.i.i, align 8
  %dev.i.i258 = getelementptr inbounds %struct.pci_dev, ptr %144, i32 0, i32 44
  %145 = ptrtoint ptr %event_ring.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %event_ring.i, align 8
  %mul1.i.i = shl i32 %146, 5
  %desc.i.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 8, i32 3
  %147 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %desc.i.i, align 4
  %mapaddr.i.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 8, i32 4
  %149 = ptrtoint ptr %mapaddr.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %mapaddr.i.i, align 8
  call void @dma_free_attrs(ptr noundef %dev.i.i258, i32 noundef %mul1.i.i, ptr noundef %148, i32 noundef %150, i32 noundef 0) #15
  %desc_info.i74.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 8, i32 5
  %151 = ptrtoint ptr %desc_info.i74.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %desc_info.i74.i, align 4
  call void @kfree(ptr noundef %152) #15
  br label %err_dma_event_ring_create.i

rocker_dma_rings_init.exit.thread:                ; preds = %if.end30.i
  call fastcc void @rocker_dma_ring_pass_to_producer(ptr noundef %call7.i.i, ptr noundef %event_ring.i) #15
  %153 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %msix_entries.i.i, align 8
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 4
  %call.i262 = call i32 @request_threaded_irq(i32 noundef %156, ptr noundef nonnull @rocker_cmd_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @rocker_driver_name, ptr noundef %call7.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i262)
  %tobool93.not = icmp eq i32 %call.i262, 0
  br i1 %tobool93.not, label %if.end99, label %do.end97

err_dma_event_ring_create.i:                      ; preds = %do.end37.i, %do.end28.i
  %err.0.i259 = phi i32 [ %call23.i, %do.end28.i ], [ %call32.i, %do.end37.i ]
  %157 = ptrtoint ptr %cmd_ring.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %cmd_ring.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %cmp5.not.i.i = icmp eq i32 %158, 0
  br i1 %cmp5.not.i.i, label %err_dma_event_ring_create.i.rocker_dma_rings_init.exit_crit_edge, label %for.body.lr.ph.i77.i

err_dma_event_ring_create.i.rocker_dma_rings_init.exit_crit_edge: ; preds = %err_dma_event_ring_create.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_rings_init.exit

for.body.lr.ph.i77.i:                             ; preds = %err_dma_event_ring_create.i
  %desc_info.i76.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 7, i32 5
  br label %for.body.i83.i

for.body.i83.i:                                   ; preds = %for.body.i83.i.for.body.i83.i_crit_edge, %for.body.lr.ph.i77.i
  %i.06.i.i = phi i32 [ 0, %for.body.lr.ph.i77.i ], [ %inc.i81.i, %for.body.i83.i.for.body.i83.i_crit_edge ]
  %159 = ptrtoint ptr %desc_info.i76.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %desc_info.i76.i, align 8
  %desc.i.i.i78.i = getelementptr %struct.rocker_desc_info, ptr %160, i32 %i.06.i.i, i32 3
  %161 = ptrtoint ptr %desc.i.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %desc.i.i.i78.i, align 4
  %cookie.i.i.i79.i = getelementptr inbounds %struct.rocker_desc, ptr %162, i32 0, i32 1
  %163 = ptrtoint ptr %cookie.i.i.i79.i to i32
  call void @__asan_load8_noabort(i32 %163)
  %164 = load i64, ptr %cookie.i.i.i79.i, align 8
  %conv.i.i.i80.i = trunc i64 %164 to i32
  %165 = inttoptr i32 %conv.i.i.i80.i to ptr
  call void @kfree(ptr noundef %165) #15
  %inc.i81.i = add nuw i32 %i.06.i.i, 1
  %166 = ptrtoint ptr %cmd_ring.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %cmd_ring.i, align 4
  %cmp.i82.i = icmp ult i32 %inc.i81.i, %167
  br i1 %cmp.i82.i, label %for.body.i83.i.for.body.i83.i_crit_edge, label %for.body.i83.i.err_dma_cmd_ring_waits_alloc.i_crit_edge

for.body.i83.i.err_dma_cmd_ring_waits_alloc.i_crit_edge: ; preds = %for.body.i83.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_dma_cmd_ring_waits_alloc.i

for.body.i83.i.for.body.i83.i_crit_edge:          ; preds = %for.body.i83.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i83.i

err_dma_cmd_ring_waits_alloc.i:                   ; preds = %for.body.i83.i.err_dma_cmd_ring_waits_alloc.i_crit_edge, %do.end20.i
  %168 = phi i32 [ %.pr.i, %do.end20.i ], [ %167, %for.body.i83.i.err_dma_cmd_ring_waits_alloc.i_crit_edge ]
  %err.1.i = phi i32 [ -12, %do.end20.i ], [ %err.0.i259, %for.body.i83.i.err_dma_cmd_ring_waits_alloc.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %cmp13.not.i.i = icmp eq i32 %168, 0
  br i1 %cmp13.not.i.i, label %err_dma_cmd_ring_waits_alloc.i.rocker_dma_rings_init.exit_crit_edge, label %for.body.lr.ph.i85.i

err_dma_cmd_ring_waits_alloc.i.rocker_dma_rings_init.exit_crit_edge: ; preds = %err_dma_cmd_ring_waits_alloc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_rings_init.exit

for.body.lr.ph.i85.i:                             ; preds = %err_dma_cmd_ring_waits_alloc.i
  %169 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %call7.i.i, align 8
  %desc_info2.i.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 7, i32 5
  %desc3.i.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 7, i32 3
  %dev.i84.i = getelementptr inbounds %struct.pci_dev, ptr %170, i32 0, i32 44
  br label %for.body.i89.i

for.body.i89.i:                                   ; preds = %for.body.i89.i.for.body.i89.i_crit_edge, %for.body.lr.ph.i85.i
  %i.014.i.i = phi i32 [ 0, %for.body.lr.ph.i85.i ], [ %inc.i87.i, %for.body.i89.i.for.body.i89.i_crit_edge ]
  %171 = ptrtoint ptr %desc_info2.i.i to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %desc_info2.i.i, align 8
  %arrayidx.i.i260 = getelementptr %struct.rocker_desc_info, ptr %172, i32 %i.014.i.i
  %173 = ptrtoint ptr %desc3.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %desc3.i.i, align 8
  %arrayidx4.i.i = getelementptr %struct.rocker_desc, ptr %174, i32 %i.014.i.i
  %175 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 0, ptr %arrayidx4.i.i, align 8
  %buf_size.i.i = getelementptr %struct.rocker_desc, ptr %174, i32 %i.014.i.i, i32 2
  %176 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 0, ptr %buf_size.i.i, align 8
  %mapaddr.i86.i = getelementptr %struct.rocker_desc_info, ptr %172, i32 %i.014.i.i, i32 4
  %177 = ptrtoint ptr %mapaddr.i86.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %mapaddr.i86.i, align 4
  %data_size.i.i = getelementptr %struct.rocker_desc_info, ptr %172, i32 %i.014.i.i, i32 1
  %179 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %data_size.i.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %dev.i84.i, i32 noundef %178, i32 noundef %180, i32 noundef 0, i32 noundef 0) #15
  %181 = ptrtoint ptr %arrayidx.i.i260 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %arrayidx.i.i260, align 4
  call void @kfree(ptr noundef %182) #15
  %inc.i87.i = add nuw i32 %i.014.i.i, 1
  %183 = ptrtoint ptr %cmd_ring.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %cmd_ring.i, align 4
  %cmp.i88.i = icmp ult i32 %inc.i87.i, %184
  br i1 %cmp.i88.i, label %for.body.i89.i.for.body.i89.i_crit_edge, label %for.body.i89.i.rocker_dma_rings_init.exit_crit_edge

for.body.i89.i.rocker_dma_rings_init.exit_crit_edge: ; preds = %for.body.i89.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_rings_init.exit

for.body.i89.i.for.body.i89.i_crit_edge:          ; preds = %for.body.i89.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i89.i

rocker_dma_rings_init.exit:                       ; preds = %for.body.i89.i.rocker_dma_rings_init.exit_crit_edge, %err_dma_cmd_ring_waits_alloc.i.rocker_dma_rings_init.exit_crit_edge, %err_dma_event_ring_create.i.rocker_dma_rings_init.exit_crit_edge, %do.end12.i
  %err.2.i = phi i32 [ %call7.i, %do.end12.i ], [ %err.1.i, %err_dma_cmd_ring_waits_alloc.i.rocker_dma_rings_init.exit_crit_edge ], [ %err.0.i259, %err_dma_event_ring_create.i.rocker_dma_rings_init.exit_crit_edge ], [ %err.1.i, %for.body.i89.i.rocker_dma_rings_init.exit_crit_edge ]
  %185 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %hw_addr, align 4
  %type.i91.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 7, i32 6
  %187 = ptrtoint ptr %type.i91.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %type.i91.i, align 4
  %mul.i92.i = shl i32 %188, 5
  %add.i93.i = add i32 %mul.i92.i, 4096
  %add.ptr.i94.i = getelementptr i8, ptr %186, i32 %add.i93.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !279
  call void @arm_heavy_mb() #15
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94.i, i32 0) #15, !srcloc !276
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !280
  call void @arm_heavy_mb() #15
  %add.ptr.i.i95.i = getelementptr i8, ptr %add.ptr.i94.i, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i95.i, i32 0) #15, !srcloc !276
  %189 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %call7.i.i, align 8
  %dev.i96.i = getelementptr inbounds %struct.pci_dev, ptr %190, i32 0, i32 44
  %191 = ptrtoint ptr %cmd_ring.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %cmd_ring.i, align 4
  %mul1.i97.i = shl i32 %192, 5
  %desc.i98.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 7, i32 3
  %193 = ptrtoint ptr %desc.i98.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %desc.i98.i, align 8
  %mapaddr.i99.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 7, i32 4
  %195 = ptrtoint ptr %mapaddr.i99.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %mapaddr.i99.i, align 4
  call void @dma_free_attrs(ptr noundef %dev.i96.i, i32 noundef %mul1.i97.i, ptr noundef %194, i32 noundef %196, i32 noundef 0) #15
  %desc_info.i100.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 7, i32 5
  %197 = ptrtoint ptr %desc_info.i100.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %desc_info.i100.i, align 8
  call void @kfree(ptr noundef %198) #15
  br label %err_basic_hw_test

do.end97:                                         ; preds = %rocker_dma_rings_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.42) #18
  br label %err_request_cmd_irq

if.end99:                                         ; preds = %rocker_dma_rings_init.exit.thread
  %199 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %msix_entries.i.i, align 8
  %arrayidx.i = getelementptr %struct.msix_entry, ptr %200, i32 1
  %201 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %arrayidx.i, align 4
  %call.i264 = call i32 @request_threaded_irq(i32 noundef %202, ptr noundef nonnull @rocker_event_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @rocker_driver_name, ptr noundef %call7.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %tobool102.not = icmp eq i32 %call.i264, 0
  br i1 %tobool102.not, label %if.end108, label %do.end106

do.end106:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.45) #18
  br label %err_request_event_irq

if.end108:                                        ; preds = %if.end99
  %call109 = call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @rocker_driver_name, i32 noundef 655370, i32 noundef 1) #15
  %rocker_owq = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 11
  %203 = ptrtoint ptr %rocker_owq to i32
  call void @__asan_store4_noabort(i32 %203)
  store ptr %call109, ptr %rocker_owq, align 4
  %tobool111.not = icmp eq ptr %call109, null
  br i1 %tobool111.not, label %if.end108.err_alloc_ordered_workqueue_crit_edge, label %if.end8.i.i.i292

if.end108.err_alloc_ordered_workqueue_crit_edge:  ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_alloc_ordered_workqueue

if.end8.i.i.i292:                                 ; preds = %if.end108
  %204 = ptrtoint ptr %port_count to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %port_count, align 4
  %mul.i = shl i32 %205, 2
  %call9.i.i.i291 = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3520) #19
  %ports.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 4
  %206 = ptrtoint ptr %ports.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %call9.i.i.i291, ptr %ports.i, align 8
  %tobool.not.i293 = icmp eq ptr %call9.i.i.i291, null
  br i1 %tobool.not.i293, label %if.end8.i.i.i292.do.end119_crit_edge, label %for.cond.preheader.i294

if.end8.i.i.i292.do.end119_crit_edge:             ; preds = %if.end8.i.i.i292
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end119

for.cond.preheader.i294:                          ; preds = %if.end8.i.i.i292
  %207 = ptrtoint ptr %port_count to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %port_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %cmp77.not.i = icmp eq i32 %208, 0
  br i1 %cmp77.not.i, label %for.cond.preheader.i294.if.end121_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i294.if.end121_crit_edge:      ; preds = %for.cond.preheader.i294
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end121

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i294
  %wops.i.i.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 10
  %wpriv29.i.i.i.i = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 12
  br label %for.body.i297

for.body.i297:                                    ; preds = %for.inc.i.for.body.i297_crit_edge, %for.body.lr.ph.i
  %i.078.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i.i299, %for.inc.i.for.body.i297_crit_edge ]
  %209 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %call7.i.i, align 8
  %call.i.i295 = call ptr @alloc_etherdev_mqs(i32 noundef 528, i32 noundef 1, i32 noundef 1) #15
  %tobool.not.i.i296 = icmp eq ptr %call.i.i295, null
  br i1 %tobool.not.i.i296, label %for.body.i297.remove_ports.i_crit_edge, label %if.end.i.i302

for.body.i297.remove_ports.i_crit_edge:           ; preds = %for.body.i297
  call void @__sanitizer_cov_trace_pc() #17
  br label %remove_ports.i

if.end.i.i302:                                    ; preds = %for.body.i297
  %dev2.i.i = getelementptr inbounds %struct.pci_dev, ptr %210, i32 0, i32 44
  %parent.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i295, i32 0, i32 133, i32 1
  %211 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %dev2.i.i, ptr %parent.i.i, align 8
  %add.ptr.i.i.i298 = getelementptr i8, ptr %call.i.i295, i32 2304
  %212 = ptrtoint ptr %add.ptr.i.i.i298 to i32
  call void @__asan_store4_noabort(i32 %212)
  store ptr %call.i.i295, ptr %add.ptr.i.i.i298, align 8
  %rocker6.i.i = getelementptr i8, ptr %call.i.i295, i32 2308
  %213 = ptrtoint ptr %rocker6.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store ptr %call7.i.i, ptr %rocker6.i.i, align 4
  %port_number7.i.i = getelementptr i8, ptr %call.i.i295, i32 2316
  %214 = ptrtoint ptr %port_number7.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %i.078.i, ptr %port_number7.i.i, align 4
  %add.i.i299 = add nuw i32 %i.078.i, 1
  %pport.i.i = getelementptr i8, ptr %call.i.i295, i32 2320
  %215 = ptrtoint ptr %pport.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %add.i.i299, ptr %pport.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %mode.i.i.i) #15
  %216 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_store1_noabort(i32 %216)
  store i8 -1, ptr %mode.i.i.i, align 1, !annotation !278
  %call.i.i.i.i300 = call i32 @rocker_cmd_exec(ptr noundef %add.ptr.i.i.i298, i1 noundef zeroext false, ptr noundef nonnull @rocker_cmd_get_port_settings_prep, ptr noundef null, ptr noundef nonnull @rocker_cmd_get_port_settings_mode_proc, ptr noundef nonnull %mode.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i300)
  %tobool.not.i.i.i301 = icmp eq i32 %call.i.i.i.i300, 0
  br i1 %tobool.not.i.i.i301, label %if.end.i.i17.i, label %do.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i302
  call void @__sanitizer_cov_trace_pc() #17
  %217 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %call7.i.i, align 8
  %dev.i.i.i303 = getelementptr inbounds %struct.pci_dev, ptr %218, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i303, ptr noundef nonnull @.str.113) #18
  br label %do.end.i.i

if.end.i.i17.i:                                   ; preds = %if.end.i.i302
  %219 = ptrtoint ptr %wops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %wops.i.i.i, align 8
  %tobool2.not.i.i.i = icmp eq ptr %220, null
  br i1 %tobool2.not.i.i.i, label %if.end15.i.i.i304, label %if.then3.i.i.i

if.then3.i.i.i:                                   ; preds = %if.end.i.i17.i
  %mode5.i.i.i = getelementptr inbounds %struct.rocker_world_ops, ptr %220, i32 0, i32 3
  %221 = ptrtoint ptr %mode5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %221)
  %222 = load i8, ptr %mode5.i.i.i, align 4
  %223 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %223)
  %224 = load i8, ptr %mode.i.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %222, i8 %224)
  %cmp.not.i.i.i = icmp eq i8 %222, %224
  br i1 %cmp.not.i.i.i, label %if.then3.i.i.i.if.end12.i.i_crit_edge, label %do.end11.i.i.i

if.then3.i.i.i.if.end12.i.i_crit_edge:            ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i.i

do.end11.i.i.i:                                   ; preds = %if.then3.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %225 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %call7.i.i, align 8
  %dev13.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %226, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13.i.i.i, ptr noundef nonnull @.str.116) #18
  br label %do.end.i.i

if.end15.i.i.i304:                                ; preds = %if.end.i.i17.i
  %227 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %mode.i.i.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rocker_world_ops, ptr @rocker_ofdpa_ops, i32 0, i32 3) to i32))
  %229 = load i8, ptr getelementptr inbounds (%struct.rocker_world_ops, ptr @rocker_ofdpa_ops, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %229, i8 %228)
  %cmp3.i.i.i.i.i = icmp eq i8 %229, %228
  br i1 %cmp3.i.i.i.i.i, label %if.end.i.i.i18.i, label %do.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.end15.i.i.i304
  call void @__sanitizer_cov_trace_pc() #17
  %230 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %call7.i.i, align 8
  %dev.i.i.i.i305 = getelementptr inbounds %struct.pci_dev, ptr %231, i32 0, i32 44
  %conv.i.i.i.i306 = zext i8 %228 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i.i.i305, ptr noundef nonnull @.str.118, i32 noundef %conv.i.i.i.i306) #18
  br label %do.end.i.i

if.end.i.i.i18.i:                                 ; preds = %if.end15.i.i.i304
  %232 = ptrtoint ptr %wops.i.i.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr @rocker_ofdpa_ops, ptr %wops.i.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rocker_world_ops, ptr @rocker_ofdpa_ops, i32 0, i32 1) to i32))
  %233 = load i32, ptr getelementptr inbounds (%struct.rocker_world_ops, ptr @rocker_ofdpa_ops, i32 0, i32 1), align 4
  %call9.i.i.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %233, i32 noundef 3520) #19
  %234 = ptrtoint ptr %wpriv29.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %call9.i.i.i.i.i.i, ptr %wpriv29.i.i.i.i, align 8
  %tobool4.not.i.i.i.i = icmp eq ptr %call9.i.i.i.i.i.i, null
  br i1 %tobool4.not.i.i.i.i, label %if.end.i.i.i18.i.do.end.i.i_crit_edge, label %if.end6.i.i.i.i

if.end.i.i.i18.i.do.end.i.i_crit_edge:            ; preds = %if.end.i.i.i18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i.i

if.end6.i.i.i.i:                                  ; preds = %if.end.i.i.i18.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.rocker_world_ops, ptr @rocker_ofdpa_ops, i32 0, i32 4) to i32))
  %235 = load ptr, ptr getelementptr inbounds (%struct.rocker_world_ops, ptr @rocker_ofdpa_ops, i32 0, i32 4), align 4
  %tobool7.not.i.i.i.i = icmp eq ptr %235, null
  br i1 %tobool7.not.i.i.i.i, label %if.end6.i.i.i.i.if.end12.i.i_crit_edge, label %if.end9.i.i.i.i

if.end6.i.i.i.i.if.end12.i.i_crit_edge:           ; preds = %if.end6.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i.i

if.end9.i.i.i.i:                                  ; preds = %if.end6.i.i.i.i
  %call11.i.i.i.i = call i32 %235(ptr noundef %call7.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i.i)
  %tobool12.not.i.i.i.i = icmp eq i32 %call11.i.i.i.i, 0
  br i1 %tobool12.not.i.i.i.i, label %if.end9.i.i.i.i.if.end12.i.i_crit_edge, label %if.then13.i.i.i.i

if.end9.i.i.i.i.if.end12.i.i_crit_edge:           ; preds = %if.end9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i.i

if.then13.i.i.i.i:                                ; preds = %if.end9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %236 = ptrtoint ptr %wpriv29.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %wpriv29.i.i.i.i, align 8
  call void @kfree(ptr noundef %237) #15
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then13.i.i.i.i, %if.end.i.i.i18.i.do.end.i.i_crit_edge, %do.end.i.i.i.i, %do.end11.i.i.i, %do.end.i.i.i
  %retval.0.i.ph.i.i = phi i32 [ %call11.i.i.i.i, %if.then13.i.i.i.i ], [ -22, %do.end.i.i.i.i ], [ -22, %do.end11.i.i.i ], [ %call.i.i.i.i300, %do.end.i.i.i ], [ -12, %if.end.i.i.i18.i.do.end.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode.i.i.i) #15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.102) #18
  br label %err_world_check_init.i.i

if.end12.i.i:                                     ; preds = %if.end9.i.i.i.i.if.end12.i.i_crit_edge, %if.end6.i.i.i.i.if.end12.i.i_crit_edge, %if.then3.i.i.i.if.end12.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %mode.i.i.i) #15
  %238 = ptrtoint ptr %rocker6.i.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %rocker6.i.i, align 4
  %240 = ptrtoint ptr %239 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %239, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i.i) #15
  %242 = call ptr @memset(ptr %addr.i.i.i, i32 255, i32 6)
  %call.i.i82.i.i = call i32 @rocker_cmd_exec(ptr noundef %add.ptr.i.i.i298, i1 noundef zeroext false, ptr noundef nonnull @rocker_cmd_get_port_settings_prep, ptr noundef null, ptr noundef nonnull @rocker_cmd_get_port_settings_macaddr_proc, ptr noundef nonnull %addr.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i82.i.i)
  %tobool.not.i83.i.i = icmp eq i32 %call.i.i82.i.i, 0
  br i1 %tobool.not.i83.i.i, label %if.then.i.i19.i, label %do.end.i84.i.i

if.then.i.i19.i:                                  ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %243 = ptrtoint ptr %add.ptr.i.i.i298 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %add.ptr.i.i.i298, align 8
  call void @dev_addr_mod(ptr noundef %244, i32 noundef 0, ptr noundef nonnull %addr.i.i.i, i32 noundef 6) #15
  br label %rocker_port_dev_addr_init.exit.i.i

do.end.i84.i.i:                                   ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev4.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %241, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4.i.i.i, ptr noundef nonnull @.str.120) #18
  %245 = ptrtoint ptr %add.ptr.i.i.i298 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %add.ptr.i.i.i298, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i.i.i.i) #15
  %247 = call ptr @memset(ptr %addr.i.i.i.i, i32 255, i32 6)
  call void @get_random_bytes(ptr noundef nonnull %addr.i.i.i.i, i32 noundef 6) #15
  %248 = ptrtoint ptr %addr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %addr.i.i.i.i, align 1
  %250 = and i8 %249, -4
  %251 = or i8 %250, 2
  store i8 %251, ptr %addr.i.i.i.i, align 1
  call void @dev_addr_mod(ptr noundef %246, i32 noundef 0, ptr noundef nonnull %addr.i.i.i.i, i32 noundef 6) #15
  %addr_assign_type.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %246, i32 0, i32 55
  %252 = ptrtoint ptr %addr_assign_type.i.i.i.i to i32
  call void @__asan_store1_noabort(i32 %252)
  store i8 1, ptr %addr_assign_type.i.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i.i.i) #15
  br label %rocker_port_dev_addr_init.exit.i.i

rocker_port_dev_addr_init.exit.i.i:               ; preds = %do.end.i84.i.i, %if.then.i.i19.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i.i.i) #15
  %netdev_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i295, i32 0, i32 16
  %253 = ptrtoint ptr %netdev_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr @rocker_port_netdev_ops, ptr %netdev_ops.i.i, align 8
  %ethtool_ops.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i295, i32 0, i32 44
  %254 = ptrtoint ptr %ethtool_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr @rocker_port_ethtool_ops, ptr %ethtool_ops.i.i, align 16
  %napi_tx.i.i = getelementptr i8, ptr %call.i.i295, i32 2328
  %state.i.i.i = getelementptr i8, ptr %call.i.i295, i32 2336
  call void @_set_bit(i32 noundef 5, ptr noundef %state.i.i.i) #15
  call void @netif_napi_add(ptr noundef nonnull %call.i.i295, ptr noundef %napi_tx.i.i, ptr noundef nonnull @rocker_port_poll_tx, i32 noundef 64) #15
  %napi_rx.i.i = getelementptr i8, ptr %call.i.i295, i32 2552
  call void @netif_napi_add(ptr noundef nonnull %call.i.i295, ptr noundef %napi_rx.i.i, ptr noundef nonnull @rocker_port_poll_rx, i32 noundef 64) #15
  %255 = ptrtoint ptr %rocker6.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %rocker6.i.i, align 4
  %hw_addr.i.i.i = getelementptr inbounds %struct.rocker, ptr %256, i32 0, i32 1
  %257 = ptrtoint ptr %hw_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %hw_addr.i.i.i, align 4
  %add.ptr.i87.i.i = getelementptr i8, ptr %258, i32 784
  %259 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87.i.i) #15, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !282
  %add.ptr.i.i.i.i308 = getelementptr i8, ptr %258, i32 788
  %260 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i308) #15, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !283
  %261 = zext i32 %260 to i64
  %262 = zext i32 %259 to i64
  %263 = shl nuw i64 %262, 32
  %264 = or i64 %263, %261
  %265 = call i64 @llvm.bswap.i64(i64 %264) #15
  %266 = ptrtoint ptr %pport.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %pport.i.i, align 8
  %shl.i.i.i = shl nuw i32 1, %267
  %conv.i.i.i309 = sext i32 %shl.i.i.i to i64
  %and.i.i.i = and i64 %265, %conv.i.i.i309
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i)
  %tobool.not.i88.i.i = icmp eq i64 %and.i.i.i, 0
  %268 = ptrtoint ptr %add.ptr.i.i.i298 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %add.ptr.i.i.i298, align 8
  br i1 %tobool.not.i88.i.i, label %if.else.i.i.i, label %if.then.i89.i.i

if.then.i89.i.i:                                  ; preds = %rocker_port_dev_addr_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @netif_carrier_on(ptr noundef %269) #15
  br label %rocker_carrier_init.exit.i.i

if.else.i.i.i:                                    ; preds = %rocker_port_dev_addr_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @netif_carrier_off(ptr noundef %269) #15
  br label %rocker_carrier_init.exit.i.i

rocker_carrier_init.exit.i.i:                     ; preds = %if.else.i.i.i, %if.then.i89.i.i
  %features.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i295, i32 0, i32 23
  %270 = ptrtoint ptr %features.i.i to i32
  call void @__asan_load8_noabort(i32 %270)
  %271 = load i64, ptr %features.i.i, align 16
  %or.i.i310 = or i64 %271, 8193
  store i64 %or.i.i310, ptr %features.i.i, align 16
  %min_mtu.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i295, i32 0, i32 30
  %272 = ptrtoint ptr %min_mtu.i.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 68, ptr %min_mtu.i.i, align 8
  %max_mtu.i.i = getelementptr inbounds %struct.net_device, ptr %call.i.i295, i32 0, i32 31
  %273 = ptrtoint ptr %max_mtu.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 9000, ptr %max_mtu.i.i, align 4
  %274 = ptrtoint ptr %rocker6.i.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %rocker6.i.i, align 4
  %wops1.i.i.i = getelementptr inbounds %struct.rocker, ptr %275, i32 0, i32 10
  %276 = ptrtoint ptr %wops1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %wops1.i.i.i, align 8
  %port_priv_size.i.i.i = getelementptr inbounds %struct.rocker_world_ops, ptr %277, i32 0, i32 2
  %278 = ptrtoint ptr %port_priv_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %port_priv_size.i.i.i, align 4
  %call9.i.i.i.i.i315 = call noalias align 128 ptr @__kmalloc(i32 noundef %279, i32 noundef 3520) #19
  %wpriv.i.i.i = getelementptr i8, ptr %call.i.i295, i32 2312
  %280 = ptrtoint ptr %wpriv.i.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store ptr %call9.i.i.i.i.i315, ptr %wpriv.i.i.i, align 8
  %tobool.not.i93.i.i = icmp eq ptr %call9.i.i.i.i.i315, null
  br i1 %tobool.not.i93.i.i, label %do.end18.i.i, label %if.end.i94.i.i

if.end.i94.i.i:                                   ; preds = %rocker_carrier_init.exit.i.i
  %port_pre_init.i.i.i = getelementptr inbounds %struct.rocker_world_ops, ptr %277, i32 0, i32 6
  %281 = ptrtoint ptr %port_pre_init.i.i.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %port_pre_init.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %282, null
  br i1 %tobool3.not.i.i.i, label %if.end.i94.i.i.if.end20.i.i_crit_edge, label %if.end5.i.i.i

if.end.i94.i.i.if.end20.i.i_crit_edge:            ; preds = %if.end.i94.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i94.i.i
  %call7.i.i20.i = call i32 %282(ptr noundef %add.ptr.i.i.i298) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i20.i)
  %tobool8.not.i.i.i = icmp eq i32 %call7.i.i20.i, 0
  br i1 %tobool8.not.i.i.i, label %if.end5.i.i.i.if.end20.i.i_crit_edge, label %if.then9.i.i.i

if.end5.i.i.i.if.end20.i.i_crit_edge:             ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i.i

if.then9.i.i.i:                                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %283 = ptrtoint ptr %wpriv.i.i.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %wpriv.i.i.i, align 8
  call void @kfree(ptr noundef %284) #15
  br label %if.end20.i.i

do.end18.i.i:                                     ; preds = %rocker_carrier_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.105) #18
  br label %err_world_check_init.i.i

if.end20.i.i:                                     ; preds = %if.then9.i.i.i, %if.end5.i.i.i.if.end20.i.i_crit_edge, %if.end.i94.i.i.if.end20.i.i_crit_edge
  %call21.i.i = call i32 @register_netdev(ptr noundef nonnull %call.i.i295) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i.i)
  %tobool22.not.i.i = icmp eq i32 %call21.i.i, 0
  br i1 %tobool22.not.i.i, label %if.end28.i.i, label %do.end26.i.i

do.end26.i.i:                                     ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.108) #18
  br label %err_register_netdev.i.i

if.end28.i.i:                                     ; preds = %if.end20.i.i
  %285 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %ports.i, align 8
  %arrayidx.i.i319 = getelementptr ptr, ptr %286, i32 %i.078.i
  %287 = ptrtoint ptr %arrayidx.i.i319 to i32
  call void @__asan_store4_noabort(i32 %287)
  store ptr %add.ptr.i.i.i298, ptr %arrayidx.i.i319, align 4
  %288 = ptrtoint ptr %rocker6.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %rocker6.i.i, align 4
  %wops1.i97.i.i = getelementptr inbounds %struct.rocker, ptr %289, i32 0, i32 10
  %290 = ptrtoint ptr %wops1.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %wops1.i97.i.i, align 8
  %port_init.i.i.i = getelementptr inbounds %struct.rocker_world_ops, ptr %291, i32 0, i32 7
  %292 = ptrtoint ptr %port_init.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %port_init.i.i.i, align 4
  %tobool.not.i98.i.i = icmp eq ptr %293, null
  br i1 %tobool.not.i98.i.i, label %if.end28.i.i.for.inc.i_crit_edge, label %rocker_world_port_init.exit.i.i

if.end28.i.i.for.inc.i_crit_edge:                 ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

rocker_world_port_init.exit.i.i:                  ; preds = %if.end28.i.i
  %call.i.i.i = call i32 %293(ptr noundef %add.ptr.i.i.i298) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool30.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool30.not.i.i, label %rocker_world_port_init.exit.i.i.for.inc.i_crit_edge, label %do.end34.i.i

rocker_world_port_init.exit.i.i.for.inc.i_crit_edge: ; preds = %rocker_world_port_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

do.end34.i.i:                                     ; preds = %rocker_world_port_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2.i.i, ptr noundef nonnull @.str.111) #18
  %294 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %ports.i, align 8
  %arrayidx38.i.i = getelementptr ptr, ptr %295, i32 %i.078.i
  %296 = ptrtoint ptr %arrayidx38.i.i to i32
  call void @__asan_store4_noabort(i32 %296)
  store ptr null, ptr %arrayidx38.i.i, align 4
  call void @unregister_netdev(ptr noundef nonnull %call.i.i295) #15
  br label %err_register_netdev.i.i

err_register_netdev.i.i:                          ; preds = %do.end34.i.i, %do.end26.i.i
  %err.0.i.i = phi i32 [ %call21.i.i, %do.end26.i.i ], [ %call.i.i.i, %do.end34.i.i ]
  %297 = ptrtoint ptr %rocker6.i.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %rocker6.i.i, align 4
  %wops1.i102.i.i = getelementptr inbounds %struct.rocker, ptr %298, i32 0, i32 10
  %299 = ptrtoint ptr %wops1.i102.i.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %wops1.i102.i.i, align 8
  %port_post_fini.i.i.i = getelementptr inbounds %struct.rocker_world_ops, ptr %300, i32 0, i32 9
  %301 = ptrtoint ptr %port_post_fini.i.i.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %port_post_fini.i.i.i, align 4
  %tobool.not.i103.i.i = icmp eq ptr %302, null
  br i1 %tobool.not.i103.i.i, label %err_register_netdev.i.i.err_world_check_init.i.i_crit_edge, label %if.end.i105.i.i

err_register_netdev.i.i.err_world_check_init.i.i_crit_edge: ; preds = %err_register_netdev.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_world_check_init.i.i

if.end.i105.i.i:                                  ; preds = %err_register_netdev.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void %302(ptr noundef %add.ptr.i.i.i298) #15
  %wpriv.i104.i.i = getelementptr i8, ptr %call.i.i295, i32 2312
  %303 = ptrtoint ptr %wpriv.i104.i.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %wpriv.i104.i.i, align 8
  call void @kfree(ptr noundef %304) #15
  br label %err_world_check_init.i.i

err_world_check_init.i.i:                         ; preds = %if.end.i105.i.i, %err_register_netdev.i.i.err_world_check_init.i.i_crit_edge, %do.end18.i.i, %do.end.i.i
  %err.1.i.i = phi i32 [ %retval.0.i.ph.i.i, %do.end.i.i ], [ -12, %do.end18.i.i ], [ %err.0.i.i, %err_register_netdev.i.i.err_world_check_init.i.i_crit_edge ], [ %err.0.i.i, %if.end.i105.i.i ]
  call void @free_netdev(ptr noundef nonnull %call.i.i295) #15
  br label %remove_ports.i

for.inc.i:                                        ; preds = %rocker_world_port_init.exit.i.i.for.inc.i_crit_edge, %if.end28.i.i.for.inc.i_crit_edge
  %305 = ptrtoint ptr %port_count to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %port_count, align 4
  %cmp.i320 = icmp ult i32 %add.i.i299, %306
  br i1 %cmp.i320, label %for.inc.i.for.body.i297_crit_edge, label %for.inc.i.if.end121_crit_edge

for.inc.i.if.end121_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end121

for.inc.i.for.body.i297_crit_edge:                ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i297

remove_ports.i:                                   ; preds = %err_world_check_init.i.i, %for.body.i297.remove_ports.i_crit_edge
  %retval.0.i.i321 = phi i32 [ %err.1.i.i, %err_world_check_init.i.i ], [ -12, %for.body.i297.remove_ports.i_crit_edge ]
  call fastcc void @rocker_remove_ports(ptr noundef %call7.i.i) #15
  br label %do.end119

do.end119:                                        ; preds = %remove_ports.i, %if.end8.i.i.i292.do.end119_crit_edge
  %retval.0.i322 = phi i32 [ %retval.0.i.i321, %remove_ports.i ], [ -12, %if.end8.i.i.i292.do.end119_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.48) #18
  br label %err_probe_ports

if.end121:                                        ; preds = %for.inc.i.if.end121_crit_edge, %for.cond.preheader.i294.if.end121_crit_edge
  %fib_nb = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 9
  %307 = ptrtoint ptr %fib_nb to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr @rocker_router_fib_event, ptr %fib_nb, align 4
  %call123 = call i32 @register_fib_notifier(ptr noundef nonnull @init_net, ptr noundef %fib_nb, ptr noundef null, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end126, label %if.end121.err_register_fib_notifier_crit_edge

if.end121.err_register_fib_notifier_crit_edge:    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_register_fib_notifier

if.end126:                                        ; preds = %if.end121
  %call127 = call i32 @register_switchdev_notifier(ptr noundef nonnull @rocker_switchdev_notifier) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end134, label %do.end132

do.end132:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.51) #18
  br label %err_register_switchdev_notifier

if.end134:                                        ; preds = %if.end126
  %call135 = call i32 @register_switchdev_blocking_notifier(ptr noundef nonnull @rocker_switchdev_blocking_notifier) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %if.end142, label %do.end140

do.end140:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev13, ptr noundef nonnull @.str.54) #18
  %call153 = call i32 @unregister_switchdev_notifier(ptr noundef nonnull @rocker_switchdev_notifier) #15
  br label %err_register_switchdev_notifier

if.end142:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #17
  %308 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %hw_addr, align 4
  %add.ptr144 = getelementptr i8, ptr %309, i32 800
  %310 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr144) #15, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !282
  %add.ptr.i323 = getelementptr i8, ptr %309, i32 804
  %311 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i323) #15, !srcloc !281
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !283
  %312 = zext i32 %311 to i64
  %313 = zext i32 %310 to i64
  %314 = shl nuw i64 %313, 32
  %315 = or i64 %314, %312
  %316 = call i64 @llvm.bswap.i64(i64 %315) #15
  %hw = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 5
  %317 = ptrtoint ptr %hw to i32
  call void @__asan_store8_noabort(i32 %317)
  store i64 %316, ptr %hw, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev13, ptr noundef nonnull @.str.57, i32 noundef 8, ptr noundef %hw) #18
  br label %cleanup

err_register_switchdev_notifier:                  ; preds = %do.end140, %do.end132
  %err.0 = phi i32 [ %call127, %do.end132 ], [ %call135, %do.end140 ]
  %call155 = call i32 @unregister_fib_notifier(ptr noundef nonnull @init_net, ptr noundef %fib_nb) #15
  br label %err_register_fib_notifier

err_register_fib_notifier:                        ; preds = %err_register_switchdev_notifier, %if.end121.err_register_fib_notifier_crit_edge
  %err.1 = phi i32 [ %call123, %if.end121.err_register_fib_notifier_crit_edge ], [ %err.0, %err_register_switchdev_notifier ]
  call fastcc void @rocker_remove_ports(ptr noundef %call7.i.i)
  br label %err_probe_ports

err_probe_ports:                                  ; preds = %err_register_fib_notifier, %do.end119
  %err.2 = phi i32 [ %retval.0.i322, %do.end119 ], [ %err.1, %err_register_fib_notifier ]
  %318 = ptrtoint ptr %rocker_owq to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %rocker_owq, align 4
  call void @destroy_workqueue(ptr noundef %319) #15
  br label %err_alloc_ordered_workqueue

err_alloc_ordered_workqueue:                      ; preds = %err_probe_ports, %if.end108.err_alloc_ordered_workqueue_crit_edge
  %err.3 = phi i32 [ %err.2, %err_probe_ports ], [ -12, %if.end108.err_alloc_ordered_workqueue_crit_edge ]
  %320 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %msix_entries.i.i, align 8
  %arrayidx.i325 = getelementptr %struct.msix_entry, ptr %321, i32 1
  %322 = ptrtoint ptr %arrayidx.i325 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %arrayidx.i325, align 4
  %call158 = call ptr @free_irq(i32 noundef %323, ptr noundef %call7.i.i) #15
  br label %err_request_event_irq

err_request_event_irq:                            ; preds = %err_alloc_ordered_workqueue, %do.end106
  %err.4 = phi i32 [ %call.i264, %do.end106 ], [ %err.3, %err_alloc_ordered_workqueue ]
  %324 = ptrtoint ptr %msix_entries.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %msix_entries.i.i, align 8
  %326 = ptrtoint ptr %325 to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load i32, ptr %325, align 4
  %call160 = call ptr @free_irq(i32 noundef %327, ptr noundef %call7.i.i) #15
  br label %err_request_cmd_irq

err_request_cmd_irq:                              ; preds = %err_request_event_irq, %do.end97
  %err.5 = phi i32 [ %call.i262, %do.end97 ], [ %err.4, %err_request_event_irq ]
  call fastcc void @rocker_dma_rings_fini(ptr noundef %call7.i.i)
  br label %err_basic_hw_test

err_basic_hw_test:                                ; preds = %err_request_cmd_irq, %rocker_dma_rings_init.exit, %rocker_dma_rings_init.exit.thread338, %do.end79
  %err.6 = phi i32 [ %retval.0.i245335, %do.end79 ], [ %err.2.i, %rocker_dma_rings_init.exit ], [ %err.5, %err_request_cmd_irq ], [ %call.i246, %rocker_dma_rings_init.exit.thread338 ]
  %328 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %call7.i.i, align 8
  call void @pci_disable_msix(ptr noundef %329) #15
  %msix_entries.i327 = getelementptr inbounds %struct.rocker, ptr %call7.i.i, i32 0, i32 2
  %330 = ptrtoint ptr %msix_entries.i327 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %msix_entries.i327, align 8
  call void @kfree(ptr noundef %331) #15
  br label %err_msix_init

err_msix_init:                                    ; preds = %err_basic_hw_test, %do.end71
  %err.7 = phi i32 [ %retval.0.i.ph, %do.end71 ], [ %err.6, %err_basic_hw_test ]
  %332 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %hw_addr, align 4
  call void @iounmap(ptr noundef %333) #15
  br label %err_pci_set_dma_mask

err_pci_set_dma_mask:                             ; preds = %err_msix_init, %do.end59, %do.end31, %do.end19
  %err.8 = phi i32 [ %call.i, %do.end19 ], [ -22, %do.end31 ], [ %err.7, %err_msix_init ], [ -5, %do.end59 ]
  call void @pci_release_regions(ptr noundef %pdev) #15
  br label %err_pci_request_regions

err_pci_request_regions:                          ; preds = %err_pci_set_dma_mask, %do.end10
  %err.9 = phi i32 [ %call5, %do.end10 ], [ %err.8, %err_pci_set_dma_mask ]
  call void @pci_disable_device(ptr noundef %pdev) #15
  br label %err_pci_enable_device

err_pci_enable_device:                            ; preds = %err_pci_request_regions, %do.end
  %err.10 = phi i32 [ %call1, %do.end ], [ %err.9, %err_pci_request_regions ]
  call void @kfree(ptr noundef %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %err_pci_enable_device, %if.end142, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.10, %err_pci_enable_device ], [ 0, %if.end142 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rocker_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @unregister_switchdev_blocking_notifier(ptr noundef nonnull @rocker_switchdev_blocking_notifier) #15
  %call2 = tail call i32 @unregister_switchdev_notifier(ptr noundef nonnull @rocker_switchdev_notifier) #15
  %fib_nb = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 9
  %call3 = tail call i32 @unregister_fib_notifier(ptr noundef nonnull @init_net, ptr noundef %fib_nb) #15
  tail call fastcc void @rocker_remove_ports(ptr noundef %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !297
  tail call void @arm_heavy_mb() #15
  %hw_addr = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_addr, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 768
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #15, !srcloc !276
  %rocker_owq = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %rocker_owq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rocker_owq, align 4
  tail call void @destroy_workqueue(ptr noundef %5) #15
  %msix_entries.i = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msix_entries.i, align 8
  %arrayidx.i = getelementptr %struct.msix_entry, ptr %7, i32 1
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %call5 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %1) #15
  %10 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %msix_entries.i, align 8
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  %call7 = tail call ptr @free_irq(i32 noundef %13, ptr noundef %1) #15
  tail call fastcc void @rocker_dma_rings_fini(ptr noundef %1)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  tail call void @pci_disable_msix(ptr noundef %15) #15
  %16 = ptrtoint ptr %msix_entries.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %msix_entries.i, align 8
  tail call void @kfree(ptr noundef %17) #15
  %18 = ptrtoint ptr %hw_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr, align 4
  tail call void @iounmap(ptr noundef %19) #15
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  tail call void @pci_release_regions(ptr noundef %21) #15
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 8
  tail call void @pci_disable_device(ptr noundef %23) #15
  tail call void @kfree(ptr noundef %1) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_cmd_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_ring_lock = getelementptr inbounds %struct.rocker, ptr %dev_id, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %cmd_ring_lock) #15
  %desc_info1.i = getelementptr inbounds %struct.rocker, ptr %dev_id, i32 0, i32 7, i32 5
  %cmd_ring = getelementptr inbounds %struct.rocker, ptr %dev_id, i32 0, i32 7
  %tail.i = getelementptr inbounds %struct.rocker, ptr %dev_id, i32 0, i32 7, i32 2
  %head.i = getelementptr inbounds %struct.rocker, ptr %dev_id, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tail.i, align 4
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i17 = icmp eq i32 %1, %3
  br i1 %cmp.i17, label %while.end.thread, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

while.end.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock(ptr noundef %cmd_ring_lock) #15
  br label %rocker_dma_ring_credits_set.exit

if.end.i:                                         ; preds = %if.end.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %4 = phi i32 [ %31, %if.end.if.end.i_crit_edge ], [ %1, %entry.if.end.i_crit_edge ]
  %credits.018 = phi i32 [ %inc, %if.end.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  %5 = ptrtoint ptr %desc_info1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc_info1.i, align 4
  %desc.i.i = getelementptr %struct.rocker_desc_info, ptr %6, i32 %4, i32 3
  %7 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc.i.i, align 4
  %comp_err1.i.i = getelementptr inbounds %struct.rocker_desc, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %comp_err1.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %comp_err1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool.i.i = icmp slt i16 %10, 0
  br i1 %tobool.i.i, label %rocker_desc_tail_get.exit, label %if.end.i.while.end_crit_edge

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

rocker_desc_tail_get.exit:                        ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.rocker_desc_info, ptr %6, i32 %4
  %11 = ptrtoint ptr %cmd_ring to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cmd_ring, align 4
  %inc.i.i = add i32 %4, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %12)
  %cmp.i.i = icmp eq i32 %inc.i.i, %12
  %spec.select.i.i = select i1 %cmp.i.i, i32 0, i32 %inc.i.i
  %13 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %spec.select.i.i, ptr %tail.i, align 4
  %14 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc.i.i, align 4
  %tlv_size.i = getelementptr inbounds %struct.rocker_desc, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %tlv_size.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %tlv_size.i, align 2
  %conv.i = zext i16 %17 to i32
  %tlv_size8.i = getelementptr %struct.rocker_desc_info, ptr %6, i32 %4, i32 2
  %18 = ptrtoint ptr %tlv_size8.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv.i, ptr %tlv_size8.i, align 4
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %rocker_desc_tail_get.exit.while.end_crit_edge, label %while.body

rocker_desc_tail_get.exit.while.end_crit_edge:    ; preds = %rocker_desc_tail_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %rocker_desc_tail_get.exit
  %19 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc.i.i, align 4
  %cookie.i = getelementptr inbounds %struct.rocker_desc, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %cookie.i, align 8
  %conv.i12 = trunc i64 %22 to i32
  %23 = inttoptr i32 %conv.i12 to ptr
  %nowait = getelementptr inbounds %struct.rocker_wait, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %nowait to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nowait, align 1, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool2.not = icmp eq i8 %25, 0
  br i1 %tobool2.not, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %comp_err.i = getelementptr inbounds %struct.rocker_desc, ptr %20, i32 0, i32 5
  %26 = ptrtoint ptr %comp_err.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %comp_err.i, align 2
  %28 = and i16 %27, 32767
  store i16 %28, ptr %comp_err.i, align 2
  br label %if.end

if.else:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  %done.i = getelementptr inbounds %struct.rocker_wait, ptr %23, i32 0, i32 1
  %29 = ptrtoint ptr %done.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %done.i, align 4
  tail call void @__wake_up(ptr noundef %23, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %inc = add i32 %credits.018, 1
  %30 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tail.i, align 4
  %32 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %head.i, align 4
  %cmp.i = icmp eq i32 %31, %33
  br i1 %cmp.i, label %if.end.while.end_crit_edge, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %rocker_desc_tail_get.exit.while.end_crit_edge, %if.end.i.while.end_crit_edge
  %credits.0.lcssa = phi i32 [ %credits.018, %rocker_desc_tail_get.exit.while.end_crit_edge ], [ %inc, %if.end.while.end_crit_edge ], [ %credits.018, %if.end.i.while.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %cmd_ring_lock) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %credits.0.lcssa)
  %tobool.not.i = icmp eq i32 %credits.0.lcssa, 0
  br i1 %tobool.not.i, label %while.end.rocker_dma_ring_credits_set.exit_crit_edge, label %do.body.i

while.end.rocker_dma_ring_credits_set.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_ring_credits_set.exit

do.body.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !298
  tail call void @arm_heavy_mb() #15
  %34 = tail call i32 @llvm.bswap.i32(i32 %credits.0.lcssa) #15
  %hw_addr.i = getelementptr inbounds %struct.rocker, ptr %dev_id, i32 0, i32 1
  %35 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_addr.i, align 4
  %type.i = getelementptr inbounds %struct.rocker, ptr %dev_id, i32 0, i32 7, i32 6
  %37 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %type.i, align 4
  %mul.i = shl i32 %38, 5
  %add.i = add i32 %mul.i, 4120
  %add.ptr.i = getelementptr i8, ptr %36, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %34) #15, !srcloc !276
  br label %rocker_dma_ring_credits_set.exit

rocker_dma_ring_credits_set.exit:                 ; preds = %do.body.i, %while.end.rocker_dma_ring_credits_set.exit_crit_edge, %while.end.thread
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_event_irq_handler(i32 noundef %irq, ptr nocapture noundef %dev_id) #0 align 64 {
entry:
  %attrs.i12.i = alloca [4 x ptr], align 4
  %attrs.i.i = alloca [3 x ptr], align 4
  %attrs.i = alloca [3 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %event_ring = getelementptr inbounds %struct.rocker, ptr %dev_id, i32 0, i32 8
  %tail.i = getelementptr inbounds %struct.rocker, ptr %dev_id, i32 0, i32 8, i32 2
  %head.i = getelementptr inbounds %struct.rocker, ptr %dev_id, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tail.i, align 4
  %2 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.i55 = icmp eq i32 %1, %3
  br i1 %cmp.i55, label %entry.rocker_dma_ring_credits_set.exit_crit_edge, label %if.end.i.lr.ph

entry.rocker_dma_ring_credits_set.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_ring_credits_set.exit

if.end.i.lr.ph:                                   ; preds = %entry
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_id, align 8
  %desc_info1.i = getelementptr inbounds %struct.rocker, ptr %dev_id, i32 0, i32 8, i32 5
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %6 = getelementptr inbounds [3 x ptr], ptr %attrs.i, i32 0, i32 1
  %7 = getelementptr inbounds [3 x ptr], ptr %attrs.i, i32 0, i32 2
  %8 = getelementptr inbounds [4 x ptr], ptr %attrs.i12.i, i32 0, i32 1
  %9 = getelementptr inbounds [4 x ptr], ptr %attrs.i12.i, i32 0, i32 3
  %10 = getelementptr inbounds [4 x ptr], ptr %attrs.i12.i, i32 0, i32 2
  %port_count.i22.i = getelementptr inbounds %struct.rocker, ptr %dev_id, i32 0, i32 3
  %ports.i25.i = getelementptr inbounds %struct.rocker, ptr %dev_id, i32 0, i32 4
  %11 = getelementptr inbounds [3 x ptr], ptr %attrs.i.i, i32 0, i32 1
  %12 = getelementptr inbounds [3 x ptr], ptr %attrs.i.i, i32 0, i32 2
  %hw_addr.i = getelementptr inbounds %struct.rocker, ptr %dev_id, i32 0, i32 1
  %type.i = getelementptr inbounds %struct.rocker, ptr %dev_id, i32 0, i32 8, i32 6
  br label %if.end.i

if.end.i:                                         ; preds = %rocker_desc_head_set.exit.if.end.i_crit_edge, %if.end.i.lr.ph
  %13 = phi i32 [ %1, %if.end.i.lr.ph ], [ %126, %rocker_desc_head_set.exit.if.end.i_crit_edge ]
  %credits.056 = phi i32 [ 0, %if.end.i.lr.ph ], [ %inc, %rocker_desc_head_set.exit.if.end.i_crit_edge ]
  %14 = ptrtoint ptr %desc_info1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc_info1.i, align 4
  %desc.i.i = getelementptr %struct.rocker_desc_info, ptr %15, i32 %13, i32 3
  %16 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc.i.i, align 4
  %comp_err1.i.i = getelementptr inbounds %struct.rocker_desc, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %comp_err1.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %comp_err1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool.i.i = icmp slt i16 %19, 0
  br i1 %tobool.i.i, label %rocker_desc_tail_get.exit, label %if.end.i.while.end_crit_edge

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

rocker_desc_tail_get.exit:                        ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.rocker_desc_info, ptr %15, i32 %13
  %20 = ptrtoint ptr %event_ring to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %event_ring, align 4
  %inc.i.i = add i32 %13, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %21)
  %cmp.i.i = icmp eq i32 %inc.i.i, %21
  %spec.select.i.i = select i1 %cmp.i.i, i32 0, i32 %inc.i.i
  %22 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select.i.i, ptr %tail.i, align 4
  %23 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc.i.i, align 4
  %tlv_size.i = getelementptr inbounds %struct.rocker_desc, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %tlv_size.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %tlv_size.i, align 2
  %conv.i = zext i16 %26 to i32
  %tlv_size8.i = getelementptr %struct.rocker_desc_info, ptr %15, i32 %13, i32 2
  %27 = ptrtoint ptr %tlv_size8.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv.i, ptr %tlv_size8.i, align 4
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %rocker_desc_tail_get.exit.while.end_crit_edge, label %while.body

rocker_desc_tail_get.exit.while.end_crit_edge:    ; preds = %rocker_desc_tail_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %rocker_desc_tail_get.exit
  %28 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc.i.i, align 4
  %comp_err.i = getelementptr inbounds %struct.rocker_desc, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %comp_err.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %comp_err.i, align 2
  %32 = and i16 %31, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %32)
  %cond.i = icmp eq i16 %32, 0
  br i1 %cond.i, label %if.else, label %do.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.95, i32 noundef -22) #18
  br label %if.end11

if.else:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %attrs.i) #15
  %33 = ptrtoint ptr %attrs.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -1 to ptr), ptr %attrs.i, align 4, !annotation !278
  %34 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !278
  %35 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4, !annotation !278
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i, align 4
  %tlv_size.i.i = getelementptr inbounds %struct.rocker_desc, ptr %29, i32 0, i32 3
  %38 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %tlv_size.i.i, align 2
  %conv.i.i = zext i16 %39 to i32
  call void @rocker_tlv_parse(ptr noundef nonnull %attrs.i, i32 noundef 2, ptr noundef %37, i32 noundef %conv.i.i) #15
  %40 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %6, align 4
  %tobool.not.i = icmp eq ptr %41, null
  br i1 %tobool.not.i, label %if.else.rocker_event_process.exit.thread_crit_edge, label %lor.lhs.false.i

if.else.rocker_event_process.exit.thread_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_event_process.exit.thread

lor.lhs.false.i:                                  ; preds = %if.else
  %42 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %7, align 4
  %tobool2.not.i = icmp eq ptr %43, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.rocker_event_process.exit.thread_crit_edge, label %if.end.i29

lor.lhs.false.i.rocker_event_process.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_event_process.exit.thread

if.end.i29:                                       ; preds = %lor.lhs.false.i
  %add.ptr.i.i.i = getelementptr i8, ptr %41, i32 8
  %44 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %add.ptr.i.i.i, align 2
  %46 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i16 %45, label %if.end.i29.rocker_event_process.exit.thread_crit_edge [
    i16 1, label %sw.bb.i
    i16 2, label %sw.bb6.i
  ]

if.end.i29.rocker_event_process.exit.thread_crit_edge: ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_event_process.exit.thread

sw.bb.i:                                          ; preds = %if.end.i29
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %attrs.i.i) #15
  %47 = ptrtoint ptr %attrs.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 -1 to ptr), ptr %attrs.i.i, align 4, !annotation !278
  %48 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 -1 to ptr), ptr %11, align 4, !annotation !278
  %49 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -1 to ptr), ptr %12, align 4, !annotation !278
  %add.ptr.i.i.i.i = getelementptr i8, ptr %43, i32 8
  %len.i.i.i.i = getelementptr inbounds %struct.rocker_tlv, ptr %43, i32 0, i32 1
  %50 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %len.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %51 to i32
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -8
  call void @rocker_tlv_parse(ptr noundef nonnull %attrs.i.i, i32 noundef 2, ptr noundef %add.ptr.i.i.i.i, i32 noundef %sub.i.i.i.i) #15
  %52 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %11, align 4
  %tobool.not.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i, label %sw.bb.i.rocker_event_link_change.exit.i_crit_edge, label %lor.lhs.false.i.i

sw.bb.i.rocker_event_link_change.exit.i_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_event_link_change.exit.i

lor.lhs.false.i.i:                                ; preds = %sw.bb.i
  %54 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %12, align 4
  %tobool2.not.i.i = icmp eq ptr %55, null
  br i1 %tobool2.not.i.i, label %lor.lhs.false.i.i.rocker_event_link_change.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.rocker_event_link_change.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_event_link_change.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %add.ptr.i.i28.i.i = getelementptr i8, ptr %53, i32 8
  %56 = ptrtoint ptr %add.ptr.i.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i.i28.i.i, align 4
  %sub.i.i = add i32 %57, -1
  %add.ptr.i.i29.i.i = getelementptr i8, ptr %55, i32 8
  %58 = ptrtoint ptr %add.ptr.i.i29.i.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %add.ptr.i.i29.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool6.i.i = icmp ne i8 %59, 0
  %60 = ptrtoint ptr %port_count.i22.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port_count.i22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i, i32 %61)
  %cmp.not.i.i = icmp ult i32 %sub.i.i, %61
  br i1 %cmp.not.i.i, label %if.end8.i.i, label %if.end.i.i.rocker_event_link_change.exit.i_crit_edge

if.end.i.i.rocker_event_link_change.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_event_link_change.exit.i

if.end8.i.i:                                      ; preds = %if.end.i.i
  %62 = ptrtoint ptr %ports.i25.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ports.i25.i, align 8
  %arrayidx9.i.i = getelementptr ptr, ptr %63, i32 %sub.i.i
  %64 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx9.i.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %65, align 8
  %state.i.i.i = getelementptr inbounds %struct.net_device, ptr %67, i32 0, i32 6
  %68 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile i32, ptr %state.i.i.i, align 4
  %70 = and i32 %69, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i.i.i = icmp eq i32 %70, 0
  %71 = xor i1 %tobool6.i.i, %tobool.not.i.i.i
  br i1 %71, label %if.then15.i.i, label %if.end8.i.i.rocker_event_link_change.exit.i_crit_edge

if.end8.i.i.rocker_event_link_change.exit.i_crit_edge: ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_event_link_change.exit.i

if.then15.i.i:                                    ; preds = %if.end8.i.i
  br i1 %tobool6.i.i, label %if.then17.i.i, label %if.else.i.i

if.then17.i.i:                                    ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @netif_carrier_on(ptr noundef %67) #15
  br label %cleanup.sink.split.i.i

if.else.i.i:                                      ; preds = %if.then15.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @netif_carrier_off(ptr noundef %67) #15
  br label %cleanup.sink.split.i.i

cleanup.sink.split.i.i:                           ; preds = %if.else.i.i, %if.then17.i.i
  %.str.101.sink.i.i = phi ptr [ @.str.101, %if.else.i.i ], [ @.str.100, %if.then17.i.i ]
  %72 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %65, align 8
  call void (ptr, ptr, ...) @netdev_info(ptr noundef %73, ptr noundef nonnull %.str.101.sink.i.i) #18
  br label %rocker_event_link_change.exit.i

rocker_event_link_change.exit.i:                  ; preds = %cleanup.sink.split.i.i, %if.end8.i.i.rocker_event_link_change.exit.i_crit_edge, %if.end.i.i.rocker_event_link_change.exit.i_crit_edge, %lor.lhs.false.i.i.rocker_event_link_change.exit.i_crit_edge, %sw.bb.i.rocker_event_link_change.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ -5, %lor.lhs.false.i.i.rocker_event_link_change.exit.i_crit_edge ], [ -5, %sw.bb.i.rocker_event_link_change.exit.i_crit_edge ], [ -22, %if.end.i.i.rocker_event_link_change.exit.i_crit_edge ], [ 0, %if.end8.i.i.rocker_event_link_change.exit.i_crit_edge ], [ 0, %cleanup.sink.split.i.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %attrs.i.i) #15
  br label %rocker_event_process.exit

sw.bb6.i:                                         ; preds = %if.end.i29
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %attrs.i12.i) #15
  %add.ptr.i.i.i13.i = getelementptr i8, ptr %43, i32 8
  %len.i.i.i14.i = getelementptr inbounds %struct.rocker_tlv, ptr %43, i32 0, i32 1
  %74 = call ptr @memset(ptr %attrs.i12.i, i32 255, i32 16)
  %75 = ptrtoint ptr %len.i.i.i14.i to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %len.i.i.i14.i, align 4
  %conv.i.i.i15.i = zext i16 %76 to i32
  %sub.i.i.i16.i = add nsw i32 %conv.i.i.i15.i, -8
  call void @rocker_tlv_parse(ptr noundef nonnull %attrs.i12.i, i32 noundef 3, ptr noundef %add.ptr.i.i.i13.i, i32 noundef %sub.i.i.i16.i) #15
  %77 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %8, align 4
  %tobool.not.i17.i = icmp eq ptr %78, null
  br i1 %tobool.not.i17.i, label %sw.bb6.i.rocker_event_mac_vlan_seen.exit.i_crit_edge, label %lor.lhs.false.i19.i

sw.bb6.i.rocker_event_mac_vlan_seen.exit.i_crit_edge: ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_event_mac_vlan_seen.exit.i

lor.lhs.false.i19.i:                              ; preds = %sw.bb6.i
  %79 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %10, align 4
  %tobool2.not.i18.i = icmp eq ptr %80, null
  br i1 %tobool2.not.i18.i, label %lor.lhs.false.i19.i.rocker_event_mac_vlan_seen.exit.i_crit_edge, label %lor.lhs.false3.i.i

lor.lhs.false.i19.i.rocker_event_mac_vlan_seen.exit.i_crit_edge: ; preds = %lor.lhs.false.i19.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_event_mac_vlan_seen.exit.i

lor.lhs.false3.i.i:                               ; preds = %lor.lhs.false.i19.i
  %81 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %9, align 4
  %tobool5.not.i.i = icmp eq ptr %82, null
  br i1 %tobool5.not.i.i, label %lor.lhs.false3.i.i.rocker_event_mac_vlan_seen.exit.i_crit_edge, label %if.end.i24.i

lor.lhs.false3.i.i.rocker_event_mac_vlan_seen.exit.i_crit_edge: ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_event_mac_vlan_seen.exit.i

if.end.i24.i:                                     ; preds = %lor.lhs.false3.i.i
  %add.ptr.i.i21.i.i = getelementptr i8, ptr %78, i32 8
  %83 = ptrtoint ptr %add.ptr.i.i21.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i.i21.i.i, align 4
  %sub.i20.i = add i32 %84, -1
  %add.ptr.i.i21.i = getelementptr i8, ptr %80, i32 8
  %add.ptr.i.i22.i.i = getelementptr i8, ptr %82, i32 8
  %85 = ptrtoint ptr %add.ptr.i.i22.i.i to i32
  call void @__asan_load2_noabort(i32 %85)
  %86 = load i16, ptr %add.ptr.i.i22.i.i, align 2
  %87 = ptrtoint ptr %port_count.i22.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %port_count.i22.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i20.i, i32 %88)
  %cmp.not.i23.i = icmp ult i32 %sub.i20.i, %88
  br i1 %cmp.not.i23.i, label %if.end12.i.i, label %if.end.i24.i.rocker_event_mac_vlan_seen.exit.i_crit_edge

if.end.i24.i.rocker_event_mac_vlan_seen.exit.i_crit_edge: ; preds = %if.end.i24.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_event_mac_vlan_seen.exit.i

if.end12.i.i:                                     ; preds = %if.end.i24.i
  %89 = ptrtoint ptr %ports.i25.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ports.i25.i, align 8
  %arrayidx13.i.i = getelementptr ptr, ptr %90, i32 %sub.i20.i
  %91 = ptrtoint ptr %arrayidx13.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx13.i.i, align 4
  %rocker.i.i.i = getelementptr inbounds %struct.rocker_port, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %rocker.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %rocker.i.i.i, align 4
  %wops1.i.i.i = getelementptr inbounds %struct.rocker, ptr %94, i32 0, i32 10
  %95 = ptrtoint ptr %wops1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %wops1.i.i.i, align 8
  %port_ev_mac_vlan_seen.i.i.i = getelementptr inbounds %struct.rocker_world_ops, ptr %96, i32 0, i32 24
  %97 = ptrtoint ptr %port_ev_mac_vlan_seen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %port_ev_mac_vlan_seen.i.i.i, align 4
  %tobool.not.i.i26.i = icmp eq ptr %98, null
  br i1 %tobool.not.i.i26.i, label %if.end12.i.i.rocker_event_mac_vlan_seen.exit.i_crit_edge, label %if.end.i.i.i

if.end12.i.i.rocker_event_mac_vlan_seen.exit.i_crit_edge: ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_event_mac_vlan_seen.exit.i

if.end.i.i.i:                                     ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = call i32 %98(ptr noundef %92, ptr noundef %add.ptr.i.i21.i, i16 noundef zeroext %86) #15
  br label %rocker_event_mac_vlan_seen.exit.i

rocker_event_mac_vlan_seen.exit.i:                ; preds = %if.end.i.i.i, %if.end12.i.i.rocker_event_mac_vlan_seen.exit.i_crit_edge, %if.end.i24.i.rocker_event_mac_vlan_seen.exit.i_crit_edge, %lor.lhs.false3.i.i.rocker_event_mac_vlan_seen.exit.i_crit_edge, %lor.lhs.false.i19.i.rocker_event_mac_vlan_seen.exit.i_crit_edge, %sw.bb6.i.rocker_event_mac_vlan_seen.exit.i_crit_edge
  %retval.0.i27.i = phi i32 [ -5, %lor.lhs.false3.i.i.rocker_event_mac_vlan_seen.exit.i_crit_edge ], [ -5, %lor.lhs.false.i19.i.rocker_event_mac_vlan_seen.exit.i_crit_edge ], [ -5, %sw.bb6.i.rocker_event_mac_vlan_seen.exit.i_crit_edge ], [ -22, %if.end.i24.i.rocker_event_mac_vlan_seen.exit.i_crit_edge ], [ %call.i.i.i, %if.end.i.i.i ], [ -95, %if.end12.i.i.rocker_event_mac_vlan_seen.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %attrs.i12.i) #15
  br label %rocker_event_process.exit

rocker_event_process.exit.thread:                 ; preds = %if.end.i29.rocker_event_process.exit.thread_crit_edge, %lor.lhs.false.i.rocker_event_process.exit.thread_crit_edge, %if.else.rocker_event_process.exit.thread_crit_edge
  %retval.0.i30.ph = phi i32 [ -95, %if.end.i29.rocker_event_process.exit.thread_crit_edge ], [ -5, %if.else.rocker_event_process.exit.thread_crit_edge ], [ -5, %lor.lhs.false.i.rocker_event_process.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %attrs.i) #15
  br label %do.end9

rocker_event_process.exit:                        ; preds = %rocker_event_mac_vlan_seen.exit.i, %rocker_event_link_change.exit.i
  %retval.0.i30 = phi i32 [ %retval.0.i27.i, %rocker_event_mac_vlan_seen.exit.i ], [ %retval.0.i.i, %rocker_event_link_change.exit.i ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %attrs.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i30)
  %tobool5.not = icmp eq i32 %retval.0.i30, 0
  br i1 %tobool5.not, label %rocker_event_process.exit.if.end11_crit_edge, label %rocker_event_process.exit.do.end9_crit_edge

rocker_event_process.exit.do.end9_crit_edge:      ; preds = %rocker_event_process.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end9

rocker_event_process.exit.if.end11_crit_edge:     ; preds = %rocker_event_process.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

do.end9:                                          ; preds = %rocker_event_process.exit.do.end9_crit_edge, %rocker_event_process.exit.thread
  %retval.0.i3053 = phi i32 [ %retval.0.i30.ph, %rocker_event_process.exit.thread ], [ %retval.0.i30, %rocker_event_process.exit.do.end9_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.98, i32 noundef %retval.0.i3053) #18
  br label %if.end11

if.end11:                                         ; preds = %do.end9, %rocker_event_process.exit.if.end11_crit_edge, %do.end
  %99 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %desc.i.i, align 4
  %comp_err.i32 = getelementptr inbounds %struct.rocker_desc, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %comp_err.i32 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %comp_err.i32, align 2
  %103 = and i16 %102, 32767
  store i16 %103, ptr %comp_err.i32, align 2
  %104 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %head.i, align 4
  %106 = ptrtoint ptr %event_ring to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %event_ring, align 4
  %inc.i.i33 = add i32 %105, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i33, i32 %107)
  %cmp.i.i34 = icmp eq i32 %inc.i.i33, %107
  %spec.select.i.i35 = select i1 %cmp.i.i34, i32 0, i32 %inc.i.i33
  %108 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i35, i32 %109)
  %cmp.i37 = icmp eq i32 %spec.select.i.i35, %109
  br i1 %cmp.i37, label %do.body3.i, label %rocker_desc_head_set.exit, !prof !273

do.body3.i:                                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/rocker/rocker_main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 392, 0\0A.popsection", ""() #15, !srcloc !274
  unreachable

rocker_desc_head_set.exit:                        ; preds = %if.end11
  %data_size.i.i = getelementptr %struct.rocker_desc_info, ptr %15, i32 %13, i32 1
  %110 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %data_size.i.i, align 4
  %conv.i.i38 = trunc i32 %111 to i16
  %112 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %desc.i.i, align 4
  %buf_size.i.i = getelementptr inbounds %struct.rocker_desc, ptr %113, i32 0, i32 2
  %114 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %conv.i.i38, ptr %buf_size.i.i, align 8
  %115 = ptrtoint ptr %tlv_size8.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %tlv_size8.i, align 4
  %conv1.i.i = trunc i32 %116 to i16
  %117 = load ptr, ptr %desc.i.i, align 4
  %tlv_size3.i.i = getelementptr inbounds %struct.rocker_desc, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %tlv_size3.i.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %conv1.i.i, ptr %tlv_size3.i.i, align 2
  %119 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %spec.select.i.i35, ptr %head.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !275
  call void @arm_heavy_mb() #15
  %120 = call i32 @llvm.bswap.i32(i32 %spec.select.i.i35) #15
  %121 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw_addr.i, align 4
  %123 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %type.i, align 4
  %mul.i = shl i32 %124, 5
  %add.i = add i32 %mul.i, 4108
  %add.ptr.i = getelementptr i8, ptr %122, i32 %add.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %120) #15, !srcloc !276
  %inc = add i32 %credits.056, 1
  %125 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %tail.i, align 4
  %127 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %head.i, align 4
  %cmp.i = icmp eq i32 %126, %128
  br i1 %cmp.i, label %rocker_desc_head_set.exit.while.end_crit_edge, label %rocker_desc_head_set.exit.if.end.i_crit_edge

rocker_desc_head_set.exit.if.end.i_crit_edge:     ; preds = %rocker_desc_head_set.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

rocker_desc_head_set.exit.while.end_crit_edge:    ; preds = %rocker_desc_head_set.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %rocker_desc_head_set.exit.while.end_crit_edge, %rocker_desc_tail_get.exit.while.end_crit_edge, %if.end.i.while.end_crit_edge
  %credits.0.lcssa = phi i32 [ %credits.056, %rocker_desc_tail_get.exit.while.end_crit_edge ], [ %inc, %rocker_desc_head_set.exit.while.end_crit_edge ], [ %credits.056, %if.end.i.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %credits.0.lcssa)
  %tobool.not.i41 = icmp eq i32 %credits.0.lcssa, 0
  br i1 %tobool.not.i41, label %while.end.rocker_dma_ring_credits_set.exit_crit_edge, label %do.body.i

while.end.rocker_dma_ring_credits_set.exit_crit_edge: ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_ring_credits_set.exit

do.body.i:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !298
  call void @arm_heavy_mb() #15
  %129 = call i32 @llvm.bswap.i32(i32 %credits.0.lcssa) #15
  %hw_addr.i42 = getelementptr inbounds %struct.rocker, ptr %dev_id, i32 0, i32 1
  %130 = ptrtoint ptr %hw_addr.i42 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %hw_addr.i42, align 4
  %type.i43 = getelementptr inbounds %struct.rocker, ptr %dev_id, i32 0, i32 8, i32 6
  %132 = ptrtoint ptr %type.i43 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %type.i43, align 4
  %mul.i44 = shl i32 %133, 5
  %add.i45 = add i32 %mul.i44, 4120
  %add.ptr.i46 = getelementptr i8, ptr %131, i32 %add.i45
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %129) #15, !srcloc !276
  br label %rocker_dma_ring_credits_set.exit

rocker_dma_ring_credits_set.exit:                 ; preds = %do.body.i, %while.end.rocker_dma_ring_credits_set.exit_crit_edge, %entry.rocker_dma_ring_credits_set.exit_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_router_fib_event(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -132
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup69_crit_edge

entry.cleanup69_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup69

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2848, i32 noundef 80) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %do.body27, !prof !273

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2161, i32 noundef 9, ptr noundef null) #15
  br label %cleanup69

do.body27:                                        ; preds = %if.end
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #15
  %3 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.127, ptr noundef nonnull @rocker_router_fib_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry31 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %entry31 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %entry31, ptr %entry31, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %entry31, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @rocker_router_fib_event_work, ptr %func, align 4
  %rocker35 = getelementptr inbounds %struct.rocker_fib_event_work, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %rocker35 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %add.ptr, ptr %rocker35, align 8
  %event36 = getelementptr inbounds %struct.rocker_fib_event_work, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %event36 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %event, ptr %event36, align 4
  %9 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %event, label %do.body27.sw.epilog_crit_edge [
    i32 0, label %do.body27.sw.bb_crit_edge
    i32 3, label %do.body27.sw.bb_crit_edge108
    i32 4, label %do.body27.sw.bb66_crit_edge
    i32 5, label %do.body27.sw.bb66_crit_edge109
  ]

do.body27.sw.bb66_crit_edge109:                   ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb66

do.body27.sw.bb66_crit_edge:                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb66

do.body27.sw.bb_crit_edge108:                     ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

do.body27.sw.bb_crit_edge:                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

do.body27.sw.epilog_crit_edge:                    ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %do.body27.sw.bb_crit_edge, %do.body27.sw.bb_crit_edge108
  %10 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp38 = icmp eq i32 %11, 2
  br i1 %cmp38, label %if.then39, label %sw.bb.if.end64_crit_edge

sw.bb.if.end64_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

if.then39:                                        ; preds = %sw.bb
  %fi = getelementptr inbounds %struct.fib_entry_notifier_info, ptr %ptr, i32 0, i32 3
  %12 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fi, align 4
  %fib_nh_is_v6 = getelementptr inbounds %struct.fib_info, ptr %13, i32 0, i32 16
  %14 = ptrtoint ptr %fib_nh_is_v6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %fib_nh_is_v6, align 4, !range !277
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool40.not = icmp eq i8 %15, 0
  br i1 %tobool40.not, label %if.end49, label %do.body42

do.body42:                                        ; preds = %if.then39
  %extack = getelementptr inbounds %struct.fib_notifier_info, ptr %ptr, i32 0, i32 1
  %16 = ptrtoint ptr %extack to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %extack, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rocker_router_fib_event.__msg) #15
  %tobool43.not = icmp eq ptr %17, null
  br i1 %tobool43.not, label %do.body42.if.end45_crit_edge, label %if.then44

do.body42.if.end45_crit_edge:                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end45

if.then44:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @rocker_router_fib_event.__msg, ptr %17, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %do.body42.if.end45_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup69

if.end49:                                         ; preds = %if.then39
  %nh = getelementptr inbounds %struct.fib_info, ptr %13, i32 0, i32 18
  %19 = ptrtoint ptr %nh to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nh, align 4
  %tobool51.not = icmp eq ptr %20, null
  br i1 %tobool51.not, label %if.end49.if.end64_crit_edge, label %do.body53

if.end49.if.end64_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end64

do.body53:                                        ; preds = %if.end49
  %extack55 = getelementptr inbounds %struct.fib_notifier_info, ptr %ptr, i32 0, i32 1
  %21 = ptrtoint ptr %extack55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %extack55, align 4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @rocker_router_fib_event.__msg.128) #15
  %tobool56.not = icmp eq ptr %22, null
  br i1 %tobool56.not, label %do.body53.if.end59_crit_edge, label %if.then57

do.body53.if.end59_crit_edge:                     ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

if.then57:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @rocker_router_fib_event.__msg.128, ptr %22, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %do.body53.if.end59_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup69

if.end64:                                         ; preds = %if.end49.if.end64_crit_edge, %sw.bb.if.end64_crit_edge
  %24 = getelementptr inbounds %struct.rocker_fib_event_work, ptr %call7.i.i, i32 0, i32 1
  %25 = call ptr @memcpy(ptr %24, ptr %ptr, i32 28)
  %fi65 = getelementptr inbounds %struct.rocker_fib_event_work, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %fi65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fi65, align 4
  %fib_clntref.i = getelementptr inbounds %struct.fib_info, ptr %27, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %fib_clntref.i, i32 1, i32 3, i32 1) #15
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref.i, ptr %fib_clntref.i, i32 1, ptr elementtype(i32) %fib_clntref.i) #15, !srcloc !299
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end64.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !273

if.end64.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end64
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %29 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %.not.i.i.i.i = icmp sgt i32 %29, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.sw.epilog_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !285

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.sw.epilog_crit_edge:              ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end64.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end64.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %fib_clntref.i, i32 noundef %.sink.i.i.i.i) #15
  br label %sw.epilog

sw.bb66:                                          ; preds = %do.body27.sw.bb66_crit_edge, %do.body27.sw.bb66_crit_edge109
  %30 = getelementptr inbounds %struct.rocker_fib_event_work, ptr %call7.i.i, i32 0, i32 1
  %31 = call ptr @memcpy(ptr %30, ptr %ptr, i32 12)
  %rule = getelementptr inbounds %struct.rocker_fib_event_work, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %32 = ptrtoint ptr %rule to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rule, align 4
  %refcnt.i = getelementptr inbounds %struct.fib_rule, ptr %33, i32 0, i32 15
  %call.i.i.i.i.i.i99 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %34 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !299
  %asmresult.i.i.i.i.i.i100 = extractvalue { i32, i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i100)
  %tobool1.not.i.i.i.i101 = icmp eq i32 %asmresult.i.i.i.i.i.i100, 0
  br i1 %tobool1.not.i.i.i.i101, label %sw.bb66.if.end15.sink.split.i.i.i.i106_crit_edge, label %if.else.i.i.i.i104, !prof !273

sw.bb66.if.end15.sink.split.i.i.i.i106_crit_edge: ; preds = %sw.bb66
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i106

if.else.i.i.i.i104:                               ; preds = %sw.bb66
  %add.i.i.i.i102 = add i32 %asmresult.i.i.i.i.i.i100, 1
  %35 = or i32 %add.i.i.i.i102, %asmresult.i.i.i.i.i.i100
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %35)
  %.not.i.i.i.i103 = icmp sgt i32 %35, -1
  br i1 %.not.i.i.i.i103, label %if.else.i.i.i.i104.sw.epilog_crit_edge, label %if.else.i.i.i.i104.if.end15.sink.split.i.i.i.i106_crit_edge, !prof !285

if.else.i.i.i.i104.if.end15.sink.split.i.i.i.i106_crit_edge: ; preds = %if.else.i.i.i.i104
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i106

if.else.i.i.i.i104.sw.epilog_crit_edge:           ; preds = %if.else.i.i.i.i104
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end15.sink.split.i.i.i.i106:                   ; preds = %if.else.i.i.i.i104.if.end15.sink.split.i.i.i.i106_crit_edge, %sw.bb66.if.end15.sink.split.i.i.i.i106_crit_edge
  %.sink.i.i.i.i105 = phi i32 [ 2, %sw.bb66.if.end15.sink.split.i.i.i.i106_crit_edge ], [ 1, %if.else.i.i.i.i104.if.end15.sink.split.i.i.i.i106_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i105) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end15.sink.split.i.i.i.i106, %if.else.i.i.i.i104.sw.epilog_crit_edge, %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.sw.epilog_crit_edge, %do.body27.sw.epilog_crit_edge
  %rocker_owq = getelementptr i8, ptr %nb, i32 16
  %36 = ptrtoint ptr %rocker_owq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rocker_owq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %37, ptr noundef nonnull %call7.i.i) #15
  br label %cleanup69

cleanup69:                                        ; preds = %sw.epilog, %if.end59, %if.end45, %do.end, %entry.cleanup69_crit_edge
  %retval.1 = phi i32 [ 32770, %do.end ], [ 0, %sw.epilog ], [ 0, %entry.cleanup69_crit_edge ], [ 32791, %if.end59 ], [ 32791, %if.end45 ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_fib_notifier(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_fib_notifier(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rocker_remove_ports(ptr noundef %rocker) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %port_count = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 3
  %0 = ptrtoint ptr %port_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp20.not = icmp eq i32 %1, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ports = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 8
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.021
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end:                                           ; preds = %for.body
  %rocker.i = getelementptr inbounds %struct.rocker_port, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %rocker.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rocker.i, align 4
  %wops1.i = getelementptr inbounds %struct.rocker, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %wops1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wops1.i, align 8
  %port_fini.i = getelementptr inbounds %struct.rocker_world_ops, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %port_fini.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %port_fini.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.rocker_world_port_fini.exit_crit_edge, label %if.end.i

if.end.rocker_world_port_fini.exit_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_world_port_fini.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %11(ptr noundef nonnull %5) #15
  br label %rocker_world_port_fini.exit

rocker_world_port_fini.exit:                      ; preds = %if.end.i, %if.end.rocker_world_port_fini.exit_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %5, align 8
  tail call void @unregister_netdev(ptr noundef %13) #15
  %14 = ptrtoint ptr %rocker.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rocker.i, align 4
  %wops1.i13 = getelementptr inbounds %struct.rocker, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %wops1.i13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wops1.i13, align 8
  %port_post_fini.i = getelementptr inbounds %struct.rocker_world_ops, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %port_post_fini.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %port_post_fini.i, align 4
  %tobool.not.i14 = icmp eq ptr %19, null
  br i1 %tobool.not.i14, label %rocker_world_port_fini.exit.rocker_world_port_post_fini.exit_crit_edge, label %if.end.i15

rocker_world_port_fini.exit.rocker_world_port_post_fini.exit_crit_edge: ; preds = %rocker_world_port_fini.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_world_port_post_fini.exit

if.end.i15:                                       ; preds = %rocker_world_port_fini.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %19(ptr noundef nonnull %5) #15
  %wpriv.i = getelementptr inbounds %struct.rocker_port, ptr %5, i32 0, i32 2
  %20 = ptrtoint ptr %wpriv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %wpriv.i, align 8
  tail call void @kfree(ptr noundef %21) #15
  br label %rocker_world_port_post_fini.exit

rocker_world_port_post_fini.exit:                 ; preds = %if.end.i15, %rocker_world_port_fini.exit.rocker_world_port_post_fini.exit_crit_edge
  %22 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %5, align 8
  tail call void @free_netdev(ptr noundef %23) #15
  br label %for.inc

for.inc:                                          ; preds = %rocker_world_port_post_fini.exit, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.021, 1
  %24 = ptrtoint ptr %port_count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_count, align 4
  %cmp = icmp ult i32 %inc, %25
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %wops1.i16 = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 10
  %26 = ptrtoint ptr %wops1.i16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wops1.i16, align 8
  %tobool.not.i17 = icmp eq ptr %27, null
  br i1 %tobool.not.i17, label %for.end.rocker_world_fini.exit_crit_edge, label %lor.lhs.false.i

for.end.rocker_world_fini.exit_crit_edge:         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_world_fini.exit

lor.lhs.false.i:                                  ; preds = %for.end
  %fini.i = getelementptr inbounds %struct.rocker_world_ops, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %fini.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fini.i, align 4
  %tobool2.not.i = icmp eq ptr %29, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.rocker_world_fini.exit_crit_edge, label %if.end.i19

lor.lhs.false.i.rocker_world_fini.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_world_fini.exit

if.end.i19:                                       ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %29(ptr noundef %rocker) #15
  %wpriv.i18 = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 12
  %30 = ptrtoint ptr %wpriv.i18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wpriv.i18, align 8
  tail call void @kfree(ptr noundef %31) #15
  br label %rocker_world_fini.exit

rocker_world_fini.exit:                           ; preds = %if.end.i19, %lor.lhs.false.i.rocker_world_fini.exit_crit_edge, %for.end.rocker_world_fini.exit_crit_edge
  %ports2 = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 4
  %32 = ptrtoint ptr %ports2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ports2, align 8
  tail call void @kfree(ptr noundef %33) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rocker_dma_rings_fini(ptr nocapture noundef readonly %rocker) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %event_ring = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 8
  %0 = ptrtoint ptr %event_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event_ring, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp13.not.i = icmp eq i32 %1, 0
  br i1 %cmp13.not.i, label %entry.rocker_dma_ring_bufs_free.exit_crit_edge, label %for.body.lr.ph.i

entry.rocker_dma_ring_bufs_free.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_ring_bufs_free.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %2 = ptrtoint ptr %rocker to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rocker, align 8
  %desc_info2.i = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 8, i32 5
  %desc3.i = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 8, i32 3
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %desc_info2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc_info2.i, align 4
  %arrayidx.i = getelementptr %struct.rocker_desc_info, ptr %5, i32 %i.014.i
  %6 = ptrtoint ptr %desc3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc3.i, align 4
  %arrayidx4.i = getelementptr %struct.rocker_desc, ptr %7, i32 %i.014.i
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %arrayidx4.i, align 8
  %buf_size.i = getelementptr %struct.rocker_desc, ptr %7, i32 %i.014.i, i32 2
  %9 = ptrtoint ptr %buf_size.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %buf_size.i, align 8
  %mapaddr.i = getelementptr %struct.rocker_desc_info, ptr %5, i32 %i.014.i, i32 4
  %10 = ptrtoint ptr %mapaddr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mapaddr.i, align 4
  %data_size.i = getelementptr %struct.rocker_desc_info, ptr %5, i32 %i.014.i, i32 1
  %12 = ptrtoint ptr %data_size.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_size.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %11, i32 noundef %13, i32 noundef 0, i32 noundef 0) #15
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %15) #15
  %inc.i = add nuw i32 %i.014.i, 1
  %16 = ptrtoint ptr %event_ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %event_ring, align 4
  %cmp.i = icmp ult i32 %inc.i, %17
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.rocker_dma_ring_bufs_free.exit_crit_edge

for.body.i.rocker_dma_ring_bufs_free.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_ring_bufs_free.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

rocker_dma_ring_bufs_free.exit:                   ; preds = %for.body.i.rocker_dma_ring_bufs_free.exit_crit_edge, %entry.rocker_dma_ring_bufs_free.exit_crit_edge
  %hw_addr.i = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 1
  %18 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_addr.i, align 4
  %type.i = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 8, i32 6
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %type.i, align 4
  %mul.i = shl i32 %21, 5
  %add.i = add i32 %mul.i, 4096
  %add.ptr.i = getelementptr i8, ptr %19, i32 %add.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !279
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #15, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !280
  tail call void @arm_heavy_mb() #15
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #15, !srcloc !276
  %22 = ptrtoint ptr %rocker to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rocker, align 8
  %dev.i11 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %event_ring to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %event_ring, align 4
  %mul1.i = shl i32 %25, 5
  %desc.i = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 8, i32 3
  %26 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc.i, align 4
  %mapaddr.i12 = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 8, i32 4
  %28 = ptrtoint ptr %mapaddr.i12 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mapaddr.i12, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i11, i32 noundef %mul1.i, ptr noundef %27, i32 noundef %29, i32 noundef 0) #15
  %desc_info.i = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 8, i32 5
  %30 = ptrtoint ptr %desc_info.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc_info.i, align 4
  tail call void @kfree(ptr noundef %31) #15
  %cmd_ring1.i = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 7
  %32 = ptrtoint ptr %cmd_ring1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cmd_ring1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp5.not.i = icmp eq i32 %33, 0
  br i1 %cmp5.not.i, label %rocker_dma_ring_bufs_free.exit.rocker_dma_ring_bufs_free.exit32_crit_edge, label %for.body.lr.ph.i14

rocker_dma_ring_bufs_free.exit.rocker_dma_ring_bufs_free.exit32_crit_edge: ; preds = %rocker_dma_ring_bufs_free.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_ring_bufs_free.exit32

for.body.lr.ph.i14:                               ; preds = %rocker_dma_ring_bufs_free.exit
  %desc_info.i13 = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 7, i32 5
  br label %for.body.i17

for.body.i17:                                     ; preds = %for.body.i17.for.body.i17_crit_edge, %for.body.lr.ph.i14
  %i.06.i = phi i32 [ 0, %for.body.lr.ph.i14 ], [ %inc.i15, %for.body.i17.for.body.i17_crit_edge ]
  %34 = ptrtoint ptr %desc_info.i13 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %desc_info.i13, align 4
  %desc.i.i.i = getelementptr %struct.rocker_desc_info, ptr %35, i32 %i.06.i, i32 3
  %36 = ptrtoint ptr %desc.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %desc.i.i.i, align 4
  %cookie.i.i.i = getelementptr inbounds %struct.rocker_desc, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %cookie.i.i.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %cookie.i.i.i, align 8
  %conv.i.i.i = trunc i64 %39 to i32
  %40 = inttoptr i32 %conv.i.i.i to ptr
  tail call void @kfree(ptr noundef %40) #15
  %inc.i15 = add nuw i32 %i.06.i, 1
  %41 = ptrtoint ptr %cmd_ring1.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cmd_ring1.i, align 4
  %cmp.i16 = icmp ult i32 %inc.i15, %42
  br i1 %cmp.i16, label %for.body.i17.for.body.i17_crit_edge, label %rocker_dma_cmd_ring_waits_free.exit

for.body.i17.for.body.i17_crit_edge:              ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i17

rocker_dma_cmd_ring_waits_free.exit:              ; preds = %for.body.i17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp13.not.i18 = icmp eq i32 %42, 0
  br i1 %cmp13.not.i18, label %rocker_dma_cmd_ring_waits_free.exit.rocker_dma_ring_bufs_free.exit32_crit_edge, label %for.body.lr.ph.i22

rocker_dma_cmd_ring_waits_free.exit.rocker_dma_ring_bufs_free.exit32_crit_edge: ; preds = %rocker_dma_cmd_ring_waits_free.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_ring_bufs_free.exit32

for.body.lr.ph.i22:                               ; preds = %rocker_dma_cmd_ring_waits_free.exit
  %43 = ptrtoint ptr %rocker to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rocker, align 8
  %desc3.i20 = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 7, i32 3
  %dev.i21 = getelementptr inbounds %struct.pci_dev, ptr %44, i32 0, i32 44
  br label %for.body.i31

for.body.i31:                                     ; preds = %for.body.i31.for.body.i31_crit_edge, %for.body.lr.ph.i22
  %i.014.i23 = phi i32 [ 0, %for.body.lr.ph.i22 ], [ %inc.i29, %for.body.i31.for.body.i31_crit_edge ]
  %45 = ptrtoint ptr %desc_info.i13 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc_info.i13, align 4
  %arrayidx.i24 = getelementptr %struct.rocker_desc_info, ptr %46, i32 %i.014.i23
  %47 = ptrtoint ptr %desc3.i20 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc3.i20, align 4
  %arrayidx4.i25 = getelementptr %struct.rocker_desc, ptr %48, i32 %i.014.i23
  %49 = ptrtoint ptr %arrayidx4.i25 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %arrayidx4.i25, align 8
  %buf_size.i26 = getelementptr %struct.rocker_desc, ptr %48, i32 %i.014.i23, i32 2
  %50 = ptrtoint ptr %buf_size.i26 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %buf_size.i26, align 8
  %mapaddr.i27 = getelementptr %struct.rocker_desc_info, ptr %46, i32 %i.014.i23, i32 4
  %51 = ptrtoint ptr %mapaddr.i27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mapaddr.i27, align 4
  %data_size.i28 = getelementptr %struct.rocker_desc_info, ptr %46, i32 %i.014.i23, i32 1
  %53 = ptrtoint ptr %data_size.i28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data_size.i28, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i21, i32 noundef %52, i32 noundef %54, i32 noundef 0, i32 noundef 0) #15
  %55 = ptrtoint ptr %arrayidx.i24 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.i24, align 4
  tail call void @kfree(ptr noundef %56) #15
  %inc.i29 = add nuw i32 %i.014.i23, 1
  %57 = ptrtoint ptr %cmd_ring1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cmd_ring1.i, align 4
  %cmp.i30 = icmp ult i32 %inc.i29, %58
  br i1 %cmp.i30, label %for.body.i31.for.body.i31_crit_edge, label %for.body.i31.rocker_dma_ring_bufs_free.exit32_crit_edge

for.body.i31.rocker_dma_ring_bufs_free.exit32_crit_edge: ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_ring_bufs_free.exit32

for.body.i31.for.body.i31_crit_edge:              ; preds = %for.body.i31
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i31

rocker_dma_ring_bufs_free.exit32:                 ; preds = %for.body.i31.rocker_dma_ring_bufs_free.exit32_crit_edge, %rocker_dma_cmd_ring_waits_free.exit.rocker_dma_ring_bufs_free.exit32_crit_edge, %rocker_dma_ring_bufs_free.exit.rocker_dma_ring_bufs_free.exit32_crit_edge
  %59 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hw_addr.i, align 4
  %type.i34 = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 7, i32 6
  %61 = ptrtoint ptr %type.i34 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %type.i34, align 4
  %mul.i35 = shl i32 %62, 5
  %add.i36 = add i32 %mul.i35, 4096
  %add.ptr.i37 = getelementptr i8, ptr %60, i32 %add.i36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !279
  tail call void @arm_heavy_mb() #15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i37, i32 0) #15, !srcloc !276
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !280
  tail call void @arm_heavy_mb() #15
  %add.ptr.i.i38 = getelementptr i8, ptr %add.ptr.i37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i38, i32 0) #15, !srcloc !276
  %63 = ptrtoint ptr %rocker to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rocker, align 8
  %dev.i39 = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  %65 = ptrtoint ptr %cmd_ring1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cmd_ring1.i, align 4
  %mul1.i40 = shl i32 %66, 5
  %desc.i41 = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 7, i32 3
  %67 = ptrtoint ptr %desc.i41 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %desc.i41, align 4
  %mapaddr.i42 = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 7, i32 4
  %69 = ptrtoint ptr %mapaddr.i42 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mapaddr.i42, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i39, i32 noundef %mul1.i40, ptr noundef %68, i32 noundef %70, i32 noundef 0) #15
  %desc_info.i43 = getelementptr inbounds %struct.rocker, ptr %rocker, i32 0, i32 7, i32 5
  %71 = ptrtoint ptr %desc_info.i43 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %desc_info.i43, align 4
  tail call void @kfree(ptr noundef %72) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_msix_vec_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_test_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %done.i = getelementptr inbounds %struct.rocker_wait, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %done.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %done.i, align 4
  tail call void @__wake_up(ptr noundef %dev_id, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @prandom_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_port_poll_tx(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %napi, i32 -24
  %rocker1 = getelementptr i8, ptr %napi, i32 -20
  %0 = ptrtoint ptr %rocker1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rocker1, align 4
  %desc_info1.i = getelementptr i8, ptr %napi, i32 468
  %tx_ring = getelementptr i8, ptr %napi, i32 448
  %tail.i = getelementptr i8, ptr %napi, i32 456
  %head.i = getelementptr i8, ptr %napi, i32 452
  %2 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tail.i, align 4
  %4 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i52 = icmp eq i32 %3, %5
  br i1 %cmp.i52, label %entry.if.end23_crit_edge, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  br label %if.end.i

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.end.i:                                         ; preds = %if.end15.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %6 = phi i32 [ %44, %if.end15.if.end.i_crit_edge ], [ %3, %entry.if.end.i_crit_edge ]
  %credits.053 = phi i32 [ %inc16, %if.end15.if.end.i_crit_edge ], [ 0, %entry.if.end.i_crit_edge ]
  %7 = ptrtoint ptr %desc_info1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc_info1.i, align 4
  %desc.i.i = getelementptr %struct.rocker_desc_info, ptr %8, i32 %6, i32 3
  %9 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc.i.i, align 4
  %comp_err1.i.i = getelementptr inbounds %struct.rocker_desc, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %comp_err1.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %comp_err1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.i.i = icmp slt i16 %12, 0
  br i1 %tobool.i.i, label %rocker_desc_tail_get.exit, label %if.end.i.while.end_crit_edge

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

rocker_desc_tail_get.exit:                        ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.rocker_desc_info, ptr %8, i32 %6
  %13 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tx_ring, align 4
  %inc.i.i = add i32 %6, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %14)
  %cmp.i.i = icmp eq i32 %inc.i.i, %14
  %spec.select.i.i = select i1 %cmp.i.i, i32 0, i32 %inc.i.i
  %15 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %spec.select.i.i, ptr %tail.i, align 4
  %16 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc.i.i, align 4
  %tlv_size.i = getelementptr inbounds %struct.rocker_desc, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %tlv_size.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tlv_size.i, align 2
  %conv.i = zext i16 %19 to i32
  %tlv_size8.i = getelementptr %struct.rocker_desc_info, ptr %8, i32 %6, i32 2
  %20 = ptrtoint ptr %tlv_size8.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %conv.i, ptr %tlv_size8.i, align 4
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %rocker_desc_tail_get.exit.while.end_crit_edge, label %while.body

rocker_desc_tail_get.exit.while.end_crit_edge:    ; preds = %rocker_desc_tail_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.body:                                       ; preds = %rocker_desc_tail_get.exit
  %21 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc.i.i, align 4
  %comp_err.i = getelementptr inbounds %struct.rocker_desc, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %comp_err.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %comp_err.i, align 2
  %25 = and i16 %24, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %25)
  %cond.i = icmp eq i16 %25, 0
  %..i = select i1 %cond.i, i32 0, i32 -22
  br i1 %cond.i, label %while.body.if.end_crit_edge, label %land.lhs.true

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %while.body
  %call5 = tail call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %27, ptr noundef nonnull @.str.124, i32 noundef %..i) #18
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %while.body.if.end_crit_edge
  tail call fastcc void @rocker_tx_desc_frags_unmap(ptr noundef %add.ptr.i, ptr noundef nonnull %arrayidx.i)
  %28 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc.i.i, align 4
  %cookie.i = getelementptr inbounds %struct.rocker_desc, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %cookie.i to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %cookie.i, align 8
  %conv.i44 = trunc i64 %31 to i32
  %32 = inttoptr i32 %conv.i44 to ptr
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 8
  br i1 %cond.i, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 1
  %35 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %tx_packets, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %32, i32 0, i32 6
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len, align 4
  %39 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %add.ptr.i, align 8
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 36, i32 3
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 36, i32 5
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then8
  %tx_errors.sink59 = phi ptr [ %tx_errors, %if.else ], [ %tx_bytes, %if.then8 ]
  %.sink58 = phi i32 [ 1, %if.else ], [ %38, %if.then8 ]
  %41 = ptrtoint ptr %tx_errors.sink59 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tx_errors.sink59, align 4
  %inc14 = add i32 %42, %.sink58
  store i32 %inc14, ptr %tx_errors.sink59, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %32, i32 noundef 1) #15
  %inc16 = add i32 %credits.053, 1
  %43 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tail.i, align 4
  %45 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %head.i, align 4
  %cmp.i = icmp eq i32 %44, %46
  br i1 %cmp.i, label %if.end15.while.end_crit_edge, label %if.end15.if.end.i_crit_edge

if.end15.if.end.i_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end15.while.end_crit_edge, %rocker_desc_tail_get.exit.while.end_crit_edge, %if.end.i.while.end_crit_edge
  %credits.0.lcssa = phi i32 [ %credits.053, %rocker_desc_tail_get.exit.while.end_crit_edge ], [ %inc16, %if.end15.while.end_crit_edge ], [ %credits.053, %if.end.i.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %credits.0.lcssa)
  %tobool17.not = icmp eq i32 %credits.0.lcssa, 0
  br i1 %tobool17.not, label %while.end.if.end23_crit_edge, label %land.lhs.true18

while.end.if.end23_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

land.lhs.true18:                                  ; preds = %while.end
  %47 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %add.ptr.i, align 8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 103
  %49 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %50, i32 0, i32 13
  %51 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %52, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.i45.not = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.i45.not, label %land.lhs.true18.do.body.i_crit_edge, label %if.then21

land.lhs.true18.do.body.i_crit_edge:              ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

if.then21:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netif_tx_wake_queue(ptr noundef %50) #15
  br label %do.body.i

if.end23:                                         ; preds = %while.end.if.end23_crit_edge, %entry.if.end23_crit_edge
  %call.i = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #15
  br label %rocker_dma_ring_credits_set.exit

do.body.i:                                        ; preds = %if.then21, %land.lhs.true18.do.body.i_crit_edge
  %call.i51 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef 0) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !298
  tail call void @arm_heavy_mb() #15
  %53 = tail call i32 @llvm.bswap.i32(i32 %credits.0.lcssa) #15
  %hw_addr.i = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 1
  %54 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hw_addr.i, align 4
  %type.i = getelementptr i8, ptr %napi, i32 472
  %56 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %type.i, align 4
  %mul.i = shl i32 %57, 5
  %add.i = add i32 %mul.i, 4120
  %add.ptr.i47 = getelementptr i8, ptr %55, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i47, i32 %53) #15, !srcloc !276
  br label %rocker_dma_ring_credits_set.exit

rocker_dma_ring_credits_set.exit:                 ; preds = %do.body.i, %if.end23
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_port_poll_rx(ptr noundef %napi, i32 noundef %budget) #0 align 64 {
entry:
  %attrs.i = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %napi, i32 -248
  %rocker1 = getelementptr i8, ptr %napi, i32 -244
  %0 = ptrtoint ptr %rocker1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rocker1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %budget)
  %cmp87.not = icmp eq i32 %budget, 0
  br i1 %cmp87.not, label %entry.rocker_dma_ring_credits_set.exit_crit_edge, label %land.rhs.lr.ph

entry.rocker_dma_ring_credits_set.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_ring_credits_set.exit

land.rhs.lr.ph:                                   ; preds = %entry
  %rx_ring = getelementptr i8, ptr %napi, i32 252
  %tail.i = getelementptr i8, ptr %napi, i32 260
  %head.i = getelementptr i8, ptr %napi, i32 256
  %desc_info1.i = getelementptr i8, ptr %napi, i32 272
  %2 = getelementptr inbounds [6 x ptr], ptr %attrs.i, i32 0, i32 1
  %3 = getelementptr inbounds [6 x ptr], ptr %attrs.i, i32 0, i32 3
  %4 = getelementptr inbounds [6 x ptr], ptr %attrs.i, i32 0, i32 4
  %5 = getelementptr inbounds [6 x ptr], ptr %attrs.i, i32 0, i32 5
  %hw_addr.i = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 1
  %type.i = getelementptr i8, ptr %napi, i32 276
  br label %land.rhs

land.rhs:                                         ; preds = %rocker_desc_head_set.exit.land.rhs_crit_edge, %land.rhs.lr.ph
  %credits.088 = phi i32 [ 0, %land.rhs.lr.ph ], [ %inc21, %rocker_desc_head_set.exit.land.rhs_crit_edge ]
  %6 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tail.i, align 4
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.i = icmp eq i32 %7, %9
  br i1 %cmp.i, label %land.rhs.if.then23.critedge_crit_edge, label %if.end.i

land.rhs.if.then23.critedge_crit_edge:            ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23.critedge

if.end.i:                                         ; preds = %land.rhs
  %10 = ptrtoint ptr %desc_info1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc_info1.i, align 4
  %desc.i.i = getelementptr %struct.rocker_desc_info, ptr %11, i32 %7, i32 3
  %12 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc.i.i, align 4
  %comp_err1.i.i = getelementptr inbounds %struct.rocker_desc, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %comp_err1.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %comp_err1.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %tobool.i.i = icmp slt i16 %15, 0
  br i1 %tobool.i.i, label %rocker_desc_tail_get.exit, label %if.end.i.if.then23.critedge_crit_edge

if.end.i.if.then23.critedge_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23.critedge

rocker_desc_tail_get.exit:                        ; preds = %if.end.i
  %arrayidx.i = getelementptr %struct.rocker_desc_info, ptr %11, i32 %7
  %16 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rx_ring, align 4
  %inc.i.i = add i32 %7, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %17)
  %cmp.i.i = icmp eq i32 %inc.i.i, %17
  %spec.select.i.i = select i1 %cmp.i.i, i32 0, i32 %inc.i.i
  %18 = ptrtoint ptr %tail.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select.i.i, ptr %tail.i, align 4
  %19 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc.i.i, align 4
  %tlv_size.i = getelementptr inbounds %struct.rocker_desc, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %tlv_size.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %tlv_size.i, align 2
  %conv.i = zext i16 %22 to i32
  %tlv_size8.i = getelementptr %struct.rocker_desc_info, ptr %11, i32 %7, i32 2
  %23 = ptrtoint ptr %tlv_size8.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv.i, ptr %tlv_size8.i, align 4
  %tobool.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool.not, label %rocker_desc_tail_get.exit.if.then23.critedge_crit_edge, label %while.body

rocker_desc_tail_get.exit.if.then23.critedge_crit_edge: ; preds = %rocker_desc_tail_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then23.critedge

while.body:                                       ; preds = %rocker_desc_tail_get.exit
  %24 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %desc.i.i, align 4
  %comp_err.i = getelementptr inbounds %struct.rocker_desc, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %comp_err.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %comp_err.i, align 2
  %28 = and i16 %27, 32767
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cond.i = icmp eq i16 %28, 0
  %..i = select i1 %cond.i, i32 0, i32 -22
  br i1 %cond.i, label %if.else, label %if.then

if.then:                                          ; preds = %while.body
  %call5 = call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then.if.then17_crit_edge, label %if.then7

if.then.if.then17_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then17

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %30, ptr noundef nonnull @.str.125, i32 noundef %..i) #18
  br label %if.then17

if.else:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %attrs.i) #15
  %31 = call ptr @memset(ptr %attrs.i, i32 255, i32 24)
  %32 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %desc.i.i, align 4
  %cookie.i.i = getelementptr inbounds %struct.rocker_desc, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %cookie.i.i, align 8
  %conv.i.i = trunc i64 %35 to i32
  %36 = inttoptr i32 %conv.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i)
  %tobool.not.i = icmp eq i32 %conv.i.i, 0
  br i1 %tobool.not.i, label %if.else.rocker_port_rx_proc.exit.thread_crit_edge, label %if.end.i51

if.else.rocker_port_rx_proc.exit.thread_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_port_rx_proc.exit.thread

if.end.i51:                                       ; preds = %if.else
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.i, align 4
  %tlv_size.i.i = getelementptr inbounds %struct.rocker_desc, ptr %33, i32 0, i32 3
  %39 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %tlv_size.i.i, align 2
  %conv.i39.i = zext i16 %40 to i32
  call void @rocker_tlv_parse(ptr noundef nonnull %attrs.i, i32 noundef 5, ptr noundef %38, i32 noundef %conv.i39.i) #15
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %5, align 4
  %tobool1.not.i = icmp eq ptr %42, null
  br i1 %tobool1.not.i, label %if.end.i51.rocker_port_rx_proc.exit.thread_crit_edge, label %if.end3.i

if.end.i51.rocker_port_rx_proc.exit.thread_crit_edge: ; preds = %if.end.i51
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_port_rx_proc.exit.thread

if.end3.i:                                        ; preds = %if.end.i51
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %2, align 4
  %tobool5.not.i = icmp eq ptr %44, null
  br i1 %tobool5.not.i, label %if.end18.critedge.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end3.i
  %add.ptr.i.i.i = getelementptr i8, ptr %44, i32 8
  %45 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %add.ptr.i.i.i, align 2
  %47 = and i16 %46, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %phi.cmp.i = icmp eq i16 %47, 0
  %48 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %1, align 8
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 4
  %tobool.not.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i, label %if.then6.i.rocker_dma_rx_ring_skb_unmap.exit.i_crit_edge, label %lor.lhs.false.i.i

if.then6.i.rocker_dma_rx_ring_skb_unmap.exit.i_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_rx_ring_skb_unmap.exit.i

lor.lhs.false.i.i:                                ; preds = %if.then6.i
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %4, align 4
  %tobool3.not.i.i = icmp eq ptr %53, null
  br i1 %tobool3.not.i.i, label %lor.lhs.false.i.i.rocker_dma_rx_ring_skb_unmap.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.rocker_dma_rx_ring_skb_unmap.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_rx_ring_skb_unmap.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i.i.i = getelementptr i8, ptr %51, i32 8
  %54 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %add.ptr.i.i.i.i, align 8
  %conv.i40.i = trunc i64 %55 to i32
  %add.ptr.i.i13.i.i = getelementptr i8, ptr %53, i32 8
  %56 = ptrtoint ptr %add.ptr.i.i13.i.i to i32
  call void @__asan_load2_noabort(i32 %56)
  %57 = load i16, ptr %add.ptr.i.i13.i.i, align 2
  %conv7.i.i = zext i16 %57 to i32
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %conv.i40.i, i32 noundef %conv7.i.i, i32 noundef 2, i32 noundef 0) #15
  br label %rocker_dma_rx_ring_skb_unmap.exit.i

rocker_dma_rx_ring_skb_unmap.exit.i:              ; preds = %if.end.i.i, %lor.lhs.false.i.i.rocker_dma_rx_ring_skb_unmap.exit.i_crit_edge, %if.then6.i.rocker_dma_rx_ring_skb_unmap.exit.i_crit_edge
  %58 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %5, align 4
  %add.ptr.i.i41.i = getelementptr i8, ptr %59, i32 8
  %60 = ptrtoint ptr %add.ptr.i.i41.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %add.ptr.i.i41.i, align 2
  %conv.i52 = zext i16 %61 to i32
  %call13.i = call ptr @skb_put(ptr noundef nonnull %36, i32 noundef %conv.i52) #15
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %add.ptr.i, align 8
  %call14.i = call zeroext i16 @eth_type_trans(ptr noundef nonnull %36, ptr noundef %63) #15
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 15, i32 0, i32 18
  %64 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %call14.i, ptr %protocol.i, align 8
  br i1 %phi.cmp.i, label %rocker_dma_rx_ring_skb_unmap.exit.i.rocker_port_rx_proc.exit_crit_edge, label %if.then17.i

rocker_dma_rx_ring_skb_unmap.exit.i.rocker_port_rx_proc.exit_crit_edge: ; preds = %rocker_dma_rx_ring_skb_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_port_rx_proc.exit

if.then17.i:                                      ; preds = %rocker_dma_rx_ring_skb_unmap.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %offload_fwd_mark.i = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 15, i32 0, i32 3
  %65 = ptrtoint ptr %offload_fwd_mark.i to i32
  call void @__asan_loadN_noabort(i32 %65, i32 4)
  %bf.load.i = load i32, ptr %offload_fwd_mark.i, align 2
  %bf.set.i = or i32 %bf.load.i, 1048576
  store i32 %bf.set.i, ptr %offload_fwd_mark.i, align 2
  br label %rocker_port_rx_proc.exit

if.end18.critedge.i:                              ; preds = %if.end3.i
  %66 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %1, align 8
  %68 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %3, align 4
  %tobool.not.i43.i = icmp eq ptr %69, null
  br i1 %tobool.not.i43.i, label %if.end18.critedge.i.rocker_dma_rx_ring_skb_unmap.exit53.i_crit_edge, label %lor.lhs.false.i46.i

if.end18.critedge.i.rocker_dma_rx_ring_skb_unmap.exit53.i_crit_edge: ; preds = %if.end18.critedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_rx_ring_skb_unmap.exit53.i

lor.lhs.false.i46.i:                              ; preds = %if.end18.critedge.i
  %70 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %4, align 4
  %tobool3.not.i45.i = icmp eq ptr %71, null
  br i1 %tobool3.not.i45.i, label %lor.lhs.false.i46.i.rocker_dma_rx_ring_skb_unmap.exit53.i_crit_edge, label %if.end.i52.i

lor.lhs.false.i46.i.rocker_dma_rx_ring_skb_unmap.exit53.i_crit_edge: ; preds = %lor.lhs.false.i46.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_rx_ring_skb_unmap.exit53.i

if.end.i52.i:                                     ; preds = %lor.lhs.false.i46.i
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i.i47.i = getelementptr i8, ptr %69, i32 8
  %72 = ptrtoint ptr %add.ptr.i.i.i47.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %add.ptr.i.i.i47.i, align 8
  %conv.i48.i = trunc i64 %73 to i32
  %add.ptr.i.i13.i49.i = getelementptr i8, ptr %71, i32 8
  %74 = ptrtoint ptr %add.ptr.i.i13.i49.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr.i.i13.i49.i, align 2
  %conv7.i50.i = zext i16 %75 to i32
  %dev.i51.i = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 44
  call void @dma_unmap_page_attrs(ptr noundef %dev.i51.i, i32 noundef %conv.i48.i, i32 noundef %conv7.i50.i, i32 noundef 2, i32 noundef 0) #15
  br label %rocker_dma_rx_ring_skb_unmap.exit53.i

rocker_dma_rx_ring_skb_unmap.exit53.i:            ; preds = %if.end.i52.i, %lor.lhs.false.i46.i.rocker_dma_rx_ring_skb_unmap.exit53.i_crit_edge, %if.end18.critedge.i.rocker_dma_rx_ring_skb_unmap.exit53.i_crit_edge
  %76 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %5, align 4
  %add.ptr.i.i54.i = getelementptr i8, ptr %77, i32 8
  %78 = ptrtoint ptr %add.ptr.i.i54.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %add.ptr.i.i54.i, align 2
  %conv.c.i = zext i16 %79 to i32
  %call13.c.i = call ptr @skb_put(ptr noundef nonnull %36, i32 noundef %conv.c.i) #15
  %80 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %add.ptr.i, align 8
  %call14.c.i = call zeroext i16 @eth_type_trans(ptr noundef nonnull %36, ptr noundef %81) #15
  %protocol.c.i = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 15, i32 0, i32 18
  %82 = ptrtoint ptr %protocol.c.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %call14.c.i, ptr %protocol.c.i, align 8
  br label %rocker_port_rx_proc.exit

rocker_port_rx_proc.exit.thread:                  ; preds = %if.end.i51.rocker_port_rx_proc.exit.thread_crit_edge, %if.else.rocker_port_rx_proc.exit.thread_crit_edge
  %retval.0.i53.ph = phi i32 [ -22, %if.end.i51.rocker_port_rx_proc.exit.thread_crit_edge ], [ -2, %if.else.rocker_port_rx_proc.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %attrs.i) #15
  br label %land.lhs.true

rocker_port_rx_proc.exit:                         ; preds = %rocker_dma_rx_ring_skb_unmap.exit53.i, %if.then17.i, %rocker_dma_rx_ring_skb_unmap.exit.i.rocker_port_rx_proc.exit_crit_edge
  %83 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %add.ptr.i, align 8
  %stats.i = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 36
  %85 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %stats.i, align 8
  %inc.i = add i32 %86, 1
  store i32 %inc.i, ptr %stats.i, align 8
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %36, i32 0, i32 6
  %87 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len.i, align 4
  %89 = load ptr, ptr %add.ptr.i, align 8
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %89, i32 0, i32 36, i32 2
  %90 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %rx_bytes.i, align 8
  %add.i = add i32 %91, %88
  store i32 %add.i, ptr %rx_bytes.i, align 8
  %call22.i = call i32 @netif_receive_skb(ptr noundef nonnull %36) #15
  %call23.i = call fastcc i32 @rocker_dma_rx_ring_skb_alloc(ptr noundef %add.ptr.i, ptr noundef nonnull %arrayidx.i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %attrs.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool9.not = icmp eq i32 %call23.i, 0
  br i1 %tobool9.not, label %rocker_port_rx_proc.exit.if.end19_crit_edge, label %rocker_port_rx_proc.exit.land.lhs.true_crit_edge

rocker_port_rx_proc.exit.land.lhs.true_crit_edge: ; preds = %rocker_port_rx_proc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

rocker_port_rx_proc.exit.if.end19_crit_edge:      ; preds = %rocker_port_rx_proc.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

land.lhs.true:                                    ; preds = %rocker_port_rx_proc.exit.land.lhs.true_crit_edge, %rocker_port_rx_proc.exit.thread
  %retval.0.i5382 = phi i32 [ %retval.0.i53.ph, %rocker_port_rx_proc.exit.thread ], [ %call23.i, %rocker_port_rx_proc.exit.land.lhs.true_crit_edge ]
  %call10 = call i32 @net_ratelimit() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.if.then17_crit_edge, label %if.then12

land.lhs.true.if.then17_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then17

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %92 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %93, ptr noundef nonnull @.str.126, i32 noundef %retval.0.i5382) #18
  br label %if.then17

if.then17:                                        ; preds = %if.then12, %land.lhs.true.if.then17_crit_edge, %if.then7, %if.then.if.then17_crit_edge
  %94 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %add.ptr.i, align 8
  %rx_errors = getelementptr inbounds %struct.net_device, ptr %95, i32 0, i32 36, i32 4
  %96 = ptrtoint ptr %rx_errors to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %rx_errors, align 8
  %inc = add i32 %97, 1
  store i32 %inc, ptr %rx_errors, align 8
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %rocker_port_rx_proc.exit.if.end19_crit_edge
  %98 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %desc.i.i, align 4
  %comp_err.i55 = getelementptr inbounds %struct.rocker_desc, ptr %99, i32 0, i32 5
  %100 = ptrtoint ptr %comp_err.i55 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %comp_err.i55, align 2
  %102 = and i16 %101, 32767
  store i16 %102, ptr %comp_err.i55, align 2
  %103 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %head.i, align 4
  %105 = ptrtoint ptr %rx_ring to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %rx_ring, align 4
  %inc.i.i56 = add i32 %104, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i56, i32 %106)
  %cmp.i.i57 = icmp eq i32 %inc.i.i56, %106
  %spec.select.i.i58 = select i1 %cmp.i.i57, i32 0, i32 %inc.i.i56
  %107 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %tail.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select.i.i58, i32 %108)
  %cmp.i60 = icmp eq i32 %spec.select.i.i58, %108
  br i1 %cmp.i60, label %do.body3.i, label %rocker_desc_head_set.exit, !prof !273

do.body3.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/net/ethernet/rocker/rocker_main.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 392, 0\0A.popsection", ""() #15, !srcloc !274
  unreachable

rocker_desc_head_set.exit:                        ; preds = %if.end19
  %data_size.i.i = getelementptr %struct.rocker_desc_info, ptr %11, i32 %7, i32 1
  %109 = ptrtoint ptr %data_size.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %data_size.i.i, align 4
  %conv.i.i61 = trunc i32 %110 to i16
  %111 = ptrtoint ptr %desc.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %desc.i.i, align 4
  %buf_size.i.i = getelementptr inbounds %struct.rocker_desc, ptr %112, i32 0, i32 2
  %113 = ptrtoint ptr %buf_size.i.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 %conv.i.i61, ptr %buf_size.i.i, align 8
  %114 = ptrtoint ptr %tlv_size8.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %tlv_size8.i, align 4
  %conv1.i.i = trunc i32 %115 to i16
  %116 = load ptr, ptr %desc.i.i, align 4
  %tlv_size3.i.i = getelementptr inbounds %struct.rocker_desc, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %tlv_size3.i.i to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv1.i.i, ptr %tlv_size3.i.i, align 2
  %118 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %spec.select.i.i58, ptr %head.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !275
  call void @arm_heavy_mb() #15
  %119 = call i32 @llvm.bswap.i32(i32 %spec.select.i.i58) #15
  %120 = ptrtoint ptr %hw_addr.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %hw_addr.i, align 4
  %122 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %type.i, align 4
  %mul.i = shl i32 %123, 5
  %add.i64 = add i32 %mul.i, 4108
  %add.ptr.i65 = getelementptr i8, ptr %121, i32 %add.i64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %119) #15, !srcloc !276
  %inc21 = add nuw i32 %credits.088, 1
  %exitcond.not = icmp eq i32 %inc21, %budget
  br i1 %exitcond.not, label %rocker_desc_head_set.exit.if.end25_crit_edge, label %rocker_desc_head_set.exit.land.rhs_crit_edge

rocker_desc_head_set.exit.land.rhs_crit_edge:     ; preds = %rocker_desc_head_set.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.rhs

rocker_desc_head_set.exit.if.end25_crit_edge:     ; preds = %rocker_desc_head_set.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then23.critedge:                               ; preds = %rocker_desc_tail_get.exit.if.then23.critedge_crit_edge, %if.end.i.if.then23.critedge_crit_edge, %land.rhs.if.then23.critedge_crit_edge
  %call24 = call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %credits.088) #15
  br label %if.end25

if.end25:                                         ; preds = %if.then23.critedge, %rocker_desc_head_set.exit.if.end25_crit_edge
  %credits.085 = phi i32 [ %credits.088, %if.then23.critedge ], [ %budget, %rocker_desc_head_set.exit.if.end25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %credits.085)
  %tobool.not.i66 = icmp eq i32 %credits.085, 0
  br i1 %tobool.not.i66, label %if.end25.rocker_dma_ring_credits_set.exit_crit_edge, label %do.body.i

if.end25.rocker_dma_ring_credits_set.exit_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_dma_ring_credits_set.exit

do.body.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !298
  call void @arm_heavy_mb() #15
  %124 = call i32 @llvm.bswap.i32(i32 %credits.085) #15
  %hw_addr.i67 = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 1
  %125 = ptrtoint ptr %hw_addr.i67 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %hw_addr.i67, align 4
  %type.i68 = getelementptr i8, ptr %napi, i32 276
  %127 = ptrtoint ptr %type.i68 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %type.i68, align 4
  %mul.i69 = shl i32 %128, 5
  %add.i70 = add i32 %mul.i69, 4120
  %add.ptr.i71 = getelementptr i8, ptr %126, i32 %add.i70
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i71, i32 %124) #15, !srcloc !276
  br label %rocker_dma_ring_credits_set.exit

rocker_dma_ring_credits_set.exit:                 ; preds = %do.body.i, %if.end25.rocker_dma_ring_credits_set.exit_crit_edge, %entry.rocker_dma_ring_credits_set.exit_crit_edge
  %credits.08593 = phi i32 [ 0, %if.end25.rocker_dma_ring_credits_set.exit_crit_edge ], [ %credits.085, %do.body.i ], [ 0, %entry.rocker_dma_ring_credits_set.exit_crit_edge ]
  ret i32 %credits.08593
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_cmd_get_port_settings_mode_proc(ptr nocapture noundef readnone %rocker_port, ptr nocapture noundef readonly %desc_info, ptr nocapture noundef writeonly %priv) #0 align 64 {
entry:
  %attrs = alloca [3 x ptr], align 4
  %info_attrs = alloca [10 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %attrs) #15
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %attrs, align 4, !annotation !278
  %1 = getelementptr inbounds [3 x ptr], ptr %attrs, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !278
  %3 = getelementptr inbounds [3 x ptr], ptr %attrs, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !278
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info_attrs) #15
  %5 = call ptr @memset(ptr %info_attrs, i32 255, i32 40)
  %6 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_info, align 4
  %desc.i = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 3
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i, align 4
  %tlv_size.i = getelementptr inbounds %struct.rocker_desc, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %tlv_size.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tlv_size.i, align 2
  %conv.i = zext i16 %11 to i32
  call void @rocker_tlv_parse(ptr noundef nonnull %attrs, i32 noundef 2, ptr noundef %7, i32 noundef %conv.i) #15
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 8
  %len.i.i = getelementptr inbounds %struct.rocker_tlv, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -8
  call void @rocker_tlv_parse(ptr noundef nonnull %info_attrs, i32 noundef 9, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i) #15
  %arrayidx3 = getelementptr inbounds [10 x ptr], ptr %info_attrs, i32 0, i32 6
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i12 = getelementptr i8, ptr %17, i32 8
  %18 = ptrtoint ptr %add.ptr.i.i12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr.i.i12, align 1
  %20 = ptrtoint ptr %priv to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %priv, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info_attrs) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %attrs) #15
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_cmd_get_port_settings_macaddr_proc(ptr nocapture noundef readnone %rocker_port, ptr nocapture noundef readonly %desc_info, ptr nocapture noundef writeonly %priv) #0 align 64 {
entry:
  %attrs = alloca [3 x ptr], align 4
  %info_attrs = alloca [10 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %attrs) #15
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %attrs, align 4, !annotation !278
  %1 = getelementptr inbounds [3 x ptr], ptr %attrs, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !278
  %3 = getelementptr inbounds [3 x ptr], ptr %attrs, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !278
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info_attrs) #15
  %5 = call ptr @memset(ptr %info_attrs, i32 255, i32 40)
  %6 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_info, align 4
  %desc.i = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 3
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i, align 4
  %tlv_size.i = getelementptr inbounds %struct.rocker_desc, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %tlv_size.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tlv_size.i, align 2
  %conv.i = zext i16 %11 to i32
  call void @rocker_tlv_parse(ptr noundef nonnull %attrs, i32 noundef 2, ptr noundef %7, i32 noundef %conv.i) #15
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 8
  %len.i.i = getelementptr inbounds %struct.rocker_tlv, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -8
  call void @rocker_tlv_parse(ptr noundef nonnull %info_attrs, i32 noundef 9, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i) #15
  %arrayidx3 = getelementptr inbounds [10 x ptr], ptr %info_attrs, i32 0, i32 5
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %len.i = getelementptr inbounds %struct.rocker_tlv, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 14, i16 %19)
  %cmp.not = icmp eq i16 %19, 14
  br i1 %cmp.not, label %if.end8, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i = getelementptr i8, ptr %17, i32 8
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 4
  %22 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %priv, align 4
  %add.ptr.i17 = getelementptr i8, ptr %17, i32 12
  %23 = ptrtoint ptr %add.ptr.i17 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i17, align 2
  %add.ptr1.i = getelementptr i8, ptr %priv, i32 4
  %25 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %add.ptr1.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info_attrs) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %attrs) #15
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rocker_port_get_drvinfo(ptr nocapture noundef readnone %dev, ptr noundef %drvinfo) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 1
  %call = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @rocker_driver_name, i32 noundef 32) #15
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %drvinfo, i32 0, i32 2
  %call2 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.123, i32 noundef 32) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #2

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rocker_port_get_strings(ptr nocapture noundef readnone %netdev, i32 noundef %stringset, ptr nocapture noundef writeonly %data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %stringset)
  %cond = icmp eq i32 %stringset, 1
  br i1 %cond, label %for.body.preheader, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = call ptr @memcpy(ptr %data, ptr @rocker_port_stats, i32 32)
  %add.ptr = getelementptr i8, ptr %data, i32 32
  %1 = call ptr @memcpy(ptr %add.ptr, ptr getelementptr inbounds ([8 x %struct.rocker_port_stats], ptr @rocker_port_stats, i32 0, i32 1), i32 32)
  %add.ptr.1 = getelementptr i8, ptr %data, i32 64
  %2 = call ptr @memcpy(ptr %add.ptr.1, ptr getelementptr inbounds ([8 x %struct.rocker_port_stats], ptr @rocker_port_stats, i32 0, i32 2), i32 32)
  %add.ptr.2 = getelementptr i8, ptr %data, i32 96
  %3 = call ptr @memcpy(ptr %add.ptr.2, ptr getelementptr inbounds ([8 x %struct.rocker_port_stats], ptr @rocker_port_stats, i32 0, i32 3), i32 32)
  %add.ptr.3 = getelementptr i8, ptr %data, i32 128
  %4 = call ptr @memcpy(ptr %add.ptr.3, ptr getelementptr inbounds ([8 x %struct.rocker_port_stats], ptr @rocker_port_stats, i32 0, i32 4), i32 32)
  %add.ptr.4 = getelementptr i8, ptr %data, i32 160
  %5 = call ptr @memcpy(ptr %add.ptr.4, ptr getelementptr inbounds ([8 x %struct.rocker_port_stats], ptr @rocker_port_stats, i32 0, i32 5), i32 32)
  %add.ptr.5 = getelementptr i8, ptr %data, i32 192
  %6 = call ptr @memcpy(ptr %add.ptr.5, ptr getelementptr inbounds ([8 x %struct.rocker_port_stats], ptr @rocker_port_stats, i32 0, i32 6), i32 32)
  %add.ptr.6 = getelementptr i8, ptr %data, i32 224
  %7 = call ptr @memcpy(ptr %add.ptr.6, ptr getelementptr inbounds ([8 x %struct.rocker_port_stats], ptr @rocker_port_stats, i32 0, i32 7), i32 32)
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.preheader, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rocker_port_get_stats(ptr noundef %dev, ptr nocapture noundef readnone %stats, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call.i = tail call i32 @rocker_cmd_exec(ptr noundef %add.ptr.i, i1 noundef zeroext false, ptr noundef nonnull @rocker_cmd_get_port_stats_prep, ptr noundef null, ptr noundef nonnull @rocker_cmd_get_port_stats_ethtool_proc, ptr noundef %data) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %for.body.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = call ptr @memset(ptr %data, i32 0, i32 64)
  br label %if.end

if.end:                                           ; preds = %for.body.preheader, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rocker_port_get_sset_count(ptr nocapture noundef readnone %netdev, i32 noundef %sset) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sset)
  %cond = icmp eq i32 %sset, 1
  %. = select i1 %cond, i32 8, i32 -95
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_port_get_link_ksettings(ptr noundef %dev, ptr noundef %ecmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %call.i = tail call i32 @rocker_cmd_exec(ptr noundef %add.ptr.i, i1 noundef zeroext false, ptr noundef nonnull @rocker_cmd_get_port_settings_prep, ptr noundef null, ptr noundef nonnull @rocker_cmd_get_port_settings_ethtool_proc, ptr noundef %ecmd) #15
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_port_set_link_ksettings(ptr noundef %dev, ptr nocapture noundef readonly %ecmd) #0 align 64 {
entry:
  %copy_ecmd.i = alloca %struct.ethtool_link_ksettings, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %copy_ecmd.i) #15
  %0 = call ptr @memcpy(ptr %copy_ecmd.i, ptr %ecmd, i32 88)
  %call.i = call i32 @rocker_cmd_exec(ptr noundef %add.ptr.i, i1 noundef zeroext false, ptr noundef nonnull @rocker_cmd_set_port_settings_ethtool_prep, ptr noundef nonnull %copy_ecmd.i, ptr noundef null, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %copy_ecmd.i) #15
  ret i32 %call.i
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_cmd_get_port_stats_prep(ptr nocapture noundef readonly %rocker_port, ptr noundef %desc_info, ptr nocapture noundef readnone %priv) #0 align 64 {
entry:
  %tmp.i13 = alloca i32, align 4
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #15
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 12, ptr %tmp.i, align 2
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc_info, align 4
  %tlv_size.i.i = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 2
  %3 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %4
  %call1.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 2, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool2.not17 = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not = select i1 %cmp.i, i1 true, i1 %tobool2.not17
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pport = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 4
  %5 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pport, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i13) #15
  %7 = ptrtoint ptr %tmp.i13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i13, align 4
  %call.i14 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i13) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i13) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14)
  %tobool6.not = icmp eq i32 %call.i14, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %8 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc_info, align 4
  %10 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i16 = getelementptr i8, ptr %9, i32 %11
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i16 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %len.i = getelementptr inbounds %struct.rocker_tlv, ptr %add.ptr.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_cmd_get_port_stats_ethtool_proc(ptr nocapture noundef readonly %rocker_port, ptr nocapture noundef readonly %desc_info, ptr nocapture noundef writeonly %priv) #0 align 64 {
entry:
  %attrs = alloca [3 x ptr], align 4
  %stats_attrs = alloca [10 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %attrs) #15
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %attrs, align 4, !annotation !278
  %1 = getelementptr inbounds [3 x ptr], ptr %attrs, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !278
  %3 = getelementptr inbounds [3 x ptr], ptr %attrs, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !278
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %stats_attrs) #15
  %5 = call ptr @memset(ptr %stats_attrs, i32 255, i32 40)
  %6 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_info, align 4
  %desc.i = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 3
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i, align 4
  %tlv_size.i = getelementptr inbounds %struct.rocker_desc, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %tlv_size.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tlv_size.i, align 2
  %conv.i = zext i16 %11 to i32
  call void @rocker_tlv_parse(ptr noundef nonnull %attrs, i32 noundef 2, ptr noundef %7, i32 noundef %conv.i) #15
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 8
  %len.i.i = getelementptr inbounds %struct.rocker_tlv, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -8
  call void @rocker_tlv_parse(ptr noundef nonnull %stats_attrs, i32 noundef 9, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i) #15
  %arrayidx3 = getelementptr inbounds [10 x ptr], ptr %stats_attrs, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %add.ptr.i.i30 = getelementptr i8, ptr %17, i32 8
  %18 = ptrtoint ptr %add.ptr.i.i30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i30, align 4
  %pport8 = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 4
  %20 = ptrtoint ptr %pport8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %pport8, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not = icmp eq i32 %19, %21
  br i1 %cmp.not, label %for.body.preheader, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.preheader:                               ; preds = %if.end6
  %arrayidx13 = getelementptr inbounds [10 x ptr], ptr %stats_attrs, i32 0, i32 2
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %23, null
  br i1 %tobool14.not, label %for.body.preheader.for.inc_crit_edge, label %if.end16

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end16:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i31 = getelementptr i8, ptr %23, i32 8
  %24 = ptrtoint ptr %add.ptr.i.i31 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %add.ptr.i.i31, align 8
  %26 = ptrtoint ptr %priv to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %priv, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.end16, %for.body.preheader.for.inc_crit_edge
  %arrayidx13.1 = getelementptr inbounds [10 x ptr], ptr %stats_attrs, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx13.1, align 4
  %tobool14.not.1 = icmp eq ptr %28, null
  br i1 %tobool14.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end16.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.1

if.end16.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i31.1 = getelementptr i8, ptr %28, i32 8
  %29 = ptrtoint ptr %add.ptr.i.i31.1 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %add.ptr.i.i31.1, align 8
  %arrayidx18.1 = getelementptr i64, ptr %priv, i32 1
  %31 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %30, ptr %arrayidx18.1, align 8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end16.1, %for.inc.for.inc.1_crit_edge
  %arrayidx13.2 = getelementptr inbounds [10 x ptr], ptr %stats_attrs, i32 0, i32 4
  %32 = ptrtoint ptr %arrayidx13.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx13.2, align 4
  %tobool14.not.2 = icmp eq ptr %33, null
  br i1 %tobool14.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.end16.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.2

if.end16.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i31.2 = getelementptr i8, ptr %33, i32 8
  %34 = ptrtoint ptr %add.ptr.i.i31.2 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %add.ptr.i.i31.2, align 8
  %arrayidx18.2 = getelementptr i64, ptr %priv, i32 2
  %36 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %35, ptr %arrayidx18.2, align 8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end16.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx13.3 = getelementptr inbounds [10 x ptr], ptr %stats_attrs, i32 0, i32 5
  %37 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx13.3, align 4
  %tobool14.not.3 = icmp eq ptr %38, null
  br i1 %tobool14.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.end16.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.3

if.end16.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i31.3 = getelementptr i8, ptr %38, i32 8
  %39 = ptrtoint ptr %add.ptr.i.i31.3 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %add.ptr.i.i31.3, align 8
  %arrayidx18.3 = getelementptr i64, ptr %priv, i32 3
  %41 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %arrayidx18.3, align 8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end16.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx13.4 = getelementptr inbounds [10 x ptr], ptr %stats_attrs, i32 0, i32 6
  %42 = ptrtoint ptr %arrayidx13.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx13.4, align 4
  %tobool14.not.4 = icmp eq ptr %43, null
  br i1 %tobool14.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.end16.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.4

if.end16.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i31.4 = getelementptr i8, ptr %43, i32 8
  %44 = ptrtoint ptr %add.ptr.i.i31.4 to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %add.ptr.i.i31.4, align 8
  %arrayidx18.4 = getelementptr i64, ptr %priv, i32 4
  %46 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_store8_noabort(i32 %46)
  store i64 %45, ptr %arrayidx18.4, align 8
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end16.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx13.5 = getelementptr inbounds [10 x ptr], ptr %stats_attrs, i32 0, i32 7
  %47 = ptrtoint ptr %arrayidx13.5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx13.5, align 4
  %tobool14.not.5 = icmp eq ptr %48, null
  br i1 %tobool14.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.end16.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.5

if.end16.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i31.5 = getelementptr i8, ptr %48, i32 8
  %49 = ptrtoint ptr %add.ptr.i.i31.5 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %add.ptr.i.i31.5, align 8
  %arrayidx18.5 = getelementptr i64, ptr %priv, i32 5
  %51 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %50, ptr %arrayidx18.5, align 8
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end16.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx13.6 = getelementptr inbounds [10 x ptr], ptr %stats_attrs, i32 0, i32 8
  %52 = ptrtoint ptr %arrayidx13.6 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx13.6, align 4
  %tobool14.not.6 = icmp eq ptr %53, null
  br i1 %tobool14.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.end16.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.6

if.end16.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i31.6 = getelementptr i8, ptr %53, i32 8
  %54 = ptrtoint ptr %add.ptr.i.i31.6 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %add.ptr.i.i31.6, align 8
  %arrayidx18.6 = getelementptr i64, ptr %priv, i32 6
  %56 = ptrtoint ptr %arrayidx18.6 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %arrayidx18.6, align 8
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end16.6, %for.inc.5.for.inc.6_crit_edge
  %arrayidx13.7 = getelementptr inbounds [10 x ptr], ptr %stats_attrs, i32 0, i32 9
  %57 = ptrtoint ptr %arrayidx13.7 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx13.7, align 4
  %tobool14.not.7 = icmp eq ptr %58, null
  br i1 %tobool14.not.7, label %for.inc.6.cleanup_crit_edge, label %if.end16.7

for.inc.6.cleanup_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end16.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i31.7 = getelementptr i8, ptr %58, i32 8
  %59 = ptrtoint ptr %add.ptr.i.i31.7 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %add.ptr.i.i31.7, align 8
  %arrayidx18.7 = getelementptr i64, ptr %priv, i32 7
  %61 = ptrtoint ptr %arrayidx18.7 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %60, ptr %arrayidx18.7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16.7, %for.inc.6.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %if.end6.cleanup_crit_edge ], [ 0, %if.end16.7 ], [ 0, %for.inc.6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %stats_attrs) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %attrs) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_cmd_get_port_settings_ethtool_proc(ptr nocapture noundef readnone %rocker_port, ptr nocapture noundef readonly %desc_info, ptr nocapture noundef %priv) #0 align 64 {
entry:
  %attrs = alloca [3 x ptr], align 4
  %info_attrs = alloca [10 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %attrs) #15
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %attrs, align 4, !annotation !278
  %1 = getelementptr inbounds [3 x ptr], ptr %attrs, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !278
  %3 = getelementptr inbounds [3 x ptr], ptr %attrs, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %3, align 4, !annotation !278
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %info_attrs) #15
  %5 = call ptr @memset(ptr %info_attrs, i32 255, i32 40)
  %6 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_info, align 4
  %desc.i = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 3
  %8 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc.i, align 4
  %tlv_size.i = getelementptr inbounds %struct.rocker_desc, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %tlv_size.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %tlv_size.i, align 2
  %conv.i = zext i16 %11 to i32
  call void @rocker_tlv_parse(ptr noundef nonnull %attrs, i32 noundef 2, ptr noundef %7, i32 noundef %conv.i) #15
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 8
  %len.i.i = getelementptr inbounds %struct.rocker_tlv, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %len.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -8
  call void @rocker_tlv_parse(ptr noundef nonnull %info_attrs, i32 noundef 9, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i) #15
  %arrayidx3 = getelementptr inbounds [10 x ptr], ptr %info_attrs, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %17, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx5 = getelementptr inbounds [10 x ptr], ptr %info_attrs, i32 0, i32 3
  %18 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx5, align 4
  %tobool6.not = icmp eq ptr %19, null
  br i1 %tobool6.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %arrayidx8 = getelementptr inbounds [10 x ptr], ptr %info_attrs, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %21, null
  br i1 %tobool9.not, label %lor.lhs.false7.cleanup_crit_edge, label %if.end11

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #17
  %add.ptr.i.i46 = getelementptr i8, ptr %17, i32 8
  %22 = ptrtoint ptr %add.ptr.i.i46 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i46, align 4
  %add.ptr.i.i47 = getelementptr i8, ptr %19, i32 8
  %24 = ptrtoint ptr %add.ptr.i.i47 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %add.ptr.i.i47, align 1
  %add.ptr.i.i48 = getelementptr i8, ptr %21, i32 8
  %26 = ptrtoint ptr %add.ptr.i.i48 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i.i48, align 1
  %link_modes = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %priv, i32 0, i32 1
  %28 = getelementptr inbounds %struct.ethtool_link_ksettings, ptr %priv, i32 0, i32 1, i32 0, i32 1
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_storeN_noabort(i32 %29, i32 8)
  store i64 0, ptr %28, align 4
  %30 = ptrtoint ptr %link_modes to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 128, ptr %link_modes, align 4
  %phy_address = getelementptr inbounds %struct.ethtool_link_settings, ptr %priv, i32 0, i32 4
  %31 = ptrtoint ptr %phy_address to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 -1, ptr %phy_address, align 2
  %port = getelementptr inbounds %struct.ethtool_link_settings, ptr %priv, i32 0, i32 3
  %32 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %port, align 1
  %speed23 = getelementptr inbounds %struct.ethtool_link_settings, ptr %priv, i32 0, i32 1
  %33 = ptrtoint ptr %speed23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %23, ptr %speed23, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool24.not = icmp ne i8 %25, 0
  %conv25 = zext i1 %tobool24.not to i8
  %duplex27 = getelementptr inbounds %struct.ethtool_link_settings, ptr %priv, i32 0, i32 2
  %34 = ptrtoint ptr %duplex27 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv25, ptr %duplex27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool29.not = icmp ne i8 %27, 0
  %conv31 = zext i1 %tobool29.not to i8
  %autoneg33 = getelementptr inbounds %struct.ethtool_link_settings, ptr %priv, i32 0, i32 5
  %35 = ptrtoint ptr %autoneg33 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv31, ptr %autoneg33, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ -5, %entry.cleanup_crit_edge ], [ -5, %lor.lhs.false7.cleanup_crit_edge ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %info_attrs) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %attrs) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_cmd_set_port_settings_ethtool_prep(ptr nocapture noundef readonly %rocker_port, ptr noundef %desc_info, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  %tmp.i39 = alloca i8, align 1
  %tmp.i37 = alloca i8, align 1
  %tmp.i35 = alloca i32, align 4
  %tmp.i33 = alloca i32, align 4
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #15
  %0 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 2, ptr %tmp.i, align 2
  %call.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #15
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc_info, align 4
  %tlv_size.i.i = getelementptr inbounds %struct.rocker_desc_info, ptr %desc_info, i32 0, i32 2
  %3 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %4
  %call1.i = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 2, i32 noundef 0, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool2.not43 = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not = select i1 %cmp.i, i1 true, i1 %tobool2.not43
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %pport = getelementptr inbounds %struct.rocker_port, ptr %rocker_port, i32 0, i32 4
  %5 = ptrtoint ptr %pport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pport, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i33) #15
  %7 = ptrtoint ptr %tmp.i33 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i33, align 4
  %call.i34 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i33) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i33) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i34)
  %tobool6.not = icmp eq i32 %call.i34, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %speed = getelementptr inbounds %struct.ethtool_link_settings, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %speed, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i35) #15
  %10 = ptrtoint ptr %tmp.i35 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tmp.i35, align 4
  %call.i36 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i35) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i35) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool10.not = icmp eq i32 %call.i36, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %duplex = getelementptr inbounds %struct.ethtool_link_settings, ptr %priv, i32 0, i32 2
  %11 = ptrtoint ptr %duplex to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %duplex, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i37) #15
  %13 = ptrtoint ptr %tmp.i37 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %tmp.i37, align 1
  %call.i38 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i37) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i37) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool15.not = icmp eq i32 %call.i38, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %autoneg = getelementptr inbounds %struct.ethtool_link_settings, ptr %priv, i32 0, i32 5
  %14 = ptrtoint ptr %autoneg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %autoneg, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i39) #15
  %16 = ptrtoint ptr %tmp.i39 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %tmp.i39, align 1
  %call.i40 = call i32 @rocker_tlv_put(ptr noundef %desc_info, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i39) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i39) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool20.not = icmp eq i32 %call.i40, 0
  br i1 %tobool20.not, label %if.end22, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #17
  %17 = ptrtoint ptr %desc_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc_info, align 4
  %19 = ptrtoint ptr %tlv_size.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tlv_size.i.i, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %18, i32 %20
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i42 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %len.i = getelementptr inbounds %struct.rocker_tlv, ptr %add.ptr.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %len.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i, ptr %len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -90, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ], [ -90, %if.end4.cleanup_crit_edge ], [ -90, %if.end8.cleanup_crit_edge ], [ -90, %if.end12.cleanup_crit_edge ], [ -90, %if.end17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rocker_router_fib_event_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rocker1 = getelementptr inbounds %struct.rocker_fib_event_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %rocker1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rocker1, align 4
  tail call void @rtnl_lock() #15
  %event = getelementptr inbounds %struct.rocker_fib_event_work, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.134)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 3, label %sw.bb2
    i32 4, label %entry.sw.bb5_crit_edge
    i32 5, label %entry.sw.bb5_crit_edge54
  ]

entry.sw.bb5_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb5

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %wops1.i = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %wops1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wops1.i, align 8
  %fib4_add.i = getelementptr inbounds %struct.rocker_world_ops, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %fib4_add.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fib4_add.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %sw.bb.if.end_crit_edge, label %rocker_world_fib4_add.exit

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

rocker_world_fib4_add.exit:                       ; preds = %sw.bb
  %9 = getelementptr inbounds %struct.rocker_fib_event_work, ptr %work, i32 0, i32 1
  %call.i = tail call i32 %8(ptr noundef %1, ptr noundef %9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %rocker_world_fib4_add.exit.if.end_crit_edge, label %if.then

rocker_world_fib4_add.exit.if.end_crit_edge:      ; preds = %rocker_world_fib4_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %rocker_world_fib4_add.exit
  %10 = ptrtoint ptr %wops1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wops1.i, align 8
  %fib4_abort.i = getelementptr inbounds %struct.rocker_world_ops, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %fib4_abort.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fib4_abort.i, align 4
  %tobool.not.i22 = icmp eq ptr %13, null
  br i1 %tobool.not.i22, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %13(ptr noundef %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then.i, %if.then.if.end_crit_edge, %rocker_world_fib4_add.exit.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %fi = getelementptr inbounds %struct.rocker_fib_event_work, ptr %work, i32 0, i32 1, i32 0, i32 3
  %14 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fi, align 4
  %fib_clntref.i = getelementptr inbounds %struct.fib_info, ptr %15, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !300
  tail call void @llvm.prefetch.p0(ptr %fib_clntref.i, i32 1, i32 3, i32 1) #15
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref.i, ptr %fib_clntref.i, i32 1, ptr elementtype(i32) %fib_clntref.i) #15, !srcloc !301
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i24, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.sw.epilog_crit_edge, label %if.then10.i.i.i.i, !prof !285

if.end5.i.i.i.i.sw.epilog_crit_edge:              ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %fib_clntref.i, i32 noundef 3) #15
  br label %sw.epilog

if.then.i24:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @free_fib_info(ptr noundef %15) #15
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %wops1.i26 = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %wops1.i26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %wops1.i26, align 8
  %fib4_del.i = getelementptr inbounds %struct.rocker_world_ops, ptr %18, i32 0, i32 26
  %19 = ptrtoint ptr %fib4_del.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fib4_del.i, align 4
  %tobool.not.i27 = icmp eq ptr %20, null
  br i1 %tobool.not.i27, label %sw.bb2.rocker_world_fib4_del.exit_crit_edge, label %if.end.i29

sw.bb2.rocker_world_fib4_del.exit_crit_edge:      ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_world_fib4_del.exit

if.end.i29:                                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #17
  %21 = getelementptr inbounds %struct.rocker_fib_event_work, ptr %work, i32 0, i32 1
  %call.i28 = tail call i32 %20(ptr noundef %1, ptr noundef %21) #15
  br label %rocker_world_fib4_del.exit

rocker_world_fib4_del.exit:                       ; preds = %if.end.i29, %sw.bb2.rocker_world_fib4_del.exit_crit_edge
  %fi4 = getelementptr inbounds %struct.rocker_fib_event_work, ptr %work, i32 0, i32 1, i32 0, i32 3
  %22 = ptrtoint ptr %fi4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fi4, align 4
  %fib_clntref.i30 = getelementptr inbounds %struct.fib_info, ptr %23, i32 0, i32 5
  %call.i.i.i.i.i.i31 = tail call zeroext i1 @__kasan_check_write(ptr noundef %fib_clntref.i30, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !300
  tail call void @llvm.prefetch.p0(ptr %fib_clntref.i30, i32 1, i32 3, i32 1) #15
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %fib_clntref.i30, ptr %fib_clntref.i30, i32 1, ptr elementtype(i32) %fib_clntref.i30) #15, !srcloc !301
  %asmresult.i.i.i.i.i.i.i32 = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i32)
  %cmp.i.i.i.i33 = icmp eq i32 %asmresult.i.i.i.i.i.i.i32, 1
  br i1 %cmp.i.i.i.i33, label %if.then.i37, label %if.end5.i.i.i.i35

if.end5.i.i.i.i35:                                ; preds = %rocker_world_fib4_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i32)
  %.not.i.i.i.i34 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i32, 0
  br i1 %.not.i.i.i.i34, label %if.end5.i.i.i.i35.sw.epilog_crit_edge, label %if.then10.i.i.i.i36, !prof !285

if.end5.i.i.i.i35.sw.epilog_crit_edge:            ; preds = %if.end5.i.i.i.i35
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then10.i.i.i.i36:                              ; preds = %if.end5.i.i.i.i35
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %fib_clntref.i30, i32 noundef 3) #15
  br label %sw.epilog

if.then.i37:                                      ; preds = %rocker_world_fib4_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !302
  tail call void @free_fib_info(ptr noundef %23) #15
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge54
  %rule6 = getelementptr inbounds %struct.rocker_fib_event_work, ptr %work, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %rule6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rule6, align 4
  %call7 = tail call zeroext i1 @fib4_rule_default(ptr noundef %26) #15
  br i1 %call7, label %sw.bb5.if.end9_crit_edge, label %if.then8

sw.bb5.if.end9_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then8:                                         ; preds = %sw.bb5
  %wops1.i40 = getelementptr inbounds %struct.rocker, ptr %1, i32 0, i32 10
  %27 = ptrtoint ptr %wops1.i40 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wops1.i40, align 8
  %fib4_abort.i41 = getelementptr inbounds %struct.rocker_world_ops, ptr %28, i32 0, i32 27
  %29 = ptrtoint ptr %fib4_abort.i41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %fib4_abort.i41, align 4
  %tobool.not.i42 = icmp eq ptr %30, null
  br i1 %tobool.not.i42, label %if.then8.if.end9_crit_edge, label %if.then.i43

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then.i43:                                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void %30(ptr noundef %1) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then.i43, %if.then8.if.end9_crit_edge, %sw.bb5.if.end9_crit_edge
  %refcnt.i = getelementptr inbounds %struct.fib_rule, ptr %26, i32 0, i32 15
  %call.i.i.i.i.i.i46 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !300
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !301
  %asmresult.i.i.i.i.i.i.i47 = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i47)
  %cmp.i.i.i.i48 = icmp eq i32 %asmresult.i.i.i.i.i.i.i47, 1
  br i1 %cmp.i.i.i.i48, label %refcount_dec_and_test.exit.i, label %if.end5.i.i.i.i50

if.end5.i.i.i.i50:                                ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i47)
  %.not.i.i.i.i49 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i47, 0
  br i1 %.not.i.i.i.i49, label %if.end5.i.i.i.i50.sw.epilog_crit_edge, label %if.then10.i.i.i.i51, !prof !285

if.end5.i.i.i.i50.sw.epilog_crit_edge:            ; preds = %if.end5.i.i.i.i50
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then10.i.i.i.i51:                              ; preds = %if.end5.i.i.i.i50
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %sw.epilog

refcount_dec_and_test.exit.i:                     ; preds = %if.end9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !302
  %tobool.not.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.not.i, label %refcount_dec_and_test.exit.i.sw.epilog_crit_edge, label %do.end.i

refcount_dec_and_test.exit.i.sw.epilog_crit_edge: ; preds = %refcount_dec_and_test.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.end.i:                                         ; preds = %refcount_dec_and_test.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %rcu.i = getelementptr inbounds %struct.fib_rule, ptr %26, i32 0, i32 24
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 120 to ptr)) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end.i, %refcount_dec_and_test.exit.i.sw.epilog_crit_edge, %if.then10.i.i.i.i51, %if.end5.i.i.i.i50.sw.epilog_crit_edge, %if.then.i37, %if.then10.i.i.i.i36, %if.end5.i.i.i.i35.sw.epilog_crit_edge, %if.then.i24, %if.then10.i.i.i.i, %if.end5.i.i.i.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  tail call void @rtnl_unlock() #15
  tail call void @kfree(ptr noundef %work) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fib4_rule_default(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_fib_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_switchdev_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %3, @rocker_port_netdev_ops
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %event)
  %cmp = icmp eq i32 %event, 9
  br i1 %cmp, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = tail call fastcc i32 @rocker_switchdev_port_attr_set_event(ptr noundef %1, ptr noundef %ptr)
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 72) #20
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %do.body32, !prof !273

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2772, i32 noundef 9, ptr noundef null) #15
  br label %cleanup

do.body32:                                        ; preds = %if.end4
  %add.ptr.i = getelementptr i8, ptr %1, i32 2304
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #15
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.129, ptr noundef nonnull @rocker_switchdev_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry36 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %entry36 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %entry36, ptr %entry36, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %entry36, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @rocker_switchdev_event_work, ptr %func, align 4
  %rocker_port40 = getelementptr inbounds %struct.rocker_switchdev_event_work, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %rocker_port40 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %add.ptr.i, ptr %rocker_port40, align 8
  %event41 = getelementptr inbounds %struct.rocker_switchdev_event_work, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %event41 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %event, ptr %event41, align 4
  %event.off = add i32 %event, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event.off)
  %switch = icmp ult i32 %event.off, 2
  br i1 %switch, label %sw.bb, label %sw.default

sw.bb:                                            ; preds = %do.body32
  %fdb_info42 = getelementptr inbounds %struct.rocker_switchdev_event_work, ptr %call7.i.i, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %fdb_info42, ptr %ptr, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i90 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2848, i32 noundef 6) #20
  %addr = getelementptr inbounds %struct.rocker_switchdev_event_work, ptr %call7.i.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i.i90, ptr %addr, align 8
  %tobool47.not = icmp eq ptr %call7.i.i90, null
  br i1 %tobool47.not, label %if.then56, label %if.end57, !prof !273

if.then56:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

if.end57:                                         ; preds = %sw.bb
  %addr60 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %ptr, i32 0, i32 1
  %14 = ptrtoint ptr %addr60 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %addr60, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %18 = ptrtoint ptr %call7.i.i90 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %call7.i.i90, align 8
  %add.ptr.i91 = getelementptr i8, ptr %15, i32 4
  %19 = ptrtoint ptr %add.ptr.i91 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i91, align 2
  %add.ptr1.i = getelementptr i8, ptr %call7.i.i90, i32 4
  %21 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %add.ptr1.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end57.dev_hold.exit_crit_edge, label %do.body1.i

if.end57.dev_hold.exit_crit_edge:                 ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_hold.exit

do.body1.i:                                       ; preds = %if.end57
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !303
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %23 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcpu_refcnt.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !263) #15
  %and.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %31, %25
  %32 = inttoptr i32 %add.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add13.i = add i32 %34, 1
  store i32 %add13.i, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !304
  %and.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !273

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #15, !srcloc !305
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %do.end30.i, %if.end57.dev_hold.exit_crit_edge
  %rocker = getelementptr i8, ptr %1, i32 2308
  %36 = ptrtoint ptr %rocker to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %rocker, align 4
  %rocker_owq = getelementptr inbounds %struct.rocker, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %rocker_owq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rocker_owq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %39, ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

sw.default:                                       ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %dev_hold.exit, %if.then56, %do.end, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then2 ], [ 32770, %do.end ], [ 0, %sw.default ], [ 32770, %if.then56 ], [ 0, %dev_hold.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rocker_switchdev_port_attr_set_event(ptr noundef %netdev, ptr nocapture noundef %port_attr_info) unnamed_addr #0 align 64 {
entry:
  %brport_flags_s.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %attr = getelementptr inbounds %struct.switchdev_notifier_port_attr_info, ptr %port_attr_info, i32 0, i32 1
  %0 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attr, align 4
  %add.ptr.i.i = getelementptr i8, ptr %netdev, i32 2304
  %id.i = getelementptr inbounds %struct.switchdev_attr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.135)
  switch i32 %3, label %entry.rocker_port_attr_set.exit.thread_crit_edge [
    i32 1, label %sw.bb.i
    i32 3, label %sw.bb2.i
    i32 2, label %sw.bb5.i
    i32 5, label %sw.bb8.i
  ]

entry.rocker_port_attr_set.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_port_attr_set.exit.thread

sw.bb.i:                                          ; preds = %entry
  %rocker.i.i = getelementptr i8, ptr %netdev, i32 2308
  %5 = ptrtoint ptr %rocker.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rocker.i.i, align 4
  %wops1.i.i = getelementptr inbounds %struct.rocker, ptr %6, i32 0, i32 10
  %7 = ptrtoint ptr %wops1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %wops1.i.i, align 8
  %port_attr_stp_state_set.i.i = getelementptr inbounds %struct.rocker_world_ops, ptr %8, i32 0, i32 12
  %9 = ptrtoint ptr %port_attr_stp_state_set.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %port_attr_stp_state_set.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i, label %sw.bb.i.rocker_port_attr_set.exit.thread_crit_edge, label %if.end.i.i

sw.bb.i.rocker_port_attr_set.exit.thread_crit_edge: ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_port_attr_set.exit.thread

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  %u.i = getelementptr inbounds %struct.switchdev_attr, ptr %1, i32 0, i32 5
  %11 = ptrtoint ptr %u.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %u.i, align 4
  %call.i.i = tail call i32 %10(ptr noundef %add.ptr.i.i, i8 noundef zeroext %12) #15
  br label %rocker_port_attr_set.exit

sw.bb2.i:                                         ; preds = %entry
  %.elt21.i = getelementptr inbounds %struct.switchdev_attr, ptr %1, i32 0, i32 5, i32 0, i32 1
  %13 = ptrtoint ptr %.elt21.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.unpack22.i = load i32, ptr %.elt21.i, align 4
  %rocker.i23.i = getelementptr i8, ptr %netdev, i32 2308
  %14 = ptrtoint ptr %rocker.i23.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rocker.i23.i, align 4
  %wops1.i24.i = getelementptr inbounds %struct.rocker, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %wops1.i24.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wops1.i24.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %brport_flags_s.i.i) #15
  %18 = ptrtoint ptr %brport_flags_s.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %brport_flags_s.i.i, align 4, !annotation !278
  %port_attr_bridge_flags_set.i.i = getelementptr inbounds %struct.rocker_world_ops, ptr %17, i32 0, i32 13
  %19 = ptrtoint ptr %port_attr_bridge_flags_set.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %port_attr_bridge_flags_set.i.i, align 4
  %tobool.not.i25.i = icmp eq ptr %20, null
  br i1 %tobool.not.i25.i, label %sw.bb2.i.rocker_world_port_attr_pre_bridge_flags_set.exit.i_crit_edge, label %if.end.i26.i

sw.bb2.i.rocker_world_port_attr_pre_bridge_flags_set.exit.i_crit_edge: ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_world_port_attr_pre_bridge_flags_set.exit.i

if.end.i26.i:                                     ; preds = %sw.bb2.i
  %port_attr_bridge_flags_support_get.i.i.i = getelementptr inbounds %struct.rocker_world_ops, ptr %17, i32 0, i32 14
  %21 = ptrtoint ptr %port_attr_bridge_flags_support_get.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %port_attr_bridge_flags_support_get.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i, label %if.end.i26.i.rocker_world_port_attr_pre_bridge_flags_set.exit.i_crit_edge, label %rocker_world_port_attr_bridge_flags_support_get.exit.i.i

if.end.i26.i.rocker_world_port_attr_pre_bridge_flags_set.exit.i_crit_edge: ; preds = %if.end.i26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_world_port_attr_pre_bridge_flags_set.exit.i

rocker_world_port_attr_bridge_flags_support_get.exit.i.i: ; preds = %if.end.i26.i
  %call.i.i.i = call i32 %22(ptr noundef %add.ptr.i.i, ptr noundef nonnull %brport_flags_s.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %rocker_world_port_attr_bridge_flags_support_get.exit.i.i.rocker_world_port_attr_pre_bridge_flags_set.exit.i_crit_edge

rocker_world_port_attr_bridge_flags_support_get.exit.i.i.rocker_world_port_attr_pre_bridge_flags_set.exit.i_crit_edge: ; preds = %rocker_world_port_attr_bridge_flags_support_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_world_port_attr_pre_bridge_flags_set.exit.i

if.end4.i.i:                                      ; preds = %rocker_world_port_attr_bridge_flags_support_get.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %brport_flags_s.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %brport_flags_s.i.i, align 4
  %neg.i.i = xor i32 %24, -1
  %and.i.i = and i32 %.unpack22.i, %neg.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %tobool5.not.i.i, i32 0, i32 -22
  br label %rocker_world_port_attr_pre_bridge_flags_set.exit.i

rocker_world_port_attr_pre_bridge_flags_set.exit.i: ; preds = %if.end4.i.i, %rocker_world_port_attr_bridge_flags_support_get.exit.i.i.rocker_world_port_attr_pre_bridge_flags_set.exit.i_crit_edge, %if.end.i26.i.rocker_world_port_attr_pre_bridge_flags_set.exit.i_crit_edge, %sw.bb2.i.rocker_world_port_attr_pre_bridge_flags_set.exit.i_crit_edge
  %retval.0.i27.i = phi i32 [ -95, %sw.bb2.i.rocker_world_port_attr_pre_bridge_flags_set.exit.i_crit_edge ], [ %call.i.i.i, %rocker_world_port_attr_bridge_flags_support_get.exit.i.i.rocker_world_port_attr_pre_bridge_flags_set.exit.i_crit_edge ], [ %..i.i, %if.end4.i.i ], [ -95, %if.end.i26.i.rocker_world_port_attr_pre_bridge_flags_set.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %brport_flags_s.i.i) #15
  br label %rocker_port_attr_set.exit

sw.bb5.i:                                         ; preds = %entry
  %rocker.i28.i = getelementptr i8, ptr %netdev, i32 2308
  %25 = ptrtoint ptr %rocker.i28.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rocker.i28.i, align 4
  %wops1.i29.i = getelementptr inbounds %struct.rocker, ptr %26, i32 0, i32 10
  %27 = ptrtoint ptr %wops1.i29.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %wops1.i29.i, align 8
  %port_attr_bridge_flags_set.i30.i = getelementptr inbounds %struct.rocker_world_ops, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %port_attr_bridge_flags_set.i30.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %port_attr_bridge_flags_set.i30.i, align 4
  %tobool.not.i31.i = icmp eq ptr %30, null
  br i1 %tobool.not.i31.i, label %sw.bb5.i.rocker_port_attr_set.exit.thread_crit_edge, label %if.end.i33.i

sw.bb5.i.rocker_port_attr_set.exit.thread_crit_edge: ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_port_attr_set.exit.thread

if.end.i33.i:                                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #17
  %u6.i = getelementptr inbounds %struct.switchdev_attr, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %u6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.unpack.i = load i32, ptr %u6.i, align 4
  %call.i32.i = tail call i32 %30(ptr noundef %add.ptr.i.i, i32 noundef %.unpack.i) #15
  br label %rocker_port_attr_set.exit

sw.bb8.i:                                         ; preds = %entry
  %rocker.i35.i = getelementptr i8, ptr %netdev, i32 2308
  %32 = ptrtoint ptr %rocker.i35.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rocker.i35.i, align 4
  %wops1.i36.i = getelementptr inbounds %struct.rocker, ptr %33, i32 0, i32 10
  %34 = ptrtoint ptr %wops1.i36.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wops1.i36.i, align 8
  %port_attr_bridge_ageing_time_set.i.i = getelementptr inbounds %struct.rocker_world_ops, ptr %35, i32 0, i32 15
  %36 = ptrtoint ptr %port_attr_bridge_ageing_time_set.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port_attr_bridge_ageing_time_set.i.i, align 4
  %tobool.not.i37.i = icmp eq ptr %37, null
  br i1 %tobool.not.i37.i, label %sw.bb8.i.rocker_port_attr_set.exit.thread_crit_edge, label %if.end.i39.i

sw.bb8.i.rocker_port_attr_set.exit.thread_crit_edge: ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rocker_port_attr_set.exit.thread

if.end.i39.i:                                     ; preds = %sw.bb8.i
  call void @__sanitizer_cov_trace_pc() #17
  %u9.i = getelementptr inbounds %struct.switchdev_attr, ptr %1, i32 0, i32 5
  %38 = ptrtoint ptr %u9.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %u9.i, align 4
  %call.i38.i = tail call i32 %37(ptr noundef %add.ptr.i.i, i32 noundef %39) #15
  br label %rocker_port_attr_set.exit

rocker_port_attr_set.exit.thread:                 ; preds = %sw.bb8.i.rocker_port_attr_set.exit.thread_crit_edge, %sw.bb5.i.rocker_port_attr_set.exit.thread_crit_edge, %sw.bb.i.rocker_port_attr_set.exit.thread_crit_edge, %entry.rocker_port_attr_set.exit.thread_crit_edge
  %handled4 = getelementptr inbounds %struct.switchdev_notifier_port_attr_info, ptr %port_attr_info, i32 0, i32 2
  %40 = ptrtoint ptr %handled4 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %handled4, align 4
  br label %42

rocker_port_attr_set.exit:                        ; preds = %if.end.i39.i, %if.end.i33.i, %rocker_world_port_attr_pre_bridge_flags_set.exit.i, %if.end.i.i
  %err.0.i = phi i32 [ %retval.0.i27.i, %rocker_world_port_attr_pre_bridge_flags_set.exit.i ], [ %call.i.i, %if.end.i.i ], [ %call.i32.i, %if.end.i33.i ], [ %call.i38.i, %if.end.i39.i ]
  %handled = getelementptr inbounds %struct.switchdev_notifier_port_attr_info, ptr %port_attr_info, i32 0, i32 2
  %41 = ptrtoint ptr %handled to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %handled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool.not.i = icmp eq i32 %err.0.i, 0
  %sub.i = sub i32 1, %err.0.i
  %or.i = or i32 %sub.i, 32768
  %spec.select = select i1 %tobool.not.i, i32 1, i32 %or.i
  br label %42

42:                                               ; preds = %rocker_port_attr_set.exit, %rocker_port_attr_set.exit.thread
  %43 = phi i32 [ 32864, %rocker_port_attr_set.exit.thread ], [ %spec.select, %rocker_port_attr_set.exit ]
  ret i32 %43
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rocker_switchdev_event_work(ptr noundef %work) #0 align 64 {
entry:
  %info.i = alloca %struct.switchdev_notifier_fdb_info, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rocker_port1 = getelementptr inbounds %struct.rocker_switchdev_event_work, ptr %work, i32 0, i32 2
  %0 = ptrtoint ptr %rocker_port1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rocker_port1, align 4
  tail call void @rtnl_lock() #15
  %event = getelementptr inbounds %struct.rocker_switchdev_event_work, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.136)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb19
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %added_by_user = getelementptr inbounds %struct.rocker_switchdev_event_work, ptr %work, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %added_by_user to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %added_by_user, align 2
  %6 = and i8 %bf.load, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %6)
  %7 = icmp eq i8 %6, -128
  br i1 %7, label %if.end, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %rocker.i = getelementptr inbounds %struct.rocker_port, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %rocker.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rocker.i, align 4
  %wops1.i = getelementptr inbounds %struct.rocker, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %wops1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wops1.i, align 8
  %port_obj_fdb_add.i = getelementptr inbounds %struct.rocker_world_ops, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %port_obj_fdb_add.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %port_obj_fdb_add.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.do.body8_crit_edge, label %rocker_world_port_fdb_add.exit

if.end.do.body8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body8

rocker_world_port_fdb_add.exit:                   ; preds = %if.end
  %vid.i = getelementptr inbounds %struct.rocker_switchdev_event_work, ptr %work, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vid.i, align 4
  %addr.i = getelementptr inbounds %struct.rocker_switchdev_event_work, ptr %work, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %addr.i, align 4
  %call.i = tail call i32 %13(ptr noundef %1, i16 noundef zeroext %15, ptr noundef %17) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool6.not = icmp eq i32 %call.i, 0
  br i1 %tobool6.not, label %if.end18, label %rocker_world_port_fdb_add.exit.do.body8_crit_edge

rocker_world_port_fdb_add.exit.do.body8_crit_edge: ; preds = %rocker_world_port_fdb_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body8

do.body8:                                         ; preds = %rocker_world_port_fdb_add.exit.do.body8_crit_edge, %if.end.do.body8_crit_edge
  %retval.0.i8398 = phi i32 [ %call.i, %rocker_world_port_fdb_add.exit.do.body8_crit_edge ], [ -95, %if.end.do.body8_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rocker_switchdev_event_work.__UNIQUE_ID_ddebug493, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rocker_switchdev_event_work, %if.then14)) #15
          to label %sw.epilog [label %if.then14], !srcloc !306

if.then14:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #17
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rocker_switchdev_event_work.__UNIQUE_ID_ddebug493, ptr noundef %19, ptr noundef nonnull @.str.132, i32 noundef %retval.0.i8398) #15
  br label %sw.epilog

if.end18:                                         ; preds = %rocker_world_port_fdb_add.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %info.i) #15
  %20 = call ptr @memset(ptr %info.i, i32 0, i32 20)
  %21 = ptrtoint ptr %addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr.i, align 4
  %addr1.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 1
  %23 = ptrtoint ptr %addr1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %addr1.i, align 4
  %24 = ptrtoint ptr %vid.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %vid.i, align 4
  %vid2.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 2
  %26 = ptrtoint ptr %vid2.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %vid2.i, align 4
  %offloaded.i = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %info.i, i32 0, i32 3
  %27 = ptrtoint ptr %offloaded.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 32, ptr %offloaded.i, align 2
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 8
  %call.i86 = call i32 @call_switchdev_notifiers(i32 noundef 5, ptr noundef %29, ptr noundef nonnull %info.i, ptr noundef null) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %info.i) #15
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %added_by_user21 = getelementptr inbounds %struct.rocker_switchdev_event_work, ptr %work, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %added_by_user21 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load22 = load i8, ptr %added_by_user21, align 2
  %31 = and i8 %bf.load22, -64
  call void @__sanitizer_cov_trace_const_cmp1(i8 -128, i8 %31)
  %32 = icmp eq i8 %31, -128
  br i1 %32, label %if.end33, label %sw.bb19.sw.epilog_crit_edge

sw.bb19.sw.epilog_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end33:                                         ; preds = %sw.bb19
  %rocker.i87 = getelementptr inbounds %struct.rocker_port, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %rocker.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rocker.i87, align 4
  %wops1.i88 = getelementptr inbounds %struct.rocker, ptr %34, i32 0, i32 10
  %35 = ptrtoint ptr %wops1.i88 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wops1.i88, align 8
  %port_obj_fdb_del.i = getelementptr inbounds %struct.rocker_world_ops, ptr %36, i32 0, i32 19
  %37 = ptrtoint ptr %port_obj_fdb_del.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %port_obj_fdb_del.i, align 4
  %tobool.not.i89 = icmp eq ptr %38, null
  br i1 %tobool.not.i89, label %if.end33.do.body38_crit_edge, label %rocker_world_port_fdb_del.exit

if.end33.do.body38_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body38

rocker_world_port_fdb_del.exit:                   ; preds = %if.end33
  %vid.i90 = getelementptr inbounds %struct.rocker_switchdev_event_work, ptr %work, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %vid.i90 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vid.i90, align 4
  %addr.i91 = getelementptr inbounds %struct.rocker_switchdev_event_work, ptr %work, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %addr.i91 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %addr.i91, align 4
  %call.i92 = tail call i32 %38(ptr noundef %1, i16 noundef zeroext %40, ptr noundef %42) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92)
  %tobool35.not = icmp eq i32 %call.i92, 0
  br i1 %tobool35.not, label %rocker_world_port_fdb_del.exit.sw.epilog_crit_edge, label %rocker_world_port_fdb_del.exit.do.body38_crit_edge

rocker_world_port_fdb_del.exit.do.body38_crit_edge: ; preds = %rocker_world_port_fdb_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body38

rocker_world_port_fdb_del.exit.sw.epilog_crit_edge: ; preds = %rocker_world_port_fdb_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

do.body38:                                        ; preds = %rocker_world_port_fdb_del.exit.do.body38_crit_edge, %if.end33.do.body38_crit_edge
  %retval.0.i94102 = phi i32 [ %call.i92, %rocker_world_port_fdb_del.exit.do.body38_crit_edge ], [ -95, %if.end33.do.body38_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rocker_switchdev_event_work.__UNIQUE_ID_ddebug494, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@rocker_switchdev_event_work, %if.then50)) #15
          to label %sw.epilog [label %if.then50], !srcloc !306

if.then50:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #17
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_netdev_dbg(ptr noundef nonnull @rocker_switchdev_event_work.__UNIQUE_ID_ddebug494, ptr noundef %44, ptr noundef nonnull @.str.132, i32 noundef %retval.0.i94102) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then50, %do.body38, %rocker_world_port_fdb_del.exit.sw.epilog_crit_edge, %sw.bb19.sw.epilog_crit_edge, %if.end18, %if.then14, %do.body8, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  call void @rtnl_unlock() #15
  %addr = getelementptr inbounds %struct.rocker_switchdev_event_work, ptr %work, i32 0, i32 1, i32 1
  %45 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %addr, align 4
  call void @kfree(ptr noundef %46) #15
  call void @kfree(ptr noundef %work) #15
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 8
  %tobool.not.i95 = icmp eq ptr %48, null
  br i1 %tobool.not.i95, label %sw.epilog.dev_put.exit_crit_edge, label %do.body1.i

sw.epilog.dev_put.exit_crit_edge:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put.exit

do.body1.i:                                       ; preds = %sw.epilog
  %49 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !303
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %48, i32 0, i32 118
  %50 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcpu_refcnt.i, align 4
  %52 = ptrtoint ptr %51 to i32
  %53 = call i32 @llvm.read_register.i32(metadata !263) #15
  %and.i.i = and i32 %53, -16384
  %54 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %56
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %58, %52
  %59 = inttoptr i32 %add.i to ptr
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  %add13.i = add i32 %61, -1
  store i32 %add13.i, ptr %59, align 4
  %62 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !304
  %and.i.i.i = and i32 %62, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !273

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @warn_bogus_irq_restore() #15
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %49) #15, !srcloc !305
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %sw.epilog.dev_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_netdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_switchdev_notifiers(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #14

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rocker_switchdev_blocking_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %netdev_ops.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp eq ptr %3, @rocker_port_netdev_ops
  br i1 %cmp.i, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.137)
  switch i32 %event, label %if.end.cleanup_crit_edge [
    i32 9, label %sw.bb3
    i32 7, label %sw.bb.i
    i32 8, label %sw.bb1.i
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end
  %obj.i = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 1
  %5 = ptrtoint ptr %obj.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %obj.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 2304
  %id.i.i = getelementptr inbounds %struct.switchdev_obj, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cond.i.i = icmp eq i32 %8, 1
  br i1 %cond.i.i, label %sw.bb.i.i, label %sw.bb.i.sw.epilog.thread.i_crit_edge

sw.bb.i.sw.epilog.thread.i_crit_edge:             ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread.i

sw.bb.i.i:                                        ; preds = %sw.bb.i
  %rocker.i.i.i = getelementptr i8, ptr %1, i32 2308
  %9 = ptrtoint ptr %rocker.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rocker.i.i.i, align 4
  %wops1.i.i.i = getelementptr inbounds %struct.rocker, ptr %10, i32 0, i32 10
  %11 = ptrtoint ptr %wops1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wops1.i.i.i, align 8
  %port_obj_vlan_add.i.i.i = getelementptr inbounds %struct.rocker_world_ops, ptr %12, i32 0, i32 16
  %13 = ptrtoint ptr %port_obj_vlan_add.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %port_obj_vlan_add.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %sw.bb.i.i.sw.epilog.thread.i_crit_edge, label %if.end.i.i.i

sw.bb.i.i.sw.epilog.thread.i_crit_edge:           ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread.i

if.end.i.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call i32 %14(ptr noundef %add.ptr.i.i.i, ptr noundef %6) #15
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end
  %obj2.i = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 1
  %15 = ptrtoint ptr %obj2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %obj2.i, align 4
  %add.ptr.i.i8.i = getelementptr i8, ptr %1, i32 2304
  %id.i9.i = getelementptr inbounds %struct.switchdev_obj, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %id.i9.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %id.i9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cond.i10.i = icmp eq i32 %18, 1
  br i1 %cond.i10.i, label %sw.bb.i11.i, label %sw.bb1.i.sw.epilog.thread.i_crit_edge

sw.bb1.i.sw.epilog.thread.i_crit_edge:            ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread.i

sw.bb.i11.i:                                      ; preds = %sw.bb1.i
  %orig_dev.i.i.i = getelementptr inbounds %struct.switchdev_obj, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %orig_dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %orig_dev.i.i.i, align 4
  %priv_flags.i.i.i.i = getelementptr inbounds %struct.net_device, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %priv_flags.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %priv_flags.i.i.i.i, align 16
  %and.i.i.i.i = and i64 %22, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i64 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %if.end.i.i15.i, label %sw.bb.i11.i.sw.epilog.thread.i_crit_edge

sw.bb.i11.i.sw.epilog.thread.i_crit_edge:         ; preds = %sw.bb.i11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread.i

if.end.i.i15.i:                                   ; preds = %sw.bb.i11.i
  %rocker.i.i12.i = getelementptr i8, ptr %1, i32 2308
  %23 = ptrtoint ptr %rocker.i.i12.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rocker.i.i12.i, align 4
  %wops1.i.i13.i = getelementptr inbounds %struct.rocker, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %wops1.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wops1.i.i13.i, align 8
  %port_obj_vlan_del.i.i.i = getelementptr inbounds %struct.rocker_world_ops, ptr %26, i32 0, i32 17
  %27 = ptrtoint ptr %port_obj_vlan_del.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %port_obj_vlan_del.i.i.i, align 4
  %tobool.not.i.i14.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i14.i, label %if.end.i.i15.i.sw.epilog.thread.i_crit_edge, label %if.end3.i.i.i

if.end.i.i15.i.sw.epilog.thread.i_crit_edge:      ; preds = %if.end.i.i15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.thread.i

if.end3.i.i.i:                                    ; preds = %if.end.i.i15.i
  call void @__sanitizer_cov_trace_pc() #17
  %call5.i.i.i = tail call i32 %28(ptr noundef %add.ptr.i.i8.i, ptr noundef %16) #15
  br label %sw.epilog.i

sw.epilog.thread.i:                               ; preds = %if.end.i.i15.i.sw.epilog.thread.i_crit_edge, %sw.bb.i11.i.sw.epilog.thread.i_crit_edge, %sw.bb1.i.sw.epilog.thread.i_crit_edge, %sw.bb.i.i.sw.epilog.thread.i_crit_edge, %sw.bb.i.sw.epilog.thread.i_crit_edge
  %handled18.i = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 2
  %29 = ptrtoint ptr %handled18.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %handled18.i, align 4
  br label %cleanup

sw.epilog.i:                                      ; preds = %if.end3.i.i.i, %if.end.i.i.i
  %err.0.i = phi i32 [ %call.i.i.i, %if.end.i.i.i ], [ %call5.i.i.i, %if.end3.i.i.i ]
  %handled.i = getelementptr inbounds %struct.switchdev_notifier_port_obj_info, ptr %ptr, i32 0, i32 2
  %30 = ptrtoint ptr %handled.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %handled.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool.not.i.i = icmp eq i32 %err.0.i, 0
  %sub.i.i = sub i32 1, %err.0.i
  %or.i.i = or i32 %sub.i.i, 32768
  %spec.select.i = select i1 %tobool.not.i.i, i32 1, i32 %or.i.i
  br label %cleanup

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call fastcc i32 @rocker_switchdev_port_attr_set_event(ptr noundef %1, ptr noundef %ptr)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb3, %sw.epilog.i, %sw.epilog.thread.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %sw.bb3 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 32864, %sw.epilog.thread.i ], [ %spec.select.i, %sw.epilog.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netevent_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { nounwind readonly }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !67, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !183, !185, !186, !187, !189, !191, !193, !194, !195, !196, !198, !199, !200, !202, !203, !204, !206, !207, !208, !210, !211, !212, !213, !215, !216, !217, !219, !220, !221, !222, !224, !226, !227, !228, !229, !230, !232, !234, !236, !238, !240, !242, !244, !245, !247, !249, !251, !253, !254, !256, !257, !258, !259, !261}
!llvm.named.register.sp = !{!263}
!llvm.module.flags = !{!264, !265, !266, !267, !268, !269, !270, !271}
!llvm.ident = !{!272}

!0 = !{ptr @__initcall__kmod_rocker__495_3192_rocker_module_init6, !1, !"__initcall__kmod_rocker__495_3192_rocker_module_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 3192, i32 1}
!2 = !{ptr @__exitcall_rocker_module_exit, !3, !"__exitcall_rocker_module_exit", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 3193, i32 1}
!4 = !{ptr @__UNIQUE_ID_file496, !5, !"__UNIQUE_ID_file496", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 3195, i32 1}
!6 = !{ptr @__UNIQUE_ID_license497, !5, !"__UNIQUE_ID_license497", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author498, !8, !"__UNIQUE_ID_author498", i1 false, i1 false}
!8 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 3196, i32 1}
!9 = !{ptr @__UNIQUE_ID_author499, !10, !"__UNIQUE_ID_author499", i1 false, i1 false}
!10 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 3197, i32 1}
!11 = !{ptr @__UNIQUE_ID_description500, !12, !"__UNIQUE_ID_description500", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 3198, i32 1}
!13 = !{ptr @rocker_wait_init.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 62, i32 2}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 84, i32 2}
!18 = !{ptr @rocker_port_netdev_ops, !19, !"rocker_port_netdev_ops", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2022, i32 36}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 1769, i32 32}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 1777, i32 32}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 1783, i32 32}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 797, i32 32}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 805, i32 32}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 814, i32 32}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 822, i32 32}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 828, i32 32}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!38 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @rocker_driver_name, !41, !"rocker_driver_name", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 41, i32 19}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 1895, i32 20}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 1861, i32 33}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 1970, i32 19}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2006, i32 33}
!50 = !{ptr @rocker_netevent_nb, !51, !"rocker_netevent_nb", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 3160, i32 30}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 3152, i32 21}
!54 = !{ptr @rocker_netdevice_nb, !55, !"rocker_netdevice_nb", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 3126, i32 30}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 3112, i32 22}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 3118, i32 22}
!60 = !{ptr @rocker_pci_driver, !61, !"rocker_pci_driver", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 3027, i32 26}
!62 = !{ptr @rocker_pci_id_table, !63, !"rocker_pci_id_table", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 43, i32 35}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2863, i32 3}
!66 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rocker_probe._entry, !65, !"_entry", i1 false, i1 false}
!70 = !{ptr @rocker_probe._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2869, i32 3}
!73 = !{ptr @rocker_probe._entry.23, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @rocker_probe._entry_ptr.25, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2875, i32 3}
!77 = !{ptr @rocker_probe._entry.26, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @rocker_probe._entry_ptr.28, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2880, i32 3}
!81 = !{ptr @rocker_probe._entry.29, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @rocker_probe._entry_ptr.31, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2888, i32 3}
!85 = !{ptr @rocker_probe._entry.32, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @rocker_probe._entry_ptr.34, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2901, i32 3}
!89 = !{ptr @rocker_probe._entry.35, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @rocker_probe._entry_ptr.37, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2907, i32 3}
!93 = !{ptr @rocker_probe._entry.38, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @rocker_probe._entry_ptr.40, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2921, i32 3}
!97 = !{ptr @rocker_probe._entry.41, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @rocker_probe._entry_ptr.43, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2929, i32 3}
!101 = !{ptr @rocker_probe._entry.44, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @rocker_probe._entry_ptr.46, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2942, i32 3}
!105 = !{ptr @rocker_probe._entry.47, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @rocker_probe._entry_ptr.49, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2956, i32 3}
!109 = !{ptr @rocker_probe._entry.50, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @rocker_probe._entry_ptr.52, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2963, i32 3}
!113 = !{ptr @rocker_probe._entry.53, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @rocker_probe._entry_ptr.55, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2969, i32 2}
!117 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @rocker_probe._entry.56, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @rocker_probe._entry_ptr.59, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.60, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 276, i32 3}
!122 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @rocker_basic_hw_test._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @rocker_basic_hw_test._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.63, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 284, i32 3}
!127 = !{ptr @rocker_basic_hw_test._entry.62, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @rocker_basic_hw_test._entry_ptr.64, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.66, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 292, i32 3}
!131 = !{ptr @rocker_basic_hw_test._entry.65, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @rocker_basic_hw_test._entry_ptr.67, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 299, i32 3}
!135 = !{ptr @rocker_basic_hw_test._entry.68, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @rocker_basic_hw_test._entry_ptr.70, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.71, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 137, i32 3}
!139 = !{ptr @.str.72, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @rocker_reg_test._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @rocker_reg_test._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 148, i32 3}
!144 = !{ptr @rocker_reg_test._entry.73, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @rocker_reg_test._entry_ptr.75, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.76, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 168, i32 3}
!148 = !{ptr @rocker_dma_test_one._entry, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @rocker_dma_test_one._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.78, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 174, i32 4}
!152 = !{ptr @rocker_dma_test_one._entry.77, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @rocker_dma_test_one._entry_ptr.79, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 614, i32 3}
!156 = !{ptr @.str.81, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @rocker_dma_rings_init._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @rocker_dma_rings_init._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @rocker_dma_rings_init.__key, !160, !"__key", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 618, i32 2}
!161 = !{ptr @.str.82, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.84, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 623, i32 3}
!164 = !{ptr @rocker_dma_rings_init._entry.83, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @rocker_dma_rings_init._entry_ptr.85, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.87, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 629, i32 3}
!168 = !{ptr @rocker_dma_rings_init._entry.86, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @rocker_dma_rings_init._entry_ptr.88, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.90, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 637, i32 3}
!172 = !{ptr @rocker_dma_rings_init._entry.89, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @rocker_dma_rings_init._entry_ptr.91, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.93, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 644, i32 3}
!176 = !{ptr @rocker_dma_rings_init._entry.92, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @rocker_dma_rings_init._entry_ptr.94, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.95, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 1008, i32 4}
!180 = !{ptr @.str.96, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @rocker_event_irq_handler._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @rocker_event_irq_handler._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.98, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 1013, i32 5}
!185 = !{ptr @rocker_event_irq_handler._entry.97, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @rocker_event_irq_handler._entry_ptr.99, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.100, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 903, i32 32}
!189 = !{ptr @.str.101, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 909, i32 32}
!191 = !{ptr @.str.102, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2569, i32 3}
!193 = !{ptr @.str.103, !192, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @rocker_probe_port._entry, !192, !"_entry", i1 false, i1 false}
!195 = !{ptr @rocker_probe_port._entry_ptr, !192, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.105, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2590, i32 3}
!198 = !{ptr @rocker_probe_port._entry.104, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @rocker_probe_port._entry_ptr.106, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @.str.108, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2595, i32 3}
!202 = !{ptr @rocker_probe_port._entry.107, !201, !"_entry", i1 false, i1 false}
!203 = !{ptr @rocker_probe_port._entry_ptr.109, !201, !"_entry_ptr", i1 false, i1 false}
!204 = !{ptr @.str.111, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2602, i32 3}
!206 = !{ptr @rocker_probe_port._entry.110, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @rocker_probe_port._entry_ptr.112, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.113, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 1477, i32 3}
!210 = !{ptr @.str.114, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @rocker_world_check_init._entry, !209, !"_entry", i1 false, i1 false}
!212 = !{ptr @rocker_world_check_init._entry_ptr, !209, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.116, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 1482, i32 4}
!215 = !{ptr @rocker_world_check_init._entry.115, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @rocker_world_check_init._entry_ptr.117, !214, !"_entry_ptr", i1 false, i1 false}
!217 = !{ptr @.str.118, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 1443, i32 3}
!219 = !{ptr @.str.119, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @rocker_world_init._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @rocker_world_init._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = distinct !{null, !223, !"rocker_world_ops", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 1420, i32 33}
!224 = !{ptr @.str.120, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2543, i32 3}
!226 = !{ptr @.str.121, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.122, !225, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @rocker_port_dev_addr_init._entry, !225, !"_entry", i1 false, i1 false}
!229 = !{ptr @rocker_port_dev_addr_init._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @rocker_port_ethtool_ops, !231, !"rocker_port_ethtool_ops", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2360, i32 33}
!232 = !{ptr @.str.123, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2230, i32 28}
!234 = !{ptr @rocker_port_stats, !235, !"rocker_port_stats", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2236, i32 3}
!236 = !{ptr @.str.124, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2393, i32 33}
!238 = !{ptr @.str.125, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2472, i32 34}
!240 = !{ptr @.str.126, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2478, i32 34}
!242 = !{ptr @rocker_router_fib_event.__key, !243, !"__key", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2164, i32 2}
!244 = !{ptr @.str.127, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @rocker_router_fib_event.__msg, !246, !"__msg", i1 false, i1 false}
!246 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2175, i32 5}
!247 = !{ptr @rocker_router_fib_event.__msg.128, !248, !"__msg", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2180, i32 5}
!249 = !{ptr @rocker_switchdev_notifier, !250, !"rocker_switchdev_notifier", i1 false, i1 false}
!250 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2843, i32 30}
!251 = !{ptr @rocker_switchdev_event.__key, !252, !"__key", i1 false, i1 false}
!252 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2775, i32 2}
!253 = !{ptr @.str.129, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @.str.130, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2734, i32 4}
!256 = !{ptr @.str.131, !255, !"<string literal>", i1 false, i1 false}
!257 = !{ptr @.str.132, !255, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @rocker_switchdev_event_work.__UNIQUE_ID_ddebug493, !255, !"__UNIQUE_ID_ddebug493", i1 false, i1 false}
!259 = !{ptr @rocker_switchdev_event_work.__UNIQUE_ID_ddebug494, !260, !"__UNIQUE_ID_ddebug494", i1 false, i1 false}
!260 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2745, i32 4}
!261 = !{ptr @rocker_switchdev_blocking_notifier, !262, !"rocker_switchdev_blocking_notifier", i1 false, i1 false}
!262 = !{!"../drivers/net/ethernet/rocker/rocker_main.c", i32 2847, i32 30}
!263 = !{!"sp"}
!264 = !{i32 1, !"wchar_size", i32 2}
!265 = !{i32 1, !"min_enum_size", i32 4}
!266 = !{i32 8, !"branch-target-enforcement", i32 0}
!267 = !{i32 8, !"sign-return-address", i32 0}
!268 = !{i32 8, !"sign-return-address-all", i32 0}
!269 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!270 = !{i32 7, !"uwtable", i32 1}
!271 = !{i32 7, !"frame-pointer", i32 2}
!272 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!273 = !{!"branch_weights", i32 1, i32 2000}
!274 = !{i64 2157909274, i64 2157909780, i64 2157909311, i64 2157909367, i64 2157909401, i64 2157909425, i64 2157909466, i64 2157909487, i64 2157909515, i64 2157909549}
!275 = !{i64 2157910940}
!276 = !{i64 5062724}
!277 = !{i8 0, i8 2}
!278 = !{!"auto-init"}
!279 = !{i64 2157853428}
!280 = !{i64 2157853801}
!281 = !{i64 5063142}
!282 = !{i64 2157852620}
!283 = !{i64 2157853058}
!284 = !{i32 0, i32 33}
!285 = !{!"branch_weights", i32 2000, i32 1}
!286 = !{i64 2157955829, i64 2157956335, i64 2157955866, i64 2157955922, i64 2157955956, i64 2157955980, i64 2157956021, i64 2157956042, i64 2157956070, i64 2157956104}
!287 = !{i64 2157957991}
!288 = !{i64 2157958865}
!289 = !{i64 2157959668, i64 2157960174, i64 2157959705, i64 2157959761, i64 2157959795, i64 2157959819, i64 2157959860, i64 2157959881, i64 2157959909, i64 2157959943}
!290 = !{i64 2158026995}
!291 = !{i64 2157889919}
!292 = !{i64 2157890750}
!293 = !{i64 2157905024}
!294 = !{i64 2157900280}
!295 = !{i64 2157895199}
!296 = !{i64 2158030608}
!297 = !{i64 2158041739}
!298 = !{i64 2157911605}
!299 = !{i64 2148294137, i64 2148294169, i64 2148294198, i64 2148294232, i64 2148294263, i64 2148294286}
!300 = !{i64 2148382138}
!301 = !{i64 2148296602, i64 2148296634, i64 2148296663, i64 2148296697, i64 2148296728, i64 2148296751}
!302 = !{i64 2149388586}
!303 = !{i64 685088, i64 685149}
!304 = !{i64 687820}
!305 = !{i64 688105}
!306 = !{i64 2148774422, i64 2148774427, i64 2148774440, i64 2148774484, i64 2148774518, i64 2148774539}
