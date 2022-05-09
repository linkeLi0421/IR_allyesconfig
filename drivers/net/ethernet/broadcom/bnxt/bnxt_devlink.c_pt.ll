; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c_pt.bc'
source_filename = "../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.devlink_health_reporter_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.devlink_ops = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.61, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.61 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.devlink_param = type { i32, ptr, i8, i32, i32, ptr, ptr, ptr }
%struct.bnxt_dl_nvm_param = type { i16, i16, i16, i16, i8 }
%struct.bnxt = type { ptr, ptr, ptr, i32, i16, i8, [32 x i8], [32 x i8], ptr, ptr, %struct.atomic_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i16, i32, i16, i8, i8, [8 x %struct.bnxt_queue_info], [8 x i8], [8 x i8], i8, i32, %struct.timer_list, i32, ptr, i32, [6 x i8], ptr, ptr, i8, i8, i8, i32, i32, i32, i32, i16, i16, ptr, %struct.hlist_head, %struct.rtnl_link_stats64, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, %struct.bnxt_stats_mem, i16, i16, i16, [8 x i8], i8, i16, i16, i32, i32, %struct.mutex, %struct.hwrm_ver_get_output, [32 x i8], [32 x i8], [32 x i8], i64, i16, i16, i16, i16, i8, i8, i16, %struct.bnxt_coal_cap, %struct.bnxt_coal, %struct.bnxt_coal, i32, %struct.work_struct, i32, %struct.delayed_work, i32, i16, i16, i32, ptr, %struct.bnxt_hw_resc, %struct.bnxt_pf_info, ptr, i32, %struct.bnxt_vf_info, %struct.wait_queue_head, i8, %struct.mutex, %struct.spinlock, i32, [512 x %struct.hlist_head], %struct.spinlock, ptr, i32, %struct.mutex, %struct.bnxt_link_info, %struct.ethtool_eee, i32, i32, i8, i8, ptr, i8, i8, i8, [4 x %struct.bnxt_led_info], i16, ptr, ptr, ptr, %struct.devlink_port, i32, ptr, ptr, [8 x i8], ptr, %struct.list_head, ptr, ptr, i32 }
%struct.bnxt_queue_info = type { i8, i8 }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.bnxt_stats_mem = type { ptr, ptr, ptr, i32, i32 }
%struct.hwrm_ver_get_output = type { i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, [16 x i8], [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8, i8, i16, i16, i16, i8, [2 x i8], i8, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i8], i8 }
%struct.bnxt_coal_cap = type { i32, i32, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_coal = type { i16, i16, i16, i16, i16, i8, i8, i16 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.bnxt_hw_resc = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.bnxt_pf_info = type { i16, i16, [6 x i8], i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, ptr, i16, i8, [4 x ptr], [4 x i32], ptr }
%struct.bnxt_vf_info = type { i16, [6 x i8], [6 x i8], i16, i16, i32, i32, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bnxt_link_info = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [3 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i32, %struct.hwrm_port_phy_qcfg_output }
%struct.hwrm_port_phy_qcfg_output = type { i16, i16, i16, i16, i8, i8, i16, i8, i8, i16, i16, i8, i8, i16, i16, i8, i8, i8, i8, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i8, i8, i16, i16, i32, i16, i8, i8, [16 x i8], [16 x i8], i16, i16, i16, i8, i8 }
%struct.ethtool_eee = type { i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%struct.bnxt_led_info = type { i8, i8, i8, i8, i16, i16 }
%struct.devlink_port = type { %struct.list_head, %struct.list_head, %struct.list_head, ptr, i32, %struct.spinlock, i32, i32, ptr, %struct.devlink_port_attrs, i8, %struct.delayed_work, %struct.list_head, %struct.mutex, ptr }
%struct.devlink_port_attrs = type { i8, i32, i32, %struct.netdev_phys_item_id, %union.anon.144 }
%struct.netdev_phys_item_id = type { [32 x i8], i8 }
%union.anon.144 = type { %struct.devlink_port_pci_vf_attrs }
%struct.devlink_port_pci_vf_attrs = type { i32, i16, i16, i8 }
%struct.bnxt_fw_health = type { i32, i32, i32, i32, i32, i32, [4 x i32], [4 x i32], i32, i32, i32, i8, i8, i8, i8, [16 x i32], [16 x i32], [16 x i32], i32, i32, ptr, %struct.mutex, i32, i32, i32, i32, i32, i32, i32 }
%struct.bnxt_dl = type { ptr, i8 }
%struct.hwrm_func_cfg_input = type { i16, i16, i16, i16, i64, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [6 x i8], i16, [4 x i32], i32, i32, i16, i8, i8, i8, i8, i16, i16, i16, i32, i32, i16, i16, i16, i16, [4 x i8] }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.156, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.156 = type { ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.155, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.155 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.hwrm_fw_livepatch_input = type { i16, i16, i16, i16, i64, i8, i8, i8, i8, i32, i64 }
%struct.hwrm_fw_livepatch_query_output = type { i16, i16, i16, i16, [32 x i8], [32 x i8], i16, [5 x i8], i8 }
%struct.hwrm_fw_livepatch_query_input = type { i16, i16, i16, i16, i64, i8, [7 x i8] }
%struct.hwrm_nvm_get_dev_info_output = type { i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i8, i8, i8, i8, [16 x i8], i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, [7 x i8], i8 }
%struct.hwrm_err_output = type { i16, i16, i16, i16, i32, i16, i8, i8 }
%struct.hwrm_nvm_get_variable_input = type { i16, i16, i16, i16, i64, i64, i16, i16, i16, i16, i16, i16, i16, i8, i8 }

@bnxt_dl_fw_reporter_ops = internal constant { %struct.devlink_health_reporter_ops, [44 x i8] } { %struct.devlink_health_reporter_ops { ptr @.str.4, ptr @bnxt_fw_recover, ptr @bnxt_fw_dump, ptr @bnxt_fw_diagnose, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Failed to create FW health reporter, rc = %ld\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"FW error reported\00", [46 x i8] zeroinitializer }, align 32
@bnxt_dl_ops = internal constant { %struct.devlink_ops, [52 x i8] } { %struct.devlink_ops { i32 0, i32 6, i32 2, ptr @bnxt_dl_reload_down, ptr @bnxt_dl_reload_up, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bnxt_dl_eswitch_mode_get, ptr @bnxt_dl_eswitch_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @bnxt_dl_info_get, ptr @bnxt_dl_flash_update, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bnxt_vf_dl_ops = internal constant { %struct.devlink_ops, [52 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"devlink_alloc failed\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"devlink_port_register failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"fw\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Status\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"recovering\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"initializing\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"FW error diagnosed\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Syndrome\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"healthy\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Severity\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Remedy\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Impact\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"traffic+ntuple_cfg\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Resets\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Arrests\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Survivals\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Discoveries\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Fatalities\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Diagnoses\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"warning\00", [24 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"recoverable\00", [20 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fatal\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"devlink recover\00", [16 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"device power cycle\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"host power cycle\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"update firmware\00", [16 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"replace hardware\00", [47 x i8] zeroinitializer }, align 32
@bnxt_dl_reload_down.__msg = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"bnxt_en: reload is unsupported while VFs are allocated or being configured\00", [53 x i8] zeroinitializer }, align 32
@bnxt_dl_reload_down.__msg.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bnxt_en: Failed to close\00", [39 x i8] zeroinitializer }, align 32
@bnxt_dl_reload_down.__msg.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bnxt_en: Failed to deregister\00", [34 x i8] zeroinitializer }, align 32
@bnxt_dl_reload_down.__msg.37 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"bnxt_en: Device not capable, requires reboot\00", [51 x i8] zeroinitializer }, align 32
@bnxt_dl_reload_down.__msg.38 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"bnxt_en: Reset denied by firmware, it may be inhibited by remote driver\00", [56 x i8] zeroinitializer }, align 32
@bnxt_dl_reload_down.__msg.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bnxt_en: Failed to activate firmware\00", [59 x i8] zeroinitializer }, align 32
@bnxt_dl_livepatch_activate.__msg = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bnxt_en: Device does not support live patch\00", [52 x i8] zeroinitializer }, align 32
@bnxt_dl_livepatch_activate.__msg.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"bnxt_en: Failed to query packages\00", [62 x i8] zeroinitializer }, align 32
@bnxt_dl_livepatch_activate.__msg.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bnxt_en: Live patch already activated\00", [58 x i8] zeroinitializer }, align 32
@bnxt_dl_livepatch_activate.__msg.42 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bnxt_en: No live patches found\00", [33 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Illegal live patch opcode\00", [38 x i8] zeroinitializer }, align 32
@bnxt_dl_livepatch_report_err.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bnxt_en: Invalid opcode\00", [40 x i8] zeroinitializer }, align 32
@bnxt_dl_livepatch_report_err.__msg.44 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"bnxt_en: Live patch operation not supported\00", [52 x i8] zeroinitializer }, align 32
@bnxt_dl_livepatch_report_err.__msg.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"bnxt_en: Live patch not found\00", [34 x i8] zeroinitializer }, align 32
@bnxt_dl_livepatch_report_err.__msg.46 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"bnxt_en: Live patch deactivation failed. Firmware not patched.\00", [33 x i8] zeroinitializer }, align 32
@bnxt_dl_livepatch_report_err.__msg.47 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"bnxt_en: Live patch not authenticated\00", [58 x i8] zeroinitializer }, align 32
@bnxt_dl_livepatch_report_err.__msg.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"bnxt_en: Incompatible live patch\00", [63 x i8] zeroinitializer }, align 32
@bnxt_dl_livepatch_report_err.__msg.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"bnxt_en: Live patch has invalid size\00", [59 x i8] zeroinitializer }, align 32
@bnxt_dl_livepatch_report_err.__msg.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"bnxt_en: Live patch already applied\00", [60 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unexpected live patch error: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@bnxt_dl_livepatch_report_err.__msg.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"bnxt_en: Failed to activate live patch\00", [57 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@bnxt_dl_reload_up.__msg = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"bnxt_en: Device is closed, not waiting for reset notice that will never come\00", [51 x i8] zeroinitializer }, align 32
@bnxt_dl_reload_up.__msg.53 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bnxt_en: Activation incomplete\00", [33 x i8] zeroinitializer }, align 32
@bnxt_dl_reload_up.__msg.54 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bnxt_en: Activation aborted\00", [36 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bnxt_en\00", [24 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%02X-%02X-%02X-%02X-%02X-%02X-%02X-%02X\00", [56 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"board.id\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%X\00", [29 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"asic.id\00", [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%c%d\00", [27 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"asic.rev\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw.psid\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%d.%d\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%d.%d.%d.%d\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw.mgmt\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fw.mgmt.api\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw.ncsi\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fw.roce\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fw.srt.patch\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fw.crt.patch\00", [19 x i8] zeroinitializer }, align 32
@bnxt_dl_flash_update.__msg = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"bnxt_en: flash update not supported from a VF\00", [50 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Preparing to flash\00", [45 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Flashing done\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Flashing failed\00", [16 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@bnxt_dl_params = internal constant { [6 x %struct.devlink_param], [32 x i8] } { [6 x %struct.devlink_param] [%struct.devlink_param { i32 2, ptr @.str.75, i8 1, i32 4, i32 4, ptr @bnxt_dl_nvm_param_get, ptr @bnxt_dl_nvm_param_set, ptr null }, %struct.devlink_param { i32 4, ptr @.str.76, i8 1, i32 4, i32 4, ptr @bnxt_dl_nvm_param_get, ptr @bnxt_dl_nvm_param_set, ptr null }, %struct.devlink_param { i32 5, ptr @.str.77, i8 1, i32 2, i32 4, ptr @bnxt_dl_nvm_param_get, ptr @bnxt_dl_nvm_param_set, ptr @bnxt_dl_msix_validate }, %struct.devlink_param { i32 6, ptr @.str.78, i8 1, i32 2, i32 4, ptr @bnxt_dl_nvm_param_get, ptr @bnxt_dl_nvm_param_set, ptr @bnxt_dl_msix_validate }, %struct.devlink_param { i32 17, ptr @.str.79, i8 0, i32 4, i32 4, ptr @bnxt_dl_nvm_param_get, ptr @bnxt_dl_nvm_param_set, ptr null }, %struct.devlink_param { i32 10, ptr @.str.80, i8 1, i32 4, i32 1, ptr @bnxt_remote_dev_reset_get, ptr @bnxt_remote_dev_reset_set, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"devlink_params_register failed. rc=%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"enable_sriov\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ignore_ari\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msix_vec_per_pf_max\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"msix_vec_per_pf_min\00", [44 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gre_ver_check\00", [18 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"enable_remote_dev_reset\00", [40 x i8] zeroinitializer }, align 32
@nvm_params = internal constant { [5 x %struct.bnxt_dl_nvm_param], [46 x i8] } { [5 x %struct.bnxt_dl_nvm_param] [%struct.bnxt_dl_nvm_param { i16 2, i16 401, i16 40, i16 1, i8 1 }, %struct.bnxt_dl_nvm_param { i16 4, i16 164, i16 40, i16 1, i8 1 }, %struct.bnxt_dl_nvm_param { i16 5, i16 108, i16 40, i16 10, i8 4 }, %struct.bnxt_dl_nvm_param { i16 6, i16 114, i16 40, i16 7, i8 4 }, %struct.bnxt_dl_nvm_param { i16 17, i16 171, i16 40, i16 1, i8 1 }], [46 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"PF does not have admin privileges to modify NVM config\0A\00", [40 x i8] zeroinitializer }, align 32
@bnxt_dl_msix_validate.__msg = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"bnxt_en: MSIX value is exceeding the range\00", [53 x i8] zeroinitializer }, align 32
@switch.table.bnxt_fw_diagnose = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29], [16 x i8] zeroinitializer }, align 32
@switch.table.bnxt_fw_diagnose.82 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [5 x i64] [i64 3, i64 2, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [10 x i64] [i64 8, i64 8, i64 1, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.88 = internal global [6 x i64] [i64 4, i64 16, i64 5968, i64 5969, i64 5970, i64 55320]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 16, i64 5968, i64 5969, i64 5970, i64 55320]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.92 = internal global [6 x i64] [i64 4, i64 16, i64 5968, i64 5969, i64 5970, i64 55320]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.94 = internal global [6 x i64] [i64 4, i64 16, i64 5968, i64 5969, i64 5970, i64 55320]
@__sancov_gen_cov_switch_values.95 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 4, i64 5, i64 6, i64 17]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 16, i64 41, i64 42]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 4]
@___asan_gen_.99 = private unnamed_addr constant [24 x i8] c"bnxt_dl_fw_reporter_ops\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 237, i32 49 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 255, i32 24 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 295, i32 53 }
@___asan_gen_.108 = private unnamed_addr constant [12 x i8] c"bnxt_dl_ops\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 613, i32 33 }
@___asan_gen_.111 = private unnamed_addr constant [15 x i8] c"bnxt_vf_dl_ops\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 627, i32 33 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1215, i32 24 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1239, i32 23 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 238, i32 10 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 205, i32 43 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 208, i32 43 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 211, i32 40 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 109, i32 45 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 109, i32 55 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 112, i32 55 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 117, i32 53 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 126, i32 12 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 128, i32 53 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 131, i32 40 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 135, i32 53 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 140, i32 42 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 146, i32 43 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 151, i32 44 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 152, i32 10 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 164, i32 39 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 167, i32 39 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 170, i32 39 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 173, i32 39 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 176, i32 39 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 179, i32 41 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 79, i32 31 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 80, i32 32 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 81, i32 36 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 82, i32 30 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 90, i32 38 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 91, i32 41 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 92, i32 39 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 93, i32 32 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 94, i32 33 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 470, i32 4 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 483, i32 5 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 492, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 508, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 512, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 529, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 394, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 415, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 446, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 449, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 338, i32 23 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 339, i32 3 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 342, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 345, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 348, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 352, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 355, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 358, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 361, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 364, i32 23 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 365, i32 3 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 572, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 577, i32 5 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 582, i32 5 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 834, i32 41 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 839, i32 16 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 854, i32 10 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 859, i32 15 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 861, i32 10 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 866, i32 15 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 868, i32 10 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 873, i32 10 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 886, i32 16 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 896, i32 38 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 921, i32 10 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 926, i32 10 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 932, i32 10 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 937, i32 10 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 982, i32 43 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 985, i32 45 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 42, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 47, i32 41 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 50, i32 42 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 52, i32 42 }
@___asan_gen_.345 = private unnamed_addr constant [15 x i8] c"bnxt_dl_params\00", align 1
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1140, i32 35 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1182, i32 24 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1141, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1145, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1149, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1153, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1157, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1163, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant [11 x i8] c"nvm_params\00", align 1
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 634, i32 39 }
@___asan_gen_.372 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1055, i32 23 }
@___asan_gen_.375 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.376 = private constant [53 x i8] c"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.376, i32 1107, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant [30 x i8] c"switch.table.bnxt_fw_diagnose\00", align 1
@___asan_gen_.379 = private unnamed_addr constant [33 x i8] c"switch.table.bnxt_fw_diagnose.82\00", align 1
@llvm.compiler.used = appending global [95 x ptr] [ptr @bnxt_dl_fw_reporter_ops, ptr @.str, ptr @.str.1, ptr @bnxt_dl_ops, ptr @bnxt_vf_dl_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @bnxt_dl_reload_down.__msg, ptr @bnxt_dl_reload_down.__msg.35, ptr @bnxt_dl_reload_down.__msg.36, ptr @bnxt_dl_reload_down.__msg.37, ptr @bnxt_dl_reload_down.__msg.38, ptr @bnxt_dl_reload_down.__msg.39, ptr @bnxt_dl_livepatch_activate.__msg, ptr @bnxt_dl_livepatch_activate.__msg.40, ptr @bnxt_dl_livepatch_activate.__msg.41, ptr @bnxt_dl_livepatch_activate.__msg.42, ptr @.str.43, ptr @bnxt_dl_livepatch_report_err.__msg, ptr @bnxt_dl_livepatch_report_err.__msg.44, ptr @bnxt_dl_livepatch_report_err.__msg.45, ptr @bnxt_dl_livepatch_report_err.__msg.46, ptr @bnxt_dl_livepatch_report_err.__msg.47, ptr @bnxt_dl_livepatch_report_err.__msg.48, ptr @bnxt_dl_livepatch_report_err.__msg.49, ptr @bnxt_dl_livepatch_report_err.__msg.50, ptr @.str.51, ptr @bnxt_dl_livepatch_report_err.__msg.52, ptr @bnxt_dl_reload_up.__msg, ptr @bnxt_dl_reload_up.__msg.53, ptr @bnxt_dl_reload_up.__msg.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @bnxt_dl_flash_update.__msg, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @bnxt_dl_params, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @nvm_params, ptr @.str.81, ptr @bnxt_dl_msix_validate.__msg, ptr @switch.table.bnxt_fw_diagnose, ptr @switch.table.bnxt_fw_diagnose.82], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_fw_reporter_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_vf_dl_ops to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_reload_down.__msg to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_reload_down.__msg.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_reload_down.__msg.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_reload_down.__msg.37 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_reload_down.__msg.38 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_reload_down.__msg.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_livepatch_activate.__msg to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_livepatch_activate.__msg.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_livepatch_activate.__msg.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_livepatch_activate.__msg.42 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_livepatch_report_err.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_livepatch_report_err.__msg.44 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_livepatch_report_err.__msg.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_livepatch_report_err.__msg.46 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_livepatch_report_err.__msg.47 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_livepatch_report_err.__msg.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_livepatch_report_err.__msg.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_livepatch_report_err.__msg.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_livepatch_report_err.__msg.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_reload_up.__msg to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_reload_up.__msg.53 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_reload_up.__msg.54 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_flash_update.__msg to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_params to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvm_params to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bnxt_dl_msix_validate.__msg to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bnxt_fw_diagnose to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.bnxt_fw_diagnose.82 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_dl_fw_reporters_create(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_health = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 118
  %0 = ptrtoint ptr %fw_health to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_health, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fw_reporter = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %fw_reporter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_reporter, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %dl = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 148
  %4 = ptrtoint ptr %dl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dl, align 4
  %call = tail call ptr @devlink_health_reporter_create(ptr noundef %5, ptr noundef nonnull @bnxt_dl_fw_reporter_ops, i64 noundef 0, ptr noundef %bp) #9
  %6 = ptrtoint ptr %fw_reporter to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %fw_reporter, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %9 = ptrtoint ptr %call to i32
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %8, ptr noundef nonnull @.str, i32 noundef %9) #12
  %10 = ptrtoint ptr %fw_reporter to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %fw_reporter, align 4
  %fw_cap = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %11 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fw_cap, align 8
  %and = and i32 %12, -8193
  store i32 %and, ptr %fw_cap, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_health_reporter_create(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_dl_fw_reporters_destroy(ptr nocapture noundef readonly %bp, i1 noundef zeroext %all) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_health = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 118
  %0 = ptrtoint ptr %fw_health to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_health, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_cap = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %2 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_cap, align 8
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %brmerge = or i1 %tobool1.not, %all
  br i1 %brmerge, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %fw_reporter = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %fw_reporter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw_reporter, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.then6

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @devlink_health_reporter_destroy(ptr noundef nonnull %5) #9
  %6 = ptrtoint ptr %fw_reporter to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %fw_reporter, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_health_reporter_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_devlink_health_fw_report(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_health1 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 118
  %0 = ptrtoint ptr %fw_health1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_health1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %fw_reporter = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %fw_reporter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_reporter, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  %state.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 64
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.then3.if.then.i_crit_edge

if.then3.if.then.i_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.then3
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state.i, align 4
  %9 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i = icmp eq i32 %9, 0
  br i1 %tobool3.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.then3.if.then.i_crit_edge
  tail call void @bnxt_fw_reset(ptr noundef %bp) #9
  br label %cleanup

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bnxt_fw_exception(ptr noundef %bp) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %severity = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 22
  %10 = ptrtoint ptr %severity to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %severity, align 4
  %remedy = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 23
  %11 = ptrtoint ptr %remedy to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %remedy, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %12 = ptrtoint ptr %fw_reporter to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fw_reporter, align 4
  %call = tail call i32 @devlink_health_report(ptr noundef %13, ptr noundef nonnull @.str.1, ptr noundef nonnull %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -125, i32 %call)
  %cmp = icmp eq i32 %call, -125
  br i1 %cmp, label %if.then7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  %state.i19 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 64
  %14 = ptrtoint ptr %state.i19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %state.i19, align 4
  %16 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i20 = icmp eq i32 %16, 0
  br i1 %tobool.not.i20, label %lor.lhs.false.i22, label %if.then7.if.then.i23_crit_edge

if.then7.if.then.i23_crit_edge:                   ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i23

lor.lhs.false.i22:                                ; preds = %if.then7
  %17 = ptrtoint ptr %state.i19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i19, align 4
  %19 = and i32 %18, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool3.not.i21 = icmp eq i32 %19, 0
  br i1 %tobool3.not.i21, label %if.else.i24, label %lor.lhs.false.i22.if.then.i23_crit_edge

lor.lhs.false.i22.if.then.i23_crit_edge:          ; preds = %lor.lhs.false.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i23

if.then.i23:                                      ; preds = %lor.lhs.false.i22.if.then.i23_crit_edge, %if.then7.if.then.i23_crit_edge
  tail call void @bnxt_fw_reset(ptr noundef %bp) #9
  br label %cleanup

if.else.i24:                                      ; preds = %lor.lhs.false.i22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bnxt_fw_exception(ptr noundef %bp) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else.i24, %if.then.i23, %if.end4.cleanup_crit_edge, %if.else.i, %if.then.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_health_report(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_dl_health_fw_status_update(ptr nocapture noundef readonly %bp, i1 noundef zeroext %healthy) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_health1 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 118
  %0 = ptrtoint ptr %fw_health1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_health1, align 4
  %lock = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  br i1 %healthy, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %remedy = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 23
  %2 = ptrtoint ptr %remedy to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %remedy, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i32 [ 3, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %state.0 = phi i32 [ 1, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %3 = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 22
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %3, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #9
  %fw_reporter = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %fw_reporter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fw_reporter, align 4
  tail call void @devlink_health_reporter_state_update(ptr noundef %6, i32 noundef %state.0) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_health_reporter_state_update(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_dl_health_fw_recovery_done(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dl1 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 148
  %0 = ptrtoint ptr %dl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dl1, align 4
  %call = tail call ptr @devlink_priv(ptr noundef %1) #9
  %fw_health = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 118
  %2 = ptrtoint ptr %fw_health to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fw_health, align 4
  %fw_reporter = getelementptr inbounds %struct.bnxt_fw_health, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %fw_reporter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fw_reporter, align 4
  tail call void @devlink_health_reporter_recovery_done(ptr noundef %5) #9
  %remote_reset = getelementptr inbounds %struct.bnxt_dl, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %remote_reset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %remote_reset, align 4, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #9
  %8 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !196
  %fw_cap.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %9 = ptrtoint ptr %fw_cap.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_cap.i, align 8
  %neg.i = and i32 %10, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg.i)
  %tobool.not.not.i = icmp eq i32 %neg.i, 0
  br i1 %tobool.not.not.i, label %entry.bnxt_hwrm_remote_dev_reset_set.exit_crit_edge, label %if.end.i

entry.bnxt_hwrm_remote_dev_reset_set.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnxt_hwrm_remote_dev_reset_set.exit

if.end.i:                                         ; preds = %entry
  %call.i = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req.i, i16 noundef zeroext 23, i32 noundef 112) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.bnxt_hwrm_remote_dev_reset_set.exit_crit_edge

if.end.i.bnxt_hwrm_remote_dev_reset_set.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnxt_hwrm_remote_dev_reset_set.exit

if.end3.i:                                        ; preds = %if.end.i
  %11 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %req.i, align 4
  %fid.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %fid.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 -1, ptr %fid.i, align 8
  %enables.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %12, i32 0, i32 8
  %14 = ptrtoint ptr %enables.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 32768, ptr %enables.i, align 8
  br i1 %tobool.not, label %if.end3.i.if.end6.i_crit_edge, label %if.then5.i

if.end3.i.if.end6.i_crit_edge:                    ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %12, i32 0, i32 7
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %flags.i, align 4
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end3.i.if.end6.i_crit_edge
  %call7.i = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %12) #9
  br label %bnxt_hwrm_remote_dev_reset_set.exit

bnxt_hwrm_remote_dev_reset_set.exit:              ; preds = %if.end6.i, %if.end.i.bnxt_hwrm_remote_dev_reset_set.exit_crit_edge, %entry.bnxt_hwrm_remote_dev_reset_set.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_health_reporter_recovery_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bnxt_dl_register(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  %attrs = alloca %struct.devlink_port_attrs, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %attrs) #9
  %0 = call ptr @memset(ptr %attrs, i32 0, i32 60)
  %flags = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 11
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %bnxt_dl_ops.bnxt_vf_dl_ops = select i1 %tobool.not, ptr @bnxt_dl_ops, ptr @bnxt_vf_dl_ops
  %pdev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 9
  %3 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %4, i32 0, i32 44
  %call.i = tail call ptr @devlink_alloc_ns(ptr noundef nonnull %bnxt_dl_ops.bnxt_vf_dl_ops, i32 noundef 8, ptr noundef nonnull @init_net, ptr noundef %dev) #9
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev3 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %5 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @netdev_warn(ptr noundef %6, ptr noundef nonnull @.str.2) #12
  br label %cleanup

if.end4:                                          ; preds = %entry
  %dl5 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 148
  %7 = ptrtoint ptr %dl5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %dl5, align 4
  %call6 = tail call ptr @devlink_priv(ptr noundef nonnull %call.i) #9
  %8 = ptrtoint ptr %call6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %bp, ptr %call6, align 4
  %call.i64 = tail call ptr @devlink_priv(ptr noundef nonnull %call.i) #9
  %remote_reset.i = getelementptr inbounds %struct.bnxt_dl, ptr %call.i64, i32 0, i32 1
  %9 = ptrtoint ptr %remote_reset.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %remote_reset.i, align 4
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 8
  %call9 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef %11, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call9)
  %tobool10.not = icmp eq i16 %call9, 0
  br i1 %tobool10.not, label %if.end4.if.end13_crit_edge, label %land.lhs.true

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end4
  %hwrm_spec_code = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 76
  %12 = ptrtoint ptr %hwrm_spec_code to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hwrm_spec_code, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67587, i32 %13)
  %cmp = icmp ugt i32 %13, 67587
  br i1 %cmp, label %if.then12, label %land.lhs.true.if.end13_crit_edge

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then12:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %eswitch_mode = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 150
  %14 = ptrtoint ptr %eswitch_mode to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %eswitch_mode, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %land.lhs.true.if.end13_crit_edge, %if.end4.if.end13_crit_edge
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 8
  %and15 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end18:                                         ; preds = %if.end13
  %flavour = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 2
  %17 = ptrtoint ptr %flavour to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %flavour, align 4
  %port_id = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 1
  %18 = ptrtoint ptr %port_id to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %port_id, align 2
  %conv19 = zext i16 %19 to i32
  %20 = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv19, ptr %20, align 4
  %switch_id = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 3
  %dsn = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 153
  %22 = ptrtoint ptr %dsn to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %dsn, align 8
  %24 = ptrtoint ptr %switch_id to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 %23, ptr %switch_id, align 4
  %id_len = getelementptr inbounds %struct.devlink_port_attrs, ptr %attrs, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %id_len to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 8, ptr %id_len, align 4
  %dl_port = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 149
  call void @devlink_port_attrs_set(ptr noundef %dl_port, ptr noundef nonnull %attrs) #9
  %26 = ptrtoint ptr %port_id to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %port_id, align 2
  %conv25 = zext i16 %27 to i32
  %call26 = call i32 @devlink_port_register(ptr noundef nonnull %call.i, ptr noundef %dl_port, i32 noundef %conv25) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end30, label %if.then28

if.then28:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %dev29 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %28 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev29, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %29, ptr noundef nonnull @.str.3) #12
  br label %err_dl_free

if.end30:                                         ; preds = %if.end18
  %hwrm_spec_code.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 76
  %30 = ptrtoint ptr %hwrm_spec_code.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hwrm_spec_code.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67072, i32 %31)
  %cmp.i = icmp ult i32 %31, 67072
  br i1 %cmp.i, label %if.end30.out_crit_edge, label %if.end.i

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i:                                         ; preds = %if.end30
  %fw_cap.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %32 = ptrtoint ptr %fw_cap.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %fw_cap.i, align 8
  %neg.i = and i32 %33, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg.i)
  %tobool.not.not.i = icmp eq i32 %neg.i, 0
  %spec.select.i = select i1 %tobool.not.not.i, i32 5, i32 6
  %34 = ptrtoint ptr %dl5 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dl5, align 4
  %call.i65 = call i32 @devlink_params_register(ptr noundef %35, ptr noundef nonnull @bnxt_dl_params, i32 noundef %spec.select.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool3.not.i = icmp eq i32 %call.i65, 0
  br i1 %tobool3.not.i, label %if.end.i.out_crit_edge, label %err_dl_port_unreg

if.end.i.out_crit_edge:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out:                                              ; preds = %if.end.i.out_crit_edge, %if.end30.out_crit_edge, %if.end13.out_crit_edge
  call void @devlink_register(ptr noundef nonnull %call.i) #9
  br label %cleanup

err_dl_port_unreg:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @netdev_warn(ptr noundef %37, ptr noundef nonnull @.str.74, i32 noundef %call.i65) #12
  call void @devlink_port_unregister(ptr noundef %dl_port) #9
  br label %err_dl_free

err_dl_free:                                      ; preds = %err_dl_port_unreg, %if.then28
  %rc.0 = phi i32 [ %call26, %if.then28 ], [ %call.i65, %err_dl_port_unreg ]
  call void @devlink_free(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_dl_free, %out, %if.then2
  %retval.0 = phi i32 [ 0, %out ], [ %rc.0, %err_dl_free ], [ -12, %if.then2 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %attrs) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_attrs_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_port_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bnxt_dl_unregister(ptr noundef %bp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dl1 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 148
  %0 = ptrtoint ptr %dl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dl1, align 4
  tail call void @devlink_unregister(ptr noundef %1) #9
  %flags = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %hwrm_spec_code.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 76
  %4 = ptrtoint ptr %hwrm_spec_code.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwrm_spec_code.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67072, i32 %5)
  %cmp.i = icmp ult i32 %5, 67072
  br i1 %cmp.i, label %if.then.bnxt_dl_params_unregister.exit_crit_edge, label %if.end.i

if.then.bnxt_dl_params_unregister.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnxt_dl_params_unregister.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %fw_cap.i = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %6 = ptrtoint ptr %fw_cap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %fw_cap.i, align 8
  %neg.i = and i32 %7, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg.i)
  %tobool.not.not.i = icmp eq i32 %neg.i, 0
  %spec.select.i = select i1 %tobool.not.not.i, i32 5, i32 6
  %8 = ptrtoint ptr %dl1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dl1, align 4
  tail call void @devlink_params_unregister(ptr noundef %9, ptr noundef nonnull @bnxt_dl_params, i32 noundef %spec.select.i) #9
  br label %bnxt_dl_params_unregister.exit

bnxt_dl_params_unregister.exit:                   ; preds = %if.end.i, %if.then.bnxt_dl_params_unregister.exit_crit_edge
  %dl_port = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 149
  tail call void @devlink_port_unregister(ptr noundef %dl_port) #9
  br label %if.end

if.end:                                           ; preds = %bnxt_dl_params_unregister.exit, %entry.if.end_crit_edge
  tail call void @devlink_free(ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_fw_recover(ptr noundef %reporter, ptr nocapture noundef readnone %priv_ctx, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #9
  %fw_health = getelementptr inbounds %struct.bnxt, ptr %call, i32 0, i32 118
  %0 = ptrtoint ptr %fw_health to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_health, align 4
  %severity = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %severity to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %severity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp = icmp eq i32 %3, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.bnxt, ptr %call, i32 0, i32 64
  tail call void @_set_bit(i32 noundef 12, ptr noundef %state) #9
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state, align 4
  %6 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %if.end.if.then.i_crit_edge

if.end.if.then.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

lor.lhs.false.i:                                  ; preds = %if.end
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %state, align 4
  %9 = and i32 %8, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not.i = icmp eq i32 %9, 0
  br i1 %tobool3.not.i, label %if.else.i, label %lor.lhs.false.i.if.then.i_crit_edge

lor.lhs.false.i.if.then.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i

if.then.i:                                        ; preds = %lor.lhs.false.i.if.then.i_crit_edge, %if.end.if.then.i_crit_edge
  tail call void @bnxt_fw_reset(ptr noundef %call) #9
  br label %cleanup

if.else.i:                                        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bnxt_fw_exception(ptr noundef %call) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ -115, %if.then.i ], [ -115, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_fw_dump(ptr noundef %reporter, ptr noundef %fmsg, ptr noundef readnone %priv_ctx, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %dump_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dump_len) #9
  %tobool.not = icmp eq ptr %priv_ctx, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @bnxt_get_coredump_length(ptr noundef %call, i16 noundef zeroext 0) #9
  %0 = ptrtoint ptr %dump_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %dump_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call noalias ptr @vmalloc(i32 noundef %call1) #13
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = call i32 @bnxt_get_coredump(ptr noundef %call, i16 noundef zeroext 0, ptr noundef nonnull %call5, ptr noundef nonnull %dump_len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then11, label %if.end8.exit_crit_edge

if.end8.exit_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then11:                                        ; preds = %if.end8
  %call12 = call i32 @devlink_fmsg_pair_nest_start(ptr noundef %fmsg, ptr noundef nonnull @.str.5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.then11.exit_crit_edge

if.then11.exit_crit_edge:                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end15:                                         ; preds = %if.then11
  %1 = ptrtoint ptr %dump_len to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dump_len, align 4
  %call16 = call i32 @devlink_fmsg_binary_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.6, ptr noundef nonnull %call5, i32 noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.exit_crit_edge

if.end15.exit_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end19:                                         ; preds = %if.end15
  %3 = ptrtoint ptr %dump_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dump_len, align 4
  %call20 = call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.7, i32 noundef %4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.exit_crit_edge

if.end19.exit_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end23:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = call i32 @devlink_fmsg_pair_nest_end(ptr noundef %fmsg) #9
  br label %exit

exit:                                             ; preds = %if.end23, %if.end19.exit_crit_edge, %if.end15.exit_crit_edge, %if.then11.exit_crit_edge, %if.end8.exit_crit_edge
  %rc.0 = phi i32 [ %call9, %if.end8.exit_crit_edge ], [ %call12, %if.then11.exit_crit_edge ], [ %call16, %if.end15.exit_crit_edge ], [ %call20, %if.end19.exit_crit_edge ], [ %call24, %if.end23 ]
  call void @vfree(ptr noundef nonnull %call5) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %exit ], [ -95, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dump_len) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_fw_diagnose(ptr noundef %reporter, ptr noundef %fmsg, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @devlink_health_reporter_priv(ptr noundef %reporter) #9
  %fw_health = getelementptr inbounds %struct.bnxt, ptr %call, i32 0, i32 118
  %0 = ptrtoint ptr %fw_health to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_health, align 4
  %state = getelementptr inbounds %struct.bnxt, ptr %call, i32 0, i32 64
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @devlink_fmsg_string_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %status_reliable = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %status_reliable to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %status_reliable, align 4
  %6 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @devlink_fmsg_string_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.10) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #9
  %call7 = tail call i32 @bnxt_fw_health_readl(ptr noundef %call, i32 noundef 0) #9
  %and = and i32 %call7, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp.not.not = icmp eq i32 %and, 0
  br i1 %cmp.not.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end6
  %call9 = tail call i32 @devlink_fmsg_string_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end36_crit_edge, label %if.then8.unlock.thread_crit_edge

if.then8.unlock.thread_crit_edge:                 ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.then8.if.end36_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.else:                                          ; preds = %if.end6
  %severity = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 22
  %7 = ptrtoint ptr %severity to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %severity, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool13.not = icmp eq i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %call7)
  %cmp14.not = icmp eq i32 %call7, 32768
  %or.cond = select i1 %tobool13.not, i1 %cmp14.not, i1 false
  br i1 %or.cond, label %if.else30, label %if.then15

if.then15:                                        ; preds = %if.else
  br i1 %tobool13.not, label %if.then18, label %if.then15.if.end21_crit_edge

if.then15.if.end21_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then18:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %severity to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %severity, align 4
  %remedy = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 23
  %10 = ptrtoint ptr %remedy to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %remedy, align 4
  %diagnoses = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 28
  %11 = ptrtoint ptr %diagnoses to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %diagnoses, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %diagnoses, align 4
  %fw_reporter = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 20
  %13 = ptrtoint ptr %fw_reporter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw_reporter, align 4
  %call20 = tail call i32 @devlink_health_report(ptr noundef %14, ptr noundef nonnull @.str.12, ptr noundef %1) #9
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.then15.if.end21_crit_edge
  %call22 = tail call i32 @devlink_fmsg_string_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.unlock.thread_crit_edge

if.end21.unlock.thread_crit_edge:                 ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.end25:                                         ; preds = %if.end21
  %call26 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.14, i32 noundef %call7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end25.if.end36_crit_edge, label %if.end25.unlock.thread_crit_edge

if.end25.unlock.thread_crit_edge:                 ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.else30:                                        ; preds = %if.else
  %call31 = tail call i32 @devlink_fmsg_string_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.else30.if.end36_crit_edge, label %if.else30.unlock.thread_crit_edge

if.else30.unlock.thread_crit_edge:                ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.else30.if.end36_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end36:                                         ; preds = %if.else30.if.end36_crit_edge, %if.end25.if.end36_crit_edge, %if.then8.if.end36_crit_edge
  %severity37 = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 22
  %15 = ptrtoint ptr %severity37 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %severity37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %17 = icmp ult i32 %16, 4
  br i1 %17, label %switch.lookup, label %if.end36.bnxt_health_severity_str.exit_crit_edge

if.end36.bnxt_health_severity_str.exit_crit_edge: ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnxt_health_severity_str.exit

switch.lookup:                                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.bnxt_fw_diagnose, i32 0, i32 %16
  %18 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %18)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %bnxt_health_severity_str.exit

bnxt_health_severity_str.exit:                    ; preds = %switch.lookup, %if.end36.bnxt_health_severity_str.exit_crit_edge
  %retval.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.10, %if.end36.bnxt_health_severity_str.exit_crit_edge ]
  %call39 = tail call i32 @devlink_fmsg_string_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.16, ptr noundef nonnull %retval.0.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %bnxt_health_severity_str.exit.unlock.thread_crit_edge

bnxt_health_severity_str.exit.unlock.thread_crit_edge: ; preds = %bnxt_health_severity_str.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.end42:                                         ; preds = %bnxt_health_severity_str.exit
  %19 = ptrtoint ptr %severity37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %severity37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool44.not = icmp eq i32 %20, 0
  br i1 %tobool44.not, label %if.end42.unlock.thread160_crit_edge, label %if.then45

if.end42.unlock.thread160_crit_edge:              ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread160

if.then45:                                        ; preds = %if.end42
  %remedy46 = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 23
  %21 = ptrtoint ptr %remedy46 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %remedy46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %22)
  %23 = icmp ult i32 %22, 5
  br i1 %23, label %switch.lookup164, label %if.then45.bnxt_health_remedy_str.exit_crit_edge

if.then45.bnxt_health_remedy_str.exit_crit_edge:  ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnxt_health_remedy_str.exit

switch.lookup164:                                 ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep165 = getelementptr inbounds [5 x ptr], ptr @switch.table.bnxt_fw_diagnose.82, i32 0, i32 %22
  %24 = ptrtoint ptr %switch.gep165 to i32
  call void @__asan_load4_noabort(i32 %24)
  %switch.load166 = load ptr, ptr %switch.gep165, align 4
  br label %bnxt_health_remedy_str.exit

bnxt_health_remedy_str.exit:                      ; preds = %switch.lookup164, %if.then45.bnxt_health_remedy_str.exit_crit_edge
  %retval.0.i156 = phi ptr [ %switch.load166, %switch.lookup164 ], [ @.str.10, %if.then45.bnxt_health_remedy_str.exit_crit_edge ]
  %call48 = tail call i32 @devlink_fmsg_string_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.17, ptr noundef nonnull %retval.0.i156) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %bnxt_health_remedy_str.exit.unlock.thread_crit_edge

bnxt_health_remedy_str.exit.unlock.thread_crit_edge: ; preds = %bnxt_health_remedy_str.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread

if.end51:                                         ; preds = %bnxt_health_remedy_str.exit
  %25 = ptrtoint ptr %remedy46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %remedy46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp53 = icmp eq i32 %26, 0
  br i1 %cmp53, label %unlock, label %if.end51.unlock.thread160_crit_edge

if.end51.unlock.thread160_crit_edge:              ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock.thread160

unlock.thread:                                    ; preds = %bnxt_health_remedy_str.exit.unlock.thread_crit_edge, %bnxt_health_severity_str.exit.unlock.thread_crit_edge, %if.else30.unlock.thread_crit_edge, %if.end25.unlock.thread_crit_edge, %if.end21.unlock.thread_crit_edge, %if.then8.unlock.thread_crit_edge
  %rc.0.ph = phi i32 [ %call31, %if.else30.unlock.thread_crit_edge ], [ %call26, %if.end25.unlock.thread_crit_edge ], [ %call22, %if.end21.unlock.thread_crit_edge ], [ %call48, %bnxt_health_remedy_str.exit.unlock.thread_crit_edge ], [ %call39, %bnxt_health_severity_str.exit.unlock.thread_crit_edge ], [ %call9, %if.then8.unlock.thread_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %cleanup

unlock.thread160:                                 ; preds = %if.end51.unlock.thread160_crit_edge, %if.end42.unlock.thread160_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #9
  br label %lor.lhs.false63

unlock:                                           ; preds = %if.end51
  %call55 = tail call i32 @devlink_fmsg_string_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19) #9
  tail call void @mutex_unlock(ptr noundef %lock) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool62.not = icmp eq i32 %call55, 0
  br i1 %tobool62.not, label %unlock.lor.lhs.false63_crit_edge, label %unlock.cleanup_crit_edge

unlock.cleanup_crit_edge:                         ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

unlock.lor.lhs.false63_crit_edge:                 ; preds = %unlock
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %unlock.lor.lhs.false63_crit_edge, %unlock.thread160
  %27 = ptrtoint ptr %status_reliable to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load64 = load i8, ptr %status_reliable, align 4
  %28 = and i8 %bf.load64, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool67.not = icmp eq i8 %28, 0
  br i1 %tobool67.not, label %lor.lhs.false63.cleanup_crit_edge, label %if.end69

lor.lhs.false63.cleanup_crit_edge:                ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end69:                                         ; preds = %lor.lhs.false63
  %call70 = tail call i32 @bnxt_fw_health_readl(ptr noundef %call, i32 noundef 2) #9
  %call71 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.20, i32 noundef %call70) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end74, label %if.end69.cleanup_crit_edge

if.end69.cleanup_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end74:                                         ; preds = %if.end69
  %arrests = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 24
  %29 = ptrtoint ptr %arrests to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrests, align 4
  %call75 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.21, i32 noundef %30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end78:                                         ; preds = %if.end74
  %survivals = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 26
  %31 = ptrtoint ptr %survivals to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %survivals, align 4
  %call79 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.22, i32 noundef %32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end78.cleanup_crit_edge

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end82:                                         ; preds = %if.end78
  %discoveries = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 25
  %33 = ptrtoint ptr %discoveries to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %discoveries, align 4
  %call83 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.23, i32 noundef %34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not, label %if.end86, label %if.end82.cleanup_crit_edge

if.end82.cleanup_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end86:                                         ; preds = %if.end82
  %fatalities = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 27
  %35 = ptrtoint ptr %fatalities to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fatalities, align 4
  %call87 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.24, i32 noundef %36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end90, label %if.end86.cleanup_crit_edge

if.end86.cleanup_crit_edge:                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end90:                                         ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %diagnoses91 = getelementptr inbounds %struct.bnxt_fw_health, ptr %1, i32 0, i32 28
  %37 = ptrtoint ptr %diagnoses91 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %diagnoses91, align 4
  %call92 = tail call i32 @devlink_fmsg_u32_pair_put(ptr noundef %fmsg, ptr noundef nonnull @.str.25, i32 noundef %38) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end90, %if.end86.cleanup_crit_edge, %if.end82.cleanup_crit_edge, %if.end78.cleanup_crit_edge, %if.end74.cleanup_crit_edge, %if.end69.cleanup_crit_edge, %lor.lhs.false63.cleanup_crit_edge, %unlock.cleanup_crit_edge, %unlock.thread, %if.then4, %if.then
  %retval.0 = phi i32 [ %call2, %if.then ], [ %call92, %if.end90 ], [ %call5, %if.then4 ], [ 0, %lor.lhs.false63.cleanup_crit_edge ], [ %call55, %unlock.cleanup_crit_edge ], [ %call71, %if.end69.cleanup_crit_edge ], [ %call75, %if.end74.cleanup_crit_edge ], [ %call79, %if.end78.cleanup_crit_edge ], [ %call83, %if.end82.cleanup_crit_edge ], [ %call87, %if.end86.cleanup_crit_edge ], [ %rc.0.ph, %unlock.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_health_reporter_priv(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_get_coredump_length(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_get_coredump(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_pair_nest_start(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_binary_pair_put(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_u32_pair_put(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_pair_nest_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_fmsg_string_pair_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_fw_health_readl(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnxt_fw_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnxt_fw_exception(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hwrm_req_init(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrm_req_send(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_dl_reload_down(ptr noundef %dl, i1 noundef zeroext %netns_change, i32 noundef %action, i32 noundef %limit, ptr noundef %extack) #0 align 64 {
entry:
  %query_req.i = alloca ptr, align 4
  %patch_req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #9
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %2 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %action, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb42
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  tail call void @rtnl_lock() #9
  %flags.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 11
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 8
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %sw.bb.if.end3_crit_edge

sw.bb.if.end3_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

land.rhs.i:                                       ; preds = %sw.bb
  %active_vfs.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 120, i32 4
  %5 = ptrtoint ptr %active_vfs.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %active_vfs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool1.not.i = icmp eq i16 %6, 0
  br i1 %tobool1.not.i, label %bnxt_sriov_cfg.exit, label %land.rhs.i.do.body_crit_edge

land.rhs.i.do.body_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

bnxt_sriov_cfg.exit:                              ; preds = %land.rhs.i
  %sriov_cfg.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 125
  %7 = ptrtoint ptr %sriov_cfg.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sriov_cfg.i, align 4, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool2.i.not = icmp eq i8 %8, 0
  br i1 %tobool2.i.not, label %bnxt_sriov_cfg.exit.if.end3_crit_edge, label %bnxt_sriov_cfg.exit.do.body_crit_edge

bnxt_sriov_cfg.exit.do.body_crit_edge:            ; preds = %bnxt_sriov_cfg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

bnxt_sriov_cfg.exit.if.end3_crit_edge:            ; preds = %bnxt_sriov_cfg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end3

do.body:                                          ; preds = %bnxt_sriov_cfg.exit.do.body_crit_edge, %land.rhs.i.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_reload_down.__msg) #9
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.if.end_crit_edge, label %if.then2

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @bnxt_dl_reload_down.__msg, ptr %extack, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %do.body.if.end_crit_edge
  tail call void @rtnl_unlock() #9
  br label %cleanup

if.end3:                                          ; preds = %bnxt_sriov_cfg.exit.if.end3_crit_edge, %sw.bb.if.end3_crit_edge
  %dev = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %reg_state = getelementptr inbounds %struct.net_device, ptr %11, i32 0, i32 121
  %12 = ptrtoint ptr %reg_state to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %reg_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load)
  %cmp = icmp eq i8 %bf.load, 3
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rtnl_unlock() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  tail call void @bnxt_ulp_stop(ptr noundef %1) #9
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end5.if.end22_crit_edge, label %if.then8

if.end5.if.end22_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then8:                                         ; preds = %if.end5
  %call9 = tail call i32 @bnxt_close_nic(ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext true) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.if.end22_crit_edge, label %do.body12

if.then8.if.end22_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

do.body12:                                        ; preds = %if.then8
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_reload_down.__msg.35) #9
  %tobool14.not = icmp eq ptr %extack, null
  br i1 %tobool14.not, label %do.body12.if.end17_crit_edge, label %if.then15

do.body12.if.end17_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then15:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @bnxt_dl_reload_down.__msg.35, ptr %extack, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.body12.if.end17_crit_edge
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  tail call void @dev_close(ptr noundef %19) #9
  tail call void @rtnl_unlock() #9
  br label %cleanup

if.end22:                                         ; preds = %if.then8.if.end22_crit_edge, %if.end5.if.end22_crit_edge
  tail call void @bnxt_vf_reps_free(ptr noundef %1) #9
  %call23 = tail call i32 @bnxt_hwrm_func_drv_unrgtr(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end39, label %do.body26

do.body26:                                        ; preds = %if.end22
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_reload_down.__msg.36) #9
  %tobool28.not = icmp eq ptr %extack, null
  br i1 %tobool28.not, label %do.body26.if.end31_crit_edge, label %if.then29

do.body26.if.end31_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then29:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @bnxt_dl_reload_down.__msg.36, ptr %extack, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %do.body26.if.end31_crit_edge
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %state.i131 = getelementptr inbounds %struct.net_device, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %state.i131 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %state.i131, align 4
  %and1.i.i132 = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i132)
  %tobool.i133.not = icmp eq i32 %and1.i.i132, 0
  br i1 %tobool.i133.not, label %if.end31.if.end38_crit_edge, label %if.then36

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_close(ptr noundef %22) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end31.if.end38_crit_edge
  tail call void @rtnl_unlock() #9
  br label %cleanup

if.end39:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %call40 = tail call i32 @bnxt_cancel_reservations(ptr noundef %1, i1 noundef zeroext false) #9
  tail call void @bnxt_free_ctx_mem(ptr noundef %1) #9
  %ctx = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 121
  %25 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx, align 8
  tail call void @kfree(ptr noundef %26) #9
  %27 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %ctx, align 8
  br label %cleanup

sw.bb42:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %limit)
  %cmp43 = icmp eq i32 %limit, 1
  br i1 %cmp43, label %if.then44, label %if.end46

if.then44:                                        ; preds = %sw.bb42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %query_req.i) #9
  %28 = ptrtoint ptr %query_req.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %query_req.i, align 4, !annotation !196
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %patch_req.i) #9
  %29 = ptrtoint ptr %patch_req.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -1 to ptr), ptr %patch_req.i, align 4, !annotation !196
  %fw_cap.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 74
  %30 = ptrtoint ptr %fw_cap.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %fw_cap.i, align 8
  %neg.i = and i32 %31, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg.i)
  %tobool.not.not.i = icmp eq i32 %neg.i, 0
  br i1 %tobool.not.not.i, label %do.body.i, label %if.end3.i

do.body.i:                                        ; preds = %if.then44
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_livepatch_activate.__msg) #9
  %tobool1.not.i134 = icmp eq ptr %extack, null
  br i1 %tobool1.not.i134, label %do.body.i.bnxt_dl_livepatch_activate.exit_crit_edge, label %if.then2.i

do.body.i.bnxt_dl_livepatch_activate.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnxt_dl_livepatch_activate.exit

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @bnxt_dl_livepatch_activate.__msg, ptr %extack, align 4
  br label %bnxt_dl_livepatch_activate.exit

if.end3.i:                                        ; preds = %if.then44
  %call.i135 = call i32 @__hwrm_req_init(ptr noundef %1, ptr noundef nonnull %query_req.i, i16 noundef zeroext 190, i32 noundef 24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i135)
  %tobool4.not.i = icmp eq i32 %call.i135, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end3.i.bnxt_dl_livepatch_activate.exit_crit_edge

if.end3.i.bnxt_dl_livepatch_activate.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnxt_dl_livepatch_activate.exit

if.end6.i:                                        ; preds = %if.end3.i
  %33 = ptrtoint ptr %query_req.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %query_req.i, align 4
  %call7.i = call ptr @hwrm_req_hold(ptr noundef %1, ptr noundef %34) #9
  %call8.i = call i32 @__hwrm_req_init(ptr noundef %1, ptr noundef nonnull %patch_req.i, i16 noundef zeroext 191, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.then10.i

if.then10.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %query_req.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %query_req.i, align 4
  call void @hwrm_req_drop(ptr noundef %1, ptr noundef %36) #9
  br label %bnxt_dl_livepatch_activate.exit

if.end11.i:                                       ; preds = %if.end6.i
  %37 = ptrtoint ptr %patch_req.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %patch_req.i, align 4
  %loadtype.i = getelementptr inbounds %struct.hwrm_fw_livepatch_input, ptr %38, i32 0, i32 7
  %39 = ptrtoint ptr %loadtype.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %loadtype.i, align 2
  %call12.i = call ptr @hwrm_req_hold(ptr noundef %1, ptr noundef %38) #9
  %status_flags.i = getelementptr inbounds %struct.hwrm_fw_livepatch_query_output, ptr %call7.i, i32 0, i32 6
  %40 = ptrtoint ptr %query_req.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %query_req.i, align 4
  %fw_target.i = getelementptr inbounds %struct.hwrm_fw_livepatch_query_input, ptr %41, i32 0, i32 5
  %42 = ptrtoint ptr %fw_target.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %fw_target.i, align 8
  %call14.i = call i32 @hwrm_req_send(ptr noundef %1, ptr noundef %41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end25.i, label %if.end11.i.do.body17.i_crit_edge

if.end11.i.do.body17.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17.i

do.body17.i:                                      ; preds = %for.inc.i.do.body17.i_crit_edge, %if.end11.i.do.body17.i_crit_edge
  %call14.lcssa.i = phi i32 [ %call14.i, %if.end11.i.do.body17.i_crit_edge ], [ %call14.1.i, %for.inc.i.do.body17.i_crit_edge ]
  call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_livepatch_activate.__msg.40) #9
  %tobool19.not.i = icmp eq ptr %extack, null
  br i1 %tobool19.not.i, label %do.body17.i.if.end79.i_crit_edge, label %if.then20.i

do.body17.i.if.end79.i_crit_edge:                 ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i

if.then20.i:                                      ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #11
  %43 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @bnxt_dl_livepatch_activate.__msg.40, ptr %extack, align 4
  br label %if.end79.i

if.end25.i:                                       ; preds = %if.end11.i
  %44 = ptrtoint ptr %status_flags.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %status_flags.i, align 2
  %46 = lshr i16 %45, 8
  %trunc.i = trunc i16 %46 to i2
  %47 = zext i2 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values.83)
  switch i2 %trunc.i, label %if.then46.i [
    i2 0, label %if.end25.i.for.inc.i_crit_edge
    i2 -1, label %if.then37.i
    i2 1, label %if.end25.i.if.end49.i_crit_edge
  ]

if.end25.i.if.end49.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.end25.i.for.inc.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then37.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then46.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then46.i, %if.end25.i.if.end49.i_crit_edge
  %.sink.i = phi i8 [ 2, %if.then46.i ], [ 1, %if.end25.i.if.end49.i_crit_edge ]
  %48 = ptrtoint ptr %patch_req.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.sink145.i = load ptr, ptr %patch_req.i, align 4
  %opcode47.i = getelementptr inbounds %struct.hwrm_fw_livepatch_input, ptr %.sink145.i, i32 0, i32 5
  %49 = ptrtoint ptr %opcode47.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %.sink.i, ptr %opcode47.i, align 8
  %fw_target50.i = getelementptr inbounds %struct.hwrm_fw_livepatch_input, ptr %.sink145.i, i32 0, i32 6
  %50 = ptrtoint ptr %fw_target50.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 1, ptr %fw_target50.i, align 1
  %call51.i = call i32 @hwrm_req_send(ptr noundef %1, ptr noundef %.sink145.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end49.i.for.inc.i_crit_edge, label %if.end49.i.if.then53.i_crit_edge

if.end49.i.if.then53.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

if.end49.i.for.inc.i_crit_edge:                   ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then53.i:                                      ; preds = %if.end49.1.i.if.then53.i_crit_edge, %if.end49.i.if.then53.i_crit_edge
  %call51.lcssa.i = phi i32 [ %call51.i, %if.end49.i.if.then53.i_crit_edge ], [ %call51.1.i, %if.end49.1.i.if.then53.i_crit_edge ]
  call fastcc void @bnxt_dl_livepatch_report_err(ptr noundef %1, ptr noundef %extack, ptr noundef %call12.i) #9
  br label %if.end79.i

for.inc.i:                                        ; preds = %if.end49.i.for.inc.i_crit_edge, %if.then37.i, %if.end25.i.for.inc.i_crit_edge
  %activated.1.off0.i = phi i1 [ false, %if.end25.i.for.inc.i_crit_edge ], [ true, %if.then37.i ], [ false, %if.end49.i.for.inc.i_crit_edge ]
  %tobool57.not142.i = phi i1 [ true, %if.end25.i.for.inc.i_crit_edge ], [ true, %if.then37.i ], [ false, %if.end49.i.for.inc.i_crit_edge ]
  %51 = ptrtoint ptr %query_req.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %query_req.i, align 4
  %fw_target.1.i = getelementptr inbounds %struct.hwrm_fw_livepatch_query_input, ptr %52, i32 0, i32 5
  %53 = ptrtoint ptr %fw_target.1.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 2, ptr %fw_target.1.i, align 8
  %call14.1.i = call i32 @hwrm_req_send(ptr noundef %1, ptr noundef %52) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.1.i)
  %tobool15.not.1.i = icmp eq i32 %call14.1.i, 0
  br i1 %tobool15.not.1.i, label %if.end25.1.i, label %for.inc.i.do.body17.i_crit_edge

for.inc.i.do.body17.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body17.i

if.end25.1.i:                                     ; preds = %for.inc.i
  %54 = ptrtoint ptr %status_flags.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %status_flags.i, align 2
  %56 = lshr i16 %55, 8
  %trunc.1.i = trunc i16 %56 to i2
  %57 = zext i2 %trunc.1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.84)
  switch i2 %trunc.1.i, label %if.then46.1.i [
    i2 0, label %for.inc.1.i
    i2 -1, label %for.inc.1.thread139.i
    i2 1, label %if.end25.1.i.if.end49.1.i_crit_edge
  ]

if.end25.1.i.if.end49.1.i_crit_edge:              ; preds = %if.end25.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.1.i

if.then46.1.i:                                    ; preds = %if.end25.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end49.1.i

if.end49.1.i:                                     ; preds = %if.then46.1.i, %if.end25.1.i.if.end49.1.i_crit_edge
  %.sink146.i = phi i8 [ 2, %if.then46.1.i ], [ 1, %if.end25.1.i.if.end49.1.i_crit_edge ]
  %58 = ptrtoint ptr %patch_req.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %.sink147.i = load ptr, ptr %patch_req.i, align 4
  %opcode47.1.i = getelementptr inbounds %struct.hwrm_fw_livepatch_input, ptr %.sink147.i, i32 0, i32 5
  %59 = ptrtoint ptr %opcode47.1.i to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 %.sink146.i, ptr %opcode47.1.i, align 8
  %fw_target50.1.i = getelementptr inbounds %struct.hwrm_fw_livepatch_input, ptr %.sink147.i, i32 0, i32 6
  %60 = ptrtoint ptr %fw_target50.1.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 2, ptr %fw_target50.1.i, align 1
  %call51.1.i = call i32 @hwrm_req_send(ptr noundef %1, ptr noundef %.sink147.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.1.i)
  %tobool52.not.1.i = icmp eq i32 %call51.1.i, 0
  br i1 %tobool52.not.1.i, label %if.end49.1.i.if.end79.i_crit_edge, label %if.end49.1.i.if.then53.i_crit_edge

if.end49.1.i.if.then53.i_crit_edge:               ; preds = %if.end49.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53.i

if.end49.1.i.if.end79.i_crit_edge:                ; preds = %if.end49.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i

for.inc.1.i:                                      ; preds = %if.end25.1.i
  br i1 %tobool57.not142.i, label %if.then58.i, label %for.inc.1.i.if.end79.i_crit_edge

for.inc.1.i.if.end79.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i

for.inc.1.thread139.i:                            ; preds = %if.end25.1.i
  br i1 %tobool57.not142.i, label %for.inc.1.thread139.i.do.body61.i_crit_edge, label %for.inc.1.thread139.i.if.end79.i_crit_edge

for.inc.1.thread139.i.if.end79.i_crit_edge:       ; preds = %for.inc.1.thread139.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i

for.inc.1.thread139.i.do.body61.i_crit_edge:      ; preds = %for.inc.1.thread139.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body61.i

if.then58.i:                                      ; preds = %for.inc.1.i
  br i1 %activated.1.off0.i, label %if.then58.i.do.body61.i_crit_edge, label %do.body70.i

if.then58.i.do.body61.i_crit_edge:                ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body61.i

do.body61.i:                                      ; preds = %if.then58.i.do.body61.i_crit_edge, %for.inc.1.thread139.i.do.body61.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_livepatch_activate.__msg.41) #9
  %tobool63.not.i = icmp eq ptr %extack, null
  br i1 %tobool63.not.i, label %do.body61.i.if.end79.i_crit_edge, label %if.then64.i

