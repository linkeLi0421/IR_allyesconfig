; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/ti/cpsw_new.c_pt.bc'
source_filename = "../drivers/net/ethernet/ti/cpsw_new.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.devlink_ops = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.devlink_param = type { i32, ptr, i8, i32, i32, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.53, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
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
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.151, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.151 = type { ptr }
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
%struct.cpsw_common = type { ptr, %struct.cpsw_platform_data, %struct.napi_struct, %struct.napi_struct, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, [8 x %struct.cpsw_vector], [8 x %struct.cpsw_vector], ptr, i8, i8, i8, [2 x i32], i32, ptr, ptr, i32, i32, i32, i32, [8 x ptr], i8, ptr, i8, [6 x i8] }
%struct.cpsw_platform_data = type { ptr, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.cpsw_vector = type { ptr, i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cpsw_ss_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cpsw_host_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.cpsw_slave = type { ptr, i32, i32, ptr, ptr, ptr, i32, ptr }
%struct.cpsw_slave_data = type { ptr, ptr, [61 x i8], i32, [6 x i8], i16, ptr, i8 }
%struct.cpsw_wr_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x i32], i32, i32, i32, i32, [8 x i32], i32, i32 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.112, [48 x i8], %union.anon.113, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.115, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.112 = type { i64 }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type { i32, ptr }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.117, i32, i32, i32, i16, i16, %union.anon.119, i32, %union.anon.120, %union.anon.121, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.117 = type { i32 }
%union.anon.119 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i16 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%struct.xdp_frame = type { ptr, i16, i16, i32, %struct.xdp_mem_info, ptr }
%struct.xdp_mem_info = type { i32, i32 }
%struct.cpsw_priv = type { ptr, ptr, i32, [6 x i8], i8, i8, i8, [4 x i32], i32, i32, i32, ptr, [72 x i8], [8 x %struct.xdp_rxq_info], %struct.xdp_attachment_info, i32, ptr, i32, i32, [104 x i8] }
%struct.xdp_rxq_info = type { ptr, i32, i32, %struct.xdp_mem_info, i32, [104 x i8] }
%struct.xdp_attachment_info = type { ptr, i32 }
%struct.phy_device = type { %struct.mdio_device, ptr, i32, %struct.phy_c45_device_ids, i16, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [3 x i32], [3 x i32], [3 x i32], [3 x i32], i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.delayed_work, %struct.mutex, i8, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr }
%struct.mdio_device = type { %struct.device, ptr, [32 x i8], ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.phy_c45_device_ids = type { i32, i32, [32 x i32] }
%struct.addr_sync_ctx = type { ptr, ptr, i32, i32 }
%struct.netdev_hw_addr = type { %struct.list_head, %struct.rb_node, [32 x i8], i8, i8, i32, i32, i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cpts = type { ptr, ptr, i32, i32, %struct.ptp_clock_info, ptr, %struct.spinlock, i32, %struct.cyclecounter, %struct.timecounter, i32, ptr, %struct.list_head, %struct.list_head, [32 x %struct.cpts_event], i32, %struct.sk_buff_head, i64, i32, %struct.mutex, i8, %struct.completion, i32 }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cyclecounter = type { ptr, i64, i32, i32 }
%struct.timecounter = type { ptr, i64, i64, i64, i64 }
%struct.cpts_event = type { %struct.list_head, i32, i32, i32, i64 }
%struct.xdp_buff = type { ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.page = type { i32, %union.anon.10, %union.anon.97, %struct.atomic_t, i32 }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.97 = type { %struct.atomic_t }
%struct.ethtool_drvinfo = type { i32, [32 x i8], [32 x i8], [32 x i8], [32 x i8], [32 x i8], [12 x i8], i32, i32, i32, i32, i32 }
%struct.ethtool_pauseparam = type { i32, i32, i32, i32 }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.netdev_notifier_changeupper_info = type { %struct.netdev_notifier_info, ptr, i8, i8, ptr }

@cpsw_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @cpsw_ndo_open, ptr @cpsw_ndo_stop, ptr @cpsw_ndo_start_xmit, ptr null, ptr null, ptr null, ptr @cpsw_ndo_set_rx_mode, ptr @cpsw_ndo_set_mac_address, ptr @eth_validate_addr, ptr null, ptr @cpsw_ndo_ioctl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_ndo_tx_timeout, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_ndo_vlan_rx_add_vid, ptr @cpsw_ndo_vlan_rx_kill_vid, ptr @cpsw_ndo_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_ndo_setup_tc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_get_port_parent_id, ptr @cpsw_ndo_get_phys_port_name, ptr null, ptr null, ptr @cpsw_ndo_set_tx_maxrate, ptr null, ptr null, ptr null, ptr @cpsw_ndo_bpf, ptr @cpsw_ndo_xdp_xmit, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@__initcall__kmod_ti_cpsw_new__553_2127_cpsw_driver_init6 = internal global ptr @cpsw_driver_init, section ".initcall6.init", align 4
@cpsw_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cpsw_probe, ptr @cpsw_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.56, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cpsw_of_mtable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cpsw_driver_exit = internal global ptr @cpsw_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file554 = internal constant [53 x i8] c"ti_cpsw_new.file=drivers/net/ethernet/ti/ti_cpsw_new\00", section ".modinfo", align 1
@__UNIQUE_ID_license555 = internal constant [24 x i8] c"ti_cpsw_new.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description556 = internal constant [58 x i8] c"ti_cpsw_new.description=TI CPSW switchdev Ethernet driver\00", section ".modinfo", align 1
@cpsw_ndo_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 831, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"starting ndev. mode: %s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpsw_ndo_open\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/net/ethernet/ti/cpsw_new.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cpsw_ndo_open._entry_ptr = internal global ptr @cpsw_ndo_open._entry, section ".printk_index", align 4
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"switch\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dual_mac\00", [23 x i8] zeroinitializer }, align 32
@cpsw_ndo_open._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 841, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot set real number of tx queues\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@cpsw_ndo_open._entry_ptr.10 = internal global ptr @cpsw_ndo_open._entry.7, section ".printk_index", align 4
@cpsw_ndo_open._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 847, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cannot set real number of rx queues\0A\00", [59 x i8] zeroinitializer }, align 32
@cpsw_ndo_open._entry_ptr.13 = internal global ptr @cpsw_ndo_open._entry.11, section ".printk_index", align 4
@cpsw_ndo_open._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 871, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error registering cpts device\0A\00", [33 x i8] zeroinitializer }, align 32
@cpsw_ndo_open._entry_ptr.16 = internal global ptr @cpsw_ndo_open._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cpsw\00", [27 x i8] zeroinitializer }, align 32
@cpsw_init_host_port_switch.__UNIQUE_ID_ddebug540 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 0, i8 -125, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti_cpsw_new\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cpsw_init_host_port_switch\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Set P0_UNI_FLOOD\0A\00", [46 x i8] zeroinitializer }, align 32
@cpsw_init_stp_ale_entry.stpa = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01\80\C2\00\00\00", [26 x i8] zeroinitializer }, align 32
@cpsw_init_host_port_dual_mac.__UNIQUE_ID_ddebug541 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.21, ptr @.str.2, ptr @.str.22, i8 0, i8 -122, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cpsw_init_host_port_dual_mac\00", [35 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unset P0_UNI_FLOOD\0A\00", [44 x i8] zeroinitializer }, align 32
@cpsw_slave_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 766, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no phy found on slave %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cpsw_slave_open\00", [16 x i8] zeroinitializer }, align 32
@cpsw_slave_open._entry_ptr = internal global ptr @cpsw_slave_open._entry, section ".printk_index", align 4
@cpsw_slave_open._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.2, i32 772, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"phy \22%pOF\22 not found on slave %d\0A\00", [62 x i8] zeroinitializer }, align 32
@cpsw_slave_open._entry_ptr.27 = internal global ptr @cpsw_slave_open._entry.25, section ".printk_index", align 4
@cpsw_adjust_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.2, i32 694, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Speed was changed, CBS shaper speeds are changed!\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cpsw_adjust_link\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cpsw_adjust_link._entry_ptr = internal global ptr @cpsw_adjust_link._entry, section ".printk_index", align 4
@cpsw_ndo_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 792, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"shutting down ndev\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpsw_ndo_stop\00", [18 x i8] zeroinitializer }, align 32
@cpsw_ndo_stop._entry_ptr = internal global ptr @cpsw_ndo_stop._entry, section ".printk_index", align 4
@cpsw_slave_index = external dso_local local_unnamed_addr global ptr, align 4
@cpsw_ndo_start_xmit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.2, i32 925, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"packet pad failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpsw_ndo_start_xmit\00", [44 x i8] zeroinitializer }, align 32
@cpsw_ndo_start_xmit._entry_ptr = internal global ptr @cpsw_ndo_start_xmit._entry, section ".printk_index", align 4
@cpsw_ndo_start_xmit._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 944, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"desc submit failed\0A\00", [44 x i8] zeroinitializer }, align 32
@cpsw_ndo_start_xmit._entry_ptr.37 = internal global ptr @cpsw_ndo_start_xmit._entry.35, section ".printk_index", align 4
@cpsw_set_promiscious.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.38, ptr @.str.2, ptr @.str.39, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpsw_set_promiscious\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"promiscuity not disabled as the other interface is still in promiscuity mode\0A\00", [50 x i8] zeroinitializer }, align 32
@cpsw_set_promiscious.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.38, ptr @.str.2, ptr @.str.40, i8 0, i8 26, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"promiscuity enabled\0A\00", [43 x i8] zeroinitializer }, align 32
@cpsw_set_promiscious.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.38, ptr @.str.2, ptr @.str.41, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"promiscuity disabled\0A\00", [42 x i8] zeroinitializer }, align 32
@cpsw_ndo_vlan_rx_add_vid.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cpsw_ndo_vlan_rx_add_vid\00", [39 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c".ndo_vlan_rx_add_vid called in switch mode\0A\00", [52 x i8] zeroinitializer }, align 32
@cpsw_ndo_vlan_rx_add_vid.__UNIQUE_ID_ddebug539 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.42, ptr @.str.2, ptr @.str.44, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Adding vlanid %d to vlan filter\0A\00", [63 x i8] zeroinitializer }, align 32
@cpsw_ndo_vlan_rx_kill_vid.__UNIQUE_ID_ddebug543 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.45, ptr @.str.2, ptr @.str.46, i8 0, i8 -1, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cpsw_ndo_vlan_rx_kill_vid\00", [38 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"ndo del vlan is called in switch mode\0A\00", [57 x i8] zeroinitializer }, align 32
@cpsw_ndo_vlan_rx_kill_vid.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.45, ptr @.str.2, ptr @.str.47, i8 1, i8 5, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"removing vlanid %d from vlan filter\0A\00", [59 x i8] zeroinitializer }, align 32
@cpsw_ndo_vlan_rx_kill_vid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.45, ptr @.str.2, i32 1048, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cpsw_ale_del_vlan() failed: ret %d\0A\00", [60 x i8] zeroinitializer }, align 32
@cpsw_ndo_vlan_rx_kill_vid._entry_ptr = internal global ptr @cpsw_ndo_vlan_rx_kill_vid._entry, section ".printk_index", align 4
@cpsw_ndo_vlan_rx_kill_vid._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.45, ptr @.str.2, i32 1053, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cpsw_ale_del_ucast() failed: ret %d\0A\00", [59 x i8] zeroinitializer }, align 32
@cpsw_ndo_vlan_rx_kill_vid._entry_ptr.51 = internal global ptr @cpsw_ndo_vlan_rx_kill_vid._entry.49, section ".printk_index", align 4
@cpsw_ndo_vlan_rx_kill_vid._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.45, ptr @.str.2, i32 1058, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cpsw_ale_del_mcast failed. ret %d\0A\00", [61 x i8] zeroinitializer }, align 32
@cpsw_ndo_vlan_rx_kill_vid._entry_ptr.54 = internal global ptr @cpsw_ndo_vlan_rx_kill_vid._entry.52, section ".printk_index", align 4
@.str.55 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"p%d\00", [28 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cpsw-switch\00", [20 x i8] zeroinitializer }, align 32
@cpsw_of_mtable = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,cpsw-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-cpsw-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am4372-cpsw-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-cpsw-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@cpsw_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @cpsw_suspend, ptr @cpsw_resume, ptr @cpsw_suspend, ptr @cpsw_resume, ptr @cpsw_suspend, ptr @cpsw_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@cpsw_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 1880, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gpio request failed, ret %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpsw_probe\00", [21 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr = internal global ptr @cpsw_probe._entry, section ".printk_index", align 4
@.str.60 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"fck\00", [28 x i8] zeroinitializer }, align 32
@cpsw_probe._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.59, ptr @.str.2, i32 1887, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"fck is not found %d\0A\00", [43 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.63 = internal global ptr @cpsw_probe._entry.61, section ".printk_index", align 4
@.str.64 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"misc\00", [27 x i8] zeroinitializer }, align 32
@cpsw_soc_devices = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr @.str.115, ptr @.str.116, ptr null, ptr null, ptr null, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@cpsw_probe._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.59, ptr @.str.2, i32 1953, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error initializing tx dma channel\0A\00", [61 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.69 = internal global ptr @cpsw_probe._entry.67, section ".printk_index", align 4
@cpsw_probe._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.59, ptr @.str.2, i32 1960, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"error initializing rx dma channel\0A\00", [61 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.72 = internal global ptr @cpsw_probe._entry.70, section ".printk_index", align 4
@cpsw_probe._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.59, ptr @.str.2, i32 1982, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error attaching irq (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.75 = internal global ptr @cpsw_probe._entry.73, section ".printk_index", align 4
@cpsw_probe._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.59, ptr @.str.2, i32 1989, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.77 = internal global ptr @cpsw_probe._entry.76, section ".printk_index", align 4
@cpsw_probe._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.59, ptr @.str.2, i32 1999, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"error attaching misc irq (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.80 = internal global ptr @cpsw_probe._entry.78, section ".printk_index", align 4
@cpsw_probe._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.59, ptr @.str.2, i32 2023, ptr @.str.83, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"initialized (regs %pa, pool size %d) hw_ver:%08X %d.%d (%d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@cpsw_probe._entry_ptr.84 = internal global ptr @cpsw_probe._entry.81, section ".printk_index", align 4
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ethernet-ports\00", [17 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.87, ptr @.str.2, i32 1257, ptr @.str.30, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Doesn't have any child node\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cpsw_probe_dt\00", [18 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr = internal global ptr @cpsw_probe_dt._entry, section ".printk_index", align 4
@.str.88 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.87, ptr @.str.2, i32 1266, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%pOF error reading port_id %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.91 = internal global ptr @cpsw_probe_dt._entry.89, section ".printk_index", align 4
@cpsw_probe_dt._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.87, ptr @.str.2, i32 1272, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%pOF has invalid port_id %u\0A\00", [35 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.94 = internal global ptr @cpsw_probe_dt._entry.92, section ".printk_index", align 4
@cpsw_probe_dt._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.87, ptr @.str.2, i32 1288, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%pOF: Error retrieving port phy: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.97 = internal global ptr @cpsw_probe_dt._entry.95, section ".printk_index", align 4
@cpsw_probe_dt._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.87, ptr @.str.2, i32 1297, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%pOF failed to register fixed-link phy: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.100 = internal global ptr @cpsw_probe_dt._entry.98, section ".printk_index", align 4
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"phy-handle\00", [21 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.87, ptr @.str.2, i32 1307, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%pOF no phy found\0A\00", [45 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.104 = internal global ptr @cpsw_probe_dt._entry.102, section ".printk_index", align 4
@cpsw_probe_dt._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.87, ptr @.str.2, i32 1315, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%pOF read phy-mode err %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.107 = internal global ptr @cpsw_probe_dt._entry.105, section ".printk_index", align 4
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,dual-emac-pvid\00", [46 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.87, ptr @.str.2, i32 1330, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%pOF Missing dual_emac_res_vlan in DT.\0A\00", [56 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.111 = internal global ptr @cpsw_probe_dt._entry.109, section ".printk_index", align 4
@cpsw_probe_dt._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.87, ptr @.str.2, i32 1333, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%pOF Using %d as Reserved VLAN\0A\00", [32 x i8] zeroinitializer }, align 32
@cpsw_probe_dt._entry_ptr.114 = internal global ptr @cpsw_probe_dt._entry.112, section ".printk_index", align 4
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AM33xx\00", [25 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.0\00", [26 x i8] zeroinitializer }, align 32
@cpsw_create_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.2, i32 1383, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"error allocating net_device\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpsw_create_ports\00", [46 x i8] zeroinitializer }, align 32
@cpsw_create_ports._entry_ptr = internal global ptr @cpsw_create_ports._entry, section ".printk_index", align 4
@cpsw_create_ports._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.118, ptr @.str.2, i32 1398, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Detected MACID = %pM\0A\00", [42 x i8] zeroinitializer }, align 32
@cpsw_create_ports._entry_ptr.121 = internal global ptr @cpsw_create_ports._entry.119, section ".printk_index", align 4
@cpsw_create_ports._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.118, ptr @.str.2, i32 1402, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Random MACID = %pM\0A\00", [44 x i8] zeroinitializer }, align 32
@cpsw_create_ports._entry_ptr.124 = internal global ptr @cpsw_create_ports._entry.122, section ".printk_index", align 4
@cpsw_ethtool_ops = internal constant { %struct.ethtool_ops, [68 x i8] } { %struct.ethtool_ops { i8 0, i32 1, i32 0, ptr @cpsw_get_drvinfo, ptr @cpsw_get_regs_len, ptr @cpsw_get_regs, ptr @cpsw_get_wol, ptr @cpsw_set_wol, ptr @cpsw_get_msglevel, ptr @cpsw_set_msglevel, ptr @cpsw_nway_reset, ptr @ethtool_op_get_link, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_get_coalesce, ptr @cpsw_set_coalesce, ptr @cpsw_get_ringparam, ptr @cpsw_set_ringparam, ptr null, ptr @cpsw_get_pauseparam, ptr @cpsw_set_pauseparam, ptr null, ptr @cpsw_get_strings, ptr null, ptr @cpsw_get_ethtool_stats, ptr @cpsw_ethtool_op_begin, ptr @cpsw_ethtool_op_complete, ptr null, ptr null, ptr @cpsw_get_sset_count, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_get_channels, ptr @cpsw_set_channels, ptr null, ptr null, ptr null, ptr @cpsw_get_ts_info, ptr null, ptr null, ptr @cpsw_get_eee, ptr @cpsw_set_eee, ptr null, ptr null, ptr null, ptr null, ptr @cpsw_get_link_ksettings, ptr @cpsw_set_link_ksettings, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@cpsw_netdevice_nb = internal global %struct.notifier_block { ptr @cpsw_netdevice_event, ptr null, i32 0 }, section ".data..read_mostly", align 4
@cpsw_register_notifiers._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.2, i32 1590, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can't register netdevice notifier\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cpsw_register_notifiers\00", [40 x i8] zeroinitializer }, align 32
@cpsw_register_notifiers._entry_ptr = internal global ptr @cpsw_register_notifiers._entry, section ".printk_index", align 4
@cpsw_port_offload_fwd_mark_update.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.128, ptr @.str.2, ptr @.str.129, i8 1, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cpsw_port_offload_fwd_mark_update\00", [62 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"set offload_fwd_mark %d\0A\00", [39 x i8] zeroinitializer }, align 32
@cpsw_devlink_ops = internal constant { %struct.devlink_ops, [52 x i8] } zeroinitializer, align 32
@cpsw_devlink_params = internal constant { [2 x %struct.devlink_param], [32 x i8] } { [2 x %struct.devlink_param] [%struct.devlink_param { i32 17, ptr @.str.132, i8 0, i32 4, i32 1, ptr @cpsw_dl_switch_mode_get, ptr @cpsw_dl_switch_mode_set, ptr null }, %struct.devlink_param { i32 18, ptr @.str.133, i8 0, i32 4, i32 1, ptr @cpsw_dl_ale_ctrl_get, ptr @cpsw_dl_ale_ctrl_set, ptr null }], [32 x i8] zeroinitializer }, align 32
@cpsw_register_devlink._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.2, i32 1816, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DL params reg fail ret:%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cpsw_register_devlink\00", [42 x i8] zeroinitializer }, align 32
@cpsw_register_devlink._entry_ptr = internal global ptr @cpsw_register_devlink._entry, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"switch_mode\00", [20 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ale_bypass\00", [21 x i8] zeroinitializer }, align 32
@cpsw_dl_switch_mode_get.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.134, ptr @.str.2, ptr @.str.135, i8 1, i8 -108, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cpsw_dl_switch_mode_get\00", [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s id:%u\0A\00", [22 x i8] zeroinitializer }, align 32
@cpsw_dl_switch_mode_set.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.136, ptr @.str.2, ptr @.str.135, i8 1, i8 -103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.136 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cpsw_dl_switch_mode_set\00", [40 x i8] zeroinitializer }, align 32
@cpsw_dl_switch_mode_set._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.136, ptr @.str.2, i32 1645, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Remove ports from BR before disabling switch mode\0A\00", [45 x i8] zeroinitializer }, align 32
@cpsw_dl_switch_mode_set._entry_ptr = internal global ptr @cpsw_dl_switch_mode_set._entry, section ".printk_index", align 4
@cpsw_dl_switch_mode_set._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.136, ptr @.str.2, i32 1681, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Enable switch mode\0A\00", [44 x i8] zeroinitializer }, align 32
@cpsw_dl_switch_mode_set._entry_ptr.140 = internal global ptr @cpsw_dl_switch_mode_set._entry.138, section ".printk_index", align 4
@cpsw_dl_switch_mode_set._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.136, ptr @.str.2, i32 1711, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Disable switch mode\0A\00", [43 x i8] zeroinitializer }, align 32
@cpsw_dl_switch_mode_set._entry_ptr.143 = internal global ptr @cpsw_dl_switch_mode_set._entry.141, section ".printk_index", align 4
@cpsw_dl_ale_ctrl_get.__UNIQUE_ID_ddebug551 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.144, ptr @.str.2, ptr @.str.135, i8 1, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.144 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpsw_dl_ale_ctrl_get\00", [43 x i8] zeroinitializer }, align 32
@cpsw_dl_ale_ctrl_set.__UNIQUE_ID_ddebug552 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.18, ptr @.str.145, ptr @.str.2, ptr @.str.135, i8 1, i8 -70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.145 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cpsw_dl_ale_ctrl_set\00", [43 x i8] zeroinitializer }, align 32
@cpsw_register_ports._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.147, ptr @.str.2, i32 1462, ptr @.str.9, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cpsw: err registering net device%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cpsw_register_ports\00", [44 x i8] zeroinitializer }, align 32
@cpsw_register_ports._entry_ptr = internal global ptr @cpsw_register_ports._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1638666, i64 1638668, i64 1638671, i64 1638674]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 100]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294966779]
@___asan_gen_.150 = private unnamed_addr constant [16 x i8] c"cpsw_netdev_ops\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1126, i32 36 }
@___asan_gen_.153 = private unnamed_addr constant [12 x i8] c"cpsw_driver\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 2117, i32 31 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 830, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 841, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 847, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 871, i32 5 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 553, i32 13 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 527, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant [5 x i8] c"stpa\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 505, i32 20 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 538, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 765, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 770, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 694, i32 4 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 792, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 925, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 944, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 98, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 106, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 111, i32 3 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 445, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 470, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1020, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1045, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1048, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1052, i32 3 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1057, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1072, i32 28 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 2119, i32 12 }
@___asan_gen_.327 = private unnamed_addr constant [15 x i8] c"cpsw_of_mtable\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1836, i32 34 }
@___asan_gen_.330 = private unnamed_addr constant [12 x i8] c"cpsw_pm_ops\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 2115, i32 8 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1877, i32 44 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1880, i32 3 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1884, i32 26 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1887, i32 3 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1899, i32 38 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1904, i32 38 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1909, i32 38 }
@___asan_gen_.363 = private unnamed_addr constant [17 x i8] c"cpsw_soc_devices\00", align 1
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1845, i32 42 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1953, i32 3 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1960, i32 3 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1982, i32 3 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1989, i32 3 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1999, i32 3 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 2019, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1231, i32 40 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1257, i32 3 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1263, i32 39 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1265, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1271, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1287, i32 4 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1296, i32 6 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1303, i32 31 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1307, i32 4 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1314, i32 4 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1327, i32 37 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1329, i32 4 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1332, i32 4 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1846, i32 14 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1846, i32 36 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1383, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1397, i32 4 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1401, i32 4 }
@___asan_gen_.498 = private unnamed_addr constant [17 x i8] c"cpsw_ethtool_ops\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1189, i32 33 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1156, i32 25 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1590, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1493, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant [17 x i8] c"cpsw_devlink_ops\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1607, i32 33 }
@___asan_gen_.522 = private unnamed_addr constant [20 x i8] c"cpsw_devlink_params\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1788, i32 35 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1816, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1789, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1794, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1616, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1636, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1645, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1681, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1711, i32 3 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1750, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1770, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.579 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.580 = private constant [38 x i8] c"../drivers/net/ethernet/ti/cpsw_new.c\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.580, i32 1461, i32 4 }
@llvm.compiler.used = appending global [189 x ptr] [ptr @__UNIQUE_ID_description556, ptr @__UNIQUE_ID_file554, ptr @__UNIQUE_ID_license555, ptr @__exitcall_cpsw_driver_exit, ptr @__initcall__kmod_ti_cpsw_new__553_2127_cpsw_driver_init6, ptr @cpsw_adjust_link._entry, ptr @cpsw_adjust_link._entry_ptr, ptr @cpsw_create_ports._entry, ptr @cpsw_create_ports._entry.119, ptr @cpsw_create_ports._entry.122, ptr @cpsw_create_ports._entry_ptr, ptr @cpsw_create_ports._entry_ptr.121, ptr @cpsw_create_ports._entry_ptr.124, ptr @cpsw_dl_switch_mode_set._entry, ptr @cpsw_dl_switch_mode_set._entry.138, ptr @cpsw_dl_switch_mode_set._entry.141, ptr @cpsw_dl_switch_mode_set._entry_ptr, ptr @cpsw_dl_switch_mode_set._entry_ptr.140, ptr @cpsw_dl_switch_mode_set._entry_ptr.143, ptr @cpsw_driver_exit, ptr @cpsw_ndo_open._entry, ptr @cpsw_ndo_open._entry.11, ptr @cpsw_ndo_open._entry.14, ptr @cpsw_ndo_open._entry.7, ptr @cpsw_ndo_open._entry_ptr, ptr @cpsw_ndo_open._entry_ptr.10, ptr @cpsw_ndo_open._entry_ptr.13, ptr @cpsw_ndo_open._entry_ptr.16, ptr @cpsw_ndo_start_xmit._entry, ptr @cpsw_ndo_start_xmit._entry.35, ptr @cpsw_ndo_start_xmit._entry_ptr, ptr @cpsw_ndo_start_xmit._entry_ptr.37, ptr @cpsw_ndo_stop._entry, ptr @cpsw_ndo_stop._entry_ptr, ptr @cpsw_ndo_vlan_rx_kill_vid._entry, ptr @cpsw_ndo_vlan_rx_kill_vid._entry.49, ptr @cpsw_ndo_vlan_rx_kill_vid._entry.52, ptr @cpsw_ndo_vlan_rx_kill_vid._entry_ptr, ptr @cpsw_ndo_vlan_rx_kill_vid._entry_ptr.51, ptr @cpsw_ndo_vlan_rx_kill_vid._entry_ptr.54, ptr @cpsw_probe._entry, ptr @cpsw_probe._entry.61, ptr @cpsw_probe._entry.67, ptr @cpsw_probe._entry.70, ptr @cpsw_probe._entry.73, ptr @cpsw_probe._entry.76, ptr @cpsw_probe._entry.78, ptr @cpsw_probe._entry.81, ptr @cpsw_probe._entry_ptr, ptr @cpsw_probe._entry_ptr.63, ptr @cpsw_probe._entry_ptr.69, ptr @cpsw_probe._entry_ptr.72, ptr @cpsw_probe._entry_ptr.75, ptr @cpsw_probe._entry_ptr.77, ptr @cpsw_probe._entry_ptr.80, ptr @cpsw_probe._entry_ptr.84, ptr @cpsw_probe_dt._entry, ptr @cpsw_probe_dt._entry.102, ptr @cpsw_probe_dt._entry.105, ptr @cpsw_probe_dt._entry.109, ptr @cpsw_probe_dt._entry.112, ptr @cpsw_probe_dt._entry.89, ptr @cpsw_probe_dt._entry.92, ptr @cpsw_probe_dt._entry.95, ptr @cpsw_probe_dt._entry.98, ptr @cpsw_probe_dt._entry_ptr, ptr @cpsw_probe_dt._entry_ptr.100, ptr @cpsw_probe_dt._entry_ptr.104, ptr @cpsw_probe_dt._entry_ptr.107, ptr @cpsw_probe_dt._entry_ptr.111, ptr @cpsw_probe_dt._entry_ptr.114, ptr @cpsw_probe_dt._entry_ptr.91, ptr @cpsw_probe_dt._entry_ptr.94, ptr @cpsw_probe_dt._entry_ptr.97, ptr @cpsw_register_devlink._entry, ptr @cpsw_register_devlink._entry_ptr, ptr @cpsw_register_notifiers._entry, ptr @cpsw_register_notifiers._entry_ptr, ptr @cpsw_register_ports._entry, ptr @cpsw_register_ports._entry_ptr, ptr @cpsw_slave_open._entry, ptr @cpsw_slave_open._entry.25, ptr @cpsw_slave_open._entry_ptr, ptr @cpsw_slave_open._entry_ptr.27, ptr @cpsw_netdev_ops, ptr @cpsw_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @cpsw_init_stp_ale_entry.stpa, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.55, ptr @.str.56, ptr @cpsw_of_mtable, ptr @cpsw_pm_ops, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @cpsw_soc_devices, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.79, ptr @.str.82, ptr @.str.83, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.101, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.123, ptr @cpsw_ethtool_ops, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @cpsw_devlink_ops, ptr @cpsw_devlink_params, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147], section "llvm.metadata"
@0 = internal global [144 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_open._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_open._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_open._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_init_stp_ale_entry.stpa to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_slave_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_slave_open._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_adjust_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_start_xmit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_start_xmit._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_vlan_rx_kill_vid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_vlan_rx_kill_vid._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ndo_vlan_rx_kill_vid._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_of_mtable to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_soc_devices to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_probe_dt._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_create_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_create_ports._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_create_ports._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_ethtool_ops to i32), i32 284, i32 352, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_register_notifiers._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_devlink_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_devlink_params to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_register_devlink._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_dl_switch_mode_set._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_dl_switch_mode_set._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_dl_switch_mode_set._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_register_ports._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @cpsw_port_dev_check(ptr nocapture noundef readonly %ndev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 16
  %0 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev_ops, align 8
  %cmp = icmp eq ptr %1, @cpsw_netdev_ops
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %2 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpsw1, align 4
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 1, i32 8
  %4 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dual_emac, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i1 [ %tobool.not, %if.then ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_driver_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpsw_driver, ptr noundef null) #14
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cpsw_driver_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpsw_driver) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_open(ptr noundef %ndev) #4 align 64 {
entry:
  %coal = alloca %struct.ethtool_coalesce, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %dev = getelementptr i8, ptr %ndev, i32 2308
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %dual_emac.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 8
  %4 = ptrtoint ptr %dual_emac.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dual_emac.i, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  %cond = select i1 %tobool.not.i, ptr @.str.5, ptr @.str.6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str, ptr noundef nonnull %cond) #17
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #14
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #14, !srcloc !305
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !306
  br label %cleanup