do.body61.i.if.end79.i_crit_edge:                 ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i

if.then64.i:                                      ; preds = %do.body61.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @bnxt_dl_livepatch_activate.__msg.41, ptr %extack, align 4
  br label %if.end79.i

do.body70.i:                                      ; preds = %if.then58.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_livepatch_activate.__msg.42) #9
  %tobool72.not.i = icmp eq ptr %extack, null
  br i1 %tobool72.not.i, label %do.body70.i.if.end79.i_crit_edge, label %if.then73.i

do.body70.i.if.end79.i_crit_edge:                 ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79.i

if.then73.i:                                      ; preds = %do.body70.i
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @bnxt_dl_livepatch_activate.__msg.42, ptr %extack, align 4
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then73.i, %do.body70.i.if.end79.i_crit_edge, %if.then64.i, %do.body61.i.if.end79.i_crit_edge, %for.inc.1.thread139.i.if.end79.i_crit_edge, %for.inc.1.i.if.end79.i_crit_edge, %if.end49.1.i.if.end79.i_crit_edge, %if.then53.i, %if.then20.i, %do.body17.i.if.end79.i_crit_edge
  %rc.3.i = phi i32 [ 0, %for.inc.1.i.if.end79.i_crit_edge ], [ -17, %if.then64.i ], [ -17, %do.body61.i.if.end79.i_crit_edge ], [ -2, %if.then73.i ], [ -2, %do.body70.i.if.end79.i_crit_edge ], [ %call14.lcssa.i, %do.body17.i.if.end79.i_crit_edge ], [ %call14.lcssa.i, %if.then20.i ], [ %call51.lcssa.i, %if.then53.i ], [ 0, %for.inc.1.thread139.i.if.end79.i_crit_edge ], [ 0, %if.end49.1.i.if.end79.i_crit_edge ]
  %63 = ptrtoint ptr %query_req.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %query_req.i, align 4
  call void @hwrm_req_drop(ptr noundef %1, ptr noundef %64) #9
  %65 = ptrtoint ptr %patch_req.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %patch_req.i, align 4
  call void @hwrm_req_drop(ptr noundef %1, ptr noundef %66) #9
  br label %bnxt_dl_livepatch_activate.exit

bnxt_dl_livepatch_activate.exit:                  ; preds = %if.end79.i, %if.then10.i, %if.end3.i.bnxt_dl_livepatch_activate.exit_crit_edge, %if.then2.i, %do.body.i.bnxt_dl_livepatch_activate.exit_crit_edge
  %retval.0.i = phi i32 [ %call8.i, %if.then10.i ], [ %rc.3.i, %if.end79.i ], [ -95, %if.then2.i ], [ -95, %do.body.i.bnxt_dl_livepatch_activate.exit_crit_edge ], [ %call.i135, %if.end3.i.bnxt_dl_livepatch_activate.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %patch_req.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %query_req.i) #9
  br label %cleanup

if.end46:                                         ; preds = %sw.bb42
  %fw_cap = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 74
  %67 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %fw_cap, align 8
  %neg = and i32 %68, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg)
  %tobool47.not.not = icmp eq i32 %neg, 0
  br i1 %tobool47.not.not, label %do.body49, label %if.end57

do.body49:                                        ; preds = %if.end46
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_reload_down.__msg.37) #9
  %tobool51.not = icmp eq ptr %extack, null
  br i1 %tobool51.not, label %do.body49.cleanup_crit_edge, label %if.then52

do.body49.cleanup_crit_edge:                      ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then52:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @bnxt_dl_reload_down.__msg.37, ptr %extack, align 4
  br label %cleanup