if.end:                                           ; preds = %entry
  %tx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 26
  %11 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tx_ch_num, align 4
  %call6 = tail call i32 @netif_set_real_num_tx_queues(ptr noundef %ndev, i32 noundef %12) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end12, label %do.end10

do.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.8) #17
  br label %pm_cleanup

if.end12:                                         ; preds = %if.end
  %rx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 25
  %15 = ptrtoint ptr %rx_ch_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_ch_num, align 8
  %call13 = tail call i32 @netif_set_real_num_rx_queues(ptr noundef %ndev, i32 noundef %16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.12) #17
  br label %pm_cleanup

if.end20:                                         ; preds = %if.end12
  %usage_count = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 28
  %19 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool21.not = icmp eq i32 %20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end20.if.end23_crit_edge

if.end20.if.end23_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23

if.then22:                                        ; preds = %if.end20
  %21 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cpsw1, align 4
  %regs.i = getelementptr inbounds %struct.cpsw_common, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs.i, align 8
  %soft_reset.i = getelementptr inbounds %struct.cpsw_ss_regs, ptr %24, i32 0, i32 2
  tail call void @soft_reset(ptr noundef nonnull @.str.17, ptr noundef %soft_reset.i) #14
  %ale.i = getelementptr inbounds %struct.cpsw_common, ptr %22, i32 0, i32 17
  %25 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ale.i, align 4
  tail call void @cpsw_ale_start(ptr noundef %26) #14
  %27 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ale.i, align 4
  %call.i118 = tail call i32 @cpsw_ale_control_set(ptr noundef %28, i32 noundef 0, i32 noundef 9, i32 noundef 1) #14
  %29 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs.i, align 8
  %control.i = getelementptr inbounds %struct.cpsw_ss_regs, ptr %30, i32 0, i32 1
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %control.i) #14, !srcloc !307
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !308
  %32 = or i32 %31, 100663296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !309
  tail call void @arm_heavy_mb() #14
  %33 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs.i, align 8
  %control7.i = getelementptr inbounds %struct.cpsw_ss_regs, ptr %34, i32 0, i32 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %control7.i, i32 %32) #14, !srcloc !310
  %host_port_regs.i = getelementptr inbounds %struct.cpsw_common, ptr %22, i32 0, i32 7
  %35 = ptrtoint ptr %host_port_regs.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %host_port_regs.i, align 4
  %cpdma_tx_pri_map.i = getelementptr inbounds %struct.cpsw_host_regs, ptr %36, i32 0, i32 5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cpdma_tx_pri_map.i, i32 271733878) #14, !srcloc !310
  %37 = ptrtoint ptr %host_port_regs.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %host_port_regs.i, align 4
  %cpdma_rx_chan_map.i = getelementptr inbounds %struct.cpsw_host_regs, ptr %38, i32 0, i32 6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %cpdma_rx_chan_map.i, i32 0) #14, !srcloc !310
  %39 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i, align 8
  %ptype.i = getelementptr inbounds %struct.cpsw_ss_regs, ptr %40, i32 0, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %ptype.i, i32 0) #14, !srcloc !310
  %41 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i, align 8
  %stat_port_en.i = getelementptr inbounds %struct.cpsw_ss_regs, ptr %42, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %stat_port_en.i, i32 117440512) #14, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !311
  tail call void @arm_heavy_mb() #14
  %43 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs.i, align 8
  %flow_control.i = getelementptr inbounds %struct.cpsw_ss_regs, ptr %44, i32 0, i32 9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %flow_control.i, i32 117440512) #14, !srcloc !310
  %dual_emac.i.i = getelementptr inbounds %struct.cpsw_common, ptr %22, i32 0, i32 1, i32 8
  %45 = ptrtoint ptr %dual_emac.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %dual_emac.i.i, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @cpsw_init_host_port_switch(ptr noundef %22) #14
  br label %cpsw_init_host_port.exit

if.else.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @cpsw_init_host_port_dual_mac(ptr noundef %22) #14
  br label %cpsw_init_host_port.exit

cpsw_init_host_port.exit:                         ; preds = %if.else.i, %if.then.i
  %47 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ale.i, align 4
  %call17.i = tail call i32 @cpsw_ale_control_set(ptr noundef %48, i32 noundef 0, i32 noundef 12, i32 noundef 3) #14
  br label %if.end23

if.end23:                                         ; preds = %cpsw_init_host_port.exit, %if.end20.if.end23_crit_edge
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %49 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %slaves, align 4
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  %51 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %emac_port, align 8
  %sub = add i32 %52, -1
  %arrayidx = getelementptr %struct.cpsw_slave, ptr %50, i32 %sub
  %53 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cpsw1, align 4
  %mac_sl.i = getelementptr %struct.cpsw_slave, ptr %50, i32 %sub, i32 7
  %55 = ptrtoint ptr %mac_sl.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %mac_sl.i, align 4
  tail call void @cpsw_sl_reset(ptr noundef %56, i32 noundef 100) #14
  %57 = ptrtoint ptr %mac_sl.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %mac_sl.i, align 4
  tail call void @cpsw_sl_ctl_reset(ptr noundef %58) #14
  %59 = ptrtoint ptr %mac_sl.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mac_sl.i, align 4
  tail call void @cpsw_sl_reg_write(ptr noundef %60, i32 noundef 9, i32 noundef 1985229328) #14
  %version.i = getelementptr inbounds %struct.cpsw_common, ptr %54, i32 0, i32 8
  %61 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %version.i, align 8
  %63 = zext i32 %62 to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values)
  switch i32 %62, label %if.end23.sw.epilog.i_crit_edge [
    i32 1638666, label %sw.bb.i
    i32 1638668, label %if.end23.sw.bb4.i_crit_edge
    i32 1638671, label %if.end23.sw.bb4.i_crit_edge128
    i32 1638674, label %if.end23.sw.bb4.i_crit_edge129
  ]

if.end23.sw.bb4.i_crit_edge129:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4.i

if.end23.sw.bb4.i_crit_edge128:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4.i

if.end23.sw.bb4.i_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb4.i

if.end23.sw.epilog.i_crit_edge:                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %65, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1122867) #14, !srcloc !310
  %66 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 -184549376) #14, !srcloc !310
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end23.sw.bb4.i_crit_edge, %if.end23.sw.bb4.i_crit_edge128, %if.end23.sw.bb4.i_crit_edge129
  %68 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %69, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 1122867) #14, !srcloc !310
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i62.i = getelementptr i8, ptr %71, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i62.i, i32 -184549376) #14, !srcloc !310
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb4.i, %sw.bb.i, %if.end23.sw.epilog.i_crit_edge
  %72 = ptrtoint ptr %mac_sl.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mac_sl.i, align 4
  %rx_packet_max.i = getelementptr inbounds %struct.cpsw_common, ptr %54, i32 0, i32 11
  %74 = ptrtoint ptr %rx_packet_max.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %rx_packet_max.i, align 4
  tail call void @cpsw_sl_reg_write(ptr noundef %73, i32 noundef 4, i32 noundef %75) #14
  tail call void @cpsw_set_slave_mac(ptr noundef %arrayidx, ptr noundef %add.ptr.i) #14
  %mac_control.i = getelementptr %struct.cpsw_slave, ptr %50, i32 %sub, i32 2
  %76 = ptrtoint ptr %mac_control.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %mac_control.i, align 4
  %dual_emac.i.i120 = getelementptr inbounds %struct.cpsw_common, ptr %54, i32 0, i32 1, i32 8
  %77 = ptrtoint ptr %dual_emac.i.i120 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %dual_emac.i.i120, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.i121 = icmp eq i8 %78, 0
  br i1 %tobool.not.i.i121, label %if.then.i122, label %if.else.i123

if.then.i122:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @cpsw_port_add_switch_def_ale_entries(ptr noundef %add.ptr.i, ptr noundef %arrayidx) #14
  br label %if.end.i

if.else.i123:                                     ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @cpsw_port_add_dual_emac_def_ale_entries(ptr noundef %add.ptr.i, ptr noundef %arrayidx) #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i123, %if.then.i122
  %data.i = getelementptr %struct.cpsw_slave, ptr %50, i32 %sub, i32 3
  %79 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i, align 4
  %phy_node.i = getelementptr inbounds %struct.cpsw_slave_data, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %phy_node.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %phy_node.i, align 4
  %tobool.not.i124 = icmp eq ptr %82, null
  br i1 %tobool.not.i124, label %do.end.i, label %if.end.i.if.end7.i_crit_edge

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end7.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 4
  %slave_num.i = getelementptr %struct.cpsw_slave, ptr %50, i32 %sub, i32 1
  %85 = ptrtoint ptr %slave_num.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %slave_num.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.23, i32 noundef %86) #17
  br label %if.end7.i

if.end7.i:                                        ; preds = %do.end.i, %if.end.i.if.end7.i_crit_edge
  %87 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %add.ptr.i, align 128
  %89 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i, align 4
  %phy_node9.i = getelementptr inbounds %struct.cpsw_slave_data, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %phy_node9.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %phy_node9.i, align 4
  %phy_if.i = getelementptr inbounds %struct.cpsw_slave_data, ptr %90, i32 0, i32 3
  %93 = ptrtoint ptr %phy_if.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %phy_if.i, align 4
  %call11.i = tail call ptr @of_phy_connect(ptr noundef %88, ptr noundef %92, ptr noundef nonnull @cpsw_adjust_link, i32 noundef 0, i32 noundef %94) #14
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %do.end16.i, label %if.end21.i

do.end16.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %95 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev, align 4
  %97 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data.i, align 4
  %phy_node19.i = getelementptr inbounds %struct.cpsw_slave_data, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %phy_node19.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %phy_node19.i, align 4
  %slave_num20.i = getelementptr %struct.cpsw_slave, ptr %50, i32 %sub, i32 1
  %101 = ptrtoint ptr %slave_num20.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %slave_num20.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.26, ptr noundef %100, i32 noundef %102) #17
  br label %cpsw_slave_open.exit

if.end21.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #16
  %phy22.i = getelementptr %struct.cpsw_slave, ptr %50, i32 %sub, i32 4
  %103 = ptrtoint ptr %phy22.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call11.i, ptr %phy22.i, align 4
  tail call void @phy_attached_info(ptr noundef nonnull %call11.i) #14
  %104 = ptrtoint ptr %phy22.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %phy22.i, align 4
  tail call void @phy_start(ptr noundef %105) #14
  %106 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i, align 4
  %ifphy.i = getelementptr inbounds %struct.cpsw_slave_data, ptr %107, i32 0, i32 6
  %108 = ptrtoint ptr %ifphy.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ifphy.i, align 4
  %phy_if27.i = getelementptr inbounds %struct.cpsw_slave_data, ptr %107, i32 0, i32 3
  %110 = ptrtoint ptr %phy_if27.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %phy_if27.i, align 4
  %call28.i = tail call i32 @phy_set_mode_ext(ptr noundef %109, i32 noundef 15, i32 noundef %111) #14
  br label %cpsw_slave_open.exit

cpsw_slave_open.exit:                             ; preds = %if.end21.i, %do.end16.i
  %112 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool25.not = icmp eq i32 %113, 0
  br i1 %tobool25.not, label %if.then26, label %cpsw_slave_open.exit.if.end61_crit_edge

cpsw_slave_open.exit.if.end61_crit_edge:          ; preds = %cpsw_slave_open.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

if.then26:                                        ; preds = %cpsw_slave_open.exit
  %call27 = tail call i32 @cpsw_create_xdp_rxqs(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %if.then26.err_cleanup_crit_edge, label %if.end30

if.then26.err_cleanup_crit_edge:                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_cleanup

if.end30:                                         ; preds = %if.then26
  %call31 = tail call i32 @cpsw_fill_rx_channels(ptr noundef %add.ptr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end30.err_cleanup_crit_edge, label %if.end34

if.end30.err_cleanup_crit_edge:                   ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_cleanup

if.end34:                                         ; preds = %if.end30
  %cpts = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 23
  %114 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %cpts, align 8
  %tobool35.not = icmp eq ptr %115, null
  br i1 %tobool35.not, label %if.end34.if.end49_crit_edge, label %if.then36

if.end34.if.end49_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end49

if.then36:                                        ; preds = %if.end34
  %call38 = tail call i32 @cpts_register(ptr noundef nonnull %115) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.body45, label %do.end43

do.end43:                                         ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.15) #17
  br label %if.end49

do.body45:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !312
  tail call void @arm_heavy_mb() #14
  %wr_regs = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 5
  %118 = ptrtoint ptr %wr_regs to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %wr_regs, align 4
  %misc_en = getelementptr inbounds %struct.cpsw_wr_regs, ptr %119, i32 0, i32 7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %misc_en, i32 268435456) #14, !srcloc !310
  br label %if.end49

if.end49:                                         ; preds = %do.body45, %do.end43, %if.end34.if.end49_crit_edge
  %napi_rx = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 2
  tail call void @napi_enable(ptr noundef %napi_rx) #14
  %napi_tx = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 3
  tail call void @napi_enable(ptr noundef %napi_tx) #14
  %tx_irq_disabled = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 20
  %120 = ptrtoint ptr %tx_irq_disabled to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %tx_irq_disabled, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool50.not = icmp eq i8 %121, 0
  br i1 %tobool50.not, label %if.end49.if.end54_crit_edge, label %if.then51

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  %122 = ptrtoint ptr %tx_irq_disabled to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 0, ptr %tx_irq_disabled, align 2
  %arrayidx53 = getelementptr %struct.cpsw_common, ptr %1, i32 0, i32 21, i32 1
  %123 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx53, align 4
  tail call void @enable_irq(i32 noundef %124) #14
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end49.if.end54_crit_edge
  %rx_irq_disabled = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 19
  %125 = ptrtoint ptr %rx_irq_disabled to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %rx_irq_disabled, align 1, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %126)
  %tobool55.not = icmp eq i8 %126, 0
  br i1 %tobool55.not, label %if.end54.if.end61_crit_edge, label %if.then56

if.end54.if.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end61

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  %127 = ptrtoint ptr %rx_irq_disabled to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 0, ptr %rx_irq_disabled, align 1
  %irqs_table58 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 21
  %128 = ptrtoint ptr %irqs_table58 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %irqs_table58, align 4
  tail call void @enable_irq(i32 noundef %129) #14
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %if.end54.if.end61_crit_edge, %cpsw_slave_open.exit.if.end61_crit_edge
  %130 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %cpsw1, align 4
  %132 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %add.ptr.i, align 128
  %call.i126 = tail call i32 @vlan_for_each(ptr noundef %133, ptr noundef nonnull @cpsw_restore_vlans, ptr noundef %add.ptr.i) #14
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %131, i32 0, i32 13
  %134 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %slaves.i, align 4
  %136 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %emac_port, align 8
  %sub.i = add i32 %137, -1
  %arrayidx.i = getelementptr %struct.cpsw_slave, ptr %135, i32 %sub.i
  tail call void @cpsw_mqprio_resume(ptr noundef %arrayidx.i, ptr noundef %add.ptr.i) #14
  %138 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %slaves.i, align 4
  %140 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %emac_port, align 8
  %sub4.i = add i32 %141, -1
  %arrayidx5.i = getelementptr %struct.cpsw_slave, ptr %139, i32 %sub4.i
  tail call void @cpsw_cbs_resume(ptr noundef %arrayidx5.i, ptr noundef %add.ptr.i) #14
  %coal_intvl = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 9
  %142 = ptrtoint ptr %coal_intvl to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %coal_intvl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp62.not = icmp eq i32 %143, 0
  br i1 %cmp62.not, label %if.end61.if.end66_crit_edge, label %if.then63

if.end61.if.end66_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then63:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %coal) #14
  %144 = call ptr @memset(ptr %coal, i32 255, i32 92)
  %rx_coalesce_usecs = getelementptr inbounds %struct.ethtool_coalesce, ptr %coal, i32 0, i32 1
  %145 = ptrtoint ptr %rx_coalesce_usecs to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %143, ptr %rx_coalesce_usecs, align 4
  %call65 = call i32 @cpsw_set_coalesce(ptr noundef %ndev, ptr noundef nonnull %coal, ptr noundef null, ptr noundef null) #14
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %coal) #14
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end61.if.end66_crit_edge
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 14
  %146 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dma, align 8
  %call67 = call i32 @cpdma_ctlr_start(ptr noundef %147) #14
  call void @cpsw_intr_enable(ptr noundef %1) #14
  %148 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %usage_count, align 4
  %inc = add i32 %149, 1
  store i32 %inc, ptr %usage_count, align 4
  br label %cleanup

err_cleanup:                                      ; preds = %if.end30.err_cleanup_crit_edge, %if.then26.err_cleanup_crit_edge
  %ret.0 = phi i32 [ %call27, %if.then26.err_cleanup_crit_edge ], [ %call31, %if.end30.err_cleanup_crit_edge ]
  %call69 = tail call i32 @cpsw_ndo_stop(ptr noundef %ndev)
  br label %pm_cleanup

pm_cleanup:                                       ; preds = %err_cleanup, %do.end18, %do.end10
  %ret.1 = phi i32 [ %call6, %do.end10 ], [ %call13, %do.end18 ], [ %ret.0, %err_cleanup ]
  %150 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %1, align 8
  %call.i127 = tail call i32 @__pm_runtime_idle(ptr noundef %151, i32 noundef 4) #14
  br label %cleanup

cleanup:                                          ; preds = %pm_cleanup, %if.end66, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %pm_cleanup ], [ 0, %if.end66 ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_stop(ptr noundef %ndev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %msg_enable = getelementptr i8, ptr %ndev, i32 2312
  %2 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_enable, align 8
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end6_crit_edge, label %land.lhs.true

entry.do.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end6

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end6_crit_edge, label %do.end

land.lhs.true.do.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end6

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr i8, ptr %ndev, i32 2308
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.31) #17
  br label %do.end6

do.end6:                                          ; preds = %do.end, %land.lhs.true.do.end6_crit_edge, %entry.do.end6_crit_edge
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slaves, align 4
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  %8 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %emac_port, align 8
  %sub = add i32 %9, -1
  %phy = getelementptr %struct.cpsw_slave, ptr %7, i32 %sub, i32 4
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %tobool7.not = icmp eq ptr %11, null
  br i1 %tobool7.not, label %do.end6.if.end10_crit_edge, label %if.then8

do.end6.if.end10_crit_edge:                       ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then8:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @phy_stop(ptr noundef nonnull %11) #14
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.end6.if.end10_crit_edge
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 128
  tail call void @netif_tx_stop_all_queues(ptr noundef %13) #14
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 4
  %tobool13.not = icmp eq ptr %15, null
  br i1 %tobool13.not, label %if.end10.if.end17_crit_edge, label %if.then14

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @phy_disconnect(ptr noundef nonnull %15) #14
  %16 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %phy, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end10.if.end17_crit_edge
  %mc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  tail call void @__hw_addr_ref_unsync_dev(ptr noundef %mc, ptr noundef %ndev, ptr noundef nonnull @cpsw_purge_all_mc) #14
  %usage_count = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 28
  %17 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp = icmp slt i32 %18, 2
  br i1 %cmp, label %if.then18, label %if.end17.if.end20_crit_edge

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20

if.then18:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #16
  %napi_rx = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 2
  tail call void @napi_disable(ptr noundef %napi_rx) #14
  %napi_tx = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 3
  tail call void @napi_disable(ptr noundef %napi_tx) #14
  %cpts = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 23
  %19 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cpts, align 8
  tail call void @cpts_unregister(ptr noundef %20) #14
  tail call void @cpsw_intr_disable(ptr noundef %1) #14
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 14
  %21 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dma, align 8
  %call19 = tail call i32 @cpdma_ctlr_stop(ptr noundef %22) #14
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %23 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ale, align 4
  tail call void @cpsw_ale_stop(ptr noundef %24) #14
  tail call void @cpsw_destroy_xdp_rxqs(ptr noundef %1) #14
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end17.if.end20_crit_edge
  %call21 = tail call i32 @cpsw_need_resplit(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.if.end24_crit_edge, label %if.then23

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @cpsw_split_res(ptr noundef %1) #14
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %if.end20.if.end24_crit_edge
  %25 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %usage_count, align 4
  %dec = add i32 %26, -1
  store i32 %dec, ptr %usage_count, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %28, i32 noundef 4) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_start_xmit(ptr noundef %skb, ptr noundef %ndev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %tx_packet_min = getelementptr i8, ptr %ndev, i32 3476
  %2 = ptrtoint ptr %tx_packet_min to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %tx_packet_min, align 4
  %len1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %4 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.i.i = icmp ugt i32 %3, %5
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.if.end14_crit_edge, !prof !313

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end14

if.then.i.i:                                      ; preds = %entry
  %sub.i.i = sub i32 %3, %5
  %call.i.i = tail call i32 @__skb_pad(ptr noundef %skb, i32 noundef %sub.i.i, i1 noundef zeroext true) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool4.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i, label %do.body4

if.end.i.i:                                       ; preds = %if.then.i.i
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %6 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data_len.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not.i.i.i = icmp eq i32 %7, 0
  br i1 %tobool.i.not.i.i.i, label %__skb_put.exit.i.i, label %do.body3.i.i.i, !prof !314

do.body3.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #14, !srcloc !315
  unreachable

__skb_put.exit.i.i:                               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %8 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr i8, ptr %9, i32 %sub.i.i
  store ptr %add.ptr.i.i.i, ptr %tail.i.i.i, align 8
  %10 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len1.i.i, align 4
  %add.i.i.i = add i32 %11, %sub.i.i
  store i32 %add.i.i.i, ptr %len1.i.i, align 4
  br label %if.end14

do.body4:                                         ; preds = %if.then.i.i
  %msg_enable = getelementptr i8, ptr %ndev, i32 2312
  %12 = ptrtoint ptr %msg_enable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %msg_enable, align 8
  %and = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body4.do.end13_crit_edge, label %land.lhs.true

do.body4.do.end13_crit_edge:                      ; preds = %do.body4
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

land.lhs.true:                                    ; preds = %do.body4
  %call6 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true.do.end13_crit_edge, label %do.end11

land.lhs.true.do.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end13

do.end11:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr i8, ptr %ndev, i32 2308
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.33) #17
  br label %do.end13

do.end13:                                         ; preds = %do.end11, %land.lhs.true.do.end13_crit_edge, %do.body4.do.end13_crit_edge
  %tx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %16 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tx_dropped, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %tx_dropped, align 4
  br label %cleanup

if.end14:                                         ; preds = %__skb_put.exit.i.i, %entry.if.end14_crit_edge
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %18 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i, align 4
  %tx_flags = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %tx_flags to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tx_flags, align 1
  %22 = and i8 %21, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool17.not = icmp eq i8 %22, 0
  br i1 %tobool17.not, label %if.end14.if.end28_crit_edge, label %land.lhs.true18

if.end14.if.end28_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

land.lhs.true18:                                  ; preds = %if.end14
  %tx_ts_enabled = getelementptr i8, ptr %ndev, i32 2348
  %23 = ptrtoint ptr %tx_ts_enabled to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tx_ts_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool19.not = icmp eq i32 %24, 0
  br i1 %tobool19.not, label %land.lhs.true18.if.end28_crit_edge, label %land.lhs.true20

land.lhs.true18.if.end28_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

land.lhs.true20:                                  ; preds = %land.lhs.true18
  %call.i = tail call i32 @ptp_classify_raw(ptr noundef %skb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i.not = icmp eq i32 %call.i, 0
  br i1 %cmp.i.not, label %land.lhs.true20.if.end28_crit_edge, label %if.then23

land.lhs.true20.if.end28_crit_edge:               ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then23:                                        ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %end.i, align 4
  %tx_flags25 = getelementptr inbounds %struct.skb_shared_info, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %tx_flags25 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tx_flags25, align 1
  %29 = or i8 %28, 4
  store i8 %29, ptr %tx_flags25, align 1
  br label %if.end28

if.end28:                                         ; preds = %if.then23, %land.lhs.true20.if.end28_crit_edge, %land.lhs.true18.if.end28_crit_edge, %if.end14.if.end28_crit_edge
  %queue_mapping.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %30 = ptrtoint ptr %queue_mapping.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %queue_mapping.i, align 8
  %conv30 = zext i16 %31 to i32
  %tx_ch_num = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 26
  %32 = ptrtoint ptr %tx_ch_num to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tx_ch_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv30)
  %cmp.not = icmp sgt i32 %33, %conv30
  br i1 %cmp.not, label %if.end28.if.end34_crit_edge, label %if.then32

if.end28.if.end34_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then32:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %rem = srem i32 %conv30, %33
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end28.if.end34_crit_edge
  %q_idx.0 = phi i32 [ %rem, %if.then32 ], [ %conv30, %if.end28.if.end34_crit_edge ]
  %arrayidx = getelementptr %struct.cpsw_common, ptr %1, i32 0, i32 15, i32 %q_idx.0
  %34 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx, align 4
  %_tx.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  %36 = ptrtoint ptr %_tx.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %_tx.i, align 128
  %arrayidx.i = getelementptr %struct.netdev_queue, ptr %37, i32 %q_idx.0
  tail call void @skb_clone_tx_timestamp(ptr noundef %skb) #14
  %38 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %end.i, align 4
  %tx_flags.i = getelementptr inbounds %struct.skb_shared_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %tx_flags.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tx_flags.i, align 1
  %42 = and i8 %41, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i = icmp eq i8 %42, 0
  br i1 %tobool.not.i, label %if.end34.skb_tx_timestamp.exit_crit_edge, label %if.then.i

if.end34.skb_tx_timestamp.exit_crit_edge:         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %skb_tx_timestamp.exit

if.then.i:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @skb_tstamp_tx(ptr noundef %skb, ptr noundef null) #14
  br label %skb_tx_timestamp.exit

skb_tx_timestamp.exit:                            ; preds = %if.then.i, %if.end34.skb_tx_timestamp.exit_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %45 = ptrtoint ptr %len1.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len1.i.i, align 4
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  %47 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %emac_port, align 8
  %call36 = tail call i32 @cpdma_chan_submit(ptr noundef %35, ptr noundef %skb, ptr noundef %44, i32 noundef %46, i32 noundef %48) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %if.end57, label %do.body42, !prof !314

do.body42:                                        ; preds = %skb_tx_timestamp.exit
  %msg_enable43 = getelementptr i8, ptr %ndev, i32 2312
  %49 = ptrtoint ptr %msg_enable43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %msg_enable43, align 8
  %and44 = and i32 %50, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %do.body42.fail_crit_edge, label %land.lhs.true46

do.body42.fail_crit_edge:                         ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

land.lhs.true46:                                  ; preds = %do.body42
  %call47 = tail call i32 @net_ratelimit() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %land.lhs.true46.fail_crit_edge, label %do.end52

land.lhs.true46.fail_crit_edge:                   ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #16
  br label %fail

do.end52:                                         ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #16
  %dev53 = getelementptr i8, ptr %ndev, i32 2308
  %51 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev53, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.36) #17
  br label %fail