if.end57:                                         ; preds = %if.end46
  %call58 = tail call zeroext i1 @bnxt_hwrm_reset_permitted(ptr noundef %1) #9
  br i1 %call58, label %if.end68, label %do.body60

do.body60:                                        ; preds = %if.end57
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_reload_down.__msg.38) #9
  %tobool62.not = icmp eq ptr %extack, null
  br i1 %tobool62.not, label %do.body60.cleanup_crit_edge, label %if.then63

do.body60.cleanup_crit_edge:                      ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then63:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @bnxt_dl_reload_down.__msg.38, ptr %extack, align 4
  br label %cleanup

if.end68:                                         ; preds = %if.end57
  tail call void @rtnl_lock() #9
  %dev69 = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 8
  %71 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev69, align 4
  %reg_state70 = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 121
  %73 = ptrtoint ptr %reg_state70 to i32
  call void @__asan_load1_noabort(i32 %73)
  %bf.load71 = load i8, ptr %reg_state70, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.load71)
  %cmp73 = icmp eq i8 %bf.load71, 3
  br i1 %cmp73, label %if.then74, label %if.end75

if.then74:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @rtnl_unlock() #9
  br label %cleanup

if.end75:                                         ; preds = %if.end68
  %state.i136 = getelementptr inbounds %struct.net_device, ptr %72, i32 0, i32 6
  %74 = ptrtoint ptr %state.i136 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %state.i136, align 4
  %and1.i.i137 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i137)
  %tobool.i138.not = icmp eq i32 %and1.i.i137, 0
  br i1 %tobool.i138.not, label %if.end75.if.end79_crit_edge, label %if.then78

if.end75.if.end79_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end79

if.then78:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %state = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 64
  tail call void @_set_bit(i32 noundef 11, ptr noundef %state) #9
  br label %if.end79

if.end79:                                         ; preds = %if.then78, %if.end75.if.end79_crit_edge
  %76 = ptrtoint ptr %dev69 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev69, align 4
  %call81 = tail call i32 @bnxt_hwrm_firmware_reset(ptr noundef %77, i8 noundef zeroext 6, i8 noundef zeroext 1, i8 noundef zeroext 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end79.cleanup_crit_edge, label %do.body84

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body84:                                        ; preds = %if.end79
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_reload_down.__msg.39) #9
  %tobool86.not = icmp eq ptr %extack, null
  br i1 %tobool86.not, label %do.body84.if.end89_crit_edge, label %if.then87

do.body84.if.end89_crit_edge:                     ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

if.then87:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #11
  %78 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr @bnxt_dl_reload_down.__msg.39, ptr %extack, align 4
  br label %if.end89

if.end89:                                         ; preds = %if.then87, %do.body84.if.end89_crit_edge
  %state92 = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 64
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %state92) #9
  tail call void @rtnl_unlock() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end89, %if.end79.cleanup_crit_edge, %if.then74, %if.then63, %do.body60.cleanup_crit_edge, %if.then52, %do.body49.cleanup_crit_edge, %bnxt_dl_livepatch_activate.exit, %if.end39, %if.end38, %if.end17, %if.then4, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %bnxt_dl_livepatch_activate.exit ], [ -19, %if.then74 ], [ -95, %if.end ], [ -19, %if.then4 ], [ -95, %if.then52 ], [ -95, %do.body49.cleanup_crit_edge ], [ -1, %if.then63 ], [ -1, %do.body60.cleanup_crit_edge ], [ %call81, %if.end89 ], [ 0, %if.end79.cleanup_crit_edge ], [ %call9, %if.end17 ], [ %call23, %if.end38 ], [ 0, %if.end39 ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_dl_reload_up(ptr noundef %dl, i32 noundef %action, i32 noundef %limit, ptr nocapture noundef %actions_performed, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #9
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %2 = ptrtoint ptr %actions_performed to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %actions_performed, align 4
  %3 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %action, label %entry.cleanup66_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb7
  ]

entry.cleanup66_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup66

sw.bb:                                            ; preds = %entry
  %call1 = tail call i32 @bnxt_fw_init_one(ptr noundef %1) #9
  %call2 = tail call i32 @bnxt_vf_reps_alloc(ptr noundef %1) #9
  %dev = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bnxt_ulp_start(ptr noundef %1, i32 noundef 0) #9
  br label %if.then5

if.end:                                           ; preds = %sw.bb
  %call4 = tail call i32 @bnxt_open_nic(ptr noundef %1, i1 noundef zeroext true, i1 noundef zeroext true) #9
  tail call void @bnxt_ulp_start(ptr noundef %1, i32 noundef %call4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.if.then5_crit_edge, label %if.end.if.else_crit_edge

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then5

if.then5:                                         ; preds = %if.end.if.then5_crit_edge, %if.end.thread
  tail call void @bnxt_reenable_sriov(ptr noundef %1) #9
  tail call void @bnxt_ptp_reapply_pps(ptr noundef %1) #9
  br label %if.then53

sw.bb7:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %limit)
  %cmp = icmp eq i32 %limit, 1
  br i1 %cmp, label %sw.bb7.if.then53_crit_edge, label %if.end9

sw.bb7.if.then53_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then53

if.end9:                                          ; preds = %sw.bb7
  %fw_cap = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 74
  %9 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fw_cap, align 8
  %and = and i32 %10, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.then11

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %fw_health = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 118
  %11 = ptrtoint ptr %fw_health to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw_health, align 4
  %normal_func_wait_dsecs = getelementptr inbounds %struct.bnxt_fw_health, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %normal_func_wait_dsecs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %normal_func_wait_dsecs, align 4
  %mul = mul i32 %14, 100
  %div = udiv i32 %mul, 10
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end9.if.end13_crit_edge
  %div.pn = phi i32 [ %div, %if.then11 ], [ 600, %if.end9.if.end13_crit_edge ]
  %timeout.0 = add i32 %div.pn, %8
  %dev14 = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 8
  %15 = ptrtoint ptr %dev14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev14, align 4
  %state.i102 = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %state.i102 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i102, align 4
  %and1.i.i103 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i103)
  %tobool.i104.not = icmp eq i32 %and1.i.i103, 0
  br i1 %tobool.i104.not, label %do.body, label %if.end13.if.end20_crit_edge

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

do.body:                                          ; preds = %if.end13
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_reload_up.__msg) #9
  %tobool17.not = icmp eq ptr %extack, null
  br i1 %tobool17.not, label %do.body.if.end20_crit_edge, label %if.then18

do.body.if.end20_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @bnxt_dl_reload_up.__msg, ptr %extack, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %do.body.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  tail call void @rtnl_unlock() #9
  %state = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 64
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state, align 4
  %22 = and i32 %21, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool22.not129 = icmp eq i32 %22, 0
  br i1 %tobool22.not129, label %if.end20.sw.epilog.thread123_crit_edge, label %if.end20.while.body_crit_edge

if.end20.while.body_crit_edge:                    ; preds = %if.end20
  br label %while.body

if.end20.sw.epilog.thread123_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread123

while.body:                                       ; preds = %if.end46.while.body_crit_edge, %if.end20.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %timeout.0, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp23 = icmp slt i32 %sub, 0
  br i1 %cmp23, label %do.body25, label %if.end33

do.body25:                                        ; preds = %while.body
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_reload_up.__msg.53) #9
  %tobool27.not = icmp eq ptr %extack, null
  br i1 %tobool27.not, label %do.body25.sw.epilog_crit_edge, label %do.body25.sw.epilog.sink.split_crit_edge

do.body25.sw.epilog.sink.split_crit_edge:         ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

do.body25.sw.epilog_crit_edge:                    ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end33:                                         ; preds = %while.body
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %state, align 4
  %26 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool36.not = icmp eq i32 %26, 0
  br i1 %tobool36.not, label %if.end46, label %do.body38

do.body38:                                        ; preds = %if.end33
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_reload_up.__msg.54) #9
  %tobool40.not = icmp eq ptr %extack, null
  br i1 %tobool40.not, label %do.body38.sw.epilog_crit_edge, label %do.body38.sw.epilog.sink.split_crit_edge

do.body38.sw.epilog.sink.split_crit_edge:         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

do.body38.sw.epilog_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end46:                                         ; preds = %if.end33
  tail call void @msleep(i32 noundef 50) #9
  %27 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %state, align 4
  %29 = and i32 %28, 2048
  %tobool22.not = icmp eq i32 %29, 0
  br i1 %tobool22.not, label %if.end46.sw.epilog.thread123_crit_edge, label %if.end46.while.body_crit_edge

if.end46.while.body_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end46.sw.epilog.thread123_crit_edge:           ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.thread123

sw.epilog.thread123:                              ; preds = %if.end46.sw.epilog.thread123_crit_edge, %if.end20.sw.epilog.thread123_crit_edge
  tail call void @rtnl_lock() #9
  %30 = ptrtoint ptr %actions_performed to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %actions_performed, align 4
  %or = or i32 %31, 2
  store i32 %or, ptr %actions_performed, align 4
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %state) #9
  br label %if.then53

sw.epilog.sink.split:                             ; preds = %do.body38.sw.epilog.sink.split_crit_edge, %do.body25.sw.epilog.sink.split_crit_edge
  %bnxt_dl_reload_up.__msg.54.sink = phi ptr [ @bnxt_dl_reload_up.__msg.53, %do.body25.sw.epilog.sink.split_crit_edge ], [ @bnxt_dl_reload_up.__msg.54, %do.body38.sw.epilog.sink.split_crit_edge ]
  %rc.1.ph.ph = phi i32 [ -110, %do.body25.sw.epilog.sink.split_crit_edge ], [ -19, %do.body38.sw.epilog.sink.split_crit_edge ]
  %32 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %bnxt_dl_reload_up.__msg.54.sink, ptr %extack, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.body38.sw.epilog_crit_edge, %do.body25.sw.epilog_crit_edge
  %rc.1.ph = phi i32 [ -19, %do.body38.sw.epilog_crit_edge ], [ -110, %do.body25.sw.epilog_crit_edge ], [ %rc.1.ph.ph, %sw.epilog.sink.split ]
  tail call void @rtnl_lock() #9
  tail call void @_clear_bit(i32 noundef 11, ptr noundef %state) #9
  br label %if.else

if.then53:                                        ; preds = %sw.epilog.thread123, %sw.bb7.if.then53_crit_edge, %if.then5
  tail call void @bnxt_print_device_info(ptr noundef %1) #9
  %dev54 = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev54, align 4
  %state.i105 = getelementptr inbounds %struct.net_device, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %state.i105 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %state.i105, align 4
  %and1.i.i106 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i106)
  %tobool.i107.not = icmp eq i32 %and1.i.i106, 0
  br i1 %tobool.i107.not, label %if.then53.if.end58_crit_edge, label %if.then56

if.then53.if.end58_crit_edge:                     ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.then56:                                        ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #11
  %link_lock = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 133
  tail call void @mutex_lock_nested(ptr noundef %link_lock, i32 noundef 0) #9
  tail call void @bnxt_report_link(ptr noundef %1) #9
  tail call void @mutex_unlock(ptr noundef %link_lock) #9
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.then53.if.end58_crit_edge
  %shl = shl nuw i32 1, %action
  %37 = ptrtoint ptr %actions_performed to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %actions_performed, align 4
  %or59 = or i32 %38, %shl
  store i32 %or59, ptr %actions_performed, align 4
  br label %if.end65

if.else:                                          ; preds = %sw.epilog, %if.end.if.else_crit_edge
  %rc.3122 = phi i32 [ %rc.1.ph, %sw.epilog ], [ %call4, %if.end.if.else_crit_edge ]
  %dev60 = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev60, align 4
  %state.i108 = getelementptr inbounds %struct.net_device, ptr %40, i32 0, i32 6
  %41 = ptrtoint ptr %state.i108 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %state.i108, align 4
  %and1.i.i109 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i109)
  %tobool.i110.not = icmp eq i32 %and1.i.i109, 0
  br i1 %tobool.i110.not, label %if.else.if.end65_crit_edge, label %if.then62

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dev_close(ptr noundef %40) #9
  br label %if.end65

if.end65:                                         ; preds = %if.then62, %if.else.if.end65_crit_edge, %if.end58
  %rc.3117 = phi i32 [ %rc.3122, %if.else.if.end65_crit_edge ], [ %rc.3122, %if.then62 ], [ 0, %if.end58 ]
  tail call void @rtnl_unlock() #9
  br label %cleanup66

cleanup66:                                        ; preds = %if.end65, %entry.cleanup66_crit_edge
  %retval.0 = phi i32 [ %rc.3117, %if.end65 ], [ -95, %entry.cleanup66_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_dl_eswitch_mode_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_dl_eswitch_mode_set(ptr noundef, i16 noundef zeroext, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_dl_info_get(ptr noundef %dl, ptr noundef %req, ptr nocapture noundef readnone %extack) #0 align 64 {
entry:
  %nvm_dev_info = alloca %struct.hwrm_nvm_get_dev_info_output, align 4
  %mgmt_ver = alloca [32 x i8], align 1
  %roce_ver = alloca [32 x i8], align 1
  %ncsi_ver = alloca [32 x i8], align 1
  %buf = alloca [32 x i8], align 1
  %ver = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %nvm_dev_info) #9
  %0 = call ptr @memset(ptr %nvm_dev_info, i32 255, i32 80)
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #9
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %mgmt_ver) #9
  %3 = call ptr @memset(ptr %mgmt_ver, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %roce_ver) #9
  %4 = call ptr @memset(ptr %roce_ver, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %ncsi_ver) #9
  %5 = call ptr @memset(ptr %ncsi_ver, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #9
  %6 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ver) #9
  %7 = ptrtoint ptr %ver to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ver, align 4
  %call1 = tail call i32 @devlink_info_driver_name_put(ptr noundef %req, ptr noundef nonnull @.str.55) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 11
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 8
  %10 = and i32 %9, 2097154
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %10)
  %.not = icmp eq i32 %10, 2097152
  br i1 %.not, label %if.then6, label %if.end.if.end34_crit_edge

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then6:                                         ; preds = %if.end
  %dsn = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 153
  %arrayidx = getelementptr %struct.bnxt, ptr %2, i32 0, i32 153, i32 7
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %12 to i32
  %arrayidx8 = getelementptr %struct.bnxt, ptr %2, i32 0, i32 153, i32 6
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx8, align 2
  %conv9 = zext i8 %14 to i32
  %arrayidx11 = getelementptr %struct.bnxt, ptr %2, i32 0, i32 153, i32 5
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %16 to i32
  %arrayidx14 = getelementptr %struct.bnxt, ptr %2, i32 0, i32 153, i32 4
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx14, align 4
  %conv15 = zext i8 %18 to i32
  %arrayidx17 = getelementptr %struct.bnxt, ptr %2, i32 0, i32 153, i32 3
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %20 to i32
  %arrayidx20 = getelementptr %struct.bnxt, ptr %2, i32 0, i32 153, i32 2
  %21 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx20, align 2
  %conv21 = zext i8 %22 to i32
  %arrayidx23 = getelementptr %struct.bnxt, ptr %2, i32 0, i32 153, i32 1
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx23, align 1
  %conv24 = zext i8 %24 to i32
  %25 = ptrtoint ptr %dsn to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %dsn, align 8
  %conv27 = zext i8 %26 to i32
  %call28 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.56, i32 noundef %conv, i32 noundef %conv9, i32 noundef %conv12, i32 noundef %conv15, i32 noundef %conv18, i32 noundef %conv21, i32 noundef %conv24, i32 noundef %conv27)
  %call30 = call i32 @devlink_info_serial_number_put(ptr noundef %req, ptr noundef nonnull %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then6.if.end34_crit_edge, label %if.then6.cleanup_crit_edge

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6.if.end34_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.end34:                                         ; preds = %if.then6.if.end34_crit_edge, %if.end.if.end34_crit_edge
  %board_serialno = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 7
  %27 = ptrtoint ptr %board_serialno to i32
  call void @__asan_load1_noabort(i32 %27)
  %char0 = load i8, ptr %board_serialno, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool37.not = icmp eq i8 %char0, 0
  br i1 %tobool37.not, label %if.end34.if.end45_crit_edge, label %if.then38

if.end34.if.end45_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then38:                                        ; preds = %if.end34
  %call41 = call i32 @devlink_info_board_serial_number_put(ptr noundef %req, ptr noundef %board_serialno) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then38.if.end45_crit_edge, label %if.then38.cleanup_crit_edge

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then38.if.end45_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.end45:                                         ; preds = %if.then38.if.end45_crit_edge, %if.end34.if.end45_crit_edge
  %board_partno = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 6
  %28 = ptrtoint ptr %board_partno to i32
  call void @__asan_load1_noabort(i32 %28)
  %char0.i = load i8, ptr %board_partno, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i)
  %tobool.not.i = icmp eq i8 %char0.i, 0
  br i1 %tobool.not.i, label %if.end45.if.end50_crit_edge, label %if.end.i

if.end45.if.end50_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.end.i:                                         ; preds = %if.end45
  %call8.i = call i32 @devlink_info_version_fixed_put(ptr noundef %req, ptr noundef nonnull @.str.57, ptr noundef %board_partno) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool48.not = icmp eq i32 %call8.i, 0
  br i1 %tobool48.not, label %if.end.i.if.end50_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.if.end50_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.end50:                                         ; preds = %if.end.i.if.end50_crit_edge, %if.end45.if.end50_crit_edge
  %chip_num = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 4
  %29 = ptrtoint ptr %chip_num to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %chip_num, align 8
  %conv52 = zext i16 %30 to i32
  %call53 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.58, i32 noundef %conv52)
  %31 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %31)
  %char0.i365 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i365)
  %tobool.not.i366 = icmp eq i8 %char0.i365, 0
  br i1 %tobool.not.i366, label %if.end50.if.end58_crit_edge, label %if.end.i370

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.end.i370:                                      ; preds = %if.end50
  %call8.i378 = call i32 @devlink_info_version_fixed_put(ptr noundef %req, ptr noundef nonnull @.str.59, ptr noundef nonnull %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i378)
  %tobool56.not = icmp eq i32 %call8.i378, 0
  br i1 %tobool56.not, label %if.end.i370.if.end58_crit_edge, label %if.end.i370.cleanup_crit_edge

if.end.i370.cleanup_crit_edge:                    ; preds = %if.end.i370
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i370.if.end58_crit_edge:                   ; preds = %if.end.i370
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end58

if.end58:                                         ; preds = %if.end.i370.if.end58_crit_edge, %if.end50.if.end58_crit_edge
  %chip_rev = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 31
  %32 = ptrtoint ptr %chip_rev to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %chip_rev, align 2
  %conv61 = zext i8 %33 to i32
  %add = add nuw nsw i32 %conv61, 65
  %chip_metal = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 32
  %34 = ptrtoint ptr %chip_metal to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %chip_metal, align 1
  %conv62 = zext i8 %35 to i32
  %call63 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.60, i32 noundef %add, i32 noundef %conv62)
  %36 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %36)
  %char0.i381 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0.i381)
  %tobool.not.i382 = icmp eq i8 %char0.i381, 0
  br i1 %tobool.not.i382, label %if.end58.if.end68_crit_edge, label %if.end.i386

if.end58.if.end68_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.end.i386:                                      ; preds = %if.end58
  %call8.i394 = call i32 @devlink_info_version_fixed_put(ptr noundef %req, ptr noundef nonnull @.str.61, ptr noundef nonnull %buf) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i394)
  %tobool66.not = icmp eq i32 %call8.i394, 0
  br i1 %tobool66.not, label %if.end.i386.if.end68_crit_edge, label %if.end.i386.cleanup_crit_edge

if.end.i386.cleanup_crit_edge:                    ; preds = %if.end.i386
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i386.if.end68_crit_edge:                   ; preds = %if.end.i386
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.end68:                                         ; preds = %if.end.i386.if.end68_crit_edge, %if.end58.if.end68_crit_edge
  %nvm_cfg_ver = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 98
  %call70 = call fastcc i32 @bnxt_dl_info_put(ptr noundef %2, ptr noundef %req, i32 noundef 1, ptr noundef nonnull @.str.62, ptr noundef %nvm_cfg_ver)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end73:                                         ; preds = %if.end68
  %37 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %buf, align 1
  %active_pkg_name = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 28
  %call77 = call ptr @strncat(ptr noundef nonnull %buf, ptr noundef %active_pkg_name, i32 noundef 16)
  %call79 = call fastcc i32 @bnxt_dl_info_put(ptr noundef %2, ptr noundef %req, i32 noundef 1, ptr noundef nonnull @.str.4, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end73.cleanup_crit_edge

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end82:                                         ; preds = %if.end73
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 8
  %and84 = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %land.lhs.true86, label %if.end82.if.end101_crit_edge

if.end82.if.end101_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

land.lhs.true86:                                  ; preds = %if.end82
  %call87 = call fastcc i32 @bnxt_hwrm_get_nvm_cfg_ver(ptr noundef %2, ptr noundef nonnull %ver)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.then89, label %land.lhs.true86.if.end101_crit_edge

land.lhs.true86.if.end101_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.then89:                                        ; preds = %land.lhs.true86
  %40 = ptrtoint ptr %ver to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ver, align 4
  %shr = lshr i32 %41, 16
  %and91 = and i32 %shr, 255
  %shr92 = lshr i32 %41, 8
  %and93 = and i32 %shr92, 255
  %and94 = and i32 %41, 255
  %call95 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %buf, ptr noundef nonnull @.str.63, i32 noundef %and91, i32 noundef %and93, i32 noundef %and94)
  %call97 = call fastcc i32 @bnxt_dl_info_put(ptr noundef %2, ptr noundef %req, i32 noundef 2, ptr noundef nonnull @.str.62, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then89.if.end101_crit_edge, label %if.then89.cleanup_crit_edge

if.then89.cleanup_crit_edge:                      ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then89.if.end101_crit_edge:                    ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end101

if.end101:                                        ; preds = %if.then89.if.end101_crit_edge, %land.lhs.true86.if.end101_crit_edge, %if.end82.if.end101_crit_edge
  %flags102 = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 38
  %42 = ptrtoint ptr %flags102 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %flags102, align 4
  %44 = and i8 %43, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool105.not = icmp eq i8 %44, 0
  br i1 %tobool105.not, label %if.else, label %if.then106

if.then106:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  %hwrm_fw_major = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 45
  %45 = ptrtoint ptr %hwrm_fw_major to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %hwrm_fw_major, align 4
  %conv108 = zext i16 %46 to i32
  %hwrm_fw_minor = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 46
  %47 = ptrtoint ptr %hwrm_fw_minor to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %hwrm_fw_minor, align 2
  %conv109 = zext i16 %48 to i32
  %hwrm_fw_build = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 47
  %49 = ptrtoint ptr %hwrm_fw_build to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %hwrm_fw_build, align 4
  %conv110 = zext i16 %50 to i32
  %hwrm_fw_patch = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 48
  %51 = ptrtoint ptr %hwrm_fw_patch to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %hwrm_fw_patch, align 2
  %conv111 = zext i16 %52 to i32
  %call112 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mgmt_ver, i32 noundef 32, ptr noundef nonnull @.str.64, i32 noundef %conv108, i32 noundef %conv109, i32 noundef %conv110, i32 noundef %conv111)
  %mgmt_fw_major = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 49
  %53 = ptrtoint ptr %mgmt_fw_major to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %mgmt_fw_major, align 4
  %conv114 = zext i16 %54 to i32
  %mgmt_fw_minor = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 50
  %55 = ptrtoint ptr %mgmt_fw_minor to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %mgmt_fw_minor, align 2
  %conv115 = zext i16 %56 to i32
  %mgmt_fw_build = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 51
  %57 = ptrtoint ptr %mgmt_fw_build to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %mgmt_fw_build, align 4
  %conv116 = zext i16 %58 to i32
  %mgmt_fw_patch = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 52
  %59 = ptrtoint ptr %mgmt_fw_patch to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %mgmt_fw_patch, align 2
  %conv117 = zext i16 %60 to i32
  %call118 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ncsi_ver, i32 noundef 32, ptr noundef nonnull @.str.64, i32 noundef %conv114, i32 noundef %conv115, i32 noundef %conv116, i32 noundef %conv117)
  %roce_fw_major = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 57
  %61 = ptrtoint ptr %roce_fw_major to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %roce_fw_major, align 4
  %conv120 = zext i16 %62 to i32
  %roce_fw_minor = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 58
  %63 = ptrtoint ptr %roce_fw_minor to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %roce_fw_minor, align 2
  %conv121 = zext i16 %64 to i32
  %roce_fw_build = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 59
  %65 = ptrtoint ptr %roce_fw_build to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %roce_fw_build, align 4
  %conv122 = zext i16 %66 to i32
  %roce_fw_patch = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 60
  %67 = ptrtoint ptr %roce_fw_patch to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %roce_fw_patch, align 2
  %conv123 = zext i16 %68 to i32
  %call124 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %roce_ver, i32 noundef 32, ptr noundef nonnull @.str.64, i32 noundef %conv120, i32 noundef %conv121, i32 noundef %conv122, i32 noundef %conv123)
  br label %if.end143

if.else:                                          ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  %hwrm_fw_maj_8b = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 8
  %69 = ptrtoint ptr %hwrm_fw_maj_8b to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %hwrm_fw_maj_8b, align 4
  %conv126 = zext i8 %70 to i32
  %hwrm_fw_min_8b = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 9
  %71 = ptrtoint ptr %hwrm_fw_min_8b to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %hwrm_fw_min_8b, align 1
  %conv127 = zext i8 %72 to i32
  %hwrm_fw_bld_8b = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 10
  %73 = ptrtoint ptr %hwrm_fw_bld_8b to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %hwrm_fw_bld_8b, align 2
  %conv128 = zext i8 %74 to i32
  %hwrm_fw_rsvd_8b = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 11
  %75 = ptrtoint ptr %hwrm_fw_rsvd_8b to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %hwrm_fw_rsvd_8b, align 1
  %conv129 = zext i8 %76 to i32
  %call130 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mgmt_ver, i32 noundef 32, ptr noundef nonnull @.str.64, i32 noundef %conv126, i32 noundef %conv127, i32 noundef %conv128, i32 noundef %conv129)
  %mgmt_fw_maj_8b = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 12
  %77 = ptrtoint ptr %mgmt_fw_maj_8b to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %mgmt_fw_maj_8b, align 4
  %conv132 = zext i8 %78 to i32
  %mgmt_fw_min_8b = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 13
  %79 = ptrtoint ptr %mgmt_fw_min_8b to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %mgmt_fw_min_8b, align 1
  %conv133 = zext i8 %80 to i32
  %mgmt_fw_bld_8b = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 14
  %81 = ptrtoint ptr %mgmt_fw_bld_8b to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %mgmt_fw_bld_8b, align 2
  %conv134 = zext i8 %82 to i32
  %mgmt_fw_rsvd_8b = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 15
  %83 = ptrtoint ptr %mgmt_fw_rsvd_8b to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %mgmt_fw_rsvd_8b, align 1
  %conv135 = zext i8 %84 to i32
  %call136 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ncsi_ver, i32 noundef 32, ptr noundef nonnull @.str.64, i32 noundef %conv132, i32 noundef %conv133, i32 noundef %conv134, i32 noundef %conv135)
  %roce_fw_maj_8b = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 21
  %85 = ptrtoint ptr %roce_fw_maj_8b to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %roce_fw_maj_8b, align 4
  %conv138 = zext i8 %86 to i32
  %roce_fw_min_8b = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 22
  %87 = ptrtoint ptr %roce_fw_min_8b to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %roce_fw_min_8b, align 1
  %conv139 = zext i8 %88 to i32
  %roce_fw_bld_8b = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 23
  %89 = ptrtoint ptr %roce_fw_bld_8b to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %roce_fw_bld_8b, align 2
  %conv140 = zext i8 %90 to i32
  %roce_fw_rsvd_8b = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 95, i32 24
  %91 = ptrtoint ptr %roce_fw_rsvd_8b to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %roce_fw_rsvd_8b, align 1
  %conv141 = zext i8 %92 to i32
  %call142 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %roce_ver, i32 noundef 32, ptr noundef nonnull @.str.64, i32 noundef %conv138, i32 noundef %conv139, i32 noundef %conv140, i32 noundef %conv141)
  br label %if.end143

if.end143:                                        ; preds = %if.else, %if.then106
  %call145 = call fastcc i32 @bnxt_dl_info_put(ptr noundef %2, ptr noundef %req, i32 noundef 1, ptr noundef nonnull @.str.65, ptr noundef nonnull %mgmt_ver)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %if.end148, label %if.end143.cleanup_crit_edge

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end148:                                        ; preds = %if.end143
  %hwrm_ver_supp = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 97
  %call150 = call fastcc i32 @bnxt_dl_info_put(ptr noundef %2, ptr noundef %req, i32 noundef 1, ptr noundef nonnull @.str.66, ptr noundef %hwrm_ver_supp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool151.not = icmp eq i32 %call150, 0
  br i1 %tobool151.not, label %if.end153, label %if.end148.cleanup_crit_edge

if.end148.cleanup_crit_edge:                      ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end153:                                        ; preds = %if.end148
  %call155 = call fastcc i32 @bnxt_dl_info_put(ptr noundef %2, ptr noundef %req, i32 noundef 1, ptr noundef nonnull @.str.67, ptr noundef nonnull %ncsi_ver)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end158, label %if.end153.cleanup_crit_edge

if.end153.cleanup_crit_edge:                      ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end158:                                        ; preds = %if.end153
  %call160 = call fastcc i32 @bnxt_dl_info_put(ptr noundef %2, ptr noundef %req, i32 noundef 1, ptr noundef nonnull @.str.68, ptr noundef nonnull %roce_ver)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call160)
  %tobool161.not = icmp eq i32 %call160, 0
  br i1 %tobool161.not, label %if.end163, label %if.end158.cleanup_crit_edge

if.end158.cleanup_crit_edge:                      ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end163:                                        ; preds = %if.end158
  %call164 = call i32 @bnxt_hwrm_nvm_get_dev_info(ptr noundef %2, ptr noundef nonnull %nvm_dev_info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %lor.lhs.false, label %if.end163.if.then170_crit_edge

if.end163.if.then170_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then170

lor.lhs.false:                                    ; preds = %if.end163
  %flags166 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, ptr %nvm_dev_info, i32 0, i32 13
  %93 = ptrtoint ptr %flags166 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %flags166, align 1
  %95 = and i8 %94, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool169.not = icmp eq i8 %95, 0
  br i1 %tobool169.not, label %lor.lhs.false.if.then170_crit_edge, label %if.end178

lor.lhs.false.if.then170_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then170

if.then170:                                       ; preds = %lor.lhs.false.if.then170_crit_edge, %if.end163.if.then170_crit_edge
  %dev = getelementptr inbounds %struct.bnxt, ptr %2, i32 0, i32 8
  %96 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev, align 4
  %call172 = call i32 @bnxt_get_pkginfo(ptr noundef %97, ptr noundef nonnull %buf, i32 noundef 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %tobool173.not = icmp eq i32 %call172, 0
  br i1 %tobool173.not, label %if.then174, label %if.then170.cleanup_crit_edge

if.then170.cleanup_crit_edge:                     ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then174:                                       ; preds = %if.then170
  call void @__sanitizer_cov_trace_pc() #11
  %call176 = call fastcc i32 @bnxt_dl_info_put(ptr noundef %2, ptr noundef %req, i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull %buf)
  br label %cleanup

if.end178:                                        ; preds = %lor.lhs.false
  %98 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 0, ptr %buf, align 1
  %pkg_name = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, ptr %nvm_dev_info, i32 0, i32 14
  %call182 = call ptr @strncat(ptr noundef nonnull %buf, ptr noundef %pkg_name, i32 noundef 16)
  %call184 = call fastcc i32 @bnxt_dl_info_put(ptr noundef %2, ptr noundef %req, i32 noundef 2, ptr noundef nonnull @.str.4, ptr noundef nonnull %buf)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %tobool185.not = icmp eq i32 %call184, 0
  br i1 %tobool185.not, label %if.end187, label %if.end178.cleanup_crit_edge

if.end178.cleanup_crit_edge:                      ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end187:                                        ; preds = %if.end178
  %hwrm_fw_major189 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, ptr %nvm_dev_info, i32 0, i32 15
  %99 = ptrtoint ptr %hwrm_fw_major189 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %hwrm_fw_major189, align 4
  %conv190 = zext i16 %100 to i32
  %hwrm_fw_minor191 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, ptr %nvm_dev_info, i32 0, i32 16
  %101 = ptrtoint ptr %hwrm_fw_minor191 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %hwrm_fw_minor191, align 2
  %conv192 = zext i16 %102 to i32
  %hwrm_fw_build193 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, ptr %nvm_dev_info, i32 0, i32 17
  %103 = ptrtoint ptr %hwrm_fw_build193 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %hwrm_fw_build193, align 4
  %conv194 = zext i16 %104 to i32
  %hwrm_fw_patch195 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, ptr %nvm_dev_info, i32 0, i32 18
  %105 = ptrtoint ptr %hwrm_fw_patch195 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %hwrm_fw_patch195, align 2
  %conv196 = zext i16 %106 to i32
  %call197 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %mgmt_ver, i32 noundef 32, ptr noundef nonnull @.str.64, i32 noundef %conv190, i32 noundef %conv192, i32 noundef %conv194, i32 noundef %conv196)
  %call199 = call fastcc i32 @bnxt_dl_info_put(ptr noundef %2, ptr noundef %req, i32 noundef 2, ptr noundef nonnull @.str.65, ptr noundef nonnull %mgmt_ver)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.end202, label %if.end187.cleanup_crit_edge

if.end187.cleanup_crit_edge:                      ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end202:                                        ; preds = %if.end187
  %mgmt_fw_major204 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, ptr %nvm_dev_info, i32 0, i32 19
  %107 = ptrtoint ptr %mgmt_fw_major204 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %mgmt_fw_major204, align 4
  %conv205 = zext i16 %108 to i32
  %mgmt_fw_minor206 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, ptr %nvm_dev_info, i32 0, i32 20
  %109 = ptrtoint ptr %mgmt_fw_minor206 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %mgmt_fw_minor206, align 2
  %conv207 = zext i16 %110 to i32
  %mgmt_fw_build208 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, ptr %nvm_dev_info, i32 0, i32 21
  %111 = ptrtoint ptr %mgmt_fw_build208 to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %mgmt_fw_build208, align 4
  %conv209 = zext i16 %112 to i32
  %mgmt_fw_patch210 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, ptr %nvm_dev_info, i32 0, i32 22
  %113 = ptrtoint ptr %mgmt_fw_patch210 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %mgmt_fw_patch210, align 2
  %conv211 = zext i16 %114 to i32
  %call212 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %ncsi_ver, i32 noundef 32, ptr noundef nonnull @.str.64, i32 noundef %conv205, i32 noundef %conv207, i32 noundef %conv209, i32 noundef %conv211)
  %call214 = call fastcc i32 @bnxt_dl_info_put(ptr noundef %2, ptr noundef %req, i32 noundef 2, ptr noundef nonnull @.str.67, ptr noundef nonnull %ncsi_ver)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %if.end217, label %if.end202.cleanup_crit_edge

if.end202.cleanup_crit_edge:                      ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end217:                                        ; preds = %if.end202
  %roce_fw_major219 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, ptr %nvm_dev_info, i32 0, i32 23
  %115 = ptrtoint ptr %roce_fw_major219 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %roce_fw_major219, align 4
  %conv220 = zext i16 %116 to i32
  %roce_fw_minor221 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, ptr %nvm_dev_info, i32 0, i32 24
  %117 = ptrtoint ptr %roce_fw_minor221 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %roce_fw_minor221, align 2
  %conv222 = zext i16 %118 to i32
  %roce_fw_build223 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, ptr %nvm_dev_info, i32 0, i32 25
  %119 = ptrtoint ptr %roce_fw_build223 to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %roce_fw_build223, align 4
  %conv224 = zext i16 %120 to i32
  %roce_fw_patch225 = getelementptr inbounds %struct.hwrm_nvm_get_dev_info_output, ptr %nvm_dev_info, i32 0, i32 26
  %121 = ptrtoint ptr %roce_fw_patch225 to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %roce_fw_patch225, align 2
  %conv226 = zext i16 %122 to i32
  %call227 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %roce_ver, i32 noundef 32, ptr noundef nonnull @.str.64, i32 noundef %conv220, i32 noundef %conv222, i32 noundef %conv224, i32 noundef %conv226)
  %call229 = call fastcc i32 @bnxt_dl_info_put(ptr noundef %2, ptr noundef %req, i32 noundef 2, ptr noundef nonnull @.str.68, ptr noundef nonnull %roce_ver)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call229)
  %tobool230.not = icmp eq i32 %call229, 0
  br i1 %tobool230.not, label %if.end232, label %if.end217.cleanup_crit_edge

if.end217.cleanup_crit_edge:                      ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end232:                                        ; preds = %if.end217
  %call233 = call fastcc i32 @bnxt_dl_livepatch_info_put(ptr noundef %2, ptr noundef %req, ptr noundef nonnull @.str.69)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call233)
  %tobool234.not = icmp eq i32 %call233, 0
  br i1 %tobool234.not, label %if.end236, label %if.end232.cleanup_crit_edge

if.end232.cleanup_crit_edge:                      ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end236:                                        ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #11
  %call237 = call fastcc i32 @bnxt_dl_livepatch_info_put(ptr noundef %2, ptr noundef %req, ptr noundef nonnull @.str.70)
  br label %cleanup

cleanup:                                          ; preds = %if.end236, %if.end232.cleanup_crit_edge, %if.end217.cleanup_crit_edge, %if.end202.cleanup_crit_edge, %if.end187.cleanup_crit_edge, %if.end178.cleanup_crit_edge, %if.then174, %if.then170.cleanup_crit_edge, %if.end158.cleanup_crit_edge, %if.end153.cleanup_crit_edge, %if.end148.cleanup_crit_edge, %if.end143.cleanup_crit_edge, %if.then89.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %if.end.i386.cleanup_crit_edge, %if.end.i370.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call176, %if.then174 ], [ %call237, %if.end236 ], [ %call1, %entry.cleanup_crit_edge ], [ %call30, %if.then6.cleanup_crit_edge ], [ %call41, %if.then38.cleanup_crit_edge ], [ %call8.i, %if.end.i.cleanup_crit_edge ], [ %call8.i378, %if.end.i370.cleanup_crit_edge ], [ %call8.i394, %if.end.i386.cleanup_crit_edge ], [ %call70, %if.end68.cleanup_crit_edge ], [ %call79, %if.end73.cleanup_crit_edge ], [ %call97, %if.then89.cleanup_crit_edge ], [ %call145, %if.end143.cleanup_crit_edge ], [ %call150, %if.end148.cleanup_crit_edge ], [ %call155, %if.end153.cleanup_crit_edge ], [ %call160, %if.end158.cleanup_crit_edge ], [ 0, %if.then170.cleanup_crit_edge ], [ %call184, %if.end178.cleanup_crit_edge ], [ %call199, %if.end187.cleanup_crit_edge ], [ %call214, %if.end202.cleanup_crit_edge ], [ %call229, %if.end217.cleanup_crit_edge ], [ %call233, %if.end232.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ver) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %ncsi_ver) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %roce_ver) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %mgmt_ver) #9
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %nvm_dev_info) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_dl_flash_update(ptr noundef %dl, ptr nocapture noundef readonly %params, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #9
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %flags = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 8
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %do.body

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_flash_update.__msg) #9
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @bnxt_dl_flash_update.__msg, ptr %extack, align 4
  br label %cleanup