if.end57:                                         ; preds = %skb_tx_timestamp.exit
  %call58 = tail call zeroext i1 @cpdma_check_free_tx_desc(ptr noundef %35) #14
  br i1 %call58, label %if.end57.cleanup_crit_edge, label %if.then67, !prof !314

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then67:                                        ; preds = %if.end57
  %state.i = getelementptr %struct.netdev_queue, ptr %37, i32 %q_idx.0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !316
  %call74 = tail call zeroext i1 @cpdma_check_free_tx_desc(ptr noundef %35) #14
  br i1 %call74, label %if.then75, label %if.then67.cleanup_crit_edge

if.then67.cleanup_crit_edge:                      ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then75:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i) #14
  br label %cleanup

fail:                                             ; preds = %do.end52, %land.lhs.true46.fail_crit_edge, %do.body42.fail_crit_edge
  %tx_dropped79 = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 36, i32 7
  %53 = ptrtoint ptr %tx_dropped79 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_dropped79, align 4
  %inc80 = add i32 %54, 1
  store i32 %inc80, ptr %tx_dropped79, align 4
  %state.i126 = getelementptr %struct.netdev_queue, ptr %37, i32 %q_idx.0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i126) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !317
  %call87 = tail call zeroext i1 @cpdma_check_free_tx_desc(ptr noundef %35) #14
  br i1 %call87, label %if.then88, label %fail.cleanup_crit_edge

fail.cleanup_crit_edge:                           ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then88:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %fail.cleanup_crit_edge, %if.then75, %if.then67.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %do.end13
  %retval.0 = phi i32 [ 1, %do.end13 ], [ 0, %if.then67.cleanup_crit_edge ], [ 0, %if.then75 ], [ 0, %if.end57.cleanup_crit_edge ], [ 16, %if.then88 ], [ 16, %fail.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpsw_ndo_set_rx_mode(ptr noundef %ndev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 14
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpsw1, align 4
  %dual_emac.i.i = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 1, i32 8
  %6 = ptrtoint ptr %dual_emac.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %dual_emac.i.i, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %if.then.cpsw_set_promiscious.exit_crit_edge, label %if.end24.i

if.then.cpsw_set_promiscious.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_set_promiscious.exit

if.end24.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %ale.i = getelementptr inbounds %struct.cpsw_common, ptr %5, i32 0, i32 17
  %8 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ale.i, align 4
  %call27.i = tail call i32 @cpsw_ale_control_set(ptr noundef %9, i32 noundef 0, i32 noundef 3, i32 noundef 1) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_set_promiscious.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_ndo_set_rx_mode, %if.then40.i)) #14
          to label %cpsw_set_promiscious.exit [label %if.then40.i], !srcloc !318

if.then40.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #16
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_set_promiscious.__UNIQUE_ID_ddebug524, ptr noundef %11, ptr noundef nonnull @.str.40) #14
  br label %cpsw_set_promiscious.exit

cpsw_set_promiscious.exit:                        ; preds = %if.then40.i, %if.end24.i, %if.then.cpsw_set_promiscious.exit_crit_edge
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ale, align 4
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  %14 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %emac_port, align 8
  tail call void @cpsw_ale_set_allmulti(ptr noundef %13, i32 noundef 512, i32 noundef %15) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @cpsw_set_promiscious(ptr noundef %ndev, i1 noundef zeroext false)
  %ale2 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %16 = ptrtoint ptr %ale2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ale2, align 4
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 8
  %and4 = and i32 %19, 512
  %emac_port5 = getelementptr i8, ptr %ndev, i32 3464
  %20 = ptrtoint ptr %emac_port5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %emac_port5, align 8
  tail call void @cpsw_ale_set_allmulti(ptr noundef %17, i32 noundef %and4, i32 noundef %21) #14
  %mc = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 66
  %call6 = tail call i32 @__hw_addr_ref_sync_dev(ptr noundef %mc, ptr noundef %ndev, ptr noundef nonnull @cpsw_add_mc_addr, ptr noundef nonnull @cpsw_del_mc_addr) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %cpsw_set_promiscious.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_set_mac_address(ptr noundef %ndev, ptr noundef %p) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpsw_slave_index to i32))
  %2 = load ptr, ptr @cpsw_slave_index, align 4
  %call2 = tail call i32 %2(ptr noundef %1, ptr noundef %add.ptr.i) #14
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  %3 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sa_data, align 4
  %5 = and i32 %4, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

is_valid_ether_addr.exit:                         ; preds = %entry
  %add.ptr.i.i = getelementptr %struct.sockaddr, ptr %p, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %7 to i32
  %or.i.i = or i32 %4, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.cleanup_crit_edge, label %if.end

is_valid_ether_addr.exit.cleanup_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %is_valid_ether_addr.exit
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #14
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #14, !srcloc !305
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then5.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !306
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %13 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slaves, align 4
  %port_vlan = getelementptr %struct.cpsw_slave, ptr %14, i32 %call2, i32 6
  %15 = ptrtoint ptr %port_vlan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_vlan, align 4
  %conv = trunc i32 %16 to i16
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %17 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ale, align 4
  %mac_addr = getelementptr i8, ptr %ndev, i32 2316
  %call9 = tail call i32 @cpsw_ale_del_ucast(ptr noundef %18, ptr noundef %mac_addr, i32 noundef 0, i32 noundef 9, i16 noundef zeroext %conv) #14
  %19 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ale, align 4
  %call13 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %20, ptr noundef %sa_data, i32 noundef 0, i32 noundef 9, i16 noundef zeroext %conv) #14
  %21 = ptrtoint ptr %sa_data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sa_data, align 4
  %23 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %mac_addr, align 4
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %ndev, i32 2320
  %26 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %add.ptr1.i, align 2
  tail call void @dev_addr_mod(ptr noundef %ndev, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #14
  %27 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %slaves, align 4
  %arrayidx21 = getelementptr %struct.cpsw_slave, ptr %28, i32 %call2
  tail call void @cpsw_set_slave_mac(ptr noundef %arrayidx21, ptr noundef %add.ptr.i) #14
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %1, align 8
  %call.i50 = tail call i32 @__pm_runtime_idle(ptr noundef %30, i32 noundef 5) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %do.end11.i.i.i.i, %if.then5.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end7 ], [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ %call.i, %if.then5.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ], [ -99, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ndo_ioctl(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ndo_tx_timeout(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_vlan_rx_add_vid(ptr noundef %ndev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %dual_emac.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %dual_emac.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dual_emac.i, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_ndo_vlan_rx_add_vid.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_ndo_vlan_rx_add_vid, %if.then6)) #14
          to label %cleanup [label %if.then6], !srcloc !318

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_ndo_vlan_rx_add_vid.__UNIQUE_ID_ddebug538, ptr noundef %5, ptr noundef nonnull @.str.43) #14
  br label %cleanup

if.end7:                                          ; preds = %entry
  %conv = zext i16 %vid to i32
  %default_vlan = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %default_vlan to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %default_vlan, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %vid)
  %cmp = icmp eq i16 %7, %vid
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp14 = icmp slt i32 %call.i, 0
  br i1 %cmp14, label %if.then16, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end11
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp2082.not = icmp eq i32 %11, 0
  br i1 %cmp2082.not, label %for.cond.preheader.do.body32_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body32_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body32

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %slaves22 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %slaves22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slaves22, align 4
  br label %for.body

if.then16:                                        ; preds = %if.end11
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #14
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #14, !srcloc !305
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then16.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !306
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ndev23 = getelementptr %struct.cpsw_slave, ptr %13, i32 %i.083, i32 5
  %17 = ptrtoint ptr %ndev23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev23, align 4
  %tobool24.not = icmp eq ptr %18, null
  br i1 %tobool24.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %port_vlan = getelementptr %struct.cpsw_slave, ptr %13, i32 %i.083, i32 6
  %19 = ptrtoint ptr %port_vlan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_vlan, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv)
  %cmp28 = icmp eq i32 %20, %conv
  br i1 %cmp28, label %land.lhs.true.err_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.083, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.inc.do.body32_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.do.body32_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body32

do.body32:                                        ; preds = %for.inc.do.body32_crit_edge, %for.cond.preheader.do.body32_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_ndo_vlan_rx_add_vid.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_ndo_vlan_rx_add_vid, %if.then44)) #14
          to label %do.end49 [label %if.then44], !srcloc !318

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #16
  %dev45 = getelementptr i8, ptr %ndev, i32 2308
  %21 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_ndo_vlan_rx_add_vid.__UNIQUE_ID_ddebug539, ptr noundef %22, ptr noundef nonnull @.str.44, i32 noundef %conv) #14
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %do.body32
  %23 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cpsw1, align 4
  %emac_port.i = getelementptr i8, ptr %ndev, i32 3464
  %25 = ptrtoint ptr %emac_port.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %emac_port.i, align 8
  %shl.i = shl nuw i32 1, %26
  %or.i = or i32 %shl.i, 1
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %add.ptr.i, align 128
  %flags.i = getelementptr inbounds %struct.net_device, ptr %28, i32 0, i32 14
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 8
  %and.i = lshr i32 %30, 9
  %and.lobit.i = and i32 %and.i, 1
  %ale.i = getelementptr inbounds %struct.cpsw_common, ptr %24, i32 0, i32 17
  %31 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ale.i, align 4
  %call.i77 = tail call i32 @cpsw_ale_add_vlan(ptr noundef %32, i16 noundef zeroext %vid, i32 noundef %or.i, i32 noundef 0, i32 noundef %or.i, i32 noundef %and.lobit.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %cmp.not.i = icmp eq i32 %call.i77, 0
  br i1 %cmp.not.i, label %if.end3.i, label %do.end49.err_crit_edge

do.end49.err_crit_edge:                           ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end3.i:                                        ; preds = %do.end49
  %33 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ale.i, align 4
  %mac_addr.i = getelementptr i8, ptr %ndev, i32 2316
  %call5.i = tail call i32 @cpsw_ale_add_ucast(ptr noundef %34, ptr noundef %mac_addr.i, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %vid) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.not.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.not.i, label %if.end8.i, label %if.end3.i.clean_vid.i_crit_edge

if.end3.i.clean_vid.i_crit_edge:                  ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %clean_vid.i

if.end8.i:                                        ; preds = %if.end3.i
  %35 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ale.i, align 4
  %37 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i, align 128
  %broadcast.i = getelementptr inbounds %struct.net_device, ptr %38, i32 0, i32 99
  %call12.i = tail call i32 @cpsw_ale_add_mcast(ptr noundef %36, ptr noundef %broadcast.i, i32 noundef 1, i32 noundef 8, i16 noundef zeroext %vid, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 0
  br i1 %cmp13.not.i, label %if.end8.i.err_crit_edge, label %clean_vlan_ucast.i

if.end8.i.err_crit_edge:                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

clean_vlan_ucast.i:                               ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #16
  %39 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ale.i, align 4
  %call19.i = tail call i32 @cpsw_ale_del_ucast(ptr noundef %40, ptr noundef %mac_addr.i, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %vid) #14
  br label %clean_vid.i

clean_vid.i:                                      ; preds = %clean_vlan_ucast.i, %if.end3.i.clean_vid.i_crit_edge
  %ret.0.i = phi i32 [ %call5.i, %if.end3.i.clean_vid.i_crit_edge ], [ %call12.i, %clean_vlan_ucast.i ]
  %41 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ale.i, align 4
  %call21.i = tail call i32 @cpsw_ale_del_vlan(ptr noundef %42, i16 noundef zeroext %vid, i32 noundef 0) #14
  br label %err

err:                                              ; preds = %clean_vid.i, %if.end8.i.err_crit_edge, %do.end49.err_crit_edge, %land.lhs.true.err_crit_edge
  %ret.0 = phi i32 [ %ret.0.i, %clean_vid.i ], [ %call.i77, %do.end49.err_crit_edge ], [ 0, %if.end8.i.err_crit_edge ], [ -22, %land.lhs.true.err_crit_edge ]
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 8
  %call.i79 = tail call i32 @__pm_runtime_idle(ptr noundef %44, i32 noundef 5) #14
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end11.i.i.i.i, %if.then16.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.then6 ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %do.body ], [ %call.i, %if.then16.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_vlan_rx_kill_vid(ptr noundef %ndev, i16 noundef zeroext %proto, i16 noundef zeroext %vid) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %dual_emac.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %dual_emac.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dual_emac.i, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_ndo_vlan_rx_kill_vid.__UNIQUE_ID_ddebug543, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_ndo_vlan_rx_kill_vid, %if.then6)) #14
          to label %cleanup [label %if.then6], !srcloc !318

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_ndo_vlan_rx_kill_vid.__UNIQUE_ID_ddebug543, ptr noundef %5, ptr noundef nonnull @.str.46) #14
  br label %cleanup

if.end7:                                          ; preds = %entry
  %conv = zext i16 %vid to i32
  %default_vlan = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %default_vlan to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %default_vlan, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %vid)
  %cmp = icmp eq i16 %7, %vid
  br i1 %cmp, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 8
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %9, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp14 = icmp slt i32 %call.i, 0
  br i1 %cmp14, label %if.then16, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end11
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp20127.not = icmp eq i32 %11, 0
  br i1 %cmp20127.not, label %for.cond.preheader.do.body32_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body32_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body32

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %slaves22 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %12 = ptrtoint ptr %slaves22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slaves22, align 4
  br label %for.body

if.then16:                                        ; preds = %if.end11
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %usage_count.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #14
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #14, !srcloc !305
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then16.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !306
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0128 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ndev23 = getelementptr %struct.cpsw_slave, ptr %13, i32 %i.0128, i32 5
  %17 = ptrtoint ptr %ndev23 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev23, align 4
  %tobool24.not = icmp eq ptr %18, null
  br i1 %tobool24.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %port_vlan = getelementptr %struct.cpsw_slave, ptr %13, i32 %i.0128, i32 6
  %19 = ptrtoint ptr %port_vlan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_vlan, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv)
  %cmp28 = icmp eq i32 %20, %conv
  br i1 %cmp28, label %land.lhs.true.err_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true.err_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0128, 1
  %exitcond.not = icmp eq i32 %inc, %11
  br i1 %exitcond.not, label %for.inc.do.body32_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.do.body32_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body32

do.body32:                                        ; preds = %for.inc.do.body32_crit_edge, %for.cond.preheader.do.body32_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_ndo_vlan_rx_kill_vid.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_ndo_vlan_rx_kill_vid, %if.then44)) #14
          to label %do.end49 [label %if.then44], !srcloc !318

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #16
  %dev45 = getelementptr i8, ptr %ndev, i32 2308
  %21 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev45, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_ndo_vlan_rx_kill_vid.__UNIQUE_ID_ddebug544, ptr noundef %22, ptr noundef nonnull @.str.47, i32 noundef %conv) #14
  br label %do.end49

do.end49:                                         ; preds = %if.then44, %do.body32
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %23 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ale, align 4
  %call50 = tail call i32 @cpsw_ale_del_vlan(ptr noundef %24, i16 noundef zeroext %vid, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %do.end49.if.end57_crit_edge, label %do.end55

do.end49.if.end57_crit_edge:                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end57

do.end55:                                         ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #16
  %dev56 = getelementptr i8, ptr %ndev, i32 2308
  %25 = ptrtoint ptr %dev56 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev56, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.48, i32 noundef %call50) #17
  br label %if.end57

if.end57:                                         ; preds = %do.end55, %do.end49.if.end57_crit_edge
  %27 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ale, align 4
  %mac_addr = getelementptr i8, ptr %ndev, i32 2316
  %call59 = tail call i32 @cpsw_ale_del_ucast(ptr noundef %28, ptr noundef %mac_addr, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %vid) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end57.if.end66_crit_edge, label %do.end64

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

do.end64:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #16
  %dev65 = getelementptr i8, ptr %ndev, i32 2308
  %29 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev65, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.50, i32 noundef %call59) #17
  br label %if.end66

if.end66:                                         ; preds = %do.end64, %if.end57.if.end66_crit_edge
  %31 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ale, align 4
  %33 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %add.ptr.i, align 128
  %broadcast = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 99
  %call70 = tail call i32 @cpsw_ale_del_mcast(ptr noundef %32, ptr noundef %broadcast, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %vid) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end66.if.end77_crit_edge, label %do.end75

if.end66.if.end77_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end77

do.end75:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #16
  %dev76 = getelementptr i8, ptr %ndev, i32 2308
  %35 = ptrtoint ptr %dev76 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev76, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.53, i32 noundef %call70) #17
  br label %if.end77

if.end77:                                         ; preds = %do.end75, %if.end66.if.end77_crit_edge
  %37 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ale, align 4
  %call80 = tail call i32 @cpsw_ale_flush_multicast(ptr noundef %38, i32 noundef 1, i32 noundef %conv) #14
  br label %err

err:                                              ; preds = %if.end77, %land.lhs.true.err_crit_edge
  %ret.0 = phi i32 [ 0, %if.end77 ], [ -22, %land.lhs.true.err_crit_edge ]
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %1, align 8
  %call.i124 = tail call i32 @__pm_runtime_idle(ptr noundef %40, i32 noundef 5) #14
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end11.i.i.i.i, %if.then16.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then6, %do.body
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %if.then6 ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %do.body ], [ %call.i, %if.then16.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpsw_ndo_poll_controller(ptr nocapture noundef readonly %ndev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  tail call void @cpsw_intr_disable(ptr noundef %1) #14
  %irqs_table = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %irqs_table to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irqs_table, align 4
  %call2 = tail call i32 @cpsw_rx_interrupt(i32 noundef %3, ptr noundef %1) #14
  %arrayidx4 = getelementptr %struct.cpsw_common, ptr %1, i32 0, i32 21, i32 1
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4, align 4
  %call5 = tail call i32 @cpsw_tx_interrupt(i32 noundef %5, ptr noundef %1) #14
  tail call void @cpsw_intr_enable(ptr noundef %1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ndo_setup_tc(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpsw_get_port_parent_id(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %ppid) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %id_len = getelementptr inbounds %struct.netdev_phys_item_id, ptr %ppid, i32 0, i32 1
  %2 = ptrtoint ptr %id_len to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 6, ptr %id_len, align 1
  %base_mac = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 33
  %3 = call ptr @memcpy(ptr %ppid, ptr %base_mac, i32 6)
  ret i32 0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_get_phys_port_name(ptr nocapture noundef readonly %ndev, ptr nocapture noundef writeonly %name, i32 noundef %len) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  %0 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %emac_port, align 8
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef %len, ptr noundef nonnull @.str.55, i32 noundef %1)
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %len)
  %cmp.not = icmp ult i32 %call1, %len
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ndo_set_tx_maxrate(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ndo_bpf(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_ndo_xdp_xmit(ptr noundef %ndev, i32 noundef %n, ptr nocapture noundef readonly %frames, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flags)
  %tobool.not = icmp ult i32 %flags, 2
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge, !prof !314

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp21 = icmp sgt i32 %n, 0
  br i1 %cmp21, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %tx_packet_min = getelementptr i8, ptr %ndev, i32 3476
  br label %for.body

for.body:                                         ; preds = %if.end10.for.body_crit_edge, %for.body.lr.ph
  %nxmit.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end10.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %frames, i32 %nxmit.023
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %len = getelementptr inbounds %struct.xdp_frame, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %len, align 4
  %conv = zext i16 %3 to i32
  %4 = ptrtoint ptr %tx_packet_min to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %tx_packet_min, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %conv)
  %cmp3 = icmp ugt i32 %5, %conv
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %if.end6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %for.body
  %6 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %emac_port, align 8
  %call7 = tail call i32 @cpsw_xdp_tx_frame(ptr noundef %add.ptr.i, ptr noundef %1, ptr noundef null, i32 noundef %7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  %inc = add nuw nsw i32 %nxmit.023, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %if.end10.cleanup_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %nxmit.023, %if.end6.cleanup_crit_edge ], [ %nxmit.023, %for.body.cleanup_crit_edge ], [ %n, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #14
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #14, !srcloc !305
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !306
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_tx_queues(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_set_real_num_rx_queues(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_create_xdp_rxqs(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_fill_rx_channels(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpts_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_coalesce(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_intr_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @soft_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ale_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_control_set(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpsw_init_host_port_switch(ptr nocapture noundef readonly %cpsw) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %default_vlan = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %default_vlan to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %default_vlan, align 4
  %conv = zext i16 %1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !319
  tail call void @arm_heavy_mb() #14
  %host_port_regs = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 7
  %2 = ptrtoint ptr %host_port_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_port_regs, align 4
  %tx_in_ctl = getelementptr inbounds %struct.cpsw_host_regs, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tx_in_ctl, i32 0) #14, !srcloc !310
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !320
  tail call void @arm_heavy_mb() #14
  %4 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %5 = ptrtoint ptr %host_port_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %host_port_regs, align 4
  %port_vlan = getelementptr inbounds %struct.cpsw_host_regs, ptr %6, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %port_vlan, i32 %4) #14, !srcloc !310
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 17
  %7 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ale, align 4
  %call = tail call i32 @cpsw_ale_add_vlan(ptr noundef %8, i16 noundef zeroext %1, i32 noundef 7, i32 noundef 7, i32 noundef 7, i32 noundef 6) #14
  %9 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ale, align 4
  %call.i = tail call i32 @cpsw_ale_add_mcast(ptr noundef %10, ptr noundef nonnull @cpsw_init_stp_ale_entry.stpa, i32 noundef 1, i32 noundef 4, i16 noundef zeroext 0, i32 noundef 1) #14
  %11 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ale, align 4
  %call7 = tail call i32 @cpsw_ale_control_set(ptr noundef %12, i32 noundef 0, i32 noundef 3, i32 noundef 1) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_init_host_port_switch.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_init_host_port_switch, %if.then)) #14
          to label %do.end13 [label %if.then], !srcloc !318

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %cpsw to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpsw, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_init_host_port_switch.__UNIQUE_ID_ddebug540, ptr noundef %14, ptr noundef nonnull @.str.20) #14
  br label %do.end13

do.end13:                                         ; preds = %if.then, %entry
  %15 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ale, align 4
  %call15 = tail call i32 @cpsw_ale_control_set(ptr noundef %16, i32 noundef 0, i32 noundef 15, i32 noundef 0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpsw_init_host_port_dual_mac(ptr nocapture noundef readonly %cpsw) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %default_vlan = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %default_vlan to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %default_vlan, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !321
  tail call void @arm_heavy_mb() #14
  %host_port_regs = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 7
  %2 = ptrtoint ptr %host_port_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_port_regs, align 4
  %tx_in_ctl = getelementptr inbounds %struct.cpsw_host_regs, ptr %3, i32 0, i32 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %tx_in_ctl, i32 256) #14, !srcloc !310
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 17
  %4 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ale, align 4
  %call = tail call i32 @cpsw_ale_control_set(ptr noundef %5, i32 noundef 0, i32 noundef 3, i32 noundef 0) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_init_host_port_dual_mac.__UNIQUE_ID_ddebug541, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_init_host_port_dual_mac, %if.then)) #14
          to label %do.body7 [label %if.then], !srcloc !318

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %cpsw to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpsw, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_init_host_port_dual_mac.__UNIQUE_ID_ddebug541, ptr noundef %7, ptr noundef nonnull @.str.22) #14
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %conv = zext i16 %1 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #14, !srcloc !322
  tail call void @arm_heavy_mb() #14
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv)
  %9 = ptrtoint ptr %host_port_regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %host_port_regs, align 4
  %port_vlan = getelementptr inbounds %struct.cpsw_host_regs, ptr %10, i32 0, i32 3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %port_vlan, i32 %8) #14, !srcloc !310
  %11 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ale, align 4
  %call13 = tail call i32 @cpsw_ale_add_vlan(ptr noundef %12, i16 noundef zeroext %1, i32 noundef 7, i32 noundef 7, i32 noundef 0, i32 noundef 0) #14
  %13 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ale, align 4
  %call15 = tail call i32 @cpsw_ale_control_set(ptr noundef %14, i32 noundef 0, i32 noundef 15, i32 noundef 1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_vlan(ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_mcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_sl_reset(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_sl_ctl_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_sl_reg_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_set_slave_mac(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpsw_port_add_switch_def_ale_entries(ptr noundef %priv, ptr nocapture noundef readonly %slave) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %emac_port = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 15
  %0 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %emac_port, align 8
  %shl = shl nuw i32 1, %1
  %or = or i32 %shl, 1
  %cpsw1 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 16
  %2 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpsw1, align 4
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 17
  %4 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ale, align 4
  %call = tail call i32 @cpsw_ale_control_set(ptr noundef %5, i32 noundef %1, i32 noundef 14, i32 noundef 0) #14
  %6 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ale, align 4
  %8 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %emac_port, align 8
  %call5 = tail call i32 @cpsw_ale_control_set(ptr noundef %7, i32 noundef %9, i32 noundef 15, i32 noundef 0) #14
  %10 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ale, align 4
  %12 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %emac_port, align 8
  %call8 = tail call i32 @cpsw_ale_control_set(ptr noundef %11, i32 noundef %13, i32 noundef 16, i32 noundef 1) #14
  %14 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ale, align 4
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv, align 128
  %broadcast = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 99
  %port_vlan = getelementptr inbounds %struct.cpsw_slave, ptr %slave, i32 0, i32 6
  %18 = ptrtoint ptr %port_vlan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port_vlan, align 4
  %conv = trunc i32 %19 to i16
  %call10 = tail call i32 @cpsw_ale_add_mcast(ptr noundef %15, ptr noundef %broadcast, i32 noundef %or, i32 noundef 8, i16 noundef zeroext %conv, i32 noundef 3) #14
  %20 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ale, align 4
  %mac_addr = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 3
  %22 = ptrtoint ptr %port_vlan to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port_vlan, align 4
  %conv14 = trunc i32 %23 to i16
  %call15 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %21, ptr noundef %mac_addr, i32 noundef 0, i32 noundef 8, i16 noundef zeroext %conv14) #14
  %version = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 8
  %24 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1638666, i32 %25)
  %cmp = icmp eq i32 %25, 1638666
  %cond = select i1 %cmp, i32 12, i32 20
  %26 = ptrtoint ptr %port_vlan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port_vlan, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #14
  %29 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %slave, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #14, !srcloc !310
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpsw_port_add_dual_emac_def_ale_entries(ptr noundef %priv, ptr nocapture noundef readonly %slave) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %emac_port = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 15
  %0 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %emac_port, align 8
  %shl = shl nuw i32 1, %1
  %or = or i32 %shl, 1
  %cpsw1 = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 16
  %2 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpsw1, align 4
  %version = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1638666, i32 %5)
  %cmp = icmp eq i32 %5, 1638666
  %cond = select i1 %cmp, i32 12, i32 20
  %port_vlan = getelementptr inbounds %struct.cpsw_slave, ptr %slave, i32 0, i32 6
  %6 = ptrtoint ptr %port_vlan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_vlan, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #14
  %9 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %slave, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 %cond
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #14, !srcloc !310
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %3, i32 0, i32 17
  %11 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ale, align 4
  %13 = ptrtoint ptr %port_vlan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port_vlan, align 4
  %conv = trunc i32 %14 to i16
  %call = tail call i32 @cpsw_ale_add_vlan(ptr noundef %12, i16 noundef zeroext %conv, i32 noundef %or, i32 noundef %or, i32 noundef %or, i32 noundef 0) #14
  %15 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ale, align 4
  %17 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %priv, align 128
  %broadcast = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 99
  %19 = ptrtoint ptr %port_vlan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port_vlan, align 4
  %conv5 = trunc i32 %20 to i16
  %call6 = tail call i32 @cpsw_ale_add_mcast(ptr noundef %16, ptr noundef %broadcast, i32 noundef 1, i32 noundef 8, i16 noundef zeroext %conv5, i32 noundef 0) #14
  %21 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ale, align 4
  %mac_addr = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 3
  %23 = ptrtoint ptr %port_vlan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port_vlan, align 4
  %conv10 = trunc i32 %24 to i16
  %call11 = tail call i32 @cpsw_ale_add_ucast(ptr noundef %22, ptr noundef %mac_addr, i32 noundef 0, i32 noundef 9, i16 noundef zeroext %conv10) #14
  %25 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ale, align 4
  %27 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %emac_port, align 8
  %call14 = tail call i32 @cpsw_ale_control_set(ptr noundef %26, i32 noundef %28, i32 noundef 14, i32 noundef 1) #14
  %29 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ale, align 4
  %31 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %emac_port, align 8
  %call17 = tail call i32 @cpsw_ale_control_set(ptr noundef %30, i32 noundef %32, i32 noundef 15, i32 noundef 1) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_connect(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpsw_adjust_link(ptr noundef %ndev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slaves, align 4
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  %4 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %emac_port, align 8
  %sub = add i32 %5, -1
  %phy2 = getelementptr %struct.cpsw_slave, ptr %3, i32 %sub, i32 4
  %6 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %link = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %link, align 8
  %9 = and i16 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool3.not = icmp eq i16 %9, 0
  br i1 %tobool3.not, label %if.else47, label %if.then4

if.then4:                                         ; preds = %if.end
  %speed = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 8
  %10 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %11)
  %cmp = icmp eq i32 %11, 1000
  %spec.select = select i1 %cmp, i32 160, i32 32
  %duplex = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 9
  %12 = ptrtoint ptr %duplex to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %duplex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool7.not = icmp ne i32 %13, 0
  %or9 = zext i1 %tobool7.not to i32
  %mac_control.1 = or i32 %spec.select, %or9
  %14 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %11, label %if.then4.if.end21_crit_edge [
    i32 100, label %if.then13
    i32 10, label %land.lhs.true
  ]

if.then4.if.end21_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end21

if.then13:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  %or14 = or i32 %mac_control.1, 32768
  br label %if.end21

land.lhs.true:                                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #16
  %interface.i = getelementptr inbounds %struct.phy_device, ptr %7, i32 0, i32 7
  %15 = ptrtoint ptr %interface.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %interface.i, align 4
  %17 = add i32 %16, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %18 = icmp ult i32 %17, 4
  %or19 = or i32 %mac_control.1, 262144
  %spec.select116 = select i1 %18, i32 %or19, i32 %mac_control.1
  br label %if.end21

if.end21:                                         ; preds = %land.lhs.true, %if.then13, %if.then4.if.end21_crit_edge
  %mac_control.2 = phi i32 [ %or14, %if.then13 ], [ %mac_control.1, %if.then4.if.end21_crit_edge ], [ %spec.select116, %land.lhs.true ]
  %rx_pause = getelementptr i8, ptr %ndev, i32 2322
  %19 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %rx_pause, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool22.not = icmp eq i8 %20, 0
  %or24 = or i32 %mac_control.2, 8
  %spec.select117 = select i1 %tobool22.not, i32 %mac_control.2, i32 %or24
  %tx_pause = getelementptr i8, ptr %ndev, i32 2323
  %21 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %tx_pause, align 1, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool26.not = icmp eq i8 %22, 0
  %or28 = or i32 %spec.select117, 16
  %mac_control.4 = select i1 %tobool26.not, i32 %spec.select117, i32 %or28
  %mac_control30 = getelementptr %struct.cpsw_slave, ptr %3, i32 %sub, i32 2
  %23 = ptrtoint ptr %mac_control30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mac_control30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mac_control.4, i32 %24)
  %cmp31.not = icmp eq i32 %mac_control.4, %24
  br i1 %cmp31.not, label %if.end21.if.end34_crit_edge, label %if.then32

if.end21.if.end34_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end34

if.then32:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #16
  %mac_sl = getelementptr %struct.cpsw_slave, ptr %3, i32 %sub, i32 7
  %25 = ptrtoint ptr %mac_sl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mac_sl, align 4
  %call33 = tail call i32 @cpsw_sl_ctl_set(ptr noundef %26, i32 noundef %mac_control.4) #14
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %if.end21.if.end34_crit_edge
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %27 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ale, align 4
  %29 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %emac_port, align 8
  %call36 = tail call i32 @cpsw_ale_control_set(ptr noundef %28, i32 noundef %30, i32 noundef 12, i32 noundef 3) #14
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 104
  %31 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp4.not.i = icmp eq i32 %32, 0
  br i1 %cmp4.not.i, label %if.end34.netif_tx_wake_all_queues.exit_crit_edge, label %for.body.lr.ph.i

if.end34.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_tx_wake_all_queues.exit

for.body.lr.ph.i:                                 ; preds = %if.end34
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.05.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %_tx.i.i, align 128
  %arrayidx.i.i = getelementptr %struct.netdev_queue, ptr %34, i32 %i.05.i
  tail call void @netif_tx_wake_queue(ptr noundef %arrayidx.i.i) #14
  %inc.i = add nuw i32 %i.05.i, 1
  %35 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %36
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_wake_all_queues.exit_crit_edge

for.body.i.netif_tx_wake_all_queues.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %netif_tx_wake_all_queues.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

netif_tx_wake_all_queues.exit:                    ; preds = %for.body.i.netif_tx_wake_all_queues.exit_crit_edge, %if.end34.netif_tx_wake_all_queues.exit_crit_edge
  %shp_cfg_speed = getelementptr i8, ptr %ndev, i32 2344
  %37 = ptrtoint ptr %shp_cfg_speed to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %shp_cfg_speed, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool37.not = icmp eq i32 %38, 0
  br i1 %tobool37.not, label %netif_tx_wake_all_queues.exit.if.end54_crit_edge, label %land.lhs.true38

netif_tx_wake_all_queues.exit.if.end54_crit_edge: ; preds = %netif_tx_wake_all_queues.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

land.lhs.true38:                                  ; preds = %netif_tx_wake_all_queues.exit
  %39 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %phy2, align 4
  %speed41 = getelementptr inbounds %struct.phy_device, ptr %40, i32 0, i32 8
  %41 = ptrtoint ptr %speed41 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %speed41, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %38, i32 %42)
  %cmp42.not = icmp eq i32 %38, %42
  br i1 %cmp42.not, label %land.lhs.true38.if.end54_crit_edge, label %land.lhs.true43

land.lhs.true38.if.end54_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

land.lhs.true43:                                  ; preds = %land.lhs.true38
  %call44 = tail call zeroext i1 @cpsw_shp_is_off(ptr noundef %add.ptr.i) #14
  br i1 %call44, label %land.lhs.true43.if.end54_crit_edge, label %do.end

land.lhs.true43.if.end54_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end54

do.end:                                           ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #16
  %dev = getelementptr i8, ptr %ndev, i32 2308
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %44, ptr noundef nonnull @.str.28) #17
  br label %if.end54

if.else47:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @netif_tx_stop_all_queues(ptr noundef %ndev) #14
  %ale48 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %45 = ptrtoint ptr %ale48 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ale48, align 4
  %47 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %emac_port, align 8
  %call50 = tail call i32 @cpsw_ale_control_set(ptr noundef %46, i32 noundef %48, i32 noundef 12, i32 noundef 0) #14
  %mac_sl51 = getelementptr %struct.cpsw_slave, ptr %3, i32 %sub, i32 7
  %49 = ptrtoint ptr %mac_sl51 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %mac_sl51, align 4
  %call52 = tail call i32 @cpsw_sl_wait_for_idle(ptr noundef %50, i32 noundef 100) #14
  %51 = ptrtoint ptr %mac_sl51 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %mac_sl51, align 4
  tail call void @cpsw_sl_ctl_reset(ptr noundef %52) #14
  br label %if.end54

if.end54:                                         ; preds = %if.else47, %do.end, %land.lhs.true43.if.end54_crit_edge, %land.lhs.true38.if.end54_crit_edge, %netif_tx_wake_all_queues.exit.if.end54_crit_edge
  %mac_control.5 = phi i32 [ %mac_control.4, %land.lhs.true43.if.end54_crit_edge ], [ %mac_control.4, %do.end ], [ %mac_control.4, %land.lhs.true38.if.end54_crit_edge ], [ %mac_control.4, %netif_tx_wake_all_queues.exit.if.end54_crit_edge ], [ 0, %if.else47 ]
  %mac_control55 = getelementptr %struct.cpsw_slave, ptr %3, i32 %sub, i32 2
  %53 = ptrtoint ptr %mac_control55 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mac_control55, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mac_control.5, i32 %54)
  %cmp56.not = icmp eq i32 %mac_control.5, %54
  br i1 %cmp56.not, label %if.end54.if.end58_crit_edge, label %if.then57

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end58

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @phy_print_status(ptr noundef nonnull %7) #14
  br label %if.end58

if.end58:                                         ; preds = %if.then57, %if.end54.if.end58_crit_edge
  %55 = ptrtoint ptr %mac_control55 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %mac_control.5, ptr %mac_control55, align 4
  %56 = ptrtoint ptr %link to i32
  call void @__asan_load2_noabort(i32 %56)
  %bf.load61 = load i16, ptr %link, align 8
  %57 = and i16 %bf.load61, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %57)
  %tobool65.not = icmp eq i16 %57, 0
  br i1 %tobool65.not, label %if.end58.cleanup_crit_edge, label %land.lhs.true66

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true66:                                  ; preds = %if.end58
  %call67 = tail call i32 @cpsw_need_resplit(ptr noundef %1) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %land.lhs.true66.cleanup_crit_edge, label %if.then69

land.lhs.true66.cleanup_crit_edge:                ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then69:                                        ; preds = %land.lhs.true66
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @cpsw_split_res(ptr noundef %1) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then69, %land.lhs.true66.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_attached_info(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_start(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_set_mode_ext(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_add_ucast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_sl_ctl_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpsw_shp_is_off(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_stop_all_queues(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_sl_wait_for_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_print_status(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_need_resplit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_split_res(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vlan_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_restore_vlans(ptr noundef readnone %vdev, i32 noundef %vid, ptr nocapture noundef readonly %arg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vdev, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vid)
  %tobool1.not = icmp eq i32 %vid, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arg, align 128
  %conv = trunc i32 %vid to i16
  %call = tail call i32 @cpsw_ndo_vlan_rx_add_vid(ptr noundef %1, i16 noundef zeroext 0, i16 noundef zeroext %conv)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_mqprio_resume(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_cbs_resume(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @net_ratelimit() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_disconnect(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__hw_addr_ref_unsync_dev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_purge_all_mc(ptr noundef %ndev, ptr noundef %addr, i32 noundef %num) #4 align 64 {
entry:
  %sync_ctx = alloca %struct.addr_sync_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sync_ctx) #14
  %0 = getelementptr inbounds %struct.addr_sync_ctx, ptr %sync_ctx, i32 0, i32 1
  %1 = getelementptr inbounds %struct.addr_sync_ctx, ptr %sync_ctx, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %sync_ctx, i32 12
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %addr, ptr %0, align 4
  %5 = ptrtoint ptr %sync_ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ndev, ptr %sync_ctx, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %1, align 4
  %call = call i32 @vlan_for_each(ptr noundef %ndev, ptr noundef nonnull @cpsw_purge_vlan_mc, ptr noundef nonnull %sync_ctx) #14
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %num)
  %cmp = icmp slt i32 %8, %num
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1.i = getelementptr i8, ptr %ndev, i32 3468
  %9 = ptrtoint ptr %cpsw1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpsw1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpsw_slave_index to i32))
  %11 = load ptr, ptr @cpsw_slave_index, align 4
  %call2.i = call i32 %11(ptr noundef %10, ptr noundef %add.ptr.i.i) #14
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 13
  %12 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slaves.i, align 4
  %port_vlan.i = getelementptr %struct.cpsw_slave, ptr %13, i32 %call2.i, i32 6
  %14 = ptrtoint ptr %port_vlan.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_vlan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 8
  %ale6.i = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 17
  %16 = ptrtoint ptr %ale6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ale6.i, align 4
  %conv7.i = trunc i32 %15 to i16
  %call8.i = call i32 @cpsw_ale_del_mcast(ptr noundef %17, ptr noundef %addr, i32 noundef 0, i32 noundef %cond.i, i16 noundef zeroext %conv7.i) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sync_ctx) #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_intr_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ale_stop(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_destroy_xdp_rxqs(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_purge_vlan_mc(ptr noundef readonly %vdev, i32 noundef %vid, ptr nocapture noundef %ctx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vdev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.net_device, ptr %vdev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mc = getelementptr inbounds %struct.net_device, ptr %vdev, i32 0, i32 66
  %addr5 = getelementptr inbounds %struct.addr_sync_ctx, ptr %ctx, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %ha.0.in = phi ptr [ %mc, %if.end ], [ %ha.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %ha.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %ha.0 = load ptr, ptr %ha.0.in, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0, i32 0, i32 2
  %3 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr5, align 4
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %xor.i = xor i32 %8, %6
  %add.ptr.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %4, i32 4
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %12, %10
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then6, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

if.then6:                                         ; preds = %for.body
  %sync_cnt = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0, i32 0, i32 5
  %13 = ptrtoint ptr %sync_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sync_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %phi.cmp = icmp eq i32 %14, 0
  br i1 %phi.cmp, label %if.then6.cleanup_crit_edge, label %if.end15

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15:                                         ; preds = %if.then6
  %consumed = getelementptr inbounds %struct.addr_sync_ctx, ptr %ctx, i32 0, i32 2
  %15 = ptrtoint ptr %consumed to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %consumed, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %consumed, align 4
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %18, i32 2304
  %cpsw1.i = getelementptr i8, ptr %18, i32 3468
  %19 = ptrtoint ptr %cpsw1.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cpsw1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpsw_slave_index to i32))
  %21 = load ptr, ptr @cpsw_slave_index, align 4
  %call2.i = tail call i32 %21(ptr noundef %20, ptr noundef %add.ptr.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vid)
  %cmp.i29 = icmp slt i32 %vid, 0
  br i1 %cmp.i29, label %if.then.i, label %if.end15.cpsw_set_mc.exit_crit_edge

if.end15.cpsw_set_mc.exit_crit_edge:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_set_mc.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %20, i32 0, i32 13
  %22 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %slaves.i, align 4
  %port_vlan.i = getelementptr %struct.cpsw_slave, ptr %23, i32 %call2.i, i32 6
  %24 = ptrtoint ptr %port_vlan.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %port_vlan.i, align 4
  br label %cpsw_set_mc.exit

cpsw_set_mc.exit:                                 ; preds = %if.then.i, %if.end15.cpsw_set_mc.exit_crit_edge
  %vid.addr.0.i = phi i32 [ %25, %if.then.i ], [ %vid, %if.end15.cpsw_set_mc.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vid.addr.0.i)
  %tobool.not.i = icmp eq i32 %vid.addr.0.i, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 8
  %ale6.i = getelementptr inbounds %struct.cpsw_common, ptr %20, i32 0, i32 17
  %26 = ptrtoint ptr %ale6.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ale6.i, align 4
  %conv7.i = trunc i32 %vid.addr.0.i to i16
  %call8.i = tail call i32 @cpsw_ale_del_mcast(ptr noundef %27, ptr noundef %4, i32 noundef 0, i32 noundef %cond.i, i16 noundef zeroext %conv7.i) #14
  br label %cleanup

cleanup:                                          ; preds = %cpsw_set_mc.exit, %if.then6.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_mcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_submit(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cpdma_check_free_tx_desc(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_pad(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ptp_classify_raw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_clone_tx_timestamp(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_tstamp_tx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpsw_set_promiscious(ptr nocapture noundef readonly %ndev, i1 noundef zeroext %enable) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %dual_emac.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %dual_emac.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dual_emac.i, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp92.not = icmp eq i32 %5, 0
  br i1 %cmp92.not, label %for.cond.preheader.if.end24_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end24_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %slaves3 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %slaves3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slaves3, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %enable_uni.0.off094 = phi i1 [ false, %for.body.lr.ph ], [ %enable_uni.1.off0, %for.inc.for.body_crit_edge ]
  %i.093 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ndev4 = getelementptr %struct.cpsw_slave, ptr %7, i32 %i.093, i32 5
  %8 = ptrtoint ptr %ndev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev4, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %flags = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 14
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 8
  %and = and i32 %11, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp ne i32 %and, 0
  %spec.select = select i1 %tobool8.not, i1 true, i1 %enable_uni.0.off094
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %for.body.for.inc_crit_edge
  %enable_uni.1.off0 = phi i1 [ %enable_uni.0.off094, %for.body.for.inc_crit_edge ], [ %spec.select, %land.lhs.true ]
  %inc = add nuw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc
  %enable_uni.0.off0.not = xor i1 %enable_uni.1.off0, true
  %brmerge = select i1 %enable, i1 true, i1 %enable_uni.0.off0.not
  br i1 %brmerge, label %for.end.if.end24_crit_edge, label %if.then14

for.end.if.end24_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then14:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_set_promiscious.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_set_promiscious, %if.then22)) #14
          to label %if.then26 [label %if.then22], !srcloc !318

if.then22:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_set_promiscious.__UNIQUE_ID_ddebug523, ptr noundef %13, ptr noundef nonnull @.str.39) #14
  br label %if.then26

if.end24:                                         ; preds = %for.end.if.end24_crit_edge, %for.cond.preheader.if.end24_crit_edge
  br i1 %enable, label %if.end24.if.then26_crit_edge, label %if.else

if.end24.if.then26_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then26

if.then26:                                        ; preds = %if.end24.if.then26_crit_edge, %if.then22, %if.then14
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %14 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ale, align 4
  %call27 = tail call i32 @cpsw_ale_control_set(ptr noundef %15, i32 noundef 0, i32 noundef 3, i32 noundef 1) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_set_promiscious.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_set_promiscious, %if.then40)) #14
          to label %cleanup [label %if.then40], !srcloc !318

if.then40:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_set_promiscious.__UNIQUE_ID_ddebug524, ptr noundef %17, ptr noundef nonnull @.str.40) #14
  br label %cleanup

if.else:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  %ale45 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %18 = ptrtoint ptr %ale45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ale45, align 4
  %call46 = tail call i32 @cpsw_ale_control_set(ptr noundef %19, i32 noundef 0, i32 noundef 3, i32 noundef 0) #14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_set_promiscious.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_set_promiscious, %if.then59)) #14
          to label %cleanup [label %if.then59], !srcloc !318

if.then59:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_set_promiscious.__UNIQUE_ID_ddebug525, ptr noundef %21, ptr noundef nonnull @.str.41) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %if.else, %if.then40, %if.then26, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ale_set_allmulti(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hw_addr_ref_sync_dev(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_add_mc_addr(ptr noundef %ndev, ptr noundef %addr, i32 noundef %num) #4 align 64 {
entry:
  %sync_ctx = alloca %struct.addr_sync_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sync_ctx) #14
  %0 = getelementptr inbounds %struct.addr_sync_ctx, ptr %sync_ctx, i32 0, i32 1
  %1 = getelementptr inbounds %struct.addr_sync_ctx, ptr %sync_ctx, i32 0, i32 2
  %2 = getelementptr inbounds %struct.addr_sync_ctx, ptr %sync_ctx, i32 0, i32 3
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %1, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %addr, ptr %0, align 4
  %5 = ptrtoint ptr %sync_ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ndev, ptr %sync_ctx, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %2, align 4
  %call = call i32 @vlan_for_each(ptr noundef %ndev, ptr noundef nonnull @cpsw_update_vlan_mc, ptr noundef nonnull %sync_ctx) #14
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %num)
  %cmp = icmp slt i32 %8, %num
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %or.cond = select i1 %cmp, i1 %tobool.not, i1 false
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1.i = getelementptr i8, ptr %ndev, i32 3468
  %9 = ptrtoint ptr %cpsw1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpsw1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpsw_slave_index to i32))
  %11 = load ptr, ptr @cpsw_slave_index, align 4
  %call2.i = call i32 %11(ptr noundef %10, ptr noundef %add.ptr.i.i) #14
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 13
  %12 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slaves.i, align 4
  %port_vlan.i = getelementptr %struct.cpsw_slave, ptr %13, i32 %call2.i, i32 6
  %14 = ptrtoint ptr %port_vlan.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_vlan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 8
  %ale6.i = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 17
  %16 = ptrtoint ptr %ale6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ale6.i, align 4
  %conv7.i = trunc i32 %15 to i16
  %call5.i = call i32 @cpsw_ale_add_mcast(ptr noundef %17, ptr noundef %addr, i32 noundef 1, i32 noundef %cond.i, i16 noundef zeroext %conv7.i, i32 noundef 0) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call5.i, %if.then ], [ %call, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sync_ctx) #14
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_del_mc_addr(ptr noundef %ndev, ptr noundef %addr, i32 noundef %num) #4 align 64 {
entry:
  %sync_ctx = alloca %struct.addr_sync_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %sync_ctx) #14
  %0 = getelementptr inbounds %struct.addr_sync_ctx, ptr %sync_ctx, i32 0, i32 1
  %1 = getelementptr inbounds %struct.addr_sync_ctx, ptr %sync_ctx, i32 0, i32 2
  %2 = getelementptr inbounds %struct.addr_sync_ctx, ptr %sync_ctx, i32 0, i32 3
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %1, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %addr, ptr %0, align 4
  %5 = ptrtoint ptr %sync_ctx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ndev, ptr %sync_ctx, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %2, align 4
  %call = call i32 @vlan_for_each(ptr noundef %ndev, ptr noundef nonnull @cpsw_update_vlan_mc, ptr noundef nonnull %sync_ctx) #14
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %num)
  %cmp = icmp eq i32 %8, %num
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1.i = getelementptr i8, ptr %ndev, i32 3468
  %9 = ptrtoint ptr %cpsw1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpsw1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpsw_slave_index to i32))
  %11 = load ptr, ptr @cpsw_slave_index, align 4
  %call2.i = call i32 %11(ptr noundef %10, ptr noundef %add.ptr.i.i) #14
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 13
  %12 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %slaves.i, align 4
  %port_vlan.i = getelementptr %struct.cpsw_slave, ptr %13, i32 %call2.i, i32 6
  %14 = ptrtoint ptr %port_vlan.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_vlan.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 8
  %ale6.i = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 17
  %16 = ptrtoint ptr %ale6.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ale6.i, align 4
  %conv7.i = trunc i32 %15 to i16
  %call8.i = call i32 @cpsw_ale_del_mcast(ptr noundef %17, ptr noundef %addr, i32 noundef 0, i32 noundef %cond.i, i16 noundef zeroext %conv7.i) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %sync_ctx) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_update_vlan_mc(ptr noundef readonly %vdev, i32 noundef %vid, ptr nocapture noundef %ctx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vdev, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %flags = getelementptr inbounds %struct.net_device, ptr %vdev, i32 0, i32 14
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %mc = getelementptr inbounds %struct.net_device, ptr %vdev, i32 0, i32 66
  %addr5 = getelementptr inbounds %struct.addr_sync_ctx, ptr %ctx, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %ha.0.in = phi ptr [ %mc, %if.end ], [ %ha.0, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %ha.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %ha.0 = load ptr, ptr %ha.0.in, align 4
  %cmp.not = icmp eq ptr %ha.0, %mc
  br i1 %cmp.not, label %if.end15.thread, label %for.body

for.body:                                         ; preds = %for.cond
  %addr = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0, i32 0, i32 2
  %3 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %addr5, align 4
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %addr, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %4, align 4
  %xor.i = xor i32 %8, %6
  %add.ptr.i = getelementptr %struct.netdev_hw_addr, ptr %ha.0, i32 0, i32 2, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %4, i32 4
  %11 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %12, %10
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

for.end:                                          ; preds = %for.body
  %sync_cnt = getelementptr inbounds %struct.netdev_hw_addr, ptr %ha.0, i32 0, i32 5
  %13 = ptrtoint ptr %sync_cnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sync_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %phi.cmp = icmp eq i32 %14, 0
  br i1 %phi.cmp, label %if.end15, label %if.end15.thread73

if.end15:                                         ; preds = %for.end
  %flush = getelementptr inbounds %struct.addr_sync_ctx, ptr %ctx, i32 0, i32 3
  %15 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flush, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool16.not = icmp eq i32 %16, 0
  br i1 %tobool16.not, label %if.end15.cleanup_crit_edge, label %if.end15.if.then19_crit_edge

if.end15.if.then19_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15.thread73:                                ; preds = %for.end
  %consumed = getelementptr inbounds %struct.addr_sync_ctx, ptr %ctx, i32 0, i32 2
  %17 = ptrtoint ptr %consumed to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %consumed, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %consumed, align 4
  %flush74 = getelementptr inbounds %struct.addr_sync_ctx, ptr %ctx, i32 0, i32 3
  %19 = ptrtoint ptr %flush74 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flush74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool16.not75 = icmp eq i32 %20, 0
  br i1 %tobool16.not75, label %if.then25, label %if.end15.thread73.cleanup_crit_edge

if.end15.thread73.cleanup_crit_edge:              ; preds = %if.end15.thread73
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end15.thread:                                  ; preds = %for.cond
  %flush65 = getelementptr inbounds %struct.addr_sync_ctx, ptr %ctx, i32 0, i32 3
  %21 = ptrtoint ptr %flush65 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flush65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool16.not66 = icmp eq i32 %22, 0
  br i1 %tobool16.not66, label %if.end15.thread.cleanup_crit_edge, label %if.end15.thread.if.then19_crit_edge

if.end15.thread.if.then19_crit_edge:              ; preds = %if.end15.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

if.end15.thread.cleanup_crit_edge:                ; preds = %if.end15.thread
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then19:                                        ; preds = %if.end15.thread.if.then19_crit_edge, %if.end15.if.then19_crit_edge
  %23 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctx, align 4
  %25 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %addr5, align 4
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 2304
  %cpsw1.i = getelementptr i8, ptr %24, i32 3468
  %27 = ptrtoint ptr %cpsw1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cpsw1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpsw_slave_index to i32))
  %29 = load ptr, ptr @cpsw_slave_index, align 4
  %call2.i = tail call i32 %29(ptr noundef %28, ptr noundef %add.ptr.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vid)
  %cmp.i48 = icmp slt i32 %vid, 0
  br i1 %cmp.i48, label %if.then.i, label %if.then19.cpsw_set_mc.exit_crit_edge

if.then19.cpsw_set_mc.exit_crit_edge:             ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_set_mc.exit

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #16
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %28, i32 0, i32 13
  %30 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slaves.i, align 4
  %port_vlan.i = getelementptr %struct.cpsw_slave, ptr %31, i32 %call2.i, i32 6
  %32 = ptrtoint ptr %port_vlan.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port_vlan.i, align 4
  br label %cpsw_set_mc.exit

cpsw_set_mc.exit:                                 ; preds = %if.then.i, %if.then19.cpsw_set_mc.exit_crit_edge
  %vid.addr.0.i = phi i32 [ %33, %if.then.i ], [ %vid, %if.then19.cpsw_set_mc.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vid.addr.0.i)
  %tobool.not.i = icmp eq i32 %vid.addr.0.i, 0
  %cond.i = select i1 %tobool.not.i, i32 0, i32 8
  %ale6.i = getelementptr inbounds %struct.cpsw_common, ptr %28, i32 0, i32 17
  %34 = ptrtoint ptr %ale6.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ale6.i, align 4
  %conv7.i = trunc i32 %vid.addr.0.i to i16
  %call8.i = tail call i32 @cpsw_ale_del_mcast(ptr noundef %35, ptr noundef %26, i32 noundef 0, i32 noundef %cond.i, i16 noundef zeroext %conv7.i) #14
  br label %cleanup