if.end3:                                          ; preds = %entry
  tail call void @devlink_flash_update_status_notify(ptr noundef %dl, ptr noundef nonnull @.str.71, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  %dev = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %params, align 4
  %call4 = tail call i32 @bnxt_flash_package_from_fw_obj(ptr noundef %6, ptr noundef %8, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @devlink_flash_update_status_notify(ptr noundef %dl, ptr noundef nonnull @.str.72, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @devlink_flash_update_status_notify(ptr noundef %dl, ptr noundef nonnull @.str.73, ptr noundef null, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then6, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.then2 ], [ -1, %do.body.cleanup_crit_edge ], [ %call4, %if.else ], [ 0, %if.then6 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnxt_ulp_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_close_nic(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnxt_vf_reps_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_hwrm_func_drv_unrgtr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_cancel_reservations(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnxt_free_ctx_mem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @bnxt_hwrm_reset_permitted(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_hwrm_firmware_reset(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwrm_req_hold(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hwrm_req_drop(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bnxt_dl_livepatch_report_err(ptr nocapture noundef readonly %bp, ptr noundef writeonly %extack, ptr nocapture noundef readonly %resp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_err = getelementptr inbounds %struct.hwrm_err_output, ptr %resp, i32 0, i32 6
  %0 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmd_err, align 2
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %1, label %sw.default [
    i8 1, label %sw.bb
    i8 3, label %do.body2
    i8 4, label %do.body11
    i8 5, label %do.body20
    i8 6, label %do.body29
    i8 7, label %do.body38
    i8 8, label %do.body47
    i8 9, label %do.body56
  ]

sw.bb:                                            ; preds = %entry
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %4, ptr noundef nonnull @.str.43) #12
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_livepatch_report_err.__msg) #9
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.sw.epilog.sink.split_crit_edge

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body2:                                         ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_livepatch_report_err.__msg.44) #9
  %tobool4.not = icmp eq ptr %extack, null
  br i1 %tobool4.not, label %do.body2.sw.epilog_crit_edge, label %do.body2.sw.epilog.sink.split_crit_edge

do.body2.sw.epilog.sink.split_crit_edge:          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

do.body2.sw.epilog_crit_edge:                     ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body11:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_livepatch_report_err.__msg.45) #9
  %tobool13.not = icmp eq ptr %extack, null
  br i1 %tobool13.not, label %do.body11.sw.epilog_crit_edge, label %do.body11.sw.epilog.sink.split_crit_edge

do.body11.sw.epilog.sink.split_crit_edge:         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

do.body11.sw.epilog_crit_edge:                    ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body20:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_livepatch_report_err.__msg.46) #9
  %tobool22.not = icmp eq ptr %extack, null
  br i1 %tobool22.not, label %do.body20.sw.epilog_crit_edge, label %do.body20.sw.epilog.sink.split_crit_edge

do.body20.sw.epilog.sink.split_crit_edge:         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

do.body20.sw.epilog_crit_edge:                    ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body29:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_livepatch_report_err.__msg.47) #9
  %tobool31.not = icmp eq ptr %extack, null
  br i1 %tobool31.not, label %do.body29.sw.epilog_crit_edge, label %do.body29.sw.epilog.sink.split_crit_edge

do.body29.sw.epilog.sink.split_crit_edge:         ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

do.body29.sw.epilog_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body38:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_livepatch_report_err.__msg.48) #9
  %tobool40.not = icmp eq ptr %extack, null
  br i1 %tobool40.not, label %do.body38.sw.epilog_crit_edge, label %do.body38.sw.epilog.sink.split_crit_edge

do.body38.sw.epilog.sink.split_crit_edge:         ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

do.body38.sw.epilog_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body47:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_livepatch_report_err.__msg.49) #9
  %tobool49.not = icmp eq ptr %extack, null
  br i1 %tobool49.not, label %do.body47.sw.epilog_crit_edge, label %do.body47.sw.epilog.sink.split_crit_edge

do.body47.sw.epilog.sink.split_crit_edge:         ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

do.body47.sw.epilog_crit_edge:                    ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.body56:                                        ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_livepatch_report_err.__msg.50) #9
  %tobool58.not = icmp eq ptr %extack, null
  br i1 %tobool58.not, label %do.body56.sw.epilog_crit_edge, label %do.body56.sw.epilog.sink.split_crit_edge

do.body56.sw.epilog.sink.split_crit_edge:         ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

do.body56.sw.epilog_crit_edge:                    ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %conv = zext i8 %1 to i32
  %dev64 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %5 = ptrtoint ptr %dev64 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev64, align 4
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %6, ptr noundef nonnull @.str.51, i32 noundef %conv) #12
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_livepatch_report_err.__msg.52) #9
  %tobool67.not = icmp eq ptr %extack, null
  br i1 %tobool67.not, label %sw.default.sw.epilog_crit_edge, label %sw.default.sw.epilog.sink.split_crit_edge

sw.default.sw.epilog.sink.split_crit_edge:        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.sink.split

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %sw.default.sw.epilog.sink.split_crit_edge, %do.body56.sw.epilog.sink.split_crit_edge, %do.body47.sw.epilog.sink.split_crit_edge, %do.body38.sw.epilog.sink.split_crit_edge, %do.body29.sw.epilog.sink.split_crit_edge, %do.body20.sw.epilog.sink.split_crit_edge, %do.body11.sw.epilog.sink.split_crit_edge, %do.body2.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %bnxt_dl_livepatch_report_err.__msg.52.sink = phi ptr [ @bnxt_dl_livepatch_report_err.__msg, %sw.bb.sw.epilog.sink.split_crit_edge ], [ @bnxt_dl_livepatch_report_err.__msg.44, %do.body2.sw.epilog.sink.split_crit_edge ], [ @bnxt_dl_livepatch_report_err.__msg.45, %do.body11.sw.epilog.sink.split_crit_edge ], [ @bnxt_dl_livepatch_report_err.__msg.46, %do.body20.sw.epilog.sink.split_crit_edge ], [ @bnxt_dl_livepatch_report_err.__msg.47, %do.body29.sw.epilog.sink.split_crit_edge ], [ @bnxt_dl_livepatch_report_err.__msg.48, %do.body38.sw.epilog.sink.split_crit_edge ], [ @bnxt_dl_livepatch_report_err.__msg.49, %do.body47.sw.epilog.sink.split_crit_edge ], [ @bnxt_dl_livepatch_report_err.__msg.50, %do.body56.sw.epilog.sink.split_crit_edge ], [ @bnxt_dl_livepatch_report_err.__msg.52, %sw.default.sw.epilog.sink.split_crit_edge ]
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %bnxt_dl_livepatch_report_err.__msg.52.sink, ptr %extack, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.default.sw.epilog_crit_edge, %do.body56.sw.epilog_crit_edge, %do.body47.sw.epilog_crit_edge, %do.body38.sw.epilog_crit_edge, %do.body29.sw.epilog_crit_edge, %do.body20.sw.epilog_crit_edge, %do.body11.sw.epilog_crit_edge, %do.body2.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_fw_init_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_vf_reps_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_open_nic(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnxt_ulp_start(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnxt_reenable_sriov(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnxt_ptp_reapply_pps(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnxt_print_device_info(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bnxt_report_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_driver_name_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_serial_number_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_board_serial_number_put(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnxt_dl_info_put(ptr nocapture noundef readonly %bp, ptr noundef %req, i32 noundef %type, ptr noundef %key, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %char0 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %char0)
  %tobool.not = icmp eq i8 %char0, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 11
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %call2 = tail call i32 @strcmp(ptr noundef %key, ptr noundef nonnull dereferenceable(8) @.str.67) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.return_crit_edge, label %lor.lhs.false

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false:                                    ; preds = %land.lhs.true
  %call4 = tail call i32 @strcmp(ptr noundef %key, ptr noundef nonnull dereferenceable(8) @.str.68) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false.return_crit_edge, label %lor.lhs.false.if.end7_crit_edge

lor.lhs.false.if.end7_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end7:                                          ; preds = %lor.lhs.false.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %3 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %type, label %if.end7.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb11
  ]

if.end7.return_crit_edge:                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb:                                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 @devlink_info_version_fixed_put(ptr noundef %req, ptr noundef %key, ptr noundef %buf) #9
  br label %return

sw.bb9:                                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 @devlink_info_version_running_put(ptr noundef %req, ptr noundef %key, ptr noundef %buf) #9
  br label %return

sw.bb11:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @devlink_info_version_stored_put(ptr noundef %req, ptr noundef %key, ptr noundef %buf) #9
  br label %return

return:                                           ; preds = %sw.bb11, %sw.bb9, %sw.bb, %if.end7.return_crit_edge, %lor.lhs.false.return_crit_edge, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call12, %sw.bb11 ], [ %call10, %sw.bb9 ], [ %call8, %sw.bb ], [ 0, %entry.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %if.end7.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnxt_hwrm_get_nvm_cfg_ver(ptr noundef %bp, ptr nocapture noundef %nvm_cfg_ver) unnamed_addr #0 align 64 {
entry:
  %req = alloca ptr, align 4
  %data_dma_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #9
  %0 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !196
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_dma_addr) #9
  %1 = ptrtoint ptr %data_dma_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %data_dma_addr, align 4, !annotation !196
  %call = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %req, i16 noundef zeroext -15, i32 noundef 40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req, align 4
  %call1 = call ptr @hwrm_req_dma_slice(ptr noundef %bp, ptr noundef %3, i32 noundef 4, ptr noundef nonnull %data_dma_addr) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.exit_crit_edge, label %if.end4

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end4:                                          ; preds = %if.end
  %chip_num = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 4
  %4 = ptrtoint ptr %chip_num to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %chip_num, align 8
  %6 = zext i16 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.88)
  switch i16 %5, label %if.then20 [
    i16 5968, label %if.end4.if.end26_crit_edge
    i16 5969, label %if.end4.if.end26_crit_edge99
    i16 5970, label %if.end4.if.end26_crit_edge100
    i16 -10216, label %if.end4.if.end26_crit_edge101
  ]

if.end4.if.end26_crit_edge101:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end4.if.end26_crit_edge100:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end4.if.end26_crit_edge99:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end4.if.end26_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then20:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %if.end4.if.end26_crit_edge, %if.end4.if.end26_crit_edge99, %if.end4.if.end26_crit_edge100, %if.end4.if.end26_crit_edge101
  %bytes.0 = phi i32 [ 1, %if.end4.if.end26_crit_edge ], [ 4, %if.then20 ], [ 1, %if.end4.if.end26_crit_edge99 ], [ 1, %if.end4.if.end26_crit_edge100 ], [ 1, %if.end4.if.end26_crit_edge101 ]
  %bits.0 = phi i16 [ 2048, %if.end4.if.end26_crit_edge ], [ 6144, %if.then20 ], [ 2048, %if.end4.if.end26_crit_edge99 ], [ 2048, %if.end4.if.end26_crit_edge100 ], [ 2048, %if.end4.if.end26_crit_edge101 ]
  %cmp29.not = phi i1 [ false, %if.end4.if.end26_crit_edge ], [ true, %if.then20 ], [ false, %if.end4.if.end26_crit_edge99 ], [ false, %if.end4.if.end26_crit_edge100 ], [ false, %if.end4.if.end26_crit_edge101 ]
  %i.0 = phi i16 [ 2, %if.end4.if.end26_crit_edge ], [ 0, %if.then20 ], [ 2, %if.end4.if.end26_crit_edge99 ], [ 2, %if.end4.if.end26_crit_edge100 ], [ 2, %if.end4.if.end26_crit_edge101 ]
  %dim.0 = phi i16 [ 256, %if.end4.if.end26_crit_edge ], [ 0, %if.then20 ], [ 256, %if.end4.if.end26_crit_edge99 ], [ 256, %if.end4.if.end26_crit_edge100 ], [ 256, %if.end4.if.end26_crit_edge101 ]
  %7 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req, align 4
  %call27 = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %8) #9
  %9 = ptrtoint ptr %data_dma_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %data_dma_addr, align 4
  %conv28 = zext i32 %10 to i64
  %11 = call i64 @llvm.bswap.i64(i64 %conv28)
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %req, align 4
  %dest_data_addr = getelementptr inbounds %struct.hwrm_nvm_get_variable_input, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %dest_data_addr to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %11, ptr %dest_data_addr, align 8
  %data_len = getelementptr inbounds %struct.hwrm_nvm_get_variable_input, ptr %13, i32 0, i32 6
  %15 = ptrtoint ptr %data_len to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %bits.0, ptr %data_len, align 8
  %option_num = getelementptr inbounds %struct.hwrm_nvm_get_variable_input, ptr %13, i32 0, i32 7
  %16 = ptrtoint ptr %option_num to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 23042, ptr %option_num, align 2
  %dimensions = getelementptr inbounds %struct.hwrm_nvm_get_variable_input, ptr %13, i32 0, i32 8
  %17 = ptrtoint ptr %dimensions to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %dim.0, ptr %dimensions, align 4
  %18 = shl nuw nsw i16 %i.0, 8
  %19 = load ptr, ptr %req, align 4
  %index_0 = getelementptr inbounds %struct.hwrm_nvm_get_variable_input, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %index_0 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %18, ptr %index_0, align 2
  %call32 = call i32 @hwrm_req_send_silent(ptr noundef %bp, ptr noundef %19) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end26.exit_crit_edge

if.end26.exit_crit_edge:                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end35:                                         ; preds = %if.end26
  %21 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call1, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22) #9
  %24 = zext i32 %bytes.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %bytes.0, label %if.end35.bnxt_copy_from_nvm_data.exit_crit_edge [
    i32 4, label %if.then2.i
    i32 1, label %if.then8.i
  ]

if.end35.bnxt_copy_from_nvm_data.exit_crit_edge:  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnxt_copy_from_nvm_data.exit

if.then2.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %ver.sroa.0.sroa.0.0.extract.shift = lshr i32 %23, 16
  %ver.sroa.0.sroa.0.sroa.0.0.extract.shift9194 = lshr i32 %23, 24
  %ver.sroa.0.sroa.0.sroa.0.0.extract.trunc92 = trunc i32 %ver.sroa.0.sroa.0.sroa.0.0.extract.shift9194 to i8
  %ver.sroa.0.sroa.0.sroa.8.0.extract.trunc93 = trunc i32 %ver.sroa.0.sroa.0.0.extract.shift to i8
  %ver.sroa.0.sroa.8.0.extract.trunc = trunc i32 %23 to i16
  br label %bnxt_copy_from_nvm_data.exit

if.then8.i:                                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %conv9.i = trunc i32 %23 to i8
  br label %bnxt_copy_from_nvm_data.exit

bnxt_copy_from_nvm_data.exit:                     ; preds = %if.then8.i, %if.then2.i, %if.end35.bnxt_copy_from_nvm_data.exit_crit_edge
  %ver.sroa.0.sroa.8.sroa.0.1 = phi i16 [ -1, %if.end35.bnxt_copy_from_nvm_data.exit_crit_edge ], [ -1, %if.then8.i ], [ %ver.sroa.0.sroa.8.0.extract.trunc, %if.then2.i ]
  %ver.sroa.0.sroa.0.sroa.0.1 = phi i8 [ -1, %if.end35.bnxt_copy_from_nvm_data.exit_crit_edge ], [ %conv9.i, %if.then8.i ], [ %ver.sroa.0.sroa.0.sroa.0.0.extract.trunc92, %if.then2.i ]
  %ver.sroa.0.sroa.0.sroa.8.sroa.0.1 = phi i8 [ -1, %if.end35.bnxt_copy_from_nvm_data.exit_crit_edge ], [ -1, %if.then8.i ], [ %ver.sroa.0.sroa.0.sroa.8.0.extract.trunc93, %if.then2.i ]
  %25 = ptrtoint ptr %chip_num to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %chip_num, align 8
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.90)
  switch i16 %26, label %if.else [
    i16 5968, label %bnxt_copy_from_nvm_data.exit.if.then57_crit_edge
    i16 5969, label %bnxt_copy_from_nvm_data.exit.if.then57_crit_edge102
    i16 5970, label %bnxt_copy_from_nvm_data.exit.if.then57_crit_edge103
    i16 -10216, label %bnxt_copy_from_nvm_data.exit.if.then57_crit_edge104
  ]

bnxt_copy_from_nvm_data.exit.if.then57_crit_edge104: ; preds = %bnxt_copy_from_nvm_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

bnxt_copy_from_nvm_data.exit.if.then57_crit_edge103: ; preds = %bnxt_copy_from_nvm_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

bnxt_copy_from_nvm_data.exit.if.then57_crit_edge102: ; preds = %bnxt_copy_from_nvm_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

bnxt_copy_from_nvm_data.exit.if.then57_crit_edge: ; preds = %bnxt_copy_from_nvm_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57

if.then57:                                        ; preds = %bnxt_copy_from_nvm_data.exit.if.then57_crit_edge, %bnxt_copy_from_nvm_data.exit.if.then57_crit_edge102, %bnxt_copy_from_nvm_data.exit.if.then57_crit_edge103, %bnxt_copy_from_nvm_data.exit.if.then57_crit_edge104
  %28 = ptrtoint ptr %nvm_cfg_ver to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nvm_cfg_ver, align 4
  %shl = shl i32 %29, 8
  %conv58 = zext i8 %ver.sroa.0.sroa.0.sroa.0.1 to i32
  %or = or i32 %shl, %conv58
  br label %if.end59

if.else:                                          ; preds = %bnxt_copy_from_nvm_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ver.sroa.0.sroa.0.sroa.8.0.insert.ext = zext i8 %ver.sroa.0.sroa.0.sroa.8.sroa.0.1 to i32
  %ver.sroa.0.sroa.0.sroa.0.0.insert.ext = zext i8 %ver.sroa.0.sroa.0.sroa.0.1 to i32
  %ver.sroa.0.sroa.8.0.insert.ext = zext i16 %ver.sroa.0.sroa.8.sroa.0.1 to i32
  %30 = shl nuw i32 %ver.sroa.0.sroa.0.sroa.0.0.insert.ext, 24
  %31 = shl nuw nsw i32 %ver.sroa.0.sroa.0.sroa.8.0.insert.ext, 16
  %ver.sroa.0.sroa.0.0.insert.shift = or i32 %31, %30
  %ver.sroa.0.sroa.0.0.insert.insert = or i32 %ver.sroa.0.sroa.0.0.insert.shift, %ver.sroa.0.sroa.8.0.insert.ext
  br label %if.end59

if.end59:                                         ; preds = %if.else, %if.then57
  %storemerge = phi i32 [ %ver.sroa.0.sroa.0.0.insert.insert, %if.else ], [ %or, %if.then57 ]
  %32 = ptrtoint ptr %nvm_cfg_ver to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge, ptr %nvm_cfg_ver, align 4
  br i1 %cmp29.not, label %if.end59.exit_crit_edge, label %while.body.1

if.end59.exit_crit_edge:                          ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

while.body.1:                                     ; preds = %if.end59
  %conv31.1 = add nsw i16 %i.0, -1
  %33 = call i16 @llvm.bswap.i16(i16 %conv31.1)
  %34 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %req, align 4
  %index_0.1 = getelementptr inbounds %struct.hwrm_nvm_get_variable_input, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %index_0.1 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %33, ptr %index_0.1, align 2
  %call32.1 = call i32 @hwrm_req_send_silent(ptr noundef %bp, ptr noundef %35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.1)
  %tobool33.not.1 = icmp eq i32 %call32.1, 0
  br i1 %tobool33.not.1, label %if.end35.1, label %while.body.1.exit_crit_edge

while.body.1.exit_crit_edge:                      ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end35.1:                                       ; preds = %while.body.1
  %37 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %call1, align 4
  %39 = call i32 @llvm.bswap.i32(i32 %38) #9
  %40 = zext i32 %bytes.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %bytes.0, label %if.end35.1.bnxt_copy_from_nvm_data.exit.1_crit_edge [
    i32 4, label %if.then2.i.1
    i32 1, label %if.then8.i.1
  ]

if.end35.1.bnxt_copy_from_nvm_data.exit.1_crit_edge: ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnxt_copy_from_nvm_data.exit.1

if.then8.i.1:                                     ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #11
  %conv9.i.1 = trunc i32 %39 to i8
  br label %bnxt_copy_from_nvm_data.exit.1

if.then2.i.1:                                     ; preds = %if.end35.1
  call void @__sanitizer_cov_trace_pc() #11
  %ver.sroa.0.sroa.0.0.extract.shift.1 = lshr i32 %39, 16
  %ver.sroa.0.sroa.0.sroa.0.0.extract.shift9194.1 = lshr i32 %39, 24
  %ver.sroa.0.sroa.0.sroa.0.0.extract.trunc92.1 = trunc i32 %ver.sroa.0.sroa.0.sroa.0.0.extract.shift9194.1 to i8
  %ver.sroa.0.sroa.0.sroa.8.0.extract.trunc93.1 = trunc i32 %ver.sroa.0.sroa.0.0.extract.shift.1 to i8
  %ver.sroa.0.sroa.8.0.extract.trunc.1 = trunc i32 %39 to i16
  br label %bnxt_copy_from_nvm_data.exit.1