if.then25:                                        ; preds = %if.end15.thread73
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx, align 4
  %38 = ptrtoint ptr %addr5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %addr5, align 4
  %add.ptr.i.i49 = getelementptr i8, ptr %37, i32 2304
  %cpsw1.i50 = getelementptr i8, ptr %37, i32 3468
  %40 = ptrtoint ptr %cpsw1.i50 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %cpsw1.i50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpsw_slave_index to i32))
  %42 = load ptr, ptr @cpsw_slave_index, align 4
  %call2.i51 = tail call i32 %42(ptr noundef %41, ptr noundef %add.ptr.i.i49) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vid)
  %cmp.i52 = icmp slt i32 %vid, 0
  br i1 %cmp.i52, label %if.then.i55, label %if.then25.cpsw_set_mc.exit61_crit_edge

if.then25.cpsw_set_mc.exit61_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_set_mc.exit61

if.then.i55:                                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #16
  %slaves.i53 = getelementptr inbounds %struct.cpsw_common, ptr %41, i32 0, i32 13
  %43 = ptrtoint ptr %slaves.i53 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %slaves.i53, align 4
  %port_vlan.i54 = getelementptr %struct.cpsw_slave, ptr %44, i32 %call2.i51, i32 6
  %45 = ptrtoint ptr %port_vlan.i54 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %port_vlan.i54, align 4
  br label %cpsw_set_mc.exit61

cpsw_set_mc.exit61:                               ; preds = %if.then.i55, %if.then25.cpsw_set_mc.exit61_crit_edge
  %vid.addr.0.i56 = phi i32 [ %46, %if.then.i55 ], [ %vid, %if.then25.cpsw_set_mc.exit61_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vid.addr.0.i56)
  %tobool.not.i57 = icmp eq i32 %vid.addr.0.i56, 0
  %cond.i58 = select i1 %tobool.not.i57, i32 0, i32 8
  %ale6.i59 = getelementptr inbounds %struct.cpsw_common, ptr %41, i32 0, i32 17
  %47 = ptrtoint ptr %ale6.i59 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ale6.i59, align 4
  %conv7.i60 = trunc i32 %vid.addr.0.i56 to i16
  %call5.i = tail call i32 @cpsw_ale_add_mcast(ptr noundef %48, ptr noundef %39, i32 noundef 1, i32 noundef %cond.i58, i16 noundef zeroext %conv7.i60, i32 noundef 0) #14
  br label %cleanup

cleanup:                                          ; preds = %cpsw_set_mc.exit61, %cpsw_set_mc.exit, %if.end15.thread.cleanup_crit_edge, %if.end15.thread73.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %cpsw_set_mc.exit ], [ %call5.i, %cpsw_set_mc.exit61 ], [ 0, %if.end15.thread.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ 0, %if.end15.thread73.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_ucast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_del_vlan(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_flush_multicast(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_rx_interrupt(i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_tx_interrupt(i32 noundef, ptr noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_xdp_tx_frame(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_probe(ptr noundef %pdev) #4 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %prop.i = alloca i32, align 4
  %port_id.i = alloca i32, align 4
  %ss_res = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ss_res) #14
  %0 = ptrtoint ptr %ss_res to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %ss_res, align 4, !annotation !323
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 752, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @cpsw_slave_index to i32))
  store ptr @cpsw_slave_index_priv, ptr @cpsw_slave_index, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 8
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #14
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 13
  %2 = ptrtoint ptr %slaves to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call5.i.i, ptr %slaves, align 4
  %tobool5.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @devm_gpiod_get_array_optional(ptr noundef %dev1, ptr noundef nonnull @.str.57, i32 noundef 3) #14
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %3 = ptrtoint ptr %call8 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.58, i32 noundef %3) #17
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call13 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.60) #14
  %cmp.i282 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i282, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %call13 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.62, i32 noundef %4) #17
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  %call21 = tail call i32 @clk_get_rate(ptr noundef %call13) #14
  %div = udiv i32 %call21, 1000000
  %bus_freq_mhz = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 10
  %5 = ptrtoint ptr %bus_freq_mhz to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div, ptr %bus_freq_mhz, align 8
  %call22 = call ptr @devm_platform_get_and_ioremap_resource(ptr noundef %pdev, i32 noundef 0, ptr noundef nonnull %ss_res) #14
  %cmp.i283 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i283, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %call22 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end20
  %regs = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 4
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call22, ptr %regs, align 8
  %call27 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.64) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp = icmp slt i32 %call27, 0
  br i1 %cmp, label %if.end26.cleanup_crit_edge, label %if.end29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  %irqs_table = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 21
  %8 = ptrtoint ptr %irqs_table to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call27, ptr %irqs_table, align 4
  %call30 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.65) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %arrayidx35 = getelementptr %struct.cpsw_common, ptr %call.i, i32 0, i32 21, i32 1
  %9 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call30, ptr %arrayidx35, align 4
  %call36 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.66) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 1
  br i1 %cmp37, label %if.end33.cleanup_crit_edge, label %if.end39

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end39:                                         ; preds = %if.end33
  %misc_irq = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 22
  %10 = ptrtoint ptr %misc_irq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call36, ptr %misc_irq, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev1) #14
  %call.i284 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i284)
  %cmp41 = icmp slt i32 %call.i284, 0
  br i1 %cmp41, label %if.then42, label %if.end43

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev1)
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #14
  br label %cleanup

if.end43:                                         ; preds = %if.end39
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call.i, align 8
  %of_node.i = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 27
  %14 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node.i, align 8
  %data1.i = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop.i) #14
  %16 = ptrtoint ptr %prop.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %prop.i, align 4, !annotation !323
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.end43.cpsw_probe_dt.exit.thread_crit_edge, label %if.end.i

if.end43.cpsw_probe_dt.exit.thread_crit_edge:     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_probe_dt.exit.thread

if.end.i:                                         ; preds = %if.end43
  %call.i285 = call ptr @of_get_child_by_name(ptr noundef nonnull %15, ptr noundef nonnull @.str.85) #14
  %tobool4.not.i = icmp eq ptr %call.i285, null
  br i1 %tobool4.not.i, label %if.end.i.cpsw_probe_dt.exit.thread_crit_edge, label %if.end6.i

if.end.i.cpsw_probe_dt.exit.thread_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_probe_dt.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %call.i.i = call ptr @of_get_next_child(ptr noundef nonnull %call.i285, ptr noundef null) #14
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %of_get_child_count.exit.thread.i, label %if.end6.i.for.body.i.i_crit_edge

if.end6.i.for.body.i.i_crit_edge:                 ; preds = %if.end6.i
  br label %for.body.i.i

of_get_child_count.exit.thread.i:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #16
  %slaves197.i = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %slaves197.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %slaves197.i, align 4
  br label %if.then9.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end6.i.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end6.i.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end6.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = call ptr @of_get_next_child(ptr noundef nonnull %call.i285, ptr noundef nonnull %child.06.i.i) #14
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %slaves.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %inc.i.i, ptr %slaves.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc.i.i)
  %cmp.not.i = icmp eq i32 %inc.i.i, 2
  br i1 %cmp.not.i, label %if.end10.i, label %of_get_child_count.exit.i.if.then9.i_crit_edge

of_get_child_count.exit.i.if.then9.i_crit_edge:   ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then9.i

if.then9.i:                                       ; preds = %of_get_child_count.exit.i.if.then9.i_crit_edge, %of_get_child_count.exit.thread.i
  call void @of_node_put(ptr noundef nonnull %call.i285) #14
  br label %cpsw_probe_dt.exit.thread

if.end10.i:                                       ; preds = %of_get_child_count.exit.i
  %active_slave.i = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %active_slave.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %active_slave.i, align 4
  %channels.i = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %channels.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %channels.i, align 4
  %dual_emac.i = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %dual_emac.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %dual_emac.i, align 2
  %bd_ram_size.i = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %bd_ram_size.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 8192, ptr %bd_ram_size.i, align 4
  %mac_control.i = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 1, i32 6
  %23 = ptrtoint ptr %mac_control.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %mac_control.i, align 4
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef 184, i32 noundef 3520) #14
  %24 = ptrtoint ptr %data1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i.i, ptr %data1.i, align 4
  %tobool13.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool13.not.i, label %if.end10.i.cpsw_probe_dt.exit.thread_crit_edge, label %if.end15.i

if.end10.i.cpsw_probe_dt.exit.thread_crit_edge:   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_probe_dt.exit.thread

if.end15.i:                                       ; preds = %if.end10.i
  %call16.i = call i32 @devm_of_platform_populate(ptr noundef %13) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end15.i.if.end19.i_crit_edge, label %do.end.i

if.end15.i.if.end19.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19.i

do.end.i:                                         ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.86) #17
  br label %if.end19.i

if.end19.i:                                       ; preds = %do.end.i, %if.end15.i.if.end19.i_crit_edge
  %call20.i = call ptr @of_get_next_child(ptr noundef nonnull %call.i285, ptr noundef null) #14
  %cmp21.not225.i = icmp eq ptr %call20.i, null
  br i1 %cmp21.not225.i, label %if.end19.i.cpsw_probe_dt.exit.thread317_crit_edge, label %if.end19.i.for.body.i_crit_edge

if.end19.i.for.body.i_crit_edge:                  ; preds = %if.end19.i
  br label %for.body.i

if.end19.i.cpsw_probe_dt.exit.thread317_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_probe_dt.exit.thread317

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end19.i.for.body.i_crit_edge
  %port_np.0226.i = phi ptr [ %call110.i, %for.inc.i.for.body.i_crit_edge ], [ %call20.i, %if.end19.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port_id.i) #14
  %25 = ptrtoint ptr %port_id.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %port_id.i, align 4, !annotation !323
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %port_np.0226.i, ptr noundef nonnull @.str.88, ptr noundef nonnull %port_id.i, i32 noundef 1, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp24.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp24.i, label %do.end28.i, label %if.end29.i

do.end28.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.90, ptr noundef nonnull %port_np.0226.i, i32 noundef %call.i.i.i) #17
  br label %cpsw_probe_dt.exit.thread321

if.end29.i:                                       ; preds = %for.body.i
  %26 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port_id.i, align 4
  %28 = add i32 %27, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %28)
  %29 = icmp ult i32 %28, -2
  br i1 %29, label %do.end35.i, label %if.end36.i

do.end35.i:                                       ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.93, ptr noundef nonnull %port_np.0226.i, i32 noundef %27) #17
  br label %cpsw_probe_dt.exit.thread321

if.end36.i:                                       ; preds = %if.end29.i
  %30 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data1.i, align 4
  %sub.i = add nsw i32 %27, -1
  %call38.i = call zeroext i1 @of_device_is_available(ptr noundef nonnull %port_np.0226.i) #14
  %lnot.i = xor i1 %call38.i, true
  %disabled.i = getelementptr %struct.cpsw_slave_data, ptr %31, i32 %sub.i, i32 7
  %frombool.i = zext i1 %lnot.i to i8
  %32 = ptrtoint ptr %disabled.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %frombool.i, ptr %disabled.i, align 4
  br i1 %call38.i, label %if.end42.i, label %if.end36.i.for.inc.i_crit_edge

if.end36.i.for.inc.i_crit_edge:                   ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end42.i:                                       ; preds = %if.end36.i
  %arrayidx.i = getelementptr %struct.cpsw_slave_data, ptr %31, i32 %sub.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %port_np.0226.i, ptr %arrayidx.i, align 4
  %call43.i = call ptr @devm_of_phy_get(ptr noundef %13, ptr noundef nonnull %port_np.0226.i, ptr noundef null) #14
  %ifphy.i = getelementptr %struct.cpsw_slave_data, ptr %31, i32 %sub.i, i32 6
  %34 = ptrtoint ptr %ifphy.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call43.i, ptr %ifphy.i, align 4
  %cmp.i.i = icmp ugt ptr %call43.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then46.i, label %if.end52.i

if.then46.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #16
  %35 = ptrtoint ptr %call43.i to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.96, ptr noundef nonnull %port_np.0226.i, i32 noundef %35) #17
  br label %cpsw_probe_dt.exit

if.end52.i:                                       ; preds = %if.end42.i
  %call53.i = call zeroext i1 @of_phy_is_fixed_link(ptr noundef nonnull %port_np.0226.i) #14
  br i1 %call53.i, label %if.then54.i, label %if.else.i

if.then54.i:                                      ; preds = %if.end52.i
  %call55.i = call i32 @of_phy_register_fixed_link(ptr noundef nonnull %port_np.0226.i) #14
  %36 = zext i32 %call55.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %call55.i, label %do.end62.i [
    i32 0, label %if.end64.i
    i32 -517, label %if.then54.i.cpsw_probe_dt.exit.thread321_crit_edge
  ]

if.then54.i.cpsw_probe_dt.exit.thread321_crit_edge: ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_probe_dt.exit.thread321

do.end62.i:                                       ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.99, ptr noundef nonnull %port_np.0226.i, i32 noundef %call55.i) #17
  br label %cpsw_probe_dt.exit

if.end64.i:                                       ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #16
  %call65.i = call ptr @of_node_get(ptr noundef nonnull %port_np.0226.i) #14
  br label %if.end68.i

if.else.i:                                        ; preds = %if.end52.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #14
  %37 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i194.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %port_np.0226.i, ptr noundef nonnull @.str.101, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194.i)
  %tobool.not.i.i = icmp eq i32 %call.i194.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.else.i.of_parse_phandle.exit.i_crit_edge

if.else.i.of_parse_phandle.exit.i_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %of_parse_phandle.exit.i

if.end.i.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %args.i.i, align 4
  br label %of_parse_phandle.exit.i

of_parse_phandle.exit.i:                          ; preds = %if.end.i.i, %if.else.i.of_parse_phandle.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %39, %if.end.i.i ], [ null, %if.else.i.of_parse_phandle.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #14
  br label %if.end68.i

if.end68.i:                                       ; preds = %of_parse_phandle.exit.i, %if.end64.i
  %retval.0.i.sink.i = phi ptr [ %retval.0.i.i, %of_parse_phandle.exit.i ], [ %call65.i, %if.end64.i ]
  %phy_node67.i = getelementptr %struct.cpsw_slave_data, ptr %31, i32 %sub.i, i32 1
  %40 = ptrtoint ptr %phy_node67.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %retval.0.i.sink.i, ptr %phy_node67.i, align 4
  %tobool70.not.i = icmp eq ptr %retval.0.i.sink.i, null
  br i1 %tobool70.not.i, label %do.end74.i, label %if.end75.i

do.end74.i:                                       ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.103, ptr noundef nonnull %port_np.0226.i) #17
  br label %cpsw_probe_dt.exit.thread321

if.end75.i:                                       ; preds = %if.end68.i
  %phy_if.i = getelementptr %struct.cpsw_slave_data, ptr %31, i32 %sub.i, i32 3
  %call76.i = call i32 @of_get_phy_mode(ptr noundef nonnull %port_np.0226.i, ptr noundef %phy_if.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %tobool77.not.i = icmp eq i32 %call76.i, 0
  br i1 %tobool77.not.i, label %if.end82.i, label %do.end81.i

do.end81.i:                                       ; preds = %if.end75.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.106, ptr noundef nonnull %port_np.0226.i, i32 noundef %call76.i) #17
  br label %cpsw_probe_dt.exit.thread321

if.end82.i:                                       ; preds = %if.end75.i
  %mac_addr.i = getelementptr %struct.cpsw_slave_data, ptr %31, i32 %sub.i, i32 4
  %call83.i = call i32 @of_get_mac_address(ptr noundef nonnull %port_np.0226.i, ptr noundef %mac_addr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83.i)
  %tobool84.not.i = icmp eq i32 %call83.i, 0
  br i1 %tobool84.not.i, label %if.end82.i.if.end93.i_crit_edge, label %if.then85.i

if.end82.i.if.end93.i_crit_edge:                  ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end93.i

if.then85.i:                                      ; preds = %if.end82.i
  %41 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port_id.i, align 4
  %sub86.i = add i32 %42, -1
  %call89.i = call i32 @ti_cm_get_macid(ptr noundef %13, i32 noundef %sub86.i, ptr noundef %mac_addr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i)
  %tobool90.not.i = icmp eq i32 %call89.i, 0
  br i1 %tobool90.not.i, label %if.then85.i.if.end93.i_crit_edge, label %if.then85.i.cpsw_probe_dt.exit.thread321_crit_edge

if.then85.i.cpsw_probe_dt.exit.thread321_crit_edge: ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_probe_dt.exit.thread321

if.then85.i.if.end93.i_crit_edge:                 ; preds = %if.then85.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then85.i.if.end93.i_crit_edge, %if.end82.i.if.end93.i_crit_edge
  %call.i.i195.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %port_np.0226.i, ptr noundef nonnull @.str.108, ptr noundef nonnull %prop.i, i32 noundef 1, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i195.i)
  %tobool95.not.i = icmp sgt i32 %call.i.i195.i, -1
  br i1 %tobool95.not.i, label %if.else105.i, label %do.end99.i

do.end99.i:                                       ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.110, ptr noundef nonnull %port_np.0226.i) #17
  %43 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port_id.i, align 4
  %conv.i = trunc i32 %44 to i16
  %dual_emac_res_vlan.i = getelementptr %struct.cpsw_slave_data, ptr %31, i32 %sub.i, i32 5
  %45 = ptrtoint ptr %dual_emac_res_vlan.i to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 %conv.i, ptr %dual_emac_res_vlan.i, align 2
  %conv104.i = and i32 %44, 65535
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.113, ptr noundef nonnull %port_np.0226.i, i32 noundef %conv104.i) #17
  br label %for.inc.i

if.else105.i:                                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #16
  %46 = ptrtoint ptr %prop.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %prop.i, align 4
  %conv106.i = trunc i32 %47 to i16
  %dual_emac_res_vlan107.i = getelementptr %struct.cpsw_slave_data, ptr %31, i32 %sub.i, i32 5
  %48 = ptrtoint ptr %dual_emac_res_vlan107.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv106.i, ptr %dual_emac_res_vlan107.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else105.i, %do.end99.i, %if.end36.i.for.inc.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_id.i) #14
  %call110.i = call ptr @of_get_next_child(ptr noundef nonnull %call.i285, ptr noundef nonnull %port_np.0226.i) #14
  %cmp21.not.i = icmp eq ptr %call110.i, null
  br i1 %cmp21.not.i, label %for.inc.i.cpsw_probe_dt.exit.thread317_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc.i.cpsw_probe_dt.exit.thread317_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_probe_dt.exit.thread317

cpsw_probe_dt.exit.thread317:                     ; preds = %for.inc.i.cpsw_probe_dt.exit.thread317_crit_edge, %if.end19.i.cpsw_probe_dt.exit.thread317_crit_edge
  call void @of_node_put(ptr noundef nonnull %call.i285) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #14
  br label %if.end47

cpsw_probe_dt.exit.thread:                        ; preds = %if.end10.i.cpsw_probe_dt.exit.thread_crit_edge, %if.then9.i, %if.end.i.cpsw_probe_dt.exit.thread_crit_edge, %if.end43.cpsw_probe_dt.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -12, %if.end10.i.cpsw_probe_dt.exit.thread_crit_edge ], [ -2, %if.end.i.cpsw_probe_dt.exit.thread_crit_edge ], [ -22, %if.end43.cpsw_probe_dt.exit.thread_crit_edge ], [ -2, %if.then9.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #14
  br label %clean_dt_ret

cpsw_probe_dt.exit.thread321:                     ; preds = %if.then85.i.cpsw_probe_dt.exit.thread321_crit_edge, %do.end81.i, %do.end74.i, %if.then54.i.cpsw_probe_dt.exit.thread321_crit_edge, %do.end35.i, %do.end28.i
  %ret.1.ph.i.ph = phi i32 [ %call.i.i.i, %do.end28.i ], [ -22, %do.end35.i ], [ %call76.i, %do.end81.i ], [ -19, %do.end74.i ], [ %call55.i, %if.then54.i.cpsw_probe_dt.exit.thread321_crit_edge ], [ %call89.i, %if.then85.i.cpsw_probe_dt.exit.thread321_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_id.i) #14
  call void @of_node_put(ptr noundef nonnull %port_np.0226.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #14
  br label %clean_dt_ret

cpsw_probe_dt.exit:                               ; preds = %do.end62.i, %if.then46.i
  %ret.1.ph.i = phi i32 [ %call55.i, %do.end62.i ], [ %35, %if.then46.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_id.i) #14
  call void @of_node_put(ptr noundef nonnull %port_np.0226.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.ph.i)
  %tobool45.not = icmp eq i32 %ret.1.ph.i, 0
  br i1 %tobool45.not, label %cpsw_probe_dt.exit.if.end47_crit_edge, label %cpsw_probe_dt.exit.clean_dt_ret_crit_edge

cpsw_probe_dt.exit.clean_dt_ret_crit_edge:        ; preds = %cpsw_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %clean_dt_ret

cpsw_probe_dt.exit.if.end47_crit_edge:            ; preds = %cpsw_probe_dt.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end47

if.end47:                                         ; preds = %cpsw_probe_dt.exit.if.end47_crit_edge, %cpsw_probe_dt.exit.thread317
  %call48 = call ptr @soc_device_match(ptr noundef nonnull @cpsw_soc_devices) #14
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %if.end47.if.end51_crit_edge, label %if.then50

if.end47.if.end51_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end51

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #16
  %quirk_irq = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 18
  %49 = ptrtoint ptr %quirk_irq to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %quirk_irq, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end47.if.end51_crit_edge
  %rx_packet_max = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 11
  %50 = ptrtoint ptr %rx_packet_max to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1526, ptr %rx_packet_max, align 4
  %descs_pool_size = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 12
  %51 = ptrtoint ptr %descs_pool_size to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 256, ptr %descs_pool_size, align 8
  %base_mac = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 33
  call void @get_random_bytes(ptr noundef %base_mac, i32 noundef 6) #14
  %52 = ptrtoint ptr %base_mac to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %base_mac, align 1
  %54 = and i8 %53, -4
  %55 = or i8 %54, 2
  store i8 %55, ptr %base_mac, align 1
  %56 = ptrtoint ptr %ss_res to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ss_res, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  %add = add i32 %59, 8192
  %call52 = call i32 @cpsw_init_common(ptr noundef nonnull %call.i, ptr noundef %call22, i32 noundef 10, i32 noundef %add, i32 noundef 256) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.clean_dt_ret_crit_edge

if.end51.clean_dt_ret_crit_edge:                  ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %clean_dt_ret

if.end55:                                         ; preds = %if.end51
  %version = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 8
  %60 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %version, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1638666, i32 %61)
  %cmp56 = icmp eq i32 %61, 1638666
  %cond.v = select i1 %cmp56, i32 2304, i32 4608
  %cond = getelementptr i8, ptr %call22, i32 %cond.v
  %wr_regs = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 5
  %62 = ptrtoint ptr %wr_regs to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %cond, ptr %wr_regs, align 4
  %quirk_irq58 = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 18
  %63 = ptrtoint ptr %quirk_irq58 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %quirk_irq58, align 8, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool59.not = icmp eq i8 %64, 0
  %cond60 = select i1 %tobool59.not, i32 7, i32 0
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 14
  %65 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dma, align 8
  %call61 = call ptr @cpdma_chan_create(ptr noundef %66, i32 noundef %cond60, ptr noundef nonnull @cpsw_tx_handler, i32 noundef 0) #14
  %txv = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 15
  %67 = ptrtoint ptr %txv to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call61, ptr %txv, align 4
  %cmp.i286 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i286, label %do.end71, label %if.end76

do.end71:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.68) #17
  %68 = ptrtoint ptr %txv to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %txv, align 4
  %70 = ptrtoint ptr %69 to i32
  br label %clean_cpts

if.end76:                                         ; preds = %if.end55
  %71 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dma, align 8
  %call78 = call ptr @cpdma_chan_create(ptr noundef %72, i32 noundef 0, ptr noundef nonnull @cpsw_rx_handler, i32 noundef 1) #14
  %rxv = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 16
  %73 = ptrtoint ptr %rxv to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %call78, ptr %rxv, align 4
  %cmp.i287 = icmp ugt ptr %call78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i287, label %do.end88, label %if.end93

do.end88:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.71) #17
  %74 = ptrtoint ptr %rxv to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %rxv, align 4
  %76 = ptrtoint ptr %75 to i32
  br label %clean_cpts

if.end93:                                         ; preds = %if.end76
  call void @cpsw_split_res(ptr noundef nonnull %call.i) #14
  %call94 = call fastcc i32 @cpsw_create_ports(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end93.clean_unregister_netdev_crit_edge

if.end93.clean_unregister_netdev_crit_edge:       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #16
  br label %clean_unregister_netdev

if.end97:                                         ; preds = %if.end93
  %77 = ptrtoint ptr %irqs_table to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %irqs_table, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %79 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i288 = icmp eq ptr %80, null
  br i1 %tobool.not.i288, label %if.end.i289, label %if.end97.dev_name.exit_crit_edge

if.end97.dev_name.exit_crit_edge:                 ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit

if.end.i289:                                      ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #16
  %81 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i289, %if.end97.dev_name.exit_crit_edge
  %retval.0.i290 = phi ptr [ %82, %if.end.i289 ], [ %80, %if.end97.dev_name.exit_crit_edge ]
  %call.i291 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %78, ptr noundef nonnull @cpsw_rx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i290, ptr noundef %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i291)
  %cmp102 = icmp slt i32 %call.i291, 0
  br i1 %cmp102, label %do.end106, label %if.end107

do.end106:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.74, i32 noundef %call.i291) #17
  br label %clean_unregister_netdev

if.end107:                                        ; preds = %dev_name.exit
  %83 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx35, align 4
  %85 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i293 = icmp eq ptr %86, null
  br i1 %tobool.not.i293, label %if.end.i294, label %if.end107.dev_name.exit296_crit_edge

if.end107.dev_name.exit296_crit_edge:             ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit296

if.end.i294:                                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #16
  %87 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit296

dev_name.exit296:                                 ; preds = %if.end.i294, %if.end107.dev_name.exit296_crit_edge
  %retval.0.i295 = phi ptr [ %88, %if.end.i294 ], [ %86, %if.end107.dev_name.exit296_crit_edge ]
  %call.i297 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %84, ptr noundef nonnull @cpsw_tx_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i295, ptr noundef %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i297)
  %cmp112 = icmp slt i32 %call.i297, 0
  br i1 %cmp112, label %do.end116, label %if.end117

do.end116:                                        ; preds = %dev_name.exit296
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.74, i32 noundef %call.i297) #17
  br label %clean_unregister_netdev

if.end117:                                        ; preds = %dev_name.exit296
  %cpts = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 23
  %89 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %cpts, align 8
  %tobool118.not = icmp eq ptr %90, null
  br i1 %tobool118.not, label %if.end117.skip_cpts_crit_edge, label %if.end120

if.end117.skip_cpts_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #16
  br label %skip_cpts

if.end120:                                        ; preds = %if.end117
  %91 = ptrtoint ptr %misc_irq to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %misc_irq, align 4
  %93 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i299 = icmp eq ptr %94, null
  br i1 %tobool.not.i299, label %if.end.i300, label %if.end120.dev_name.exit302_crit_edge

if.end120.dev_name.exit302_crit_edge:             ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_name.exit302

if.end.i300:                                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #16
  %95 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit302

dev_name.exit302:                                 ; preds = %if.end.i300, %if.end120.dev_name.exit302_crit_edge
  %retval.0.i301 = phi ptr [ %96, %if.end.i300 ], [ %94, %if.end120.dev_name.exit302_crit_edge ]
  %call.i303 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %92, ptr noundef nonnull @cpsw_misc_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i301, ptr noundef %call.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i303)
  %cmp125 = icmp slt i32 %call.i303, 0
  br i1 %cmp125, label %do.end129, label %if.end130

do.end129:                                        ; preds = %dev_name.exit302
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.79, i32 noundef %call.i303) #17
  br label %clean_unregister_netdev

if.end130:                                        ; preds = %dev_name.exit302
  call void @__sanitizer_cov_trace_pc() #16
  %97 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %cpts, align 8
  %irq_poll.i = getelementptr inbounds %struct.cpts, ptr %98, i32 0, i32 20
  %99 = ptrtoint ptr %irq_poll.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 0, ptr %irq_poll.i, align 8
  br label %skip_cpts

skip_cpts:                                        ; preds = %if.end130, %if.end117.skip_cpts_crit_edge
  %call132 = call fastcc i32 @cpsw_register_notifiers(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end135, label %skip_cpts.clean_unregister_netdev_crit_edge

skip_cpts.clean_unregister_netdev_crit_edge:      ; preds = %skip_cpts
  call void @__sanitizer_cov_trace_pc() #16
  br label %clean_unregister_netdev

if.end135:                                        ; preds = %skip_cpts
  %call136 = call fastcc i32 @cpsw_register_devlink(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %if.end139, label %if.end135.clean_unregister_notifiers_crit_edge

if.end135.clean_unregister_notifiers_crit_edge:   ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #16
  br label %clean_unregister_notifiers

if.end139:                                        ; preds = %if.end135
  %call140 = call fastcc i32 @cpsw_register_ports(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %do.end146, label %if.end139.clean_unregister_notifiers_crit_edge

if.end139.clean_unregister_notifiers_crit_edge:   ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #16
  br label %clean_unregister_notifiers

do.end146:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #16
  %100 = ptrtoint ptr %ss_res to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ss_res, align 4
  %102 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %version, align 8
  %shr = lshr i32 %103, 8
  %and = and i32 %shr, 7
  %and151 = and i32 %103, 255
  %shr153 = lshr i32 %103, 11
  %and154 = and i32 %shr153, 31
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %dev1, ptr noundef nonnull @.str.82, ptr noundef %101, i32 noundef 256, i32 noundef %103, i32 noundef %and, i32 noundef %and151, i32 noundef %and154) #17
  %call.i304 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #14
  br label %cleanup

clean_unregister_notifiers:                       ; preds = %if.end139.clean_unregister_notifiers_crit_edge, %if.end135.clean_unregister_notifiers_crit_edge
  %ret.0 = phi i32 [ %call136, %if.end135.clean_unregister_notifiers_crit_edge ], [ %call140, %if.end139.clean_unregister_notifiers_crit_edge ]
  call void @cpsw_switchdev_unregister_notifiers(ptr noundef %call.i) #14
  %call.i305 = call i32 @unregister_netdevice_notifier(ptr noundef nonnull @cpsw_netdevice_nb) #14
  br label %clean_unregister_netdev

clean_unregister_netdev:                          ; preds = %clean_unregister_notifiers, %skip_cpts.clean_unregister_netdev_crit_edge, %do.end129, %do.end116, %do.end106, %if.end93.clean_unregister_netdev_crit_edge
  %ret.1 = phi i32 [ %call94, %if.end93.clean_unregister_netdev_crit_edge ], [ %call.i291, %do.end106 ], [ %call.i297, %do.end116 ], [ %call.i303, %do.end129 ], [ %call132, %skip_cpts.clean_unregister_netdev_crit_edge ], [ %ret.0, %clean_unregister_notifiers ]
  call fastcc void @cpsw_unregister_ports(ptr noundef nonnull %call.i)
  br label %clean_cpts

clean_cpts:                                       ; preds = %clean_unregister_netdev, %do.end88, %do.end71
  %ret.2 = phi i32 [ %70, %do.end71 ], [ %76, %do.end88 ], [ %ret.1, %clean_unregister_netdev ]
  %cpts156 = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 23
  %104 = ptrtoint ptr %cpts156 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %cpts156, align 8
  call void @cpts_release(ptr noundef %105) #14
  %106 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dma, align 8
  %call158 = call i32 @cpdma_ctlr_destroy(ptr noundef %107) #14
  br label %clean_dt_ret

clean_dt_ret:                                     ; preds = %clean_cpts, %if.end51.clean_dt_ret_crit_edge, %cpsw_probe_dt.exit.clean_dt_ret_crit_edge, %cpsw_probe_dt.exit.thread321, %cpsw_probe_dt.exit.thread
  %ret.3 = phi i32 [ %ret.1.ph.i, %cpsw_probe_dt.exit.clean_dt_ret_crit_edge ], [ %call52, %if.end51.clean_dt_ret_crit_edge ], [ %ret.2, %clean_cpts ], [ %retval.0.i.ph, %cpsw_probe_dt.exit.thread ], [ %ret.1.ph.i.ph, %cpsw_probe_dt.exit.thread321 ]
  %slaves.i307 = getelementptr inbounds %struct.cpsw_common, ptr %call.i, i32 0, i32 1, i32 3
  %108 = ptrtoint ptr %slaves.i307 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %slaves.i307, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %cmp12.not.i = icmp eq i32 %109, 0
  br i1 %cmp12.not.i, label %clean_dt_ret.cpsw_remove_dt.exit_crit_edge, label %clean_dt_ret.for.body.i309_crit_edge

clean_dt_ret.for.body.i309_crit_edge:             ; preds = %clean_dt_ret
  br label %for.body.i309

clean_dt_ret.cpsw_remove_dt.exit_crit_edge:       ; preds = %clean_dt_ret
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_remove_dt.exit

for.body.i309:                                    ; preds = %if.end5.i.for.body.i309_crit_edge, %clean_dt_ret.for.body.i309_crit_edge
  %i.013.i = phi i32 [ %inc.i, %if.end5.i.for.body.i309_crit_edge ], [ 0, %clean_dt_ret.for.body.i309_crit_edge ]
  %110 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %data1.i, align 4
  %phy_node.i = getelementptr %struct.cpsw_slave_data, ptr %111, i32 %i.013.i, i32 1
  %112 = ptrtoint ptr %phy_node.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %phy_node.i, align 4
  %tobool.not.i308 = icmp eq ptr %113, null
  br i1 %tobool.not.i308, label %for.body.i309.if.end5.i_crit_edge, label %if.then.i

for.body.i309.if.end5.i_crit_edge:                ; preds = %for.body.i309
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.then.i:                                        ; preds = %for.body.i309
  %call.i310 = call zeroext i1 @of_phy_is_fixed_link(ptr noundef nonnull %113) #14
  br i1 %call.i310, label %if.then4.i, label %if.then.i.if.end.i311_crit_edge

if.then.i.if.end.i311_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i311

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  call void @of_phy_deregister_fixed_link(ptr noundef nonnull %113) #14
  br label %if.end.i311

if.end.i311:                                      ; preds = %if.then4.i, %if.then.i.if.end.i311_crit_edge
  call void @of_node_put(ptr noundef nonnull %113) #14
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i311, %for.body.i309.if.end5.i_crit_edge
  %inc.i = add nuw i32 %i.013.i, 1
  %114 = ptrtoint ptr %slaves.i307 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %slaves.i307, align 4
  %cmp.i312 = icmp ult i32 %inc.i, %115
  br i1 %cmp.i312, label %if.end5.i.for.body.i309_crit_edge, label %if.end5.i.cpsw_remove_dt.exit_crit_edge

if.end5.i.cpsw_remove_dt.exit_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_remove_dt.exit

if.end5.i.for.body.i309_crit_edge:                ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i309

cpsw_remove_dt.exit:                              ; preds = %if.end5.i.cpsw_remove_dt.exit_crit_edge, %clean_dt_ret.cpsw_remove_dt.exit_crit_edge
  %call.i314 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #14
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #14
  br label %cleanup

cleanup:                                          ; preds = %cpsw_remove_dt.exit, %do.end146, %if.then42, %if.end33.cleanup_crit_edge, %if.end29.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then24, %if.then15, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then10 ], [ %4, %if.then15 ], [ %6, %if.then24 ], [ %call.i284, %if.then42 ], [ %ret.3, %cpsw_remove_dt.exit ], [ 0, %do.end146 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call27, %if.end26.cleanup_crit_edge ], [ %call30, %if.end29.cleanup_crit_edge ], [ %call36, %if.end33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ss_res) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_remove(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !304
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #14
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #14, !srcloc !305
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !306
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @cpsw_switchdev_unregister_notifiers(ptr noundef %1) #14
  %call.i18 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @cpsw_netdevice_nb) #14
  %devlink.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 24
  %3 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %devlink.i, align 4
  tail call void @devlink_unregister(ptr noundef %4) #14
  %5 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %devlink.i, align 4
  tail call void @devlink_params_unregister(ptr noundef %6, ptr noundef nonnull @cpsw_devlink_params, i32 noundef 2) #14
  %7 = ptrtoint ptr %devlink.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %devlink.i, align 4
  tail call void @devlink_free(ptr noundef %8) #14
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slaves.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp10.not.i = icmp eq i32 %10, 0
  br i1 %cmp10.not.i, label %if.end.cpsw_unregister_ports.exit_crit_edge, label %for.body.lr.ph.i

if.end.cpsw_unregister_ports.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_unregister_ports.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %slaves1.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %slaves1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %slaves1.i, align 4
  %ndev.i = getelementptr %struct.cpsw_slave, ptr %12, i32 %i.011.i, i32 5
  %13 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ndev.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_netdev(ptr noundef nonnull %14) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.011.i, 1
  %15 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slaves.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %16
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.cpsw_unregister_ports.exit_crit_edge

for.inc.i.cpsw_unregister_ports.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_unregister_ports.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

cpsw_unregister_ports.exit:                       ; preds = %for.inc.i.cpsw_unregister_ports.exit_crit_edge, %if.end.cpsw_unregister_ports.exit_crit_edge
  %cpts = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 23
  %17 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cpts, align 8
  tail call void @cpts_release(ptr noundef %18) #14
  %dma = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma, align 8
  %call3 = tail call i32 @cpdma_ctlr_destroy(ptr noundef %20) #14
  %data1.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %slaves.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp12.not.i = icmp eq i32 %22, 0
  br i1 %cmp12.not.i, label %cpsw_unregister_ports.exit.cpsw_remove_dt.exit_crit_edge, label %cpsw_unregister_ports.exit.for.body.i21_crit_edge

cpsw_unregister_ports.exit.for.body.i21_crit_edge: ; preds = %cpsw_unregister_ports.exit
  br label %for.body.i21

cpsw_unregister_ports.exit.cpsw_remove_dt.exit_crit_edge: ; preds = %cpsw_unregister_ports.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_remove_dt.exit

for.body.i21:                                     ; preds = %if.end5.i.for.body.i21_crit_edge, %cpsw_unregister_ports.exit.for.body.i21_crit_edge
  %i.013.i = phi i32 [ %inc.i24, %if.end5.i.for.body.i21_crit_edge ], [ 0, %cpsw_unregister_ports.exit.for.body.i21_crit_edge ]
  %23 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data1.i, align 4
  %phy_node.i = getelementptr %struct.cpsw_slave_data, ptr %24, i32 %i.013.i, i32 1
  %25 = ptrtoint ptr %phy_node.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy_node.i, align 4
  %tobool.not.i20 = icmp eq ptr %26, null
  br i1 %tobool.not.i20, label %for.body.i21.if.end5.i_crit_edge, label %if.then.i

for.body.i21.if.end5.i_crit_edge:                 ; preds = %for.body.i21
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5.i

if.then.i:                                        ; preds = %for.body.i21
  %call.i22 = tail call zeroext i1 @of_phy_is_fixed_link(ptr noundef nonnull %26) #14
  br i1 %call.i22, label %if.then4.i, label %if.then.i.if.end.i23_crit_edge

if.then.i.if.end.i23_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i23

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @of_phy_deregister_fixed_link(ptr noundef nonnull %26) #14
  br label %if.end.i23

if.end.i23:                                       ; preds = %if.then4.i, %if.then.i.if.end.i23_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %26) #14
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i23, %for.body.i21.if.end5.i_crit_edge
  %inc.i24 = add nuw i32 %i.013.i, 1
  %27 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %slaves.i, align 4
  %cmp.i25 = icmp ult i32 %inc.i24, %28
  br i1 %cmp.i25, label %if.end5.i.for.body.i21_crit_edge, label %if.end5.i.cpsw_remove_dt.exit_crit_edge

if.end5.i.cpsw_remove_dt.exit_crit_edge:          ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_remove_dt.exit

if.end5.i.for.body.i21_crit_edge:                 ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i21

cpsw_remove_dt.exit:                              ; preds = %if.end5.i.cpsw_remove_dt.exit_crit_edge, %cpsw_unregister_ports.exit.cpsw_remove_dt.exit_crit_edge
  %call.i26 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #14
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #14
  br label %cleanup

cleanup:                                          ; preds = %cpsw_remove_dt.exit, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cpsw_remove_dt.exit ], [ %call.i, %if.then.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cpsw_slave_index_priv(ptr nocapture noundef readnone %cpsw, ptr nocapture noundef readonly %priv) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %emac_port = getelementptr inbounds %struct.cpsw_priv, ptr %priv, i32 0, i32 15
  %0 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %emac_port, align 8
  %sub = add i32 %1, -1
  ret i32 %sub
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_array_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_get_and_ioremap_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_init_common(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cpdma_chan_create(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_tx_handler(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpsw_rx_handler(ptr noundef %token, i32 noundef %len, i32 noundef %status) #4 align 64 {
entry:
  %len.addr = alloca i32, align 4
  %xdp = alloca %struct.xdp_buff, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %len.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %len, ptr %len.addr, align 4
  %call = tail call ptr @page_address(ptr noundef %token) #14
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xdp) #14
  %1 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 1
  %2 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 2
  %3 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 3
  %4 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 4
  %5 = getelementptr inbounds %struct.xdp_buff, ptr %xdp, i32 0, i32 6
  %add.ptr = getelementptr i8, ptr %call, i32 24
  %6 = call ptr @memset(ptr %xdp, i32 255, i32 28)
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %cpsw3 = getelementptr i8, ptr %8, i32 3468
  %9 = ptrtoint ptr %cpsw3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpsw3, align 4
  %rx_packet_max = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %rx_packet_max to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %rx_packet_max, align 4
  %ch5 = getelementptr i8, ptr %call, i32 28
  %13 = ptrtoint ptr %ch5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ch5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %status)
  %cmp = icmp sgt i32 %status, -1
  br i1 %cmp, label %if.then, label %if.then23.thread

if.then:                                          ; preds = %entry
  %15 = lshr i32 %status, 16
  %and = and i32 %15, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then.lor.lhs.false_crit_edge, label %if.then6

if.then.lor.lhs.false_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %lor.lhs.false

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 13
  %16 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %slaves, align 4
  %dec = add nsw i32 %and, -1
  %ndev7 = getelementptr %struct.cpsw_slave, ptr %17, i32 %dec, i32 5
  %18 = ptrtoint ptr %ndev7 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev7, align 4
  br label %lor.lhs.false

if.then23.thread:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx10 = getelementptr %struct.cpsw_common, ptr %10, i32 0, i32 29, i32 %14
  %20 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx10, align 4
  br label %if.end27

lor.lhs.false:                                    ; preds = %if.then6, %if.then.lor.lhs.false_crit_edge
  %ndev.0.ph = phi ptr [ %8, %if.then.lor.lhs.false_crit_edge ], [ %19, %if.then6 ]
  %add.ptr.i202205 = getelementptr i8, ptr %ndev.0.ph, i32 2304
  %arrayidx10206 = getelementptr %struct.cpsw_common, ptr %10, i32 0, i32 29, i32 %14
  %22 = ptrtoint ptr %arrayidx10206 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx10206, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %ndev.0.ph, i32 0, i32 6
  %24 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then23, label %if.end28, !prof !313

if.then23:                                        ; preds = %lor.lhs.false
  %usage_count = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 28
  %26 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool24.not.not = icmp eq i32 %27, 0
  br i1 %tobool24.not.not, label %if.then23.if.end27_crit_edge, label %if.then23.requeue_crit_edge

if.then23.requeue_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %requeue

if.then23.if.end27_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.end27:                                         ; preds = %if.then23.if.end27_crit_edge, %if.then23.thread
  %28 = phi ptr [ %21, %if.then23.thread ], [ %23, %if.then23.if.end27_crit_edge ]
  tail call void @page_pool_put_page(ptr noundef %28, ptr noundef %token, i32 noundef -1, i1 noundef zeroext true) #14
  br label %cleanup117

if.end28:                                         ; preds = %lor.lhs.false
  %call.i = tail call ptr @page_pool_alloc_pages(ptr noundef %23, i32 noundef 10784) #14
  %tobool30.not = icmp eq ptr %call.i, null
  br i1 %tobool30.not, label %if.then39, label %if.end40, !prof !313

if.then39:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %ndev.0.ph, i32 0, i32 36, i32 6
  %29 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rx_dropped, align 8
  %inc = add i32 %30, 1
  store i32 %inc, ptr %rx_dropped, align 8
  br label %requeue

if.end40:                                         ; preds = %if.end28
  %xdp_prog = getelementptr i8, ptr %ndev.0.ph, i32 2356
  %31 = ptrtoint ptr %xdp_prog to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xdp_prog, align 4
  %tobool41.not = icmp eq ptr %32, null
  br i1 %tobool41.not, label %if.end40.if.end53_crit_edge, label %if.then42

if.end40.if.end53_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end53

if.then42:                                        ; preds = %if.end40
  %33 = ptrtoint ptr %len.addr to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len.addr, align 4
  %arrayidx43 = getelementptr %struct.cpsw_priv, ptr %add.ptr.i202205, i32 0, i32 13, i32 %14
  %35 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4096, ptr %5, align 4
  %36 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx43, ptr %4, align 4
  %and44 = and i32 %status, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  %sub = add i32 %34, -4
  %spec.select = select i1 %tobool45.not, i32 258, i32 262
  %spec.select199 = select i1 %tobool45.not, i32 %34, i32 %sub
  %add.ptr.i = getelementptr i8, ptr %call, i32 %spec.select
  %37 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call, ptr %3, align 4
  %38 = ptrtoint ptr %xdp to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %add.ptr.i, ptr %xdp, align 4
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %spec.select199
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %add.ptr2.i, ptr %1, align 4
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 1
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr3.i, ptr %2, align 4
  %emac_port = getelementptr i8, ptr %ndev.0.ph, i32 3464
  %41 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %emac_port, align 8
  %call48 = call i32 @cpsw_run_xdp(ptr noundef %add.ptr.i202205, i32 noundef %14, ptr noundef nonnull %xdp, ptr noundef %token, i32 noundef %42, ptr noundef nonnull %len.addr) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49.not = icmp eq i32 %call48, 0
  br i1 %cmp49.not, label %cleanup.thread, label %if.then42.requeue_crit_edge

if.then42.requeue_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  br label %requeue

cleanup.thread:                                   ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #16
  %43 = ptrtoint ptr %xdp to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %xdp, align 4
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %3, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %46 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %if.end53

if.end53:                                         ; preds = %cleanup.thread, %if.end40.if.end53_crit_edge
  %headroom.2 = phi i32 [ 258, %if.end40.if.end53_crit_edge ], [ %sub.ptr.sub, %cleanup.thread ]
  %status.addr.1 = phi i32 [ %status, %if.end40.if.end53_crit_edge ], [ 0, %cleanup.thread ]
  %add2.i = add i32 %12, 643
  %and.i = and i32 %add2.i, -128
  %call55 = call ptr @build_skb(ptr noundef %call, i32 noundef %and.i) #14
  %tobool56.not = icmp eq ptr %call55, null
  br i1 %tobool56.not, label %if.then57, label %if.end61

if.then57:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #16
  %rx_dropped59 = getelementptr inbounds %struct.net_device, ptr %ndev.0.ph, i32 0, i32 36, i32 6
  %47 = ptrtoint ptr %rx_dropped59 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rx_dropped59, align 8
  %inc60 = add i32 %48, 1
  store i32 %inc60, ptr %rx_dropped59, align 8
  call void @page_pool_put_page(ptr noundef %23, ptr noundef %token, i32 noundef -1, i1 noundef zeroext true) #14
  br label %requeue

if.end61:                                         ; preds = %if.end53
  %offload_fwd_mark = getelementptr i8, ptr %ndev.0.ph, i32 3472
  %49 = ptrtoint ptr %offload_fwd_mark to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %offload_fwd_mark, align 16
  %offload_fwd_mark62 = getelementptr inbounds %struct.sk_buff, ptr %call55, i32 0, i32 15, i32 0, i32 3
  %51 = ptrtoint ptr %offload_fwd_mark62 to i32
  call void @__asan_loadN_noabort(i32 %51, i32 4)
  %bf.load = load i32, ptr %offload_fwd_mark62, align 2
  %bf.value = shl i32 %50, 20
  %bf.shl = and i32 %bf.value, 1048576
  %bf.clear = and i32 %bf.load, -1048577
  %bf.set = or i32 %bf.clear, %bf.shl
  store i32 %bf.set, ptr %offload_fwd_mark62, align 2
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call55, i32 0, i32 19
  %52 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %data.i, align 4
  %add.ptr.i203 = getelementptr i8, ptr %53, i32 %headroom.2
  store ptr %add.ptr.i203, ptr %data.i, align 4
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %call55, i32 0, i32 16
  %54 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %tail.i, align 8
  %add.ptr1.i = getelementptr i8, ptr %55, i32 %headroom.2
  store ptr %add.ptr1.i, ptr %tail.i, align 8
  %56 = ptrtoint ptr %len.addr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len.addr, align 4
  %call63 = call ptr @skb_put(ptr noundef nonnull %call55, i32 noundef %57) #14
  %58 = getelementptr inbounds %struct.anon.0, ptr %call55, i32 0, i32 2
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %ndev.0.ph, ptr %58, align 8
  %and64 = and i32 %status.addr.1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end61.if.end67_crit_edge, label %if.then66

if.end61.if.end67_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #16
  call void @cpsw_rx_vlan_encap(ptr noundef nonnull %call55) #14
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.end61.if.end67_crit_edge
  %rx_ts_enabled = getelementptr i8, ptr %ndev.0.ph, i32 2352
  %60 = ptrtoint ptr %rx_ts_enabled to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rx_ts_enabled, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool68.not = icmp eq i32 %61, 0
  br i1 %tobool68.not, label %if.end67.if.end70_crit_edge, label %if.then69

if.end67.if.end70_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70

if.then69:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #16
  %cpts = getelementptr inbounds %struct.cpsw_common, ptr %10, i32 0, i32 23
  %62 = ptrtoint ptr %cpts to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %cpts, align 8
  call void @cpts_rx_timestamp(ptr noundef %63, ptr noundef nonnull %call55) #14
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end67.if.end70_crit_edge
  %call71 = call zeroext i16 @eth_type_trans(ptr noundef nonnull %call55, ptr noundef %ndev.0.ph) #14
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %call55, i32 0, i32 15, i32 0, i32 18
  %64 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %call71, ptr %protocol, align 8
  %pp_recycle.i = getelementptr inbounds %struct.sk_buff, ptr %call55, i32 0, i32 12
  %65 = ptrtoint ptr %pp_recycle.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load.i = load i8, ptr %pp_recycle.i, align 2
  %bf.set.i = or i8 %bf.load.i, 1
  store i8 %bf.set.i, ptr %pp_recycle.i, align 2
  %call72 = call i32 @netif_receive_skb(ptr noundef nonnull %call55) #14
  %66 = ptrtoint ptr %len.addr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %len.addr, align 4
  %stats73 = getelementptr inbounds %struct.net_device, ptr %ndev.0.ph, i32 0, i32 36
  %rx_bytes = getelementptr inbounds %struct.net_device, ptr %ndev.0.ph, i32 0, i32 36, i32 2
  %68 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %rx_bytes, align 8
  %add74 = add i32 %69, %67
  store i32 %add74, ptr %rx_bytes, align 8
  %70 = ptrtoint ptr %stats73 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %stats73, align 8
  %inc76 = add i32 %71, 1
  store i32 %inc76, ptr %stats73, align 8
  br label %requeue

requeue:                                          ; preds = %if.end70, %if.then57, %if.then42.requeue_crit_edge, %if.then39, %if.then23.requeue_crit_edge
  %new_page.0 = phi ptr [ %token, %if.then39 ], [ %call.i, %if.end70 ], [ %call.i, %if.then57 ], [ %token, %if.then23.requeue_crit_edge ], [ %call.i, %if.then42.requeue_crit_edge ]
  %call77 = call ptr @page_address(ptr noundef %new_page.0) #14
  %add.ptr78 = getelementptr i8, ptr %call77, i32 24
  %72 = ptrtoint ptr %add.ptr78 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %ndev.0.ph, ptr %add.ptr78, align 4
  %ch80 = getelementptr i8, ptr %call77, i32 28
  %73 = ptrtoint ptr %ch80 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %14, ptr %ch80, align 4
  %dma_addr.i = getelementptr inbounds %struct.page, ptr %new_page.0, i32 0, i32 1, i32 0, i32 2
  %74 = ptrtoint ptr %dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dma_addr.i, align 4
  %add82 = add i32 %75, 258
  %arrayidx83 = getelementptr %struct.cpsw_common, ptr %10, i32 0, i32 16, i32 %14
  %76 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx83, align 4
  %call85 = call i32 @cpdma_chan_submit_mapped(ptr noundef %77, ptr noundef %new_page.0, i32 noundef %add82, i32 noundef %12, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %if.then88, label %requeue.cleanup117_crit_edge

requeue.cleanup117_crit_edge:                     ; preds = %requeue
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup117

if.then88:                                        ; preds = %requeue
  call void @__sanitizer_cov_trace_const_cmp4(i32 -12, i32 %call85)
  %cmp89 = icmp eq i32 %call85, -12
  br i1 %cmp89, label %do.end, label %if.then88.if.end109_crit_edge, !prof !313

if.then88.if.end109_crit_edge:                    ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end109

do.end:                                           ; preds = %if.then88
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 393, i32 noundef 9, ptr noundef null) #14
  br label %if.end109

if.end109:                                        ; preds = %do.end, %if.then88.if.end109_crit_edge
  call void @page_pool_put_page(ptr noundef %23, ptr noundef %new_page.0, i32 noundef -1, i1 noundef zeroext true) #14
  br label %cleanup117

cleanup117:                                       ; preds = %if.end109, %requeue.cleanup117_crit_edge, %if.end27
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xdp) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_create_ports(ptr noundef %cpsw) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 1
  %0 = ptrtoint ptr %cpsw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw, align 8
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp106.not = icmp eq i32 %3, 0
  br i1 %cmp106.not, label %entry.cleanup51_crit_edge, label %for.body.lr.ph

entry.cleanup51_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup51

for.body.lr.ph:                                   ; preds = %entry
  %slaves40 = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 13
  %napi_rx = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 2
  %quirk_irq = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 18
  %napi_tx = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 3
  %state.i = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0108 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.pre-phi, %for.inc.for.body_crit_edge ]
  %napi_ndev.0107 = phi ptr [ null, %for.body.lr.ph ], [ %napi_ndev.1.ph, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data1, align 4
  %disabled = getelementptr %struct.cpsw_slave_data, ptr %5, i32 %i.0108, i32 7
  %6 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %disabled, align 4, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %.pre = add nuw i32 %i.0108, 1
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call = tail call ptr @devm_alloc_etherdev_mqs(ptr noundef %1, i32 noundef 1280, i32 noundef 8, i32 noundef 8) #14
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %cleanup, label %if.end7

if.end7:                                          ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %call, i32 2304
  %cpsw9 = getelementptr i8, ptr %call, i32 3468
  %8 = ptrtoint ptr %cpsw9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cpsw, ptr %cpsw9, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call, ptr %add.ptr.i, align 128
  %dev11 = getelementptr i8, ptr %call, i32 2308
  %10 = ptrtoint ptr %dev11 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %1, ptr %dev11, align 4
  %msg_enable = getelementptr i8, ptr %call, i32 2312
  %11 = ptrtoint ptr %msg_enable to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %msg_enable, align 8
  %add = add nuw i32 %i.0108, 1
  %emac_port = getelementptr i8, ptr %call, i32 3464
  %12 = ptrtoint ptr %emac_port to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %emac_port, align 8
  %tx_packet_min = getelementptr i8, ptr %call, i32 3476
  %13 = ptrtoint ptr %tx_packet_min to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 60, ptr %tx_packet_min, align 4
  %mac_addr = getelementptr %struct.cpsw_slave_data, ptr %5, i32 %i.0108, i32 4
  %14 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac_addr, align 4
  %16 = and i32 %15, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.i.not.i = icmp eq i32 %16, 0
  br i1 %tobool.i.not.i, label %is_valid_ether_addr.exit, label %if.end7.if.else_crit_edge

if.end7.if.else_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

is_valid_ether_addr.exit:                         ; preds = %if.end7
  %add.ptr.i.i = getelementptr i8, ptr %mac_addr, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i, align 2
  %conv.i.i = zext i16 %18 to i32
  %or.i.i = or i32 %15, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i)
  %cmp.i.i.not = icmp eq i32 %or.i.i, 0
  br i1 %cmp.i.i.not, label %is_valid_ether_addr.exit.if.else_crit_edge, label %if.then14