bnxt_copy_from_nvm_data.exit.1:                   ; preds = %if.then2.i.1, %if.then8.i.1, %if.end35.1.bnxt_copy_from_nvm_data.exit.1_crit_edge
  %ver.sroa.0.sroa.8.sroa.0.1.1 = phi i16 [ %ver.sroa.0.sroa.8.sroa.0.1, %if.end35.1.bnxt_copy_from_nvm_data.exit.1_crit_edge ], [ %ver.sroa.0.sroa.8.sroa.0.1, %if.then8.i.1 ], [ %ver.sroa.0.sroa.8.0.extract.trunc.1, %if.then2.i.1 ]
  %ver.sroa.0.sroa.0.sroa.0.1.1 = phi i8 [ %ver.sroa.0.sroa.0.sroa.0.1, %if.end35.1.bnxt_copy_from_nvm_data.exit.1_crit_edge ], [ %conv9.i.1, %if.then8.i.1 ], [ %ver.sroa.0.sroa.0.sroa.0.0.extract.trunc92.1, %if.then2.i.1 ]
  %ver.sroa.0.sroa.0.sroa.8.sroa.0.1.1 = phi i8 [ %ver.sroa.0.sroa.0.sroa.8.sroa.0.1, %if.end35.1.bnxt_copy_from_nvm_data.exit.1_crit_edge ], [ %ver.sroa.0.sroa.0.sroa.8.sroa.0.1, %if.then8.i.1 ], [ %ver.sroa.0.sroa.0.sroa.8.0.extract.trunc93.1, %if.then2.i.1 ]
  %41 = ptrtoint ptr %chip_num to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %chip_num, align 8
  %43 = zext i16 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.92)
  switch i16 %42, label %if.else.1 [
    i16 5968, label %bnxt_copy_from_nvm_data.exit.1.if.then57.1_crit_edge
    i16 5969, label %bnxt_copy_from_nvm_data.exit.1.if.then57.1_crit_edge105
    i16 5970, label %bnxt_copy_from_nvm_data.exit.1.if.then57.1_crit_edge106
    i16 -10216, label %bnxt_copy_from_nvm_data.exit.1.if.then57.1_crit_edge107
  ]

bnxt_copy_from_nvm_data.exit.1.if.then57.1_crit_edge107: ; preds = %bnxt_copy_from_nvm_data.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57.1

bnxt_copy_from_nvm_data.exit.1.if.then57.1_crit_edge106: ; preds = %bnxt_copy_from_nvm_data.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57.1

bnxt_copy_from_nvm_data.exit.1.if.then57.1_crit_edge105: ; preds = %bnxt_copy_from_nvm_data.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57.1

bnxt_copy_from_nvm_data.exit.1.if.then57.1_crit_edge: ; preds = %bnxt_copy_from_nvm_data.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57.1

if.then57.1:                                      ; preds = %bnxt_copy_from_nvm_data.exit.1.if.then57.1_crit_edge, %bnxt_copy_from_nvm_data.exit.1.if.then57.1_crit_edge105, %bnxt_copy_from_nvm_data.exit.1.if.then57.1_crit_edge106, %bnxt_copy_from_nvm_data.exit.1.if.then57.1_crit_edge107
  %44 = ptrtoint ptr %nvm_cfg_ver to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nvm_cfg_ver, align 4
  %shl.1 = shl i32 %45, 8
  %conv58.1 = zext i8 %ver.sroa.0.sroa.0.sroa.0.1.1 to i32
  %or.1 = or i32 %shl.1, %conv58.1
  br label %if.end59.1

if.else.1:                                        ; preds = %bnxt_copy_from_nvm_data.exit.1
  call void @__sanitizer_cov_trace_pc() #11
  %ver.sroa.0.sroa.0.sroa.8.0.insert.ext.1 = zext i8 %ver.sroa.0.sroa.0.sroa.8.sroa.0.1.1 to i32
  %ver.sroa.0.sroa.0.sroa.0.0.insert.ext.1 = zext i8 %ver.sroa.0.sroa.0.sroa.0.1.1 to i32
  %ver.sroa.0.sroa.8.0.insert.ext.1 = zext i16 %ver.sroa.0.sroa.8.sroa.0.1.1 to i32
  %46 = shl nuw i32 %ver.sroa.0.sroa.0.sroa.0.0.insert.ext.1, 24
  %47 = shl nuw nsw i32 %ver.sroa.0.sroa.0.sroa.8.0.insert.ext.1, 16
  %ver.sroa.0.sroa.0.0.insert.shift.1 = or i32 %47, %46
  %ver.sroa.0.sroa.0.0.insert.insert.1 = or i32 %ver.sroa.0.sroa.0.0.insert.shift.1, %ver.sroa.0.sroa.8.0.insert.ext.1
  br label %if.end59.1

if.end59.1:                                       ; preds = %if.else.1, %if.then57.1
  %storemerge.1 = phi i32 [ %ver.sroa.0.sroa.0.0.insert.insert.1, %if.else.1 ], [ %or.1, %if.then57.1 ]
  %48 = ptrtoint ptr %nvm_cfg_ver to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %storemerge.1, ptr %nvm_cfg_ver, align 4
  %conv31.2 = add nsw i16 %i.0, -2
  %49 = call i16 @llvm.bswap.i16(i16 %conv31.2)
  %50 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %req, align 4
  %index_0.2 = getelementptr inbounds %struct.hwrm_nvm_get_variable_input, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %index_0.2 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %49, ptr %index_0.2, align 2
  %call32.2 = call i32 @hwrm_req_send_silent(ptr noundef %bp, ptr noundef %51) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.2)
  %tobool33.not.2 = icmp eq i32 %call32.2, 0
  br i1 %tobool33.not.2, label %if.end35.2, label %if.end59.1.exit_crit_edge

if.end59.1.exit_crit_edge:                        ; preds = %if.end59.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end35.2:                                       ; preds = %if.end59.1
  %53 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %call1, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %54) #9
  %56 = zext i32 %bytes.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %bytes.0, label %if.end35.2.bnxt_copy_from_nvm_data.exit.2_crit_edge [
    i32 4, label %if.then2.i.2
    i32 1, label %if.then8.i.2
  ]

if.end35.2.bnxt_copy_from_nvm_data.exit.2_crit_edge: ; preds = %if.end35.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnxt_copy_from_nvm_data.exit.2

if.then8.i.2:                                     ; preds = %if.end35.2
  call void @__sanitizer_cov_trace_pc() #11
  %conv9.i.2 = trunc i32 %55 to i8
  br label %bnxt_copy_from_nvm_data.exit.2

if.then2.i.2:                                     ; preds = %if.end35.2
  call void @__sanitizer_cov_trace_pc() #11
  %ver.sroa.0.sroa.0.0.extract.shift.2 = lshr i32 %55, 16
  %ver.sroa.0.sroa.0.sroa.0.0.extract.shift9194.2 = lshr i32 %55, 24
  %ver.sroa.0.sroa.0.sroa.0.0.extract.trunc92.2 = trunc i32 %ver.sroa.0.sroa.0.sroa.0.0.extract.shift9194.2 to i8
  %ver.sroa.0.sroa.0.sroa.8.0.extract.trunc93.2 = trunc i32 %ver.sroa.0.sroa.0.0.extract.shift.2 to i8
  %ver.sroa.0.sroa.8.0.extract.trunc.2 = trunc i32 %55 to i16
  br label %bnxt_copy_from_nvm_data.exit.2

bnxt_copy_from_nvm_data.exit.2:                   ; preds = %if.then2.i.2, %if.then8.i.2, %if.end35.2.bnxt_copy_from_nvm_data.exit.2_crit_edge
  %ver.sroa.0.sroa.8.sroa.0.1.2 = phi i16 [ %ver.sroa.0.sroa.8.sroa.0.1.1, %if.end35.2.bnxt_copy_from_nvm_data.exit.2_crit_edge ], [ %ver.sroa.0.sroa.8.sroa.0.1.1, %if.then8.i.2 ], [ %ver.sroa.0.sroa.8.0.extract.trunc.2, %if.then2.i.2 ]
  %ver.sroa.0.sroa.0.sroa.0.1.2 = phi i8 [ %ver.sroa.0.sroa.0.sroa.0.1.1, %if.end35.2.bnxt_copy_from_nvm_data.exit.2_crit_edge ], [ %conv9.i.2, %if.then8.i.2 ], [ %ver.sroa.0.sroa.0.sroa.0.0.extract.trunc92.2, %if.then2.i.2 ]
  %ver.sroa.0.sroa.0.sroa.8.sroa.0.1.2 = phi i8 [ %ver.sroa.0.sroa.0.sroa.8.sroa.0.1.1, %if.end35.2.bnxt_copy_from_nvm_data.exit.2_crit_edge ], [ %ver.sroa.0.sroa.0.sroa.8.sroa.0.1.1, %if.then8.i.2 ], [ %ver.sroa.0.sroa.0.sroa.8.0.extract.trunc93.2, %if.then2.i.2 ]
  %57 = ptrtoint ptr %chip_num to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %chip_num, align 8
  %59 = zext i16 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.94)
  switch i16 %58, label %if.else.2 [
    i16 5968, label %bnxt_copy_from_nvm_data.exit.2.if.then57.2_crit_edge
    i16 5969, label %bnxt_copy_from_nvm_data.exit.2.if.then57.2_crit_edge108
    i16 5970, label %bnxt_copy_from_nvm_data.exit.2.if.then57.2_crit_edge109
    i16 -10216, label %bnxt_copy_from_nvm_data.exit.2.if.then57.2_crit_edge110
  ]

bnxt_copy_from_nvm_data.exit.2.if.then57.2_crit_edge110: ; preds = %bnxt_copy_from_nvm_data.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57.2

bnxt_copy_from_nvm_data.exit.2.if.then57.2_crit_edge109: ; preds = %bnxt_copy_from_nvm_data.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57.2

bnxt_copy_from_nvm_data.exit.2.if.then57.2_crit_edge108: ; preds = %bnxt_copy_from_nvm_data.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57.2

bnxt_copy_from_nvm_data.exit.2.if.then57.2_crit_edge: ; preds = %bnxt_copy_from_nvm_data.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then57.2

if.then57.2:                                      ; preds = %bnxt_copy_from_nvm_data.exit.2.if.then57.2_crit_edge, %bnxt_copy_from_nvm_data.exit.2.if.then57.2_crit_edge108, %bnxt_copy_from_nvm_data.exit.2.if.then57.2_crit_edge109, %bnxt_copy_from_nvm_data.exit.2.if.then57.2_crit_edge110
  %60 = ptrtoint ptr %nvm_cfg_ver to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nvm_cfg_ver, align 4
  %shl.2 = shl i32 %61, 8
  %conv58.2 = zext i8 %ver.sroa.0.sroa.0.sroa.0.1.2 to i32
  %or.2 = or i32 %shl.2, %conv58.2
  br label %if.end59.2

if.else.2:                                        ; preds = %bnxt_copy_from_nvm_data.exit.2
  call void @__sanitizer_cov_trace_pc() #11
  %ver.sroa.0.sroa.0.sroa.8.0.insert.ext.2 = zext i8 %ver.sroa.0.sroa.0.sroa.8.sroa.0.1.2 to i32
  %ver.sroa.0.sroa.0.sroa.0.0.insert.ext.2 = zext i8 %ver.sroa.0.sroa.0.sroa.0.1.2 to i32
  %ver.sroa.0.sroa.8.0.insert.ext.2 = zext i16 %ver.sroa.0.sroa.8.sroa.0.1.2 to i32
  %62 = shl nuw i32 %ver.sroa.0.sroa.0.sroa.0.0.insert.ext.2, 24
  %63 = shl nuw nsw i32 %ver.sroa.0.sroa.0.sroa.8.0.insert.ext.2, 16
  %ver.sroa.0.sroa.0.0.insert.shift.2 = or i32 %63, %62
  %ver.sroa.0.sroa.0.0.insert.insert.2 = or i32 %ver.sroa.0.sroa.0.0.insert.shift.2, %ver.sroa.0.sroa.8.0.insert.ext.2
  br label %if.end59.2

if.end59.2:                                       ; preds = %if.else.2, %if.then57.2
  %storemerge.2 = phi i32 [ %ver.sroa.0.sroa.0.0.insert.insert.2, %if.else.2 ], [ %or.2, %if.then57.2 ]
  %64 = ptrtoint ptr %nvm_cfg_ver to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %storemerge.2, ptr %nvm_cfg_ver, align 4
  br label %exit

exit:                                             ; preds = %if.end59.2, %if.end59.1.exit_crit_edge, %while.body.1.exit_crit_edge, %if.end59.exit_crit_edge, %if.end26.exit_crit_edge, %if.end.exit_crit_edge
  %rc.1 = phi i32 [ -12, %if.end.exit_crit_edge ], [ 0, %if.end59.exit_crit_edge ], [ %call32, %if.end26.exit_crit_edge ], [ %call32.1, %while.body.1.exit_crit_edge ], [ %call32.2, %if.end59.1.exit_crit_edge ], [ 0, %if.end59.2 ]
  %65 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %req, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %66) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %exit ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_dma_addr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_hwrm_nvm_get_dev_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_get_pkginfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnxt_dl_livepatch_info_put(ptr noundef %bp, ptr noundef %req, ptr noundef %key) unnamed_addr #0 align 64 {
entry:
  %query = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %query) #9
  %0 = ptrtoint ptr %query to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %query, align 4, !annotation !196
  %fw_cap = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 74
  %1 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fw_cap, align 8
  %neg = and i32 %2, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg)
  %tobool.not.not = icmp eq i32 %neg, 0
  br i1 %tobool.not.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @__hwrm_req_init(ptr noundef %bp, ptr noundef nonnull %query, i16 noundef zeroext 190, i32 noundef 24) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = call i32 @strcmp(ptr noundef %key, ptr noundef nonnull dereferenceable(13) @.str.69) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end3.if.end13_crit_edge, label %if.else

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.else:                                          ; preds = %if.end3
  %call7 = call i32 @strcmp(ptr noundef %key, ptr noundef nonnull dereferenceable(13) @.str.70) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.else.if.end13_crit_edge, label %if.else.exit_crit_edge

if.else.exit_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %if.else.if.end13_crit_edge, %if.end3.if.end13_crit_edge
  %.sink = phi i8 [ 2, %if.end3.if.end13_crit_edge ], [ 1, %if.else.if.end13_crit_edge ]
  %3 = ptrtoint ptr %query to i32
  call void @__asan_load4_noabort(i32 %3)
  %.sink60 = load ptr, ptr %query, align 4
  %fw_target10 = getelementptr inbounds %struct.hwrm_fw_livepatch_query_input, ptr %.sink60, i32 0, i32 5
  %4 = ptrtoint ptr %fw_target10 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink, ptr %fw_target10, align 8
  %call14 = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %.sink60) #9
  %5 = ptrtoint ptr %query to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %query, align 4
  %call15 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end13.exit_crit_edge

if.end13.exit_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end18:                                         ; preds = %if.end13
  %status_flags = getelementptr inbounds %struct.hwrm_fw_livepatch_query_output, ptr %call14, i32 0, i32 6
  %7 = ptrtoint ptr %status_flags to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %status_flags, align 2
  %9 = call i16 @llvm.bswap.i16(i16 %8)
  %conv = zext i16 %9 to i32
  %and19 = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.if.end27_crit_edge, label %if.then21

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then21:                                        ; preds = %if.end18
  %active_ver = getelementptr inbounds %struct.hwrm_fw_livepatch_query_output, ptr %call14, i32 0, i32 5
  %arrayidx = getelementptr %struct.hwrm_fw_livepatch_query_output, ptr %call14, i32 0, i32 5, i32 31
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx, align 1
  %call23 = call i32 @devlink_info_version_running_put(ptr noundef %req, ptr noundef %key, ptr noundef %active_ver) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then21.if.end27_crit_edge, label %if.then21.exit_crit_edge

if.then21.exit_crit_edge:                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27:                                         ; preds = %if.then21.if.end27_crit_edge, %if.end18.if.end27_crit_edge
  %and29 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end27.exit_crit_edge, label %if.then31

if.end27.exit_crit_edge:                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.then31:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %install_ver = getelementptr inbounds %struct.hwrm_fw_livepatch_query_output, ptr %call14, i32 0, i32 4
  %arrayidx32 = getelementptr %struct.hwrm_fw_livepatch_query_output, ptr %call14, i32 0, i32 4, i32 31
  %11 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx32, align 1
  %call35 = call i32 @devlink_info_version_stored_put(ptr noundef %req, ptr noundef %key, ptr noundef %install_ver) #9
  br label %exit

exit:                                             ; preds = %if.then31, %if.end27.exit_crit_edge, %if.then21.exit_crit_edge, %if.end13.exit_crit_edge, %if.else.exit_crit_edge
  %rc.1 = phi i32 [ 0, %if.else.exit_crit_edge ], [ %call15, %if.end13.exit_crit_edge ], [ %call23, %if.then21.exit_crit_edge ], [ %call35, %if.then31 ], [ 0, %if.end27.exit_crit_edge ]
  %12 = ptrtoint ptr %query to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %query, align 4
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %13) #9
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %exit ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %query) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_version_fixed_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_version_running_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_info_version_stored_put(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hwrm_req_dma_slice(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hwrm_req_send_silent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_flash_update_status_notify(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bnxt_flash_package_from_fw_obj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devlink_alloc_ns(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devlink_params_register(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_dl_nvm_param_get(ptr noundef %dl, i32 noundef %id, ptr nocapture noundef %ctx) #0 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #9
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #9
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !196
  %call1 = call i32 @__hwrm_req_init(ptr noundef %1, ptr noundef nonnull %req, i16 noundef zeroext -15, i32 noundef 40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %req, align 4
  %call2 = call fastcc i32 @bnxt_hwrm_nvm_req(ptr noundef %1, i32 noundef %id, ptr noundef %4, ptr noundef %ctx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %id)
  %cmp = icmp eq i32 %id, 17
  %or.cond = and i1 %cmp, %tobool3.not
  br i1 %or.cond, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ctx, align 4, !range !195
  %7 = xor i8 %6, 1
  store i8 %7, ptr %ctx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_dl_nvm_param_set(ptr noundef %dl, i32 noundef %id, ptr nocapture noundef %ctx) #0 align 64 {
entry:
  %req = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #9
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req) #9
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %req, align 4, !annotation !196
  %call1 = call i32 @__hwrm_req_init(ptr noundef %1, ptr noundef nonnull %req, i16 noundef zeroext -14, i32 noundef 40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %id)
  %cmp = icmp eq i32 %id, 17
  br i1 %cmp, label %if.then2, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %ctx, align 4, !range !195
  %5 = xor i8 %4, 1
  store i8 %5, ptr %ctx, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.end.if.end5_crit_edge
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %req, align 4
  %call7 = call fastcc i32 @bnxt_hwrm_nvm_req(ptr noundef %1, i32 noundef %id, ptr noundef %7, ptr noundef %ctx)
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end5 ], [ %call1, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_dl_msix_validate(ptr nocapture noundef readnone %dl, i32 noundef %id, [8 x i32] %val.coerce, ptr noundef writeonly %extack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %val.coerce.fca.0.extract = extractvalue [8 x i32] %val.coerce, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %id)
  %cmp = icmp eq i32 %id, 5
  %spec.store.select = select i1 %cmp, i32 512, i32 -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %id)
  %cmp1 = icmp eq i32 %id, 6
  %spec.store.select9 = select i1 %cmp1, i32 128, i32 %spec.store.select
  call void @__sanitizer_cov_trace_cmp4(i32 %val.coerce.fca.0.extract, i32 %spec.store.select9)
  %cmp4 = icmp ugt i32 %val.coerce.fca.0.extract, %spec.store.select9
  br i1 %cmp4, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @bnxt_dl_msix_validate.__msg) #9
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then6

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @bnxt_dl_msix_validate.__msg, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then6 ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_remote_dev_reset_get(ptr noundef %dl, i32 noundef %id, ptr nocapture noundef writeonly %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #9
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %fw_cap = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 74
  %2 = ptrtoint ptr %fw_cap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fw_cap, align 8
  %neg = and i32 %3, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg)
  %tobool.not.not = icmp eq i32 %neg, 0
  br i1 %tobool.not.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call.i3 = tail call ptr @devlink_priv(ptr noundef %dl) #9
  %remote_reset.i = getelementptr inbounds %struct.bnxt_dl, ptr %call.i3, i32 0, i32 1
  %4 = ptrtoint ptr %remote_reset.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %remote_reset.i, align 4, !range !195
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %ctx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bnxt_remote_dev_reset_set(ptr noundef %dl, i32 noundef %id, ptr nocapture noundef readonly %ctx) #0 align 64 {
entry:
  %req.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @devlink_priv(ptr noundef %dl) #9
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ctx, align 4, !range !195
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %req.i) #9
  %4 = ptrtoint ptr %req.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %req.i, align 4, !annotation !196
  %fw_cap.i = getelementptr inbounds %struct.bnxt, ptr %1, i32 0, i32 74
  %5 = ptrtoint ptr %fw_cap.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_cap.i, align 8
  %neg.i = and i32 %6, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %neg.i)
  %tobool.not.not.i = icmp eq i32 %neg.i, 0
  br i1 %tobool.not.not.i, label %entry.bnxt_hwrm_remote_dev_reset_set.exit.thread_crit_edge, label %if.end.i

entry.bnxt_hwrm_remote_dev_reset_set.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnxt_hwrm_remote_dev_reset_set.exit.thread

if.end.i:                                         ; preds = %entry
  %call.i10 = call i32 @__hwrm_req_init(ptr noundef %1, ptr noundef nonnull %req.i, i16 noundef zeroext 23, i32 noundef 112) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %tobool1.not.i = icmp eq i32 %call.i10, 0
  br i1 %tobool1.not.i, label %if.end3.i, label %if.end.i.bnxt_hwrm_remote_dev_reset_set.exit.thread_crit_edge

if.end.i.bnxt_hwrm_remote_dev_reset_set.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnxt_hwrm_remote_dev_reset_set.exit.thread

if.end3.i:                                        ; preds = %if.end.i
  %7 = ptrtoint ptr %req.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %req.i, align 4
  %fid.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %fid.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 -1, ptr %fid.i, align 8
  %enables.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %8, i32 0, i32 8
  %10 = ptrtoint ptr %enables.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 32768, ptr %enables.i, align 8
  br i1 %tobool.not, label %if.end3.i.bnxt_hwrm_remote_dev_reset_set.exit_crit_edge, label %if.then5.i

if.end3.i.bnxt_hwrm_remote_dev_reset_set.exit_crit_edge: ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bnxt_hwrm_remote_dev_reset_set.exit

if.then5.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %flags.i = getelementptr inbounds %struct.hwrm_func_cfg_input, ptr %8, i32 0, i32 7
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %flags.i, align 4
  br label %bnxt_hwrm_remote_dev_reset_set.exit

bnxt_hwrm_remote_dev_reset_set.exit.thread:       ; preds = %if.end.i.bnxt_hwrm_remote_dev_reset_set.exit.thread_crit_edge, %entry.bnxt_hwrm_remote_dev_reset_set.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i10, %if.end.i.bnxt_hwrm_remote_dev_reset_set.exit.thread_crit_edge ], [ -95, %entry.bnxt_hwrm_remote_dev_reset_set.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #9
  br label %cleanup

bnxt_hwrm_remote_dev_reset_set.exit:              ; preds = %if.then5.i, %if.end3.i.bnxt_hwrm_remote_dev_reset_set.exit_crit_edge
  %call7.i = call i32 @hwrm_req_send(ptr noundef %1, ptr noundef %8) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %req.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool2.not = icmp eq i32 %call7.i, 0
  br i1 %tobool2.not, label %if.end, label %bnxt_hwrm_remote_dev_reset_set.exit.cleanup_crit_edge

bnxt_hwrm_remote_dev_reset_set.exit.cleanup_crit_edge: ; preds = %bnxt_hwrm_remote_dev_reset_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %bnxt_hwrm_remote_dev_reset_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ctx, align 4, !range !195
  %call.i11 = call ptr @devlink_priv(ptr noundef %dl) #9
  %remote_reset.i = getelementptr inbounds %struct.bnxt_dl, ptr %call.i11, i32 0, i32 1
  %14 = ptrtoint ptr %remote_reset.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %remote_reset.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %bnxt_hwrm_remote_dev_reset_set.exit.cleanup_crit_edge, %bnxt_hwrm_remote_dev_reset_set.exit.thread
  %retval.0.i14 = phi i32 [ %retval.0.i.ph, %bnxt_hwrm_remote_dev_reset_set.exit.thread ], [ %call7.i, %bnxt_hwrm_remote_dev_reset_set.exit.cleanup_crit_edge ], [ 0, %if.end ]
  ret i32 %retval.0.i14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bnxt_hwrm_nvm_req(ptr noundef %bp, i32 noundef %param_id, ptr noundef %msg, ptr nocapture noundef %val) unnamed_addr #0 align 64 {
entry:
  %data_dma_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data_dma_addr) #9
  %0 = ptrtoint ptr %data_dma_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data_dma_addr, align 4, !annotation !196
  %flags = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 11
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 8
  %and = and i32 %2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.preheader, label %if.then