is_valid_ether_addr.exit.if.else_crit_edge:       ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.then14:                                        ; preds = %is_valid_ether_addr.exit
  call void @__sanitizer_cov_trace_pc() #16
  %mac_addr15 = getelementptr i8, ptr %call, i32 2316
  %19 = ptrtoint ptr %mac_addr15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %mac_addr15, align 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %call, i32 2320
  %22 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %add.ptr1.i, align 2
  %23 = ptrtoint ptr %cpsw to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cpsw, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.120, ptr noundef %mac_addr15) #17
  br label %if.end33

if.else:                                          ; preds = %is_valid_ether_addr.exit.if.else_crit_edge, %if.end7.if.else_crit_edge
  tail call void @get_random_bytes(ptr noundef %mac_addr, i32 noundef 6) #14
  %25 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %mac_addr, align 1
  %27 = and i8 %26, -4
  %28 = or i8 %27, 2
  store i8 %28, ptr %mac_addr, align 1
  %29 = ptrtoint ptr %cpsw to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cpsw, align 8
  %mac_addr31 = getelementptr i8, ptr %call, i32 2316
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.123, ptr noundef %mac_addr31) #17
  br label %if.end33

if.end33:                                         ; preds = %if.else, %if.then14
  tail call void @dev_addr_mod(ptr noundef nonnull %call, i32 noundef 0, ptr noundef %mac_addr, i32 noundef 6) #14
  %mac_addr36 = getelementptr i8, ptr %call, i32 2316
  %31 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mac_addr, align 4
  %33 = ptrtoint ptr %mac_addr36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %mac_addr36, align 4
  %add.ptr.i101 = getelementptr i8, ptr %mac_addr, i32 4
  %34 = ptrtoint ptr %add.ptr.i101 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %add.ptr.i101, align 2
  %add.ptr1.i102 = getelementptr i8, ptr %call, i32 2320
  %36 = ptrtoint ptr %add.ptr1.i102 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %add.ptr1.i102, align 2
  %37 = ptrtoint ptr %slaves40 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %slaves40, align 4
  %ndev42 = getelementptr %struct.cpsw_slave, ptr %38, i32 %i.0108, i32 5
  %39 = ptrtoint ptr %ndev42 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call, ptr %ndev42, align 4
  %features = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 23
  %40 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %features, align 16
  %or = or i64 %41, 8960
  store i64 %or, ptr %features, align 16
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 16
  %42 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @cpsw_netdev_ops, ptr %netdev_ops, align 8
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 44
  %43 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @cpsw_ethtool_ops, ptr %ethtool_ops, align 16
  %parent = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133, i32 1
  %44 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %1, ptr %parent, align 8
  %tobool44.not = icmp eq ptr %napi_ndev.0107, null
  br i1 %tobool44.not, label %if.then45, label %if.end33.for.inc_crit_edge

if.end33.for.inc_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then45:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #16
  %45 = ptrtoint ptr %quirk_irq to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %quirk_irq, align 8, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool46.not = icmp eq i8 %46, 0
  %cond = select i1 %tobool46.not, ptr @cpsw_rx_mq_poll, ptr @cpsw_rx_poll
  tail call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi_rx, ptr noundef nonnull %cond, i32 noundef 64) #14
  %47 = ptrtoint ptr %quirk_irq to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %quirk_irq, align 8, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool48.not = icmp eq i8 %48, 0
  %cond49 = select i1 %tobool48.not, ptr @cpsw_tx_mq_poll, ptr @cpsw_tx_poll
  tail call void @_set_bit(i32 noundef 5, ptr noundef %state.i) #14
  tail call void @netif_napi_add(ptr noundef nonnull %call, ptr noundef %napi_tx, ptr noundef nonnull %cond49, i32 noundef 64) #14
  br label %for.inc

cleanup:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.117) #17
  br label %cleanup51

for.inc:                                          ; preds = %if.then45, %if.end33.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc.pre-phi = phi i32 [ %.pre, %for.body.for.inc_crit_edge ], [ %add, %if.then45 ], [ %add, %if.end33.for.inc_crit_edge ]
  %napi_ndev.1.ph = phi ptr [ %napi_ndev.0107, %for.body.for.inc_crit_edge ], [ %call, %if.then45 ], [ %call, %if.end33.for.inc_crit_edge ]
  %49 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %slaves, align 4
  %cmp = icmp ult i32 %inc.pre-phi, %50
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup51_crit_edge

for.inc.cleanup51_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup51

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup51:                                        ; preds = %for.inc.cleanup51_crit_edge, %cleanup, %entry.cleanup51_crit_edge
  %retval.2 = phi i32 [ -12, %cleanup ], [ 0, %entry.cleanup51_crit_edge ], [ 0, %for.inc.cleanup51_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_misc_interrupt(i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_register_notifiers(ptr noundef %cpsw) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @cpsw_netdevice_nb) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %0 = ptrtoint ptr %cpsw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.126) #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @cpsw_switchdev_register_notifiers(ptr noundef %cpsw) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @cpsw_netdevice_nb) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_register_devlink(ptr noundef %cpsw) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cpsw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw, align 8
  %call.i = tail call ptr @devlink_alloc_ns(ptr noundef nonnull @cpsw_devlink_ops, i32 noundef 4, ptr noundef nonnull @init_net, ptr noundef %1) #14
  %devlink = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 24
  %2 = ptrtoint ptr %devlink to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %devlink, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @devlink_priv(ptr noundef nonnull %call.i) #14
  %3 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %cpsw, ptr %call4, align 4
  %4 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devlink, align 4
  %call7 = tail call i32 @devlink_params_register(ptr noundef %5, ptr noundef nonnull @cpsw_devlink_params, i32 noundef 2) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.130, i32 noundef %call7) #17
  %6 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %devlink, align 4
  tail call void @devlink_free(ptr noundef %7) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %devlink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %devlink, align 4
  tail call void @devlink_register(ptr noundef %9) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end ], [ 0, %if.end10 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_register_ports(ptr nocapture noundef readonly %cpsw) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp32.not = icmp eq i32 %1, 0
  br i1 %cmp32.not, label %entry.if.end13_crit_edge, label %for.body.lr.ph

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.body.lr.ph:                                   ; preds = %entry
  %slaves1 = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.033 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %slaves1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slaves1, align 4
  %ndev = getelementptr %struct.cpsw_slave, ptr %3, i32 %i.033, i32 5
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call = tail call i32 @register_netdev(ptr noundef nonnull %5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end.for.inc_crit_edge, label %if.then12

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.033, 1
  %6 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slaves, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end13_crit_edge

for.inc.if.end13_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

if.then12:                                        ; preds = %if.end
  %8 = ptrtoint ptr %cpsw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpsw, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.146, i32 noundef %i.033) #17
  %10 = ptrtoint ptr %slaves1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %slaves1, align 4
  %ndev9 = getelementptr %struct.cpsw_slave, ptr %11, i32 %i.033, i32 5
  %12 = ptrtoint ptr %ndev9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ndev9, align 4
  %13 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp10.not.i = icmp eq i32 %14, 0
  br i1 %cmp10.not.i, label %if.then12.if.end13_crit_edge, label %if.then12.for.body.i_crit_edge

if.then12.for.body.i_crit_edge:                   ; preds = %if.then12
  br label %for.body.i

if.then12.if.end13_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then12.for.body.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then12.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %slaves1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slaves1, align 4
  %ndev.i = getelementptr %struct.cpsw_slave, ptr %16, i32 %i.011.i, i32 5
  %17 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ndev.i, align 4
  %tobool.not.i = icmp eq ptr %18, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_netdev(ptr noundef nonnull %18) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.011.i, 1
  %19 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %slaves, align 4
  %cmp.i = icmp ult i32 %inc.i, %20
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end13_crit_edge

for.inc.i.if.end13_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end13

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.end13:                                         ; preds = %for.inc.i.if.end13_crit_edge, %if.then12.if.end13_crit_edge, %for.inc.if.end13_crit_edge, %entry.if.end13_crit_edge
  %ret.228 = phi i32 [ %call, %if.then12.if.end13_crit_edge ], [ 0, %entry.if.end13_crit_edge ], [ %call, %for.inc.i.if.end13_crit_edge ], [ 0, %for.inc.if.end13_crit_edge ]
  ret i32 %ret.228
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cpsw_unregister_ports(ptr nocapture noundef readonly %cpsw) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp10.not = icmp eq i32 %1, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %slaves1 = getelementptr inbounds %struct.cpsw_common, ptr %cpsw, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.011 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %slaves1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slaves1, align 4
  %ndev = getelementptr %struct.cpsw_slave, ptr %3, i32 %i.011, i32 5
  %4 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ndev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @unregister_netdev(ptr noundef nonnull %5) #14
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.011, 1
  %6 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slaves, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_ctlr_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_platform_populate(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_of_phy_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_phy_is_fixed_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_phy_register_fixed_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_mac_address(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_cm_get_macid(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_run_xdp(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @build_skb(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_rx_vlan_encap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpts_rx_timestamp(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_receive_skb(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpdma_chan_submit_mapped(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @page_pool_put_page(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_pool_alloc_pages(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_alloc_etherdev_mqs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_rx_poll(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_rx_mq_poll(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_tx_poll(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_tx_mq_poll(ptr noundef, i32 noundef) #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cpsw_get_drvinfo(ptr nocapture noundef readonly %ndev, ptr noundef %info) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 -16
  %driver = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 1
  %call2 = tail call i32 @strlcpy(ptr noundef %driver, ptr noundef nonnull @.str.56, i32 noundef 32) #14
  %version = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 2
  %call4 = tail call i32 @strlcpy(ptr noundef %version, ptr noundef nonnull @.str.125, i32 noundef 32) #14
  %bus_info = getelementptr inbounds %struct.ethtool_drvinfo, ptr %info, i32 0, i32 4
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 8
  %call6 = tail call i32 @strlcpy(ptr noundef %bus_info, ptr noundef %5, i32 noundef 32) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_regs_len(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_regs(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_wol(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_wol(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_msglevel(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_set_msglevel(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_nway_reset(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ethtool_op_get_link(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_coalesce(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_ringparam(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_ringparam(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_pauseparam(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_set_pauseparam(ptr noundef %ndev, ptr noundef %pause) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %ndev, i32 2304
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cpsw_slave_index to i32))
  %2 = load ptr, ptr @cpsw_slave_index, align 4
  %call3 = tail call i32 %2(ptr noundef %1, ptr noundef %add.ptr.i) #14
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %slaves, align 4
  %phy = getelementptr %struct.cpsw_slave, ptr %4, i32 %call3, i32 4
  %5 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call zeroext i1 @phy_validate_pause(ptr noundef nonnull %6, ptr noundef %pause) #14
  br i1 %call7, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %rx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 2
  %7 = ptrtoint ptr %rx_pause to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %rx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10 = icmp ne i32 %8, 0
  %rx_pause12 = getelementptr i8, ptr %ndev, i32 2322
  %frombool = zext i1 %tobool10 to i8
  %9 = ptrtoint ptr %rx_pause12 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %frombool, ptr %rx_pause12, align 2
  %tx_pause = getelementptr inbounds %struct.ethtool_pauseparam, ptr %pause, i32 0, i32 3
  %10 = ptrtoint ptr %tx_pause to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tx_pause, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13 = icmp ne i32 %11, 0
  %tx_pause16 = getelementptr i8, ptr %ndev, i32 2323
  %frombool17 = zext i1 %tobool13 to i8
  %12 = ptrtoint ptr %tx_pause16 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool17, ptr %tx_pause16, align 1
  %13 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slaves, align 4
  %phy20 = getelementptr %struct.cpsw_slave, ptr %14, i32 %call3, i32 4
  %15 = ptrtoint ptr %phy20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy20, align 4
  tail call void @phy_set_asym_pause(ptr noundef %16, i1 noundef zeroext %tobool10, i1 noundef zeroext %tobool13) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_strings(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_ethtool_stats(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ethtool_op_begin(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_ethtool_op_complete(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_sset_count(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_get_channels(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_set_channels(ptr noundef %ndev, ptr noundef %chs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @cpsw_set_channels_common(ptr noundef %ndev, ptr noundef %chs, ptr noundef nonnull @cpsw_rx_handler) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_ts_info(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_eee(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_eee(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_get_link_ksettings(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_link_ksettings(ptr noundef, ptr noundef) #3

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @phy_validate_pause(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @phy_set_asym_pause(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_set_channels_common(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_switchdev_register_notifiers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_netdevice_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef readonly %ptr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
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
  %cmp.i = icmp eq ptr %5, @cpsw_netdev_ops
  br i1 %cmp.i, label %cpsw_port_dev_check.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cpsw_port_dev_check.exit:                         ; preds = %entry
  %cpsw1.i = getelementptr i8, ptr %3, i32 3468
  %6 = ptrtoint ptr %cpsw1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpsw1.i, align 4
  %dual_emac.i = getelementptr inbounds %struct.cpsw_common, ptr %7, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %dual_emac.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dual_emac.i, align 2, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %event)
  %cond = icmp eq i32 %event, 21
  %or.cond = and i1 %cond, %tobool.not.i
  br i1 %or.cond, label %sw.bb, label %cpsw_port_dev_check.exit.cleanup_crit_edge

cpsw_port_dev_check.exit.cleanup_crit_edge:       ; preds = %cpsw_port_dev_check.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %cpsw_port_dev_check.exit
  %upper_dev = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 1
  %10 = ptrtoint ptr %upper_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %upper_dev, align 4
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %13, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %sw.bb.sw.epilog.thread_crit_edge, label %if.then4

sw.bb.sw.epilog.thread_crit_edge:                 ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.thread

if.then4:                                         ; preds = %sw.bb
  %linking = getelementptr inbounds %struct.netdev_notifier_changeupper_info, ptr %ptr, i32 0, i32 3
  %14 = ptrtoint ptr %linking to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %linking, align 1, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not = icmp eq i8 %15, 0
  br i1 %tobool.not, label %if.else, label %sw.epilog

if.else:                                          ; preds = %if.then4
  %16 = ptrtoint ptr %cpsw1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cpsw1.i, align 4
  tail call void @switchdev_bridge_port_unoffload(ptr noundef %3, ptr noundef null, ptr noundef null, ptr noundef null) #14
  %emac_port.i = getelementptr i8, ptr %3, i32 3464
  %18 = ptrtoint ptr %emac_port.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %emac_port.i, align 8
  %shl.i = shl nuw i32 1, %19
  %br_members.i = getelementptr inbounds %struct.cpsw_common, ptr %17, i32 0, i32 30
  %20 = ptrtoint ptr %br_members.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %br_members.i, align 8
  %22 = trunc i32 %shl.i to i8
  %23 = xor i8 %22, -1
  %conv2.i = and i8 %21, %23
  store i8 %conv2.i, ptr %br_members.i, align 8
  %ale_bypass.i.i = getelementptr inbounds %struct.cpsw_common, ptr %17, i32 0, i32 32
  %24 = ptrtoint ptr %ale_bypass.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ale_bypass.i.i, align 8, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %conv2.i)
  %cmp.i.i = icmp eq i8 %conv2.i, 6
  %narrow.i = select i1 %tobool.not.i.i, i1 %cmp.i.i, i1 false
  %set_val.0.i.i = zext i1 %narrow.i to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_port_offload_fwd_mark_update.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_netdevice_event, %if.then5.i.i)) #14
          to label %do.end.i.i [label %if.then5.i.i], !srcloc !318

if.then5.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %26 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %17, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_port_offload_fwd_mark_update.__UNIQUE_ID_ddebug546, ptr noundef %27, ptr noundef nonnull @.str.129, i32 noundef %set_val.0.i.i) #14
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then5.i.i, %if.else
  %slaves.i.i = getelementptr inbounds %struct.cpsw_common, ptr %17, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %slaves.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %slaves.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp719.not.i.i = icmp eq i32 %29, 0
  br i1 %cmp719.not.i.i, label %do.end.i.i.cpsw_port_offload_fwd_mark_update.exit.i_crit_edge, label %for.body.lr.ph.i.i

do.end.i.i.cpsw_port_offload_fwd_mark_update.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_port_offload_fwd_mark_update.exit.i

for.body.lr.ph.i.i:                               ; preds = %do.end.i.i
  %slaves9.i.i = getelementptr inbounds %struct.cpsw_common, ptr %17, i32 0, i32 13
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.020.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %30 = ptrtoint ptr %slaves9.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slaves9.i.i, align 4
  %ndev.i.i = getelementptr %struct.cpsw_slave, ptr %31, i32 %i.020.i.i, i32 5
  %32 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ndev.i.i, align 4
  %offload_fwd_mark.i.i = getelementptr i8, ptr %33, i32 3472
  %34 = ptrtoint ptr %offload_fwd_mark.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %set_val.0.i.i, ptr %offload_fwd_mark.i.i, align 16
  %inc.i.i = add nuw i32 %i.020.i.i, 1
  %35 = ptrtoint ptr %slaves.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %slaves.i.i, align 4
  %cmp7.i.i = icmp ult i32 %inc.i.i, %36
  br i1 %cmp7.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.cpsw_port_offload_fwd_mark_update.exit.i_crit_edge

for.body.i.i.cpsw_port_offload_fwd_mark_update.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cpsw_port_offload_fwd_mark_update.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

cpsw_port_offload_fwd_mark_update.exit.i:         ; preds = %for.body.i.i.cpsw_port_offload_fwd_mark_update.exit.i_crit_edge, %do.end.i.i.cpsw_port_offload_fwd_mark_update.exit.i_crit_edge
  %37 = ptrtoint ptr %br_members.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %br_members.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i21 = icmp eq i8 %38, 0
  br i1 %tobool.not.i21, label %if.then.i22, label %cpsw_port_offload_fwd_mark_update.exit.i.sw.epilog.thread_crit_edge

cpsw_port_offload_fwd_mark_update.exit.i.sw.epilog.thread_crit_edge: ; preds = %cpsw_port_offload_fwd_mark_update.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.thread

if.then.i22:                                      ; preds = %cpsw_port_offload_fwd_mark_update.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  %hw_bridge_dev.i = getelementptr inbounds %struct.cpsw_common, ptr %17, i32 0, i32 31
  %39 = ptrtoint ptr %hw_bridge_dev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %hw_bridge_dev.i, align 4
  br label %sw.epilog.thread

sw.epilog:                                        ; preds = %if.then4
  %call7 = tail call fastcc i32 @cpsw_netdevice_port_link(ptr noundef %3, ptr noundef %11, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not.i23 = icmp eq i32 %call7, 0
  %sub.i = sub i32 1, %call7
  %or.i = or i32 %sub.i, 32768
  br i1 %tobool.not.i23, label %sw.epilog.sw.epilog.thread_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog.sw.epilog.thread_crit_edge:             ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.epilog.sw.epilog.thread_crit_edge, %if.then.i22, %cpsw_port_offload_fwd_mark_update.exit.i.sw.epilog.thread_crit_edge, %sw.bb.sw.epilog.thread_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.thread, %sw.epilog.cleanup_crit_edge, %cpsw_port_dev_check.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cpsw_port_dev_check.exit.cleanup_crit_edge ], [ 1, %sw.epilog.thread ], [ %or.i, %sw.epilog.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cpsw_netdevice_port_link(ptr noundef %ndev, ptr noundef %br_ndev, ptr noundef %extack) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %cpsw1 = getelementptr i8, ptr %ndev, i32 3468
  %0 = ptrtoint ptr %cpsw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpsw1, align 4
  %br_members = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %br_members to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %br_members, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %hw_bridge_dev = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 31
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %4 = ptrtoint ptr %hw_bridge_dev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %br_ndev, ptr %hw_bridge_dev, align 4
  br label %if.end4

if.else:                                          ; preds = %entry
  %5 = ptrtoint ptr %hw_bridge_dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_bridge_dev, align 4
  %cmp.not = icmp eq ptr %6, %br_ndev
  br i1 %cmp.not, label %if.else.if.end4_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else.if.end4_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.end4:                                          ; preds = %if.else.if.end4_crit_edge, %if.then
  %call5 = tail call i32 @switchdev_bridge_port_offload(ptr noundef %ndev, ptr noundef %ndev, ptr noundef null, ptr noundef null, ptr noundef null, i1 noundef zeroext false, ptr noundef %extack) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %emac_port = getelementptr i8, ptr %ndev, i32 3464
  %7 = ptrtoint ptr %emac_port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %emac_port, align 8
  %shl = shl nuw i32 1, %8
  %9 = ptrtoint ptr %br_members to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %br_members, align 8
  %11 = trunc i32 %shl to i8
  %conv10 = or i8 %10, %11
  store i8 %conv10, ptr %br_members, align 8
  %ale_bypass.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 32
  %12 = ptrtoint ptr %ale_bypass.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ale_bypass.i, align 8, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %conv10)
  %cmp.i = icmp eq i8 %conv10, 6
  %narrow = select i1 %tobool.not.i, i1 %cmp.i, i1 false
  %set_val.0.i = zext i1 %narrow to i32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_port_offload_fwd_mark_update.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_netdevice_port_link, %if.then5.i)) #14
          to label %do.end.i [label %if.then5.i], !srcloc !318

if.then5.i:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_port_offload_fwd_mark_update.__UNIQUE_ID_ddebug546, ptr noundef %15, ptr noundef nonnull @.str.129, i32 noundef %set_val.0.i) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %if.end8
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slaves.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp719.not.i = icmp eq i32 %17, 0
  br i1 %cmp719.not.i, label %do.end.i.cleanup_crit_edge, label %for.body.lr.ph.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %slaves9.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %slaves9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slaves9.i, align 4
  %ndev.i = getelementptr %struct.cpsw_slave, ptr %19, i32 %i.020.i, i32 5
  %20 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev.i, align 4
  %offload_fwd_mark.i = getelementptr i8, ptr %21, i32 3472
  %22 = ptrtoint ptr %offload_fwd_mark.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %set_val.0.i, ptr %offload_fwd_mark.i, align 16
  %inc.i = add nuw i32 %i.020.i, 1
  %23 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slaves.i, align 4
  %cmp7.i = icmp ult i32 %inc.i, %24
  br i1 %cmp7.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %if.else.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ 0, %do.end.i.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @switchdev_bridge_port_offload(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @switchdev_bridge_port_unoffload(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_params_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_alloc_ns(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_dl_switch_mode_get(ptr noundef %dl, i32 noundef %id, ptr nocapture noundef writeonly %ctx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %dl) #14
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_dl_switch_mode_get.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_dl_switch_mode_get, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !318

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_dl_switch_mode_get.__UNIQUE_ID_ddebug547, ptr noundef %3, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.134, i32 noundef %id) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %id)
  %cmp.not = icmp eq i32 %id, 17
  br i1 %cmp.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 8
  %4 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dual_emac, align 2, !range !303
  %6 = xor i8 %5, 1
  %7 = ptrtoint ptr %ctx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %ctx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -95, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_dl_switch_mode_set(ptr noundef %dl, i32 noundef %id, ptr nocapture noundef readonly %ctx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %dl) #14
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %default_vlan = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 7
  %2 = ptrtoint ptr %default_vlan to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %default_vlan, align 4
  %conv = zext i16 %3 to i32
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ctx, align 4, !range !303
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_dl_switch_mode_set.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_dl_switch_mode_set, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !318

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_dl_switch_mode_set.__UNIQUE_ID_ddebug548, ptr noundef %7, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.136, i32 noundef %id) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %id)
  %cmp.not = icmp eq i32 %id, 17
  br i1 %cmp.not, label %if.end9, label %do.end.cleanup182_crit_edge

do.end.cleanup182_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup182

if.end9:                                          ; preds = %do.end
  %dual_emac = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 8
  %8 = ptrtoint ptr %dual_emac to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %dual_emac, align 2, !range !303
  %10 = xor i8 %9, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %10)
  %cmp16 = icmp eq i8 %5, %10
  br i1 %cmp16, label %if.end9.cleanup182_crit_edge, label %if.end19

if.end9.cleanup182_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup182

if.end19:                                         ; preds = %if.end9
  br i1 %tobool.not, label %land.lhs.true, label %if.end19.if.end28_crit_edge

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end19
  %br_members = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 30
  %11 = ptrtoint ptr %br_members to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %br_members, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool22.not = icmp eq i8 %12, 0
  br i1 %tobool22.not, label %land.lhs.true.if.end28_crit_edge, label %do.end26

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

do.end26:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.137) #17
  br label %cleanup182

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %if.end19.if.end28_crit_edge
  tail call void @rtnl_lock() #14
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp30254.not = icmp eq i32 %16, 0
  br i1 %cmp30254.not, label %if.then39.thread, label %for.body.lr.ph

if.then39.thread:                                 ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  %17 = xor i8 %5, 1
  br label %exit.sink.split

for.body.lr.ph:                                   ; preds = %if.end28
  %slaves32 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  %18 = ptrtoint ptr %slaves32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slaves32, align 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %if_running.0.off0256 = phi i1 [ false, %for.body.lr.ph ], [ %if_running.1.off0, %cleanup.for.body_crit_edge ]
  %i.0255 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %ndev = getelementptr %struct.cpsw_slave, ptr %19, i32 %i.0255, i32 5
  %20 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev, align 4
  %tobool33.not = icmp eq ptr %21, null
  br i1 %tobool33.not, label %for.body.cleanup_crit_edge, label %lor.lhs.false

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %state.i = getelementptr inbounds %struct.net_device, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i = icmp ne i32 %and1.i.i, 0
  %spec.select = select i1 %tobool.i, i1 true, i1 %if_running.0.off0256
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false, %for.body.cleanup_crit_edge
  %if_running.1.off0 = phi i1 [ %if_running.0.off0256, %for.body.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %inc = add nuw i32 %i.0255, 1
  %exitcond.not = icmp eq i32 %inc, %16
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %cleanup
  br i1 %if_running.1.off0, label %if.end75, label %if.then39

if.then39:                                        ; preds = %for.end
  %24 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %slaves, align 4
  %25 = xor i8 %5, 1
  %26 = ptrtoint ptr %dual_emac to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %dual_emac, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp49257.not = icmp eq i32 %.pr, 0
  br i1 %cmp49257.not, label %if.then39.exit_crit_edge, label %for.body51.lr.ph

if.then39.exit_crit_edge:                         ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

for.body51.lr.ph:                                 ; preds = %if.then39
  %slaves53 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  br label %for.body51

for.body51:                                       ; preds = %cleanup68.for.body51_crit_edge, %for.body51.lr.ph
  %i.1258 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc73, %cleanup68.for.body51_crit_edge ]
  %27 = ptrtoint ptr %slaves53 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %slaves53, align 4
  %ndev56 = getelementptr %struct.cpsw_slave, ptr %28, i32 %i.1258, i32 5
  %29 = ptrtoint ptr %ndev56 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ndev56, align 4
  %tobool57.not = icmp eq ptr %30, null
  br i1 %tobool57.not, label %for.body51.cleanup68_crit_edge, label %if.end59

for.body51.cleanup68_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup68

if.end59:                                         ; preds = %for.body51
  br i1 %tobool.not, label %if.else, label %if.end59.if.end67_crit_edge

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end67

if.else:                                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #16
  %data65 = getelementptr %struct.cpsw_slave, ptr %28, i32 %i.1258, i32 3
  %31 = ptrtoint ptr %data65 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data65, align 4
  %dual_emac_res_vlan = getelementptr inbounds %struct.cpsw_slave_data, ptr %32, i32 0, i32 5
  br label %if.end67

if.end67:                                         ; preds = %if.else, %if.end59.if.end67_crit_edge
  %vlan.0.in.in = phi ptr [ %dual_emac_res_vlan, %if.else ], [ %default_vlan, %if.end59.if.end67_crit_edge ]
  %33 = ptrtoint ptr %vlan.0.in.in to i32
  call void @__asan_load2_noabort(i32 %33)
  %vlan.0.in = load i16, ptr %vlan.0.in.in, align 2
  %vlan.0 = zext i16 %vlan.0.in to i32
  %port_vlan = getelementptr %struct.cpsw_slave, ptr %28, i32 %i.1258, i32 6
  %34 = ptrtoint ptr %port_vlan to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %vlan.0, ptr %port_vlan, align 4
  br label %cleanup68

cleanup68:                                        ; preds = %if.end67, %for.body51.cleanup68_crit_edge
  %inc73 = add nuw i32 %i.1258, 1
  %35 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %slaves, align 4
  %cmp49 = icmp ult i32 %inc73, %36
  br i1 %cmp49, label %cleanup68.for.body51_crit_edge, label %cleanup68.exit_crit_edge

cleanup68.exit_crit_edge:                         ; preds = %cleanup68
  call void @__sanitizer_cov_trace_pc() #16
  br label %exit

cleanup68.for.body51_crit_edge:                   ; preds = %cleanup68
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body51

if.end75:                                         ; preds = %for.end
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  br i1 %tobool.not, label %do.end130, label %do.end80

do.end80:                                         ; preds = %if.end75
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.139) #17
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %39 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ale, align 4
  %call82 = tail call i32 @cpsw_ale_control_set(ptr noundef %40, i32 noundef 0, i32 noundef 7, i32 noundef 1) #14
  %41 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ale, align 4
  %call84 = tail call i32 @cpsw_ale_control_set(ptr noundef %42, i32 noundef 0, i32 noundef 1, i32 noundef 1) #14
  %43 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ale, align 4
  %call86 = tail call i32 @cpsw_ale_control_get(ptr noundef %44, i32 noundef 0, i32 noundef 2) #14
  tail call fastcc void @cpsw_init_host_port_switch(ptr noundef %1)
  %45 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp90260.not = icmp eq i32 %46, 0
  br i1 %cmp90260.not, label %do.end80.for.end122_crit_edge, label %for.body92.lr.ph

do.end80.for.end122_crit_edge:                    ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end122

for.body92.lr.ph:                                 ; preds = %do.end80
  %slaves94 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  br label %for.body92

for.body92:                                       ; preds = %cleanup115.for.body92_crit_edge, %for.body92.lr.ph
  %i.2261 = phi i32 [ 0, %for.body92.lr.ph ], [ %inc121, %cleanup115.for.body92_crit_edge ]
  %47 = ptrtoint ptr %slaves94 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %slaves94, align 4
  %arrayidx95 = getelementptr %struct.cpsw_slave, ptr %48, i32 %i.2261
  %ndev97 = getelementptr %struct.cpsw_slave, ptr %48, i32 %i.2261, i32 5
  %49 = ptrtoint ptr %ndev97 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ndev97, align 4
  %tobool98.not = icmp eq ptr %50, null
  br i1 %tobool98.not, label %for.body92.cleanup115_crit_edge, label %if.end100

for.body92.cleanup115_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115

if.end100:                                        ; preds = %for.body92
  %port_vlan102 = getelementptr %struct.cpsw_slave, ptr %48, i32 %i.2261, i32 6
  %51 = ptrtoint ptr %port_vlan102 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv, ptr %port_vlan102, align 4
  %tx_packet_min = getelementptr i8, ptr %50, i32 3476
  %52 = ptrtoint ptr %tx_packet_min to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile i32 64, ptr %tx_packet_min, align 4
  %state.i249 = getelementptr inbounds %struct.net_device, ptr %50, i32 0, i32 6
  %53 = ptrtoint ptr %state.i249 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %state.i249, align 4
  %and1.i.i250 = and i32 %54, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i250)
  %tobool.i251.not = icmp eq i32 %and1.i.i250, 0
  br i1 %tobool.i251.not, label %if.end100.cleanup115_crit_edge, label %if.then113

if.end100.cleanup115_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup115

if.then113:                                       ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i = getelementptr i8, ptr %50, i32 2304
  tail call fastcc void @cpsw_port_add_switch_def_ale_entries(ptr noundef %add.ptr.i, ptr noundef %arrayidx95)
  br label %cleanup115

cleanup115:                                       ; preds = %if.then113, %if.end100.cleanup115_crit_edge, %for.body92.cleanup115_crit_edge
  %inc121 = add nuw i32 %i.2261, 1
  %55 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %slaves, align 4
  %cmp90 = icmp ult i32 %inc121, %56
  br i1 %cmp90, label %cleanup115.for.body92_crit_edge, label %cleanup115.for.end122_crit_edge

cleanup115.for.end122_crit_edge:                  ; preds = %cleanup115
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end122

cleanup115.for.body92_crit_edge:                  ; preds = %cleanup115
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body92

for.end122:                                       ; preds = %cleanup115.for.end122_crit_edge, %do.end80.for.end122_crit_edge
  %57 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ale, align 4
  %call124 = tail call i32 @cpsw_ale_control_set(ptr noundef %58, i32 noundef 0, i32 noundef 7, i32 noundef 0) #14
  br label %exit.sink.split

do.end130:                                        ; preds = %if.end75
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %38, ptr noundef nonnull @.str.142) #17
  %ale132 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %59 = ptrtoint ptr %ale132 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ale132, align 4
  %call133 = tail call i32 @cpsw_ale_control_set(ptr noundef %60, i32 noundef 0, i32 noundef 7, i32 noundef 1) #14
  %61 = ptrtoint ptr %ale132 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ale132, align 4
  %call135 = tail call i32 @cpsw_ale_control_set(ptr noundef %62, i32 noundef 0, i32 noundef 1, i32 noundef 1) #14
  %63 = ptrtoint ptr %ale132 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ale132, align 4
  %call137 = tail call i32 @cpsw_ale_control_get(ptr noundef %64, i32 noundef 0, i32 noundef 2) #14
  tail call fastcc void @cpsw_init_host_port_dual_mac(ptr noundef %1)
  %65 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp141263.not = icmp eq i32 %66, 0
  br i1 %cmp141263.not, label %do.end130.for.end176_crit_edge, label %for.body143.lr.ph

do.end130.for.end176_crit_edge:                   ; preds = %do.end130
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end176

for.body143.lr.ph:                                ; preds = %do.end130
  %slaves145 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  br label %for.body143

for.body143:                                      ; preds = %cleanup169.for.body143_crit_edge, %for.body143.lr.ph
  %i.3264 = phi i32 [ 0, %for.body143.lr.ph ], [ %inc175, %cleanup169.for.body143_crit_edge ]
  %67 = ptrtoint ptr %slaves145 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %slaves145, align 4
  %ndev148 = getelementptr %struct.cpsw_slave, ptr %68, i32 %i.3264, i32 5
  %69 = ptrtoint ptr %ndev148 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %ndev148, align 4
  %tobool150.not = icmp eq ptr %70, null
  br i1 %tobool150.not, label %for.body143.cleanup169_crit_edge, label %if.end152

for.body143.cleanup169_crit_edge:                 ; preds = %for.body143
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup169

if.end152:                                        ; preds = %for.body143
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx146 = getelementptr %struct.cpsw_slave, ptr %68, i32 %i.3264
  %add.ptr.i252 = getelementptr i8, ptr %70, i32 2304
  %data155 = getelementptr %struct.cpsw_slave, ptr %68, i32 %i.3264, i32 3
  %71 = ptrtoint ptr %data155 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %data155, align 4
  %dual_emac_res_vlan156 = getelementptr inbounds %struct.cpsw_slave_data, ptr %72, i32 0, i32 5
  %73 = ptrtoint ptr %dual_emac_res_vlan156 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %dual_emac_res_vlan156, align 2
  %conv157 = zext i16 %74 to i32
  %port_vlan158 = getelementptr %struct.cpsw_slave, ptr %68, i32 %i.3264, i32 6
  %75 = ptrtoint ptr %port_vlan158 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %conv157, ptr %port_vlan158, align 4
  %tx_packet_min164 = getelementptr i8, ptr %70, i32 3476
  %76 = ptrtoint ptr %tx_packet_min164 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 60, ptr %tx_packet_min164, align 4
  tail call fastcc void @cpsw_port_add_dual_emac_def_ale_entries(ptr noundef %add.ptr.i252, ptr noundef %arrayidx146)
  br label %cleanup169

cleanup169:                                       ; preds = %if.end152, %for.body143.cleanup169_crit_edge
  %inc175 = add nuw i32 %i.3264, 1
  %77 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %slaves, align 4
  %cmp141 = icmp ult i32 %inc175, %78
  br i1 %cmp141, label %cleanup169.for.body143_crit_edge, label %cleanup169.for.end176_crit_edge

cleanup169.for.end176_crit_edge:                  ; preds = %cleanup169
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end176

cleanup169.for.body143_crit_edge:                 ; preds = %cleanup169
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body143

for.end176:                                       ; preds = %cleanup169.for.end176_crit_edge, %do.end130.for.end176_crit_edge
  %79 = ptrtoint ptr %ale132 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ale132, align 4
  %call178 = tail call i32 @cpsw_ale_control_set(ptr noundef %80, i32 noundef 0, i32 noundef 7, i32 noundef 0) #14
  br label %exit.sink.split

exit.sink.split:                                  ; preds = %for.end176, %for.end122, %if.then39.thread
  %.sink = phi i8 [ %17, %if.then39.thread ], [ 0, %for.end122 ], [ 1, %for.end176 ]
  %81 = ptrtoint ptr %dual_emac to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %.sink, ptr %dual_emac, align 2
  br label %exit

exit:                                             ; preds = %exit.sink.split, %cleanup68.exit_crit_edge, %if.then39.exit_crit_edge
  tail call void @rtnl_unlock() #14
  br label %cleanup182

cleanup182:                                       ; preds = %exit, %do.end26, %if.end9.cleanup182_crit_edge, %do.end.cleanup182_crit_edge
  %retval.0 = phi i32 [ 0, %exit ], [ -22, %do.end26 ], [ -95, %do.end.cleanup182_crit_edge ], [ 0, %if.end9.cleanup182_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_dl_ale_ctrl_get(ptr noundef %dl, i32 noundef %id, ptr nocapture noundef writeonly %ctx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %dl) #14
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_dl_ale_ctrl_get.__UNIQUE_ID_ddebug551, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_dl_ale_ctrl_get, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !318

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_dl_ale_ctrl_get.__UNIQUE_ID_ddebug551, ptr noundef %3, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.144, i32 noundef %id) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %id)
  %cond = icmp eq i32 %id, 18
  br i1 %cond, label %sw.bb, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ale, align 4
  %call5 = tail call i32 @cpsw_ale_control_get(ptr noundef %5, i32 noundef 0, i32 noundef 7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6 = icmp ne i32 %call5, 0
  %frombool7 = zext i1 %tobool6 to i8
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool7, ptr %ctx, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -95, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_dl_ale_ctrl_set(ptr noundef %dl, i32 noundef %id, ptr nocapture noundef readonly %ctx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_priv(ptr noundef %dl) #14
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_dl_ale_ctrl_set.__UNIQUE_ID_ddebug552, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_dl_ale_ctrl_set, %if.then)) #14
          to label %do.end [label %if.then], !srcloc !318

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_dl_ale_ctrl_set.__UNIQUE_ID_ddebug552, ptr noundef %3, ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.145, i32 noundef %id) #14
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %id)
  %cond = icmp eq i32 %id, 18
  br i1 %cond, label %sw.bb, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  %ale = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 17
  %4 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ale, align 4
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ctx, align 4, !range !303
  %8 = zext i8 %7 to i32
  %call6 = tail call i32 @cpsw_ale_control_set(ptr noundef %5, i32 noundef 0, i32 noundef 7, i32 noundef %8) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then8, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then8:                                         ; preds = %sw.bb
  %9 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ctx, align 4, !range !303
  %ale_bypass = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 32
  %11 = ptrtoint ptr %ale_bypass to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %ale_bypass, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then8.do.body.i_crit_edge

if.then8.do.body.i_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body.i

land.lhs.true.i:                                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #16
  %br_members.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 30
  %12 = ptrtoint ptr %br_members.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %br_members.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %13)
  %cmp.i = icmp eq i8 %13, 6
  %spec.select.i = zext i1 %cmp.i to i32
  br label %do.body.i

do.body.i:                                        ; preds = %land.lhs.true.i, %if.then8.do.body.i_crit_edge
  %set_val.0.i = phi i32 [ 0, %if.then8.do.body.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cpsw_port_offload_fwd_mark_update.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cpsw_dl_ale_ctrl_set, %if.then5.i)) #14
          to label %do.end.i [label %if.then5.i], !srcloc !318

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cpsw_port_offload_fwd_mark_update.__UNIQUE_ID_ddebug546, ptr noundef %15, ptr noundef nonnull @.str.129, i32 noundef %set_val.0.i) #14
  br label %do.end.i

do.end.i:                                         ; preds = %if.then5.i, %do.body.i
  %slaves.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slaves.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp719.not.i = icmp eq i32 %17, 0
  br i1 %cmp719.not.i, label %do.end.i.cleanup_crit_edge, label %for.body.lr.ph.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %slaves9.i = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.020.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %slaves9.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slaves9.i, align 4
  %ndev.i = getelementptr %struct.cpsw_slave, ptr %19, i32 %i.020.i, i32 5
  %20 = ptrtoint ptr %ndev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ndev.i, align 4
  %offload_fwd_mark.i = getelementptr i8, ptr %21, i32 3472
  %22 = ptrtoint ptr %offload_fwd_mark.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %set_val.0.i, ptr %offload_fwd_mark.i, align 16
  %inc.i = add nuw i32 %i.020.i, 1
  %23 = ptrtoint ptr %slaves.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %slaves.i, align 4
  %cmp7.i = icmp ult i32 %inc.i, %24
  br i1 %cmp7.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %do.end.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %do.end.i.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpsw_ale_control_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpsw_switchdev_unregister_notifiers(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_phy_deregister_fixed_link(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_params_unregister(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_suspend(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @rtnl_lock() #14
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not = icmp eq i32 %3, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %slaves1 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %slaves1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slaves1, align 4
  %ndev2 = getelementptr %struct.cpsw_slave, ptr %5, i32 %i.015, i32 5
  %6 = ptrtoint ptr %ndev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %land.lhs.true

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body
  %state.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call4 = tail call i32 @cpsw_ndo_stop(ptr noundef nonnull %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.015, 1
  %10 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slaves, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @rtnl_unlock() #14
  %call5 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %dev) #14
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cpsw_resume(ptr noundef %dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %dev) #14
  tail call void @rtnl_lock() #14
  %slaves = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slaves, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp14.not = icmp eq i32 %3, 0
  br i1 %cmp14.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %slaves2 = getelementptr inbounds %struct.cpsw_common, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.015 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %4 = ptrtoint ptr %slaves2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slaves2, align 4
  %ndev3 = getelementptr %struct.cpsw_slave, ptr %5, i32 %i.015, i32 5
  %6 = ptrtoint ptr %ndev3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ndev3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %land.lhs.true

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %for.body
  %state.i = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %call5 = tail call i32 @cpsw_ndo_open(ptr noundef nonnull %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.015, 1
  %10 = ptrtoint ptr %slaves to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %slaves, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @rtnl_unlock() #14
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 144)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !38, !39, !40, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !84, !85, !87, !88, !89, !91, !92, !94, !95, !96, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !117, !119, !121, !122, !123, !124, !126, !128, !129, !130, !132, !134, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !153, !154, !155, !157, !158, !159, !160, !162, !164, !165, !166, !167, !169, !171, !172, !173, !175, !176, !177, !179, !180, !181, !183, !184, !185, !187, !189, !190, !191, !193, !194, !195, !197, !199, !200, !201, !203, !204, !205, !207, !209, !211, !213, !215, !217, !219, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !234, !236, !238, !239, !240, !241, !243, !245, !246, !247, !249, !250, !251, !252, !254, !256, !258, !260, !262, !263, !264, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282, !284, !285, !287, !288, !289, !290, !292}
!llvm.module.flags = !{!294, !295, !296, !297, !298, !299, !300, !301}
!llvm.ident = !{!302}

!0 = !{ptr @__initcall__kmod_ti_cpsw_new__553_2127_cpsw_driver_init6, !1, !"__initcall__kmod_ti_cpsw_new__553_2127_cpsw_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 2127, i32 1}
!2 = !{ptr @__exitcall_cpsw_driver_exit, !1, !"__exitcall_cpsw_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file554, !4, !"__UNIQUE_ID_file554", i1 false, i1 false}
!4 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 2129, i32 1}
!5 = !{ptr @__UNIQUE_ID_license555, !4, !"__UNIQUE_ID_license555", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description556, !7, !"__UNIQUE_ID_description556", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 2130, i32 1}
!8 = !{ptr @cpsw_netdev_ops, !9, !"cpsw_netdev_ops", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1126, i32 36}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 830, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @cpsw_ndo_open._entry, !11, !"_entry", i1 false, i1 false}
!17 = !{ptr @cpsw_ndo_open._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 841, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @cpsw_ndo_open._entry.7, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @cpsw_ndo_open._entry_ptr.10, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 847, i32 3}
!27 = !{ptr @cpsw_ndo_open._entry.11, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cpsw_ndo_open._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 871, i32 5}
!31 = !{ptr @cpsw_ndo_open._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cpsw_ndo_open._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 553, i32 13}
!35 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 527, i32 2}
!37 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @cpsw_init_host_port_switch.__UNIQUE_ID_ddebug540, !36, !"__UNIQUE_ID_ddebug540", i1 false, i1 false}
!40 = !{ptr @cpsw_init_stp_ale_entry.stpa, !41, !"stpa", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 505, i32 20}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 538, i32 2}
!44 = !{ptr @.str.22, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @cpsw_init_host_port_dual_mac.__UNIQUE_ID_ddebug541, !43, !"__UNIQUE_ID_ddebug541", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 765, i32 3}
!48 = !{ptr @.str.24, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @cpsw_slave_open._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @cpsw_slave_open._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 770, i32 3}
!53 = !{ptr @cpsw_slave_open._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cpsw_slave_open._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 694, i32 4}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.30, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @cpsw_adjust_link._entry, !56, !"_entry", i1 false, i1 false}
!60 = !{ptr @cpsw_adjust_link._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 792, i32 2}
!63 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @cpsw_ndo_stop._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @cpsw_ndo_stop._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 925, i32 3}
!68 = !{ptr @.str.34, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @cpsw_ndo_start_xmit._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @cpsw_ndo_start_xmit._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 944, i32 3}
!73 = !{ptr @cpsw_ndo_start_xmit._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @cpsw_ndo_start_xmit._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 98, i32 3}
!77 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @cpsw_set_promiscious.__UNIQUE_ID_ddebug523, !76, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!79 = !{ptr @.str.40, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 106, i32 3}
!81 = !{ptr @cpsw_set_promiscious.__UNIQUE_ID_ddebug524, !80, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 111, i32 3}
!84 = !{ptr @cpsw_set_promiscious.__UNIQUE_ID_ddebug525, !83, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 445, i32 3}
!87 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @cpsw_ndo_vlan_rx_add_vid.__UNIQUE_ID_ddebug538, !86, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 470, i32 2}
!91 = !{ptr @cpsw_ndo_vlan_rx_add_vid.__UNIQUE_ID_ddebug539, !90, !"__UNIQUE_ID_ddebug539", i1 false, i1 false}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1020, i32 3}
!94 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @cpsw_ndo_vlan_rx_kill_vid.__UNIQUE_ID_ddebug543, !93, !"__UNIQUE_ID_ddebug543", i1 false, i1 false}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1045, i32 2}
!98 = !{ptr @cpsw_ndo_vlan_rx_kill_vid.__UNIQUE_ID_ddebug544, !97, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1048, i32 3}
!101 = !{ptr @cpsw_ndo_vlan_rx_kill_vid._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @cpsw_ndo_vlan_rx_kill_vid._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1052, i32 3}
!105 = !{ptr @cpsw_ndo_vlan_rx_kill_vid._entry.49, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @cpsw_ndo_vlan_rx_kill_vid._entry_ptr.51, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1057, i32 3}
!109 = !{ptr @cpsw_ndo_vlan_rx_kill_vid._entry.52, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @cpsw_ndo_vlan_rx_kill_vid._entry_ptr.54, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1072, i32 28}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 2119, i32 12}
!115 = !{ptr @cpsw_driver, !116, !"cpsw_driver", i1 false, i1 false}
!116 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 2117, i32 31}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1877, i32 44}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1880, i32 3}
!121 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @cpsw_probe._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @cpsw_probe._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1884, i32 26}
!126 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1887, i32 3}
!128 = !{ptr @cpsw_probe._entry.61, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @cpsw_probe._entry_ptr.63, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.64, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1899, i32 38}
!132 = !{ptr @.str.65, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1904, i32 38}
!134 = !{ptr @.str.66, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1909, i32 38}
!136 = !{ptr @.str.68, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1953, i32 3}
!138 = !{ptr @cpsw_probe._entry.67, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @cpsw_probe._entry_ptr.69, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1960, i32 3}
!142 = !{ptr @cpsw_probe._entry.70, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @cpsw_probe._entry_ptr.72, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1982, i32 3}
!146 = !{ptr @cpsw_probe._entry.73, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @cpsw_probe._entry_ptr.75, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @cpsw_probe._entry.76, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1989, i32 3}
!150 = !{ptr @cpsw_probe._entry_ptr.77, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.79, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1999, i32 3}
!153 = !{ptr @cpsw_probe._entry.78, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @cpsw_probe._entry_ptr.80, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.82, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 2019, i32 2}
!157 = !{ptr @.str.83, !156, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @cpsw_probe._entry.81, !156, !"_entry", i1 false, i1 false}
!159 = !{ptr @cpsw_probe._entry_ptr.84, !156, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.85, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1231, i32 40}
!162 = !{ptr @.str.86, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1257, i32 3}
!164 = !{ptr @.str.87, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @cpsw_probe_dt._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @cpsw_probe_dt._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.88, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1263, i32 39}
!169 = !{ptr @.str.90, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1265, i32 4}
!171 = !{ptr @cpsw_probe_dt._entry.89, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @cpsw_probe_dt._entry_ptr.91, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @.str.93, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1271, i32 4}
!175 = !{ptr @cpsw_probe_dt._entry.92, !174, !"_entry", i1 false, i1 false}
!176 = !{ptr @cpsw_probe_dt._entry_ptr.94, !174, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.96, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1287, i32 4}
!179 = !{ptr @cpsw_probe_dt._entry.95, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @cpsw_probe_dt._entry_ptr.97, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.99, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1296, i32 6}
!183 = !{ptr @cpsw_probe_dt._entry.98, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @cpsw_probe_dt._entry_ptr.100, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.101, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1303, i32 31}
!187 = !{ptr @.str.103, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1307, i32 4}
!189 = !{ptr @cpsw_probe_dt._entry.102, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @cpsw_probe_dt._entry_ptr.104, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.106, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1314, i32 4}
!193 = !{ptr @cpsw_probe_dt._entry.105, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @cpsw_probe_dt._entry_ptr.107, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.108, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1327, i32 37}
!197 = !{ptr @.str.110, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1329, i32 4}
!199 = !{ptr @cpsw_probe_dt._entry.109, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @cpsw_probe_dt._entry_ptr.111, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.113, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1332, i32 4}
!203 = !{ptr @cpsw_probe_dt._entry.112, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @cpsw_probe_dt._entry_ptr.114, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.115, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1846, i32 14}
!207 = !{ptr @.str.116, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1846, i32 36}
!209 = !{ptr @cpsw_soc_devices, !210, !"cpsw_soc_devices", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1845, i32 42}
!211 = distinct !{null, !212, !"rx_packet_max", i1 false, i1 false}
!212 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 48, i32 12}
!213 = distinct !{null, !214, !"descs_pool_size", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 49, i32 12}
!215 = distinct !{null, !216, !"ale_ageout", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 47, i32 12}
!217 = !{ptr @.str.117, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1383, i32 4}
!219 = !{ptr @.str.118, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @cpsw_create_ports._entry, !218, !"_entry", i1 false, i1 false}
!221 = !{ptr @cpsw_create_ports._entry_ptr, !218, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.120, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1397, i32 4}
!224 = !{ptr @cpsw_create_ports._entry.119, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @cpsw_create_ports._entry_ptr.121, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.123, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1401, i32 4}
!228 = !{ptr @cpsw_create_ports._entry.122, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @cpsw_create_ports._entry_ptr.124, !227, !"_entry_ptr", i1 false, i1 false}
!230 = distinct !{null, !231, !"debug_level", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 46, i32 12}
!232 = !{ptr @cpsw_ethtool_ops, !233, !"cpsw_ethtool_ops", i1 false, i1 false}
!233 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1189, i32 33}
!234 = !{ptr @.str.125, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1156, i32 25}
!236 = !{ptr @.str.126, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1590, i32 3}
!238 = !{ptr @.str.127, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @cpsw_register_notifiers._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @cpsw_register_notifiers._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @cpsw_netdevice_nb, !242, !"cpsw_netdevice_nb", i1 false, i1 false}
!242 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1580, i32 30}
!243 = !{ptr @.str.128, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1493, i32 2}
!245 = !{ptr @.str.129, !244, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @cpsw_port_offload_fwd_mark_update.__UNIQUE_ID_ddebug546, !244, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!247 = !{ptr @.str.130, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1816, i32 3}
!249 = !{ptr @.str.131, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @cpsw_register_devlink._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @cpsw_register_devlink._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @cpsw_devlink_ops, !253, !"cpsw_devlink_ops", i1 false, i1 false}
!253 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1607, i32 33}
!254 = !{ptr @.str.132, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1789, i32 2}
!256 = !{ptr @.str.133, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1794, i32 2}
!258 = !{ptr @cpsw_devlink_params, !259, !"cpsw_devlink_params", i1 false, i1 false}
!259 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1788, i32 35}
!260 = !{ptr @.str.134, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1616, i32 2}
!262 = !{ptr @.str.135, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @cpsw_dl_switch_mode_get.__UNIQUE_ID_ddebug547, !261, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!264 = !{ptr @.str.136, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1636, i32 2}
!266 = !{ptr @cpsw_dl_switch_mode_set.__UNIQUE_ID_ddebug548, !265, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!267 = !{ptr @.str.137, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1645, i32 3}
!269 = !{ptr @cpsw_dl_switch_mode_set._entry, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @cpsw_dl_switch_mode_set._entry_ptr, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.139, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1681, i32 3}
!273 = !{ptr @cpsw_dl_switch_mode_set._entry.138, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @cpsw_dl_switch_mode_set._entry_ptr.140, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.142, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1711, i32 3}
!277 = !{ptr @cpsw_dl_switch_mode_set._entry.141, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @cpsw_dl_switch_mode_set._entry_ptr.143, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.144, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1750, i32 2}
!281 = !{ptr @cpsw_dl_ale_ctrl_get.__UNIQUE_ID_ddebug551, !280, !"__UNIQUE_ID_ddebug551", i1 false, i1 false}
!282 = !{ptr @.str.145, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1770, i32 2}
!284 = !{ptr @cpsw_dl_ale_ctrl_set.__UNIQUE_ID_ddebug552, !283, !"__UNIQUE_ID_ddebug552", i1 false, i1 false}
!285 = !{ptr @.str.146, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1461, i32 4}
!287 = !{ptr @.str.147, !286, !"<string literal>", i1 false, i1 false}
!288 = !{ptr @cpsw_register_ports._entry, !286, !"_entry", i1 false, i1 false}
!289 = !{ptr @cpsw_register_ports._entry_ptr, !286, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @cpsw_of_mtable, !291, !"cpsw_of_mtable", i1 false, i1 false}
!291 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 1836, i32 34}
!292 = !{ptr @cpsw_pm_ops, !293, !"cpsw_pm_ops", i1 false, i1 false}
!293 = !{!"../drivers/net/ethernet/ti/cpsw_new.c", i32 2115, i32 8}
!294 = !{i32 1, !"wchar_size", i32 2}
!295 = !{i32 1, !"min_enum_size", i32 4}
!296 = !{i32 8, !"branch-target-enforcement", i32 0}
!297 = !{i32 8, !"sign-return-address", i32 0}
!298 = !{i32 8, !"sign-return-address-all", i32 0}
!299 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!300 = !{i32 7, !"uwtable", i32 1}
!301 = !{i32 7, !"frame-pointer", i32 2}
!302 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!303 = !{i8 0, i8 2}
!304 = !{i64 2148472241}
!305 = !{i64 958841, i64 958866, i64 958888, i64 958904, i64 958916, i64 958936, i64 958960, i64 958976, i64 958988}
!306 = !{i64 2148472429}
!307 = !{i64 737162}
!308 = !{i64 2159014686}
!309 = !{i64 2159015075}
!310 = !{i64 736744}
!311 = !{i64 2159016273}
!312 = !{i64 2159031505}
!313 = !{!"branch_weights", i32 1, i32 2000}
!314 = !{!"branch_weights", i32 2000, i32 1}
!315 = !{i64 2154767592, i64 2154768080, i64 2154767629, i64 2154767685, i64 2154767719, i64 2154767743, i64 2154767784, i64 2154767805, i64 2154767833, i64 2154767867}
!316 = !{i64 2159038947}
!317 = !{i64 2159039124}
!318 = !{i64 2148203901, i64 2148203906, i64 2148203919, i64 2148203963, i64 2148203997, i64 2148204018}
!319 = !{i64 2159008053}
!320 = !{i64 2159008491}
!321 = !{i64 2159011316}
!322 = !{i64 2159013981}
!323 = !{!"auto-init"}