for.body.preheader:                               ; preds = %entry
  %3 = zext i32 %param_id to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %param_id, label %if.then8 [
    i32 2, label %for.body.preheader.if.end9_crit_edge
    i32 4, label %if.end9.fold.split
    i32 5, label %if.end9.fold.split138
    i32 6, label %if.end9.fold.split139
    i32 17, label %if.end9.fold.split140
  ]

for.body.preheader.if.end9_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %msg) #9
  br label %cleanup

if.then8:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %msg) #9
  br label %cleanup

if.end9.fold.split:                               ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9.fold.split138:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9.fold.split139:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9.fold.split140:                            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

if.end9:                                          ; preds = %if.end9.fold.split140, %if.end9.fold.split139, %if.end9.fold.split138, %if.end9.fold.split, %for.body.preheader.if.end9_crit_edge
  %arrayidx.lcssa = phi ptr [ @nvm_params, %for.body.preheader.if.end9_crit_edge ], [ getelementptr inbounds ([5 x %struct.bnxt_dl_nvm_param], ptr @nvm_params, i32 0, i32 1), %if.end9.fold.split ], [ getelementptr inbounds ([5 x %struct.bnxt_dl_nvm_param], ptr @nvm_params, i32 0, i32 2), %if.end9.fold.split138 ], [ getelementptr inbounds ([5 x %struct.bnxt_dl_nvm_param], ptr @nvm_params, i32 0, i32 3), %if.end9.fold.split139 ], [ getelementptr inbounds ([5 x %struct.bnxt_dl_nvm_param], ptr @nvm_params, i32 0, i32 4), %if.end9.fold.split140 ]
  %nvm_param.sroa.4.0.arrayidx4.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.lcssa, i32 2
  %4 = ptrtoint ptr %nvm_param.sroa.4.0.arrayidx4.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %4)
  %nvm_param.sroa.4.0.copyload78 = load i16, ptr %nvm_param.sroa.4.0.arrayidx4.sroa_idx, align 2
  %nvm_param.sroa.5.0.arrayidx4.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.lcssa, i32 4
  %5 = ptrtoint ptr %nvm_param.sroa.5.0.arrayidx4.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %5)
  %nvm_param.sroa.5.0.copyload79134 = load i16, ptr %nvm_param.sroa.5.0.arrayidx4.sroa_idx, align 2
  %nvm_param.sroa.7.0.arrayidx4.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.lcssa, i32 6
  %6 = ptrtoint ptr %nvm_param.sroa.7.0.arrayidx4.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %6)
  %nvm_param.sroa.7.0.copyload81 = load i16, ptr %nvm_param.sroa.7.0.arrayidx4.sroa_idx, align 2
  %nvm_param.sroa.10.0.arrayidx4.sroa_idx = getelementptr inbounds i8, ptr %arrayidx.lcssa, i32 8
  %7 = ptrtoint ptr %nvm_param.sroa.10.0.arrayidx4.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %7)
  %nvm_param.sroa.10.0.copyload84 = load i8, ptr %nvm_param.sroa.10.0.arrayidx4.sroa_idx, align 2
  %8 = zext i16 %nvm_param.sroa.5.0.copyload79134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.96)
  switch i16 %nvm_param.sroa.5.0.copyload79134, label %if.end9.if.end23_crit_edge [
    i16 41, label %if.then13
    i16 42, label %if.then19
  ]

if.end9.if.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %port_id = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120, i32 1
  %9 = ptrtoint ptr %port_id to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %port_id, align 2
  %conv14 = zext i16 %10 to i32
  br label %if.end23

if.then19:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  %pf20 = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 120
  %11 = ptrtoint ptr %pf20 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %pf20, align 4
  %conv21 = zext i16 %12 to i32
  %sub = add nsw i32 %conv21, -1
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.then13, %if.end9.if.end23_crit_edge
  %idx.0 = phi i32 [ %conv14, %if.then13 ], [ %sub, %if.then19 ], [ 0, %if.end9.if.end23_crit_edge ]
  %call = call ptr @hwrm_req_dma_slice(ptr noundef %bp, ptr noundef %msg, i32 noundef 4, ptr noundef nonnull %data_dma_addr) #9
  %tobool24.not = icmp eq ptr %call, null
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %msg) #9
  br label %cleanup

if.end26:                                         ; preds = %if.end23
  %13 = ptrtoint ptr %data_dma_addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data_dma_addr, align 4
  %conv27 = zext i32 %14 to i64
  %15 = call i64 @llvm.bswap.i64(i64 %conv27)
  %dest_data_addr = getelementptr inbounds %struct.hwrm_nvm_get_variable_input, ptr %msg, i32 0, i32 5
  %16 = ptrtoint ptr %dest_data_addr to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %dest_data_addr, align 8
  %17 = call i16 @llvm.bswap.i16(i16 %nvm_param.sroa.7.0.copyload81)
  %data_len = getelementptr inbounds %struct.hwrm_nvm_get_variable_input, ptr %msg, i32 0, i32 6
  %18 = ptrtoint ptr %data_len to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %data_len, align 8
  %19 = call i16 @llvm.bswap.i16(i16 %nvm_param.sroa.4.0.copyload78)
  %option_num = getelementptr inbounds %struct.hwrm_nvm_get_variable_input, ptr %msg, i32 0, i32 7
  %20 = ptrtoint ptr %option_num to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %option_num, align 2
  %conv28 = trunc i32 %idx.0 to i16
  %21 = call i16 @llvm.bswap.i16(i16 %conv28)
  %index_0 = getelementptr inbounds %struct.hwrm_nvm_get_variable_input, ptr %msg, i32 0, i32 9
  %22 = ptrtoint ptr %index_0 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %21, ptr %index_0, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idx.0)
  %tobool29.not = icmp eq i32 %idx.0, 0
  br i1 %tobool29.not, label %if.end26.if.end31_crit_edge, label %if.then30

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then30:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %dimensions = getelementptr inbounds %struct.hwrm_nvm_get_variable_input, ptr %msg, i32 0, i32 8
  %23 = ptrtoint ptr %dimensions to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 256, ptr %dimensions, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.end26.if.end31_crit_edge
  %call32 = call ptr @hwrm_req_hold(ptr noundef %bp, ptr noundef %msg) #9
  %24 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %msg, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -3329, i16 %25)
  %cmp34 = icmp eq i16 %25, -3329
  br i1 %cmp34, label %if.then36, label %if.else41

if.then36:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %nvm_param.sroa.7.0.copyload81)
  %cmp.i = icmp eq i16 %nvm_param.sroa.7.0.copyload81, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %val, align 4, !range !195
  %28 = ptrtoint ptr %call to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %call, align 4
  br label %bnxt_copy_to_nvm_data.exit

if.end.i:                                         ; preds = %if.then36
  %29 = zext i8 %nvm_param.sroa.10.0.copyload84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %nvm_param.sroa.10.0.copyload84, label %if.end.i.if.end15.i_crit_edge [
    i8 4, label %if.then3.i
    i8 2, label %if.then6.i
    i8 1, label %if.then11.i
  ]

if.end.i.if.end15.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %val, align 4
  br label %if.end15.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %val, align 4
  %conv7.i = zext i16 %33 to i32
  br label %if.end15.i

if.then11.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %val, align 4
  %conv12.i = zext i8 %35 to i32
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then11.i, %if.then6.i, %if.then3.i, %if.end.i.if.end15.i_crit_edge
  %val32.0.i = phi i32 [ %31, %if.then3.i ], [ %conv7.i, %if.then6.i ], [ %conv12.i, %if.then11.i ], [ 0, %if.end.i.if.end15.i_crit_edge ]
  %36 = call i32 @llvm.bswap.i32(i32 %val32.0.i) #9
  %37 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %call, align 4
  br label %bnxt_copy_to_nvm_data.exit

bnxt_copy_to_nvm_data.exit:                       ; preds = %if.end15.i, %if.then.i
  %call40 = call i32 @hwrm_req_send(ptr noundef %bp, ptr noundef %msg) #9
  br label %if.end56

if.else41:                                        ; preds = %if.end31
  %call42 = call i32 @hwrm_req_send_silent(ptr noundef %bp, ptr noundef %msg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %if.else49

if.then44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %nvm_param.sroa.7.0.copyload81)
  %cmp.i113 = icmp eq i16 %nvm_param.sroa.7.0.copyload81, 1
  br i1 %cmp.i113, label %if.then.i114, label %if.end.i115

if.then.i114:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.i = icmp ne i8 %39, 0
  %frombool.i = zext i1 %tobool.i to i8
  %40 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %frombool.i, ptr %val, align 4
  br label %if.end56.thread

if.end.i115:                                      ; preds = %if.then44
  %41 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call, align 4
  %43 = call i32 @llvm.bswap.i32(i32 %42) #9
  %44 = zext i8 %nvm_param.sroa.10.0.copyload84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %nvm_param.sroa.10.0.copyload84, label %if.end.i115.if.end56.thread_crit_edge [
    i8 4, label %if.then2.i
    i8 2, label %if.then4.i
    i8 1, label %if.then8.i
  ]

if.end.i115.if.end56.thread_crit_edge:            ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.thread

if.then2.i:                                       ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %43, ptr %val, align 4
  br label %if.end56.thread

if.then4.i:                                       ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = trunc i32 %43 to i16
  %46 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 %conv.i, ptr %val, align 4
  br label %if.end56.thread

if.then8.i:                                       ; preds = %if.end.i115
  call void @__sanitizer_cov_trace_pc() #11
  %conv9.i = trunc i32 %43 to i8
  %47 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv9.i, ptr %val, align 4
  br label %if.end56.thread

if.else49:                                        ; preds = %if.else41
  %cmd_err = getelementptr inbounds %struct.hwrm_err_output, ptr %call32, i32 0, i32 6
  %48 = ptrtoint ptr %cmd_err to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cmd_err, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %49)
  %cmp51 = icmp eq i8 %49, 1
  br i1 %cmp51, label %if.else49.if.end56.thread_crit_edge, label %if.else49.if.end56_crit_edge

if.else49.if.end56_crit_edge:                     ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56

if.else49.if.end56.thread_crit_edge:              ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end56.thread

if.end56.thread:                                  ; preds = %if.else49.if.end56.thread_crit_edge, %if.then8.i, %if.then4.i, %if.then2.i, %if.end.i115.if.end56.thread_crit_edge, %if.then.i114
  %rc.0.ph = phi i32 [ 0, %if.then8.i ], [ 0, %if.then4.i ], [ 0, %if.then2.i ], [ 0, %if.end.i115.if.end56.thread_crit_edge ], [ 0, %if.then.i114 ], [ -95, %if.else49.if.end56.thread_crit_edge ]
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %msg) #9
  br label %cleanup

if.end56:                                         ; preds = %if.else49.if.end56_crit_edge, %bnxt_copy_to_nvm_data.exit
  %rc.0 = phi i32 [ %call40, %bnxt_copy_to_nvm_data.exit ], [ %call42, %if.else49.if.end56_crit_edge ]
  call void @hwrm_req_drop(ptr noundef %bp, ptr noundef %msg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -13, i32 %rc.0)
  %cmp57 = icmp eq i32 %rc.0, -13
  br i1 %cmp57, label %if.then59, label %if.end56.cleanup_crit_edge

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then59:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.bnxt, ptr %bp, i32 0, i32 8
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @netdev_err(ptr noundef %51, ptr noundef nonnull @.str.81) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %if.end56.cleanup_crit_edge, %if.end56.thread, %if.then25, %if.then8, %if.then
  %retval.0 = phi i32 [ -1, %if.then ], [ -95, %if.then8 ], [ -12, %if.then25 ], [ -13, %if.then59 ], [ %rc.0, %if.end56.cleanup_crit_edge ], [ %rc.0.ph, %if.end56.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data_dma_addr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_params_unregister(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 255, i32 24}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 295, i32 53}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 1215, i32 24}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 1239, i32 23}
!8 = !{ptr @bnxt_vf_dl_ops, !9, !"bnxt_vf_dl_ops", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 627, i32 33}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 238, i32 10}
!12 = !{ptr @bnxt_dl_fw_reporter_ops, !13, !"bnxt_dl_fw_reporter_ops", i1 false, i1 false}
!13 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 237, i32 49}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 205, i32 43}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 208, i32 43}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 211, i32 40}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 109, i32 45}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 109, i32 55}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 112, i32 55}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 117, i32 53}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 126, i32 12}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 128, i32 53}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 131, i32 40}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 135, i32 53}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 140, i32 42}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 146, i32 43}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 151, i32 44}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 152, i32 10}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 164, i32 39}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 167, i32 39}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 170, i32 39}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 173, i32 39}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 176, i32 39}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 179, i32 41}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 79, i32 31}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 80, i32 32}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 81, i32 36}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 82, i32 30}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 90, i32 38}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 91, i32 41}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 92, i32 39}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 93, i32 32}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 94, i32 33}
!74 = !{ptr @bnxt_dl_ops, !75, !"bnxt_dl_ops", i1 false, i1 false}
!75 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 613, i32 33}
!76 = !{ptr @bnxt_dl_reload_down.__msg, !77, !"__msg", i1 false, i1 false}
!77 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 470, i32 4}
!78 = !{ptr @bnxt_dl_reload_down.__msg.35, !79, !"__msg", i1 false, i1 false}
!79 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 483, i32 5}
!80 = !{ptr @bnxt_dl_reload_down.__msg.36, !81, !"__msg", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 492, i32 4}
!82 = !{ptr @bnxt_dl_reload_down.__msg.37, !83, !"__msg", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 508, i32 4}
!84 = !{ptr @bnxt_dl_reload_down.__msg.38, !85, !"__msg", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 512, i32 4}
!86 = !{ptr @bnxt_dl_reload_down.__msg.39, !87, !"__msg", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 529, i32 4}
!88 = !{ptr @bnxt_dl_livepatch_activate.__msg, !89, !"__msg", i1 false, i1 false}
!89 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 394, i32 3}
!90 = !{ptr @bnxt_dl_livepatch_activate.__msg.40, !91, !"__msg", i1 false, i1 false}
!91 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 415, i32 4}
!92 = !{ptr @bnxt_dl_livepatch_activate.__msg.41, !93, !"__msg", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 446, i32 4}
!94 = !{ptr @bnxt_dl_livepatch_activate.__msg.42, !95, !"__msg", i1 false, i1 false}
!95 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 449, i32 4}
!96 = !{ptr @.str.43, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 338, i32 23}
!98 = !{ptr @bnxt_dl_livepatch_report_err.__msg, !99, !"__msg", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 339, i32 3}
!100 = !{ptr @bnxt_dl_livepatch_report_err.__msg.44, !101, !"__msg", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 342, i32 3}
!102 = !{ptr @bnxt_dl_livepatch_report_err.__msg.45, !103, !"__msg", i1 false, i1 false}
!103 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 345, i32 3}
!104 = !{ptr @bnxt_dl_livepatch_report_err.__msg.46, !105, !"__msg", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 348, i32 3}
!106 = !{ptr @bnxt_dl_livepatch_report_err.__msg.47, !107, !"__msg", i1 false, i1 false}
!107 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 352, i32 3}
!108 = !{ptr @bnxt_dl_livepatch_report_err.__msg.48, !109, !"__msg", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 355, i32 3}
!110 = !{ptr @bnxt_dl_livepatch_report_err.__msg.49, !111, !"__msg", i1 false, i1 false}
!111 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 358, i32 3}
!112 = !{ptr @bnxt_dl_livepatch_report_err.__msg.50, !113, !"__msg", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 361, i32 3}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 364, i32 23}
!116 = !{ptr @bnxt_dl_livepatch_report_err.__msg.52, !117, !"__msg", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 365, i32 3}
!118 = !{ptr @bnxt_dl_reload_up.__msg, !119, !"__msg", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 572, i32 4}
!120 = !{ptr @bnxt_dl_reload_up.__msg.53, !121, !"__msg", i1 false, i1 false}
!121 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 577, i32 5}
!122 = !{ptr @bnxt_dl_reload_up.__msg.54, !123, !"__msg", i1 false, i1 false}
!123 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 582, i32 5}
!124 = !{ptr @.str.55, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 834, i32 41}
!126 = !{ptr @.str.56, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 839, i32 16}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 854, i32 10}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 859, i32 15}
!132 = !{ptr @.str.59, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 861, i32 10}
!134 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 866, i32 15}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 868, i32 10}
!138 = !{ptr @.str.62, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 873, i32 10}
!140 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 886, i32 16}
!142 = !{ptr @.str.64, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 896, i32 38}
!144 = !{ptr @.str.65, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 921, i32 10}
!146 = !{ptr @.str.66, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 926, i32 10}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 932, i32 10}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 937, i32 10}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 982, i32 43}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 985, i32 45}
!156 = !{ptr @bnxt_dl_flash_update.__msg, !157, !"__msg", i1 false, i1 false}
!157 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 42, i32 3}
!158 = !{ptr @.str.71, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 47, i32 41}
!160 = !{ptr @.str.72, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 50, i32 42}
!162 = !{ptr @.str.73, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 52, i32 42}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 1182, i32 24}
!166 = !{ptr @.str.75, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 1141, i32 2}
!168 = !{ptr @.str.76, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 1145, i32 2}
!170 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 1149, i32 2}
!172 = !{ptr @.str.78, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 1153, i32 2}
!174 = !{ptr @.str.79, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 1157, i32 2}
!176 = !{ptr @.str.80, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 1163, i32 2}
!178 = !{ptr @bnxt_dl_params, !179, !"bnxt_dl_params", i1 false, i1 false}
!179 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 1140, i32 35}
!180 = !{ptr @.str.81, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 1055, i32 23}
!182 = !{ptr @nvm_params, !183, !"nvm_params", i1 false, i1 false}
!183 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 634, i32 39}
!184 = !{ptr @bnxt_dl_msix_validate.__msg, !185, !"__msg", i1 false, i1 false}
!185 = !{!"../drivers/net/ethernet/broadcom/bnxt/bnxt_devlink.c", i32 1107, i32 3}
!186 = !{i32 1, !"wchar_size", i32 2}
!187 = !{i32 1, !"min_enum_size", i32 4}
!188 = !{i32 8, !"branch-target-enforcement", i32 0}
!189 = !{i32 8, !"sign-return-address", i32 0}
!190 = !{i32 8, !"sign-return-address-all", i32 0}
!191 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!192 = !{i32 7, !"uwtable", i32 1}
!193 = !{i32 7, !"frame-pointer", i32 2}
!194 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!195 = !{i8 0, i8 2}
!196 = !{!"auto-init"}
