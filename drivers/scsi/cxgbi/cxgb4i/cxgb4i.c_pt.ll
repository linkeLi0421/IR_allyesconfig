; ModuleID = '/llk/IR_all_yes/drivers/scsi/cxgbi/cxgb4i/cxgb4i.c_pt.bc'
source_filename = "../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.171 }
%union.anon.171 = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.iscsi_transport = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.128, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.128 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.106, i32, %struct.spinlock }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { ptr, ptr }
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
%struct.cxgb4_uld_info = type { [16 x i8], ptr, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.scsi_host_template = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i16, i16, i32, i32, i32, i32, i16, i8, i32, i8, i32, ptr, ptr, i64, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.dcb_app_type = type { i32, %struct.dcb_app, %struct.list_head, i8 }
%struct.dcb_app = type { i8, i8, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.178, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.200, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.178 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.200 = type { ptr }
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
%struct.cxgbi_device = type { %struct.list_head, %struct.list_head, i32, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.cxgbi_ports_map, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.cxgbi_ports_map = type { i32, i32, i16, %struct.spinlock, i32, ptr }
%struct.cxgbi_sock = type { ptr, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i8, i32, i32, i32, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.kref, i32, i32, %union.anon.205, %union.anon.206, ptr, %struct.sk_buff_head, %struct.sk_buff_head, %struct.timer_list, %struct.completion, i32, %struct.rwlock_t, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32 }
%union.anon.205 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.110 }
%union.anon.110 = type { [4 x i32] }
%union.anon.206 = type { %struct.sockaddr_in6 }
%struct.cxgbi_tag_format = type { [4 x i8], i8, i8, i8, i8, i32, i32, i32, i32, i32 }
%struct.cxgb4_lld_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i16, i8, i8, i8, i8, i8, i32, i32, i32, i16, i16, i32, i16, [4 x i16], ptr, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i8, i32, i32, i32, i32, ptr, i32, i8, i8, i8 }
%struct.cxgb4_virt_res = type { %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, %struct.cxgb4_range, i32, %struct.cxgb4_range }
%struct.cxgb4_range = type { i32, i32 }
%struct.adapter = type { ptr, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, %struct.adapter_params, %struct.cxgb4_virt_res, i32, ptr, %struct.msix_bmap, %struct.doorbell_stats, [36 x i8], %struct.sge, [4 x ptr], [4 x i8], ptr, i8, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, ptr, ptr, [8 x ptr], i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, [64 x i8], %struct.tid_info, ptr, %struct.spinlock, ptr, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.work_struct, i8, %struct.spinlock, %struct.mbox_list, ptr, %struct.mutex, ptr, i8, i8, ptr, %struct.ptp_clock_info, ptr, %struct.spinlock, %struct.spinlock, [48 x i8], %struct.spinlock, ptr, %struct.chcr_ktls, %struct.chcr_stats_debug, %struct.ch_ktls_stats_debug, %struct.ch_ipsec_stats_debug, i8, %struct.rhashtable, %struct.rhashtable_params, %struct.timer_list, %struct.work_struct, %struct.ethtool_dump, %struct.hma_data, ptr, %struct.vmcoredd_data, %struct.ch_thermal, ptr, ptr, ptr, [88 x i8] }
%struct.adapter_params = type { %struct.sge_params, %struct.tp_params, %struct.vpd_params, %struct.pf_resources, %struct.pci_params, %struct.devlog_params, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i8], [16 x i16], [32 x i16], [32 x i16], i8, i8, i32, %struct.arch_specific_params, i8, i8, i8, i8, i8, i32, i8, i32, i32, i32, i8, i8, i8, i8, [4 x i8], i8, i8 }
%struct.sge_params = type { i32, i32, i32 }
%struct.tp_params = type { i32, i32, i16, i32, [4 x i16], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.vpd_params = type { i32, [25 x i8], [17 x i8], [17 x i8], [13 x i8] }
%struct.pf_resources = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_params = type { i8, i8 }
%struct.devlog_params = type { i32, i32, i32 }
%struct.arch_specific_params = type { i8, i8, i8, i16, i16, i32, i16 }
%struct.msix_bmap = type { ptr, i32, %struct.spinlock }
%struct.doorbell_stats = type { i32, i32, i32 }
%struct.sge = type { [32 x %struct.sge_eth_txq], %struct.sge_eth_txq, [4 x %struct.sge_ctrl_txq], [32 x %struct.sge_eth_rxq], %struct.sge_rspq, ptr, ptr, [16 x i8], %struct.sge_rspq, %struct.spinlock, ptr, ptr, [4 x ptr], i16, i16, i16, i16, i16, i16, i16, [6 x i16], [4 x i8], i16, [8 x i16], i32, i32, i32, i32, i32, %struct.sge_idma_monitor_state, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, %struct.timer_list, i32, i32, [96 x i8] }
%struct.sge_eth_txq = type { %struct.sge_txq, ptr, i8, i8, i32, i32, i32, i32, i32, i32, [116 x i8] }
%struct.sge_txq = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, %struct.spinlock, i32, i16, i16, ptr, i32 }
%struct.sge_ctrl_txq = type { %struct.sge_txq, ptr, %struct.sk_buff_head, %struct.tasklet_struct, i8, [63 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.207, i32 }
%union.anon.207 = type { ptr }
%struct.sge_eth_rxq = type { %struct.sge_rspq, %struct.sge_fl, %struct.sge_eth_stats, ptr, [56 x i8] }
%struct.sge_fl = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, i32 }
%struct.sge_eth_stats = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.sge_rspq = type { %struct.napi_struct, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16, ptr, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.t4_lro_mgr }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.t4_lro_mgr = type { i8, i32, i32, %struct.sk_buff_head }
%struct.sge_idma_monitor_state = type { i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32] }
%struct.tid_info = type { ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, [32 x i8], %struct.spinlock, ptr, i32, %struct.spinlock, i32, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.spinlock, i32, [68 x i8] }
%struct.mbox_list = type { %struct.list_head }
%struct.ptp_clock_info = type { ptr, [32 x i8], i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.chcr_ktls = type { %struct.refcount_struct }
%struct.chcr_stats_debug = type { %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t }
%struct.ch_ktls_stats_debug = type { [4 x %struct.ch_ktls_port_stats_debug], %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.ch_ktls_port_stats_debug = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.ch_ipsec_stats_debug = type { %struct.atomic_t }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.ethtool_dump = type { i32, i32, i32, i32, [0 x i8] }
%struct.hma_data = type { i8, ptr, ptr }
%struct.vmcoredd_data = type { [44 x i8], i32, ptr }
%struct.ch_thermal = type { ptr, i32, i32 }
%struct.cxgbi_hba = type { ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.pkt_gl = type { i64, [17 x %struct.page_frag], ptr, i32, i32 }
%struct.page_frag = type { ptr, i16, i16 }
%struct.work_request_hdr = type { i32, i32, i64 }
%struct.cpl_set_tcb_field = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i64, i64 }
%union.opcode_tid = type { i32 }
%struct.cxgbi_task_tag_info = type { i8, i8, i16, i32, i32, i32, %struct.cxgbi_pagepod_hdr, i32, i32, ptr }
%struct.cxgbi_pagepod_hdr = type { i32, i32, i32, i32, i64 }
%struct.cxgbi_ppm = type { %struct.kref, ptr, ptr, ptr, ptr, %struct.cxgbi_tag_format, i32, i32, i32, i32, i32, ptr, %struct.spinlock, i32, i32, i32, ptr, [0 x %struct.cxgbi_ppod_data] }
%struct.cxgbi_ppod_data = type { i8, i8, i16, i32 }
%struct.ulp_mem_io = type { %struct.work_request_hdr, i32, i32, i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.cxgbi_iso_info = type { i8, i8, i8, i8, i32, i32, i32, i32, i32, i32 }
%struct.fw_ofld_tx_data_wr = type { i32, i32, i32, i32 }
%struct.cpl_tx_data_iso = type { i32, i8, i8, i16, i32, i32, i32, i32, i32, i32 }
%struct.cpl_abort_req = type { %struct.work_request_hdr, %union.opcode_tid, i32, i8, i8, [6 x i8] }
%struct.cpl_close_con_req = type { %struct.work_request_hdr, %union.opcode_tid, i32 }
%struct.cpl_rx_data_ack = type { %struct.work_request_hdr, %union.opcode_tid, i32 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.dcbnl_rtnl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.l2t_entry = type { i16, i16, [4 x i32], i32, ptr, ptr, ptr, %struct.sk_buff_head, %struct.spinlock, %struct.atomic_t, i16, i16, i8, i8, [6 x i8] }
%struct.fw_flowc_wr = type { i32, i32, [0 x %struct.fw_flowc_mnemval] }
%struct.fw_flowc_mnemval = type { i8, [3 x i8], i32 }
%struct.cpl_act_open_req = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i32, i32, i64, i32, i32 }
%struct.cpl_t5_act_open_req = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i32, i32, i64, i32, i32, i64 }
%struct.cpl_t6_act_open_req = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i32, i32, i64, i32, i32, i64, i32, i32 }
%struct.cpl_act_open_req6 = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i64, i64, i64, i64, i64, i32, i32 }
%struct.cpl_t5_act_open_req6 = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i64, i64, i64, i64, i64, i32, i32, i64 }
%struct.cpl_t6_act_open_req6 = type { %struct.work_request_hdr, %union.opcode_tid, i16, i16, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32 }
%struct.cpl_act_open_rpl = type { %union.opcode_tid, i32 }
%union.aopen_entry = type { ptr }
%struct.cpl_abort_req_rss = type { %union.opcode_tid, [3 x i8], i8 }
%struct.cpl_abort_rpl = type { %struct.work_request_hdr, %union.opcode_tid, i32, i8, i8, [6 x i8] }
%struct.cpl_abort_rpl_rss = type { %union.opcode_tid, [3 x i8], i8 }
%struct.cpl_close_con_rpl = type { %union.opcode_tid, [3 x i8], i8, i32, i32 }
%struct.cpl_iscsi_hdr = type { %union.opcode_tid, i16, i16, i32, i16, i8, i8 }
%struct.cpl_set_tcb_rpl = type { %union.opcode_tid, i16, i8, i8, i64 }
%struct.cpl_act_establish = type { %union.opcode_tid, i32, i32, i16, i16, i32, i32 }
%struct.cpl_rx_data_ddp = type { %union.opcode_tid, i16, i16, i32, %union.anon.212, i32, i32 }
%union.anon.212 = type { i32 }
%struct.cpl_rx_iscsi_cmp = type { %union.opcode_tid, i16, i16, i32, i16, i8, i8, i32, i32 }
%struct.cpl_fw4_ack = type { %union.opcode_tid, i8, [2 x i8], i8, i32, i32, i64 }

@__UNIQUE_ID_author689 = internal constant [43 x i8] c"cxgb4i.author=Chelsio Communications, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description690 = internal constant [46 x i8] c"cxgb4i.description=Chelsio T4-T6 iSCSI Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_version691 = internal constant [24 x i8] c"cxgb4i.version=0.9.5-ko\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cxgb4i\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0.9.5-ko\00", [23 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_file692 = internal constant [45 x i8] c"cxgb4i.file=drivers/scsi/cxgbi/cxgb4i/cxgb4i\00", section ".modinfo", align 1
@__UNIQUE_ID_license693 = internal constant [19 x i8] c"cxgb4i.license=GPL\00", section ".modinfo", align 1
@__param_str_dbg_level = internal constant [17 x i8] c"cxgb4i.dbg_level\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@dbg_level = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_dbg_level = internal constant %struct.kernel_param { ptr @__param_str_dbg_level, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.171 { ptr @dbg_level } }, section "__param", align 4
@__UNIQUE_ID_dbg_leveltype694 = internal constant [31 x i8] c"cxgb4i.parmtype=dbg_level:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_dbg_level695 = internal constant [45 x i8] c"cxgb4i.parm=dbg_level:Debug flag (default=0)\00", section ".modinfo", align 1
@__param_str_cxgb4i_rcv_win = internal constant [22 x i8] c"cxgb4i.cxgb4i_rcv_win\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@cxgb4i_rcv_win = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_cxgb4i_rcv_win = internal constant %struct.kernel_param { ptr @__param_str_cxgb4i_rcv_win, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.171 { ptr @cxgb4i_rcv_win } }, section "__param", align 4
@__UNIQUE_ID_cxgb4i_rcv_wintype696 = internal constant [35 x i8] c"cxgb4i.parmtype=cxgb4i_rcv_win:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cxgb4i_rcv_win697 = internal constant [55 x i8] c"cxgb4i.parm=cxgb4i_rcv_win:TCP receive window in bytes\00", section ".modinfo", align 1
@__param_str_cxgb4i_snd_win = internal constant [22 x i8] c"cxgb4i.cxgb4i_snd_win\00", align 1
@cxgb4i_snd_win = internal global { i32, [28 x i8] } { i32 -1, [28 x i8] zeroinitializer }, align 32
@__param_cxgb4i_snd_win = internal constant %struct.kernel_param { ptr @__param_str_cxgb4i_snd_win, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.171 { ptr @cxgb4i_snd_win } }, section "__param", align 4
@__UNIQUE_ID_cxgb4i_snd_wintype698 = internal constant [35 x i8] c"cxgb4i.parmtype=cxgb4i_snd_win:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cxgb4i_snd_win699 = internal constant [52 x i8] c"cxgb4i.parm=cxgb4i_snd_win:TCP send window in bytes\00", section ".modinfo", align 1
@__param_str_cxgb4i_rx_credit_thres = internal constant [30 x i8] c"cxgb4i.cxgb4i_rx_credit_thres\00", align 1
@cxgb4i_rx_credit_thres = internal global { i32, [28 x i8] } { i32 10240, [28 x i8] zeroinitializer }, align 32
@__param_cxgb4i_rx_credit_thres = internal constant %struct.kernel_param { ptr @__param_str_cxgb4i_rx_credit_thres, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.171 { ptr @cxgb4i_rx_credit_thres } }, section "__param", align 4
@__UNIQUE_ID_cxgb4i_rx_credit_threstype700 = internal constant [43 x i8] c"cxgb4i.parmtype=cxgb4i_rx_credit_thres:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cxgb4i_rx_credit_thres701 = internal constant [87 x i8] c"cxgb4i.parm=cxgb4i_rx_credit_thres:RX credits return threshold in bytes (default=10KB)\00", section ".modinfo", align 1
@__param_str_cxgb4i_max_connect = internal constant [26 x i8] c"cxgb4i.cxgb4i_max_connect\00", align 1
@cxgb4i_max_connect = internal global { i32, [28 x i8] } { i32 8192, [28 x i8] zeroinitializer }, align 32
@__param_cxgb4i_max_connect = internal constant %struct.kernel_param { ptr @__param_str_cxgb4i_max_connect, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.171 { ptr @cxgb4i_max_connect } }, section "__param", align 4
@__UNIQUE_ID_cxgb4i_max_connecttype702 = internal constant [40 x i8] c"cxgb4i.parmtype=cxgb4i_max_connect:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_cxgb4i_max_connect703 = internal constant [61 x i8] c"cxgb4i.parm=cxgb4i_max_connect:Maximum number of connections\00", section ".modinfo", align 1
@__param_str_cxgb4i_sport_base = internal constant [25 x i8] c"cxgb4i.cxgb4i_sport_base\00", align 1
@param_ops_ushort = external dso_local constant %struct.kernel_param_ops, align 4
@cxgb4i_sport_base = internal global { i16, [30 x i8] } { i16 20000, [30 x i8] zeroinitializer }, align 32
@__param_cxgb4i_sport_base = internal constant %struct.kernel_param { ptr @__param_str_cxgb4i_sport_base, ptr null, ptr @param_ops_ushort, i16 420, i8 -1, i8 0, %union.anon.171 { ptr @cxgb4i_sport_base } }, section "__param", align 4
@__UNIQUE_ID_cxgb4i_sport_basetype704 = internal constant [41 x i8] c"cxgb4i.parmtype=cxgb4i_sport_base:ushort\00", section ".modinfo", align 1
@__UNIQUE_ID_cxgb4i_sport_base705 = internal constant [67 x i8] c"cxgb4i.parm=cxgb4i_sport_base:Starting port number (default 20000)\00", section ".modinfo", align 1
@cxgb4_dcb_change = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @cxgb4_dcb_change_notify, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@cxgb4i_iscsi_transport = internal global { %struct.iscsi_transport, [60 x i8] } { %struct.iscsi_transport { ptr null, ptr @.str.1, i32 12473, ptr @cxgbi_create_session, ptr @cxgbi_destroy_session, ptr @cxgbi_create_conn, ptr @iscsi_conn_unbind, ptr @cxgbi_bind_conn, ptr @iscsi_conn_start, ptr @iscsi_conn_stop, ptr @iscsi_tcp_conn_teardown, ptr @cxgbi_set_conn_param, ptr @cxgbi_get_ep_param, ptr @iscsi_conn_get_param, ptr @iscsi_session_get_param, ptr @cxgbi_get_host_param, ptr @cxgbi_set_host_param, ptr @iscsi_conn_send_pdu, ptr @cxgbi_get_conn_stats, ptr @iscsi_tcp_task_init, ptr @iscsi_tcp_task_xmit, ptr @cxgbi_cleanup_task, ptr @cxgbi_conn_alloc_pdu, ptr @cxgbi_conn_xmit_pdu, ptr @cxgbi_conn_init_pdu, ptr @cxgbi_parse_pdu_itt, ptr @iscsi_session_recovery_timedout, ptr @cxgbi_ep_connect, ptr @cxgbi_ep_poll, ptr @cxgbi_ep_disconnect, ptr null, ptr null, ptr null, ptr null, ptr @cxgbi_attr_is_visible, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@cxgb4i_stt = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_cxgb4i__712_2471_cxgb4i_init_module6 = internal global ptr @cxgb4i_init_module, section ".initcall6.init", align 4
@__exitcall_cxgb4i_exit_module = internal global ptr @cxgb4i_exit_module, section ".exitcall.exit", align 4
@cxgb4_dcb_change_notify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cxgb4i:%s: iSCSI priority for ifid %d is %u\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cxgb4_dcb_change_notify\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/scsi/cxgbi/cxgb4i/cxgb4i.c\00", [61 x i8] zeroinitializer }, align 32
@cxgb4_dcb_change_notify._entry_ptr = internal global ptr @cxgb4_dcb_change_notify._entry, section ".printk_index", align 4
@init_net = external dso_local global %struct.net, align 128
@cxgb4_dcb_change_notify._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 2435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016cxgb4i:%s: Restarting iSCSI connection %p with priority %u->%u.\0A\00", [61 x i8] zeroinitializer }, align 32
@cxgb4_dcb_change_notify._entry_ptr.8 = internal global ptr @cxgb4_dcb_change_notify._entry.6, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@cxgb4i_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.5, i32 2447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\016%s\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cxgb4i_init_module\00", [45 x i8] zeroinitializer }, align 32
@cxgb4i_init_module._entry_ptr = internal global ptr @cxgb4i_init_module._entry, section ".printk_index", align 4
@version = internal global { [57 x i8], [39 x i8] } { [57 x i8] c"Chelsio T4-T6 iSCSI Driver cxgb4i v0.9.5-ko (Apr. 2015)\0A\00", [39 x i8] zeroinitializer }, align 32
@cxgb4i_uld_info = internal constant { %struct.cxgb4_uld_info, [56 x i8] } { %struct.cxgb4_uld_info { [16 x i8] c"cxgb4i\00\00\00\00\00\00\00\00\00\00", ptr null, i32 16, i32 1024, i32 16, i8 0, i8 0, ptr @t4_uld_add, ptr @t4_uld_rx_handler, ptr @t4_uld_state_change, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@cxgb4i_init_module._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.5, i32 2455, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016cxgb4i:%s: %s dcb enabled.\0A\00", [34 x i8] zeroinitializer }, align 32
@cxgb4i_init_module._entry_ptr.13 = internal global ptr @cxgb4i_init_module._entry.11, section ".printk_index", align 4
@t4_uld_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.5, i32 2223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cxgb4i:%s: t4 device 0x%p, register failed.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"t4_uld_add\00", [21 x i8] zeroinitializer }, align 32
@t4_uld_add._entry_ptr = internal global ptr @t4_uld_add._entry, section ".printk_index", align 4
@t4_uld_add._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.5, i32 2229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016cxgb4i:%s: 0x%p,0x%x, ports %u,%s, chan %u, q %u,%u, wr %u.\0A\00", [33 x i8] zeroinitializer }, align 32
@t4_uld_add._entry_ptr.18 = internal global ptr @t4_uld_add._entry.16, section ".printk_index", align 4
@t4_uld_add._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.15, ptr @.str.5, i32 2233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016cxgb4i:%s: t4 0x%p, rxq id #%d: %u.\0A\00", [57 x i8] zeroinitializer }, align 32
@t4_uld_add._entry_ptr.21 = internal global ptr @t4_uld_add._entry.19, section ".printk_index", align 4
@t4_uld_add._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.15, ptr @.str.5, i32 2251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016cxgb4i:%s: cdev 0x%p,%s, pfvf %u.\0A\00", [59 x i8] zeroinitializer }, align 32
@t4_uld_add._entry_ptr.24 = internal global ptr @t4_uld_add._entry.22, section ".printk_index", align 4
@t4_uld_add._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.15, ptr @.str.5, i32 2255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016cxgb4i:%s: t4 0x%p ddp init failed %d.\0A\00", [54 x i8] zeroinitializer }, align 32
@t4_uld_add._entry_ptr.27 = internal global ptr @t4_uld_add._entry.25, section ".printk_index", align 4
@t4_uld_add._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.15, ptr @.str.5, i32 2271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016cxgb4i:%s: %s: 0x%p, tid %u, SO adapter.\0A\00", [52 x i8] zeroinitializer }, align 32
@t4_uld_add._entry_ptr.30 = internal global ptr @t4_uld_add._entry.28, section ".printk_index", align 4
@t4_uld_add._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.15, ptr @.str.5, i32 2274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cxgb4i:%s: %s, 0x%p, NO adapter struct.\0A\00", [53 x i8] zeroinitializer }, align 32
@t4_uld_add._entry_ptr.33 = internal global ptr @t4_uld_add._entry.31, section ".printk_index", align 4
@t4_uld_add._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.15, ptr @.str.5, i32 2285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016cxgb4i:%s: t4 0x%p ofld init failed.\0A\00", [56 x i8] zeroinitializer }, align 32
@t4_uld_add._entry_ptr.36 = internal global ptr @t4_uld_add._entry.34, section ".printk_index", align 4
@cxgb4i_host_template = internal global { %struct.scsi_host_template, [48 x i8] } { %struct.scsi_host_template { i32 0, ptr @iscsi_queuecommand, ptr null, ptr null, ptr @.str.1, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_eh_abort, ptr @iscsi_eh_device_reset, ptr @iscsi_eh_recover_target, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_target_alloc, ptr null, ptr null, ptr null, ptr @scsi_change_queue_depth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iscsi_eh_cmd_timed_out, ptr null, ptr null, ptr @.str.1, ptr null, i32 1024, i32 -1, i16 128, i16 0, i32 65535, i32 0, i32 4095, i32 0, i16 32, i8 0, i32 0, i8 -128, i32 0, ptr null, ptr null, i64 0, ptr null, i32 0 }, [48 x i8] zeroinitializer }, align 32
@cxgb4i_ddp_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.5, i32 2159, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014cxgb4i:%s: %s, iscsi NOT enabled, check config!\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxgb4i_ddp_init\00", [16 x i8] zeroinitializer }, align 32
@cxgb4i_ddp_init._entry_ptr = internal global ptr @cxgb4i_ddp_init._entry, section ".printk_index", align 4
@cxgb4i_ddp_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.5, i32 2172, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016cxgb4i:%s: iscsi_edram.start 0x%x iscsi_edram.size 0x%x\00", [38 x i8] zeroinitializer }, align 32
@cxgb4i_ddp_init._entry_ptr.41 = internal global ptr @cxgb4i_ddp_init._entry.39, section ".printk_index", align 4
@cxgbi_tagmask_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.44, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\016cxgb4i:%s: ippm: tagmask 0x%x, rsvd %u=%u+%u+1, mask 0x%x,0x%x, pg %u,%u,%u,%u.\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgbi_tagmask_check\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.h\00", [45 x i8] zeroinitializer }, align 32
@cxgbi_tagmask_check._entry_ptr = internal global ptr @cxgbi_tagmask_check._entry, section ".printk_index", align 4
@ddp_setup_conn_digest._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.5, i32 2136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016cxgb4i:%s: csk 0x%p, tid 0x%x, crc %d,%d.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ddp_setup_conn_digest\00", [42 x i8] zeroinitializer }, align 32
@ddp_setup_conn_digest._entry_ptr = internal global ptr @ddp_setup_conn_digest._entry, section ".printk_index", align 4
@alloc_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.49, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cxgb4i:%s: alloc cpl wr skb %u+%u, OOM.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"alloc_wr\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/scsi/cxgbi/cxgb4i/../libcxgbi.h\00", [56 x i8] zeroinitializer }, align 32
@alloc_wr._entry_ptr = internal global ptr @alloc_wr._entry, section ".printk_index", align 4
@ddp_setup_conn_pgidx._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.5, i32 2100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016cxgb4i:%s: csk 0x%p, tid 0x%x, pg_idx %u.\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ddp_setup_conn_pgidx\00", [43 x i8] zeroinitializer }, align 32
@ddp_setup_conn_pgidx._entry_ptr = internal global ptr @ddp_setup_conn_pgidx._entry, section ".printk_index", align 4
@ddp_ppod_init_idata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.5, i32 2005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013cxgb4i:%s: %s: %s idx %u, npods %u, OOM.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ddp_ppod_init_idata\00", [44 x i8] zeroinitializer }, align 32
@ddp_ppod_init_idata._entry_ptr = internal global ptr @ddp_ppod_init_idata._entry, section ".printk_index", align 4
@cxgb4i_ofld_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.5, i32 1963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016cxgb4i:%s: cdev 0x%p, offload up, added.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cxgb4i_ofld_init\00", [47 x i8] zeroinitializer }, align 32
@cxgb4i_ofld_init._entry_ptr = internal global ptr @cxgb4i_ofld_init._entry, section ".printk_index", align 4
@release_offload_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.5, i32 1693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016cxgb4i:%s: csk 0x%p,%u,0x%lx,%u.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"release_offload_resources\00", [38 x i8] zeroinitializer }, align 32
@release_offload_resources._entry_ptr = internal global ptr @release_offload_resources._entry, section ".printk_index", align 4
@__func__.l2t_put = private unnamed_addr constant [8 x i8] c"l2t_put\00", align 1
@__func__.free_atid = private unnamed_addr constant [10 x i8] c"free_atid\00", align 1
@cxgbi_sock_clear_flag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.49, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016cxgb4i:%s: csk 0x%p,%u,0x%lx, bit %d.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxgbi_sock_clear_flag\00", [42 x i8] zeroinitializer }, align 32
@cxgbi_sock_clear_flag._entry_ptr = internal global ptr @cxgbi_sock_clear_flag._entry, section ".printk_index", align 4
@__cxgbi_sock_put._entry = internal constant %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.49, i32 325, ptr null, ptr null }, align 1
@.str.60 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016cxgb4i:%s: %s, put csk 0x%p, ref %u-1.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__cxgbi_sock_put\00", [47 x i8] zeroinitializer }, align 32
@__cxgbi_sock_put._entry_ptr = internal global ptr @__cxgbi_sock_put._entry, section ".printk_index", align 4
@cxgbi_sock_free._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.63, ptr @.str.49, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016cxgb4i:%s: free csk 0x%p, state %u, flags 0x%lx\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cxgbi_sock_free\00", [16 x i8] zeroinitializer }, align 32
@cxgbi_sock_free._entry_ptr = internal global ptr @cxgbi_sock_free._entry, section ".printk_index", align 4
@push_tx_frames._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.5, i32 776, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016cxgb4i:%s: csk 0x%p,%u,0x%lx,%u, in closing state.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"push_tx_frames\00", [17 x i8] zeroinitializer }, align 32
@push_tx_frames._entry_ptr = internal global ptr @push_tx_frames._entry, section ".printk_index", align 4
@push_tx_frames._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.5, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cxgb4i:%s: csk 0x%p, skb %u/%u, wr %d < %u.\0A\00", [49 x i8] zeroinitializer }, align 32
@push_tx_frames._entry_ptr.68 = internal global ptr @push_tx_frames._entry.66, section ".printk_index", align 4
@push_tx_frames._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.65, ptr @.str.5, i32 836, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016cxgb4i:%s: csk 0x%p, skb %u/%u, wr %d, left %u, unack %u.\0A\00", [35 x i8] zeroinitializer }, align 32
@push_tx_frames._entry_ptr.71 = internal global ptr @push_tx_frames._entry.69, section ".printk_index", align 4
@push_tx_frames._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.65, ptr @.str.5, i32 873, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016cxgb4i:%s: csk 0x%p,%u,0x%lx,%u, skb 0x%p, %u.\0A\00", [46 x i8] zeroinitializer }, align 32
@push_tx_frames._entry_ptr.74 = internal global ptr @push_tx_frames._entry.72, section ".printk_index", align 4
@send_tx_flowc_wr._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.75, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.send_tx_flowc_wr = private unnamed_addr constant [17 x i8] c"send_tx_flowc_wr\00", align 1
@send_tx_flowc_wr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @__func__.send_tx_flowc_wr, ptr @.str.5, i32 656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014cxgb4i:%s: csk %u without VLAN Tag on DCB Link\0A\00", [46 x i8] zeroinitializer }, align 32
@send_tx_flowc_wr._entry_ptr = internal global ptr @send_tx_flowc_wr._entry, section ".printk_index", align 4
@send_tx_flowc_wr._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @__func__.send_tx_flowc_wr, ptr @.str.5, i32 670, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016cxgb4i:%s: csk 0x%p, tid 0x%x, %u,%u,%u,%u,%u,%u,%u.\0A\00", [40 x i8] zeroinitializer }, align 32
@send_tx_flowc_wr._entry_ptr.79 = internal global ptr @send_tx_flowc_wr._entry.77, section ".printk_index", align 4
@cxgbi_sock_set_flag._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.80, ptr @.str.49, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cxgbi_sock_set_flag\00", [44 x i8] zeroinitializer }, align 32
@cxgbi_sock_set_flag._entry_ptr = internal global ptr @cxgbi_sock_set_flag._entry, section ".printk_index", align 4
@ulp2_extra_len = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 4, i32 4, i32 8], [16 x i8] zeroinitializer }, align 32
@cxgb4i_make_tx_iso_cpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.82, ptr @.str.5, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\016cxgb4i:%s: iso: flags 0x%x, op %u, ahs %u, num_pdu %u, mpdu %u, burst_size %u, iso_len %u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cxgb4i_make_tx_iso_cpl\00", [41 x i8] zeroinitializer }, align 32
@cxgb4i_make_tx_iso_cpl._entry_ptr = internal global ptr @cxgb4i_make_tx_iso_cpl._entry, section ".printk_index", align 4
@send_abort_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.5, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016cxgb4i:%s: csk 0x%p,%u,0x%lx,%u, snd_nxt %u, 0x%x.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"send_abort_req\00", [17 x i8] zeroinitializer }, align 32
@send_abort_req._entry_ptr = internal global ptr @send_abort_req._entry, section ".printk_index", align 4
@cxgbi_sock_set_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.86, ptr @.str.49, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016cxgb4i:%s: csk 0x%p,%u,0x%lx, state -> %u.\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cxgbi_sock_set_state\00", [43 x i8] zeroinitializer }, align 32
@cxgbi_sock_set_state._entry_ptr = internal global ptr @cxgbi_sock_set_state._entry, section ".printk_index", align 4
@abort_arp_failure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.5, i32 467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016cxgb4i:%s: csk 0x%p,%u,0x%lx, tid %u, abort.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"abort_arp_failure\00", [46 x i8] zeroinitializer }, align 32
@abort_arp_failure._entry_ptr = internal global ptr @abort_arp_failure._entry, section ".printk_index", align 4
@send_close_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.5, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016cxgb4i:%s: csk 0x%p,%u,0x%lx, tid %u.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"send_close_req\00", [17 x i8] zeroinitializer }, align 32
@send_close_req._entry_ptr = internal global ptr @send_close_req._entry, section ".printk_index", align 4
@send_rx_credits._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.5, i32 537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cxgb4i:%s: csk 0x%p,%u,0x%lx,%u, credit %u.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"send_rx_credits\00", [16 x i8] zeroinitializer }, align 32
@send_rx_credits._entry_ptr = internal global ptr @send_rx_credits._entry, section ".printk_index", align 4
@send_rx_credits._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.5, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016cxgb4i:%s: csk 0x%p, credit %u, OOM.\0A\00", [56 x i8] zeroinitializer }, align 32
@send_rx_credits._entry_ptr.95 = internal global ptr @send_rx_credits._entry.93, section ".printk_index", align 4
@init_act_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.96, ptr @.str.5, i32 1783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"init_act_open\00", [18 x i8] zeroinitializer }, align 32
@init_act_open._entry_ptr = internal global ptr @init_act_open._entry, section ".printk_index", align 4
@init_act_open._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.96, ptr @.str.5, i32 1792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013cxgb4i:%s: address family 0x%x not supported\0A\00", [48 x i8] zeroinitializer }, align 32
@init_act_open._entry_ptr.99 = internal global ptr @init_act_open._entry.97, section ".printk_index", align 4
@init_act_open._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.96, ptr @.str.5, i32 1799, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013cxgb4i:%s: %s, can't get neighbour of csk->dst.\0A\00", [45 x i8] zeroinitializer }, align 32
@init_act_open._entry_ptr.102 = internal global ptr @init_act_open._entry.100, section ".printk_index", align 4
@init_act_open._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.96, ptr @.str.5, i32 1808, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013cxgb4i:%s: %s, NO atid available.\0A\00", [59 x i8] zeroinitializer }, align 32
@init_act_open._entry_ptr.105 = internal global ptr @init_act_open._entry.103, section ".printk_index", align 4
@init_act_open._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.96, ptr @.str.5, i32 1824, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013cxgb4i:%s: %s, cannot alloc l2t.\0A\00", [60 x i8] zeroinitializer }, align 32
@init_act_open._entry_ptr.108 = internal global ptr @init_act_open._entry.106, section ".printk_index", align 4
@init_act_open._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.96, ptr @.str.5, i32 1893, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016cxgb4i:%s: %pISpc - %pISpc, csk 0x%p,%u,0x%lx,%u,%u,%u, mtu %u,%u, smac %u.\0A\00", [49 x i8] zeroinitializer }, align 32
@init_act_open._entry_ptr.111 = internal global ptr @init_act_open._entry.109, section ".printk_index", align 4
@init_act_open._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.96, ptr @.str.5, i32 1897, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013cxgb4i:%s: %s, try_module_get failed.\0A\00", [55 x i8] zeroinitializer }, align 32
@init_act_open._entry_ptr.114 = internal global ptr @init_act_open._entry.112, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__cxgbi_sock_get._entry = internal constant %struct.pi_entry { ptr @.str.115, ptr @.str.116, ptr @.str.49, i32 334, ptr null, ptr null }, align 1
@.str.115 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016cxgb4i:%s: %s, get csk 0x%p, ref %u+1.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"__cxgbi_sock_get\00", [47 x i8] zeroinitializer }, align 32
@__cxgbi_sock_get._entry_ptr = internal global ptr @__cxgbi_sock_get._entry, section ".printk_index", align 4
@get_iscsi_dcb_priority._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.5, i32 1760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016cxgb4i:%s: iSCSI priority is set to %u\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"get_iscsi_dcb_priority\00", [41 x i8] zeroinitializer }, align 32
@get_iscsi_dcb_priority._entry_ptr = internal global ptr @get_iscsi_dcb_priority._entry, section ".printk_index", align 4
@send_act_open_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.120, ptr @.str.5, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016cxgb4i:%s: csk t4 0x%p, %pI4:%u-%pI4:%u, atid %d, qid %u.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"send_act_open_req\00", [46 x i8] zeroinitializer }, align 32
@send_act_open_req._entry_ptr = internal global ptr @send_act_open_req._entry, section ".printk_index", align 4
@send_act_open_req._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.120, ptr @.str.5, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016cxgb4i:%s: csk t5 0x%p, %pI4:%u-%pI4:%u, atid %d, qid %u.\0A\00", [35 x i8] zeroinitializer }, align 32
@send_act_open_req._entry_ptr.123 = internal global ptr @send_act_open_req._entry.121, section ".printk_index", align 4
@send_act_open_req._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.120, ptr @.str.5, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016cxgb4i:%s: csk t6 0x%p, %pI4:%u-%pI4:%u, atid %d, qid %u.\0A\00", [35 x i8] zeroinitializer }, align 32
@send_act_open_req._entry_ptr.126 = internal global ptr @send_act_open_req._entry.124, section ".printk_index", align 4
@send_act_open_req._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.120, ptr @.str.5, i32 320, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016cxgb4i:%s: %pISpc - %pISpc, t%d csk 0x%p,%u,0x%lx,%u, rss_qid %u.\0A\00", [59 x i8] zeroinitializer }, align 32
@send_act_open_req._entry_ptr.129 = internal global ptr @send_act_open_req._entry.127, section ".printk_index", align 4
@send_act_open_req6._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.131, ptr @.str.5, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016cxgb4i:%s: t%d csk 0x%p,%u,0x%lx,%u, [%pI6]:%u-[%pI6]:%u, rss_qid %u.\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"send_act_open_req6\00", [45 x i8] zeroinitializer }, align 32
@send_act_open_req6._entry_ptr = internal global ptr @send_act_open_req6._entry, section ".printk_index", align 4
@t4_uld_rx_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.132, ptr @.str.133, ptr @.str.5, i32 2327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016cxgb4i:%s: ? FL 0x%p,RSS%#llx,FL %#llx,len %u.\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"t4_uld_rx_handler\00", [46 x i8] zeroinitializer }, align 32
@t4_uld_rx_handler._entry_ptr = internal global ptr @t4_uld_rx_handler._entry, section ".printk_index", align 4
@t4_uld_rx_handler._entry.134 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.133, ptr @.str.5, i32 2339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016cxgb4i:%s: cdev %p, opcode 0x%x(0x%x,0x%x), skb %p.\0A\00", [41 x i8] zeroinitializer }, align 32
@t4_uld_rx_handler._entry_ptr.136 = internal global ptr @t4_uld_rx_handler._entry.134, section ".printk_index", align 4
@t4_uld_rx_handler._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.133, ptr @.str.5, i32 2341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013cxgb4i:%s: No handler for opcode 0x%x.\0A\00", [54 x i8] zeroinitializer }, align 32
@t4_uld_rx_handler._entry_ptr.139 = internal global ptr @t4_uld_rx_handler._entry.137, section ".printk_index", align 4
@t4_uld_rx_handler._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.133, ptr @.str.5, i32 2348, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016cxgb4i:%s: OOM bailing out.\0A\00", [33 x i8] zeroinitializer }, align 32
@t4_uld_rx_handler._entry_ptr.142 = internal global ptr @t4_uld_rx_handler._entry.140, section ".printk_index", align 4
@cxgb4i_cplhandlers = internal constant { <{ [196 x ptr], [43 x ptr] }>, [228 x i8] } { <{ [196 x ptr], [43 x ptr] }> <{ [196 x ptr] [ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @do_act_open_rpl, ptr @do_peer_close, ptr null, ptr null, ptr null, ptr null, ptr @do_abort_req_rss, ptr null, ptr @do_abort_rpl_rss, ptr null, ptr null, ptr null, ptr null, ptr @do_close_con_rpl, ptr @do_rx_iscsi_hdr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @do_rx_data, ptr @do_set_tcb_rpl, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @do_act_establish, ptr null, ptr @do_rx_data_ddp, ptr null, ptr null, ptr @do_rx_iscsi_cmp, ptr null, ptr null, ptr null, ptr @do_rx_data_ddp, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @do_rx_iscsi_data, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @do_fw4_ack], [43 x ptr] zeroinitializer }>, [228 x i8] zeroinitializer }, align 32
@do_act_open_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.5, i32 1055, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013cxgb4i:%s: NO matching conn. atid %u, tid %u.\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_act_open_rpl\00", [16 x i8] zeroinitializer }, align 32
@do_act_open_rpl._entry_ptr = internal global ptr @do_act_open_rpl._entry, section ".printk_index", align 4
@do_act_open_rpl._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.5, i32 1061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\016cxgb4i:%s: %pISpc - %pISpc, tid %u/%u, status %u.\0Acsk 0x%p,%u,0x%lx. \00", [56 x i8] zeroinitializer }, align 32
@do_act_open_rpl._entry_ptr.148 = internal global ptr @do_act_open_rpl._entry.146, section ".printk_index", align 4
@csk_act_open_retry_timer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.149, ptr @.str.5, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"csk_act_open_retry_timer\00", [39 x i8] zeroinitializer }, align 32
@csk_act_open_retry_timer._entry_ptr = internal global ptr @csk_act_open_retry_timer._entry, section ".printk_index", align 4
@do_peer_close._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.5, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013cxgb4i:%s: can't find connection for tid %u.\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"do_peer_close\00", [18 x i8] zeroinitializer }, align 32
@do_peer_close._entry_ptr = internal global ptr @do_peer_close._entry, section ".printk_index", align 4
@do_peer_close._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.5, i32 1106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016cxgb4i:%s: %pISpc - %pISpc, csk 0x%p,%u,0x%lx,%u.\0A\00", [43 x i8] zeroinitializer }, align 32
@do_peer_close._entry_ptr.154 = internal global ptr @do_peer_close._entry.152, section ".printk_index", align 4
@do_abort_req_rss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.155, ptr @.str.5, i32 1162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_abort_req_rss\00", [47 x i8] zeroinitializer }, align 32
@do_abort_req_rss._entry_ptr = internal global ptr @do_abort_req_rss._entry, section ".printk_index", align 4
@do_abort_req_rss._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.155, ptr @.str.5, i32 1168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016cxgb4i:%s: %pISpc - %pISpc, csk 0x%p,%u,0x%lx,%u, status %u.\0A\00", [32 x i8] zeroinitializer }, align 32
@do_abort_req_rss._entry_ptr.158 = internal global ptr @do_abort_req_rss._entry.156, section ".printk_index", align 4
@send_abort_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.159, ptr @.str.160, ptr @.str.5, i32 515, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cxgb4i:%s: csk 0x%p,%u,0x%lx,%u, status %d.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"send_abort_rpl\00", [17 x i8] zeroinitializer }, align 32
@send_abort_rpl._entry_ptr = internal global ptr @send_abort_rpl._entry, section ".printk_index", align 4
@do_abort_rpl_rss._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.161, ptr @.str.5, i32 1213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_abort_rpl_rss\00", [47 x i8] zeroinitializer }, align 32
@do_abort_rpl_rss._entry_ptr = internal global ptr @do_abort_rpl_rss._entry, section ".printk_index", align 4
@do_close_con_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.162, ptr @.str.5, i32 1122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_close_con_rpl\00", [47 x i8] zeroinitializer }, align 32
@do_close_con_rpl._entry_ptr = internal global ptr @do_close_con_rpl._entry, section ".printk_index", align 4
@do_close_con_rpl._entry.163 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.162, ptr @.str.5, i32 1127, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_close_con_rpl._entry_ptr.164 = internal global ptr @do_close_con_rpl._entry.163, section ".printk_index", align 4
@do_rx_iscsi_hdr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.5, i32 1255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013cxgb4i:%s: can't find conn. for tid %u.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_rx_iscsi_hdr\00", [16 x i8] zeroinitializer }, align 32
@do_rx_iscsi_hdr._entry_ptr = internal global ptr @do_rx_iscsi_hdr._entry, section ".printk_index", align 4
@do_rx_iscsi_hdr._entry.167 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.166, ptr @.str.5, i32 1262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016cxgb4i:%s: csk 0x%p,%u,0x%lx, tid %u, skb 0x%p,%u, 0x%x.\0A\00", [36 x i8] zeroinitializer }, align 32
@do_rx_iscsi_hdr._entry_ptr.169 = internal global ptr @do_rx_iscsi_hdr._entry.167, section ".printk_index", align 4
@do_rx_iscsi_hdr._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.166, ptr @.str.5, i32 1269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cxgb4i:%s: csk 0x%p,%u,0x%lx,%u, bad state.\0A\00", [49 x i8] zeroinitializer }, align 32
@do_rx_iscsi_hdr._entry_ptr.172 = internal global ptr @do_rx_iscsi_hdr._entry.170, section ".printk_index", align 4
@do_rx_iscsi_hdr._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.166, ptr @.str.5, i32 1289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016cxgb4i:%s: csk 0x%p,%u,0x%lx, tid %u, skb 0x%p header.\0A\00", [38 x i8] zeroinitializer }, align 32
@do_rx_iscsi_hdr._entry_ptr.175 = internal global ptr @do_rx_iscsi_hdr._entry.173, section ".printk_index", align 4
@do_rx_iscsi_hdr._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.166, ptr @.str.5, i32 1297, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016cxgb4i:%s: tid %u, CPL_ISCSI_HDR, bad seq, 0x%x/0x%x.\0A\00", [39 x i8] zeroinitializer }, align 32
@do_rx_iscsi_hdr._entry_ptr.178 = internal global ptr @do_rx_iscsi_hdr._entry.176, section ".printk_index", align 4
@do_rx_iscsi_hdr._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.166, ptr @.str.5, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"\016cxgb4i:%s: tid 0x%x, CPL_ISCSI_HDR, pdu len mismatch %u != %u + %u, seq 0x%x.\0A\00", [47 x i8] zeroinitializer }, align 32
@do_rx_iscsi_hdr._entry_ptr.181 = internal global ptr @do_rx_iscsi_hdr._entry.179, section ".printk_index", align 4
@do_rx_iscsi_hdr._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.166, ptr @.str.5, i32 1326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016cxgb4i:%s: csk 0x%p, skb 0x%p, 0x%x,%u+%u,0x%x,0x%x.\0A\00", [40 x i8] zeroinitializer }, align 32
@do_rx_iscsi_hdr._entry_ptr.184 = internal global ptr @do_rx_iscsi_hdr._entry.182, section ".printk_index", align 4
@do_rx_iscsi_hdr._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.166, ptr @.str.5, i32 1334, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016cxgb4i:%s: csk 0x%p,%u,0x%lx, skb 0x%p data, 0x%p.\0A\00", [42 x i8] zeroinitializer }, align 32
@do_rx_iscsi_hdr._entry_ptr.187 = internal global ptr @do_rx_iscsi_hdr._entry.185, section ".printk_index", align 4
@do_rx_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.189, ptr @.str.5, i32 1233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"do_rx_data\00", [21 x i8] zeroinitializer }, align 32
@do_rx_data._entry_ptr = internal global ptr @do_rx_data._entry, section ".printk_index", align 4
@do_rx_data._entry.190 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.191, ptr @.str.189, ptr @.str.5, i32 1236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013cxgb4i:%s: csk 0x%p, tid %u, rcv cpl_rx_data.\0A\00", [47 x i8] zeroinitializer }, align 32
@do_rx_data._entry_ptr.192 = internal global ptr @do_rx_data._entry.190, section ".printk_index", align 4
@do_set_tcb_rpl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.193, ptr @.str.5, i32 1633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"do_set_tcb_rpl\00", [17 x i8] zeroinitializer }, align 32
@do_set_tcb_rpl._entry_ptr = internal global ptr @do_set_tcb_rpl._entry, section ".printk_index", align 4
@do_set_tcb_rpl._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.193, ptr @.str.5, i32 1639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cxgb4i:%s: csk 0x%p,%u,%lx,%u, status 0x%x.\0A\00", [49 x i8] zeroinitializer }, align 32
@do_set_tcb_rpl._entry_ptr.196 = internal global ptr @do_set_tcb_rpl._entry.194, section ".printk_index", align 4
@do_set_tcb_rpl._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.193, ptr @.str.5, i32 1643, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013cxgb4i:%s: csk 0x%p,%u, SET_TCB_RPL status %u.\0A\00", [46 x i8] zeroinitializer }, align 32
@do_set_tcb_rpl._entry_ptr.199 = internal global ptr @do_set_tcb_rpl._entry.197, section ".printk_index", align 4
@do_act_establish._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.200, ptr @.str.201, ptr @.str.5, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013cxgb4i:%s: NO conn. for atid %u, cdev 0x%p.\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_act_establish\00", [47 x i8] zeroinitializer }, align 32
@do_act_establish._entry_ptr = internal global ptr @do_act_establish._entry, section ".printk_index", align 4
@do_act_establish._entry.202 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.201, ptr @.str.5, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013cxgb4i:%s: bad conn atid %u, csk 0x%p,%u,0x%lx,tid %u, atid %u.\0A\00", [61 x i8] zeroinitializer }, align 32
@do_act_establish._entry_ptr.204 = internal global ptr @do_act_establish._entry.202, section ".printk_index", align 4
@do_act_establish._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.201, ptr @.str.5, i32 915, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016cxgb4i:%s: %pISpc - %pISpc, atid 0x%x, tid 0x%x, csk 0x%p,%u,0x%lx, isn %u.\0A\00", [49 x i8] zeroinitializer }, align 32
@do_act_establish._entry_ptr.207 = internal global ptr @do_act_establish._entry.205, section ".printk_index", align 4
@do_act_establish._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.201, ptr @.str.5, i32 929, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016cxgb4i:%s: csk 0x%p,%u,0x%lx,%u, got EST.\0A\00", [51 x i8] zeroinitializer }, align 32
@do_act_establish._entry_ptr.210 = internal global ptr @do_act_establish._entry.208, section ".printk_index", align 4
@do_act_establish._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.201, ptr @.str.5, i32 952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016cxgb4i:%s: csk 0x%p, mss_idx %u, advmss %u.\0A\00", [49 x i8] zeroinitializer }, align 32
@do_act_establish._entry_ptr.213 = internal global ptr @do_act_establish._entry.211, section ".printk_index", align 4
@do_rx_data_ddp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.214, ptr @.str.5, i32 1457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"do_rx_data_ddp\00", [17 x i8] zeroinitializer }, align 32
@do_rx_data_ddp._entry_ptr = internal global ptr @do_rx_data_ddp._entry, section ".printk_index", align 4
@do_rx_data_ddp._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.214, ptr @.str.5, i32 1463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016cxgb4i:%s: csk 0x%p,%u,0x%lx, skb 0x%p,0x%x, lhdr 0x%p.\0A\00", [37 x i8] zeroinitializer }, align 32
@do_rx_data_ddp._entry_ptr.217 = internal global ptr @do_rx_data_ddp._entry.215, section ".printk_index", align 4
@do_rx_data_ddp._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.214, ptr @.str.5, i32 1470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_rx_data_ddp._entry_ptr.219 = internal global ptr @do_rx_data_ddp._entry.218, section ".printk_index", align 4
@do_rx_data_ddp._entry.220 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.221, ptr @.str.214, ptr @.str.5, i32 1478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013cxgb4i:%s: tid 0x%x, rcv RX_DATA_DDP w/o pdu bhs.\0A\00", [43 x i8] zeroinitializer }, align 32
@do_rx_data_ddp._entry_ptr.222 = internal global ptr @do_rx_data_ddp._entry.220, section ".printk_index", align 4
@do_rx_data_ddp._entry.223 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.224, ptr @.str.214, ptr @.str.5, i32 1489, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016cxgb4i:%s: tid 0x%x, RX_DATA_DDP pdulen %u != %u.\0A\00", [43 x i8] zeroinitializer }, align 32
@do_rx_data_ddp._entry_ptr.225 = internal global ptr @do_rx_data_ddp._entry.223, section ".printk_index", align 4
@do_rx_data_ddp._entry.226 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.227, ptr @.str.214, ptr @.str.5, i32 1495, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016cxgb4i:%s: csk 0x%p, lskb 0x%p, f 0x%lx.\0A\00", [52 x i8] zeroinitializer }, align 32
@do_rx_data_ddp._entry_ptr.228 = internal global ptr @do_rx_data_ddp._entry.226, section ".printk_index", align 4
@cxgb4i_process_ddpvld._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.230, ptr @.str.5, i32 1418, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016cxgb4i:%s: csk 0x%p, lhdr 0x%p, status 0x%x, hcrc bad 0x%lx.\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cxgb4i_process_ddpvld\00", [42 x i8] zeroinitializer }, align 32
@cxgb4i_process_ddpvld._entry_ptr = internal global ptr @cxgb4i_process_ddpvld._entry, section ".printk_index", align 4
@cxgb4i_process_ddpvld._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.230, ptr @.str.5, i32 1424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016cxgb4i:%s: csk 0x%p, lhdr 0x%p, status 0x%x, dcrc bad 0x%lx.\0A\00", [32 x i8] zeroinitializer }, align 32
@cxgb4i_process_ddpvld._entry_ptr.233 = internal global ptr @cxgb4i_process_ddpvld._entry.231, section ".printk_index", align 4
@cxgb4i_process_ddpvld._entry.234 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.230, ptr @.str.5, i32 1431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016cxgb4i:%s: csk 0x%p, lhdr 0x%p, status 0x%x, pad bad.\0A\00", [39 x i8] zeroinitializer }, align 32
@cxgb4i_process_ddpvld._entry_ptr.236 = internal global ptr @cxgb4i_process_ddpvld._entry.234, section ".printk_index", align 4
@cxgb4i_process_ddpvld._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.230, ptr @.str.5, i32 1439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016cxgb4i:%s: csk 0x%p, lhdr 0x%p, 0x%x, data ddp'ed.\0A\00", [42 x i8] zeroinitializer }, align 32
@cxgb4i_process_ddpvld._entry_ptr.239 = internal global ptr @cxgb4i_process_ddpvld._entry.237, section ".printk_index", align 4
@do_rx_iscsi_cmp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.240, ptr @.str.5, i32 1525, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"do_rx_iscsi_cmp\00", [16 x i8] zeroinitializer }, align 32
@do_rx_iscsi_cmp._entry_ptr = internal global ptr @do_rx_iscsi_cmp._entry, section ".printk_index", align 4
@do_rx_iscsi_cmp._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.240, ptr @.str.5, i32 1533, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [94 x i8], [34 x i8] } { [94 x i8] c"\016cxgb4i:%s: csk 0x%p,%u,0x%lx, skb 0x%p,0x%x, lhdr 0x%p, len %u, pdu_len_ddp %u, status %u.\0A\00", [34 x i8] zeroinitializer }, align 32
@do_rx_iscsi_cmp._entry_ptr.243 = internal global ptr @do_rx_iscsi_cmp._entry.241, section ".printk_index", align 4
@do_rx_iscsi_cmp._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.240, ptr @.str.5, i32 1540, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_rx_iscsi_cmp._entry_ptr.245 = internal global ptr @do_rx_iscsi_cmp._entry.244, section ".printk_index", align 4
@do_rx_iscsi_cmp._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.240, ptr @.str.5, i32 1563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013cxgb4i:%s: Error! freelist data not found 0x%p, tid %u\0A\00", [38 x i8] zeroinitializer }, align 32
@do_rx_iscsi_cmp._entry_ptr.248 = internal global ptr @do_rx_iscsi_cmp._entry.246, section ".printk_index", align 4
@do_rx_iscsi_cmp._entry.249 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.250, ptr @.str.240, ptr @.str.5, i32 1587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cxgb4i:%s: csk 0x%p, skb 0x%p, f 0x%lx.\0A\00", [53 x i8] zeroinitializer }, align 32
@do_rx_iscsi_cmp._entry_ptr.251 = internal global ptr @do_rx_iscsi_cmp._entry.249, section ".printk_index", align 4
@do_rx_iscsi_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.252, ptr @.str.5, i32 1361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"do_rx_iscsi_data\00", [47 x i8] zeroinitializer }, align 32
@do_rx_iscsi_data._entry_ptr = internal global ptr @do_rx_iscsi_data._entry, section ".printk_index", align 4
@do_rx_iscsi_data._entry.253 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.252, ptr @.str.5, i32 1368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_rx_iscsi_data._entry_ptr.254 = internal global ptr @do_rx_iscsi_data._entry.253, section ".printk_index", align 4
@do_rx_iscsi_data._entry.255 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.252, ptr @.str.5, i32 1375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_rx_iscsi_data._entry_ptr.256 = internal global ptr @do_rx_iscsi_data._entry.255, section ".printk_index", align 4
@do_rx_iscsi_data._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.252, ptr @.str.5, i32 1398, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_rx_iscsi_data._entry_ptr.258 = internal global ptr @do_rx_iscsi_data._entry.257, section ".printk_index", align 4
@do_fw4_ack._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.259, ptr @.str.5, i32 1612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"do_fw4_ack\00", [21 x i8] zeroinitializer }, align 32
@do_fw4_ack._entry_ptr = internal global ptr @do_fw4_ack._entry, section ".printk_index", align 4
@do_fw4_ack._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.259, ptr @.str.5, i32 1616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@do_fw4_ack._entry_ptr.261 = internal global ptr @do_fw4_ack._entry.260, section ".printk_index", align 4
@t4_uld_state_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.262, ptr @.str.263, ptr @.str.5, i32 2358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016cxgb4i:%s: cdev 0x%p, UP.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"t4_uld_state_change\00", [44 x i8] zeroinitializer }, align 32
@t4_uld_state_change._entry_ptr = internal global ptr @t4_uld_state_change._entry, section ".printk_index", align 4
@t4_uld_state_change._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.265, ptr @.str.263, ptr @.str.5, i32 2361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016cxgb4i:%s: cdev 0x%p, RECOVERY.\0A\00", [61 x i8] zeroinitializer }, align 32
@t4_uld_state_change._entry_ptr.266 = internal global ptr @t4_uld_state_change._entry.264, section ".printk_index", align 4
@t4_uld_state_change._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.263, ptr @.str.5, i32 2365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016cxgb4i:%s: cdev 0x%p, DOWN.\0A\00", [33 x i8] zeroinitializer }, align 32
@t4_uld_state_change._entry_ptr.269 = internal global ptr @t4_uld_state_change._entry.267, section ".printk_index", align 4
@t4_uld_state_change._entry.270 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.271, ptr @.str.263, ptr @.str.5, i32 2368, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016cxgb4i:%s: cdev 0x%p, DETACH.\0A\00", [63 x i8] zeroinitializer }, align 32
@t4_uld_state_change._entry_ptr.272 = internal global ptr @t4_uld_state_change._entry.270, section ".printk_index", align 4
@t4_uld_state_change._entry.273 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.274, ptr @.str.263, ptr @.str.5, i32 2372, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016cxgb4i:%s: cdev 0x%p, unknown state %d.\0A\00", [53 x i8] zeroinitializer }, align 32
@t4_uld_state_change._entry_ptr.275 = internal global ptr @t4_uld_state_change._entry.273, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.276 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.277 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.278 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.279 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 80]
@__sancov_gen_cov_switch_values.280 = internal global [4 x i64] [i64 2, i64 8, i64 64, i64 80]
@__sancov_gen_cov_switch_values.281 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 3, i64 22, i64 23]
@__sancov_gen_cov_switch_values.282 = internal global [7 x i64] [i64 5, i64 8, i64 3, i64 20, i64 22, i64 23, i64 30]
@__sancov_gen_cov_switch_values.283 = internal global [8 x i64] [i64 6, i64 8, i64 20, i64 24, i64 31, i64 32, i64 33, i64 34]
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 54, i32 1 }
@___asan_gen_.293 = private unnamed_addr constant [10 x i8] c"dbg_level\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 34, i32 21 }
@___asan_gen_.296 = private unnamed_addr constant [15 x i8] c"cxgb4i_rcv_win\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 61, i32 12 }
@___asan_gen_.299 = private unnamed_addr constant [15 x i8] c"cxgb4i_snd_win\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 66, i32 12 }
@___asan_gen_.302 = private unnamed_addr constant [23 x i8] c"cxgb4i_rx_credit_thres\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 70, i32 12 }
@___asan_gen_.305 = private unnamed_addr constant [19 x i8] c"cxgb4i_max_connect\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 75, i32 21 }
@___asan_gen_.308 = private unnamed_addr constant [18 x i8] c"cxgb4i_sport_base\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 79, i32 23 }
@___asan_gen_.311 = private unnamed_addr constant [17 x i8] c"cxgb4_dcb_change\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 168, i32 30 }
@___asan_gen_.314 = private unnamed_addr constant [23 x i8] c"cxgb4i_iscsi_transport\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 121, i32 31 }
@___asan_gen_.317 = private unnamed_addr constant [11 x i8] c"cxgb4i_stt\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 173, i32 40 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2411, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2433, i32 5 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2447, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 48, i32 13 }
@___asan_gen_.350 = private unnamed_addr constant [16 x i8] c"cxgb4i_uld_info\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 90, i32 36 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2455, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2223, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2226, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2231, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2250, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2255, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2270, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2274, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2285, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant [21 x i8] c"cxgb4i_host_template\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 101, i32 34 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2159, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2171, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant [54 x i8] c"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.h\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.438, i32 309, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2135, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.681, i32 374, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2099, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2004, i32 3 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1963, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1691, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.681, i32 287, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.681, i32 323, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.681, i32 314, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 773, i32 3 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 815, i32 4 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 833, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 871, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 655, i32 3 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 666, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.681, i32 278, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant [15 x i8] c"ulp2_extra_len\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.681, i32 92, i32 27 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 705, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 500, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.681, i32 302, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 465, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 446, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 535, i32 2 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 541, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1781, i32 2 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1792, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1799, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1808, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1824, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1890, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1897, i32 3 }
@___asan_gen_.681 = private unnamed_addr constant [43 x i8] c"../drivers/scsi/cxgbi/cxgb4i/../libcxgbi.h\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.681, i32 332, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1759, i32 2 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 248, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 276, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 308, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 317, i32 2 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 429, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2324, i32 4 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2337, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2341, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2348, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant [19 x i8] c"cxgb4i_cplhandlers\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1926, i32 31 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1055, i32 3 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1059, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 996, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1101, i32 3 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1104, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1162, i32 3 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1166, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 513, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1211, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1122, i32 3 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1125, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1255, i32 3 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1259, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1267, i32 3 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1287, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1295, i32 4 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1310, i32 4 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1322, i32 3 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1332, i32 3 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1233, i32 3 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1236, i32 3 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1633, i32 3 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1637, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1642, i32 3 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 903, i32 3 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 908, i32 3 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 913, i32 2 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 928, i32 3 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 950, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1457, i32 3 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1461, i32 2 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1468, i32 3 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1478, i32 3 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1488, i32 3 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1493, i32 2 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1417, i32 3 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1423, i32 3 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1429, i32 3 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1437, i32 3 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1525, i32 3 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1529, i32 2 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1538, i32 3 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1562, i32 4 }
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1586, i32 2 }
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1361, i32 3 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1365, i32 2 }
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1373, i32 3 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1396, i32 2 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1612, i32 3 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 1614, i32 3 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2358, i32 3 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2361, i32 3 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2365, i32 3 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2368, i32 3 }
@___asan_gen_.1082 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1085 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1086 = private constant [38 x i8] c"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c\00", align 1
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1086, i32 2372, i32 3 }
@llvm.compiler.used = appending global [408 x ptr] [ptr @__UNIQUE_ID_author689, ptr @__UNIQUE_ID_cxgb4i_max_connect703, ptr @__UNIQUE_ID_cxgb4i_max_connecttype702, ptr @__UNIQUE_ID_cxgb4i_rcv_win697, ptr @__UNIQUE_ID_cxgb4i_rcv_wintype696, ptr @__UNIQUE_ID_cxgb4i_rx_credit_thres701, ptr @__UNIQUE_ID_cxgb4i_rx_credit_threstype700, ptr @__UNIQUE_ID_cxgb4i_snd_win699, ptr @__UNIQUE_ID_cxgb4i_snd_wintype698, ptr @__UNIQUE_ID_cxgb4i_sport_base705, ptr @__UNIQUE_ID_cxgb4i_sport_basetype704, ptr @__UNIQUE_ID_dbg_level695, ptr @__UNIQUE_ID_dbg_leveltype694, ptr @__UNIQUE_ID_description690, ptr @__UNIQUE_ID_file692, ptr @__UNIQUE_ID_license693, ptr @__UNIQUE_ID_version691, ptr @__cxgbi_sock_get._entry, ptr @__cxgbi_sock_get._entry_ptr, ptr @__cxgbi_sock_put._entry, ptr @__cxgbi_sock_put._entry_ptr, ptr @__exitcall_cxgb4i_exit_module, ptr @__initcall__kmod_cxgb4i__712_2471_cxgb4i_init_module6, ptr @__modver_attr, ptr @__param_cxgb4i_max_connect, ptr @__param_cxgb4i_rcv_win, ptr @__param_cxgb4i_rx_credit_thres, ptr @__param_cxgb4i_snd_win, ptr @__param_cxgb4i_sport_base, ptr @__param_dbg_level, ptr @abort_arp_failure._entry, ptr @abort_arp_failure._entry_ptr, ptr @alloc_wr._entry, ptr @alloc_wr._entry_ptr, ptr @csk_act_open_retry_timer._entry, ptr @csk_act_open_retry_timer._entry_ptr, ptr @cxgb4_dcb_change_notify._entry, ptr @cxgb4_dcb_change_notify._entry.6, ptr @cxgb4_dcb_change_notify._entry_ptr, ptr @cxgb4_dcb_change_notify._entry_ptr.8, ptr @cxgb4i_ddp_init._entry, ptr @cxgb4i_ddp_init._entry.39, ptr @cxgb4i_ddp_init._entry_ptr, ptr @cxgb4i_ddp_init._entry_ptr.41, ptr @cxgb4i_exit_module, ptr @cxgb4i_init_module._entry, ptr @cxgb4i_init_module._entry.11, ptr @cxgb4i_init_module._entry_ptr, ptr @cxgb4i_init_module._entry_ptr.13, ptr @cxgb4i_make_tx_iso_cpl._entry, ptr @cxgb4i_make_tx_iso_cpl._entry_ptr, ptr @cxgb4i_ofld_init._entry, ptr @cxgb4i_ofld_init._entry_ptr, ptr @cxgb4i_process_ddpvld._entry, ptr @cxgb4i_process_ddpvld._entry.231, ptr @cxgb4i_process_ddpvld._entry.234, ptr @cxgb4i_process_ddpvld._entry.237, ptr @cxgb4i_process_ddpvld._entry_ptr, ptr @cxgb4i_process_ddpvld._entry_ptr.233, ptr @cxgb4i_process_ddpvld._entry_ptr.236, ptr @cxgb4i_process_ddpvld._entry_ptr.239, ptr @cxgbi_sock_clear_flag._entry, ptr @cxgbi_sock_clear_flag._entry_ptr, ptr @cxgbi_sock_free._entry, ptr @cxgbi_sock_free._entry_ptr, ptr @cxgbi_sock_set_flag._entry, ptr @cxgbi_sock_set_flag._entry_ptr, ptr @cxgbi_sock_set_state._entry, ptr @cxgbi_sock_set_state._entry_ptr, ptr @cxgbi_tagmask_check._entry, ptr @cxgbi_tagmask_check._entry_ptr, ptr @ddp_ppod_init_idata._entry, ptr @ddp_ppod_init_idata._entry_ptr, ptr @ddp_setup_conn_digest._entry, ptr @ddp_setup_conn_digest._entry_ptr, ptr @ddp_setup_conn_pgidx._entry, ptr @ddp_setup_conn_pgidx._entry_ptr, ptr @do_abort_req_rss._entry, ptr @do_abort_req_rss._entry.156, ptr @do_abort_req_rss._entry_ptr, ptr @do_abort_req_rss._entry_ptr.158, ptr @do_abort_rpl_rss._entry, ptr @do_abort_rpl_rss._entry_ptr, ptr @do_act_establish._entry, ptr @do_act_establish._entry.202, ptr @do_act_establish._entry.205, ptr @do_act_establish._entry.208, ptr @do_act_establish._entry.211, ptr @do_act_establish._entry_ptr, ptr @do_act_establish._entry_ptr.204, ptr @do_act_establish._entry_ptr.207, ptr @do_act_establish._entry_ptr.210, ptr @do_act_establish._entry_ptr.213, ptr @do_act_open_rpl._entry, ptr @do_act_open_rpl._entry.146, ptr @do_act_open_rpl._entry_ptr, ptr @do_act_open_rpl._entry_ptr.148, ptr @do_close_con_rpl._entry, ptr @do_close_con_rpl._entry.163, ptr @do_close_con_rpl._entry_ptr, ptr @do_close_con_rpl._entry_ptr.164, ptr @do_fw4_ack._entry, ptr @do_fw4_ack._entry.260, ptr @do_fw4_ack._entry_ptr, ptr @do_fw4_ack._entry_ptr.261, ptr @do_peer_close._entry, ptr @do_peer_close._entry.152, ptr @do_peer_close._entry_ptr, ptr @do_peer_close._entry_ptr.154, ptr @do_rx_data._entry, ptr @do_rx_data._entry.190, ptr @do_rx_data._entry_ptr, ptr @do_rx_data._entry_ptr.192, ptr @do_rx_data_ddp._entry, ptr @do_rx_data_ddp._entry.215, ptr @do_rx_data_ddp._entry.218, ptr @do_rx_data_ddp._entry.220, ptr @do_rx_data_ddp._entry.223, ptr @do_rx_data_ddp._entry.226, ptr @do_rx_data_ddp._entry_ptr, ptr @do_rx_data_ddp._entry_ptr.217, ptr @do_rx_data_ddp._entry_ptr.219, ptr @do_rx_data_ddp._entry_ptr.222, ptr @do_rx_data_ddp._entry_ptr.225, ptr @do_rx_data_ddp._entry_ptr.228, ptr @do_rx_iscsi_cmp._entry, ptr @do_rx_iscsi_cmp._entry.241, ptr @do_rx_iscsi_cmp._entry.244, ptr @do_rx_iscsi_cmp._entry.246, ptr @do_rx_iscsi_cmp._entry.249, ptr @do_rx_iscsi_cmp._entry_ptr, ptr @do_rx_iscsi_cmp._entry_ptr.243, ptr @do_rx_iscsi_cmp._entry_ptr.245, ptr @do_rx_iscsi_cmp._entry_ptr.248, ptr @do_rx_iscsi_cmp._entry_ptr.251, ptr @do_rx_iscsi_data._entry, ptr @do_rx_iscsi_data._entry.253, ptr @do_rx_iscsi_data._entry.255, ptr @do_rx_iscsi_data._entry.257, ptr @do_rx_iscsi_data._entry_ptr, ptr @do_rx_iscsi_data._entry_ptr.254, ptr @do_rx_iscsi_data._entry_ptr.256, ptr @do_rx_iscsi_data._entry_ptr.258, ptr @do_rx_iscsi_hdr._entry, ptr @do_rx_iscsi_hdr._entry.167, ptr @do_rx_iscsi_hdr._entry.170, ptr @do_rx_iscsi_hdr._entry.173, ptr @do_rx_iscsi_hdr._entry.176, ptr @do_rx_iscsi_hdr._entry.179, ptr @do_rx_iscsi_hdr._entry.182, ptr @do_rx_iscsi_hdr._entry.185, ptr @do_rx_iscsi_hdr._entry_ptr, ptr @do_rx_iscsi_hdr._entry_ptr.169, ptr @do_rx_iscsi_hdr._entry_ptr.172, ptr @do_rx_iscsi_hdr._entry_ptr.175, ptr @do_rx_iscsi_hdr._entry_ptr.178, ptr @do_rx_iscsi_hdr._entry_ptr.181, ptr @do_rx_iscsi_hdr._entry_ptr.184, ptr @do_rx_iscsi_hdr._entry_ptr.187, ptr @do_set_tcb_rpl._entry, ptr @do_set_tcb_rpl._entry.194, ptr @do_set_tcb_rpl._entry.197, ptr @do_set_tcb_rpl._entry_ptr, ptr @do_set_tcb_rpl._entry_ptr.196, ptr @do_set_tcb_rpl._entry_ptr.199, ptr @get_iscsi_dcb_priority._entry, ptr @get_iscsi_dcb_priority._entry_ptr, ptr @init_act_open._entry, ptr @init_act_open._entry.100, ptr @init_act_open._entry.103, ptr @init_act_open._entry.106, ptr @init_act_open._entry.109, ptr @init_act_open._entry.112, ptr @init_act_open._entry.97, ptr @init_act_open._entry_ptr, ptr @init_act_open._entry_ptr.102, ptr @init_act_open._entry_ptr.105, ptr @init_act_open._entry_ptr.108, ptr @init_act_open._entry_ptr.111, ptr @init_act_open._entry_ptr.114, ptr @init_act_open._entry_ptr.99, ptr @push_tx_frames._entry, ptr @push_tx_frames._entry.66, ptr @push_tx_frames._entry.69, ptr @push_tx_frames._entry.72, ptr @push_tx_frames._entry_ptr, ptr @push_tx_frames._entry_ptr.68, ptr @push_tx_frames._entry_ptr.71, ptr @push_tx_frames._entry_ptr.74, ptr @release_offload_resources._entry, ptr @release_offload_resources._entry_ptr, ptr @send_abort_req._entry, ptr @send_abort_req._entry_ptr, ptr @send_abort_rpl._entry, ptr @send_abort_rpl._entry_ptr, ptr @send_act_open_req._entry, ptr @send_act_open_req._entry.121, ptr @send_act_open_req._entry.124, ptr @send_act_open_req._entry.127, ptr @send_act_open_req._entry_ptr, ptr @send_act_open_req._entry_ptr.123, ptr @send_act_open_req._entry_ptr.126, ptr @send_act_open_req._entry_ptr.129, ptr @send_act_open_req6._entry, ptr @send_act_open_req6._entry_ptr, ptr @send_close_req._entry, ptr @send_close_req._entry_ptr, ptr @send_rx_credits._entry, ptr @send_rx_credits._entry.93, ptr @send_rx_credits._entry_ptr, ptr @send_rx_credits._entry_ptr.95, ptr @send_tx_flowc_wr._entry, ptr @send_tx_flowc_wr._entry.77, ptr @send_tx_flowc_wr._entry_ptr, ptr @send_tx_flowc_wr._entry_ptr.79, ptr @t4_uld_add._entry, ptr @t4_uld_add._entry.16, ptr @t4_uld_add._entry.19, ptr @t4_uld_add._entry.22, ptr @t4_uld_add._entry.25, ptr @t4_uld_add._entry.28, ptr @t4_uld_add._entry.31, ptr @t4_uld_add._entry.34, ptr @t4_uld_add._entry_ptr, ptr @t4_uld_add._entry_ptr.18, ptr @t4_uld_add._entry_ptr.21, ptr @t4_uld_add._entry_ptr.24, ptr @t4_uld_add._entry_ptr.27, ptr @t4_uld_add._entry_ptr.30, ptr @t4_uld_add._entry_ptr.33, ptr @t4_uld_add._entry_ptr.36, ptr @t4_uld_rx_handler._entry, ptr @t4_uld_rx_handler._entry.134, ptr @t4_uld_rx_handler._entry.137, ptr @t4_uld_rx_handler._entry.140, ptr @t4_uld_rx_handler._entry_ptr, ptr @t4_uld_rx_handler._entry_ptr.136, ptr @t4_uld_rx_handler._entry_ptr.139, ptr @t4_uld_rx_handler._entry_ptr.142, ptr @t4_uld_state_change._entry, ptr @t4_uld_state_change._entry.264, ptr @t4_uld_state_change._entry.267, ptr @t4_uld_state_change._entry.270, ptr @t4_uld_state_change._entry.273, ptr @t4_uld_state_change._entry_ptr, ptr @t4_uld_state_change._entry_ptr.266, ptr @t4_uld_state_change._entry_ptr.269, ptr @t4_uld_state_change._entry_ptr.272, ptr @t4_uld_state_change._entry_ptr.275, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @dbg_level, ptr @cxgb4i_rcv_win, ptr @cxgb4i_snd_win, ptr @cxgb4i_rx_credit_thres, ptr @cxgb4i_max_connect, ptr @cxgb4i_sport_base, ptr @cxgb4_dcb_change, ptr @cxgb4i_iscsi_transport, ptr @cxgb4i_stt, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @version, ptr @cxgb4i_uld_info, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @cxgb4i_host_template, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.70, ptr @.str.73, ptr @send_tx_flowc_wr._rs, ptr @.str.75, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @ulp2_extra_len, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @.str.96, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.135, ptr @.str.138, ptr @.str.141, ptr @cxgb4i_cplhandlers, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @.str.155, ptr @.str.157, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.165, ptr @.str.166, ptr @.str.168, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.180, ptr @.str.183, ptr @.str.186, ptr @.str.189, ptr @.str.191, ptr @.str.193, ptr @.str.195, ptr @.str.198, ptr @.str.200, ptr @.str.201, ptr @.str.203, ptr @.str.206, ptr @.str.209, ptr @.str.212, ptr @.str.214, ptr @.str.216, ptr @.str.221, ptr @.str.224, ptr @.str.227, ptr @.str.229, ptr @.str.230, ptr @.str.232, ptr @.str.235, ptr @.str.238, ptr @.str.240, ptr @.str.242, ptr @.str.247, ptr @.str.250, ptr @.str.252, ptr @.str.259, ptr @.str.262, ptr @.str.263, ptr @.str.265, ptr @.str.268, ptr @.str.271, ptr @.str.274], section "llvm.metadata"
@0 = internal global [268 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dbg_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_rcv_win to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_snd_win to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_rx_credit_thres to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_max_connect to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_sport_base to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_dcb_change to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_iscsi_transport to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_stt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_dcb_change_notify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4_dcb_change_notify._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @version to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_uld_info to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_init_module._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_uld_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_uld_add._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_uld_add._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_uld_add._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_uld_add._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_uld_add._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_uld_add._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_uld_add._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_host_template to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_ddp_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_ddp_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_tagmask_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_setup_conn_digest._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alloc_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_setup_conn_pgidx._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddp_ppod_init_idata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_ofld_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @release_offload_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_sock_clear_flag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_sock_free._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @push_tx_frames._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @push_tx_frames._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @push_tx_frames._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @push_tx_frames._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_tx_flowc_wr._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_tx_flowc_wr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_tx_flowc_wr._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_sock_set_flag._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulp2_extra_len to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_make_tx_iso_cpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_abort_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgbi_sock_set_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abort_arp_failure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_close_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_rx_credits._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_rx_credits._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_act_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_act_open._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_act_open._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_act_open._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_act_open._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_act_open._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_act_open._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_iscsi_dcb_priority._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_act_open_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_act_open_req._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_act_open_req._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_act_open_req._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_act_open_req6._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_uld_rx_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_uld_rx_handler._entry.134 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_uld_rx_handler._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_uld_rx_handler._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_cplhandlers to i32), i32 956, i32 1184, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_act_open_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_act_open_rpl._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csk_act_open_retry_timer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_peer_close._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_peer_close._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_abort_req_rss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_abort_req_rss._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_abort_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_abort_rpl_rss._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_close_con_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_close_con_rpl._entry.163 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_iscsi_hdr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_iscsi_hdr._entry.167 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_iscsi_hdr._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_iscsi_hdr._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_iscsi_hdr._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_iscsi_hdr._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_iscsi_hdr._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_iscsi_hdr._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_data._entry.190 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_set_tcb_rpl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_set_tcb_rpl._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_set_tcb_rpl._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_act_establish._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_act_establish._entry.202 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_act_establish._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_act_establish._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_act_establish._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_data_ddp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_data_ddp._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_data_ddp._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_data_ddp._entry.220 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_data_ddp._entry.223 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_data_ddp._entry.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_process_ddpvld._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_process_ddpvld._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_process_ddpvld._entry.234 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cxgb4i_process_ddpvld._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_iscsi_cmp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_iscsi_cmp._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 94, i32 128, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_iscsi_cmp._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_iscsi_cmp._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_iscsi_cmp._entry.249 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_iscsi_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_iscsi_data._entry.253 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_iscsi_data._entry.255 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_rx_iscsi_data._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_fw4_ack._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_fw4_ack._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_uld_state_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_uld_state_change._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_uld_state_change._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_uld_state_change._entry.270 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @t4_uld_state_change._entry.273 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cxgb4i_exit_module() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @unregister_dcbevent_notifier(ptr noundef nonnull @cxgb4_dcb_change) #10
  %call1 = tail call i32 @cxgb4_unregister_uld(i32 noundef 2) #10
  tail call void @cxgbi_device_unregister_all(i32 noundef 2) #10
  tail call void @cxgbi_iscsi_cleanup(ptr noundef nonnull @cxgb4i_iscsi_transport, ptr noundef nonnull @cxgb4i_stt) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_dcbevent_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_unregister_uld(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_device_unregister_all(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_iscsi_cleanup(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4i_init_module() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @version) #13
  %call1 = tail call i32 @cxgbi_iscsi_init(ptr noundef nonnull @cxgb4i_iscsi_transport, ptr noundef nonnull @cxgb4i_stt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cxgb4_register_uld(i32 noundef 2, ptr noundef nonnull @cxgb4i_uld_info) #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1) #13
  %call7 = tail call i32 @register_dcbevent_notifier(ptr noundef nonnull @cxgb4_dcb_change) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cxgb4_dcb_change_notify(ptr nocapture noundef readnone %self, i32 noundef %val, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %port = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port) #10
  %0 = ptrtoint ptr %port to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 255, ptr %port, align 4
  %dcbx = getelementptr inbounds %struct.dcb_app_type, ptr %data, i32 0, i32 3
  %1 = ptrtoint ptr %dcbx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dcbx, align 4
  %conv = zext i8 %2 to i32
  %and = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %app = getelementptr inbounds %struct.dcb_app_type, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %app to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %app, align 4
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %if.then.cleanup_crit_edge [
    i8 2, label %if.then.if.end_crit_edge
    i8 4, label %if.then.if.end_crit_edge112
  ]

if.then.if.end_crit_edge112:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then.if.end_crit_edge, %if.then.if.end_crit_edge112
  %priority10 = getelementptr inbounds %struct.dcb_app_type, ptr %data, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %priority10 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %priority10, align 1
  br label %if.end34

if.else:                                          ; preds = %entry
  %and13 = and i32 %conv, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else.cleanup_crit_edge, label %if.then15

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then15:                                        ; preds = %if.else
  %app16 = getelementptr inbounds %struct.dcb_app_type, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %app16 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %app16, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %9)
  %cmp19.not = icmp eq i8 %9, 1
  br i1 %cmp19.not, label %if.end22, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end22:                                         ; preds = %if.then15
  %priority24 = getelementptr inbounds %struct.dcb_app_type, ptr %data, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %priority24 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %priority24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool25.not = icmp eq i8 %11, 0
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %12 = tail call i8 @llvm.cttz.i8(i8 %11, i1 true), !range !573
  br label %if.end34

if.end34:                                         ; preds = %if.end27, %if.end
  %priority.0 = phi i8 [ %7, %if.end ], [ %12, %if.end27 ]
  %protocol = getelementptr inbounds %struct.dcb_app_type, ptr %data, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %protocol, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3260, i16 %14)
  %cmp37.not = icmp eq i16 %14, 3260
  br i1 %cmp37.not, label %do.body, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %if.end34
  %15 = load i32, ptr @dbg_level, align 4
  %and41 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %do.body.do.end48_crit_edge, label %do.end

do.body.do.end48_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end48

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data, align 4
  %conv45 = zext i8 %priority.0 to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, i32 noundef %17, i32 noundef %conv45) #13
  br label %do.end48

do.end48:                                         ; preds = %do.end, %do.body.do.end48_crit_edge
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data, align 4
  %call50 = tail call ptr @dev_get_by_index(ptr noundef nonnull @init_net, i32 noundef %19) #10
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %do.end48.cleanup_crit_edge, label %do.body1.i

do.end48.cleanup_crit_edge:                       ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body1.i:                                       ; preds = %do.end48
  %call54 = call ptr @cxgbi_device_find_by_netdev_rcu(ptr noundef nonnull %call50, ptr noundef nonnull %port) #10
  %20 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !574
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call50, i32 0, i32 118
  %21 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu_refcnt.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = call i32 @llvm.read_register.i32(metadata !563) #10
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
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add13.i = add i32 %32, -1
  store i32 %add13.i, ptr %30, align 4
  %33 = call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !575
  %and.i.i.i = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_put.exit_crit_edge, !prof !576

do.body1.i.dev_put.exit_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_put.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @warn_bogus_irq_restore() #10
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i, %do.body1.i.dev_put.exit_crit_edge
  call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #10, !srcloc !577
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %dev_put.exit.cleanup_crit_edge, label %for.cond.preheader

dev_put.exit.cleanup_crit_edge:                   ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %dev_put.exit
  %used = getelementptr inbounds %struct.cxgbi_device, ptr %call54, i32 0, i32 21, i32 1
  %34 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %used, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp59110.not = icmp eq i32 %35, 0
  br i1 %cmp59110.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %port_csk = getelementptr inbounds %struct.cxgbi_device, ptr %call54, i32 0, i32 21, i32 5
  %conv66 = zext i8 %priority.0 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0111 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %36 = ptrtoint ptr %port_csk to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %port_csk, align 4
  %arrayidx = getelementptr ptr, ptr %37, i32 %i.0111
  %38 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx, align 4
  %tobool61.not = icmp eq ptr %39, null
  br i1 %tobool61.not, label %for.body.for.inc_crit_edge, label %if.then62

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then62:                                        ; preds = %for.body
  %dcb_priority = getelementptr inbounds %struct.cxgbi_sock, ptr %39, i32 0, i32 16
  %40 = ptrtoint ptr %dcb_priority to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %dcb_priority, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %41, i8 %priority.0)
  %cmp67.not = icmp eq i8 %41, %priority.0
  br i1 %cmp67.not, label %if.then62.for.inc_crit_edge, label %if.then69

if.then62.for.inc_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then69:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  %user_data = getelementptr inbounds %struct.cxgbi_sock, ptr %39, i32 0, i32 39
  %42 = ptrtoint ptr %user_data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %user_data, align 4
  call void @iscsi_conn_failure(ptr noundef %43, i32 noundef 1011) #10
  %44 = ptrtoint ptr %dcb_priority to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dcb_priority, align 4
  %conv75 = zext i8 %45 to i32
  %call77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.4, ptr noundef nonnull %39, i32 noundef %conv75, i32 noundef %conv66) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then69, %if.then62.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0111, 1
  %46 = ptrtoint ptr %used to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %used, align 4
  %cmp59 = icmp ult i32 %inc, %47
  br i1 %cmp59, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %dev_put.exit.cleanup_crit_edge, %do.end48.cleanup_crit_edge, %if.end34.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then15.cleanup_crit_edge ], [ 0, %if.end22.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ], [ 0, %do.end48.cleanup_crit_edge ], [ 0, %dev_put.exit.cleanup_crit_edge ], [ 1, %for.cond.preheader.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgbi_device_find_by_netdev_rcu(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_failure(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgbi_create_session(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_destroy_session(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgbi_create_conn(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_unbind(ptr noundef, i1 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_bind_conn(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_start(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_conn_stop(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_tcp_conn_teardown(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_set_conn_param(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_get_ep_param(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_get_param(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_session_get_param(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_get_host_param(ptr noundef, i32 noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_set_host_param(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_conn_send_pdu(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_get_conn_stats(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_tcp_task_init(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_tcp_task_xmit(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_cleanup_task(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_conn_alloc_pdu(ptr noundef, i8 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_conn_xmit_pdu(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_conn_init_pdu(ptr noundef, i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_parse_pdu_itt(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iscsi_session_recovery_timedout(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgbi_ep_connect(ptr noundef, ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_ep_poll(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_ep_disconnect(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @cxgbi_attr_is_visible(i32 noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_iscsi_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_register_uld(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_dcbevent_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @t4_uld_add(ptr noundef %lldi) #2 align 64 {
entry:
  %tformat.i = alloca %struct.cxgbi_tag_format, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nports = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lldi, i32 0, i32 11
  %0 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %nports, align 2
  %bf.clear = and i8 %bf.load, 15
  %conv = zext i8 %bf.clear to i32
  %call = tail call ptr @cxgbi_device_register(i32 noundef 148, i32 noundef %conv) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef %lldi) #13
  br label %cleanup

do.end4:                                          ; preds = %entry
  %adapter_type = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lldi, i32 0, i32 13
  %1 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %adapter_type, align 4
  %conv6 = zext i8 %2 to i32
  %3 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load8 = load i8, ptr %nports, align 2
  %bf.clear9 = and i8 %bf.load8, 15
  %conv10 = zext i8 %bf.clear9 to i32
  %ports = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lldi, i32 0, i32 3
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %bf.lshr = lshr i8 %bf.load8, 4
  %conv12 = zext i8 %bf.lshr to i32
  %ntxq = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lldi, i32 0, i32 9
  %8 = ptrtoint ptr %ntxq to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %ntxq, align 2
  %conv13 = zext i16 %9 to i32
  %nrxq = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lldi, i32 0, i32 8
  %10 = ptrtoint ptr %nrxq to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nrxq, align 4
  %conv14 = zext i16 %11 to i32
  %wr_cred = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lldi, i32 0, i32 12
  %12 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %wr_cred, align 1
  %conv15 = zext i8 %13 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15, ptr noundef nonnull %call, i32 noundef %conv6, i32 noundef %conv10, ptr noundef %7, i32 noundef %conv12, i32 noundef %conv13, i32 noundef %conv14, i32 noundef %conv15) #13
  %14 = ptrtoint ptr %nrxq to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %nrxq, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %15)
  %cmp227.not = icmp eq i16 %15, 0
  br i1 %cmp227.not, label %do.end4.for.end_crit_edge, label %do.body20.lr.ph

do.end4.for.end_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body20.lr.ph:                                  ; preds = %do.end4
  %rxq_ids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lldi, i32 0, i32 6
  br label %do.body20

do.body20:                                        ; preds = %for.inc.do.body20_crit_edge, %do.body20.lr.ph
  %i.0228 = phi i32 [ 0, %do.body20.lr.ph ], [ %inc, %for.inc.do.body20_crit_edge ]
  %16 = load i32, ptr @dbg_level, align 4
  %and = and i32 %16, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %do.body20.for.inc_crit_edge, label %do.end25

do.body20.for.inc_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end25:                                         ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %rxq_ids to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rxq_ids, align 4
  %arrayidx27 = getelementptr i16, ptr %18, i32 %i.0228
  %19 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx27, align 2
  %conv28 = zext i16 %20 to i32
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.15, ptr noundef %call, i32 noundef %i.0228, i32 noundef %conv28) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end25, %do.body20.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0228, 1
  %21 = ptrtoint ptr %nrxq to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %nrxq, align 4
  %conv18 = zext i16 %22 to i32
  %cmp = icmp ult i32 %inc, %conv18
  br i1 %cmp, label %for.inc.do.body20_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.do.body20_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body20

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end4.for.end_crit_edge
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 36
  %23 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dd_data, align 4
  %25 = call ptr @memcpy(ptr %24, ptr %lldi, i32 148)
  %flags = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 2
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 2, ptr %flags, align 4
  %27 = ptrtoint ptr %lldi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %lldi, align 4
  %pdev33 = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 9
  %29 = ptrtoint ptr %pdev33 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %pdev33, align 4
  %30 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ports, align 4
  %ports35 = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 3
  %32 = ptrtoint ptr %ports35 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %ports35, align 4
  %33 = ptrtoint ptr %nports to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load37 = load i8, ptr %nports, align 2
  %bf.clear38 = and i8 %bf.load37, 15
  %nports39 = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 8
  %34 = ptrtoint ptr %nports39 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %bf.clear38, ptr %nports39, align 1
  %mtus = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lldi, i32 0, i32 5
  %35 = ptrtoint ptr %mtus to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mtus, align 4
  %mtus40 = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 6
  %37 = ptrtoint ptr %mtus40 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %36, ptr %mtus40, align 4
  %nmtus = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 7
  %38 = ptrtoint ptr %nmtus to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 16, ptr %nmtus, align 4
  %39 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %adapter_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %40)
  %cmp44 = icmp ult i8 %40, 96
  br i1 %cmp44, label %cond.true, label %for.end.cond.end_crit_edge

for.end.cond.end_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %41 = load i32, ptr @cxgb4i_rx_credit_thres, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %for.end.cond.end_crit_edge
  %cond = phi i32 [ %41, %cond.true ], [ 0, %for.end.cond.end_crit_edge ]
  %rx_credit_thres = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 14
  %42 = ptrtoint ptr %rx_credit_thres to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %cond, ptr %rx_credit_thres, align 4
  %skb_tx_rsvd = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 15
  %43 = ptrtoint ptr %skb_tx_rsvd to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 92, ptr %skb_tx_rsvd, align 4
  %skb_rx_extra = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 17
  %44 = ptrtoint ptr %skb_rx_extra to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 16, ptr %skb_rx_extra, align 4
  %itp = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 11
  %45 = ptrtoint ptr %itp to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @cxgb4i_iscsi_transport, ptr %itp, align 4
  %owner = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 12
  %46 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %owner, align 4
  %pf = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lldi, i32 0, i32 30
  %47 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pf, align 4
  %shl = shl i32 %48, 8
  %pfvf = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 13
  %49 = ptrtoint ptr %pfvf to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %shl, ptr %pfvf, align 4
  %50 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ports, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.15, ptr noundef %call, ptr noundef %53, i32 noundef %shl) #13
  %54 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dd_data, align 4
  %56 = ptrtoint ptr %ports35 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ports35, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tformat.i) #10
  %vr.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %55, i32 0, i32 4
  %60 = ptrtoint ptr %vr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %vr.i, align 4
  %size.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %61, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i = icmp eq i32 %63, 0
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, ptr noundef %59) #13
  br label %do.end61

if.end.i:                                         ; preds = %cond.end
  %64 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat.i, i32 0, i32 9
  %65 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat.i, i32 0, i32 8
  %66 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat.i, i32 0, i32 7
  %67 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat.i, i32 0, i32 6
  %68 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat.i, i32 0, i32 5
  %69 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat.i, i32 0, i32 4
  %70 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat.i, i32 0, i32 3
  %71 = getelementptr inbounds %struct.cxgbi_tag_format, ptr %tformat.i, i32 0, i32 2
  %72 = getelementptr inbounds [4 x i8], ptr %tformat.i, i32 0, i32 3
  %73 = getelementptr inbounds [4 x i8], ptr %tformat.i, i32 0, i32 2
  %74 = getelementptr inbounds [4 x i8], ptr %tformat.i, i32 0, i32 1
  %75 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags, align 4
  %or.i = or i32 %76, 64
  store i32 %or.i, ptr %flags, align 4
  %77 = getelementptr inbounds i8, ptr %tformat.i, i32 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 0, ptr %77, align 4
  %iscsi_pgsz_order.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %55, i32 0, i32 36
  %79 = ptrtoint ptr %iscsi_pgsz_order.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %iscsi_pgsz_order.i, align 4
  %81 = trunc i32 %80 to i8
  %conv.i = and i8 %81, 15
  %82 = ptrtoint ptr %tformat.i to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv.i, ptr %tformat.i, align 4
  %shr.1.i = lshr i32 %80, 8
  %83 = trunc i32 %shr.1.i to i8
  %conv.1.i = and i8 %83, 15
  %84 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %conv.1.i, ptr %74, align 1
  %shr.2.i = lshr i32 %80, 16
  %85 = trunc i32 %shr.2.i to i8
  %conv.2.i = and i8 %85, 15
  %86 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv.2.i, ptr %73, align 2
  %shr.3.i = lshr i32 %80, 24
  %87 = trunc i32 %shr.3.i to i8
  %conv.3.i = and i8 %87, 15
  %88 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %conv.3.i, ptr %72, align 1
  %iscsi_tagmask.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %55, i32 0, i32 35
  %89 = ptrtoint ptr %iscsi_tagmask.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %iscsi_tagmask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i.i.i = icmp eq i32 %90, 0
  %91 = tail call i32 @llvm.ctlz.i32(i32 %90, i1 true) #10, !range !578
  %sub.i.i.i = sub nuw nsw i32 32, %91
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  %92 = trunc i32 %cond.i.i.i to i8
  %.neg.i.i = mul i8 %92, -16
  %93 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %92, ptr %69, align 1
  %bf.set4.i.i = add i8 %.neg.i.i, -26
  %94 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %bf.set4.i.i, ptr %71, align 1
  %sub5.i.i = add nsw i32 %cond.i.i.i, -1
  %conv7.i.i = add nsw i8 %92, -7
  %95 = ptrtoint ptr %70 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv7.i.i, ptr %70, align 2
  %shl.i.i = shl nuw i32 1, %sub5.i.i
  %96 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %shl.i.i, ptr %68, align 4
  %conv10.i.i = zext i8 %conv7.i.i to i32
  %notmask.i.i = shl nsw i32 -1, %conv10.i.i
  %sub12.i.i = xor i32 %notmask.i.i, -1
  %97 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %sub12.i.i, ptr %67, align 4
  %98 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 63, ptr %66, align 4
  %sub15.i.i = add i32 %shl.i.i, -1
  %99 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %sub15.i.i, ptr %65, align 4
  %notmask63.i.i = shl nsw i32 -1, %cond.i.i.i
  %sub17.i.i = xor i32 %notmask63.i.i, -1
  %100 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %sub17.i.i, ptr %64, align 4
  %conv28.i.i = zext i8 %conv.i to i32
  %conv31.i.i = zext i8 %conv.1.i to i32
  %conv34.i.i = zext i8 %conv.2.i to i32
  %conv37.i.i = zext i8 %conv.3.i to i32
  %call38.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, i32 noundef %90, i32 noundef %cond.i.i.i, i32 noundef %conv10.i.i, i32 noundef 6, i32 noundef %shl.i.i, i32 noundef %sub17.i.i, i32 noundef %conv28.i.i, i32 noundef %conv31.i.i, i32 noundef %conv34.i.i, i32 noundef %conv37.i.i) #13
  %101 = ptrtoint ptr %vr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %vr.i, align 4
  %ppod_edram.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %102, i32 0, i32 11
  %103 = ptrtoint ptr %ppod_edram.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %ppod_edram.i, align 4
  %size9.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %102, i32 0, i32 11, i32 1
  %105 = ptrtoint ptr %size9.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %size9.i, align 4
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.38, i32 noundef %104, i32 noundef %106) #13
  %iscsi_ppm.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %55, i32 0, i32 39
  %107 = ptrtoint ptr %iscsi_ppm.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %iscsi_ppm.i, align 4
  %109 = ptrtoint ptr %vr.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %vr.i, align 4
  %iscsi12.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %110, i32 0, i32 1
  %size13.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %110, i32 0, i32 1, i32 1
  %111 = ptrtoint ptr %size13.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %size13.i, align 4
  %iscsi_llimit.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %55, i32 0, i32 37
  %113 = ptrtoint ptr %iscsi_llimit.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %iscsi_llimit.i, align 4
  %115 = ptrtoint ptr %iscsi12.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %iscsi12.i, align 4
  %ppod_edram18.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %110, i32 0, i32 11
  %117 = ptrtoint ptr %ppod_edram18.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ppod_edram18.i, align 4
  %size22.i = getelementptr inbounds %struct.cxgb4_virt_res, ptr %110, i32 0, i32 11, i32 1
  %119 = ptrtoint ptr %size22.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %size22.i, align 4
  %call23.i = call i32 @cxgbi_ddp_ppm_setup(ptr noundef %108, ptr noundef %call, ptr noundef nonnull %tformat.i, i32 noundef %112, i32 noundef %114, i32 noundef %116, i32 noundef 2, i32 noundef %118, i32 noundef %120) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %if.end.i.do.end61_crit_edge, label %if.end64

if.end.i.do.end61_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end61

do.end61:                                         ; preds = %if.end.i.do.end61_crit_edge, %do.end.i
  %retval.0.i.ph = phi i32 [ %call23.i, %if.end.i.do.end61_crit_edge ], [ -13, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tformat.i) #10
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.15, ptr noundef %call, i32 noundef %retval.0.i.ph) #13
  br label %err_out

if.end64:                                         ; preds = %if.end.i
  %csk_ddp_setup_digest.i = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 26
  %121 = ptrtoint ptr %csk_ddp_setup_digest.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @ddp_setup_conn_digest, ptr %csk_ddp_setup_digest.i, align 4
  %csk_ddp_setup_pgidx.i = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 27
  %122 = ptrtoint ptr %csk_ddp_setup_pgidx.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @ddp_setup_conn_pgidx, ptr %csk_ddp_setup_pgidx.i, align 4
  %csk_ddp_set_map.i = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 24
  %123 = ptrtoint ptr %csk_ddp_set_map.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @ddp_set_map, ptr %csk_ddp_set_map.i, align 4
  %iscsi_iolen.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %55, i32 0, i32 17
  %124 = ptrtoint ptr %iscsi_iolen.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %iscsi_iolen.i, align 4
  %sub.i = add i32 %125, -312
  %126 = call i32 @llvm.umin.i32(i32 %sub.i, i32 15912) #10
  %tx_max_size.i = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 18
  %127 = ptrtoint ptr %tx_max_size.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %tx_max_size.i, align 4
  %128 = ptrtoint ptr %iscsi_iolen.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %iscsi_iolen.i, align 4
  %sub32.i = add i32 %129, -312
  %130 = call i32 @llvm.umin.i32(i32 %sub32.i, i32 15912) #10
  %rx_max_size.i = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 19
  %131 = ptrtoint ptr %rx_max_size.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %rx_max_size.i, align 4
  %cdev2ppm.i = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 23
  %132 = ptrtoint ptr %cdev2ppm.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr @cdev2ppm, ptr %cdev2ppm.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tformat.i) #10
  %133 = ptrtoint ptr %ports35 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ports35, align 4
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %136, i32 2304
  %137 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %add.ptr.i.i.i, align 8
  %tobool68.not = icmp eq ptr %138, null
  br i1 %tobool68.not, label %do.end89, label %if.then69

if.then69:                                        ; preds = %if.end64
  %ntids = getelementptr inbounds %struct.adapter, ptr %138, i32 0, i32 48, i32 2
  %139 = ptrtoint ptr %ntids to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %ntids, align 8
  %141 = call i32 @llvm.umin.i32(i32 %140, i32 16384)
  %142 = ptrtoint ptr %138 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %138, align 128
  %add.ptr.i.i = getelementptr i8, ptr %143, i32 30680
  %144 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !579
  %145 = call i32 @llvm.bswap.i32(i32 %144) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !580
  %chip.i = getelementptr inbounds %struct.adapter, ptr %138, i32 0, i32 15, i32 22
  %146 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %chip.i, align 8
  %148 = and i32 %147, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %148)
  %cmp.i.not.i = icmp eq i32 %148, 80
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then69
  %149 = and i32 %145, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %if.then.i.if.then76_crit_edge, label %if.then.i.if.end94_crit_edge

if.then.i.if.end94_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.then.i.if.then76_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76

if.else.i:                                        ; preds = %if.then69
  %and6.i = and i32 %145, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i)
  %tobool7.not.i = icmp eq i32 %and6.i, 0
  br i1 %tobool7.not.i, label %if.else.i.if.then76_crit_edge, label %if.else.i.if.end94_crit_edge

if.else.i.if.end94_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

if.else.i.if.then76_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76

if.then76:                                        ; preds = %if.else.i.if.then76_crit_edge, %if.then.i.if.then76_crit_edge
  %151 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %flags, align 4
  %or = or i32 %152, 1024
  store i32 %or, ptr %flags, align 4
  %153 = ptrtoint ptr %ntids to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %ntids, align 8
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.15, ptr noundef %136, ptr noundef %call, i32 noundef %154) #13
  br label %if.end94

do.end89:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %call93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.15, ptr noundef %136, ptr noundef %call) #13
  br label %if.end94

if.end94:                                         ; preds = %do.end89, %if.then76, %if.else.i.if.end94_crit_edge, %if.then.i.if.end94_crit_edge
  %max_conn.1 = phi i32 [ %141, %if.then76 ], [ 16384, %do.end89 ], [ %141, %if.then.i.if.end94_crit_edge ], [ %141, %if.else.i.if.end94_crit_edge ]
  %max_cmds.0 = phi i32 [ 256, %if.then76 ], [ 1024, %do.end89 ], [ 1024, %if.then.i.if.end94_crit_edge ], [ 1024, %if.else.i.if.end94_crit_edge ]
  %155 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %adapter_type, align 4
  %157 = and i8 %156, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %157)
  %cmp.i.not = icmp eq i8 %157, 64
  br i1 %cmp.i.not, label %if.end94.if.end106_crit_edge, label %land.lhs.true

if.end94.if.end106_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

land.lhs.true:                                    ; preds = %if.end94
  %fw_vers = getelementptr inbounds %struct.cxgb4_lld_info, ptr %lldi, i32 0, i32 16
  %158 = ptrtoint ptr %fw_vers to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %fw_vers, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17640191, i32 %159)
  %cmp99 = icmp ugt i32 %159, 17640191
  br i1 %cmp99, label %land.lhs.true101, label %land.lhs.true.if.end106_crit_edge

land.lhs.true.if.end106_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

land.lhs.true101:                                 ; preds = %land.lhs.true
  %160 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %flags, align 4
  %and103 = and i32 %161, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103)
  %tobool104.not = icmp eq i32 %and103, 0
  br i1 %tobool104.not, label %if.then105, label %land.lhs.true101.if.end106_crit_edge

land.lhs.true101.if.end106_crit_edge:             ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end106

if.then105:                                       ; preds = %land.lhs.true101
  call void @__sanitizer_cov_trace_pc() #12
  %skb_iso_txhdr = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 16
  %162 = ptrtoint ptr %skb_iso_txhdr to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 32, ptr %skb_iso_txhdr, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then105, %land.lhs.true101.if.end106_crit_edge, %land.lhs.true.if.end106_crit_edge, %if.end94.if.end106_crit_edge
  %163 = load i32, ptr @cxgb4i_max_connect, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16384, i32 %163)
  %cmp.i214 = icmp ugt i32 %163, 16384
  br i1 %cmp.i214, label %if.then.i215, label %if.end106.if.end.i218_crit_edge

if.end106.if.end.i218_crit_edge:                  ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i218

if.then.i215:                                     ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  store i32 16384, ptr @cxgb4i_max_connect, align 4
  br label %if.end.i218

if.end.i218:                                      ; preds = %if.then.i215, %if.end106.if.end.i218_crit_edge
  %164 = load i16, ptr @cxgb4i_sport_base, align 2
  %conv.i216 = zext i16 %164 to i32
  %165 = load i32, ptr @cxgb4i_max_connect, align 4
  %call.i217 = call i32 @cxgbi_device_portmap_create(ptr noundef %call, i32 noundef %conv.i216, i32 noundef %165) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i217)
  %cmp1.i = icmp slt i32 %call.i217, 0
  br i1 %cmp1.i, label %do.end112, label %if.end115

do.end112:                                        ; preds = %if.end.i218
  call void @__sanitizer_cov_trace_pc() #12
  %call114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.15, ptr noundef %call) #13
  br label %err_out

if.end115:                                        ; preds = %if.end.i218
  %csk_release_offload_resources.i = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 28
  %166 = ptrtoint ptr %csk_release_offload_resources.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @release_offload_resources, ptr %csk_release_offload_resources.i, align 4
  %csk_push_tx_frames.i = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 31
  %167 = ptrtoint ptr %csk_push_tx_frames.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @push_tx_frames, ptr %csk_push_tx_frames.i, align 4
  %csk_send_abort_req.i = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 32
  %168 = ptrtoint ptr %csk_send_abort_req.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr @send_abort_req, ptr %csk_send_abort_req.i, align 4
  %csk_send_close_req.i = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 33
  %169 = ptrtoint ptr %csk_send_close_req.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @send_close_req, ptr %csk_send_close_req.i, align 4
  %csk_send_rx_credits.i = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 30
  %170 = ptrtoint ptr %csk_send_rx_credits.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr @send_rx_credits, ptr %csk_send_rx_credits.i, align 4
  %csk_alloc_cpls.i = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 34
  %171 = ptrtoint ptr %csk_alloc_cpls.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @alloc_cpls, ptr %csk_alloc_cpls.i, align 4
  %csk_init_act_open.i = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 35
  %172 = ptrtoint ptr %csk_init_act_open.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr @init_act_open, ptr %csk_init_act_open.i, align 4
  %call5.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef %call) #13
  store i32 %max_cmds.0, ptr getelementptr inbounds (%struct.scsi_host_template, ptr @cxgb4i_host_template, i32 0, i32 34), align 8
  %173 = load ptr, ptr @cxgb4i_stt, align 4
  %call116 = call i32 @cxgbi_hbas_add(ptr noundef %call, i64 noundef 4096, i32 noundef %max_conn.1, ptr noundef nonnull @cxgb4i_host_template, ptr noundef %173) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %for.cond120.preheader, label %if.end115.err_out_crit_edge

if.end115.err_out_crit_edge:                      ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

for.cond120.preheader:                            ; preds = %if.end115
  %174 = ptrtoint ptr %nports39 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %nports39, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %175)
  %cmp123231.not = icmp eq i8 %175, 0
  br i1 %cmp123231.not, label %for.cond120.preheader.cleanup_crit_edge, label %for.body125.lr.ph

for.cond120.preheader.cleanup_crit_edge:          ; preds = %for.cond120.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body125.lr.ph:                                ; preds = %for.cond120.preheader
  %hbas = getelementptr inbounds %struct.cxgbi_device, ptr %call, i32 0, i32 5
  br label %for.body125

for.body125:                                      ; preds = %for.body125.for.body125_crit_edge, %for.body125.lr.ph
  %i.1232 = phi i32 [ 0, %for.body125.lr.ph ], [ %inc132, %for.body125.for.body125_crit_edge ]
  %176 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %ports, align 4
  %arrayidx127 = getelementptr ptr, ptr %177, i32 %i.1232
  %178 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx127, align 4
  %port_id = getelementptr i8, ptr %179, i32 2325
  %180 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %port_id, align 1
  %182 = ptrtoint ptr %hbas to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %hbas, align 4
  %arrayidx129 = getelementptr ptr, ptr %183, i32 %i.1232
  %184 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %arrayidx129, align 4
  %port_id130 = getelementptr inbounds %struct.cxgbi_hba, ptr %185, i32 0, i32 5
  %186 = ptrtoint ptr %port_id130 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 %181, ptr %port_id130, align 4
  %inc132 = add nuw nsw i32 %i.1232, 1
  %187 = ptrtoint ptr %nports39 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %nports39, align 1
  %conv122 = zext i8 %188 to i32
  %cmp123 = icmp ult i32 %inc132, %conv122
  br i1 %cmp123, label %for.body125.for.body125_crit_edge, label %for.body125.cleanup_crit_edge

for.body125.cleanup_crit_edge:                    ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body125.for.body125_crit_edge:                ; preds = %for.body125
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body125

err_out:                                          ; preds = %if.end115.err_out_crit_edge, %do.end112, %do.end61
  call void @cxgbi_device_unregister(ptr noundef %call) #10
  br label %cleanup

cleanup:                                          ; preds = %err_out, %for.body125.cleanup_crit_edge, %for.cond120.preheader.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %err_out ], [ null, %do.end ], [ %call, %for.cond120.preheader.cleanup_crit_edge ], [ %call, %for.body125.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t4_uld_rx_handler(ptr noundef %handle, ptr nocapture noundef readonly %rsp, ptr noundef %pgl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %pgl, null
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %cleanup, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %cleanup.thread, label %do.body3.i.i, !prof !581

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !582
  unreachable

cleanup.thread:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 40
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %5, 40
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %arrayidx = getelementptr i64, ptr %rsp, i32 1
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %9 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i, align 4
  %11 = call ptr @memcpy(ptr %10, ptr %arrayidx, i32 40)
  br label %if.end24

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 40, i32 noundef 0) #13
  br label %do.body52

if.else:                                          ; preds = %entry
  %12 = ptrtoint ptr %rsp to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rsp, align 1
  %va = getelementptr inbounds %struct.pkt_gl, ptr %pgl, i32 0, i32 2
  %14 = ptrtoint ptr %va to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %va, align 8
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %17)
  %cmp3.not = icmp eq i8 %13, %17
  br i1 %cmp3.not, label %if.end11, label %do.end, !prof !581

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %rsp to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %rsp, align 8
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %15, align 8
  %tot_len = getelementptr inbounds %struct.pkt_gl, ptr %pgl, i32 0, i32 4
  %22 = ptrtoint ptr %tot_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tot_len, align 8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.133, ptr noundef %15, i64 noundef %19, i64 noundef %21, i32 noundef %23) #13
  br label %cleanup64

if.end11:                                         ; preds = %if.else
  %call12 = tail call ptr @cxgb4_pktgl_to_skb(ptr noundef nonnull %pgl, i32 noundef 128, i32 noundef 128) #10
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %if.end11.do.body52_crit_edge, label %if.end11.if.end24_crit_edge, !prof !576

if.end11.if.end24_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.end11.do.body52_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body52

if.end24:                                         ; preds = %if.end11.if.end24_crit_edge, %cleanup.thread
  %skb.0 = phi ptr [ %call12, %if.end11.if.end24_crit_edge ], [ %call.i.i, %cleanup.thread ]
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 19
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %25, align 4
  %conv25 = zext i8 %27 to i32
  %28 = load i32, ptr @dbg_level, align 4
  %and = and i32 %28, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %if.end24.do.end38_crit_edge, label %do.end31

if.end24.do.end38_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end38

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %25, align 4
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.133, ptr noundef %handle, i32 noundef %conv25, i32 noundef %30, i32 noundef %30, ptr noundef nonnull %skb.0) #13
  br label %do.end38

do.end38:                                         ; preds = %do.end31, %if.end24.do.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -18, i8 %27)
  %cmp39 = icmp ugt i8 %27, -18
  br i1 %cmp39, label %do.end38.do.end46_crit_edge, label %lor.lhs.false

do.end38.do.end46_crit_edge:                      ; preds = %do.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

lor.lhs.false:                                    ; preds = %do.end38
  %arrayidx41 = getelementptr [239 x ptr], ptr @cxgb4i_cplhandlers, i32 0, i32 %conv25
  %31 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx41, align 4
  %tobool42.not = icmp eq ptr %32, null
  br i1 %tobool42.not, label %lor.lhs.false.do.end46_crit_edge, label %if.else49

lor.lhs.false.do.end46_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end46

do.end46:                                         ; preds = %lor.lhs.false.do.end46_crit_edge, %do.end38.do.end46_crit_edge
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138, ptr noundef nonnull @.str.133, i32 noundef %conv25) #13
  tail call void @__kfree_skb(ptr noundef nonnull %skb.0) #10
  br label %cleanup64

if.else49:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %32(ptr noundef %handle, ptr noundef nonnull %skb.0) #10
  br label %cleanup64

do.body52:                                        ; preds = %if.end11.do.body52_crit_edge, %cleanup
  %33 = load i32, ptr @dbg_level, align 4
  %and53 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %do.body52.cleanup64_crit_edge, label %do.end58

do.body52.cleanup64_crit_edge:                    ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup64

do.end58:                                         ; preds = %do.body52
  call void @__sanitizer_cov_trace_pc() #12
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.133) #13
  br label %cleanup64

cleanup64:                                        ; preds = %do.end58, %do.body52.cleanup64_crit_edge, %if.else49, %do.end46, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %if.else49 ], [ 0, %do.end46 ], [ 1, %do.end58 ], [ 1, %do.body52.cleanup64_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @t4_uld_state_change(ptr noundef %handle, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.276)
  switch i32 %state, label %do.end21 [
    i32 0, label %do.end
    i32 1, label %do.end4
    i32 2, label %do.end10
    i32 3, label %do.end16
  ]

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.262, ptr noundef nonnull @.str.263, ptr noundef %handle) #13
  br label %sw.epilog

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.265, ptr noundef nonnull @.str.263, ptr noundef %handle) #13
  br label %sw.epilog

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.268, ptr noundef nonnull @.str.263, ptr noundef %handle) #13
  br label %sw.epilog

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.263, ptr noundef %handle) #13
  tail call void @cxgbi_device_unregister(ptr noundef %handle) #10
  br label %sw.epilog

do.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.274, ptr noundef nonnull @.str.263, ptr noundef %handle, i32 noundef %state) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end21, %do.end16, %do.end10, %do.end4, %do.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgbi_device_register(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_hbas_add(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_device_unregister(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_ddp_ppm_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddp_setup_conn_digest(ptr noundef %csk, i32 noundef %tid, i32 noundef %hcrc, i32 noundef %dcrc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hcrc)
  %tobool.not = icmp eq i32 %hcrc, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dcrc)
  %tobool1.not = icmp eq i32 %dcrc, 0
  %0 = or i32 %dcrc, %hcrc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %alloc_wr.exit.thread, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %2 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not.i.i = icmp eq i32 %3, 0
  br i1 %tobool.i.not.i.i, label %if.end4, label %do.body3.i.i, !prof !581

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !582
  unreachable

alloc_wr.exit.thread:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 40, i32 noundef 0) #13
  br label %cleanup

if.end4:                                          ; preds = %if.then.i
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %4 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 40
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %7, 40
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 8
  %10 = call ptr @memset(ptr %9, i32 0, i32 40)
  %conv = select i1 %tobool.not, i8 0, i8 4
  %hcrc_len = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 17
  %11 = ptrtoint ptr %hcrc_len to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv, ptr %hcrc_len, align 1
  %conv8 = select i1 %tobool1.not, i8 0, i8 4
  %dcrc_len = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 18
  %12 = ptrtoint ptr %dcrc_len to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv8, ptr %dcrc_len, align 2
  %13 = load ptr, ptr %head.i, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 83886104, ptr %13, align 8
  %shl = shl i32 %tid, 8
  %or = or i32 %shl, 3
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %13, i32 0, i32 1
  %15 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or, ptr %wr_mid, align 4
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %wr_lo, align 8
  %or11 = or i32 %tid, 83886080
  %ot = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %13, i32 0, i32 1
  %17 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or11, ptr %ot, align 8
  %rss_qid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 5
  %18 = ptrtoint ptr %rss_qid to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %rss_qid, align 4
  %reply_ctrl = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %13, i32 0, i32 2
  %20 = ptrtoint ptr %reply_ctrl to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %reply_ctrl, align 4
  %word_cookie = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %13, i32 0, i32 3
  %21 = ptrtoint ptr %word_cookie to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %word_cookie, align 2
  %mask = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %13, i32 0, i32 4
  %22 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 48, ptr %mask, align 8
  %not.tobool.not = xor i1 %tobool.not, true
  %cond17 = zext i1 %not.tobool.not to i32
  %cond19 = select i1 %tobool1.not, i32 0, i32 2
  %or20 = or i32 %cond19, %cond17
  %shl21 = shl nuw nsw i32 %or20, 4
  %conv22 = zext i32 %shl21 to i64
  %val = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %13, i32 0, i32 5
  %23 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %conv22, ptr %val, align 8
  %port_id = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %24 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %port_id, align 4
  %conv23 = zext i8 %25 to i16
  %shl.i = shl nuw nsw i16 %conv23, 1
  %or.i = or i16 %shl.i, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 10
  %26 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %or.i, ptr %queue_mapping1.i.i, align 8
  %27 = load i32, ptr @dbg_level, align 4
  %and = and i32 %27, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %if.end4.do.end34_crit_edge, label %do.end29

if.end4.do.end34_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end34

do.end29:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  %tid30 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %28 = ptrtoint ptr %tid30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tid30, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef %csk, i32 noundef %29, i32 noundef %hcrc, i32 noundef %dcrc) #13
  br label %do.end34

do.end34:                                         ; preds = %do.end29, %if.end4.do.end34_crit_edge
  %cmpl = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 36
  %30 = ptrtoint ptr %cmpl to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %cmpl, align 4
  %31 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %csk, align 4
  %ports = getelementptr inbounds %struct.cxgbi_device, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ports, align 4
  %35 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %port_id, align 4
  %idxprom = zext i8 %36 to i32
  %arrayidx = getelementptr ptr, ptr %34, i32 %idxprom
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %call36 = tail call i32 @cxgb4_ofld_send(ptr noundef %38, ptr noundef nonnull %call.i.i) #10
  tail call void @wait_for_completion(ptr noundef %cmpl) #10
  %err = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 37
  %39 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end34, %alloc_wr.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %40, %do.end34 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %alloc_wr.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddp_setup_conn_pgidx(ptr noundef %csk, i32 noundef %tid, i32 noundef %pg_idx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pg_idx)
  %tobool.not = icmp eq i32 %pg_idx, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %pg_idx)
  %cmp = icmp sgt i32 %pg_idx, 3
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 40, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %alloc_wr.exit.thread, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %if.end3, label %do.body3.i.i, !prof !581

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !582
  unreachable

alloc_wr.exit.thread:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 40, i32 noundef 0) #13
  br label %cleanup

if.end3:                                          ; preds = %if.then.i
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 40
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %5, 40
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %6 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i, align 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 40)
  %9 = load ptr, ptr %head.i, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 83886104, ptr %9, align 8
  %tid4 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %11 = ptrtoint ptr %tid4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %tid4, align 4
  %shl = shl i32 %12, 8
  %or = or i32 %shl, 3
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %or, ptr %wr_mid, align 4
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %9, i32 0, i32 2
  %14 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 0, ptr %wr_lo, align 8
  %15 = load i32, ptr %tid4, align 4
  %or8 = or i32 %15, 83886080
  %ot = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %9, i32 0, i32 1
  %16 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or8, ptr %ot, align 8
  %rss_qid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 5
  %17 = ptrtoint ptr %rss_qid to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rss_qid, align 4
  %reply_ctrl = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %9, i32 0, i32 2
  %19 = ptrtoint ptr %reply_ctrl to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %reply_ctrl, align 4
  %word_cookie = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %9, i32 0, i32 3
  %20 = ptrtoint ptr %word_cookie to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %word_cookie, align 2
  %mask = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %9, i32 0, i32 4
  %21 = ptrtoint ptr %mask to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 768, ptr %mask, align 8
  %shl12 = shl i32 %pg_idx, 8
  %conv13 = sext i32 %shl12 to i64
  %val = getelementptr inbounds %struct.cpl_set_tcb_field, ptr %9, i32 0, i32 5
  %22 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv13, ptr %val, align 8
  %port_id = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %23 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %port_id, align 4
  %conv14 = zext i8 %24 to i16
  %shl.i = shl nuw nsw i16 %conv14, 1
  %or.i = or i16 %shl.i, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 10
  %25 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %or.i, ptr %queue_mapping1.i.i, align 8
  %26 = load i32, ptr @dbg_level, align 4
  %and = and i32 %26, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.end3.do.end25_crit_edge, label %do.end20

if.end3.do.end25_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end25

do.end20:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %tid4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %tid4, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.51, ptr noundef %csk, i32 noundef %28, i32 noundef %pg_idx) #13
  br label %do.end25

do.end25:                                         ; preds = %do.end20, %if.end3.do.end25_crit_edge
  %cmpl = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 36
  %29 = ptrtoint ptr %cmpl to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %cmpl, align 4
  %30 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %csk, align 4
  %ports = getelementptr inbounds %struct.cxgbi_device, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ports, align 4
  %34 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %port_id, align 4
  %idxprom = zext i8 %35 to i32
  %arrayidx = getelementptr ptr, ptr %33, i32 %idxprom
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx, align 4
  %call27 = tail call i32 @cxgb4_ofld_send(ptr noundef %37, ptr noundef nonnull %call.i.i) #10
  tail call void @wait_for_completion(ptr noundef %cmpl) #10
  %err = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 37
  %38 = ptrtoint ptr %err to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %err, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end25, %alloc_wr.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %39, %do.end25 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %alloc_wr.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ddp_set_map(ptr nocapture noundef readonly %ppm, ptr noundef %csk, ptr noundef %ttinfo) #2 align 64 {
entry:
  %sg = alloca ptr, align 4
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idx = getelementptr inbounds %struct.cxgbi_task_tag_info, ptr %ttinfo, i32 0, i32 4
  %0 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idx, align 8
  %npods1 = getelementptr inbounds %struct.cxgbi_task_tag_info, ptr %ttinfo, i32 0, i32 3
  %2 = ptrtoint ptr %npods1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %npods1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sg) #10
  %sgl = getelementptr inbounds %struct.cxgbi_task_tag_info, ptr %ttinfo, i32 0, i32 9
  %4 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sgl, align 8
  %6 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %sg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #10
  %7 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %offset, align 4
  %port_id = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %8 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port_id, align 4
  %cid = getelementptr inbounds %struct.cxgbi_task_tag_info, ptr %ttinfo, i32 0, i32 1
  %10 = ptrtoint ptr %cid to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %cid, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp26.not = icmp eq i32 %3, 0
  br i1 %cmp26.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tid.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %llimit.i.i = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 7
  %lock.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 26
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.028 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %pidx.027 = phi i32 [ %1, %for.body.lr.ph ], [ %add6, %for.inc.for.body_crit_edge ]
  %sub = sub i32 %3, %i.028
  %11 = call i32 @llvm.umin.i32(i32 %sub, i32 3)
  %12 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tid.i, align 4
  %14 = ptrtoint ptr %llimit.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %llimit.i.i, align 4
  %shl1.i.i = shl nuw nsw i32 %11, 6
  %div18.i.i = or i32 %shl1.i.i, 48
  %call.i.i.i.i = call ptr @__alloc_skb(i32 noundef %div18.i.i, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %ddp_ppod_write_idata.exit.thread, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data_len.i.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.i.not.i.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.i.not.i.i.i.i, label %if.end.i, label %do.body3.i.i.i.i, !prof !581

do.body3.i.i.i.i:                                 ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !582
  unreachable

ddp_ppod_write_idata.exit.thread:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %div18.i.i, i32 noundef 0) #13
  %ndev.i.i = getelementptr inbounds %struct.cxgbi_ppm, ptr %ppm, i32 0, i32 1
  %18 = ptrtoint ptr %ndev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ndev.i.i, align 4
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.53, ptr noundef %19, i32 noundef %pidx.027, i32 noundef %11) #13
  br label %for.end

if.end.i:                                         ; preds = %if.then.i.i.i
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 16
  %20 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %add.ptr.i.i.i.i = getelementptr i8, ptr %21, i32 %div18.i.i
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i.i, align 8
  %len9.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 6
  %22 = ptrtoint ptr %len9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len9.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %23, %div18.i.i
  store i32 %add.i.i.i.i, ptr %len9.i.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 18
  %24 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %head.i.i.i, align 8
  %26 = call ptr @memset(ptr %25, i32 0, i32 %div18.i.i)
  %shl.i.i = shl i32 %pidx.027, 6
  %add.i.i = add i32 %15, %shl.i.i
  %27 = load ptr, ptr %head.i.i.i, align 8
  %add.ptr.i.i.i = getelementptr %struct.ulp_mem_io, ptr %27, i32 1
  %sub.i.i.i = shl nuw nsw i32 %11, 2
  %shl1.i.i.i = shl i32 %13, 8
  %div33.i.i.i = or i32 %shl1.i.i.i, %sub.i.i.i
  %or.i.i.i = or i32 %div33.i.i.i, 3
  %wr_mid.i.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %wr_mid.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or.i.i.i, ptr %wr_mid.i.i.i, align 4
  %wr_lo.i.i.i = getelementptr inbounds %struct.work_request_hdr, ptr %27, i32 0, i32 2
  %29 = ptrtoint ptr %wr_lo.i.i.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %wr_lo.i.i.i, align 8
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 67108864, ptr %27, align 8
  %cmd.i.i.i = getelementptr inbounds %struct.ulp_mem_io, ptr %27, i32 0, i32 1
  %31 = ptrtoint ptr %cmd.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 58720256, ptr %cmd.i.i.i, align 8
  %shr.i.i.i = shl nuw nsw i32 %11, 1
  %dlen14.i.i.i = getelementptr inbounds %struct.ulp_mem_io, ptr %27, i32 0, i32 3
  %32 = ptrtoint ptr %dlen14.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %shr.i.i.i, ptr %dlen14.i.i.i, align 8
  %shr15.i.i.i = lshr i32 %add.i.i, 5
  %lock_addr.i.i.i = getelementptr inbounds %struct.ulp_mem_io, ptr %27, i32 0, i32 4
  %33 = ptrtoint ptr %lock_addr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shr15.i.i.i, ptr %lock_addr.i.i.i, align 4
  %div2034.i.i.i = or i32 %sub.i.i.i, 2
  %len16.i.i.i = getelementptr inbounds %struct.ulp_mem_io, ptr %27, i32 0, i32 2
  %34 = ptrtoint ptr %len16.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %div2034.i.i.i, ptr %len16.i.i.i, align 4
  %35 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -2130706432, ptr %add.ptr.i.i.i, align 4
  %len.i.i.i = getelementptr %struct.ulp_mem_io, ptr %27, i32 1, i32 0, i32 1
  %36 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %shl1.i.i, ptr %len.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp26.not.i = icmp eq i32 %11, 0
  br i1 %cmp26.not.i, label %if.end.i.for.inc_crit_edge, label %for.body.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.i:                                       ; preds = %if.end.i
  %37 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head.i.i.i, align 8
  %add.ptr2.i = getelementptr %struct.ulp_mem_io, ptr %38, i32 1, i32 0, i32 2
  call void @cxgbi_ddp_set_one_ppod(ptr noundef %add.ptr2.i, ptr noundef %ttinfo, ptr noundef nonnull %sg, ptr noundef nonnull %offset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %exitcond.not.i = icmp eq i32 %11, 1
  br i1 %exitcond.not.i, label %for.body.i.for.inc_crit_edge, label %for.body.i.1

for.body.i.for.inc_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.i.1:                                     ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.ulp_mem_io, ptr %38, i32 3, i32 0, i32 2
  call void @cxgbi_ddp_set_one_ppod(ptr noundef %incdec.ptr.i, ptr noundef %ttinfo, ptr noundef nonnull %sg, ptr noundef nonnull %offset) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %exitcond.not.i.1 = icmp eq i32 %11, 2
  br i1 %exitcond.not.i.1, label %for.body.i.1.for.inc_crit_edge, label %for.body.i.2

for.body.i.1.for.inc_crit_edge:                   ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.body.i.2:                                     ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #12
  %incdec.ptr.i.1 = getelementptr %struct.ulp_mem_io, ptr %38, i32 5, i32 0, i32 2
  call void @cxgbi_ddp_set_one_ppod(ptr noundef %incdec.ptr.i.1, ptr noundef %ttinfo, ptr noundef nonnull %sg, ptr noundef nonnull %offset) #10
  br label %for.inc

for.inc:                                          ; preds = %for.body.i.2, %for.body.i.1.for.inc_crit_edge, %for.body.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge
  %flags.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 3, i32 16
  %39 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i.i, align 4
  %or.i.i24.i = or i32 %40, 6
  store i32 %or.i.i24.i, ptr %flags.i.i, align 4
  %41 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %port_id, align 4
  %conv.i = zext i8 %42 to i16
  %shl.i25.i = shl nuw nsw i16 %conv.i, 1
  %queue_mapping1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i.i, i32 0, i32 10
  %43 = ptrtoint ptr %queue_mapping1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %shl.i25.i, ptr %queue_mapping1.i.i.i, align 8
  call void @_raw_spin_lock_bh(ptr noundef %lock.i) #10
  call void @cxgbi_sock_skb_entail(ptr noundef %csk, ptr noundef nonnull %call.i.i.i.i) #10
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #10
  %add = add i32 %11, %i.028
  %add6 = add i32 %11, %pidx.027
  %cmp = icmp ugt i32 %3, %add
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ddp_ppod_write_idata.exit.thread, %entry.for.end_crit_edge
  %err.1 = phi i32 [ -12, %ddp_ppod_write_idata.exit.thread ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sg) #10
  ret i32 %err.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @cdev2ppm(ptr nocapture noundef readonly %cdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %cdev, i32 0, i32 36
  %0 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dd_data, align 4
  %iscsi_ppm = getelementptr inbounds %struct.cxgb4_lld_info, ptr %1, i32 0, i32 39
  %2 = ptrtoint ptr %iscsi_ppm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %iscsi_ppm, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  ret ptr %5
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_ofld_send(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_ddp_set_one_ppod(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_skb_entail(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgbi_device_portmap_create(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_offload_resources(ptr noundef %csk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csk, align 4
  %ports = getelementptr inbounds %struct.cxgbi_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %port_id = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %4 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %port_id, align 4
  %idxprom = zext i8 %5 to i32
  %arrayidx = getelementptr ptr, ptr %3, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = load i32, ptr @dbg_level, align 4
  %and = and i32 %8, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %9 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %tid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %13 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tid, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef %csk, i32 noundef %10, i32 noundef %12, i32 noundef %14) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  tail call void @cxgbi_sock_free_cpl_skbs(ptr noundef %csk) #10
  %write_queue.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 34
  %15 = ptrtoint ptr %write_queue.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %write_queue.i, align 4
  %cmp.i.i2.i = icmp eq ptr %16, %write_queue.i
  %tobool.not.i13.i = icmp eq ptr %16, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %do.end3.cxgbi_sock_purge_write_queue.exit_crit_edge, label %while.body.lr.ph.i

do.end3.cxgbi_sock_purge_write_queue.exit_crit_edge: ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_purge_write_queue.exit

while.body.lr.ph.i:                               ; preds = %do.end3
  %qlen.i.i.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 34, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %17 = phi ptr [ %16, %while.body.lr.ph.i ], [ %27, %while.body.i.while.body.i_crit_edge ]
  %18 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %19, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %17, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %21, i32 0, i32 1
  %24 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %23, ptr %prev17.i.i.i, align 4
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %21, ptr %23, align 8
  tail call void @__kfree_skb(ptr noundef nonnull %17) #10
  %26 = ptrtoint ptr %write_queue.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %write_queue.i, align 4
  %cmp.i.i.i = icmp eq ptr %27, %write_queue.i
  %tobool.not.i1.i = icmp eq ptr %27, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.cxgbi_sock_purge_write_queue.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.cxgbi_sock_purge_write_queue.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_purge_write_queue.exit

cxgbi_sock_purge_write_queue.exit:                ; preds = %while.body.i.cxgbi_sock_purge_write_queue.exit_crit_edge, %do.end3.cxgbi_sock_purge_write_queue.exit_crit_edge
  %wr_cred = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 14
  %28 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %wr_cred, align 4
  %wr_max_cred = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 13
  %30 = ptrtoint ptr %wr_max_cred to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %wr_max_cred, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %31)
  %cmp.not = icmp eq i32 %29, %31
  br i1 %cmp.not, label %cxgbi_sock_purge_write_queue.exit.if.end5_crit_edge, label %if.then4

cxgbi_sock_purge_write_queue.exit.if.end5_crit_edge: ; preds = %cxgbi_sock_purge_write_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then4:                                         ; preds = %cxgbi_sock_purge_write_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cxgbi_sock_purge_wr_queue(ptr noundef %csk) #10
  %wr_pending_tail.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 21
  %32 = ptrtoint ptr %wr_pending_tail.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %wr_pending_tail.i, align 4
  %wr_pending_head.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 20
  %33 = ptrtoint ptr %wr_pending_head.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %wr_pending_head.i, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %cxgbi_sock_purge_write_queue.exit.if.end5_crit_edge
  %l2t.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 19
  %34 = ptrtoint ptr %l2t.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %l2t.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.end5.l2t_put.exit_crit_edge, label %if.then.i

if.end5.l2t_put.exit_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %l2t_put.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cxgb4_l2t_release(ptr noundef nonnull %35) #10
  %36 = ptrtoint ptr %l2t.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %l2t.i, align 4
  tail call fastcc void @__cxgbi_sock_put(ptr noundef nonnull @__func__.l2t_put, ptr noundef %csk) #10
  br label %l2t_put.exit

l2t_put.exit:                                     ; preds = %if.then.i, %if.end5.l2t_put.exit_crit_edge
  %csk_family = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 29
  %37 = ptrtoint ptr %csk_family to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %csk_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %38)
  %cmp6 = icmp eq i32 %38, 10
  br i1 %cmp6, label %if.then7, label %l2t_put.exit.if.end8_crit_edge

l2t_put.exit.if.end8_crit_edge:                   ; preds = %l2t_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then7:                                         ; preds = %l2t_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_addr = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 3
  tail call void @cxgb4_clip_release(ptr noundef %7, ptr noundef %sin6_addr, i8 noundef zeroext 1) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %l2t_put.exit.if.end8_crit_edge
  %cmp.i = icmp eq ptr %csk, null
  br i1 %cmp.i, label %if.end8.if.end19_crit_edge, label %cxgbi_sock_flag.exit

if.end8.if.end19_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

cxgbi_sock_flag.exit:                             ; preds = %if.end8
  %flags.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags.i, align 4
  %41 = and i32 %40, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool10.not = icmp eq i32 %41, 0
  br i1 %tobool10.not, label %cxgbi_sock_flag.exit53, label %cxgbi_sock_flag.exit.i

cxgbi_sock_flag.exit.i:                           ; preds = %cxgbi_sock_flag.exit
  %42 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %csk, align 4
  %dd_data.i = getelementptr inbounds %struct.cxgbi_device, ptr %43, i32 0, i32 36
  %44 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dd_data.i, align 4
  %46 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %flags.i, align 4
  %48 = and i32 %47, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i43 = icmp eq i32 %48, 0
  br i1 %tobool.not.i43, label %cxgbi_sock_flag.exit.i.if.end19_crit_edge, label %if.then.i45

cxgbi_sock_flag.exit.i.if.end19_crit_edge:        ; preds = %cxgbi_sock_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then.i45:                                      ; preds = %cxgbi_sock_flag.exit.i
  %tids.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %45, i32 0, i32 2
  %49 = ptrtoint ptr %tids.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tids.i, align 4
  %atid.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 2
  %51 = ptrtoint ptr %atid.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %atid.i, align 4
  tail call void @cxgb4_free_atid(ptr noundef %50, i32 noundef %52) #10
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags.i, align 4
  %and.i.i.i = and i32 %54, -33
  store i32 %and.i.i.i, ptr %flags.i, align 4
  %55 = load i32, ptr @dbg_level, align 4
  %and.i.i = and i32 %55, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i44 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i44, label %if.then.i45.cxgbi_sock_clear_flag.exit.i_crit_edge, label %do.end.i.i

if.then.i45.cxgbi_sock_clear_flag.exit.i_crit_edge: ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_clear_flag.exit.i

do.end.i.i:                                       ; preds = %if.then.i45
  call void @__sanitizer_cov_trace_pc() #12
  %state.i.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %56 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %state.i.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef nonnull %csk, i32 noundef %57, i32 noundef %and.i.i.i, i32 noundef 5) #13
  br label %cxgbi_sock_clear_flag.exit.i

cxgbi_sock_clear_flag.exit.i:                     ; preds = %do.end.i.i, %if.then.i45.cxgbi_sock_clear_flag.exit.i_crit_edge
  tail call fastcc void @__cxgbi_sock_put(ptr noundef nonnull @__func__.free_atid, ptr noundef nonnull %csk) #10
  br label %if.end19

cxgbi_sock_flag.exit53:                           ; preds = %cxgbi_sock_flag.exit
  %58 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %flags.i, align 4
  %60 = and i32 %59, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool13.not = icmp eq i32 %60, 0
  br i1 %tobool13.not, label %cxgbi_sock_flag.exit53.if.end19_crit_edge, label %if.then14

cxgbi_sock_flag.exit53.if.end19_crit_edge:        ; preds = %cxgbi_sock_flag.exit53
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then14:                                        ; preds = %cxgbi_sock_flag.exit53
  %61 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %csk, align 4
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %62, i32 0, i32 36
  %63 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dd_data, align 4
  %tids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %tids, align 4
  %tid16 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %67 = ptrtoint ptr %tid16 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %tid16, align 4
  %69 = ptrtoint ptr %csk_family to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %csk_family, align 4
  %conv = trunc i32 %70 to i16
  tail call void @cxgb4_remove_tid(ptr noundef %66, i32 noundef 0, i32 noundef %68, i16 noundef zeroext %conv) #10
  %71 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i, align 4
  %and.i.i55 = and i32 %72, -65
  store i32 %and.i.i55, ptr %flags.i, align 4
  %73 = load i32, ptr @dbg_level, align 4
  %and.i = and i32 %73, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i56 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i56, label %if.then14.cxgbi_sock_clear_flag.exit_crit_edge, label %do.end.i

if.then14.cxgbi_sock_clear_flag.exit_crit_edge:   ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_clear_flag.exit

do.end.i:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  %state.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %74 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %state.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef nonnull %csk, i32 noundef %75, i32 noundef %and.i.i55, i32 noundef 6) #13
  br label %cxgbi_sock_clear_flag.exit

cxgbi_sock_clear_flag.exit:                       ; preds = %do.end.i, %if.then14.cxgbi_sock_clear_flag.exit_crit_edge
  tail call fastcc void @__cxgbi_sock_put(ptr noundef nonnull @.str.57, ptr noundef nonnull %csk)
  br label %if.end19

if.end19:                                         ; preds = %cxgbi_sock_clear_flag.exit, %cxgbi_sock_flag.exit53.if.end19_crit_edge, %cxgbi_sock_clear_flag.exit.i, %cxgbi_sock_flag.exit.i.if.end19_crit_edge, %if.end8.if.end19_crit_edge
  %dst = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 32
  %76 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr null, ptr %dst, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @push_tx_frames(ptr noundef %csk, i32 noundef %req_completion) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.277)
  switch i32 %1, label %lor.rhs [
    i32 6, label %entry.do.body_crit_edge
    i32 2, label %entry.do.body_crit_edge343
    i32 1, label %entry.do.body_crit_edge344
    i32 0, label %entry.do.body_crit_edge345
  ]

entry.do.body_crit_edge345:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge344:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge343:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %1)
  %cmp4 = icmp ugt i32 %1, 7
  br i1 %cmp4, label %lor.rhs.do.body_crit_edge, label %while.cond.preheader, !prof !576

lor.rhs.do.body_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

while.cond.preheader:                             ; preds = %lor.rhs
  %wr_cred = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 14
  %3 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %wr_cred, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool13.not324 = icmp eq i32 %4, 0
  br i1 %tobool13.not324, label %while.cond.preheader.cleanup171_crit_edge, label %land.rhs.lr.ph

while.cond.preheader.cleanup171_crit_edge:        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup171

land.rhs.lr.ph:                                   ; preds = %while.cond.preheader
  %write_queue = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 34
  %cmp.i270 = icmp eq ptr %csk, null
  %flags.i271 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %wr_una_cred = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 15
  %no_tx_credits68 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 49
  %qlen.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 34, i32 1
  %port_id = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %wr_pending_head.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 20
  %wr_pending_tail.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 21
  %wr_max_cred = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 13
  %snd_una = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 44
  %snd_win = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 46
  %write_seq = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 45
  %tid.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %snd_nxt = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 43
  %l2t = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 19
  br label %land.rhs

do.body:                                          ; preds = %lor.rhs.do.body_crit_edge, %entry.do.body_crit_edge, %entry.do.body_crit_edge343, %entry.do.body_crit_edge344, %entry.do.body_crit_edge345
  %5 = load i32, ptr @dbg_level, align 4
  %and = and i32 %5, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %do.body.cleanup171_crit_edge, label %do.end

do.body.cleanup171_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup171

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %tid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %8 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tid, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.65, ptr noundef %csk, i32 noundef %1, i32 noundef %7, i32 noundef %9) #13
  br label %cleanup171

land.rhs:                                         ; preds = %cleanup.land.rhs_crit_edge, %land.rhs.lr.ph
  %req_completion.addr.0326 = phi i32 [ %req_completion, %land.rhs.lr.ph ], [ %req_completion.addr.1, %cleanup.land.rhs_crit_edge ]
  %total_size.0325 = phi i32 [ 0, %land.rhs.lr.ph ], [ %add145, %cleanup.land.rhs_crit_edge ]
  %10 = ptrtoint ptr %write_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write_queue, align 4
  %cmp.i = icmp eq ptr %11, %write_queue
  %cmp15.not321 = icmp eq ptr %11, null
  %cmp15.not = or i1 %cmp.i, %cmp15.not321
  br i1 %cmp15.not, label %land.rhs.cleanup171_crit_edge, label %while.body

land.rhs.cleanup171_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup171

while.body:                                       ; preds = %land.rhs
  %len = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 16
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i, align 4
  %16 = lshr i32 %15, 7
  %17 = and i32 %16, 32
  %18 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i.i, 0
  %add.i = add i32 %13, 16
  %spec.select.i = select i1 %tobool.not.i, i32 %13, i32 %add.i, !prof !576
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %21 = and i32 %20, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool5.not.i = icmp eq i32 %21, 0
  %add13.i = add i32 %spec.select.i, 32
  %len.1.i = select i1 %tobool5.not.i, i32 %spec.select.i, i32 %add13.i, !prof !576
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %len.1.i)
  %cmp.i266 = icmp ult i32 %len.1.i, 272
  br i1 %cmp.i266, label %while.body.if.end30_crit_edge, label %if.else

while.body.if.end30_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.else:                                          ; preds = %while.body
  %22 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i.i, 0
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %13, i32 %add.i, !prof !576
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %flags.i, align 4
  %26 = and i32 %25, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool5.not.i.i = icmp eq i32 %26, 0
  %add13.i.i = add i32 %spec.select.i.i, 32
  %len.1.i.i = select i1 %tobool5.not.i.i, i32 %spec.select.i.i, i32 %add13.i.i, !prof !576
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %len.1.i.i)
  %cmp.i.i = icmp ult i32 %len.1.i.i, 272
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add i32 %13, 7
  %div18.i = lshr i32 %sub.i, 3
  br label %calc_tx_flits_ofld.exit

if.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 18
  %27 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 15, i32 0, i32 19
  %29 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %30 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 19
  %31 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %div2.i = sdiv i32 %sub.ptr.sub.i.i, 8
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 17
  %33 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %end.i.i, align 4
  %nr_frags.i = getelementptr inbounds %struct.skb_shared_info, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %nr_frags.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nr_frags.i, align 2
  %conv.i = zext i8 %36 to i32
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 16
  %37 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i.i, align 8
  %cmp.not.i = icmp ne ptr %38, %add.ptr.i.i.i
  %inc.i = zext i1 %cmp.not.i to i32
  %spec.select.i267 = add nsw i32 %conv.i, -1
  %dec.i.i = add nsw i32 %spec.select.i267, %inc.i
  %mul.i.i = mul nsw i32 %dec.i.i, 3
  %div4.i.i = lshr i32 %mul.i.i, 1
  %and.i.i = and i32 %dec.i.i, 1
  %add.i19.i = add nsw i32 %div2.i, 2
  %add1.i.i = add nsw i32 %add.i19.i, %and.i.i
  %add10.i = add i32 %add1.i.i, %div4.i.i
  br label %calc_tx_flits_ofld.exit

calc_tx_flits_ofld.exit:                          ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %div18.i, %if.then.i ], [ %add10.i, %if.end.i ]
  %mul = shl i32 %retval.0.i, 3
  br label %if.end30

if.end30:                                         ; preds = %calc_tx_flits_ofld.exit, %while.body.if.end30_crit_edge
  %.pn = phi i32 [ %mul, %calc_tx_flits_ofld.exit ], [ %13, %while.body.if.end30_crit_edge ]
  %credits_needed.0.in.in = or i32 %17, 15
  %credits_needed.0.in = add i32 %credits_needed.0.in.in, %.pn
  %credits_needed.0 = lshr i32 %credits_needed.0.in, 4
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i269 = and i32 %40, 1
  %spec.select265 = add nuw nsw i32 %credits_needed.0, %and1.i.i269
  br i1 %cmp.i270, label %if.end30.if.then44_crit_edge, label %cxgbi_sock_flag.exit

if.end30.if.then44_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

cxgbi_sock_flag.exit:                             ; preds = %if.end30
  %41 = ptrtoint ptr %flags.i271 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %flags.i271, align 4
  %43 = and i32 %42, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool43.not = icmp eq i32 %43, 0
  br i1 %tobool43.not, label %cxgbi_sock_flag.exit.if.then44_crit_edge, label %cxgbi_sock_flag.exit.if.end49_crit_edge

cxgbi_sock_flag.exit.if.end49_crit_edge:          ; preds = %cxgbi_sock_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

cxgbi_sock_flag.exit.if.then44_crit_edge:         ; preds = %cxgbi_sock_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then44

if.then44:                                        ; preds = %cxgbi_sock_flag.exit.if.then44_crit_edge, %if.end30.if.then44_crit_edge
  tail call fastcc void @send_tx_flowc_wr(ptr noundef %csk)
  %44 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wr_cred, align 4
  %sub47 = add i32 %45, -6
  store i32 %sub47, ptr %wr_cred, align 4
  %46 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wr_una_cred, align 4
  %add48 = add i32 %47, 6
  store i32 %add48, ptr %wr_una_cred, align 4
  %48 = ptrtoint ptr %flags.i271 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i271, align 4
  %or.i.i = or i32 %49, 8
  store i32 %or.i.i, ptr %flags.i271, align 4
  %50 = load i32, ptr @dbg_level, align 4
  %and.i = and i32 %50, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i277 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i277, label %if.then44.if.end49_crit_edge, label %do.end.i

if.then44.if.end49_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.end.i:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %state, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.80, ptr noundef %csk, i32 noundef %52, i32 noundef %or.i.i, i32 noundef 3) #13
  br label %if.end49

if.end49:                                         ; preds = %do.end.i, %if.then44.if.end49_crit_edge, %cxgbi_sock_flag.exit.if.end49_crit_edge
  %flowclen16.0 = phi i32 [ 0, %cxgbi_sock_flag.exit.if.end49_crit_edge ], [ 6, %if.then44.if.end49_crit_edge ], [ 6, %do.end.i ]
  %53 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wr_cred, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %spec.select265)
  %cmp51 = icmp ult i32 %54, %spec.select265
  br i1 %cmp51, label %do.body53, label %if.end67

do.body53:                                        ; preds = %if.end49
  %55 = load i32, ptr @dbg_level, align 4
  %and54 = and i32 %55, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %do.body53.cleanup.thread_crit_edge, label %do.end59

do.body53.cleanup.thread_crit_edge:               ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

do.end59:                                         ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len, align 4
  %data_len = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 7
  %58 = ptrtoint ptr %data_len to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %data_len, align 8
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.65, ptr noundef %csk, i32 noundef %57, i32 noundef %59, i32 noundef %spec.select265, i32 noundef %54) #13
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end59, %do.body53.cleanup.thread_crit_edge
  %60 = ptrtoint ptr %no_tx_credits68 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %no_tx_credits68, align 4
  %inc = add i32 %61, 1
  store i32 %inc, ptr %no_tx_credits68, align 4
  br label %cleanup171

if.end67:                                         ; preds = %if.end49
  %62 = ptrtoint ptr %no_tx_credits68 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %no_tx_credits68, align 4
  %63 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %qlen.i, align 4
  %sub.i278 = add i32 %64, -1
  store volatile i32 %sub.i278, ptr %qlen.i, align 4
  %65 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %11, align 8
  %prev9.i = getelementptr inbounds %struct.anon.51, ptr %11, i32 0, i32 1
  %67 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %11, align 8
  %prev17.i = getelementptr inbounds %struct.anon.51, ptr %66, i32 0, i32 1
  %69 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %68, ptr %prev17.i, align 4
  %70 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %66, ptr %68, align 8
  %71 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %port_id, align 4
  %conv = zext i8 %72 to i16
  %shl.i = shl nuw nsw i16 %conv, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 10
  %73 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %shl.i, ptr %queue_mapping1.i.i, align 8
  %add70 = add nuw nsw i32 %flowclen16.0, %spec.select265
  %74 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 15, i32 0, i32 5
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %add70, ptr %74, align 8
  %76 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %wr_cred, align 4
  %sub72 = sub i32 %77, %spec.select265
  store i32 %sub72, ptr %wr_cred, align 4
  %78 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %wr_una_cred, align 4
  %add74 = add i32 %79, %spec.select265
  store i32 %add74, ptr %wr_una_cred, align 4
  %wr_next.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 8
  %80 = ptrtoint ptr %wr_next.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %wr_next.i, align 8
  %users.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 21
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %users.i.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %users.i.i, i32 1, i32 3, i32 1) #10
  %81 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %users.i.i, ptr %users.i.i, i32 1, ptr elementtype(i32) %users.i.i) #10, !srcloc !583
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end67.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !576

if.end67.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end67
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %82 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %82)
  %.not.i.i.i.i.i = icmp sgt i32 %82, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !581

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.skb_get.exit.i_crit_edge:       ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_get.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end67.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end67.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %users.i.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %skb_get.exit.i

skb_get.exit.i:                                   ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.skb_get.exit.i_crit_edge
  %83 = ptrtoint ptr %wr_pending_head.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %wr_pending_head.i, align 4
  %tobool.not.i280 = icmp eq ptr %84, null
  br i1 %tobool.not.i280, label %if.then.i281, label %if.else.i

if.then.i281:                                     ; preds = %skb_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %wr_pending_head.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %11, ptr %wr_pending_head.i, align 4
  br label %cxgbi_sock_enqueue_wr.exit

if.else.i:                                        ; preds = %skb_get.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %86 = ptrtoint ptr %wr_pending_tail.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %wr_pending_tail.i, align 4
  %wr_next4.i = getelementptr inbounds %struct.sk_buff, ptr %87, i32 0, i32 3, i32 8
  %88 = ptrtoint ptr %wr_next4.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %11, ptr %wr_next4.i, align 8
  br label %cxgbi_sock_enqueue_wr.exit

cxgbi_sock_enqueue_wr.exit:                       ; preds = %if.else.i, %if.then.i281
  %89 = ptrtoint ptr %wr_pending_tail.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %11, ptr %wr_pending_tail.i, align 4
  %90 = load i32, ptr @dbg_level, align 4
  %and76 = and i32 %90, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %cxgbi_sock_enqueue_wr.exit.do.end90_crit_edge, label %do.end81

cxgbi_sock_enqueue_wr.exit.do.end90_crit_edge:    ; preds = %cxgbi_sock_enqueue_wr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end90

do.end81:                                         ; preds = %cxgbi_sock_enqueue_wr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len, align 4
  %data_len84 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 7
  %93 = ptrtoint ptr %data_len84 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %data_len84, align 8
  %95 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %wr_cred, align 4
  %97 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %wr_una_cred, align 4
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.65, ptr noundef %csk, i32 noundef %92, i32 noundef %94, i32 noundef %spec.select265, i32 noundef %96, i32 noundef %98) #13
  br label %do.end90

do.end90:                                         ; preds = %do.end81, %cxgbi_sock_enqueue_wr.exit.do.end90_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %req_completion.addr.0326)
  %tobool91.not = icmp eq i32 %req_completion.addr.0326, 0
  br i1 %tobool91.not, label %land.lhs.true, label %do.end90.if.end102_crit_edge

do.end90.if.end102_crit_edge:                     ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

land.lhs.true:                                    ; preds = %do.end90
  %99 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %wr_una_cred, align 4
  %101 = ptrtoint ptr %wr_max_cred to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %wr_max_cred, align 4
  %div93 = sdiv i32 %102, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %100, i32 %div93)
  %cmp94.not = icmp slt i32 %100, %div93
  br i1 %cmp94.not, label %lor.lhs.false96, label %land.lhs.true.if.then101_crit_edge

land.lhs.true.if.then101_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101

lor.lhs.false96:                                  ; preds = %land.lhs.true
  %103 = ptrtoint ptr %snd_una to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %snd_una, align 4
  %105 = ptrtoint ptr %snd_win to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %snd_win, align 4
  %div97263 = lshr i32 %106, 1
  %add98 = add i32 %div97263, %104
  %107 = ptrtoint ptr %write_seq to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %write_seq, align 4
  %sub.i283 = sub i32 %add98, %108
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i283)
  %cmp.i284 = icmp slt i32 %sub.i283, 0
  br i1 %cmp.i284, label %lor.lhs.false96.if.then101_crit_edge, label %lor.lhs.false96.if.end102_crit_edge

lor.lhs.false96.if.end102_crit_edge:              ; preds = %lor.lhs.false96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end102

lor.lhs.false96.if.then101_crit_edge:             ; preds = %lor.lhs.false96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then101

if.then101:                                       ; preds = %lor.lhs.false96.if.then101_crit_edge, %land.lhs.true.if.then101_crit_edge
  br label %if.end102

if.end102:                                        ; preds = %if.then101, %lor.lhs.false96.if.end102_crit_edge, %do.end90.if.end102_crit_edge
  %req_completion.addr.1 = phi i32 [ %req_completion.addr.0326, %do.end90.if.end102_crit_edge ], [ 1, %if.then101 ], [ 0, %lor.lhs.false96.if.end102_crit_edge ]
  %109 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i286 = and i32 %110, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i286)
  %tobool104.not = icmp eq i32 %and1.i.i286, 0
  br i1 %tobool104.not, label %if.else133, label %if.then111, !prof !576

if.then111:                                       ; preds = %if.end102
  %ulp_mode112 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 14
  %111 = ptrtoint ptr %ulp_mode112 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %ulp_mode112, align 2
  %conv113 = zext i8 %112 to i32
  %113 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %flags.i, align 4
  %115 = and i32 %114, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool115.not = icmp eq i32 %115, 0
  br i1 %tobool115.not, label %if.else128, label %if.then116

if.then116:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  %head = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 18
  %116 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %head, align 8
  %num_pdu117 = getelementptr inbounds %struct.cxgbi_iso_info, ptr %117, i32 0, i32 3
  %118 = ptrtoint ptr %num_pdu117 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %num_pdu117, align 1
  %conv118 = zext i8 %119 to i32
  %iscsi_hdr_len = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 12
  %120 = ptrtoint ptr %iscsi_hdr_len to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %iscsi_hdr_len, align 4
  %conv121 = zext i16 %121 to i32
  %and.i290 = and i32 %conv113, 3
  %arrayidx.i = getelementptr [4 x i32], ptr @ulp2_extra_len, i32 0, i32 %and.i290
  %122 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.i, align 4
  %mul123 = mul i32 %123, %conv118
  %sub124 = add nsw i32 %conv118, -1
  %mul125 = mul nsw i32 %sub124, %conv121
  %add126 = add i32 %mul123, %mul125
  br label %if.end131

if.else128:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  %and.i291 = and i32 %conv113, 3
  %arrayidx.i292 = getelementptr [4 x i32], ptr @ulp2_extra_len, i32 0, i32 %and.i291
  %124 = ptrtoint ptr %arrayidx.i292 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx.i292, align 4
  br label %if.end131

if.end131:                                        ; preds = %if.else128, %if.then116
  %add126.pn = phi i32 [ %add126, %if.then116 ], [ %125, %if.else128 ]
  %len16.0 = add i32 %add126.pn, %13
  %126 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %csk, align 4
  %dd_data.i = getelementptr inbounds %struct.cxgbi_device, ptr %127, i32 0, i32 36
  %128 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dd_data.i, align 4
  %130 = and i8 %112, 3
  %and.i293 = zext i8 %130 to i32
  %adapter_type.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %129, i32 0, i32 13
  %131 = ptrtoint ptr %adapter_type.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %adapter_type.i, align 4
  %133 = and i8 %132, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %133)
  %cmp.i.not.i = icmp eq i8 %133, 80
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool3.not.i = icmp eq i8 %130, 0
  %134 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %flags.i, align 4
  %136 = and i32 %135, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool5.not.i295 = icmp eq i32 %136, 0
  br i1 %tobool5.not.i295, label %if.end131.if.end.i307_crit_edge, label %if.then.i296

if.end131.if.end.i307_crit_edge:                  ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i307

if.then.i296:                                     ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  %or.i = or i32 %and.i293, 8
  br label %if.end.i307

if.end.i307:                                      ; preds = %if.then.i296, %if.end131.if.end.i307_crit_edge
  %submode.0.i = phi i32 [ %or.i, %if.then.i296 ], [ %and.i293, %if.end131.if.end.i307_crit_edge ]
  %hdr_size.0.i = phi i32 [ 48, %if.then.i296 ], [ 16, %if.end131.if.end.i307_crit_edge ]
  %opcode.0.i = phi i32 [ 1157627904, %if.then.i296 ], [ 184549376, %if.end131.if.end.i307_crit_edge ]
  %immlen.0.i = phi i32 [ 32, %if.then.i296 ], [ 0, %if.end131.if.end.i307_crit_edge ]
  %137 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %len, align 4
  %139 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i.i.i298 = and i32 %140, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i298)
  %tobool.not.i.i299 = icmp eq i32 %and1.i.i.i.i298, 0
  %add.i.i300 = add i32 %138, 16
  %spec.select.i.i301 = select i1 %tobool.not.i.i299, i32 %138, i32 %add.i.i300, !prof !576
  %141 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %flags.i, align 4
  %143 = and i32 %142, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool5.not.i.i302 = icmp eq i32 %143, 0
  %add13.i.i303 = add i32 %spec.select.i.i301, 32
  %len.1.i.i304 = select i1 %tobool5.not.i.i302, i32 %spec.select.i.i301, i32 %add13.i.i303, !prof !576
  call void @__sanitizer_cov_trace_const_cmp4(i32 272, i32 %len.1.i.i304)
  %cmp.i58.i = icmp ult i32 %len.1.i.i304, 272
  %add9.i = select i1 %cmp.i58.i, i32 %13, i32 0
  %spec.select.i305 = add i32 %add9.i, %immlen.0.i
  %data.i.i306 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 19
  %144 = ptrtoint ptr %data.i.i306 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %data.i.i306, align 4
  %idx.neg.i.i = sub nsw i32 0, %hdr_size.0.i
  %add.ptr.i.i = getelementptr i8, ptr %145, i32 %idx.neg.i.i
  store ptr %add.ptr.i.i, ptr %data.i.i306, align 4
  %add.i60.i = add i32 %138, %hdr_size.0.i
  %146 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %add.i60.i, ptr %len, align 4
  %shl13.i = shl i32 %req_completion.addr.1, 21
  %or14.i = or i32 %opcode.0.i, %shl13.i
  %or16.i = or i32 %or14.i, %spec.select.i305
  %147 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %or16.i, ptr %add.ptr.i.i, align 4
  %148 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %tid.i, align 4
  %shl17.i = shl i32 %149, 8
  %or19.i = or i32 %shl17.i, %spec.select265
  %flowid_len16.i = getelementptr inbounds %struct.fw_ofld_tx_data_wr, ptr %add.ptr.i.i, i32 0, i32 1
  %150 = ptrtoint ptr %flowid_len16.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %or19.i, ptr %flowid_len16.i, align 4
  %plen.i = getelementptr inbounds %struct.fw_ofld_tx_data_wr, ptr %add.ptr.i.i, i32 0, i32 2
  %151 = ptrtoint ptr %plen.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %len16.0, ptr %plen.i, align 4
  %152 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load volatile i32, ptr %flags.i, align 4
  %154 = and i32 %153, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %tobool21.not.i = icmp eq i32 %154, 0
  br i1 %tobool21.not.i, label %if.end.i307.if.end28.i_crit_edge, label %if.then27.i, !prof !576

if.end.i307.if.end28.i_crit_edge:                 ; preds = %if.end.i307
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

if.then27.i:                                      ; preds = %if.end.i307
  %add.ptr.i = getelementptr %struct.fw_ofld_tx_data_wr, ptr %add.ptr.i.i, i32 1
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 18
  %155 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %head.i.i, align 8
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %156, align 4
  %conv.i64.i = zext i8 %158 to i32
  %op.i.i = getelementptr inbounds %struct.cxgbi_iso_info, ptr %156, i32 0, i32 1
  %159 = ptrtoint ptr %op.i.i to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %op.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %160)
  %cmp.not.i.i = icmp eq i8 %160, 1
  %161 = ptrtoint ptr %ulp_mode112 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %ulp_mode112, align 2
  %163 = and i8 %162, 3
  %and21.i.i = zext i8 %163 to i32
  %trunc.i.i = zext i8 %158 to i24
  %rev.i.i = tail call i24 @llvm.bitreverse.i24(i24 %trunc.i.i) #10
  %mask.i.i = and i24 %rev.i.i, -4194304
  %or.i.i308 = zext i24 %mask.i.i to i32
  %and25.i.i = shl nuw nsw i32 %and21.i.i, 20
  %shl26.i.i = and i32 %and25.i.i, 1048576
  %164 = shl nuw nsw i32 %and21.i.i, 18
  %shl29.i.i = and i32 %164, 524288
  %165 = shl nuw nsw i32 %conv.i64.i, 16
  %shl31.i.i = and i32 %165, 262144
  %or23.i.i = select i1 %cmp.not.i.i, i32 520093696, i32 520159232
  %or27.i.i = or i32 %or23.i.i, %shl31.i.i
  %or30.i.i = or i32 %or27.i.i, %or.i.i308
  %or32.i.i = or i32 %or30.i.i, %shl26.i.i
  %or34.i.i = or i32 %or32.i.i, %shl29.i.i
  %166 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %or34.i.i, ptr %add.ptr.i, align 4
  %ahs.i.i = getelementptr inbounds %struct.cxgbi_iso_info, ptr %156, i32 0, i32 2
  %167 = ptrtoint ptr %ahs.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %ahs.i.i, align 2
  %ahs_len.i.i = getelementptr inbounds %struct.cpl_tx_data_iso, ptr %add.ptr.i, i32 0, i32 2
  %169 = ptrtoint ptr %ahs_len.i.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %ahs_len.i.i, align 1
  %mpdu.i.i = getelementptr inbounds %struct.cxgbi_iso_info, ptr %156, i32 0, i32 4
  %170 = ptrtoint ptr %mpdu.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %mpdu.i.i, align 4
  %sub.i.i = add i32 %171, 3
  %div85.i.i = lshr i32 %sub.i.i, 2
  %conv35.i.i = trunc i32 %div85.i.i to i16
  %mpdu36.i.i = getelementptr inbounds %struct.cpl_tx_data_iso, ptr %add.ptr.i, i32 0, i32 3
  %172 = ptrtoint ptr %mpdu36.i.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 %conv35.i.i, ptr %mpdu36.i.i, align 2
  %burst_size.i.i = getelementptr inbounds %struct.cxgbi_iso_info, ptr %156, i32 0, i32 5
  %173 = ptrtoint ptr %burst_size.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %burst_size.i.i, align 4
  %burst_size37.i.i = getelementptr inbounds %struct.cpl_tx_data_iso, ptr %add.ptr.i, i32 0, i32 4
  %175 = ptrtoint ptr %burst_size37.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %burst_size37.i.i, align 4
  %len.i.i = getelementptr inbounds %struct.cxgbi_iso_info, ptr %156, i32 0, i32 6
  %176 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %len.i.i, align 4
  %len38.i.i = getelementptr inbounds %struct.cpl_tx_data_iso, ptr %add.ptr.i, i32 0, i32 5
  %178 = ptrtoint ptr %len38.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %len38.i.i, align 4
  %segment_offset.i.i = getelementptr inbounds %struct.cxgbi_iso_info, ptr %156, i32 0, i32 7
  %179 = ptrtoint ptr %segment_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %segment_offset.i.i, align 4
  %reserved2_seglen_offset.i.i = getelementptr inbounds %struct.cpl_tx_data_iso, ptr %add.ptr.i, i32 0, i32 6
  %181 = ptrtoint ptr %reserved2_seglen_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %180, ptr %reserved2_seglen_offset.i.i, align 4
  %datasn_offset.i.i = getelementptr inbounds %struct.cxgbi_iso_info, ptr %156, i32 0, i32 8
  %182 = ptrtoint ptr %datasn_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %datasn_offset.i.i, align 4
  %datasn_offset40.i.i = getelementptr inbounds %struct.cpl_tx_data_iso, ptr %add.ptr.i, i32 0, i32 7
  %184 = ptrtoint ptr %datasn_offset40.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %183, ptr %datasn_offset40.i.i, align 4
  %buffer_offset.i.i = getelementptr inbounds %struct.cxgbi_iso_info, ptr %156, i32 0, i32 9
  %185 = ptrtoint ptr %buffer_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %buffer_offset.i.i, align 4
  %buffer_offset41.i.i = getelementptr inbounds %struct.cpl_tx_data_iso, ptr %add.ptr.i, i32 0, i32 8
  %187 = ptrtoint ptr %buffer_offset41.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %buffer_offset41.i.i, align 4
  %reserved3.i.i = getelementptr inbounds %struct.cpl_tx_data_iso, ptr %add.ptr.i, i32 0, i32 9
  %188 = ptrtoint ptr %reserved3.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 0, ptr %reserved3.i.i, align 4
  %189 = load i32, ptr @dbg_level, align 4
  %and42.i.i = and i32 %189, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i.i)
  %tobool43.not.i.i = icmp eq i32 %and42.i.i, 0
  br i1 %tobool43.not.i.i, label %if.then27.i.if.end28.i_crit_edge, label %do.end.i.i

if.then27.i.if.end28.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28.i

do.end.i.i:                                       ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  %190 = ptrtoint ptr %156 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %156, align 4
  %conv46.i.i = zext i8 %191 to i32
  %192 = ptrtoint ptr %op.i.i to i32
  call void @__asan_load1_noabort(i32 %192)
  %193 = load i8, ptr %op.i.i, align 1
  %conv48.i.i = zext i8 %193 to i32
  %194 = ptrtoint ptr %ahs.i.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %ahs.i.i, align 2
  %conv50.i.i = zext i8 %195 to i32
  %num_pdu.i.i = getelementptr inbounds %struct.cxgbi_iso_info, ptr %156, i32 0, i32 3
  %196 = ptrtoint ptr %num_pdu.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %197 = load i8, ptr %num_pdu.i.i, align 1
  %conv51.i.i = zext i8 %197 to i32
  %198 = ptrtoint ptr %mpdu.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %mpdu.i.i, align 4
  %200 = ptrtoint ptr %burst_size.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %burst_size.i.i, align 4
  %shl54.i.i = shl i32 %201, 2
  %202 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %len.i.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, i32 noundef %conv46.i.i, i32 noundef %conv48.i.i, i32 noundef %conv50.i.i, i32 noundef %conv51.i.i, i32 noundef %199, i32 noundef %shl54.i.i, i32 noundef %203) #13
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end.i.i, %if.then27.i.if.end28.i_crit_edge, %if.end.i307.if.end28.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %submode.0.i)
  %tobool29.not.i = icmp eq i32 %submode.0.i, 0
  %shl31.i = shl nsw i32 %submode.0.i, 6
  %or32.i = or i32 %shl31.i, 2048
  %wr_ulp_mode.0.i = select i1 %tobool29.not.i, i32 0, i32 %or32.i
  %shl.op.i = select i1 %tobool3.not.i, i32 536879104, i32 536870912
  %or34.i = select i1 %cmp.i.not.i, i32 %shl.op.i, i32 537919488
  %or35.i = or i32 %wr_ulp_mode.0.i, %or34.i
  %tunnel_to_proxy.i = getelementptr inbounds %struct.fw_ofld_tx_data_wr, ptr %add.ptr.i.i, i32 0, i32 3
  %204 = ptrtoint ptr %tunnel_to_proxy.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %or35.i, ptr %tunnel_to_proxy.i, align 4
  br i1 %cmp.i270, label %if.end28.i.if.then38.i_crit_edge, label %cxgbi_sock_flag.exit.i

if.end28.i.if.then38.i_crit_edge:                 ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i

cxgbi_sock_flag.exit.i:                           ; preds = %if.end28.i
  %205 = ptrtoint ptr %flags.i271 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load volatile i32, ptr %flags.i271, align 4
  %207 = and i32 %206, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool37.not.i = icmp eq i32 %207, 0
  br i1 %tobool37.not.i, label %cxgbi_sock_flag.exit.i.if.then38.i_crit_edge, label %cxgbi_sock_flag.exit.i.cxgb4i_make_tx_data_wr.exit_crit_edge

cxgbi_sock_flag.exit.i.cxgb4i_make_tx_data_wr.exit_crit_edge: ; preds = %cxgbi_sock_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgb4i_make_tx_data_wr.exit

cxgbi_sock_flag.exit.i.if.then38.i_crit_edge:     ; preds = %cxgbi_sock_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then38.i

if.then38.i:                                      ; preds = %cxgbi_sock_flag.exit.i.if.then38.i_crit_edge, %if.end28.i.if.then38.i_crit_edge
  %208 = ptrtoint ptr %flags.i271 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %flags.i271, align 4
  %or.i.i.i = or i32 %209, 8
  store i32 %or.i.i.i, ptr %flags.i271, align 4
  %210 = load i32, ptr @dbg_level, align 4
  %and.i.i309 = and i32 %210, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i309)
  %tobool.not.i70.i = icmp eq i32 %and.i.i309, 0
  br i1 %tobool.not.i70.i, label %if.then38.i.cxgb4i_make_tx_data_wr.exit_crit_edge, label %do.end.i72.i

if.then38.i.cxgb4i_make_tx_data_wr.exit_crit_edge: ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgb4i_make_tx_data_wr.exit

do.end.i72.i:                                     ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #12
  %211 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %state, align 4
  %call.i71.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.80, ptr noundef %csk, i32 noundef %212, i32 noundef %or.i.i.i, i32 noundef 3) #13
  br label %cxgb4i_make_tx_data_wr.exit

cxgb4i_make_tx_data_wr.exit:                      ; preds = %do.end.i72.i, %if.then38.i.cxgb4i_make_tx_data_wr.exit_crit_edge, %cxgbi_sock_flag.exit.i.cxgb4i_make_tx_data_wr.exit_crit_edge
  %213 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %snd_nxt, align 4
  %add132 = add i32 %214, %len16.0
  store i32 %add132, ptr %snd_nxt, align 4
  %215 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %flags.i, align 4
  %and.i.i311 = and i32 %216, -2
  store i32 %and.i.i311, ptr %flags.i, align 4
  br label %if.end144

if.else133:                                       ; preds = %if.end102
  %217 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load volatile i32, ptr %flags.i, align 4
  %219 = and i32 %218, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool135.not = icmp eq i32 %219, 0
  br i1 %tobool135.not, label %if.else133.if.end144_crit_edge, label %land.lhs.true136

if.else133.if.end144_crit_edge:                   ; preds = %if.else133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

land.lhs.true136:                                 ; preds = %if.else133
  %220 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %wr_una_cred, align 4
  %222 = ptrtoint ptr %wr_max_cred to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %wr_max_cred, align 4
  %div139 = sdiv i32 %223, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %221, i32 %div139)
  %cmp140.not = icmp slt i32 %221, %div139
  br i1 %cmp140.not, label %land.lhs.true136.if.end144_crit_edge, label %if.then142

land.lhs.true136.if.end144_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

if.then142:                                       ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 19
  %224 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %data, align 4
  %226 = ptrtoint ptr %225 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %225, align 8
  %or = or i32 %227, 2097152
  store i32 %or, ptr %225, align 8
  br label %if.end144

if.end144:                                        ; preds = %if.then142, %land.lhs.true136.if.end144_crit_edge, %if.else133.if.end144_crit_edge, %cxgb4i_make_tx_data_wr.exit
  %len16.1 = phi i32 [ %len16.0, %cxgb4i_make_tx_data_wr.exit ], [ %13, %if.then142 ], [ %13, %land.lhs.true136.if.end144_crit_edge ], [ %13, %if.else133.if.end144_crit_edge ]
  %truesize = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 20
  %228 = ptrtoint ptr %truesize to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %truesize, align 8
  %add145 = add i32 %229, %total_size.0325
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3
  %230 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %csk, ptr %cb.i, align 8
  %arp_err_handler.i = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 3, i32 4
  %231 = ptrtoint ptr %arp_err_handler.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store ptr @arp_failure_skb_discard, ptr %arp_err_handler.i, align 4
  %232 = load i32, ptr @dbg_level, align 4
  %and147 = and i32 %232, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and147)
  %tobool148.not = icmp eq i32 %and147, 0
  br i1 %tobool148.not, label %if.end144.cleanup_crit_edge, label %do.end152

if.end144.cleanup_crit_edge:                      ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end152:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  %233 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %state, align 4
  %235 = ptrtoint ptr %flags.i271 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %flags.i271, align 4
  %237 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %tid.i, align 4
  %call157 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.65, ptr noundef %csk, i32 noundef %234, i32 noundef %236, i32 noundef %238, ptr noundef nonnull %11, i32 noundef %len16.1) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end152, %if.end144.cleanup_crit_edge
  %239 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %csk, align 4
  %ports = getelementptr inbounds %struct.cxgbi_device, ptr %240, i32 0, i32 3
  %241 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %ports, align 4
  %243 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %243)
  %244 = load i8, ptr %port_id, align 4
  %idxprom = zext i8 %244 to i32
  %arrayidx162 = getelementptr ptr, ptr %242, i32 %idxprom
  %245 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %arrayidx162, align 4
  %247 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %l2t, align 4
  %call163 = tail call i32 @cxgb4_l2t_send(ptr noundef %246, ptr noundef nonnull %11, ptr noundef %248) #10
  %249 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %wr_cred, align 4
  %tobool13.not = icmp eq i32 %250, 0
  br i1 %tobool13.not, label %cleanup.cleanup171_crit_edge, label %cleanup.land.rhs_crit_edge

cleanup.land.rhs_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.rhs

cleanup.cleanup171_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup171

cleanup171:                                       ; preds = %cleanup.cleanup171_crit_edge, %cleanup.thread, %land.rhs.cleanup171_crit_edge, %do.end, %do.body.cleanup171_crit_edge, %while.cond.preheader.cleanup171_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.body.cleanup171_crit_edge ], [ %total_size.0325, %cleanup.thread ], [ 0, %while.cond.preheader.cleanup171_crit_edge ], [ %add145, %cleanup.cleanup171_crit_edge ], [ %total_size.0325, %land.rhs.cleanup171_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_abort_req(ptr noundef %csk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cpl_abort_req = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 23
  %0 = ptrtoint ptr %cpl_abort_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpl_abort_req, align 4
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp eq i32 %3, 8
  %tobool2.not = icmp eq ptr %1, null
  %or.cond = select i1 %cmp, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false3, !prof !584

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %entry
  %4 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %csk, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %cmp.i = icmp eq ptr %csk, null
  br i1 %cmp.i, label %if.end.if.then6_crit_edge, label %cxgbi_sock_flag.exit

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

cxgbi_sock_flag.exit:                             ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %8 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %cxgbi_sock_flag.exit.if.then6_crit_edge, label %cxgbi_sock_flag.exit.if.end8_crit_edge

cxgbi_sock_flag.exit.if.end8_crit_edge:           ; preds = %cxgbi_sock_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

cxgbi_sock_flag.exit.if.then6_crit_edge:          ; preds = %cxgbi_sock_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then6

if.then6:                                         ; preds = %cxgbi_sock_flag.exit.if.then6_crit_edge, %if.end.if.then6_crit_edge
  tail call fastcc void @send_tx_flowc_wr(ptr noundef %csk)
  %flags.i72 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %9 = ptrtoint ptr %flags.i72 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i72, align 4
  %or.i.i = or i32 %10, 8
  store i32 %or.i.i, ptr %flags.i72, align 4
  %11 = load i32, ptr @dbg_level, align 4
  %and.i = and i32 %11, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then6.if.end8_crit_edge, label %do.end.i

if.then6.if.end8_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.end.i:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.80, ptr noundef %csk, i32 noundef %13, i32 noundef %or.i.i, i32 noundef 3) #13
  br label %if.end8

if.end8:                                          ; preds = %do.end.i, %if.then6.if.end8_crit_edge, %cxgbi_sock_flag.exit.if.end8_crit_edge
  %14 = load i32, ptr @dbg_level, align 4
  %and.i73 = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73)
  %tobool.not.i74 = icmp eq i32 %and.i73, 0
  br i1 %tobool.not.i74, label %if.end8.cxgbi_sock_set_state.exit_crit_edge, label %do.end.i77

if.end8.cxgbi_sock_set_state.exit_crit_edge:      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_set_state.exit

do.end.i77:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state, align 4
  %flags.i75 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %17 = ptrtoint ptr %flags.i75 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i75, align 4
  %call.i76 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, ptr noundef %csk, i32 noundef %16, i32 noundef %18, i32 noundef 8) #13
  br label %cxgbi_sock_set_state.exit

cxgbi_sock_set_state.exit:                        ; preds = %do.end.i77, %if.end8.cxgbi_sock_set_state.exit_crit_edge
  %19 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 8, ptr %state, align 4
  %flags.i78 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %20 = ptrtoint ptr %flags.i78 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i78, align 4
  %or.i.i79 = or i32 %21, 4
  store i32 %or.i.i79, ptr %flags.i78, align 4
  %22 = load i32, ptr @dbg_level, align 4
  %and.i80 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i80)
  %tobool.not.i81 = icmp eq i32 %and.i80, 0
  br i1 %tobool.not.i81, label %cxgbi_sock_set_state.exit.cxgbi_sock_set_flag.exit85_crit_edge, label %do.end.i84

cxgbi_sock_set_state.exit.cxgbi_sock_set_flag.exit85_crit_edge: ; preds = %cxgbi_sock_set_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_set_flag.exit85

do.end.i84:                                       ; preds = %cxgbi_sock_set_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.80, ptr noundef %csk, i32 noundef 8, i32 noundef %or.i.i79, i32 noundef 2) #13
  br label %cxgbi_sock_set_flag.exit85

cxgbi_sock_set_flag.exit85:                       ; preds = %do.end.i84, %cxgbi_sock_set_state.exit.cxgbi_sock_set_flag.exit85_crit_edge
  %write_queue.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 34
  %23 = ptrtoint ptr %write_queue.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write_queue.i, align 4
  %cmp.i.i2.i = icmp eq ptr %24, %write_queue.i
  %tobool.not.i13.i = icmp eq ptr %24, null
  %tobool.not.i4.i = or i1 %cmp.i.i2.i, %tobool.not.i13.i
  br i1 %tobool.not.i4.i, label %cxgbi_sock_set_flag.exit85.cxgbi_sock_purge_write_queue.exit_crit_edge, label %while.body.lr.ph.i

cxgbi_sock_set_flag.exit85.cxgbi_sock_purge_write_queue.exit_crit_edge: ; preds = %cxgbi_sock_set_flag.exit85
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_purge_write_queue.exit

while.body.lr.ph.i:                               ; preds = %cxgbi_sock_set_flag.exit85
  %qlen.i.i.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 34, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %25 = phi ptr [ %24, %while.body.lr.ph.i ], [ %35, %while.body.i.while.body.i_crit_edge ]
  %26 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %25, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.51, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %25, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.51, ptr %29, i32 0, i32 1
  %32 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %31, ptr %prev17.i.i.i, align 4
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %29, ptr %31, align 8
  tail call void @__kfree_skb(ptr noundef nonnull %25) #10
  %34 = ptrtoint ptr %write_queue.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %write_queue.i, align 4
  %cmp.i.i.i = icmp eq ptr %35, %write_queue.i
  %tobool.not.i1.i = icmp eq ptr %35, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i1.i
  br i1 %tobool.not.i.i, label %while.body.i.cxgbi_sock_purge_write_queue.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.body.i.cxgbi_sock_purge_write_queue.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_purge_write_queue.exit

cxgbi_sock_purge_write_queue.exit:                ; preds = %while.body.i.cxgbi_sock_purge_write_queue.exit_crit_edge, %cxgbi_sock_set_flag.exit85.cxgbi_sock_purge_write_queue.exit_crit_edge
  %36 = ptrtoint ptr %cpl_abort_req to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %cpl_abort_req, align 4
  %head = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %37 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %head, align 8
  %port_id = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %39 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %port_id, align 4
  %conv = zext i8 %40 to i16
  %shl.i = shl nuw nsw i16 %conv, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 10
  %41 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %shl.i, ptr %queue_mapping1.i.i, align 8
  %cmd = getelementptr inbounds %struct.cpl_abort_req, ptr %38, i32 0, i32 4
  %42 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 0, ptr %cmd, align 1
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3
  %43 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %csk, ptr %cb.i, align 8
  %arp_err_handler.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 3, i32 4
  %44 = ptrtoint ptr %arp_err_handler.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @abort_arp_failure, ptr %arp_err_handler.i, align 4
  %45 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 83886096, ptr %38, align 8
  %tid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %46 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tid, align 4
  %shl = shl i32 %47, 8
  %or = or i32 %shl, 2
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %38, i32 0, i32 1
  %48 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or, ptr %wr_mid, align 4
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %38, i32 0, i32 2
  %49 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 0, ptr %wr_lo, align 8
  %50 = load i32, ptr %tid, align 4
  %or13 = or i32 %50, 167772160
  %ot = getelementptr inbounds %struct.cpl_abort_req, ptr %38, i32 0, i32 1
  %51 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or13, ptr %ot, align 8
  %snd_nxt = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 43
  %52 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %snd_nxt, align 4
  %rsvd0 = getelementptr inbounds %struct.cpl_abort_req, ptr %38, i32 0, i32 2
  %54 = ptrtoint ptr %rsvd0 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %rsvd0, align 4
  br i1 %cmp.i, label %cxgbi_sock_purge_write_queue.exit.cxgbi_sock_flag.exit92_crit_edge, label %if.end.i90

cxgbi_sock_purge_write_queue.exit.cxgbi_sock_flag.exit92_crit_edge: ; preds = %cxgbi_sock_purge_write_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_flag.exit92

if.end.i90:                                       ; preds = %cxgbi_sock_purge_write_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %flags.i78 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %flags.i78, align 4
  %57 = and i32 %56, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %phi.cmp = icmp eq i32 %57, 0
  br label %cxgbi_sock_flag.exit92

cxgbi_sock_flag.exit92:                           ; preds = %if.end.i90, %cxgbi_sock_purge_write_queue.exit.cxgbi_sock_flag.exit92_crit_edge
  %retval.0.i91 = phi i1 [ %phi.cmp, %if.end.i90 ], [ true, %cxgbi_sock_purge_write_queue.exit.cxgbi_sock_flag.exit92_crit_edge ]
  %conv18 = zext i1 %retval.0.i91 to i8
  %rsvd1 = getelementptr inbounds %struct.cpl_abort_req, ptr %38, i32 0, i32 3
  %58 = ptrtoint ptr %rsvd1 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv18, ptr %rsvd1, align 8
  %59 = load i32, ptr @dbg_level, align 4
  %and = and i32 %59, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %cxgbi_sock_flag.exit92.do.end33_crit_edge, label %do.end24

cxgbi_sock_flag.exit92.do.end33_crit_edge:        ; preds = %cxgbi_sock_flag.exit92
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end33

do.end24:                                         ; preds = %cxgbi_sock_flag.exit92
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %state, align 4
  %62 = ptrtoint ptr %flags.i78 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %flags.i78, align 4
  %64 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tid, align 4
  %66 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %snd_nxt, align 4
  %conv29 = zext i1 %retval.0.i91 to i32
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84, ptr noundef %csk, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %conv29) #13
  br label %do.end33

do.end33:                                         ; preds = %do.end24, %cxgbi_sock_flag.exit92.do.end33_crit_edge
  %68 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %csk, align 4
  %ports = getelementptr inbounds %struct.cxgbi_device, ptr %69, i32 0, i32 3
  %70 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ports, align 4
  %72 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %port_id, align 4
  %idxprom = zext i8 %73 to i32
  %arrayidx = getelementptr ptr, ptr %71, i32 %idxprom
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx, align 4
  %l2t = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 19
  %76 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %l2t, align 4
  %call36 = tail call i32 @cxgb4_l2t_send(ptr noundef %75, ptr noundef nonnull %1, ptr noundef %77) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %lor.lhs.false3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_close_req(ptr noundef %csk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cpl_close = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 22
  %0 = ptrtoint ptr %cpl_close to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cpl_close, align 4
  %head = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head, align 8
  %tid1 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %4 = ptrtoint ptr %tid1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tid1, align 4
  %6 = load i32, ptr @dbg_level, align 4
  %and = and i32 %6, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %7 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90, ptr noundef %csk, i32 noundef %8, i32 noundef %10, i32 noundef %5) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %11 = ptrtoint ptr %cpl_close to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %cpl_close, align 4
  %port_id = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %12 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port_id, align 4
  %conv = zext i8 %13 to i16
  %shl.i = shl nuw nsw i16 %conv, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 10
  %14 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %shl.i, ptr %queue_mapping1.i.i, align 8
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 83886088, ptr %3, align 8
  %shl = shl i32 %5, 8
  %or = or i32 %shl, 2
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or, ptr %wr_mid, align 4
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %3, i32 0, i32 2
  %17 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 0, ptr %wr_lo, align 8
  %or12 = or i32 %5, 134217728
  %ot = getelementptr inbounds %struct.cpl_close_con_req, ptr %3, i32 0, i32 1
  %18 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or12, ptr %ot, align 8
  %rsvd = getelementptr inbounds %struct.cpl_close_con_req, ptr %3, i32 0, i32 2
  %19 = ptrtoint ptr %rsvd to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %rsvd, align 4
  tail call void @cxgbi_sock_skb_entail(ptr noundef %csk, ptr noundef %1) #10
  %state13 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %20 = ptrtoint ptr %state13 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp = icmp ugt i32 %21, 2
  br i1 %cmp, label %if.then15, label %do.end5.if.end17_crit_edge

do.end5.if.end17_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  %call16 = tail call i32 @push_tx_frames(ptr noundef %csk, i32 noundef 1)
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.end5.if.end17_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @send_rx_credits(ptr noundef %csk, i32 noundef %credits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %tid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %5 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tid, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, ptr noundef %csk, i32 noundef %2, i32 noundef %4, i32 noundef %6, i32 noundef %credits) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 24, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end9, label %if.then.i

if.then.i:                                        ; preds = %do.end3
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i.i, label %if.end12, label %do.body3.i.i, !prof !581

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !582
  unreachable

do.end9:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 24, i32 noundef 0) #13
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.92, ptr noundef %csk, i32 noundef %credits) #13
  br label %cleanup

if.end12:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %9 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 24
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %12, 24
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %13 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i, align 8
  %15 = call ptr @memset(ptr %14, i32 0, i32 24)
  %16 = load ptr, ptr %head.i, align 8
  %port_id = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %17 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port_id, align 4
  %conv = zext i8 %18 to i16
  %shl.i = shl nuw nsw i16 %conv, 1
  %or.i = or i16 %shl.i, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %or.i, ptr %queue_mapping1.i.i, align 8
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 83886088, ptr %16, align 8
  %tid14 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %21 = ptrtoint ptr %tid14 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tid14, align 4
  %shl = shl i32 %22, 8
  %or = or i32 %shl, 2
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %16, i32 0, i32 1
  %23 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %wr_mid, align 4
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %16, i32 0, i32 2
  %24 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 0, ptr %wr_lo, align 8
  %25 = load i32, ptr %tid14, align 4
  %or20 = or i32 %25, 218103808
  %ot = getelementptr inbounds %struct.cpl_rx_data_ack, ptr %16, i32 0, i32 1
  %26 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or20, ptr %ot, align 8
  %or22 = or i32 %credits, 268435456
  %credit_dack = getelementptr inbounds %struct.cpl_rx_data_ack, ptr %16, i32 0, i32 2
  %27 = ptrtoint ptr %credit_dack to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or22, ptr %credit_dack, align 4
  %28 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %csk, align 4
  %ports = getelementptr inbounds %struct.cxgbi_device, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ports, align 4
  %32 = load i8, ptr %port_id, align 4
  %idxprom = zext i8 %32 to i32
  %arrayidx = getelementptr ptr, ptr %31, i32 %idxprom
  %33 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx, align 4
  %call24 = tail call i32 @cxgb4_ofld_send(ptr noundef %34, ptr noundef nonnull %call.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end9
  %retval.0 = phi i32 [ %credits, %if.end12 ], [ 0, %do.end9 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alloc_cpls(ptr noundef %csk) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 24, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %alloc_wr.exit.thread, label %if.then.i

if.then.i:                                        ; preds = %entry
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %0 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not.i.i = icmp eq i32 %1, 0
  br i1 %tobool.i.not.i.i, label %if.end, label %do.body3.i.i, !prof !581

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !582
  unreachable

alloc_wr.exit.thread:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 24, i32 noundef 0) #13
  %cpl_close48 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 22
  %2 = ptrtoint ptr %cpl_close48 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %cpl_close48, align 4
  br label %return

if.end:                                           ; preds = %if.then.i
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %3 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 24
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %5 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %6, 24
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %7 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i, align 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 24)
  %cpl_close = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 22
  %10 = ptrtoint ptr %cpl_close to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %cpl_close, align 4
  %call.i.i18 = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i19 = icmp eq ptr %call.i.i18, null
  br i1 %tobool.not.i19, label %alloc_wr.exit32.thread, label %if.then.i22

if.then.i22:                                      ; preds = %if.end
  %data_len.i.i.i20 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i18, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i.i20 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i.i20, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.i.not.i.i21 = icmp eq i32 %12, 0
  br i1 %tobool.i.not.i.i21, label %if.end6, label %do.body3.i.i23, !prof !581

do.body3.i.i23:                                   ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !582
  unreachable

alloc_wr.exit32.thread:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 32, i32 noundef 0) #13
  %cpl_abort_req49 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 23
  br label %free_cpls

if.end6:                                          ; preds = %if.then.i22
  %tail.i.i.i24 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i18, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i24, align 8
  %add.ptr.i.i25 = getelementptr i8, ptr %14, i32 32
  store ptr %add.ptr.i.i25, ptr %tail.i.i.i24, align 8
  %len9.i.i26 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i18, i32 0, i32 6
  %15 = ptrtoint ptr %len9.i.i26 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len9.i.i26, align 4
  %add.i.i27 = add i32 %16, 32
  store i32 %add.i.i27, ptr %len9.i.i26, align 4
  %head.i28 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i18, i32 0, i32 18
  %17 = ptrtoint ptr %head.i28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i28, align 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 32)
  %cpl_abort_req = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 23
  %20 = ptrtoint ptr %cpl_abort_req to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i.i18, ptr %cpl_abort_req, align 4
  %call.i.i33 = tail call ptr @__alloc_skb(i32 noundef 32, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i34 = icmp eq ptr %call.i.i33, null
  br i1 %tobool.not.i34, label %alloc_wr.exit47.thread, label %if.then.i37

if.then.i37:                                      ; preds = %if.end6
  %data_len.i.i.i35 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i33, i32 0, i32 7
  %21 = ptrtoint ptr %data_len.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i.i35, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i.i36 = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i.i36, label %alloc_wr.exit47, label %do.body3.i.i38, !prof !581

do.body3.i.i38:                                   ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !582
  unreachable

alloc_wr.exit47.thread:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 32, i32 noundef 0) #13
  %cpl_abort_rpl50 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 24
  br label %free_cpls

alloc_wr.exit47:                                  ; preds = %if.then.i37
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i.i39 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i33, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i39, align 8
  %add.ptr.i.i40 = getelementptr i8, ptr %24, i32 32
  store ptr %add.ptr.i.i40, ptr %tail.i.i.i39, align 8
  %len9.i.i41 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i33, i32 0, i32 6
  %25 = ptrtoint ptr %len9.i.i41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len9.i.i41, align 4
  %add.i.i42 = add i32 %26, 32
  store i32 %add.i.i42, ptr %len9.i.i41, align 4
  %head.i43 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i33, i32 0, i32 18
  %27 = ptrtoint ptr %head.i43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i43, align 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 32)
  %cpl_abort_rpl = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 24
  %30 = ptrtoint ptr %cpl_abort_rpl to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i33, ptr %cpl_abort_rpl, align 4
  br label %return

free_cpls:                                        ; preds = %alloc_wr.exit47.thread, %alloc_wr.exit32.thread
  %cpl_abort_rpl50.sink = phi ptr [ %cpl_abort_rpl50, %alloc_wr.exit47.thread ], [ %cpl_abort_req49, %alloc_wr.exit32.thread ]
  %31 = ptrtoint ptr %cpl_abort_rpl50.sink to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %cpl_abort_rpl50.sink, align 4
  tail call void @cxgbi_sock_free_cpl_skbs(ptr noundef %csk) #10
  br label %return

return:                                           ; preds = %free_cpls, %alloc_wr.exit47, %alloc_wr.exit.thread
  %retval.0 = phi i32 [ -12, %free_cpls ], [ 0, %alloc_wr.exit47 ], [ -12, %alloc_wr.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @init_act_open(ptr noundef %csk) #2 align 64 {
entry:
  %caps.i = alloca i8, align 1
  %iscsi_dcb_app.i = alloca %struct.dcb_app, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csk, align 4
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 4
  %ports = getelementptr inbounds %struct.cxgbi_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports, align 4
  %port_id = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %6 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port_id, align 4
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr ptr, ptr %5, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %10 = load i32, ptr @dbg_level, align 4
  %and = and i32 %10, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %tid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %15 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tid, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.96, ptr noundef %csk, i32 noundef %12, i32 noundef %14, i32 noundef %16) #13
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %csk_family = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 29
  %17 = ptrtoint ptr %csk_family to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %csk_family, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.278)
  switch i32 %18, label %do.end12 [
    i32 2, label %if.then5
    i32 10, label %if.then8
  ]

if.then5:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  %sin_addr = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 2
  br label %if.end17

if.then8:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_addr = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 3
  br label %if.end17

do.end12:                                         ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.96, i32 noundef %18) #13
  br label %rel_resource

if.end17:                                         ; preds = %if.then8, %if.then5
  %daddr.0 = phi ptr [ %sin_addr, %if.then5 ], [ %sin6_addr, %if.then8 ]
  %dst = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 32
  %20 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dst, align 4
  %ops.i = getelementptr inbounds %struct.dst_entry, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ops.i, align 4
  %neigh_lookup.i = getelementptr inbounds %struct.dst_ops, ptr %23, i32 0, i32 14
  %24 = ptrtoint ptr %neigh_lookup.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %neigh_lookup.i, align 8
  %call.i = tail call ptr %25(ptr noundef %21, ptr noundef null, ptr noundef %daddr.0) #10
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %tobool19.not406 = icmp eq ptr %call.i, null
  %tobool19.not = or i1 %cmp.i.i, %tobool19.not406
  br i1 %tobool19.not, label %do.end23, label %if.end26

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.96, ptr noundef %9) #13
  br label %rel_resource

if.end26:                                         ; preds = %if.end17
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %call.i, i32 0, i32 12
  %26 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %nud_state, align 8
  %28 = and i8 %27, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool28.not = icmp eq i8 %28, 0
  br i1 %tobool28.not, label %if.then29, label %if.end26.if.end31_crit_edge

if.end26.if.end31_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then29:                                        ; preds = %if.end26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %used.i.i = getelementptr inbounds %struct.neighbour, ptr %call.i, i32 0, i32 10
  %30 = ptrtoint ptr %used.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %used.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %29)
  %cmp.not.i.i = icmp eq i32 %31, %29
  br i1 %cmp.not.i.i, label %if.then29.if.end.i.i_crit_edge, label %do.body5.i.i

if.then29.if.end.i.i_crit_edge:                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.body5.i.i:                                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %used.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %29, ptr %used.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.body5.i.i, %if.then29.if.end.i.i_crit_edge
  %33 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %nud_state, align 8
  %35 = and i8 %34, -38
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i.i = icmp eq i8 %35, 0
  br i1 %tobool.not.i.i, label %if.then11.i.i, label %if.end.i.i.if.end31_crit_edge

if.end.i.i.if.end31_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i = tail call i32 @__neigh_event_send(ptr noundef nonnull %call.i, ptr noundef null, i1 noundef zeroext true) #10
  br label %if.end31

if.end31:                                         ; preds = %if.then11.i.i, %if.end.i.i.if.end31_crit_edge, %if.end26.if.end31_crit_edge
  %tids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %3, i32 0, i32 2
  %36 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tids, align 4
  %call32 = tail call i32 @cxgb4_alloc_atid(ptr noundef %37, ptr noundef %csk) #10
  %atid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 2
  %38 = ptrtoint ptr %atid to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call32, ptr %atid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp34 = icmp slt i32 %call32, 0
  br i1 %cmp34, label %do.end39, label %if.end44

do.end39:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.96, ptr noundef %9) #13
  br label %if.then194

if.end44:                                         ; preds = %if.end31
  %flags.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %40, 32
  store i32 %or.i.i, ptr %flags.i, align 4
  %41 = load i32, ptr @dbg_level, align 4
  %and.i = and i32 %41, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end44.cxgbi_sock_set_flag.exit_crit_edge, label %do.end.i

if.end44.cxgbi_sock_set_flag.exit_crit_edge:      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_set_flag.exit

do.end.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %state.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %42 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %state.i, align 4
  %call.i323 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.80, ptr noundef %csk, i32 noundef %43, i32 noundef %or.i.i, i32 noundef 5) #13
  br label %cxgbi_sock_set_flag.exit

cxgbi_sock_set_flag.exit:                         ; preds = %do.end.i, %if.end44.cxgbi_sock_set_flag.exit_crit_edge
  %44 = load i32, ptr @dbg_level, align 4
  %and.i324 = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i324)
  %tobool.not.i325 = icmp eq i32 %and.i324, 0
  br i1 %tobool.not.i325, label %cxgbi_sock_set_flag.exit.do.end3.i_crit_edge, label %do.end.i326

cxgbi_sock_set_flag.exit.do.end3.i_crit_edge:     ; preds = %cxgbi_sock_set_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i

do.end.i326:                                      ; preds = %cxgbi_sock_set_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  %refcnt.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 27
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #10
  %45 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %refcnt.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.96, ptr noundef %csk, i32 noundef %46) #13
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i326, %cxgbi_sock_set_flag.exit.do.end3.i_crit_edge
  %refcnt4.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt4.i, i32 1, i32 3, i32 1) #10
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4.i, ptr %refcnt4.i, i32 1, ptr elementtype(i32) %refcnt4.i) #10, !srcloc !583
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !576

do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end3.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %48 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %.not.i.i.i.i.i = icmp sgt i32 %48, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !581

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cxgbi_sock_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt4.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %__cxgbi_sock_get.exit

__cxgbi_sock_get.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge
  %dcbnl_ops.i = getelementptr inbounds %struct.net_device, ptr %9, i32 0, i32 139
  %49 = ptrtoint ptr %dcbnl_ops.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dcbnl_ops.i, align 16
  %getstate.i = getelementptr inbounds %struct.dcbnl_rtnl_ops, ptr %50, i32 0, i32 14
  %51 = ptrtoint ptr %getstate.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %getstate.i, align 4
  %call.i327 = tail call zeroext i8 %52(ptr noundef %9) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i327)
  %tobool46.not = icmp eq i8 %call.i327, 0
  br i1 %tobool46.not, label %__cxgbi_sock_get.exit.if.end49_crit_edge, label %if.then47

__cxgbi_sock_get.exit.if.end49_crit_edge:         ; preds = %__cxgbi_sock_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then47:                                        ; preds = %__cxgbi_sock_get.exit
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %caps.i) #10
  %53 = ptrtoint ptr %caps.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 -1, ptr %caps.i, align 1, !annotation !585
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %iscsi_dcb_app.i) #10
  %54 = ptrtoint ptr %iscsi_dcb_app.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 3260, ptr %iscsi_dcb_app.i, align 4
  %55 = ptrtoint ptr %dcbnl_ops.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dcbnl_ops.i, align 16
  %getcap.i = getelementptr inbounds %struct.dcbnl_rtnl_ops, ptr %56, i32 0, i32 28
  %57 = ptrtoint ptr %getcap.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %getcap.i, align 4
  %call.i329 = call zeroext i8 %58(ptr noundef %9, i32 noundef 9, ptr noundef nonnull %caps.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call.i329)
  %tobool.not.i330 = icmp eq i8 %call.i329, 0
  br i1 %tobool.not.i330, label %if.end.i, label %if.then47.get_iscsi_dcb_priority.exit_crit_edge

if.then47.get_iscsi_dcb_priority.exit_crit_edge:  ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #12
  br label %get_iscsi_dcb_priority.exit

if.end.i:                                         ; preds = %if.then47
  %59 = ptrtoint ptr %caps.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %caps.i, align 1
  %conv1.i = zext i8 %60 to i32
  %and.i331 = and i32 %conv1.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i331)
  %tobool2.not.i = icmp eq i32 %and.i331, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  %61 = ptrtoint ptr %iscsi_dcb_app.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %iscsi_dcb_app.i, align 4
  %call4.i = call zeroext i8 @dcb_ieee_getapp_mask(ptr noundef %9, ptr noundef nonnull %iscsi_dcb_app.i) #10
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.i)
  %tobool6.not.i = icmp eq i8 %call4.i, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then3.i.do.body.i_crit_edge

if.then3.i.do.body.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then7.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %iscsi_dcb_app.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 4, ptr %iscsi_dcb_app.i, align 4
  %call9.i = call zeroext i8 @dcb_ieee_getapp_mask(ptr noundef %9, ptr noundef nonnull %iscsi_dcb_app.i) #10
  br label %do.body.i

if.else.i:                                        ; preds = %if.end.i
  %and13.i = and i32 %conv1.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool14.not.i, label %if.else.i.do.body.i_crit_edge, label %if.then15.i

if.else.i.do.body.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %iscsi_dcb_app.i to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %iscsi_dcb_app.i, align 4
  %call17.i = call zeroext i8 @dcb_getapp(ptr noundef %9, ptr noundef nonnull %iscsi_dcb_app.i) #10
  br label %do.body.i

do.body.i:                                        ; preds = %if.then15.i, %if.else.i.do.body.i_crit_edge, %if.then7.i, %if.then3.i.do.body.i_crit_edge
  %rv.0.shrunk.i = phi i8 [ %call4.i, %if.then3.i.do.body.i_crit_edge ], [ %call9.i, %if.then7.i ], [ %call17.i, %if.then15.i ], [ 0, %if.else.i.do.body.i_crit_edge ]
  %rv.0.i = zext i8 %rv.0.shrunk.i to i32
  %64 = load i32, ptr @dbg_level, align 4
  %and21.i = and i32 %64, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %do.body.do.end29_crit_edge.i, label %do.end.i333

do.body.do.end29_crit_edge.i:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %.pre.i = call i32 @llvm.cttz.i32(i32 %rv.0.i, i1 true) #10, !range !578
  br label %do.end29.i

do.end.i333:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rv.0.shrunk.i)
  %tobool.not.i.i332 = icmp eq i8 %rv.0.shrunk.i, 0
  %65 = call i32 @llvm.cttz.i32(i32 %rv.0.i, i1 true) #10, !range !578
  %retval.0.i.i = select i1 %tobool.not.i.i332, i32 0, i32 %65
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.118, i32 noundef %retval.0.i.i) #13
  br label %do.end29.i

do.end29.i:                                       ; preds = %do.end.i333, %do.body.do.end29_crit_edge.i
  %.pre-phi.i = phi i32 [ %.pre.i, %do.body.do.end29_crit_edge.i ], [ %65, %do.end.i333 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %rv.0.shrunk.i)
  %tobool.not.i41.i = icmp eq i8 %rv.0.shrunk.i, 0
  %66 = trunc i32 %.pre-phi.i to i8
  %conv31.i = select i1 %tobool.not.i41.i, i8 0, i8 %66
  br label %get_iscsi_dcb_priority.exit

get_iscsi_dcb_priority.exit:                      ; preds = %do.end29.i, %if.then47.get_iscsi_dcb_priority.exit_crit_edge
  %retval.0.i = phi i8 [ %conv31.i, %do.end29.i ], [ 0, %if.then47.get_iscsi_dcb_priority.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %iscsi_dcb_app.i) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %caps.i) #10
  br label %if.end49

if.end49:                                         ; preds = %get_iscsi_dcb_priority.exit, %__cxgbi_sock_get.exit.if.end49_crit_edge
  %priority.0 = phi i8 [ %retval.0.i, %get_iscsi_dcb_priority.exit ], [ 0, %__cxgbi_sock_get.exit.if.end49_crit_edge ]
  %dcb_priority = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 16
  %67 = ptrtoint ptr %dcb_priority to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %priority.0, ptr %dcb_priority, align 4
  %l2t = getelementptr inbounds %struct.cxgb4_lld_info, ptr %3, i32 0, i32 1
  %68 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %l2t, align 4
  %conv50 = zext i8 %priority.0 to i32
  %call51 = call ptr @cxgb4_l2t_get(ptr noundef %69, ptr noundef nonnull %call.i, ptr noundef %9, i32 noundef %conv50) #10
  %l2t52 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 19
  %70 = ptrtoint ptr %l2t52 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call51, ptr %l2t52, align 4
  %tobool54.not = icmp eq ptr %call51, null
  br i1 %tobool54.not, label %do.end58, label %if.end63

do.end58:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.96, ptr noundef %9) #13
  br label %if.then194

if.end63:                                         ; preds = %if.end49
  %71 = load i32, ptr @dbg_level, align 4
  %and.i334 = and i32 %71, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i334)
  %tobool.not.i335 = icmp eq i32 %and.i334, 0
  br i1 %tobool.not.i335, label %if.end63.do.end3.i344_crit_edge, label %do.end.i339

if.end63.do.end3.i344_crit_edge:                  ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i344

do.end.i339:                                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i337 = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt4.i, i32 noundef 4) #10
  %72 = ptrtoint ptr %refcnt4.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %refcnt4.i, align 4
  %call2.i338 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.96, ptr noundef %csk, i32 noundef %73) #13
  br label %do.end3.i344

do.end3.i344:                                     ; preds = %do.end.i339, %if.end63.do.end3.i344_crit_edge
  %call.i.i.i.i.i.i.i341 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4.i, i32 noundef 4) #10
  call void @llvm.prefetch.p0(ptr %refcnt4.i, i32 1, i32 3, i32 1) #10
  %74 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4.i, ptr %refcnt4.i, i32 1, ptr elementtype(i32) %refcnt4.i) #10, !srcloc !583
  %asmresult.i.i.i.i.i.i.i342 = extractvalue { i32, i32, i32 } %74, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i342)
  %tobool1.not.i.i.i.i.i343 = icmp eq i32 %asmresult.i.i.i.i.i.i.i342, 0
  br i1 %tobool1.not.i.i.i.i.i343, label %do.end3.i344.if.end15.sink.split.i.i.i.i.i349_crit_edge, label %if.else.i.i.i.i.i347, !prof !576

do.end3.i344.if.end15.sink.split.i.i.i.i.i349_crit_edge: ; preds = %do.end3.i344
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i349

if.else.i.i.i.i.i347:                             ; preds = %do.end3.i344
  %add.i.i.i.i.i345 = add i32 %asmresult.i.i.i.i.i.i.i342, 1
  %75 = or i32 %add.i.i.i.i.i345, %asmresult.i.i.i.i.i.i.i342
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %75)
  %.not.i.i.i.i.i346 = icmp sgt i32 %75, -1
  br i1 %.not.i.i.i.i.i346, label %if.else.i.i.i.i.i347.__cxgbi_sock_get.exit350_crit_edge, label %if.else.i.i.i.i.i347.if.end15.sink.split.i.i.i.i.i349_crit_edge, !prof !581

if.else.i.i.i.i.i347.if.end15.sink.split.i.i.i.i.i349_crit_edge: ; preds = %if.else.i.i.i.i.i347
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i349

if.else.i.i.i.i.i347.__cxgbi_sock_get.exit350_crit_edge: ; preds = %if.else.i.i.i.i.i347
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cxgbi_sock_get.exit350

if.end15.sink.split.i.i.i.i.i349:                 ; preds = %if.else.i.i.i.i.i347.if.end15.sink.split.i.i.i.i.i349_crit_edge, %do.end3.i344.if.end15.sink.split.i.i.i.i.i349_crit_edge
  %.sink.i.i.i.i.i348 = phi i32 [ 2, %do.end3.i344.if.end15.sink.split.i.i.i.i.i349_crit_edge ], [ 1, %if.else.i.i.i.i.i347.if.end15.sink.split.i.i.i.i.i349_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %refcnt4.i, i32 noundef %.sink.i.i.i.i.i348) #10
  br label %__cxgbi_sock_get.exit350

__cxgbi_sock_get.exit350:                         ; preds = %if.end15.sink.split.i.i.i.i.i349, %if.else.i.i.i.i.i347.__cxgbi_sock_get.exit350_crit_edge
  %76 = ptrtoint ptr %csk_family to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %csk_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %77)
  %cmp65 = icmp eq i32 %77, 10
  br i1 %cmp65, label %if.then67, label %__cxgbi_sock_get.exit350.if.end70_crit_edge

__cxgbi_sock_get.exit350.if.end70_crit_edge:      ; preds = %__cxgbi_sock_get.exit350
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then67:                                        ; preds = %__cxgbi_sock_get.exit350
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_addr68 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 3
  %call69 = call i32 @cxgb4_clip_get(ptr noundef %9, ptr noundef %sin6_addr68, i8 noundef zeroext 1) #10
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %__cxgbi_sock_get.exit350.if.end70_crit_edge
  %adapter_type = getelementptr inbounds %struct.cxgb4_lld_info, ptr %3, i32 0, i32 13
  %78 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %adapter_type, align 4
  %80 = and i8 %79, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %80)
  %cmp.i.not = icmp eq i8 %80, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 80, i8 %80)
  %cmp.i351.not = icmp eq i8 %80, 80
  %. = select i1 %cmp.i351.not, i32 56, i32 64
  %.322 = select i1 %cmp.i351.not, i32 80, i32 88
  %size.0 = select i1 %cmp.i.not, i32 48, i32 %.
  %size6.0 = select i1 %cmp.i.not, i32 72, i32 %.322
  %81 = ptrtoint ptr %csk_family to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %csk_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %cmp85 = icmp eq i32 %82, 2
  br i1 %cmp85, label %if.then87, label %if.else89

if.then87:                                        ; preds = %if.end70
  %call.i.i353 = call ptr @__alloc_skb(i32 noundef %size.0, i32 noundef 3072, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i354 = icmp eq ptr %call.i.i353, null
  br i1 %tobool.not.i354, label %do.end.i355, label %if.then.i

if.then.i:                                        ; preds = %if.then87
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i353, i32 0, i32 7
  %83 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.i.not.i.i = icmp eq i32 %84, 0
  br i1 %tobool.i.not.i.i, label %if.then.i.if.end94_crit_edge, label %do.body3.i.i, !prof !581

if.then.i.if.end94_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !582
  unreachable

do.end.i355:                                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %size.0, i32 noundef 0) #13
  br label %rel_resource

if.else89:                                        ; preds = %if.end70
  %call.i.i357 = call ptr @__alloc_skb(i32 noundef %size6.0, i32 noundef 3072, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i358 = icmp eq ptr %call.i.i357, null
  br i1 %tobool.not.i358, label %do.end.i370, label %if.then.i361

if.then.i361:                                     ; preds = %if.else89
  %data_len.i.i.i359 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i357, i32 0, i32 7
  %85 = ptrtoint ptr %data_len.i.i.i359 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_len.i.i.i359, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.i.not.i.i360 = icmp eq i32 %86, 0
  br i1 %tobool.i.not.i.i360, label %if.then.i361.if.end94_crit_edge, label %do.body3.i.i362, !prof !581

if.then.i361.if.end94_crit_edge:                  ; preds = %if.then.i361
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

do.body3.i.i362:                                  ; preds = %if.then.i361
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !582
  unreachable

do.end.i370:                                      ; preds = %if.else89
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i369 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %size6.0, i32 noundef 0) #13
  br label %rel_resource

if.end94:                                         ; preds = %if.then.i361.if.end94_crit_edge, %if.then.i.if.end94_crit_edge
  %call.i.i353.sink = phi ptr [ %call.i.i353, %if.then.i.if.end94_crit_edge ], [ %call.i.i357, %if.then.i361.if.end94_crit_edge ]
  %size.0.sink = phi i32 [ %size.0, %if.then.i.if.end94_crit_edge ], [ %size6.0, %if.then.i361.if.end94_crit_edge ]
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i353.sink, i32 0, i32 16
  %87 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %88, i32 %size.0.sink
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i353.sink, i32 0, i32 6
  %89 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %90, %size.0.sink
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i353.sink, i32 0, i32 18
  %91 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %head.i, align 8
  %93 = call ptr @memset(ptr %92, i32 0, i32 %size.0.sink)
  %94 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i353.sink, i32 0, i32 1
  %95 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %csk, ptr %94, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i353.sink, i32 0, i32 3
  %96 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %csk, ptr %cb.i, align 8
  %arp_err_handler.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i353.sink, i32 0, i32 3, i32 4
  %97 = ptrtoint ptr %arp_err_handler.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @cxgbi_sock_act_open_req_arp_failure, ptr %arp_err_handler.i, align 4
  %mtu = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 4
  %98 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mtu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool95.not = icmp eq i32 %99, 0
  br i1 %tobool95.not, label %if.then96, label %if.end94.if.end100_crit_edge

if.end94.if.end100_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

if.then96:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dst, align 4
  %ops.i373 = getelementptr inbounds %struct.dst_entry, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %ops.i373 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ops.i373, align 4
  %mtu.i = getelementptr inbounds %struct.dst_ops, ptr %103, i32 0, i32 5
  %104 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %mtu.i, align 4
  %call.i374 = call i32 %105(ptr noundef %101) #10
  %106 = ptrtoint ptr %mtu to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %call.i374, ptr %mtu, align 4
  br label %if.end100

if.end100:                                        ; preds = %if.then96, %if.end94.if.end100_crit_edge
  %mtus = getelementptr inbounds %struct.cxgb4_lld_info, ptr %3, i32 0, i32 5
  %107 = ptrtoint ptr %mtus to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mtus, align 4
  %109 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %mtu, align 4
  %conv102 = trunc i32 %110 to i16
  %mss_idx = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 10
  %call103 = call i32 @cxgb4_best_mtu(ptr noundef %108, i16 noundef zeroext %conv102, ptr noundef %mss_idx) #10
  %call104 = call i32 @cxgb4_port_chan(ptr noundef %9) #10
  %tx_chan = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 8
  %111 = ptrtoint ptr %tx_chan to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call104, ptr %tx_chan, align 4
  %smt_idx = getelementptr i8, ptr %9, i32 2966
  %112 = ptrtoint ptr %smt_idx to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %smt_idx, align 2
  %conv106 = zext i8 %113 to i32
  %smac_idx = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 11
  %114 = ptrtoint ptr %smac_idx to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %conv106, ptr %smac_idx, align 4
  %ntxq = getelementptr inbounds %struct.cxgb4_lld_info, ptr %3, i32 0, i32 9
  %115 = ptrtoint ptr %ntxq to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %ntxq, align 2
  %nchan = getelementptr inbounds %struct.cxgb4_lld_info, ptr %3, i32 0, i32 11
  %117 = ptrtoint ptr %nchan to i32
  call void @__asan_load1_noabort(i32 %117)
  %bf.load = load i8, ptr %nchan, align 2
  %bf.lshr = lshr i8 %bf.load, 4
  %div.rhs.trunc = zext i8 %bf.lshr to i16
  %div404 = udiv i16 %116, %div.rhs.trunc
  %call109 = call i32 @cxgb4_port_idx(ptr noundef %9) #10
  %118 = trunc i32 %call109 to i16
  %conv110 = mul i16 %div404, %118
  %txq_idx = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 6
  %119 = ptrtoint ptr %txq_idx to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv110, ptr %txq_idx, align 2
  %nrxq = getelementptr inbounds %struct.cxgb4_lld_info, ptr %3, i32 0, i32 8
  %120 = ptrtoint ptr %nrxq to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %nrxq, align 4
  %122 = ptrtoint ptr %nchan to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load113 = load i8, ptr %nchan, align 2
  %bf.lshr114 = lshr i8 %bf.load113, 4
  %div116.rhs.trunc = zext i8 %bf.lshr114 to i16
  %div116405 = udiv i16 %121, %div116.rhs.trunc
  %div116.zext = zext i16 %div116405 to i32
  %call117 = call i32 @cxgb4_port_idx(ptr noundef %9) #10
  %mul118 = mul i32 %call117, %div116.zext
  %rxq_idx_cntr = getelementptr inbounds %struct.cxgbi_device, ptr %1, i32 0, i32 20
  %123 = ptrtoint ptr %rxq_idx_cntr to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %rxq_idx_cntr, align 4
  %rem = urem i32 %124, %div116.zext
  %add = add i32 %rem, %mul118
  %inc = add i32 %124, 1
  store i32 %inc, ptr %rxq_idx_cntr, align 4
  %rxq_ids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %3, i32 0, i32 6
  %125 = ptrtoint ptr %rxq_ids to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %rxq_ids, align 4
  %arrayidx120 = getelementptr i16, ptr %126, i32 %add
  %127 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx120, align 2
  %rss_qid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 5
  %129 = ptrtoint ptr %rss_qid to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %128, ptr %rss_qid, align 4
  %speed = getelementptr i8, ptr %9, i32 2352
  %130 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %speed, align 4
  %132 = load i32, ptr @cxgb4i_snd_win, align 4
  %snd_win = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 46
  %133 = ptrtoint ptr %snd_win to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %132, ptr %snd_win, align 4
  %134 = load i32, ptr @cxgb4i_rcv_win, align 4
  %rcv_win = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 47
  %135 = ptrtoint ptr %rcv_win to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %rcv_win, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp122 = icmp slt i32 %134, 1
  br i1 %cmp122, label %if.then124, label %if.end100.if.end132_crit_edge

if.end100.if.end132_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.then124:                                       ; preds = %if.end100
  %136 = ptrtoint ptr %rcv_win to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 262144, ptr %rcv_win, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %131)
  %137 = icmp ult i32 %131, 10000
  br i1 %137, label %if.then124.if.end132_crit_edge, label %if.then128

if.then124.if.end132_crit_edge:                   ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end132

if.then128:                                       ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #12
  %div126 = udiv i32 %131, 10000
  %mul130 = shl i32 %div126, 18
  %138 = ptrtoint ptr %rcv_win to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %mul130, ptr %rcv_win, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %if.then124.if.end132_crit_edge, %if.end100.if.end132_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp133 = icmp slt i32 %132, 1
  br i1 %cmp133, label %if.then135, label %if.end132.if.end143_crit_edge

if.end132.if.end143_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

if.then135:                                       ; preds = %if.end132
  %139 = ptrtoint ptr %snd_win to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 131072, ptr %snd_win, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000, i32 %131)
  %140 = icmp ult i32 %131, 10000
  br i1 %140, label %if.then135.if.end143_crit_edge, label %if.then139

if.then135.if.end143_crit_edge:                   ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

if.then139:                                       ; preds = %if.then135
  call void @__sanitizer_cov_trace_pc() #12
  %div137 = udiv i32 %131, 10000
  %mul141 = shl i32 %div137, 17
  %141 = ptrtoint ptr %snd_win to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %mul141, ptr %snd_win, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then139, %if.then135.if.end143_crit_edge, %if.end132.if.end143_crit_edge
  %wr_cred = getelementptr inbounds %struct.cxgb4_lld_info, ptr %3, i32 0, i32 12
  %142 = ptrtoint ptr %wr_cred to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %wr_cred, align 1
  %conv144 = zext i8 %143 to i32
  %sub = add nsw i32 %conv144, -2
  %wr_cred145 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 14
  %144 = ptrtoint ptr %wr_cred145 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %sub, ptr %wr_cred145, align 4
  %wr_max_cred = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 13
  %145 = ptrtoint ptr %wr_max_cred to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %sub, ptr %wr_max_cred, align 4
  %wr_una_cred = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 15
  %146 = ptrtoint ptr %wr_una_cred to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 0, ptr %wr_una_cred, align 4
  %wr_pending_tail.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 21
  %147 = ptrtoint ptr %wr_pending_tail.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr null, ptr %wr_pending_tail.i, align 4
  %wr_pending_head.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 20
  %148 = ptrtoint ptr %wr_pending_head.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr null, ptr %wr_pending_head.i, align 4
  %err = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 37
  %149 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 0, ptr %err, align 4
  %150 = load i32, ptr @dbg_level, align 4
  %and148 = and i32 %150, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool149.not = icmp eq i32 %and148, 0
  br i1 %tobool149.not, label %if.end143.do.end168_crit_edge, label %do.end154

if.end143.do.end168_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end168

do.end154:                                        ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #12
  %151 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30
  %152 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31
  %state156 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %153 = ptrtoint ptr %state156 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %state156, align 4
  %155 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %flags.i, align 4
  %157 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %tx_chan, align 4
  %159 = ptrtoint ptr %txq_idx to i32
  call void @__asan_load2_noabort(i32 %159)
  %160 = load i16, ptr %txq_idx, align 2
  %conv160 = zext i16 %160 to i32
  %conv162 = zext i16 %128 to i32
  %161 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %mtu, align 4
  %163 = ptrtoint ptr %mss_idx to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %mss_idx, align 4
  %165 = ptrtoint ptr %smac_idx to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %smac_idx, align 4
  %call166 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.96, ptr noundef %151, ptr noundef %152, ptr noundef %csk, i32 noundef %154, i32 noundef %156, i32 noundef %158, i32 noundef %conv160, i32 noundef %conv162, i32 noundef %162, i32 noundef %164, i32 noundef %166) #13
  br label %do.end168

do.end168:                                        ; preds = %do.end154, %if.end143.do.end168_crit_edge
  %owner = getelementptr inbounds %struct.cxgbi_device, ptr %1, i32 0, i32 12
  %167 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %owner, align 4
  %call169 = call zeroext i1 @try_module_get(ptr noundef %168) #10
  br i1 %call169, label %if.end178, label %do.end173

do.end173:                                        ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #12
  %call177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.96, ptr noundef %9) #13
  br label %rel_resource

if.end178:                                        ; preds = %do.end168
  %169 = load i32, ptr @dbg_level, align 4
  %and.i376 = and i32 %169, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i376)
  %tobool.not.i377 = icmp eq i32 %and.i376, 0
  br i1 %tobool.not.i377, label %if.end178.cxgbi_sock_set_state.exit_crit_edge, label %do.end.i380

if.end178.cxgbi_sock_set_state.exit_crit_edge:    ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_set_state.exit

do.end.i380:                                      ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #12
  %state2.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %170 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %state2.i, align 4
  %172 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %flags.i, align 4
  %call.i379 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, ptr noundef %csk, i32 noundef %171, i32 noundef %173, i32 noundef 2) #13
  br label %cxgbi_sock_set_state.exit

cxgbi_sock_set_state.exit:                        ; preds = %do.end.i380, %if.end178.cxgbi_sock_set_state.exit_crit_edge
  %state4.i = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %174 = ptrtoint ptr %state4.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 2, ptr %state4.i, align 4
  %175 = ptrtoint ptr %csk_family to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %csk_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %176)
  %cmp180 = icmp eq i32 %176, 2
  %177 = ptrtoint ptr %l2t52 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %l2t52, align 4
  br i1 %cmp180, label %if.then182, label %if.else184

if.then182:                                       ; preds = %cxgbi_sock_set_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @send_act_open_req(ptr noundef %csk, ptr noundef nonnull %call.i.i353.sink, ptr noundef %178)
  br label %if.end186

if.else184:                                       ; preds = %cxgbi_sock_set_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @send_act_open_req6(ptr noundef %csk, ptr noundef nonnull %call.i.i353.sink, ptr noundef %178)
  br label %if.end186

if.end186:                                        ; preds = %if.else184, %if.then182
  %refcnt.i382 = getelementptr inbounds %struct.neighbour, ptr %call.i, i32 0, i32 6
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i382, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !586
  call void @llvm.prefetch.p0(ptr %refcnt.i382, i32 1, i32 3, i32 1) #10
  %179 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i382, ptr %refcnt.i382, i32 1, ptr elementtype(i32) %refcnt.i382) #10, !srcloc !587
  %asmresult.i.i.i.i.i.i.i383 = extractvalue { i32, i32, i32 } %179, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i383)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i383, 1
  br i1 %cmp.i.i.i.i, label %if.then.i384, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end186
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i383)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i383, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !581

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcnt.i382, i32 noundef 3) #10
  br label %cleanup

if.then.i384:                                     ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !588
  call void @neigh_destroy(ptr noundef nonnull %call.i) #10
  br label %cleanup

rel_resource:                                     ; preds = %do.end173, %do.end.i370, %do.end.i355, %do.end23, %do.end12
  %n.0 = phi ptr [ %call.i, %do.end173 ], [ null, %do.end23 ], [ null, %do.end12 ], [ %call.i, %do.end.i355 ], [ %call.i, %do.end.i370 ]
  %skb.1 = phi ptr [ %call.i.i353.sink, %do.end173 ], [ null, %do.end23 ], [ null, %do.end12 ], [ null, %do.end.i355 ], [ null, %do.end.i370 ]
  %180 = ptrtoint ptr %csk_family to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %csk_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %181)
  %cmp188 = icmp eq i32 %181, 10
  br i1 %cmp188, label %if.then190, label %rel_resource.rel_resource_without_clip_crit_edge

rel_resource.rel_resource_without_clip_crit_edge: ; preds = %rel_resource
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_resource_without_clip

if.then190:                                       ; preds = %rel_resource
  call void @__sanitizer_cov_trace_pc() #12
  %sin6_addr191 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 3
  call void @cxgb4_clip_release(ptr noundef %9, ptr noundef %sin6_addr191, i8 noundef zeroext 1) #10
  br label %rel_resource_without_clip

rel_resource_without_clip:                        ; preds = %if.then190, %rel_resource.rel_resource_without_clip_crit_edge
  %tobool193.not = icmp eq ptr %n.0, null
  br i1 %tobool193.not, label %rel_resource_without_clip.if.end195_crit_edge, label %rel_resource_without_clip.if.then194_crit_edge

rel_resource_without_clip.if.then194_crit_edge:   ; preds = %rel_resource_without_clip
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then194

rel_resource_without_clip.if.end195_crit_edge:    ; preds = %rel_resource_without_clip
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end195

if.then194:                                       ; preds = %rel_resource_without_clip.if.then194_crit_edge, %do.end58, %do.end39
  %skb.2402 = phi ptr [ %skb.1, %rel_resource_without_clip.if.then194_crit_edge ], [ null, %do.end39 ], [ null, %do.end58 ]
  %n.1401 = phi ptr [ %n.0, %rel_resource_without_clip.if.then194_crit_edge ], [ %call.i, %do.end39 ], [ %call.i, %do.end58 ]
  %refcnt.i386 = getelementptr inbounds %struct.neighbour, ptr %n.1401, i32 0, i32 6
  %call.i.i.i.i.i.i387 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i386, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !586
  call void @llvm.prefetch.p0(ptr %refcnt.i386, i32 1, i32 3, i32 1) #10
  %182 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i386, ptr %refcnt.i386, i32 1, ptr elementtype(i32) %refcnt.i386) #10, !srcloc !587
  %asmresult.i.i.i.i.i.i.i388 = extractvalue { i32, i32, i32 } %182, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i388)
  %cmp.i.i.i.i389 = icmp eq i32 %asmresult.i.i.i.i.i.i.i388, 1
  br i1 %cmp.i.i.i.i389, label %if.then.i393, label %if.end5.i.i.i.i391

if.end5.i.i.i.i391:                               ; preds = %if.then194
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i388)
  %.not.i.i.i.i390 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i388, 0
  br i1 %.not.i.i.i.i390, label %if.end5.i.i.i.i391.if.end195_crit_edge, label %if.then10.i.i.i.i392, !prof !581

if.end5.i.i.i.i391.if.end195_crit_edge:           ; preds = %if.end5.i.i.i.i391
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end195

if.then10.i.i.i.i392:                             ; preds = %if.end5.i.i.i.i391
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %refcnt.i386, i32 noundef 3) #10
  br label %if.end195

if.then.i393:                                     ; preds = %if.then194
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !588
  call void @neigh_destroy(ptr noundef nonnull %n.1401) #10
  br label %if.end195

if.end195:                                        ; preds = %if.then.i393, %if.then10.i.i.i.i392, %if.end5.i.i.i.i391.if.end195_crit_edge, %rel_resource_without_clip.if.end195_crit_edge
  %skb.2403 = phi ptr [ %skb.1, %rel_resource_without_clip.if.end195_crit_edge ], [ %skb.2402, %if.end5.i.i.i.i391.if.end195_crit_edge ], [ %skb.2402, %if.then10.i.i.i.i392 ], [ %skb.2402, %if.then.i393 ]
  %tobool196.not = icmp eq ptr %skb.2403, null
  br i1 %tobool196.not, label %if.end195.cleanup_crit_edge, label %if.then197

if.end195.cleanup_crit_edge:                      ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then197:                                       ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #12
  call void @__kfree_skb(ptr noundef nonnull %skb.2403) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then197, %if.end195.cleanup_crit_edge, %if.then.i384, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then197 ], [ -22, %if.end195.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i ], [ 0, %if.then.i384 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_free_cpl_skbs(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_purge_wr_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_clip_release(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_remove_tid(ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cxgbi_sock_put(ptr noundef %fn, ptr noundef %csk) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %refcnt = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 27
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #10
  %1 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %refcnt, align 4
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, ptr noundef %fn, ptr noundef %csk, i32 noundef %2) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %refcnt4 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 27
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !586
  tail call void @llvm.prefetch.p0(ptr %refcnt4, i32 1, i32 3, i32 1) #10
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4, ptr %refcnt4, i32 1, ptr elementtype(i32) %refcnt4) #10, !srcloc !587
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !581

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %refcnt4, i32 noundef 3) #10
  br label %kref_put.exit

if.then.i:                                        ; preds = %do.end3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !588
  %tobool.not.i.i = icmp eq ptr %csk, null
  br i1 %tobool.not.i.i, label %if.then.i.kref_put.exit_crit_edge, label %do.body.i.i

if.then.i.kref_put.exit_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %kref_put.exit

do.body.i.i:                                      ; preds = %if.then.i
  %4 = load i32, ptr @dbg_level, align 4
  %and.i.i = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %do.body.i.i.do.end6.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.end6.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end6.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %state.i.i = getelementptr %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %5 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state.i.i, align 4
  %flags.i.i = getelementptr %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %7 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.63, ptr noundef nonnull %csk, i32 noundef %6, i32 noundef %8) #13
  br label %do.end6.i.i

do.end6.i.i:                                      ; preds = %do.end.i.i, %do.body.i.i.do.end6.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %csk) #10
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %do.end6.i.i, %if.then.i.kref_put.exit_crit_edge, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfree_skb(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_l2t_release(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgb4_free_atid(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @send_tx_flowc_wr(ptr noundef %csk) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %l2t = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 19
  %0 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %l2t, align 4
  %vlan1 = getelementptr inbounds %struct.l2t_entry, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %vlan1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %vlan1, align 2
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 96, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %4 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !581

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !582
  unreachable

__skb_put.exit.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 96
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %9, 96
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %10 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %head.i, align 8
  %12 = call ptr @memset(ptr %11, i32 0, i32 96)
  br label %alloc_wr.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 96, i32 noundef 0) #13
  br label %alloc_wr.exit

alloc_wr.exit:                                    ; preds = %do.end.i, %__skb_put.exit.i
  %head = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 167772170, ptr %14, align 4
  %tid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 1
  %16 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tid, align 4
  %shl4 = shl i32 %17, 8
  %or5 = or i32 %shl4, 6
  %flowid_len16 = getelementptr inbounds %struct.fw_flowc_wr, ptr %14, i32 0, i32 1
  %18 = ptrtoint ptr %flowid_len16 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or5, ptr %flowid_len16, align 4
  %mnemval = getelementptr inbounds %struct.fw_flowc_wr, ptr %14, i32 0, i32 2
  %19 = ptrtoint ptr %mnemval to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %mnemval, align 4
  %20 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %csk, align 4
  %pfvf = getelementptr inbounds %struct.cxgbi_device, ptr %21, i32 0, i32 13
  %22 = ptrtoint ptr %pfvf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pfvf, align 4
  %val = getelementptr inbounds %struct.fw_flowc_wr, ptr %14, i32 1, i32 1
  %24 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %val, align 4
  %arrayidx9 = getelementptr %struct.fw_flowc_wr, ptr %14, i32 2
  %25 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %arrayidx9, align 4
  %tx_chan = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 8
  %26 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tx_chan, align 4
  %val13 = getelementptr %struct.fw_flowc_wr, ptr %14, i32 2, i32 1
  %28 = ptrtoint ptr %val13 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %val13, align 4
  %arrayidx15 = getelementptr %struct.fw_flowc_wr, ptr %14, i32 3
  %29 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %arrayidx15, align 4
  %30 = load i32, ptr %tx_chan, align 4
  %val20 = getelementptr %struct.fw_flowc_wr, ptr %14, i32 3, i32 1
  %31 = ptrtoint ptr %val20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %val20, align 4
  %arrayidx22 = getelementptr %struct.fw_flowc_wr, ptr %14, i32 4
  %32 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 3, ptr %arrayidx22, align 4
  %rss_qid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 5
  %33 = ptrtoint ptr %rss_qid to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %rss_qid, align 4
  %conv = zext i16 %34 to i32
  %val26 = getelementptr %struct.fw_flowc_wr, ptr %14, i32 4, i32 1
  %35 = ptrtoint ptr %val26 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv, ptr %val26, align 4
  %arrayidx28 = getelementptr %struct.fw_flowc_wr, ptr %14, i32 5
  %36 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 4, ptr %arrayidx28, align 4
  %snd_nxt = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 43
  %37 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %snd_nxt, align 4
  %val32 = getelementptr %struct.fw_flowc_wr, ptr %14, i32 5, i32 1
  %39 = ptrtoint ptr %val32 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %val32, align 4
  %arrayidx34 = getelementptr %struct.fw_flowc_wr, ptr %14, i32 6
  %40 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 5, ptr %arrayidx34, align 4
  %rcv_nxt = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 40
  %41 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rcv_nxt, align 4
  %val38 = getelementptr %struct.fw_flowc_wr, ptr %14, i32 6, i32 1
  %43 = ptrtoint ptr %val38 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %val38, align 4
  %arrayidx40 = getelementptr %struct.fw_flowc_wr, ptr %14, i32 7
  %44 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 6, ptr %arrayidx40, align 4
  %snd_win = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 46
  %45 = ptrtoint ptr %snd_win to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %snd_win, align 4
  %val44 = getelementptr %struct.fw_flowc_wr, ptr %14, i32 7, i32 1
  %47 = ptrtoint ptr %val44 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %val44, align 4
  %arrayidx46 = getelementptr %struct.fw_flowc_wr, ptr %14, i32 8
  %48 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 7, ptr %arrayidx46, align 4
  %advmss = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 7
  %49 = ptrtoint ptr %advmss to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %advmss, align 4
  %conv48 = zext i16 %50 to i32
  %val51 = getelementptr %struct.fw_flowc_wr, ptr %14, i32 8, i32 1
  %51 = ptrtoint ptr %val51 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %conv48, ptr %val51, align 4
  %arrayidx53 = getelementptr %struct.fw_flowc_wr, ptr %14, i32 9
  %val57 = getelementptr %struct.fw_flowc_wr, ptr %14, i32 9, i32 1
  %52 = ptrtoint ptr %val57 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %val57, align 4
  %53 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 8, ptr %arrayidx53, align 4
  %54 = load ptr, ptr %csk, align 4
  %skb_iso_txhdr = getelementptr inbounds %struct.cxgbi_device, ptr %54, i32 0, i32 16
  %55 = ptrtoint ptr %skb_iso_txhdr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %skb_iso_txhdr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not = icmp eq i32 %56, 0
  %. = select i1 %tobool.not, i32 16128, i32 65535
  %57 = ptrtoint ptr %val57 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %., ptr %val57, align 4
  %arrayidx69 = getelementptr %struct.fw_flowc_wr, ptr %14, i32 10
  %58 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 12, ptr %arrayidx69, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %3)
  %cmp = icmp eq i16 %3, 4095
  br i1 %cmp, label %if.then73, label %if.else83

if.then73:                                        ; preds = %alloc_wr.exit
  %call74 = tail call i32 @___ratelimit(ptr noundef nonnull @send_tx_flowc_wr._rs, ptr noundef nonnull @__func__.send_tx_flowc_wr) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.then73.if.end88_crit_edge, label %do.end

if.then73.if.end88_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

do.end:                                           ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tid, align 4
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.76, ptr noundef nonnull @__func__.send_tx_flowc_wr, i32 noundef %60) #13
  br label %if.end88

if.else83:                                        ; preds = %alloc_wr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %61 = lshr i16 %3, 13
  %62 = zext i16 %61 to i32
  br label %if.end88

if.end88:                                         ; preds = %if.else83, %do.end, %if.then73.if.end88_crit_edge
  %.sink = phi i32 [ %62, %if.else83 ], [ 0, %do.end ], [ 0, %if.then73.if.end88_crit_edge ]
  %val87 = getelementptr %struct.fw_flowc_wr, ptr %14, i32 10, i32 1
  %63 = ptrtoint ptr %val87 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.sink, ptr %val87, align 4
  %port_id = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %64 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %port_id, align 4
  %conv89 = zext i8 %65 to i16
  %shl.i = shl nuw nsw i16 %conv89, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 10
  %66 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %shl.i, ptr %queue_mapping1.i.i, align 8
  %67 = load i32, ptr @dbg_level, align 4
  %and91 = and i32 %67, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end88.do.end110_crit_edge, label %do.end96

if.end88.do.end110_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end110

do.end96:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %tid, align 4
  %70 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %tx_chan, align 4
  %72 = ptrtoint ptr %rss_qid to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %rss_qid, align 4
  %conv101 = zext i16 %73 to i32
  %74 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %snd_nxt, align 4
  %76 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rcv_nxt, align 4
  %78 = ptrtoint ptr %snd_win to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %snd_win, align 4
  %80 = ptrtoint ptr %advmss to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %advmss, align 4
  %conv106 = zext i16 %81 to i32
  %call107 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @__func__.send_tx_flowc_wr, ptr noundef %csk, i32 noundef %69, i32 noundef 0, i32 noundef %71, i32 noundef %conv101, i32 noundef %75, i32 noundef %77, i32 noundef %79, i32 noundef %conv106) #13
  br label %do.end110

do.end110:                                        ; preds = %do.end96, %if.end88.do.end110_crit_edge
  %82 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %csk, align 4
  %ports = getelementptr inbounds %struct.cxgbi_device, ptr %83, i32 0, i32 3
  %84 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %ports, align 4
  %86 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %port_id, align 4
  %idxprom = zext i8 %87 to i32
  %arrayidx113 = getelementptr ptr, ptr %85, i32 %idxprom
  %88 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx113, align 4
  %call114 = tail call i32 @cxgb4_ofld_send(ptr noundef %89, ptr noundef %call.i.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arp_failure_skb_discard(ptr nocapture noundef readnone %handle, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_l2t_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @abort_arp_failure(ptr noundef %handle, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @dbg_level, align 4
  %and = and i32 %0, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %handle, i32 0, i32 28
  %1 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %handle, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %tid = getelementptr inbounds %struct.cxgbi_sock, ptr %handle, i32 0, i32 1
  %5 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %tid, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.88, ptr noundef %handle, i32 noundef %2, i32 noundef %4, i32 noundef %6) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data, align 4
  %cmd = getelementptr inbounds %struct.cpl_abort_req, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %cmd, align 1
  %10 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handle, align 4
  %ports = getelementptr inbounds %struct.cxgbi_device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ports, align 4
  %port_id = getelementptr inbounds %struct.cxgbi_sock, ptr %handle, i32 0, i32 12
  %14 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port_id, align 4
  %idxprom = zext i8 %15 to i32
  %arrayidx = getelementptr ptr, ptr %13, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %call4 = tail call i32 @cxgb4_ofld_send(ptr noundef %17, ptr noundef %skb) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_alloc_atid(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgb4_l2t_get(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_clip_get(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_act_open_req_arp_failure(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_best_mtu(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_port_chan(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cxgb4_port_idx(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_act_open_req(ptr noundef %csk, ptr noundef %skb, ptr nocapture noundef readnone %e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csk, align 4
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 4
  %mss_idx = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 10
  %4 = ptrtoint ptr %mss_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mss_idx, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %wscale.0.i = phi i32 [ 0, %entry ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %wscale.0.i)
  %cmp.i = icmp ult i32 %wscale.0.i, 14
  %shl.i = shl nuw nsw i32 65535, %wscale.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %5)
  %cmp1.i = icmp ult i32 %shl.i, %5
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  %inc.i = add nuw nsw i32 %wscale.0.i, 1
  br i1 %or.cond.i, label %while.cond.i.while.cond.i_crit_edge, label %cxgbi_sock_compute_wscale.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

cxgbi_sock_compute_wscale.exit:                   ; preds = %while.cond.i
  %atid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 2
  %6 = ptrtoint ptr %atid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %atid, align 4
  %rss_qid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 5
  %8 = ptrtoint ptr %rss_qid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rss_qid, align 4
  %conv = zext i16 %9 to i32
  %shl = shl nuw nsw i32 %conv, 14
  %or = or i32 %shl, %7
  %conv1330 = zext i32 %wscale.0.i to i64
  %shl2 = shl nuw nsw i64 %conv1330, 50
  %conv5 = zext i32 %5 to i64
  %shl6 = shl i64 %conv5, 60
  %l2t = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 19
  %10 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %l2t, align 4
  %idx = getelementptr inbounds %struct.l2t_entry, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %idx, align 2
  %conv8 = zext i16 %13 to i64
  %shl9 = shl nuw nsw i64 %conv8, 36
  %tx_chan = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 8
  %14 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_chan, align 4
  %shl11 = shl i32 %15, 2
  %conv12 = zext i32 %shl11 to i64
  %smac_idx = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 11
  %16 = ptrtoint ptr %smac_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %smac_idx, align 4
  %conv14 = zext i32 %17 to i64
  %shl15 = shl nuw nsw i64 %conv14, 28
  %rcv_win = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 47
  %18 = ptrtoint ptr %rcv_win to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rcv_win, align 4
  %20 = shl i32 %19, 2
  %shl18 = and i32 %20, -4096
  %conv19 = zext i32 %shl18 to i64
  %or3 = or i64 %shl6, %shl2
  %or7 = or i64 %or3, %shl9
  %or10 = or i64 %or7, %conv12
  %or13 = or i64 %or10, %shl15
  %or17 = or i64 %or13, %conv19
  %or20 = or i64 %or17, 18014398509482496
  %adapter_type = getelementptr inbounds %struct.cxgb4_lld_info, ptr %3, i32 0, i32 13
  %21 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %adapter_type, align 4
  %23 = and i8 %22, -16
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.279)
  switch i8 %23, label %if.else122 [
    i8 64, label %if.then
    i8 80, label %if.then62
  ]

if.then:                                          ; preds = %cxgbi_sock_compute_wscale.exit
  %head = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %25 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 83886112, ptr %26, align 8
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %wr_mid, align 4
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %wr_lo, align 8
  %or29 = or i32 %or, 50331648
  %ot = getelementptr inbounds %struct.cpl_act_open_req, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or29, ptr %ot, align 8
  %sin_port = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 1
  %31 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sin_port, align 2
  %local_port = getelementptr inbounds %struct.cpl_act_open_req, ptr %26, i32 0, i32 2
  %33 = ptrtoint ptr %local_port to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %local_port, align 4
  %sin_port30 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 1
  %34 = ptrtoint ptr %sin_port30 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %sin_port30, align 2
  %peer_port = getelementptr inbounds %struct.cpl_act_open_req, ptr %26, i32 0, i32 3
  %36 = ptrtoint ptr %peer_port to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %peer_port, align 2
  %sin_addr = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 2
  %37 = ptrtoint ptr %sin_addr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sin_addr, align 4
  %local_ip = getelementptr inbounds %struct.cpl_act_open_req, ptr %26, i32 0, i32 4
  %39 = ptrtoint ptr %local_ip to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %local_ip, align 8
  %sin_addr31 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 2
  %40 = ptrtoint ptr %sin_addr31 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sin_addr31, align 4
  %peer_ip = getelementptr inbounds %struct.cpl_act_open_req, ptr %26, i32 0, i32 5
  %42 = ptrtoint ptr %peer_ip to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %peer_ip, align 4
  %opt033 = getelementptr inbounds %struct.cpl_act_open_req, ptr %26, i32 0, i32 6
  %43 = ptrtoint ptr %opt033 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %or20, ptr %opt033, align 8
  %44 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %csk, align 4
  %ports = getelementptr inbounds %struct.cxgbi_device, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ports, align 4
  %port_id = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %48 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %port_id, align 4
  %idxprom = zext i8 %49 to i32
  %arrayidx = getelementptr ptr, ptr %47, i32 %idxprom
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx, align 4
  %52 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %l2t, align 4
  %call36 = tail call i64 @cxgb4_select_ntuple(ptr noundef %51, ptr noundef %53) #10
  %conv37 = trunc i64 %call36 to i32
  %params = getelementptr inbounds %struct.cpl_act_open_req, ptr %26, i32 0, i32 7
  %54 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %conv37, ptr %params, align 8
  %or38 = or i32 %conv, 4195328
  %opt239 = getelementptr inbounds %struct.cpl_act_open_req, ptr %26, i32 0, i32 8
  %55 = ptrtoint ptr %opt239 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %or38, ptr %opt239, align 4
  %56 = load i32, ptr @dbg_level, align 4
  %and = and i32 %56, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool41.not = icmp eq i32 %and, 0
  br i1 %tobool41.not, label %if.then.if.end187_crit_edge, label %do.end45

if.then.if.end187_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end187

do.end45:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %local_port to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %local_port, align 4
  %conv48 = zext i16 %58 to i32
  %59 = ptrtoint ptr %peer_port to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %peer_port, align 2
  %conv51 = zext i16 %60 to i32
  %61 = ptrtoint ptr %atid to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %atid, align 4
  %63 = ptrtoint ptr %rss_qid to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %rss_qid, align 4
  %conv54 = zext i16 %64 to i32
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.120, ptr noundef %csk, ptr noundef %local_ip, i32 noundef %conv48, ptr noundef %peer_ip, i32 noundef %conv51, i32 noundef %62, i32 noundef %conv54) #13
  br label %if.end187

if.then62:                                        ; preds = %cxgbi_sock_compute_wscale.exit
  %head64 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %65 = ptrtoint ptr %head64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %head64, align 8
  %call65 = tail call i32 @prandom_u32() #10
  %and66 = and i32 %call65, -8
  %sub = add i32 %and66, -1
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 83886120, ptr %66, align 8
  %wr_mid71 = getelementptr inbounds %struct.work_request_hdr, ptr %66, i32 0, i32 1
  %68 = ptrtoint ptr %wr_mid71 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 4, ptr %wr_mid71, align 4
  %wr_lo73 = getelementptr inbounds %struct.work_request_hdr, ptr %66, i32 0, i32 2
  %69 = ptrtoint ptr %wr_lo73 to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 0, ptr %wr_lo73, align 8
  %or76 = or i32 %or, 50331648
  %ot77 = getelementptr inbounds %struct.cpl_t5_act_open_req, ptr %66, i32 0, i32 1
  %70 = ptrtoint ptr %ot77 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or76, ptr %ot77, align 8
  %sin_port78 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 1
  %71 = ptrtoint ptr %sin_port78 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %sin_port78, align 2
  %local_port79 = getelementptr inbounds %struct.cpl_t5_act_open_req, ptr %66, i32 0, i32 2
  %73 = ptrtoint ptr %local_port79 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %local_port79, align 4
  %sin_port80 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 1
  %74 = ptrtoint ptr %sin_port80 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %sin_port80, align 2
  %peer_port81 = getelementptr inbounds %struct.cpl_t5_act_open_req, ptr %66, i32 0, i32 3
  %76 = ptrtoint ptr %peer_port81 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %75, ptr %peer_port81, align 2
  %sin_addr82 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 2
  %77 = ptrtoint ptr %sin_addr82 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sin_addr82, align 4
  %local_ip84 = getelementptr inbounds %struct.cpl_t5_act_open_req, ptr %66, i32 0, i32 4
  %79 = ptrtoint ptr %local_ip84 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %local_ip84, align 8
  %sin_addr85 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 2
  %80 = ptrtoint ptr %sin_addr85 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sin_addr85, align 4
  %peer_ip87 = getelementptr inbounds %struct.cpl_t5_act_open_req, ptr %66, i32 0, i32 5
  %82 = ptrtoint ptr %peer_ip87 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %peer_ip87, align 4
  %opt088 = getelementptr inbounds %struct.cpl_t5_act_open_req, ptr %66, i32 0, i32 6
  %83 = ptrtoint ptr %opt088 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %or20, ptr %opt088, align 8
  %84 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %csk, align 4
  %ports90 = getelementptr inbounds %struct.cxgbi_device, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %ports90 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ports90, align 4
  %port_id91 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %88 = ptrtoint ptr %port_id91 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %port_id91, align 4
  %idxprom92 = zext i8 %89 to i32
  %arrayidx93 = getelementptr ptr, ptr %87, i32 %idxprom92
  %90 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx93, align 4
  %92 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %l2t, align 4
  %call95 = tail call i64 @cxgb4_select_ntuple(ptr noundef %91, ptr noundef %93) #10
  %shl96 = shl i64 %call95, 24
  %params97 = getelementptr inbounds %struct.cpl_t5_act_open_req, ptr %66, i32 0, i32 9
  %94 = ptrtoint ptr %params97 to i32
  call void @__asan_store8_noabort(i32 %94)
  store i64 %shl96, ptr %params97, align 8
  %rsvd = getelementptr inbounds %struct.cpl_t5_act_open_req, ptr %66, i32 0, i32 7
  %95 = ptrtoint ptr %rsvd to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %sub, ptr %rsvd, align 8
  %or99 = or i32 %conv, -2147220480
  %opt2100 = getelementptr inbounds %struct.cpl_t5_act_open_req, ptr %66, i32 0, i32 8
  %96 = ptrtoint ptr %opt2100 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or99, ptr %opt2100, align 4
  %97 = load i32, ptr @dbg_level, align 4
  %and102 = and i32 %97, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.then62.if.end187_crit_edge, label %do.end107

if.then62.if.end187_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end187

do.end107:                                        ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  %98 = ptrtoint ptr %local_port79 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %local_port79, align 4
  %conv111 = zext i16 %99 to i32
  %100 = ptrtoint ptr %peer_port81 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %peer_port81, align 2
  %conv114 = zext i16 %101 to i32
  %102 = ptrtoint ptr %atid to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %atid, align 4
  %104 = ptrtoint ptr %rss_qid to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %rss_qid, align 4
  %conv117 = zext i16 %105 to i32
  %call118 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.120, ptr noundef %csk, ptr noundef %local_ip84, i32 noundef %conv111, ptr noundef %peer_ip87, i32 noundef %conv114, i32 noundef %103, i32 noundef %conv117) #13
  br label %if.end187

if.else122:                                       ; preds = %cxgbi_sock_compute_wscale.exit
  %head124 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %106 = ptrtoint ptr %head124 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %head124, align 8
  %call126 = tail call i32 @prandom_u32() #10
  %and127 = and i32 %call126, -8
  %sub128 = add i32 %and127, -1
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 83886128, ptr %107, align 8
  %wr_mid133 = getelementptr inbounds %struct.work_request_hdr, ptr %107, i32 0, i32 1
  %109 = ptrtoint ptr %wr_mid133 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 4, ptr %wr_mid133, align 4
  %wr_lo135 = getelementptr inbounds %struct.work_request_hdr, ptr %107, i32 0, i32 2
  %110 = ptrtoint ptr %wr_lo135 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 0, ptr %wr_lo135, align 8
  %or138 = or i32 %or, 50331648
  %ot139 = getelementptr inbounds %struct.cpl_t6_act_open_req, ptr %107, i32 0, i32 1
  %111 = ptrtoint ptr %ot139 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %or138, ptr %ot139, align 8
  %sin_port140 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 1
  %112 = ptrtoint ptr %sin_port140 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %sin_port140, align 2
  %local_port141 = getelementptr inbounds %struct.cpl_t6_act_open_req, ptr %107, i32 0, i32 2
  %114 = ptrtoint ptr %local_port141 to i32
  call void @__asan_store2_noabort(i32 %114)
  store i16 %113, ptr %local_port141, align 4
  %sin_port142 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 1
  %115 = ptrtoint ptr %sin_port142 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %sin_port142, align 2
  %peer_port143 = getelementptr inbounds %struct.cpl_t6_act_open_req, ptr %107, i32 0, i32 3
  %117 = ptrtoint ptr %peer_port143 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %116, ptr %peer_port143, align 2
  %sin_addr144 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 2
  %118 = ptrtoint ptr %sin_addr144 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %sin_addr144, align 4
  %local_ip146 = getelementptr inbounds %struct.cpl_t6_act_open_req, ptr %107, i32 0, i32 4
  %120 = ptrtoint ptr %local_ip146 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %119, ptr %local_ip146, align 8
  %sin_addr147 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 2
  %121 = ptrtoint ptr %sin_addr147 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %sin_addr147, align 4
  %peer_ip149 = getelementptr inbounds %struct.cpl_t6_act_open_req, ptr %107, i32 0, i32 5
  %123 = ptrtoint ptr %peer_ip149 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %peer_ip149, align 4
  %opt0150 = getelementptr inbounds %struct.cpl_t6_act_open_req, ptr %107, i32 0, i32 6
  %124 = ptrtoint ptr %opt0150 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %or20, ptr %opt0150, align 8
  %125 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %csk, align 4
  %ports152 = getelementptr inbounds %struct.cxgbi_device, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %ports152 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ports152, align 4
  %port_id153 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %129 = ptrtoint ptr %port_id153 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %port_id153, align 4
  %idxprom154 = zext i8 %130 to i32
  %arrayidx155 = getelementptr ptr, ptr %128, i32 %idxprom154
  %131 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx155, align 4
  %133 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %l2t, align 4
  %call157 = tail call i64 @cxgb4_select_ntuple(ptr noundef %132, ptr noundef %134) #10
  %shl158 = shl i64 %call157, 24
  %params159 = getelementptr inbounds %struct.cpl_t6_act_open_req, ptr %107, i32 0, i32 9
  %135 = ptrtoint ptr %params159 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %shl158, ptr %params159, align 8
  %rsvd160 = getelementptr inbounds %struct.cpl_t6_act_open_req, ptr %107, i32 0, i32 7
  %136 = ptrtoint ptr %rsvd160 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %sub128, ptr %rsvd160, align 8
  %or163 = or i32 %conv, -2146171904
  %opt2164 = getelementptr inbounds %struct.cpl_t6_act_open_req, ptr %107, i32 0, i32 8
  %137 = ptrtoint ptr %opt2164 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %or163, ptr %opt2164, align 4
  %rsvd2 = getelementptr inbounds %struct.cpl_t6_act_open_req, ptr %107, i32 0, i32 10
  %138 = ptrtoint ptr %rsvd2 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %rsvd2, align 8
  %opt3 = getelementptr inbounds %struct.cpl_t6_act_open_req, ptr %107, i32 0, i32 11
  %139 = ptrtoint ptr %opt3 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %opt3, align 4
  %140 = load i32, ptr @dbg_level, align 4
  %and166 = and i32 %140, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and166)
  %tobool167.not = icmp eq i32 %and166, 0
  br i1 %tobool167.not, label %if.else122.if.end187_crit_edge, label %do.end171

if.else122.if.end187_crit_edge:                   ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end187

do.end171:                                        ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %local_port141 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %local_port141, align 4
  %conv175 = zext i16 %142 to i32
  %143 = ptrtoint ptr %peer_port143 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %peer_port143, align 2
  %conv178 = zext i16 %144 to i32
  %145 = ptrtoint ptr %atid to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %atid, align 4
  %147 = ptrtoint ptr %rss_qid to i32
  call void @__asan_load2_noabort(i32 %147)
  %148 = load i16, ptr %rss_qid, align 4
  %conv181 = zext i16 %148 to i32
  %call182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.125, ptr noundef nonnull @.str.120, ptr noundef %csk, ptr noundef %local_ip146, i32 noundef %conv175, ptr noundef %peer_ip149, i32 noundef %conv178, i32 noundef %146, i32 noundef %conv181) #13
  br label %if.end187

if.end187:                                        ; preds = %do.end171, %if.else122.if.end187_crit_edge, %do.end107, %if.then62.if.end187_crit_edge, %do.end45, %if.then.if.end187_crit_edge
  %port_id188 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %149 = ptrtoint ptr %port_id188 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %port_id188, align 4
  %conv189 = zext i8 %150 to i16
  %shl.i334 = shl nuw nsw i16 %conv189, 1
  %or.i = or i16 %shl.i334, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %151 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %or.i, ptr %queue_mapping1.i.i, align 8
  %152 = load i32, ptr @dbg_level, align 4
  %and191 = and i32 %152, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191)
  %tobool192.not = icmp eq i32 %and191, 0
  br i1 %tobool192.not, label %if.end187.do.end208_crit_edge, label %do.end197

if.end187.do.end208_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end208

do.end197:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #12
  %153 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30
  %154 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31
  %155 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %adapter_type, align 4
  %157 = lshr i8 %156, 4
  %158 = zext i8 %157 to i32
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %159 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %161 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %flags, align 4
  %163 = ptrtoint ptr %atid to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %atid, align 4
  %165 = ptrtoint ptr %rss_qid to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %rss_qid, align 4
  %conv205 = zext i16 %166 to i32
  %call206 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.128, ptr noundef nonnull @.str.120, ptr noundef %153, ptr noundef %154, i32 noundef %158, ptr noundef %csk, i32 noundef %160, i32 noundef %162, i32 noundef %164, i32 noundef %conv205) #13
  br label %do.end208

do.end208:                                        ; preds = %do.end197, %if.end187.do.end208_crit_edge
  %167 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %csk, align 4
  %ports210 = getelementptr inbounds %struct.cxgbi_device, ptr %168, i32 0, i32 3
  %169 = ptrtoint ptr %ports210 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ports210, align 4
  %171 = ptrtoint ptr %port_id188 to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %port_id188, align 4
  %idxprom212 = zext i8 %172 to i32
  %arrayidx213 = getelementptr ptr, ptr %170, i32 %idxprom212
  %173 = ptrtoint ptr %arrayidx213 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %arrayidx213, align 4
  %175 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %l2t, align 4
  %call215 = tail call i32 @cxgb4_l2t_send(ptr noundef %174, ptr noundef %skb, ptr noundef %176) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_act_open_req6(ptr noundef %csk, ptr noundef %skb, ptr nocapture noundef readnone %e) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %csk, align 4
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 4
  %mss_idx = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 10
  %4 = ptrtoint ptr %mss_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mss_idx, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %entry
  %wscale.0.i = phi i32 [ 0, %entry ], [ %inc.i, %while.cond.i.while.cond.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %wscale.0.i)
  %cmp.i = icmp ult i32 %wscale.0.i, 14
  %shl.i = shl nuw nsw i32 65535, %wscale.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %5)
  %cmp1.i = icmp ult i32 %shl.i, %5
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  %inc.i = add nuw nsw i32 %wscale.0.i, 1
  br i1 %or.cond.i, label %while.cond.i.while.cond.i_crit_edge, label %cxgbi_sock_compute_wscale.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.i

cxgbi_sock_compute_wscale.exit:                   ; preds = %while.cond.i
  %atid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 2
  %6 = ptrtoint ptr %atid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %atid, align 4
  %rss_qid = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 5
  %8 = ptrtoint ptr %rss_qid to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %rss_qid, align 4
  %conv = zext i16 %9 to i32
  %shl = shl nuw nsw i32 %conv, 14
  %or = or i32 %shl, %7
  %conv1277 = zext i32 %wscale.0.i to i64
  %shl2 = shl nuw nsw i64 %conv1277, 50
  %conv5 = zext i32 %5 to i64
  %shl6 = shl i64 %conv5, 60
  %l2t = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 19
  %10 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %l2t, align 4
  %idx = getelementptr inbounds %struct.l2t_entry, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %idx to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %idx, align 2
  %conv8 = zext i16 %13 to i64
  %shl9 = shl nuw nsw i64 %conv8, 36
  %tx_chan = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 8
  %14 = ptrtoint ptr %tx_chan to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tx_chan, align 4
  %shl11 = shl i32 %15, 2
  %conv12 = zext i32 %shl11 to i64
  %smac_idx = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 11
  %16 = ptrtoint ptr %smac_idx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %smac_idx, align 4
  %conv14 = zext i32 %17 to i64
  %shl15 = shl nuw nsw i64 %conv14, 28
  %rcv_win = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 47
  %18 = ptrtoint ptr %rcv_win to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rcv_win, align 4
  %20 = shl i32 %19, 2
  %shl18 = and i32 %20, -4096
  %conv19 = zext i32 %shl18 to i64
  %or3 = or i64 %shl6, %shl2
  %or7 = or i64 %or3, %shl9
  %or10 = or i64 %or7, %conv12
  %or13 = or i64 %or10, %shl15
  %or17 = or i64 %or13, %conv19
  %or20 = or i64 %or17, 18014398509482496
  %adapter_type = getelementptr inbounds %struct.cxgb4_lld_info, ptr %3, i32 0, i32 13
  %21 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %adapter_type, align 4
  %23 = and i8 %22, -16
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.280)
  switch i8 %23, label %if.else100 [
    i8 64, label %if.then
    i8 80, label %if.then52
  ]

if.then:                                          ; preds = %cxgbi_sock_compute_wscale.exit
  call void @__sanitizer_cov_trace_pc() #12
  %head = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %25 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head, align 8
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 83886136, ptr %26, align 8
  %wr_mid = getelementptr inbounds %struct.work_request_hdr, ptr %26, i32 0, i32 1
  %28 = ptrtoint ptr %wr_mid to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 5, ptr %wr_mid, align 4
  %wr_lo = getelementptr inbounds %struct.work_request_hdr, ptr %26, i32 0, i32 2
  %29 = ptrtoint ptr %wr_lo to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 0, ptr %wr_lo, align 8
  %or29 = or i32 %or, -2097152000
  %ot = getelementptr inbounds %struct.cpl_act_open_req6, ptr %26, i32 0, i32 1
  %30 = ptrtoint ptr %ot to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or29, ptr %ot, align 8
  %sin6_port = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 1
  %31 = ptrtoint ptr %sin6_port to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %sin6_port, align 2
  %local_port = getelementptr inbounds %struct.cpl_act_open_req6, ptr %26, i32 0, i32 2
  %33 = ptrtoint ptr %local_port to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %32, ptr %local_port, align 4
  %sin6_port30 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 1
  %34 = ptrtoint ptr %sin6_port30 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %sin6_port30, align 2
  %peer_port = getelementptr inbounds %struct.cpl_act_open_req6, ptr %26, i32 0, i32 3
  %36 = ptrtoint ptr %peer_port to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %peer_port, align 2
  %sin6_addr = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 3
  %37 = ptrtoint ptr %sin6_addr to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %38 = load i64, ptr %sin6_addr, align 4
  %local_ip_hi = getelementptr inbounds %struct.cpl_act_open_req6, ptr %26, i32 0, i32 4
  %39 = ptrtoint ptr %local_ip_hi to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %local_ip_hi, align 8
  %add.ptr = getelementptr %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 3, i32 0, i32 0, i32 2
  %40 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %add.ptr, align 8
  %local_ip_lo = getelementptr inbounds %struct.cpl_act_open_req6, ptr %26, i32 0, i32 5
  %42 = ptrtoint ptr %local_ip_lo to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 %41, ptr %local_ip_lo, align 8
  %sin6_addr34 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 3
  %43 = ptrtoint ptr %sin6_addr34 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %44 = load i64, ptr %sin6_addr34, align 4
  %peer_ip_hi = getelementptr inbounds %struct.cpl_act_open_req6, ptr %26, i32 0, i32 6
  %45 = ptrtoint ptr %peer_ip_hi to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %44, ptr %peer_ip_hi, align 8
  %add.ptr40 = getelementptr %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 3, i32 0, i32 0, i32 2
  %46 = ptrtoint ptr %add.ptr40 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %add.ptr40, align 8
  %peer_ip_lo = getelementptr inbounds %struct.cpl_act_open_req6, ptr %26, i32 0, i32 7
  %48 = ptrtoint ptr %peer_ip_lo to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %47, ptr %peer_ip_lo, align 8
  %opt041 = getelementptr inbounds %struct.cpl_act_open_req6, ptr %26, i32 0, i32 8
  %49 = ptrtoint ptr %opt041 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %or20, ptr %opt041, align 8
  %or42 = or i32 %conv, 4195328
  %opt243 = getelementptr inbounds %struct.cpl_act_open_req6, ptr %26, i32 0, i32 10
  %50 = ptrtoint ptr %opt243 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or42, ptr %opt243, align 4
  %51 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %csk, align 4
  %ports = getelementptr inbounds %struct.cxgbi_device, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ports, align 4
  %port_id = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %55 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %port_id, align 4
  %idxprom = zext i8 %56 to i32
  %arrayidx = getelementptr ptr, ptr %54, i32 %idxprom
  %57 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx, align 4
  %59 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %l2t, align 4
  %call46 = tail call i64 @cxgb4_select_ntuple(ptr noundef %58, ptr noundef %60) #10
  %conv47 = trunc i64 %call46 to i32
  %params = getelementptr inbounds %struct.cpl_act_open_req6, ptr %26, i32 0, i32 9
  %61 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv47, ptr %params, align 8
  br label %if.end149

if.then52:                                        ; preds = %cxgbi_sock_compute_wscale.exit
  call void @__sanitizer_cov_trace_pc() #12
  %head54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %62 = ptrtoint ptr %head54 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head54, align 8
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 83886144, ptr %63, align 8
  %wr_mid59 = getelementptr inbounds %struct.work_request_hdr, ptr %63, i32 0, i32 1
  %65 = ptrtoint ptr %wr_mid59 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 5, ptr %wr_mid59, align 4
  %wr_lo61 = getelementptr inbounds %struct.work_request_hdr, ptr %63, i32 0, i32 2
  %66 = ptrtoint ptr %wr_lo61 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 0, ptr %wr_lo61, align 8
  %or64 = or i32 %or, -2097152000
  %ot65 = getelementptr inbounds %struct.cpl_t5_act_open_req6, ptr %63, i32 0, i32 1
  %67 = ptrtoint ptr %ot65 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or64, ptr %ot65, align 8
  %sin6_port66 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 1
  %68 = ptrtoint ptr %sin6_port66 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %sin6_port66, align 2
  %local_port67 = getelementptr inbounds %struct.cpl_t5_act_open_req6, ptr %63, i32 0, i32 2
  %70 = ptrtoint ptr %local_port67 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %69, ptr %local_port67, align 4
  %sin6_port68 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 1
  %71 = ptrtoint ptr %sin6_port68 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %sin6_port68, align 2
  %peer_port69 = getelementptr inbounds %struct.cpl_t5_act_open_req6, ptr %63, i32 0, i32 3
  %73 = ptrtoint ptr %peer_port69 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %72, ptr %peer_port69, align 2
  %sin6_addr70 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 3
  %74 = ptrtoint ptr %sin6_addr70 to i32
  call void @__asan_loadN_noabort(i32 %74, i32 8)
  %75 = load i64, ptr %sin6_addr70, align 4
  %local_ip_hi73 = getelementptr inbounds %struct.cpl_t5_act_open_req6, ptr %63, i32 0, i32 4
  %76 = ptrtoint ptr %local_ip_hi73 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %75, ptr %local_ip_hi73, align 8
  %add.ptr77 = getelementptr %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 3, i32 0, i32 0, i32 2
  %77 = ptrtoint ptr %add.ptr77 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %add.ptr77, align 8
  %local_ip_lo78 = getelementptr inbounds %struct.cpl_t5_act_open_req6, ptr %63, i32 0, i32 5
  %79 = ptrtoint ptr %local_ip_lo78 to i32
  call void @__asan_store8_noabort(i32 %79)
  store i64 %78, ptr %local_ip_lo78, align 8
  %sin6_addr79 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 3
  %80 = ptrtoint ptr %sin6_addr79 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 8)
  %81 = load i64, ptr %sin6_addr79, align 4
  %peer_ip_hi82 = getelementptr inbounds %struct.cpl_t5_act_open_req6, ptr %63, i32 0, i32 6
  %82 = ptrtoint ptr %peer_ip_hi82 to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %81, ptr %peer_ip_hi82, align 8
  %add.ptr86 = getelementptr %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 3, i32 0, i32 0, i32 2
  %83 = ptrtoint ptr %add.ptr86 to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %add.ptr86, align 8
  %peer_ip_lo87 = getelementptr inbounds %struct.cpl_t5_act_open_req6, ptr %63, i32 0, i32 7
  %85 = ptrtoint ptr %peer_ip_lo87 to i32
  call void @__asan_store8_noabort(i32 %85)
  store i64 %84, ptr %peer_ip_lo87, align 8
  %opt088 = getelementptr inbounds %struct.cpl_t5_act_open_req6, ptr %63, i32 0, i32 8
  %86 = ptrtoint ptr %opt088 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %or20, ptr %opt088, align 8
  %or89 = or i32 %conv, -2147482624
  %opt290 = getelementptr inbounds %struct.cpl_t5_act_open_req6, ptr %63, i32 0, i32 10
  %87 = ptrtoint ptr %opt290 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %or89, ptr %opt290, align 4
  %88 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %csk, align 4
  %ports92 = getelementptr inbounds %struct.cxgbi_device, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %ports92 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ports92, align 4
  %port_id93 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %92 = ptrtoint ptr %port_id93 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %port_id93, align 4
  %idxprom94 = zext i8 %93 to i32
  %arrayidx95 = getelementptr ptr, ptr %91, i32 %idxprom94
  %94 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx95, align 4
  %96 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %l2t, align 4
  %call97 = tail call i64 @cxgb4_select_ntuple(ptr noundef %95, ptr noundef %97) #10
  %shl98 = shl i64 %call97, 24
  %params99 = getelementptr inbounds %struct.cpl_t5_act_open_req6, ptr %63, i32 0, i32 11
  %98 = ptrtoint ptr %params99 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %shl98, ptr %params99, align 8
  br label %if.end149

if.else100:                                       ; preds = %cxgbi_sock_compute_wscale.exit
  call void @__sanitizer_cov_trace_pc() #12
  %head102 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %99 = ptrtoint ptr %head102 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %head102, align 8
  %101 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 83886152, ptr %100, align 8
  %wr_mid107 = getelementptr inbounds %struct.work_request_hdr, ptr %100, i32 0, i32 1
  %102 = ptrtoint ptr %wr_mid107 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 6, ptr %wr_mid107, align 4
  %wr_lo109 = getelementptr inbounds %struct.work_request_hdr, ptr %100, i32 0, i32 2
  %103 = ptrtoint ptr %wr_lo109 to i32
  call void @__asan_store8_noabort(i32 %103)
  store i64 0, ptr %wr_lo109, align 8
  %or112 = or i32 %or, -2097152000
  %ot113 = getelementptr inbounds %struct.cpl_t6_act_open_req6, ptr %100, i32 0, i32 1
  %104 = ptrtoint ptr %ot113 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %or112, ptr %ot113, align 8
  %sin6_port114 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 1
  %105 = ptrtoint ptr %sin6_port114 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %sin6_port114, align 2
  %local_port115 = getelementptr inbounds %struct.cpl_t6_act_open_req6, ptr %100, i32 0, i32 2
  %107 = ptrtoint ptr %local_port115 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %106, ptr %local_port115, align 4
  %sin6_port116 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 1
  %108 = ptrtoint ptr %sin6_port116 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %sin6_port116, align 2
  %peer_port117 = getelementptr inbounds %struct.cpl_t6_act_open_req6, ptr %100, i32 0, i32 3
  %110 = ptrtoint ptr %peer_port117 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %peer_port117, align 2
  %sin6_addr118 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 3
  %111 = ptrtoint ptr %sin6_addr118 to i32
  call void @__asan_loadN_noabort(i32 %111, i32 8)
  %112 = load i64, ptr %sin6_addr118, align 4
  %local_ip_hi121 = getelementptr inbounds %struct.cpl_t6_act_open_req6, ptr %100, i32 0, i32 4
  %113 = ptrtoint ptr %local_ip_hi121 to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %112, ptr %local_ip_hi121, align 8
  %add.ptr125 = getelementptr %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 3, i32 0, i32 0, i32 2
  %114 = ptrtoint ptr %add.ptr125 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %add.ptr125, align 8
  %local_ip_lo126 = getelementptr inbounds %struct.cpl_t6_act_open_req6, ptr %100, i32 0, i32 5
  %116 = ptrtoint ptr %local_ip_lo126 to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %115, ptr %local_ip_lo126, align 8
  %sin6_addr127 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 3
  %117 = ptrtoint ptr %sin6_addr127 to i32
  call void @__asan_loadN_noabort(i32 %117, i32 8)
  %118 = load i64, ptr %sin6_addr127, align 4
  %peer_ip_hi130 = getelementptr inbounds %struct.cpl_t6_act_open_req6, ptr %100, i32 0, i32 6
  %119 = ptrtoint ptr %peer_ip_hi130 to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %118, ptr %peer_ip_hi130, align 8
  %add.ptr134 = getelementptr %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 3, i32 0, i32 0, i32 2
  %120 = ptrtoint ptr %add.ptr134 to i32
  call void @__asan_load8_noabort(i32 %120)
  %121 = load i64, ptr %add.ptr134, align 8
  %peer_ip_lo135 = getelementptr inbounds %struct.cpl_t6_act_open_req6, ptr %100, i32 0, i32 7
  %122 = ptrtoint ptr %peer_ip_lo135 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 %121, ptr %peer_ip_lo135, align 8
  %opt0136 = getelementptr inbounds %struct.cpl_t6_act_open_req6, ptr %100, i32 0, i32 8
  %123 = ptrtoint ptr %opt0136 to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %or20, ptr %opt0136, align 8
  %or138 = or i32 %conv, -2146434048
  %opt2139 = getelementptr inbounds %struct.cpl_t6_act_open_req6, ptr %100, i32 0, i32 10
  %124 = ptrtoint ptr %opt2139 to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 %or138, ptr %opt2139, align 4
  %125 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %csk, align 4
  %ports141 = getelementptr inbounds %struct.cxgbi_device, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %ports141 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %ports141, align 4
  %port_id142 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %129 = ptrtoint ptr %port_id142 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %port_id142, align 4
  %idxprom143 = zext i8 %130 to i32
  %arrayidx144 = getelementptr ptr, ptr %128, i32 %idxprom143
  %131 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %arrayidx144, align 4
  %133 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %l2t, align 4
  %call146 = tail call i64 @cxgb4_select_ntuple(ptr noundef %132, ptr noundef %134) #10
  %shl147 = shl i64 %call146, 24
  %params148 = getelementptr inbounds %struct.cpl_t6_act_open_req6, ptr %100, i32 0, i32 11
  %135 = ptrtoint ptr %params148 to i32
  call void @__asan_store8_noabort(i32 %135)
  store i64 %shl147, ptr %params148, align 8
  %rsvd2 = getelementptr inbounds %struct.cpl_t6_act_open_req6, ptr %100, i32 0, i32 12
  %136 = ptrtoint ptr %rsvd2 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %rsvd2, align 8
  %opt3 = getelementptr inbounds %struct.cpl_t6_act_open_req6, ptr %100, i32 0, i32 13
  %137 = ptrtoint ptr %opt3 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %opt3, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.else100, %if.then52, %if.then
  %port_id150 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 12
  %138 = ptrtoint ptr %port_id150 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %port_id150, align 4
  %conv151 = zext i8 %139 to i16
  %shl.i281 = shl nuw nsw i16 %conv151, 1
  %or.i = or i16 %shl.i281, 1
  %queue_mapping1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %140 = ptrtoint ptr %queue_mapping1.i.i to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %or.i, ptr %queue_mapping1.i.i, align 8
  %141 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %adapter_type, align 4
  %143 = lshr i8 %142, 4
  %144 = zext i8 %143 to i32
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 28
  %145 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 3
  %147 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %flags, align 4
  %149 = ptrtoint ptr %atid to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %atid, align 4
  %sin6_addr159 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 3
  %sin_port = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 30, i32 0, i32 1
  %151 = ptrtoint ptr %sin_port to i32
  call void @__asan_load2_noabort(i32 %151)
  %152 = load i16, ptr %sin_port, align 2
  %conv160 = zext i16 %152 to i32
  %sin6_addr161 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 3
  %sin_port162 = getelementptr inbounds %struct.cxgbi_sock, ptr %csk, i32 0, i32 31, i32 0, i32 1
  %153 = ptrtoint ptr %sin_port162 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %sin_port162, align 2
  %conv163 = zext i16 %154 to i32
  %155 = ptrtoint ptr %rss_qid to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %rss_qid, align 4
  %conv165 = zext i16 %156 to i32
  %call166 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.131, i32 noundef %144, ptr noundef %csk, i32 noundef %146, i32 noundef %148, i32 noundef %150, ptr noundef %sin6_addr159, i32 noundef %conv160, ptr noundef %sin6_addr161, i32 noundef %conv163, i32 noundef %conv165) #13
  %157 = ptrtoint ptr %csk to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %csk, align 4
  %ports168 = getelementptr inbounds %struct.cxgbi_device, ptr %158, i32 0, i32 3
  %159 = ptrtoint ptr %ports168 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %ports168, align 4
  %161 = ptrtoint ptr %port_id150 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %port_id150, align 4
  %idxprom170 = zext i8 %162 to i32
  %arrayidx171 = getelementptr ptr, ptr %160, i32 %idxprom170
  %163 = ptrtoint ptr %arrayidx171 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx171, align 4
  %165 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %l2t, align 4
  %call173 = tail call i32 @cxgb4_l2t_send(ptr noundef %164, ptr noundef %skb, ptr noundef %166) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__neigh_event_send(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dcb_ieee_getapp_mask(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @dcb_getapp(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @cxgb4_select_ntuple(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @neigh_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_queuecommand(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_abort(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_device_reset(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_recover_target(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_target_alloc(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scsi_change_queue_depth(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iscsi_eh_cmd_timed_out(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @cxgb4_pktgl_to_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_act_open_rpl(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 16777215
  %atid_status = getelementptr inbounds %struct.cpl_act_open_rpl, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %atid_status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %atid_status, align 4
  %shr = lshr i32 %5, 8
  %and3 = and i32 %shr, 16383
  %and6 = and i32 %5, 255
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %cdev, i32 0, i32 36
  %6 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dd_data, align 4
  %tids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tids, align 4
  %natids.i = getelementptr inbounds %struct.tid_info, ptr %9, i32 0, i32 10
  %10 = ptrtoint ptr %natids.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %natids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %and3)
  %cmp.i = icmp ugt i32 %11, %and3
  br i1 %cmp.i, label %lookup_atid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_atid.exit:                                 ; preds = %entry
  %atid_tab.i = getelementptr inbounds %struct.tid_info, ptr %9, i32 0, i32 9
  %12 = ptrtoint ptr %atid_tab.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %atid_tab.i, align 4
  %arrayidx.i = getelementptr %union.aopen_entry, ptr %13, i32 %and3
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %lookup_atid.exit.do.end_crit_edge, label %do.body11, !prof !576

lookup_atid.exit.do.end_crit_edge:                ; preds = %lookup_atid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_atid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, ptr noundef nonnull @.str.145, i32 noundef %and3, i32 noundef %and) #13
  br label %rel_skb

do.body11:                                        ; preds = %lookup_atid.exit
  %16 = load i32, ptr @dbg_level, align 4
  %and12 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %do.body11.do.end22_crit_edge, label %do.end18

do.body11.do.end22_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

do.end18:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  %17 = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 30
  %18 = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 31
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 28
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, ptr noundef nonnull @.str.145, ptr noundef %17, ptr noundef %18, i32 noundef %and3, i32 noundef %and, i32 noundef %and6, ptr noundef nonnull %15, i32 noundef %20, i32 noundef %22) #13
  br label %do.end22

do.end22:                                         ; preds = %do.end18, %do.body11.do.end22_crit_edge
  %status.off.i = add nsw i32 %and6, -35
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %status.off.i)
  %switch.i = icmp ult i32 %status.off.i, 3
  br i1 %switch.i, label %do.end22.rel_skb_crit_edge, label %if.end25

do.end22.rel_skb_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_skb

if.end25:                                         ; preds = %do.end22
  %owner = getelementptr inbounds %struct.cxgbi_device, ptr %cdev, i32 0, i32 12
  %23 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %24) #10
  %trunc = trunc i32 %5 to i8
  %25 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.281)
  switch i8 %trunc, label %if.then31 [
    i8 0, label %if.end25.if.end36_crit_edge
    i8 3, label %if.end25.if.end36_crit_edge89
    i8 22, label %if.end25.if.end36_crit_edge90
    i8 23, label %if.end25.if.end36_crit_edge91
  ]

if.end25.if.end36_crit_edge91:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end25.if.end36_crit_edge90:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end25.if.end36_crit_edge89:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.then31:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tids, align 4
  %port_id = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 12
  %28 = ptrtoint ptr %port_id to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %port_id, align 4
  %conv = zext i8 %29 to i32
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %1, align 4
  %and34 = and i32 %31, 16777215
  %csk_family = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 29
  %32 = ptrtoint ptr %csk_family to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %csk_family, align 4
  %conv35 = trunc i32 %33 to i16
  tail call void @cxgb4_remove_tid(ptr noundef %27, i32 noundef %conv, i32 noundef %and34, i16 noundef zeroext %conv35) #10
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %if.end25.if.end36_crit_edge, %if.end25.if.end36_crit_edge89, %if.end25.if.end36_crit_edge90, %if.end25.if.end36_crit_edge91
  %34 = load i32, ptr @dbg_level, align 4
  %and.i = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end36.do.end3.i_crit_edge, label %do.end.i

if.end36.do.end3.i_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %refcnt.i = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 27
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #10
  %35 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %refcnt.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.145, ptr noundef nonnull %15, i32 noundef %36) #13
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end36.do.end3.i_crit_edge
  %refcnt4.i = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt4.i, i32 1, i32 3, i32 1) #10
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4.i, ptr %refcnt4.i, i32 1, ptr elementtype(i32) %refcnt4.i) #10, !srcloc !583
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !576

do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end3.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %38 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %38)
  %.not.i.i.i.i.i = icmp sgt i32 %38, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !581

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cxgbi_sock_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt4.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %__cxgbi_sock_get.exit

__cxgbi_sock_get.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge
  %lock = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 26
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %39 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.282)
  switch i8 %trunc, label %sw.default.i [
    i8 22, label %land.lhs.true39
    i8 20, label %__cxgbi_sock_get.exit.act_open_rpl_status_to_errno.exit_crit_edge
    i8 23, label %sw.bb1.i
    i8 30, label %sw.bb2.i
    i8 3, label %sw.bb3.i
  ]

__cxgbi_sock_get.exit.act_open_rpl_status_to_errno.exit_crit_edge: ; preds = %__cxgbi_sock_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %act_open_rpl_status_to_errno.exit

land.lhs.true39:                                  ; preds = %__cxgbi_sock_get.exit
  %function = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 35, i32 2
  %40 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %function, align 4
  %cmp40.not = icmp eq ptr %41, @csk_act_open_retry_timer
  br i1 %cmp40.not, label %land.lhs.true39.act_open_rpl_status_to_errno.exit_crit_edge, label %if.then42

land.lhs.true39.act_open_rpl_status_to_errno.exit_crit_edge: ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %act_open_rpl_status_to_errno.exit

if.then42:                                        ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  %retry_timer = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 35
  %42 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @csk_act_open_retry_timer, ptr %function, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %43, 50
  %call46 = tail call i32 @mod_timer(ptr noundef %retry_timer, i32 noundef %add) #10
  br label %if.end48

sw.bb1.i:                                         ; preds = %__cxgbi_sock_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %act_open_rpl_status_to_errno.exit

sw.bb2.i:                                         ; preds = %__cxgbi_sock_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %act_open_rpl_status_to_errno.exit

sw.bb3.i:                                         ; preds = %__cxgbi_sock_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %act_open_rpl_status_to_errno.exit

sw.default.i:                                     ; preds = %__cxgbi_sock_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %act_open_rpl_status_to_errno.exit

act_open_rpl_status_to_errno.exit:                ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %land.lhs.true39.act_open_rpl_status_to_errno.exit_crit_edge, %__cxgbi_sock_get.exit.act_open_rpl_status_to_errno.exit_crit_edge
  %retval.0.i = phi i32 [ -5, %sw.default.i ], [ -12, %sw.bb3.i ], [ -110, %sw.bb2.i ], [ -113, %sw.bb1.i ], [ -111, %__cxgbi_sock_get.exit.act_open_rpl_status_to_errno.exit_crit_edge ], [ -98, %land.lhs.true39.act_open_rpl_status_to_errno.exit_crit_edge ]
  tail call void @cxgbi_sock_fail_act_open(ptr noundef nonnull %15, i32 noundef %retval.0.i) #10
  br label %if.end48

if.end48:                                         ; preds = %act_open_rpl_status_to_errno.exit, %if.then42
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  tail call fastcc void @__cxgbi_sock_put(ptr noundef nonnull @.str.145, ptr noundef nonnull %15)
  br label %rel_skb

rel_skb:                                          ; preds = %if.end48, %do.end22.rel_skb_crit_edge, %do.end
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_peer_close(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 16777215
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %cdev, i32 0, i32 36
  %4 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data, align 4
  %tids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %9
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %cmp.i = icmp ult i32 %sub.i, %11
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_tid.exit:                                  ; preds = %entry
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 128
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %do.body5, !prof !576

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_tid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.151, i32 noundef %and) #13
  br label %rel_skb

do.body5:                                         ; preds = %lookup_tid.exit
  %16 = load i32, ptr @dbg_level, align 4
  %and6 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body5.do.end17_crit_edge, label %do.end12

do.body5.do.end17_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

do.end12:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %17 = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 30
  %18 = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 31
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 28
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %tid14 = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %tid14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tid14, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.151, ptr noundef %17, ptr noundef %18, ptr noundef nonnull %15, i32 noundef %20, i32 noundef %22, i32 noundef %24) #13
  br label %do.end17

do.end17:                                         ; preds = %do.end12, %do.body5.do.end17_crit_edge
  tail call void @cxgbi_sock_rcv_peer_close(ptr noundef nonnull %15) #10
  br label %rel_skb

rel_skb:                                          ; preds = %do.end17, %do.end
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_abort_req_rss(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 16777215
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %cdev, i32 0, i32 36
  %4 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data, align 4
  %tids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %9
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %cmp.i = icmp ult i32 %sub.i, %11
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_tid.exit:                                  ; preds = %entry
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 128
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %do.body5, !prof !576

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_tid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.155, i32 noundef %and) #13
  br label %rel_skb

do.body5:                                         ; preds = %lookup_tid.exit
  %16 = load i32, ptr @dbg_level, align 4
  %and6 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body5.do.end17_crit_edge, label %do.end12

do.body5.do.end17_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

do.end12:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %17 = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 30
  %18 = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 31
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 28
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %tid14 = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %tid14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tid14, align 4
  %status = getelementptr inbounds %struct.cpl_abort_req_rss, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %status, align 1
  %conv = zext i8 %26 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.155, ptr noundef %17, ptr noundef %18, ptr noundef nonnull %15, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %conv) #13
  br label %do.end17

do.end17:                                         ; preds = %do.end12, %do.body5.do.end17_crit_edge
  %status18 = getelementptr inbounds %struct.cpl_abort_req_rss, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %status18 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %status18, align 1
  %conv19 = zext i8 %28 to i32
  %status.off.i = add nsw i32 %conv19, -35
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %status.off.i)
  %switch.i = icmp ult i32 %status.off.i, 3
  br i1 %switch.i, label %do.end17.rel_skb_crit_edge, label %if.end22

do.end17.rel_skb_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_skb

if.end22:                                         ; preds = %do.end17
  %29 = load i32, ptr @dbg_level, align 4
  %and.i = and i32 %29, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end22.do.end3.i_crit_edge, label %do.end.i

if.end22.do.end3.i_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %refcnt.i = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 27
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #10
  %30 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %refcnt.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.155, ptr noundef nonnull %15, i32 noundef %31) #13
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end22.do.end3.i_crit_edge
  %refcnt4.i = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt4.i, i32 1, i32 3, i32 1) #10
  %32 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4.i, ptr %refcnt4.i, i32 1, ptr elementtype(i32) %refcnt4.i) #10, !srcloc !583
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !576

do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end3.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %33 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %.not.i.i.i.i.i = icmp sgt i32 %33, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !581

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cxgbi_sock_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt4.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %__cxgbi_sock_get.exit

__cxgbi_sock_get.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge
  %lock = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 26
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %flags.i = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 3
  %34 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i, align 4
  %and.i.i = and i32 %35, -3
  store i32 %and.i.i, ptr %flags.i, align 4
  %36 = load i32, ptr @dbg_level, align 4
  %and.i62 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i62)
  %tobool.not.i63 = icmp eq i32 %and.i62, 0
  br i1 %tobool.not.i63, label %__cxgbi_sock_get.exit.cxgbi_sock_flag.exit_crit_edge, label %do.end.i64

__cxgbi_sock_get.exit.cxgbi_sock_flag.exit_crit_edge: ; preds = %__cxgbi_sock_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_flag.exit

do.end.i64:                                       ; preds = %__cxgbi_sock_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  %state.i = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 28
  %37 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %state.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef nonnull %15, i32 noundef %38, i32 noundef %and.i.i, i32 noundef 1) #13
  br label %cxgbi_sock_flag.exit

cxgbi_sock_flag.exit:                             ; preds = %do.end.i64, %__cxgbi_sock_get.exit.cxgbi_sock_flag.exit_crit_edge
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %flags.i, align 4
  %41 = and i32 %40, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool24.not = icmp eq i32 %41, 0
  br i1 %tobool24.not, label %if.then25, label %cxgbi_sock_flag.exit.if.end27_crit_edge

cxgbi_sock_flag.exit.if.end27_crit_edge:          ; preds = %cxgbi_sock_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then25:                                        ; preds = %cxgbi_sock_flag.exit
  tail call fastcc void @send_tx_flowc_wr(ptr noundef nonnull %15)
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %43, 8
  store i32 %or.i.i, ptr %flags.i, align 4
  %44 = load i32, ptr @dbg_level, align 4
  %and.i69 = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i69)
  %tobool.not.i70 = icmp eq i32 %and.i69, 0
  br i1 %tobool.not.i70, label %if.then25.if.end27_crit_edge, label %do.end.i73

if.then25.if.end27_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

do.end.i73:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #12
  %state.i71 = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 28
  %45 = ptrtoint ptr %state.i71 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %state.i71, align 4
  %call.i72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.80, ptr noundef nonnull %15, i32 noundef %46, i32 noundef %or.i.i, i32 noundef 3) #13
  br label %if.end27

if.end27:                                         ; preds = %do.end.i73, %if.then25.if.end27_crit_edge, %cxgbi_sock_flag.exit.if.end27_crit_edge
  %47 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i, align 4
  %or.i.i76 = or i32 %48, 2
  store i32 %or.i.i76, ptr %flags.i, align 4
  %49 = load i32, ptr @dbg_level, align 4
  %and.i77 = and i32 %49, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i77)
  %tobool.not.i78 = icmp eq i32 %and.i77, 0
  br i1 %tobool.not.i78, label %if.end27.cxgbi_sock_set_flag.exit83_crit_edge, label %do.end.i81

if.end27.cxgbi_sock_set_flag.exit83_crit_edge:    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_set_flag.exit83

do.end.i81:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %state.i79 = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 28
  %50 = ptrtoint ptr %state.i79 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %state.i79, align 4
  %call.i80 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.80, ptr noundef nonnull %15, i32 noundef %51, i32 noundef %or.i.i76, i32 noundef 1) #13
  br label %cxgbi_sock_set_flag.exit83

cxgbi_sock_set_flag.exit83:                       ; preds = %do.end.i81, %if.end27.cxgbi_sock_set_flag.exit83_crit_edge
  %52 = load i32, ptr @dbg_level, align 4
  %and.i84 = and i32 %52, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i84)
  %tobool.not.i85 = icmp eq i32 %and.i84, 0
  br i1 %tobool.not.i85, label %cxgbi_sock_set_flag.exit83.cxgbi_sock_set_state.exit_crit_edge, label %do.end.i88

cxgbi_sock_set_flag.exit83.cxgbi_sock_set_state.exit_crit_edge: ; preds = %cxgbi_sock_set_flag.exit83
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_set_state.exit

do.end.i88:                                       ; preds = %cxgbi_sock_set_flag.exit83
  call void @__sanitizer_cov_trace_pc() #12
  %state2.i = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 28
  %53 = ptrtoint ptr %state2.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %state2.i, align 4
  %55 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %flags.i, align 4
  %call.i87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.86, ptr noundef nonnull %15, i32 noundef %54, i32 noundef %56, i32 noundef 8) #13
  br label %cxgbi_sock_set_state.exit

cxgbi_sock_set_state.exit:                        ; preds = %do.end.i88, %cxgbi_sock_set_flag.exit83.cxgbi_sock_set_state.exit_crit_edge
  %state4.i = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 28
  %57 = ptrtoint ptr %state4.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 8, ptr %state4.i, align 4
  %cpl_abort_rpl.i = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 24
  %58 = ptrtoint ptr %cpl_abort_rpl.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %cpl_abort_rpl.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 18
  %60 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %head.i, align 8
  %62 = load i32, ptr @dbg_level, align 4
  %and.i90 = and i32 %62, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i90)
  %tobool.not.i91 = icmp eq i32 %and.i90, 0
  br i1 %tobool.not.i91, label %cxgbi_sock_set_state.exit.cxgbi_sock_flag.exit104_crit_edge, label %do.end.i95

cxgbi_sock_set_state.exit.cxgbi_sock_flag.exit104_crit_edge: ; preds = %cxgbi_sock_set_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_flag.exit104

do.end.i95:                                       ; preds = %cxgbi_sock_set_state.exit
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i, align 4
  %tid.i = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 1
  %65 = ptrtoint ptr %tid.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tid.i, align 4
  %call.i94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.159, ptr noundef nonnull @.str.160, ptr noundef nonnull %15, i32 noundef 8, i32 noundef %64, i32 noundef %66, i32 noundef 1) #13
  br label %cxgbi_sock_flag.exit104

cxgbi_sock_flag.exit104:                          ; preds = %do.end.i95, %cxgbi_sock_set_state.exit.cxgbi_sock_flag.exit104_crit_edge
  %67 = ptrtoint ptr %cpl_abort_rpl.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %cpl_abort_rpl.i, align 4
  %port_id.i = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 12
  %68 = ptrtoint ptr %port_id.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %port_id.i, align 4
  %conv.i = zext i8 %69 to i16
  %shl.i.i = shl nuw nsw i16 %conv.i, 1
  %queue_mapping1.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %59, i32 0, i32 10
  %70 = ptrtoint ptr %queue_mapping1.i.i.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %shl.i.i, ptr %queue_mapping1.i.i.i, align 8
  %71 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 83886096, ptr %61, align 8
  %tid6.i = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 1
  %72 = ptrtoint ptr %tid6.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tid6.i, align 4
  %shl.i = shl i32 %73, 8
  %or.i = or i32 %shl.i, 2
  %wr_mid.i = getelementptr inbounds %struct.work_request_hdr, ptr %61, i32 0, i32 1
  %74 = ptrtoint ptr %wr_mid.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or.i, ptr %wr_mid.i, align 4
  %wr_lo.i = getelementptr inbounds %struct.work_request_hdr, ptr %61, i32 0, i32 2
  %75 = ptrtoint ptr %wr_lo.i to i32
  call void @__asan_store8_noabort(i32 %75)
  store i64 0, ptr %wr_lo.i, align 8
  %76 = load i32, ptr %tid6.i, align 4
  %or12.i = or i32 %76, 184549376
  %ot.i = getelementptr inbounds %struct.cpl_abort_rpl, ptr %61, i32 0, i32 1
  %77 = ptrtoint ptr %ot.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or12.i, ptr %ot.i, align 8
  %cmd.i = getelementptr inbounds %struct.cpl_abort_rpl, ptr %61, i32 0, i32 4
  %78 = ptrtoint ptr %cmd.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 1, ptr %cmd.i, align 1
  %79 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %15, align 4
  %ports.i = getelementptr inbounds %struct.cxgbi_device, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ports.i, align 4
  %83 = load i8, ptr %port_id.i, align 4
  %idxprom.i = zext i8 %83 to i32
  %arrayidx.i96 = getelementptr ptr, ptr %82, i32 %idxprom.i
  %84 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i96, align 4
  %call15.i = tail call i32 @cxgb4_ofld_send(ptr noundef %85, ptr noundef %59) #10
  %86 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load volatile i32, ptr %flags.i, align 4
  %88 = and i32 %87, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool29.not = icmp eq i32 %88, 0
  br i1 %tobool29.not, label %if.then30, label %cxgbi_sock_flag.exit104.if.end34_crit_edge

cxgbi_sock_flag.exit104.if.end34_crit_edge:       ; preds = %cxgbi_sock_flag.exit104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then30:                                        ; preds = %cxgbi_sock_flag.exit104
  %89 = ptrtoint ptr %status18 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %status18, align 1
  %91 = zext i8 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.283)
  switch i8 %90, label %sw.default.i [
    i8 24, label %if.then30.sw.bb.i_crit_edge
    i8 20, label %if.then30.sw.bb.i_crit_edge113
    i8 31, label %if.then30.abort_status_to_errno.exit_crit_edge
    i8 32, label %if.then30.abort_status_to_errno.exit_crit_edge114
    i8 33, label %if.then30.abort_status_to_errno.exit_crit_edge115
    i8 34, label %if.then30.abort_status_to_errno.exit_crit_edge116
  ]

if.then30.abort_status_to_errno.exit_crit_edge116: ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_status_to_errno.exit

if.then30.abort_status_to_errno.exit_crit_edge115: ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_status_to_errno.exit

if.then30.abort_status_to_errno.exit_crit_edge114: ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_status_to_errno.exit

if.then30.abort_status_to_errno.exit_crit_edge:   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_status_to_errno.exit

if.then30.sw.bb.i_crit_edge113:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.then30.sw.bb.i_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %if.then30.sw.bb.i_crit_edge, %if.then30.sw.bb.i_crit_edge113
  %92 = ptrtoint ptr %state4.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %state4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %93)
  %cmp.i106 = icmp ugt i32 %93, 3
  %cond.i107 = select i1 %cmp.i106, i32 -32, i32 -104
  br label %abort_status_to_errno.exit

sw.default.i:                                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_status_to_errno.exit

abort_status_to_errno.exit:                       ; preds = %sw.default.i, %sw.bb.i, %if.then30.abort_status_to_errno.exit_crit_edge, %if.then30.abort_status_to_errno.exit_crit_edge114, %if.then30.abort_status_to_errno.exit_crit_edge115, %if.then30.abort_status_to_errno.exit_crit_edge116
  %retval.0.i108 = phi i32 [ -5, %sw.default.i ], [ %cond.i107, %sw.bb.i ], [ -110, %if.then30.abort_status_to_errno.exit_crit_edge ], [ -110, %if.then30.abort_status_to_errno.exit_crit_edge114 ], [ -110, %if.then30.abort_status_to_errno.exit_crit_edge115 ], [ -110, %if.then30.abort_status_to_errno.exit_crit_edge116 ]
  %err = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 37
  %94 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %retval.0.i108, ptr %err, align 4
  tail call void @cxgbi_sock_closed(ptr noundef nonnull %15) #10
  br label %if.end34

if.end34:                                         ; preds = %abort_status_to_errno.exit, %cxgbi_sock_flag.exit104.if.end34_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  tail call fastcc void @__cxgbi_sock_put(ptr noundef nonnull @.str.155, ptr noundef nonnull %15)
  br label %rel_skb

rel_skb:                                          ; preds = %if.end34, %do.end17.rel_skb_crit_edge, %do.end
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_abort_rpl_rss(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 16777215
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %cdev, i32 0, i32 36
  %4 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data, align 4
  %tids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %9
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %cmp.i = icmp ult i32 %sub.i, %11
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.rel_skb_crit_edge

entry.rel_skb_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_skb

lookup_tid.exit:                                  ; preds = %entry
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 128
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %lookup_tid.exit.rel_skb_crit_edge, label %do.body

lookup_tid.exit.rel_skb_crit_edge:                ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_skb

do.body:                                          ; preds = %lookup_tid.exit
  %16 = load i32, ptr @dbg_level, align 4
  %and1 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %do.body.do.end9_crit_edge, label %do.end

do.body.do.end9_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %17 = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 30
  %18 = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 31
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 28
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %tid6 = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %tid6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tid6, align 4
  %status = getelementptr inbounds %struct.cpl_abort_rpl_rss, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %status, align 1
  %conv = zext i8 %26 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157, ptr noundef nonnull @.str.161, ptr noundef %17, ptr noundef %18, ptr noundef nonnull %15, i32 noundef %20, i32 noundef %22, i32 noundef %24, i32 noundef %conv) #13
  br label %do.end9

do.end9:                                          ; preds = %do.end, %do.body.do.end9_crit_edge
  %status10 = getelementptr inbounds %struct.cpl_abort_rpl_rss, ptr %1, i32 0, i32 2
  %27 = ptrtoint ptr %status10 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %status10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 42, i8 %28)
  %cmp = icmp eq i8 %28, 42
  br i1 %cmp, label %do.end9.rel_skb_crit_edge, label %if.end14

do.end9.rel_skb_crit_edge:                        ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %rel_skb

if.end14:                                         ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @cxgbi_sock_rcv_abort_rpl(ptr noundef nonnull %15) #10
  br label %rel_skb

rel_skb:                                          ; preds = %if.end14, %do.end9.rel_skb_crit_edge, %lookup_tid.exit.rel_skb_crit_edge, %entry.rel_skb_crit_edge
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_close_con_rpl(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 16777215
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %cdev, i32 0, i32 36
  %4 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data, align 4
  %tids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %9
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %cmp.i = icmp ult i32 %sub.i, %11
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_tid.exit:                                  ; preds = %entry
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 128
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %do.body5, !prof !576

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_tid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.162, i32 noundef %and) #13
  br label %rel_skb

do.body5:                                         ; preds = %lookup_tid.exit
  %16 = load i32, ptr @dbg_level, align 4
  %and6 = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body5.do.end17_crit_edge, label %do.end12

do.body5.do.end17_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

do.end12:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %17 = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 30
  %18 = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 31
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 28
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %tid14 = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %tid14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tid14, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.162, ptr noundef %17, ptr noundef %18, ptr noundef nonnull %15, i32 noundef %20, i32 noundef %22, i32 noundef %24) #13
  br label %do.end17

do.end17:                                         ; preds = %do.end12, %do.body5.do.end17_crit_edge
  %snd_nxt = getelementptr inbounds %struct.cpl_close_con_rpl, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %snd_nxt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %snd_nxt, align 4
  tail call void @cxgbi_sock_rcv_close_conn_rpl(ptr noundef nonnull %15, i32 noundef %26) #10
  br label %rel_skb

rel_skb:                                          ; preds = %do.end17, %do.end
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_rx_iscsi_hdr(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %pdu_len_ddp1 = getelementptr inbounds %struct.cpl_iscsi_hdr, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdu_len_ddp1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %pdu_len_ddp1, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %and = and i32 %5, 16777215
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %cdev, i32 0, i32 36
  %6 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dd_data, align 4
  %tids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %11
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %13)
  %cmp.i = icmp ult i32 %sub.i, %13
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_tid.exit:                                  ; preds = %entry
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %9, align 128
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %sub.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %do.body6, !prof !576

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_tid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.166, i32 noundef %and) #13
  br label %rel_skb

do.body6:                                         ; preds = %lookup_tid.exit
  %18 = load i32, ptr @dbg_level, align 4
  %and7 = and i32 %18, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body6.do.end18_crit_edge, label %do.end12

do.body6.do.end18_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

do.end12:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 28
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %tid14 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 1
  %23 = ptrtoint ptr %tid14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tid14, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %conv = zext i16 %3 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.166, ptr noundef nonnull %17, i32 noundef %20, i32 noundef %22, i32 noundef %24, ptr noundef %skb, i32 noundef %26, i32 noundef %conv) #13
  br label %do.end18

do.end18:                                         ; preds = %do.end12, %do.body6.do.end18_crit_edge
  %lock = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 26
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %state19 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 28
  %27 = ptrtoint ptr %state19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp = icmp ugt i32 %28, 4
  br i1 %cmp, label %do.body28, label %if.end47, !prof !576

do.body28:                                        ; preds = %do.end18
  %29 = load i32, ptr @dbg_level, align 4
  %and29 = and i32 %29, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.do.end42_crit_edge, label %do.end34

do.body28.do.end42_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %flags37 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 3
  %30 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags37, align 4
  %tid38 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 1
  %32 = ptrtoint ptr %tid38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tid38, align 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.166, ptr noundef nonnull %17, i32 noundef %28, i32 noundef %31, i32 noundef %33) #13
  br label %do.end42

do.end42:                                         ; preds = %do.end34, %do.body28.do.end42_crit_edge
  %34 = ptrtoint ptr %state19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %35)
  %cmp44.not = icmp eq i32 %35, 8
  br i1 %cmp44.not, label %do.end42.discard_crit_edge, label %do.end42.abort_conn_crit_edge

do.end42.abort_conn_crit_edge:                    ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_conn

do.end42.discard_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.end47:                                         ; preds = %do.end18
  %seq = getelementptr inbounds %struct.cpl_iscsi_hdr, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %seq, align 4
  %seq48 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %38 = ptrtoint ptr %seq48 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %seq48, align 4
  %flags51 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %39 = ptrtoint ptr %flags51 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %flags51, align 8
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %42 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %44 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %45 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len1.i, align 4
  %sub.i261 = add i32 %46, -16
  store i32 %sub.i261, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %47 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i261, i32 %48)
  %cmp.i262 = icmp ult i32 %sub.i261, %48
  br i1 %cmp.i262, label %do.body4.i, label %__skb_pull.exit, !prof !576

do.body4.i:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !589
  unreachable

__skb_pull.exit:                                  ; preds = %if.end47
  %add.ptr.i = getelementptr i8, ptr %41, i32 16
  %49 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr.i, ptr %data, align 4
  %len53 = getelementptr inbounds %struct.cpl_iscsi_hdr, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %len53 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %len53, align 2
  %conv54 = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i, label %__skb_trim.exit.i, label %if.then.i

if.then.i:                                        ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %conv54) #10
  br label %__pskb_trim.exit

__skb_trim.exit.i:                                ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv54, ptr %len1.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %conv54
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %53 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i, align 8
  br label %__pskb_trim.exit

__pskb_trim.exit:                                 ; preds = %__skb_trim.exit.i, %if.then.i
  %skb_ulp_lhdr = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 25
  %54 = ptrtoint ptr %skb_ulp_lhdr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %skb_ulp_lhdr, align 4
  %tobool56.not = icmp eq ptr %55, null
  br i1 %tobool56.not, label %if.then57, label %if.else157

if.then57:                                        ; preds = %__pskb_trim.exit
  %56 = load i32, ptr @dbg_level, align 4
  %and59 = and i32 %56, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.then57.do.end72_crit_edge, label %do.end64

if.then57.do.end72_crit_edge:                     ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

do.end64:                                         ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %state19 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %state19, align 4
  %flags67 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 3
  %59 = ptrtoint ptr %flags67 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags67, align 4
  %tid68 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 1
  %61 = ptrtoint ptr %tid68 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tid68, align 4
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.174, ptr noundef nonnull @.str.166, ptr noundef nonnull %17, i32 noundef %58, i32 noundef %60, i32 noundef %62, ptr noundef %skb) #13
  br label %do.end72

do.end72:                                         ; preds = %do.end64, %if.then57.do.end72_crit_edge
  %63 = ptrtoint ptr %skb_ulp_lhdr to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %skb, ptr %skb_ulp_lhdr, align 4
  %64 = ptrtoint ptr %flags51 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags51, align 4
  %or.i.i = or i32 %65, 16
  store i32 %or.i.i, ptr %flags51, align 4
  %adapter_type = getelementptr inbounds %struct.cxgb4_lld_info, ptr %7, i32 0, i32 13
  %66 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %adapter_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %67)
  %cmp76 = icmp ult i8 %67, 96
  br i1 %cmp76, label %land.lhs.true, label %do.end72.if.end94_crit_edge

do.end72.if.end94_crit_edge:                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

land.lhs.true:                                    ; preds = %do.end72
  %68 = ptrtoint ptr %seq48 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %seq48, align 4
  %rcv_nxt = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 40
  %70 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %rcv_nxt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %71)
  %cmp81.not = icmp eq i32 %69, %71
  br i1 %cmp81.not, label %land.lhs.true.if.end94_crit_edge, label %do.end86

land.lhs.true.if.end94_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end94

do.end86:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %tid88 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 1
  %72 = ptrtoint ptr %tid88 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %tid88, align 4
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.166, i32 noundef %73, i32 noundef %69, i32 noundef %71) #13
  br label %abort_conn

if.end94:                                         ; preds = %land.lhs.true.if.end94_crit_edge, %do.end72.if.end94_crit_edge
  %74 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data, align 4
  %76 = ptrtoint ptr %len53 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %len53, align 2
  %conv97 = zext i16 %77 to i32
  %add.ptr = getelementptr i8, ptr %75, i32 4
  %78 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr, align 4
  %and98 = and i32 %79, 16777215
  %80 = and i16 %3, 32767
  %and101 = zext i16 %80 to i32
  %81 = and i8 %67, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %81)
  %cmp.i265.not = icmp eq i8 %81, 64
  %sub = add nsw i32 %and101, -40
  %spec.select = select i1 %cmp.i265.not, i32 %sub, i32 %and101
  %add = add nuw nsw i32 %and98, %conv97
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %spec.select)
  %cmp108.not = icmp eq i32 %add, %spec.select
  br i1 %cmp108.not, label %if.end120, label %do.end113

do.end113:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  %tid115 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 1
  %82 = ptrtoint ptr %tid115 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %tid115, align 4
  %84 = ptrtoint ptr %seq48 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %seq48, align 4
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.180, ptr noundef nonnull @.str.166, i32 noundef %83, i32 noundef %spec.select, i32 noundef %conv97, i32 noundef %and98, i32 noundef %85) #13
  br label %abort_conn

if.end120:                                        ; preds = %if.end94
  %add122 = add nuw nsw i32 %spec.select, 3
  %and123 = and i32 %add122, 67108860
  %pdulen = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %86 = ptrtoint ptr %pdulen to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %and123, ptr %pdulen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and98)
  %tobool126.not = icmp eq i32 %and98, 0
  br i1 %tobool126.not, label %if.end120.if.end133_crit_edge, label %if.then127

if.end120.if.end133_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

if.then127:                                       ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  %dcrc_len = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 18
  %87 = ptrtoint ptr %dcrc_len to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %dcrc_len, align 2
  %conv128 = zext i8 %88 to i32
  %add132 = add nuw nsw i32 %and123, %conv128
  %89 = ptrtoint ptr %pdulen to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %add132, ptr %pdulen, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.then127, %if.end120.if.end133_crit_edge
  %90 = ptrtoint ptr %pdulen to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %pdulen, align 4
  %rcv_nxt137 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 40
  %92 = ptrtoint ptr %rcv_nxt137 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %rcv_nxt137, align 4
  %add138 = add i32 %93, %91
  store i32 %add138, ptr %rcv_nxt137, align 4
  %94 = load i32, ptr @dbg_level, align 4
  %and140 = and i32 %94, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140)
  %tobool141.not = icmp eq i32 %and140, 0
  br i1 %tobool141.not, label %if.end133.if.end173_crit_edge, label %do.end145

if.end133.if.end173_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end173

do.end145:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %75 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %75, align 1
  %conv147 = zext i8 %96 to i32
  %add.ptr148 = getelementptr i8, ptr %75, i32 16
  %97 = ptrtoint ptr %add.ptr148 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %add.ptr148, align 4
  %add.ptr149 = getelementptr i8, ptr %75, i32 24
  %99 = ptrtoint ptr %add.ptr149 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %add.ptr149, align 4
  %call150 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.183, ptr noundef nonnull @.str.166, ptr noundef nonnull %17, ptr noundef %skb, i32 noundef %conv147, i32 noundef %conv97, i32 noundef %and98, i32 noundef %98, i32 noundef %100) #13
  br label %if.end173

if.else157:                                       ; preds = %__pskb_trim.exit
  %flags.i267 = getelementptr inbounds %struct.sk_buff, ptr %55, i32 0, i32 3, i32 16
  %101 = ptrtoint ptr %flags.i267 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags.i267, align 4
  %or.i.i268 = or i32 %102, 32
  store i32 %or.i.i268, ptr %flags.i267, align 4
  %103 = load i32, ptr @dbg_level, align 4
  %and160 = and i32 %103, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and160)
  %tobool161.not = icmp eq i32 %and160, 0
  br i1 %tobool161.not, label %if.else157.if.end173_crit_edge, label %do.end165

if.else157.if.end173_crit_edge:                   ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end173

do.end165:                                        ; preds = %if.else157
  call void @__sanitizer_cov_trace_pc() #12
  %104 = ptrtoint ptr %state19 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %state19, align 4
  %flags168 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 3
  %106 = ptrtoint ptr %flags168 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %flags168, align 4
  %call169 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.166, ptr noundef nonnull %17, i32 noundef %105, i32 noundef %107, ptr noundef %skb, ptr noundef nonnull %55) #13
  br label %if.end173

if.end173:                                        ; preds = %do.end165, %if.else157.if.end173_crit_edge, %do.end145, %if.end133.if.end173_crit_edge
  %receive_queue = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 33
  %prev.i.i = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 33, i32 0, i32 0, i32 1
  %108 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i.i, align 4
  %110 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %receive_queue, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %111 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %109, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %112 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %skb, ptr %109, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 33, i32 1
  %113 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %114, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup176

abort_conn:                                       ; preds = %do.end113, %do.end86, %do.end42.abort_conn_crit_edge
  tail call void @send_abort_req(ptr noundef nonnull %17)
  br label %discard

discard:                                          ; preds = %abort_conn, %do.end42.discard_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %rel_skb

rel_skb:                                          ; preds = %discard, %do.end
  tail call void @__kfree_skb(ptr noundef %skb) #10
  br label %cleanup176

cleanup176:                                       ; preds = %rel_skb, %if.end173
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_rx_data(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 16777215
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %cdev, i32 0, i32 36
  %4 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data, align 4
  %tids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %9
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %cmp.i = icmp ult i32 %sub.i, %11
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_tid.exit:                                  ; preds = %entry
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 128
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %do.end4

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_tid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.189, i32 noundef %and) #13
  br label %if.end

do.end4:                                          ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.191, ptr noundef nonnull @.str.189, ptr noundef nonnull %15, i32 noundef %and) #13
  %lock = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 26
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  tail call void @send_abort_req(ptr noundef nonnull %15)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %if.end

if.end:                                           ; preds = %do.end4, %do.end
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_set_tcb_rpl(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and = and i32 %3, 16777215
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %cdev, i32 0, i32 36
  %4 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data, align 4
  %tids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %9
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %cmp.i = icmp ult i32 %sub.i, %11
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_tid.exit:                                  ; preds = %entry
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 128
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %do.body2

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_tid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.193, i32 noundef %and) #13
  br label %cleanup

do.body2:                                         ; preds = %lookup_tid.exit
  %16 = load i32, ptr @dbg_level, align 4
  %and3 = and i32 %16, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %do.body2.do.end14_crit_edge, label %do.end8

do.body2.do.end14_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.end8:                                          ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 28
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %tid10 = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 1
  %21 = ptrtoint ptr %tid10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tid10, align 4
  %status = getelementptr inbounds %struct.cpl_set_tcb_rpl, ptr %1, i32 0, i32 3
  %23 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %status, align 1
  %conv = zext i8 %24 to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.193, ptr noundef nonnull %15, i32 noundef %18, i32 noundef %20, i32 noundef %22, i32 noundef %conv) #13
  br label %do.end14

do.end14:                                         ; preds = %do.end8, %do.body2.do.end14_crit_edge
  %status15 = getelementptr inbounds %struct.cpl_set_tcb_rpl, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %status15 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %status15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp.not = icmp eq i8 %26, 0
  br i1 %cmp.not, label %do.end14.if.end26_crit_edge, label %do.end21

do.end14.if.end26_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

do.end21:                                         ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #12
  %conv16 = zext i8 %26 to i32
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198, ptr noundef nonnull @.str.193, ptr noundef nonnull %15, i32 noundef %and, i32 noundef %conv16) #13
  %err = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 37
  %27 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -22, ptr %err, align 4
  br label %if.end26

if.end26:                                         ; preds = %do.end21, %do.end14.if.end26_crit_edge
  %cmpl = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 36
  tail call void @complete(ptr noundef %cmpl) #10
  tail call void @__kfree_skb(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_act_establish(ptr noundef %cdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %tcp_opt1 = getelementptr inbounds %struct.cpl_act_establish, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %tcp_opt1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %tcp_opt1, align 2
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %and = and i32 %5, 16777215
  %tos_atid = getelementptr inbounds %struct.cpl_act_establish, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %tos_atid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tos_atid, align 4
  %and2 = and i32 %7, 16383
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %cdev, i32 0, i32 36
  %8 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dd_data, align 4
  %tids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tids, align 4
  %rcv_isn3 = getelementptr inbounds %struct.cpl_act_establish, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %rcv_isn3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rcv_isn3, align 4
  %natids.i = getelementptr inbounds %struct.tid_info, ptr %11, i32 0, i32 10
  %14 = ptrtoint ptr %natids.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %natids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %and2)
  %cmp.i = icmp ugt i32 %15, %and2
  br i1 %cmp.i, label %lookup_atid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_atid.exit:                                 ; preds = %entry
  %atid_tab.i = getelementptr inbounds %struct.tid_info, ptr %11, i32 0, i32 9
  %16 = ptrtoint ptr %atid_tab.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %atid_tab.i, align 4
  %arrayidx.i = getelementptr %union.aopen_entry, ptr %17, i32 %and2
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %lookup_atid.exit.do.end_crit_edge, label %if.end, !prof !576

lookup_atid.exit.do.end_crit_edge:                ; preds = %lookup_atid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_atid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.200, ptr noundef nonnull @.str.201, i32 noundef %and2, ptr noundef %cdev) #13
  br label %rel_skb

if.end:                                           ; preds = %lookup_atid.exit
  %atid8 = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %atid8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %atid8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %and2)
  %cmp.not = icmp eq i32 %21, %and2
  br i1 %cmp.not, label %do.body18, label %do.end12

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 28
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 3
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %flags, align 4
  %tid14 = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 1
  %26 = ptrtoint ptr %tid14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tid14, align 4
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.203, ptr noundef nonnull @.str.201, i32 noundef %and2, ptr noundef nonnull %19, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %21) #13
  br label %rel_skb

do.body18:                                        ; preds = %if.end
  %28 = load i32, ptr @dbg_level, align 4
  %and19 = and i32 %28, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body18.do.end31_crit_edge, label %do.end25

do.body18.do.end31_crit_edge:                     ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end31

do.end25:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %29 = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 30
  %30 = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 31
  %state27 = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 28
  %31 = ptrtoint ptr %state27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state27, align 4
  %flags28 = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 3
  %33 = ptrtoint ptr %flags28 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags28, align 4
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.201, ptr noundef %29, ptr noundef %30, i32 noundef %and2, i32 noundef %and, ptr noundef nonnull %19, i32 noundef %32, i32 noundef %34, i32 noundef %13) #13
  br label %do.end31

do.end31:                                         ; preds = %do.end25, %do.body18.do.end31_crit_edge
  %owner = getelementptr inbounds %struct.cxgbi_device, ptr %cdev, i32 0, i32 12
  %35 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %36) #10
  %37 = load i32, ptr @dbg_level, align 4
  %and.i = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end31.do.end3.i_crit_edge, label %do.end.i

do.end31.do.end3.i_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #12
  %refcnt.i = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 27
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #10
  %38 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile i32, ptr %refcnt.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.201, ptr noundef nonnull %19, i32 noundef %39) #13
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end31.do.end3.i_crit_edge
  %refcnt4.i = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 27
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt4.i, i32 1, i32 3, i32 1) #10
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4.i, ptr %refcnt4.i, i32 1, ptr elementtype(i32) %refcnt4.i) #10, !srcloc !583
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !576

do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end3.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %41 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %41)
  %.not.i.i.i.i.i = icmp sgt i32 %41, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !581

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cxgbi_sock_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt4.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %__cxgbi_sock_get.exit

__cxgbi_sock_get.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge
  %tid32 = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 1
  %42 = ptrtoint ptr %tid32 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %and, ptr %tid32, align 4
  %43 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tids, align 4
  %csk_family = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 29
  %45 = ptrtoint ptr %csk_family to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %csk_family, align 4
  %conv = trunc i32 %46 to i16
  %47 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %44, align 128
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %50
  %arrayidx.i192 = getelementptr ptr, ptr %48, i32 %sub.i
  %51 = ptrtoint ptr %arrayidx.i192 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %19, ptr %arrayidx.i192, align 4
  %hash_base.i = getelementptr inbounds %struct.tid_info, ptr %44, i32 0, i32 8
  %52 = ptrtoint ptr %hash_base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %hash_base.i, align 32
  %54 = add i32 %53, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %and)
  %.not.i = icmp ult i32 %54, %and
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %conv)
  %cmp2.i = icmp eq i16 %conv, 10
  br i1 %.not.i, label %if.then.i, label %if.else6.i

if.then.i:                                        ; preds = %__cxgbi_sock_get.exit
  %hash_tids_in_use.i = getelementptr inbounds %struct.tid_info, ptr %44, i32 0, i32 37
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hash_tids_in_use.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %hash_tids_in_use.i, i32 1, i32 3, i32 1) #10
  br i1 %cmp2.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hash_tids_in_use.i, ptr %hash_tids_in_use.i, i32 2, ptr elementtype(i32) %hash_tids_in_use.i) #10, !srcloc !590
  br label %cxgb4_insert_tid.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hash_tids_in_use.i, ptr %hash_tids_in_use.i, i32 1, ptr elementtype(i32) %hash_tids_in_use.i) #10, !srcloc !590
  br label %cxgb4_insert_tid.exit

if.else6.i:                                       ; preds = %__cxgbi_sock_get.exit
  %tids_in_use.i = getelementptr inbounds %struct.tid_info, ptr %44, i32 0, i32 36
  %call.i.i26.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tids_in_use.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %tids_in_use.i, i32 1, i32 3, i32 1) #10
  br i1 %cmp2.i, label %if.then10.i, label %if.else11.i

if.then10.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tids_in_use.i, ptr %tids_in_use.i, i32 2, ptr elementtype(i32) %tids_in_use.i) #10, !srcloc !590
  br label %cxgb4_insert_tid.exit

if.else11.i:                                      ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tids_in_use.i, ptr %tids_in_use.i, i32 1, ptr elementtype(i32) %tids_in_use.i) #10, !srcloc !590
  br label %cxgb4_insert_tid.exit

cxgb4_insert_tid.exit:                            ; preds = %if.else11.i, %if.then10.i, %if.else.i, %if.then4.i
  %conns_in_use.i = getelementptr inbounds %struct.tid_info, ptr %44, i32 0, i32 38
  %call.i.i28.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %conns_in_use.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %conns_in_use.i, i32 1, i32 3, i32 1) #10
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %conns_in_use.i, ptr %conns_in_use.i, i32 1, ptr elementtype(i32) %conns_in_use.i) #10, !srcloc !590
  %flags.i = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 3
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %61, 64
  store i32 %or.i.i, ptr %flags.i, align 4
  %62 = load i32, ptr @dbg_level, align 4
  %and.i193 = and i32 %62, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i193)
  %tobool.not.i194 = icmp eq i32 %and.i193, 0
  br i1 %tobool.not.i194, label %cxgb4_insert_tid.exit.cxgbi_sock_flag.exit.i_crit_edge, label %do.end.i195

cxgb4_insert_tid.exit.cxgbi_sock_flag.exit.i_crit_edge: ; preds = %cxgb4_insert_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_flag.exit.i

do.end.i195:                                      ; preds = %cxgb4_insert_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %state.i = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 28
  %63 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %state.i, align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.80, ptr noundef nonnull %19, i32 noundef %64, i32 noundef %or.i.i, i32 noundef 6) #13
  br label %cxgbi_sock_flag.exit.i

cxgbi_sock_flag.exit.i:                           ; preds = %do.end.i195, %cxgb4_insert_tid.exit.cxgbi_sock_flag.exit.i_crit_edge
  %65 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %19, align 4
  %dd_data.i = getelementptr inbounds %struct.cxgbi_device, ptr %66, i32 0, i32 36
  %67 = ptrtoint ptr %dd_data.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dd_data.i, align 4
  %69 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %flags.i, align 4
  %71 = and i32 %70, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i197 = icmp eq i32 %71, 0
  br i1 %tobool.not.i197, label %cxgbi_sock_flag.exit.i.free_atid.exit_crit_edge, label %if.then.i198

cxgbi_sock_flag.exit.i.free_atid.exit_crit_edge:  ; preds = %cxgbi_sock_flag.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_atid.exit

if.then.i198:                                     ; preds = %cxgbi_sock_flag.exit.i
  %tids.i = getelementptr inbounds %struct.cxgb4_lld_info, ptr %68, i32 0, i32 2
  %72 = ptrtoint ptr %tids.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tids.i, align 4
  %74 = ptrtoint ptr %atid8 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %atid8, align 4
  tail call void @cxgb4_free_atid(ptr noundef %73, i32 noundef %75) #10
  %76 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i, align 4
  %and.i.i.i = and i32 %77, -33
  store i32 %and.i.i.i, ptr %flags.i, align 4
  %78 = load i32, ptr @dbg_level, align 4
  %and.i.i = and i32 %78, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i198.cxgbi_sock_clear_flag.exit.i_crit_edge, label %do.end.i.i

if.then.i198.cxgbi_sock_clear_flag.exit.i_crit_edge: ; preds = %if.then.i198
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_clear_flag.exit.i

do.end.i.i:                                       ; preds = %if.then.i198
  call void @__sanitizer_cov_trace_pc() #12
  %state.i.i = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 28
  %79 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %state.i.i, align 4
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.59, ptr noundef nonnull %19, i32 noundef %80, i32 noundef %and.i.i.i, i32 noundef 5) #13
  br label %cxgbi_sock_clear_flag.exit.i

cxgbi_sock_clear_flag.exit.i:                     ; preds = %do.end.i.i, %if.then.i198.cxgbi_sock_clear_flag.exit.i_crit_edge
  tail call fastcc void @__cxgbi_sock_put(ptr noundef nonnull @__func__.free_atid, ptr noundef nonnull %19) #10
  br label %free_atid.exit

free_atid.exit:                                   ; preds = %cxgbi_sock_clear_flag.exit.i, %cxgbi_sock_flag.exit.i.free_atid.exit_crit_edge
  %lock = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 26
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %state34 = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 28
  %81 = ptrtoint ptr %state34 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %state34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %82)
  %cmp35.not = icmp eq i32 %82, 2
  br i1 %cmp35.not, label %free_atid.exit.if.end52_crit_edge, label %do.end46, !prof !581

free_atid.exit.if.end52_crit_edge:                ; preds = %free_atid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end52

do.end46:                                         ; preds = %free_atid.exit
  call void @__sanitizer_cov_trace_pc() #12
  %83 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags.i, align 4
  %85 = ptrtoint ptr %tid32 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %tid32, align 4
  %call51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.201, ptr noundef nonnull %19, i32 noundef %82, i32 noundef %84, i32 noundef %86) #13
  br label %if.end52

if.end52:                                         ; preds = %do.end46, %free_atid.exit.if.end52_crit_edge
  %function = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 35, i32 2
  %87 = ptrtoint ptr %function to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %function, align 4
  %tobool53.not = icmp eq ptr %88, null
  br i1 %tobool53.not, label %if.end52.if.end59_crit_edge, label %if.then54

if.end52.if.end59_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then54:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %retry_timer = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 35
  %call56 = tail call i32 @del_timer(ptr noundef %retry_timer) #10
  %89 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %function, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then54, %if.end52.if.end59_crit_edge
  %rcv_nxt = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 40
  %90 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %13, ptr %rcv_nxt, align 4
  %rcv_wup = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 42
  %91 = ptrtoint ptr %rcv_wup to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %13, ptr %rcv_wup, align 4
  %copied_seq = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 41
  %92 = ptrtoint ptr %copied_seq to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %13, ptr %copied_seq, align 4
  %rcv_win = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 47
  %93 = ptrtoint ptr %rcv_win to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %rcv_win, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1047552, i32 %94)
  %cmp60 = icmp ugt i32 %94, 1047552
  br i1 %cmp60, label %if.then62, label %if.end59.if.end66_crit_edge

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end66

if.then62:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %sub.neg = add i32 %13, 1047552
  %sub65 = sub i32 %sub.neg, %94
  %95 = ptrtoint ptr %rcv_wup to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %sub65, ptr %rcv_wup, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.end59.if.end66_crit_edge
  %mtus = getelementptr inbounds %struct.cxgb4_lld_info, ptr %9, i32 0, i32 5
  %96 = ptrtoint ptr %mtus to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %mtus, align 4
  %conv67 = zext i16 %3 to i32
  %98 = lshr i32 %conv67, 12
  %arrayidx = getelementptr i16, ptr %97, i32 %98
  %99 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %arrayidx, align 2
  %advmss = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 7
  %101 = and i32 %conv67, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool76.not = icmp eq i32 %101, 0
  %spec.select.v = select i1 %tobool76.not, i16 -40, i16 -52
  %spec.select = add i16 %100, %spec.select.v
  %102 = tail call i16 @llvm.umax.i16(i16 %spec.select, i16 128)
  %103 = ptrtoint ptr %advmss to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %advmss, align 4
  %104 = load i32, ptr @dbg_level, align 4
  %and91 = and i32 %104, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end66.cxgbi_sock_flag.exit_crit_edge, label %do.end96

if.end66.cxgbi_sock_flag.exit_crit_edge:          ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %cxgbi_sock_flag.exit

do.end96:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %conv102 = zext i16 %102 to i32
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, ptr noundef nonnull @.str.201, ptr noundef nonnull %19, i32 noundef %98, i32 noundef %conv102) #13
  br label %cxgbi_sock_flag.exit

cxgbi_sock_flag.exit:                             ; preds = %do.end96, %if.end66.cxgbi_sock_flag.exit_crit_edge
  %snd_isn = getelementptr inbounds %struct.cpl_act_establish, ptr %1, i32 0, i32 5
  %105 = ptrtoint ptr %snd_isn to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %snd_isn, align 4
  %107 = ptrtoint ptr %tcp_opt1 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %tcp_opt1, align 2
  %conv108 = zext i16 %108 to i32
  tail call void @cxgbi_sock_established(ptr noundef nonnull %19, i32 noundef %106, i32 noundef %conv108) #10
  %109 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %flags.i, align 4
  %111 = and i32 %110, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %tobool110.not = icmp eq i32 %111, 0
  br i1 %tobool110.not, label %if.else, label %if.then117, !prof !581

if.then117:                                       ; preds = %cxgbi_sock_flag.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @send_abort_req(ptr noundef nonnull %19)
  br label %if.end123

if.else:                                          ; preds = %cxgbi_sock_flag.exit
  %qlen.i = getelementptr inbounds %struct.cxgbi_sock, ptr %19, i32 0, i32 34, i32 1
  %112 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %qlen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool119.not = icmp eq i32 %113, 0
  br i1 %tobool119.not, label %if.else.if.end122_crit_edge, label %if.then120

if.else.if.end122_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end122

if.then120:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call121 = tail call i32 @push_tx_frames(ptr noundef nonnull %19, i32 noundef 0)
  br label %if.end122

if.end122:                                        ; preds = %if.then120, %if.else.if.end122_crit_edge
  tail call void @cxgbi_conn_tx_open(ptr noundef nonnull %19) #10
  br label %if.end123

if.end123:                                        ; preds = %if.end122, %if.then117
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %rel_skb

rel_skb:                                          ; preds = %if.end123, %do.end12, %do.end
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_rx_data_ddp(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 16777215
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %cdev, i32 0, i32 36
  %4 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data, align 4
  %tids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tids, align 4
  %ddpvld1 = getelementptr inbounds %struct.cpl_rx_data_ddp, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %ddpvld1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ddpvld1, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %11
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %13)
  %cmp.i = icmp ult i32 %sub.i, %13
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_tid.exit:                                  ; preds = %entry
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %7, align 128
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %sub.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %do.body6, !prof !576

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_tid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.214, i32 noundef %and) #13
  br label %rel_skb

do.body6:                                         ; preds = %lookup_tid.exit
  %18 = load i32, ptr @dbg_level, align 4
  %and7 = and i32 %18, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body6.do.end17_crit_edge, label %do.end12

do.body6.do.end17_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

do.end12:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 28
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %skb_ulp_lhdr = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 25
  %23 = ptrtoint ptr %skb_ulp_lhdr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %skb_ulp_lhdr, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.214, ptr noundef nonnull %17, i32 noundef %20, i32 noundef %22, ptr noundef %skb, i32 noundef %9, ptr noundef %24) #13
  br label %do.end17

do.end17:                                         ; preds = %do.end12, %do.body6.do.end17_crit_edge
  %lock = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 26
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %state18 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 28
  %25 = ptrtoint ptr %state18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %26)
  %cmp = icmp ugt i32 %26, 4
  br i1 %cmp, label %do.body26, label %if.end44, !prof !576

do.body26:                                        ; preds = %do.end17
  %27 = load i32, ptr @dbg_level, align 4
  %and27 = and i32 %27, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.body26.do.end40_crit_edge, label %do.end32

do.body26.do.end40_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

do.end32:                                         ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #12
  %flags35 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 3
  %28 = ptrtoint ptr %flags35 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags35, align 4
  %tid36 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 1
  %30 = ptrtoint ptr %tid36 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tid36, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.214, ptr noundef nonnull %17, i32 noundef %26, i32 noundef %29, i32 noundef %31) #13
  br label %do.end40

do.end40:                                         ; preds = %do.end32, %do.body26.do.end40_crit_edge
  %32 = ptrtoint ptr %state18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %33)
  %cmp42.not = icmp eq i32 %33, 8
  br i1 %cmp42.not, label %do.end40.discard_crit_edge, label %do.end40.abort_conn_crit_edge

do.end40.abort_conn_crit_edge:                    ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_conn

do.end40.discard_crit_edge:                       ; preds = %do.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.end44:                                         ; preds = %do.end17
  %skb_ulp_lhdr45 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 25
  %34 = ptrtoint ptr %skb_ulp_lhdr45 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %skb_ulp_lhdr45, align 4
  %tobool46.not = icmp eq ptr %35, null
  br i1 %tobool46.not, label %do.end50, label %if.end54

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %tid52 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 1
  %36 = ptrtoint ptr %tid52 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tid52, align 4
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.221, ptr noundef nonnull @.str.214, i32 noundef %37) #13
  br label %abort_conn

if.end54:                                         ; preds = %if.end44
  %38 = ptrtoint ptr %skb_ulp_lhdr45 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %skb_ulp_lhdr45, align 4
  %ulp_crc = getelementptr inbounds %struct.cpl_rx_data_ddp, ptr %1, i32 0, i32 5
  %39 = ptrtoint ptr %ulp_crc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ulp_crc, align 4
  %cb = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 3
  %41 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %cb, align 8
  %len = getelementptr inbounds %struct.cpl_rx_data_ddp, ptr %1, i32 0, i32 2
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %len, align 2
  %conv = zext i16 %43 to i32
  %pdulen = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 3, i32 4
  %44 = ptrtoint ptr %pdulen to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pdulen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %conv)
  %cmp59.not = icmp eq i32 %45, %conv
  br i1 %cmp59.not, label %if.end54.if.end73_crit_edge, label %do.end64

if.end54.if.end73_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

do.end64:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %tid66 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 1
  %46 = ptrtoint ptr %tid66 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tid66, align 4
  %call72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.224, ptr noundef nonnull @.str.214, i32 noundef %47, i32 noundef %conv, i32 noundef %45) #13
  br label %if.end73

if.end73:                                         ; preds = %do.end64, %if.end54.if.end73_crit_edge
  tail call fastcc void @cxgb4i_process_ddpvld(ptr noundef nonnull %17, ptr noundef nonnull %35, i32 noundef %9)
  %48 = load i32, ptr @dbg_level, align 4
  %and75 = and i32 %48, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end73.do.end88_crit_edge, label %do.end80

if.end73.do.end88_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end88

do.end80:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %flags84 = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 3, i32 16
  %49 = ptrtoint ptr %flags84 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags84, align 8
  %call85 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.227, ptr noundef nonnull @.str.214, ptr noundef nonnull %17, ptr noundef nonnull %35, i32 noundef %50) #13
  br label %do.end88

do.end88:                                         ; preds = %do.end80, %if.end73.do.end88_crit_edge
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %35, i32 0, i32 3, i32 16
  %51 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %52, 64
  store i32 %or.i.i, ptr %flags.i, align 4
  tail call void @cxgbi_conn_pdu_ready(ptr noundef nonnull %17) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %rel_skb

abort_conn:                                       ; preds = %do.end50, %do.end40.abort_conn_crit_edge
  tail call void @send_abort_req(ptr noundef nonnull %17)
  br label %discard

discard:                                          ; preds = %abort_conn, %do.end40.discard_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %rel_skb

rel_skb:                                          ; preds = %discard, %do.end88, %do.end
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_rx_iscsi_cmp(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %cdev, i32 0, i32 36
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 4
  %tids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tids, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %and = and i32 %7, 16777215
  %ddpvld1 = getelementptr inbounds %struct.cpl_rx_iscsi_cmp, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %ddpvld1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ddpvld1, align 4
  %seq2 = getelementptr inbounds %struct.cpl_rx_iscsi_cmp, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %seq2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %seq2, align 4
  %pdu_len_ddp3 = getelementptr inbounds %struct.cpl_rx_iscsi_cmp, ptr %1, i32 0, i32 1
  %12 = ptrtoint ptr %pdu_len_ddp3 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pdu_len_ddp3, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %15
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 2
  %16 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %17)
  %cmp.i = icmp ult i32 %sub.i, %17
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_tid.exit:                                  ; preds = %entry
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 128
  %arrayidx.i = getelementptr ptr, ptr %19, i32 %sub.i
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %21, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %do.body8, !prof !576

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_tid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.240, i32 noundef %and) #13
  br label %rel_skb

do.body8:                                         ; preds = %lookup_tid.exit
  %22 = load i32, ptr @dbg_level, align 4
  %and9 = and i32 %22, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %do.body8.do.end21_crit_edge, label %do.end14

do.body8.do.end21_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

do.end14:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %21, i32 0, i32 28
  %23 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %21, i32 0, i32 3
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %skb_ulp_lhdr = getelementptr inbounds %struct.cxgbi_sock, ptr %21, i32 0, i32 25
  %27 = ptrtoint ptr %skb_ulp_lhdr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %skb_ulp_lhdr, align 4
  %len = getelementptr inbounds %struct.cpl_rx_iscsi_cmp, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %len, align 2
  %conv = zext i16 %30 to i32
  %conv16 = zext i16 %13 to i32
  %status = getelementptr inbounds %struct.cpl_rx_iscsi_cmp, ptr %1, i32 0, i32 6
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %status, align 1
  %conv17 = zext i8 %32 to i32
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242, ptr noundef nonnull @.str.240, ptr noundef nonnull %21, i32 noundef %24, i32 noundef %26, ptr noundef %skb, i32 noundef %9, ptr noundef %28, i32 noundef %conv, i32 noundef %conv16, i32 noundef %conv17) #13
  br label %do.end21

do.end21:                                         ; preds = %do.end14, %do.body8.do.end21_crit_edge
  %lock = getelementptr inbounds %struct.cxgbi_sock, ptr %21, i32 0, i32 26
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %state22 = getelementptr inbounds %struct.cxgbi_sock, ptr %21, i32 0, i32 28
  %33 = ptrtoint ptr %state22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %state22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp = icmp ugt i32 %34, 4
  br i1 %cmp, label %do.body31, label %if.end50, !prof !576

do.body31:                                        ; preds = %do.end21
  %35 = load i32, ptr @dbg_level, align 4
  %and32 = and i32 %35, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.do.end45_crit_edge, label %do.end37

do.body31.do.end45_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end45

do.end37:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  %flags40 = getelementptr inbounds %struct.cxgbi_sock, ptr %21, i32 0, i32 3
  %36 = ptrtoint ptr %flags40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags40, align 4
  %tid41 = getelementptr inbounds %struct.cxgbi_sock, ptr %21, i32 0, i32 1
  %38 = ptrtoint ptr %tid41 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tid41, align 4
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.240, ptr noundef nonnull %21, i32 noundef %34, i32 noundef %37, i32 noundef %39) #13
  br label %do.end45

do.end45:                                         ; preds = %do.end37, %do.body31.do.end45_crit_edge
  %40 = ptrtoint ptr %state22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %state22, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %41)
  %cmp47.not = icmp eq i32 %41, 8
  br i1 %cmp47.not, label %do.end45.discard_crit_edge, label %do.end45.abort_conn_crit_edge

do.end45.abort_conn_crit_edge:                    ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_conn

do.end45.discard_crit_edge:                       ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.end50:                                         ; preds = %do.end21
  %cb = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %seq51 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %42 = ptrtoint ptr %seq51 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %11, ptr %seq51, align 4
  %flags54 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %43 = ptrtoint ptr %flags54 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %flags54, align 8
  %pdulen = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %44 = ptrtoint ptr %pdulen to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %pdulen, align 4
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %47 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %46 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %49 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %50 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %len1.i, align 4
  %sub.i169 = add i32 %51, -24
  store i32 %sub.i169, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %52 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i169, i32 %53)
  %cmp.i170 = icmp ult i32 %sub.i169, %53
  br i1 %cmp.i170, label %do.body4.i, label %__skb_pull.exit, !prof !576

do.body4.i:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !589
  unreachable

__skb_pull.exit:                                  ; preds = %if.end50
  %add.ptr.i = getelementptr i8, ptr %46, i32 24
  %54 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.i, ptr %data, align 4
  %len58 = getelementptr inbounds %struct.cpl_rx_iscsi_cmp, ptr %1, i32 0, i32 2
  %55 = ptrtoint ptr %len58 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %len58, align 2
  %conv59 = zext i16 %56 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i, label %__skb_trim.exit.i, label %if.then.i

if.then.i:                                        ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %conv59) #10
  br label %__pskb_trim.exit

__skb_trim.exit.i:                                ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv59, ptr %len1.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %conv59
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %58 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i, align 8
  br label %__pskb_trim.exit

__pskb_trim.exit:                                 ; preds = %__skb_trim.exit.i, %if.then.i
  %conv61 = zext i16 %13 to i32
  %add = add i32 %11, %conv61
  %rcv_nxt = getelementptr inbounds %struct.cxgbi_sock, ptr %21, i32 0, i32 40
  %59 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add, ptr %rcv_nxt, align 4
  %skb_ulp_lhdr62 = getelementptr inbounds %struct.cxgbi_sock, ptr %21, i32 0, i32 25
  %60 = ptrtoint ptr %skb_ulp_lhdr62 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %skb_ulp_lhdr62, align 4
  %tobool63.not = icmp eq ptr %61, null
  %receive_queue80 = getelementptr inbounds %struct.cxgbi_sock, ptr %21, i32 0, i32 33
  br i1 %tobool63.not, label %if.else79, label %if.then64

if.then64:                                        ; preds = %__pskb_trim.exit
  %62 = ptrtoint ptr %receive_queue80 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %receive_queue80, align 4
  %cmp.i173 = icmp eq ptr %63, %receive_queue80
  %spec.store.select.i = select i1 %cmp.i173, ptr null, ptr %63
  %tobool66.not = icmp eq ptr %spec.store.select.i, null
  br i1 %tobool66.not, label %if.then64.do.end72_crit_edge, label %lor.lhs.false

if.then64.do.end72_crit_edge:                     ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

lor.lhs.false:                                    ; preds = %if.then64
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %spec.store.select.i, i32 0, i32 3, i32 16
  %64 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load volatile i32, ptr %flags.i, align 4
  %66 = and i32 %65, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool68.not = icmp eq i32 %66, 0
  br i1 %tobool68.not, label %lor.lhs.false.do.end72_crit_edge, label %if.end75

lor.lhs.false.do.end72_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end72

do.end72:                                         ; preds = %lor.lhs.false.do.end72_crit_edge, %if.then64.do.end72_crit_edge
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.240, ptr noundef %spec.store.select.i, i32 noundef %and) #13
  br label %abort_conn

if.end75:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  %qlen.i = getelementptr inbounds %struct.cxgbi_sock, ptr %21, i32 0, i32 33, i32 1
  %67 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %qlen.i, align 4
  %sub.i174 = add i32 %68, -1
  store volatile i32 %sub.i174, ptr %qlen.i, align 4
  %69 = ptrtoint ptr %spec.store.select.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %spec.store.select.i, align 8
  %prev9.i = getelementptr inbounds %struct.anon.51, ptr %spec.store.select.i, i32 0, i32 1
  %71 = ptrtoint ptr %prev9.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev9.i, align 4
  store ptr null, ptr %prev9.i, align 4
  store ptr null, ptr %spec.store.select.i, align 8
  %prev17.i = getelementptr inbounds %struct.anon.51, ptr %70, i32 0, i32 1
  %73 = ptrtoint ptr %prev17.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %72, ptr %prev17.i, align 4
  %74 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %70, ptr %72, align 8
  %75 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %flags54, align 4
  %or.i.i = or i32 %76, 32
  store i32 %or.i.i, ptr %flags54, align 4
  %prev.i.i = getelementptr inbounds %struct.cxgbi_sock, ptr %21, i32 0, i32 33, i32 0, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %prev.i.i, align 4
  %79 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %receive_queue80, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %80 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %78, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %skb, ptr %78, align 4
  %82 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %82, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  %83 = load ptr, ptr %prev.i.i, align 4
  store volatile ptr %receive_queue80, ptr %spec.store.select.i, align 8
  store volatile ptr %83, ptr %prev9.i, align 4
  store volatile ptr %spec.store.select.i, ptr %prev.i.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %spec.store.select.i, ptr %83, align 4
  br label %if.end81

if.else79:                                        ; preds = %__pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i180 = getelementptr inbounds %struct.cxgbi_sock, ptr %21, i32 0, i32 33, i32 0, i32 0, i32 1
  %85 = ptrtoint ptr %prev.i.i180 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %prev.i.i180, align 4
  %87 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %receive_queue80, ptr %skb, align 8
  %prev10.i.i.i181 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %88 = ptrtoint ptr %prev10.i.i.i181 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %86, ptr %prev10.i.i.i181, align 4
  store volatile ptr %skb, ptr %prev.i.i180, align 4
  %89 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %89)
  store volatile ptr %skb, ptr %86, align 4
  %qlen.i.i.i182 = getelementptr inbounds %struct.cxgbi_sock, ptr %21, i32 0, i32 33, i32 1
  br label %if.end81

if.end81:                                         ; preds = %if.else79, %if.end75
  %qlen.i.i.i182.sink195 = phi ptr [ %qlen.i.i.i182, %if.else79 ], [ %qlen.i, %if.end75 ]
  %90 = ptrtoint ptr %qlen.i.i.i182.sink195 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %qlen.i.i.i182.sink195, align 4
  %add.i.i.i183 = add i32 %91, 1
  store volatile i32 %add.i.i.i183, ptr %qlen.i.i.i182.sink195, align 4
  %92 = ptrtoint ptr %skb_ulp_lhdr62 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr null, ptr %skb_ulp_lhdr62, align 4
  %93 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %flags54, align 4
  %or.i.i189 = or i32 %94, 208
  store i32 %or.i.i189, ptr %flags54, align 4
  %ulp_crc = getelementptr inbounds %struct.cpl_rx_iscsi_cmp, ptr %1, i32 0, i32 7
  %95 = ptrtoint ptr %ulp_crc to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ulp_crc, align 4
  %97 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %cb, align 8
  tail call fastcc void @cxgb4i_process_ddpvld(ptr noundef nonnull %21, ptr noundef %skb, i32 noundef %9)
  %98 = load i32, ptr @dbg_level, align 4
  %and86 = and i32 %98, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.end81.do.end99_crit_edge, label %do.end91

if.end81.do.end99_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end99

do.end91:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %99 = ptrtoint ptr %flags54 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %flags54, align 8
  %call96 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.250, ptr noundef nonnull @.str.240, ptr noundef nonnull %21, ptr noundef %skb, i32 noundef %100) #13
  br label %do.end99

do.end99:                                         ; preds = %do.end91, %if.end81.do.end99_crit_edge
  tail call void @cxgbi_conn_pdu_ready(ptr noundef nonnull %21) #10
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

abort_conn:                                       ; preds = %do.end72, %do.end45.abort_conn_crit_edge
  tail call void @send_abort_req(ptr noundef nonnull %21)
  br label %discard

discard:                                          ; preds = %abort_conn, %do.end45.discard_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %rel_skb

rel_skb:                                          ; preds = %discard, %do.end
  tail call void @__kfree_skb(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %rel_skb, %do.end99
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_rx_iscsi_data(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %cdev, i32 0, i32 36
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 4
  %tids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tids, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %and = and i32 %7, 16777215
  %pdu_len_ddp1 = getelementptr inbounds %struct.cpl_iscsi_hdr, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %pdu_len_ddp1 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %pdu_len_ddp1, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %11
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %13)
  %cmp.i = icmp ult i32 %sub.i, %13
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_tid.exit:                                  ; preds = %entry
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %5, align 128
  %arrayidx.i = getelementptr ptr, ptr %15, i32 %sub.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %do.body6, !prof !576

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_tid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.252, i32 noundef %and) #13
  br label %rel_skb

do.body6:                                         ; preds = %lookup_tid.exit
  %18 = load i32, ptr @dbg_level, align 4
  %and7 = and i32 %18, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %do.body6.do.end18_crit_edge, label %do.end12

do.body6.do.end18_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18

do.end12:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 28
  %19 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %tid14 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 1
  %23 = ptrtoint ptr %tid14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tid14, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %conv = zext i16 %9 to i32
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.252, ptr noundef nonnull %17, i32 noundef %20, i32 noundef %22, i32 noundef %24, ptr noundef %skb, i32 noundef %26, i32 noundef %conv) #13
  br label %do.end18

do.end18:                                         ; preds = %do.end12, %do.body6.do.end18_crit_edge
  %lock = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 26
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %state19 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 28
  %27 = ptrtoint ptr %state19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %state19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp = icmp ugt i32 %28, 4
  br i1 %cmp, label %do.body28, label %if.end47, !prof !576

do.body28:                                        ; preds = %do.end18
  %29 = load i32, ptr @dbg_level, align 4
  %and29 = and i32 %29, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %do.body28.do.end42_crit_edge, label %do.end34

do.body28.do.end42_crit_edge:                     ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

do.end34:                                         ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #12
  %flags37 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 3
  %30 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags37, align 4
  %tid38 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 1
  %32 = ptrtoint ptr %tid38 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tid38, align 4
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.252, ptr noundef nonnull %17, i32 noundef %28, i32 noundef %31, i32 noundef %33) #13
  br label %do.end42

do.end42:                                         ; preds = %do.end34, %do.body28.do.end42_crit_edge
  %34 = ptrtoint ptr %state19 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %35)
  %cmp44.not = icmp eq i32 %35, 8
  br i1 %cmp44.not, label %do.end42.discard_crit_edge, label %abort_conn

do.end42.discard_crit_edge:                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %discard

if.end47:                                         ; preds = %do.end18
  %seq = getelementptr inbounds %struct.cpl_iscsi_hdr, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %seq, align 4
  %seq48 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %38 = ptrtoint ptr %seq48 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %seq48, align 4
  %flags51 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %39 = ptrtoint ptr %flags51 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %flags51, align 8
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %42 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %41 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %43 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %44 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv.i, ptr %transport_header.i, align 2
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %45 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len1.i, align 4
  %sub.i120 = add i32 %46, -16
  store i32 %sub.i120, ptr %len1.i, align 4
  %data_len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %47 = ptrtoint ptr %data_len.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_len.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i120, i32 %48)
  %cmp.i121 = icmp ult i32 %sub.i120, %48
  br i1 %cmp.i121, label %do.body4.i, label %__skb_pull.exit, !prof !576

do.body4.i:                                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !589
  unreachable

__skb_pull.exit:                                  ; preds = %if.end47
  %add.ptr.i = getelementptr i8, ptr %41, i32 16
  %49 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %add.ptr.i, ptr %data, align 4
  %len53 = getelementptr inbounds %struct.cpl_iscsi_hdr, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %len53 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %len53, align 2
  %conv54 = zext i16 %51 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i = icmp eq i32 %48, 0
  br i1 %tobool.not.i, label %__skb_trim.exit.i, label %if.then.i

if.then.i:                                        ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @___pskb_trim(ptr noundef %skb, i32 noundef %conv54) #10
  br label %__pskb_trim.exit

__skb_trim.exit.i:                                ; preds = %__skb_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  %52 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %conv54, ptr %len1.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %conv54
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %53 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr.i.i.i.i, ptr %tail.i.i.i.i, align 8
  br label %__pskb_trim.exit

__pskb_trim.exit:                                 ; preds = %__skb_trim.exit.i, %if.then.i
  %skb_ulp_lhdr = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 25
  %54 = ptrtoint ptr %skb_ulp_lhdr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %skb_ulp_lhdr, align 4
  %tobool56.not = icmp eq ptr %55, null
  br i1 %tobool56.not, label %if.then57, label %__pskb_trim.exit.if.end59_crit_edge

__pskb_trim.exit.if.end59_crit_edge:              ; preds = %__pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then57:                                        ; preds = %__pskb_trim.exit
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %skb_ulp_lhdr to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %skb, ptr %skb_ulp_lhdr, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %__pskb_trim.exit.if.end59_crit_edge
  %57 = ptrtoint ptr %skb_ulp_lhdr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %skb_ulp_lhdr, align 4
  %flags.i = getelementptr inbounds %struct.sk_buff, ptr %58, i32 0, i32 3, i32 16
  %59 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %60, 32
  store i32 %or.i.i, ptr %flags.i, align 4
  %61 = load i32, ptr @dbg_level, align 4
  %and62 = and i32 %61, 36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %if.end59.do.end74_crit_edge, label %do.end67

if.end59.do.end74_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end74

do.end67:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %state19 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %state19, align 4
  %flags70 = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 3
  %64 = ptrtoint ptr %flags70 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags70, align 4
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.252, ptr noundef nonnull %17, i32 noundef %63, i32 noundef %65, ptr noundef %skb, ptr noundef %58) #13
  br label %do.end74

do.end74:                                         ; preds = %do.end67, %if.end59.do.end74_crit_edge
  %receive_queue = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 33
  %prev.i.i = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 33, i32 0, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i, align 4
  %68 = ptrtoint ptr %skb to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %receive_queue, ptr %skb, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 1
  %69 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %67, ptr %prev10.i.i.i, align 4
  store volatile ptr %skb, ptr %prev.i.i, align 4
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %skb, ptr %67, align 4
  %qlen.i.i.i = getelementptr inbounds %struct.cxgbi_sock, ptr %17, i32 0, i32 33, i32 1
  %71 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %qlen.i.i.i, align 4
  %add.i.i.i = add i32 %72, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i.i.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %cleanup

abort_conn:                                       ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @send_abort_req(ptr noundef nonnull %17)
  br label %discard

discard:                                          ; preds = %abort_conn, %do.end42.discard_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  br label %rel_skb

rel_skb:                                          ; preds = %discard, %do.end
  tail call void @__kfree_skb(ptr noundef %skb) #10
  br label %cleanup

cleanup:                                          ; preds = %rel_skb, %do.end74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @do_fw4_ack(ptr nocapture noundef readonly %cdev, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and = and i32 %3, 16777215
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %cdev, i32 0, i32 36
  %4 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dd_data, align 4
  %tids = getelementptr inbounds %struct.cxgb4_lld_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %tids to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tids, align 4
  %tid_base.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %tid_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tid_base.i, align 4
  %sub.i = sub i32 %and, %9
  %ntids.i = getelementptr inbounds %struct.tid_info, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %ntids.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ntids.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %11)
  %cmp.i = icmp ult i32 %sub.i, %11
  br i1 %cmp.i, label %lookup_tid.exit, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

lookup_tid.exit:                                  ; preds = %entry
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 128
  %arrayidx.i = getelementptr ptr, ptr %13, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %lookup_tid.exit.do.end_crit_edge, label %do.body5, !prof !576

lookup_tid.exit.do.end_crit_edge:                 ; preds = %lookup_tid.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %lookup_tid.exit.do.end_crit_edge, %entry.do.end_crit_edge
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.259, i32 noundef %and) #13
  br label %if.end18

do.body5:                                         ; preds = %lookup_tid.exit
  %16 = load i32, ptr @dbg_level, align 4
  %and6 = and i32 %16, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %do.body5.do.end16_crit_edge, label %do.end11

do.body5.do.end16_crit_edge:                      ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

do.end11:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 28
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %state, align 4
  %flags = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 3
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %tid13 = getelementptr inbounds %struct.cxgbi_sock, ptr %15, i32 0, i32 1
  %21 = ptrtoint ptr %tid13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tid13, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.259, ptr noundef nonnull %15, i32 noundef %18, i32 noundef %20, i32 noundef %22) #13
  br label %do.end16

do.end16:                                         ; preds = %do.end11, %do.body5.do.end16_crit_edge
  %credits = getelementptr inbounds %struct.cpl_fw4_ack, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %credits to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %credits, align 4
  %conv = zext i8 %24 to i32
  %snd_una = getelementptr inbounds %struct.cpl_fw4_ack, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %snd_una to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %snd_una, align 4
  %seq_vld = getelementptr inbounds %struct.cpl_fw4_ack, ptr %1, i32 0, i32 3
  %27 = ptrtoint ptr %seq_vld to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %seq_vld, align 1
  %conv17 = zext i8 %28 to i32
  tail call void @cxgbi_sock_rcv_wr_ack(ptr noundef nonnull %15, i32 noundef %conv, i32 noundef %26, i32 noundef %conv17) #10
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %do.end
  tail call void @__kfree_skb(ptr noundef %skb) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @csk_act_open_retry_timer(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -320
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dd_data = getelementptr inbounds %struct.cxgbi_device, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %dd_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dd_data, align 4
  %adapter_type = getelementptr inbounds %struct.cxgb4_lld_info, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %adapter_type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %adapter_type, align 4
  %6 = and i8 %5, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %6)
  %cmp.i.not = icmp eq i8 %6, 64
  %7 = load i32, ptr @dbg_level, align 4
  %and = and i32 %7, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %state = getelementptr i8, ptr %t, i32 -180
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 4
  %flags = getelementptr i8, ptr %t, i32 -308
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %tid = getelementptr i8, ptr %t, i32 -316
  %12 = ptrtoint ptr %tid to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tid, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.149, ptr noundef %add.ptr, i32 noundef %9, i32 noundef %11, i32 noundef %13) #13
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %14 = load i32, ptr @dbg_level, align 4
  %and.i = and i32 %14, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end5.do.end3.i_crit_edge, label %do.end.i

do.end5.do.end3.i_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end3.i

do.end.i:                                         ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #12
  %refcnt.i = getelementptr i8, ptr %t, i32 -184
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt.i, i32 noundef 4) #10
  %15 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %refcnt.i, align 4
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.149, ptr noundef %add.ptr, i32 noundef %16) #13
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %do.end5.do.end3.i_crit_edge
  %refcnt4.i = getelementptr i8, ptr %t, i32 -184
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt4.i, i32 noundef 4) #10
  tail call void @llvm.prefetch.p0(ptr %refcnt4.i, i32 1, i32 3, i32 1) #10
  %17 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt4.i, ptr %refcnt4.i, i32 1, ptr elementtype(i32) %refcnt4.i) #10, !srcloc !583
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !576

do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %do.end3.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %18 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %.not.i.i.i.i.i = icmp sgt i32 %18, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !581

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__cxgbi_sock_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %do.end3.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt4.i, i32 noundef %.sink.i.i.i.i.i) #10
  br label %__cxgbi_sock_get.exit

__cxgbi_sock_get.exit:                            ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.__cxgbi_sock_get.exit_crit_edge
  %lock = getelementptr i8, ptr %t, i32 -228
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #10
  %. = select i1 %cmp.i.not, i32 48, i32 56
  %.37 = select i1 %cmp.i.not, i32 72, i32 80
  %csk_family = getelementptr i8, ptr %t, i32 -176
  %19 = ptrtoint ptr %csk_family to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %csk_family, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp = icmp eq i32 %20, 2
  br i1 %cmp, label %if.then10, label %if.else12

if.then10:                                        ; preds = %__cxgbi_sock_get.exit
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef %., i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i38 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i38, label %if.then10.if.then16_crit_edge, label %if.then.i

if.then10.if.then16_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.then.i:                                        ; preds = %if.then10
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.i.not.i.i = icmp eq i32 %22, 0
  br i1 %tobool.i.not.i.i, label %__skb_put.exit.i, label %do.body3.i.i, !prof !581

do.body3.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !582
  unreachable

__skb_put.exit.i:                                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %23 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i.i, align 8
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %.
  store ptr %add.ptr.i.i, ptr %tail.i.i.i, align 8
  %len9.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 6
  %25 = ptrtoint ptr %len9.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len9.i.i, align 4
  %add.i.i = add i32 %26, %.
  store i32 %add.i.i, ptr %len9.i.i, align 4
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %27 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %head.i, align 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 %.)
  br label %if.else17

if.else12:                                        ; preds = %__cxgbi_sock_get.exit
  %call.i.i40 = tail call ptr @__alloc_skb(i32 noundef %.37, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #10
  %tobool.not.i41 = icmp eq ptr %call.i.i40, null
  br i1 %tobool.not.i41, label %if.else12.if.then16_crit_edge, label %if.then.i44

if.else12.if.then16_crit_edge:                    ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then16

if.then.i44:                                      ; preds = %if.else12
  %data_len.i.i.i42 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i40, i32 0, i32 7
  %30 = ptrtoint ptr %data_len.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_len.i.i.i42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.i.not.i.i43 = icmp eq i32 %31, 0
  br i1 %tobool.i.not.i.i43, label %__skb_put.exit.i51, label %do.body3.i.i45, !prof !581

do.body3.i.i45:                                   ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2334, 0\0A.popsection", ""() #10, !srcloc !582
  unreachable

__skb_put.exit.i51:                               ; preds = %if.then.i44
  call void @__sanitizer_cov_trace_pc() #12
  %tail.i.i.i46 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i40, i32 0, i32 16
  %32 = ptrtoint ptr %tail.i.i.i46 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i.i46, align 8
  %add.ptr.i.i47 = getelementptr i8, ptr %33, i32 %.37
  store ptr %add.ptr.i.i47, ptr %tail.i.i.i46, align 8
  %len9.i.i48 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i40, i32 0, i32 6
  %34 = ptrtoint ptr %len9.i.i48 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %len9.i.i48, align 4
  %add.i.i49 = add i32 %35, %.37
  store i32 %add.i.i49, ptr %len9.i.i48, align 4
  %head.i50 = getelementptr inbounds %struct.sk_buff, ptr %call.i.i40, i32 0, i32 18
  %36 = ptrtoint ptr %head.i50 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i50, align 8
  %38 = call ptr @memset(ptr %37, i32 0, i32 %.37)
  br label %if.else17

if.then16:                                        ; preds = %if.else12.if.then16_crit_edge, %if.then10.if.then16_crit_edge
  %..sink = phi i32 [ %., %if.then10.if.then16_crit_edge ], [ %.37, %if.else12.if.then16_crit_edge ]
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %..sink, i32 noundef 0) #13
  tail call void @cxgbi_sock_fail_act_open(ptr noundef %add.ptr, i32 noundef -12) #10
  br label %if.end18

if.else17:                                        ; preds = %__skb_put.exit.i51, %__skb_put.exit.i
  %send_act_open_func.0 = phi ptr [ @send_act_open_req, %__skb_put.exit.i ], [ @send_act_open_req6, %__skb_put.exit.i51 ]
  %skb.0 = phi ptr [ %call.i.i, %__skb_put.exit.i ], [ %call.i.i40, %__skb_put.exit.i51 ]
  %39 = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 1
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %add.ptr, ptr %39, align 4
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3
  %41 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %add.ptr, ptr %cb.i, align 8
  %arp_err_handler.i = getelementptr inbounds %struct.sk_buff, ptr %skb.0, i32 0, i32 3, i32 4
  %42 = ptrtoint ptr %arp_err_handler.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @cxgbi_sock_act_open_req_arp_failure, ptr %arp_err_handler.i, align 4
  %l2t = getelementptr i8, ptr %t, i32 -256
  %43 = ptrtoint ptr %l2t to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %l2t, align 4
  tail call void %send_act_open_func.0(ptr noundef %add.ptr, ptr noundef nonnull %skb.0, ptr noundef %44) #10, !callees !591
  br label %if.end18

if.end18:                                         ; preds = %if.else17, %if.then16
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #10
  tail call fastcc void @__cxgbi_sock_put(ptr noundef nonnull @.str.149, ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_fail_act_open(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_rcv_peer_close(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_closed(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_rcv_abort_rpl(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_rcv_close_conn_rpl(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___pskb_trim(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_established(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_conn_tx_open(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cxgb4i_process_ddpvld(ptr noundef %csk, ptr noundef %skb, i32 noundef %ddpvld) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %ddpvld, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %flags = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.230, ptr noundef %csk, ptr noundef %skb, i32 noundef %ddpvld, i32 noundef %1) #13
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %or.i.i = or i32 %3, 512
  store i32 %or.i.i, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and1 = and i32 %ddpvld, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end11_crit_edge, label %do.end5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %flags9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %4 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags9, align 8
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.232, ptr noundef nonnull @.str.230, ptr noundef %csk, ptr noundef %skb, i32 noundef %ddpvld, i32 noundef %5) #13
  %6 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags9, align 4
  %or.i.i63 = or i32 %7, 1024
  store i32 %or.i.i63, ptr %flags9, align 4
  br label %if.end11

if.end11:                                         ; preds = %do.end5, %if.end.if.end11_crit_edge
  %and12 = and i32 %ddpvld, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp eq i32 %and12, 0
  br i1 %tobool13.not, label %if.end11.if.end25_crit_edge, label %do.body15

if.end11.if.end25_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

do.body15:                                        ; preds = %if.end11
  %8 = load i32, ptr @dbg_level, align 4
  %and16 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %do.body15.do.end24_crit_edge, label %do.end20

do.body15.do.end24_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end24

do.end20:                                         ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #12
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.230, ptr noundef %csk, ptr noundef %skb, i32 noundef %ddpvld) #13
  br label %do.end24

do.end24:                                         ; preds = %do.end20, %do.body15.do.end24_crit_edge
  %flags.i64 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %9 = ptrtoint ptr %flags.i64 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i64, align 4
  %or.i.i65 = or i32 %10, 2048
  store i32 %or.i.i65, ptr %flags.i64, align 4
  br label %if.end25

if.end25:                                         ; preds = %do.end24, %if.end11.if.end25_crit_edge
  %and26 = and i32 %ddpvld, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.end25.if.end41_crit_edge, label %land.lhs.true

if.end25.if.end41_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end25
  %flags.i66 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 16
  %11 = ptrtoint ptr %flags.i66 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i66, align 4
  %13 = and i32 %12, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool29.not = icmp eq i32 %13, 0
  br i1 %tobool29.not, label %do.body31, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

do.body31:                                        ; preds = %land.lhs.true
  %14 = load i32, ptr @dbg_level, align 4
  %and32 = and i32 %14, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %tobool33.not = icmp eq i32 %and32, 0
  br i1 %tobool33.not, label %do.body31.do.end40_crit_edge, label %do.end36

do.body31.do.end40_crit_edge:                     ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end40

do.end36:                                         ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #12
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.230, ptr noundef %csk, ptr noundef %skb, i32 noundef %ddpvld) #13
  br label %do.end40

do.end40:                                         ; preds = %do.end36, %do.body31.do.end40_crit_edge
  %15 = ptrtoint ptr %flags.i66 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i66, align 4
  %or.i.i68 = or i32 %16, 256
  store i32 %or.i.i68, ptr %flags.i66, align 4
  br label %if.end41

if.end41:                                         ; preds = %do.end40, %land.lhs.true.if.end41_crit_edge, %if.end25.if.end41_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_conn_pdu_ready(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @cxgbi_sock_rcv_wr_ack(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i24 @llvm.bitreverse.i24(i24) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 268)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 268)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !15, !16, !18, !20, !21, !23, !25, !26, !28, !30, !31, !33, !35, !36, !38, !40, !41, !43, !45, !47, !49, !51, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !69, !71, !72, !73, !74, !75, !77, !78, !79, !81, !83, !84, !85, !86, !88, !89, !90, !92, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !141, !142, !144, !145, !146, !147, !149, !150, !151, !152, !153, !155, !156, !157, !158, !160, !161, !162, !163, !165, !166, !167, !168, !170, !171, !172, !173, !175, !177, !179, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !203, !204, !205, !207, !208, !209, !211, !212, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !226, !228, !229, !230, !231, !233, !234, !235, !236, !238, !239, !240, !241, !243, !244, !245, !246, !248, !249, !250, !251, !253, !254, !255, !256, !258, !259, !260, !262, !263, !264, !266, !267, !268, !270, !271, !272, !274, !275, !276, !278, !279, !280, !282, !283, !284, !286, !287, !288, !290, !291, !292, !293, !295, !296, !297, !298, !300, !301, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !320, !322, !324, !325, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !343, !344, !345, !346, !348, !349, !350, !352, !353, !354, !356, !357, !358, !359, !361, !362, !363, !365, !366, !367, !369, !370, !371, !373, !374, !375, !376, !378, !379, !380, !382, !383, !384, !386, !387, !389, !390, !391, !392, !394, !395, !396, !398, !399, !400, !402, !403, !404, !406, !407, !408, !410, !411, !412, !414, !415, !416, !418, !419, !420, !422, !424, !425, !426, !428, !429, !430, !432, !433, !434, !436, !437, !438, !440, !441, !442, !444, !445, !446, !447, !449, !450, !451, !453, !454, !455, !457, !458, !459, !461, !462, !463, !465, !466, !467, !469, !470, !471, !473, !474, !476, !477, !478, !480, !481, !482, !484, !485, !486, !488, !489, !490, !491, !493, !494, !495, !497, !498, !499, !501, !502, !503, !505, !506, !507, !509, !510, !511, !513, !514, !516, !517, !518, !520, !521, !522, !524, !525, !526, !528, !529, !531, !532, !534, !535, !537, !538, !539, !541, !542, !544, !545, !546, !547, !549, !550, !551, !553, !554, !555, !557, !558, !559, !561, !562}
!llvm.named.register.sp = !{!563}
!llvm.module.flags = !{!564, !565, !566, !567, !568, !569, !570, !571}
!llvm.ident = !{!572}

!0 = !{ptr @__UNIQUE_ID_author689, !1, !"__UNIQUE_ID_author689", i1 false, i1 false}
!1 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 52, i32 1}
!2 = !{ptr @__UNIQUE_ID_description690, !3, !"__UNIQUE_ID_description690", i1 false, i1 false}
!3 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 53, i32 1}
!4 = !{ptr @__UNIQUE_ID_version691, !5, !"__UNIQUE_ID_version691", i1 false, i1 false}
!5 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 54, i32 1}
!6 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @__modver_attr, !5, !"__modver_attr", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_file692, !11, !"__UNIQUE_ID_file692", i1 false, i1 false}
!11 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 55, i32 1}
!12 = !{ptr @__UNIQUE_ID_license693, !11, !"__UNIQUE_ID_license693", i1 false, i1 false}
!13 = !{ptr @__param_dbg_level, !14, !"__param_dbg_level", i1 false, i1 false}
!14 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 57, i32 1}
!15 = !{ptr @__UNIQUE_ID_dbg_leveltype694, !14, !"__UNIQUE_ID_dbg_leveltype694", i1 false, i1 false}
!16 = !{ptr @__UNIQUE_ID_dbg_level695, !17, !"__UNIQUE_ID_dbg_level695", i1 false, i1 false}
!17 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 58, i32 1}
!18 = !{ptr @__param_cxgb4i_rcv_win, !19, !"__param_cxgb4i_rcv_win", i1 false, i1 false}
!19 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 62, i32 1}
!20 = !{ptr @__UNIQUE_ID_cxgb4i_rcv_wintype696, !19, !"__UNIQUE_ID_cxgb4i_rcv_wintype696", i1 false, i1 false}
!21 = !{ptr @__UNIQUE_ID_cxgb4i_rcv_win697, !22, !"__UNIQUE_ID_cxgb4i_rcv_win697", i1 false, i1 false}
!22 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 63, i32 1}
!23 = !{ptr @__param_cxgb4i_snd_win, !24, !"__param_cxgb4i_snd_win", i1 false, i1 false}
!24 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 67, i32 1}
!25 = !{ptr @__UNIQUE_ID_cxgb4i_snd_wintype698, !24, !"__UNIQUE_ID_cxgb4i_snd_wintype698", i1 false, i1 false}
!26 = !{ptr @__UNIQUE_ID_cxgb4i_snd_win699, !27, !"__UNIQUE_ID_cxgb4i_snd_win699", i1 false, i1 false}
!27 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 68, i32 1}
!28 = !{ptr @__param_cxgb4i_rx_credit_thres, !29, !"__param_cxgb4i_rx_credit_thres", i1 false, i1 false}
!29 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 71, i32 1}
!30 = !{ptr @__UNIQUE_ID_cxgb4i_rx_credit_threstype700, !29, !"__UNIQUE_ID_cxgb4i_rx_credit_threstype700", i1 false, i1 false}
!31 = !{ptr @__UNIQUE_ID_cxgb4i_rx_credit_thres701, !32, !"__UNIQUE_ID_cxgb4i_rx_credit_thres701", i1 false, i1 false}
!32 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 72, i32 1}
!33 = !{ptr @__param_cxgb4i_max_connect, !34, !"__param_cxgb4i_max_connect", i1 false, i1 false}
!34 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 76, i32 1}
!35 = !{ptr @__UNIQUE_ID_cxgb4i_max_connecttype702, !34, !"__UNIQUE_ID_cxgb4i_max_connecttype702", i1 false, i1 false}
!36 = !{ptr @__UNIQUE_ID_cxgb4i_max_connect703, !37, !"__UNIQUE_ID_cxgb4i_max_connect703", i1 false, i1 false}
!37 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 77, i32 1}
!38 = !{ptr @__param_cxgb4i_sport_base, !39, !"__param_cxgb4i_sport_base", i1 false, i1 false}
!39 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 80, i32 1}
!40 = !{ptr @__UNIQUE_ID_cxgb4i_sport_basetype704, !39, !"__UNIQUE_ID_cxgb4i_sport_basetype704", i1 false, i1 false}
!41 = !{ptr @__UNIQUE_ID_cxgb4i_sport_base705, !42, !"__UNIQUE_ID_cxgb4i_sport_base705", i1 false, i1 false}
!42 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 81, i32 1}
!43 = !{ptr @__initcall__kmod_cxgb4i__712_2471_cxgb4i_init_module6, !44, !"__initcall__kmod_cxgb4i__712_2471_cxgb4i_init_module6", i1 false, i1 false}
!44 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2471, i32 1}
!45 = !{ptr @__exitcall_cxgb4i_exit_module, !46, !"__exitcall_cxgb4i_exit_module", i1 false, i1 false}
!46 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2472, i32 1}
!47 = !{ptr @dbg_level, !48, !"dbg_level", i1 false, i1 false}
!48 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 34, i32 21}
!49 = !{ptr @cxgb4i_stt, !50, !"cxgb4i_stt", i1 false, i1 false}
!50 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 173, i32 40}
!51 = !{ptr @__param_str_dbg_level, !14, !"__param_str_dbg_level", i1 false, i1 false}
!52 = !{ptr @__param_str_cxgb4i_rcv_win, !19, !"__param_str_cxgb4i_rcv_win", i1 false, i1 false}
!53 = !{ptr @cxgb4i_rcv_win, !54, !"cxgb4i_rcv_win", i1 false, i1 false}
!54 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 61, i32 12}
!55 = !{ptr @__param_str_cxgb4i_snd_win, !24, !"__param_str_cxgb4i_snd_win", i1 false, i1 false}
!56 = !{ptr @cxgb4i_snd_win, !57, !"cxgb4i_snd_win", i1 false, i1 false}
!57 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 66, i32 12}
!58 = !{ptr @__param_str_cxgb4i_rx_credit_thres, !29, !"__param_str_cxgb4i_rx_credit_thres", i1 false, i1 false}
!59 = !{ptr @cxgb4i_rx_credit_thres, !60, !"cxgb4i_rx_credit_thres", i1 false, i1 false}
!60 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 70, i32 12}
!61 = !{ptr @__param_str_cxgb4i_max_connect, !34, !"__param_str_cxgb4i_max_connect", i1 false, i1 false}
!62 = !{ptr @cxgb4i_max_connect, !63, !"cxgb4i_max_connect", i1 false, i1 false}
!63 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 75, i32 21}
!64 = !{ptr @__param_str_cxgb4i_sport_base, !39, !"__param_str_cxgb4i_sport_base", i1 false, i1 false}
!65 = !{ptr @cxgb4i_sport_base, !66, !"cxgb4i_sport_base", i1 false, i1 false}
!66 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 79, i32 23}
!67 = !{ptr @cxgb4_dcb_change, !68, !"cxgb4_dcb_change", i1 false, i1 false}
!68 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 168, i32 30}
!69 = !{ptr @.str.3, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2411, i32 2}
!71 = !{ptr @.str.4, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.5, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @cxgb4_dcb_change_notify._entry, !70, !"_entry", i1 false, i1 false}
!74 = !{ptr @cxgb4_dcb_change_notify._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.7, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2433, i32 5}
!77 = !{ptr @cxgb4_dcb_change_notify._entry.6, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @cxgb4_dcb_change_notify._entry_ptr.8, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @cxgb4i_iscsi_transport, !80, !"cxgb4i_iscsi_transport", i1 false, i1 false}
!80 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 121, i32 31}
!81 = !{ptr @.str.9, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2447, i32 2}
!83 = !{ptr @.str.10, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @cxgb4i_init_module._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @cxgb4i_init_module._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.12, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2455, i32 2}
!88 = !{ptr @cxgb4i_init_module._entry.11, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @cxgb4i_init_module._entry_ptr.13, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @version, !91, !"version", i1 false, i1 false}
!91 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 48, i32 13}
!92 = !{ptr @cxgb4i_uld_info, !93, !"cxgb4i_uld_info", i1 false, i1 false}
!93 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 90, i32 36}
!94 = !{ptr @.str.14, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2223, i32 3}
!96 = !{ptr @.str.15, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @t4_uld_add._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @t4_uld_add._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.17, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2226, i32 2}
!101 = !{ptr @t4_uld_add._entry.16, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @t4_uld_add._entry_ptr.18, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.20, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2231, i32 3}
!105 = !{ptr @t4_uld_add._entry.19, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @t4_uld_add._entry_ptr.21, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.23, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2250, i32 2}
!109 = !{ptr @t4_uld_add._entry.22, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @t4_uld_add._entry_ptr.24, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.26, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2255, i32 3}
!113 = !{ptr @t4_uld_add._entry.25, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @t4_uld_add._entry_ptr.27, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.29, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2270, i32 4}
!117 = !{ptr @t4_uld_add._entry.28, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @t4_uld_add._entry_ptr.30, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.32, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2274, i32 3}
!121 = !{ptr @t4_uld_add._entry.31, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @t4_uld_add._entry_ptr.33, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.35, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2285, i32 3}
!125 = !{ptr @t4_uld_add._entry.34, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @t4_uld_add._entry_ptr.36, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.37, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2159, i32 3}
!129 = !{ptr @.str.38, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @cxgb4i_ddp_init._entry, !128, !"_entry", i1 false, i1 false}
!131 = !{ptr @cxgb4i_ddp_init._entry_ptr, !128, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.40, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2171, i32 2}
!134 = !{ptr @cxgb4i_ddp_init._entry.39, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @cxgb4i_ddp_init._entry_ptr.41, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.42, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/net/ethernet/chelsio/libcxgb/libcxgb_ppm.h", i32 309, i32 2}
!138 = !{ptr @.str.43, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.44, !137, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @cxgbi_tagmask_check._entry, !137, !"_entry", i1 false, i1 false}
!141 = !{ptr @cxgbi_tagmask_check._entry_ptr, !137, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.45, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2135, i32 2}
!144 = !{ptr @.str.46, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @ddp_setup_conn_digest._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @ddp_setup_conn_digest._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.47, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/scsi/cxgbi/cxgb4i/../libcxgbi.h", i32 374, i32 3}
!149 = !{ptr @.str.48, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @.str.49, !148, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @alloc_wr._entry, !148, !"_entry", i1 false, i1 false}
!152 = !{ptr @alloc_wr._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.50, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2099, i32 2}
!155 = !{ptr @.str.51, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @ddp_setup_conn_pgidx._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @ddp_setup_conn_pgidx._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.52, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2004, i32 3}
!160 = !{ptr @.str.53, !159, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ddp_ppod_init_idata._entry, !159, !"_entry", i1 false, i1 false}
!162 = !{ptr @ddp_ppod_init_idata._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.54, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1963, i32 2}
!165 = !{ptr @.str.55, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @cxgb4i_ofld_init._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @cxgb4i_ofld_init._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.56, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1691, i32 2}
!170 = !{ptr @.str.57, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @release_offload_resources._entry, !169, !"_entry", i1 false, i1 false}
!172 = !{ptr @release_offload_resources._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @__func__.l2t_put, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1680, i32 3}
!175 = !{ptr @__func__.free_atid, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 886, i32 3}
!177 = !{ptr @.str.58, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/scsi/cxgbi/cxgb4i/../libcxgbi.h", i32 287, i32 2}
!179 = !{ptr @.str.59, !178, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @cxgbi_sock_clear_flag._entry, !178, !"_entry", i1 false, i1 false}
!181 = !{ptr @cxgbi_sock_clear_flag._entry_ptr, !178, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.60, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/scsi/cxgbi/cxgb4i/../libcxgbi.h", i32 323, i32 2}
!184 = !{ptr @.str.61, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @__cxgbi_sock_put._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @__cxgbi_sock_put._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.62, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/scsi/cxgbi/cxgb4i/../libcxgbi.h", i32 314, i32 3}
!189 = !{ptr @.str.63, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @cxgbi_sock_free._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @cxgbi_sock_free._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.64, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 773, i32 3}
!194 = !{ptr @.str.65, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @push_tx_frames._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @push_tx_frames._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.67, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 815, i32 4}
!199 = !{ptr @push_tx_frames._entry.66, !198, !"_entry", i1 false, i1 false}
!200 = !{ptr @push_tx_frames._entry_ptr.68, !198, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.70, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 833, i32 3}
!203 = !{ptr @push_tx_frames._entry.69, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @push_tx_frames._entry_ptr.71, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.73, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 871, i32 3}
!207 = !{ptr @push_tx_frames._entry.72, !206, !"_entry", i1 false, i1 false}
!208 = !{ptr @push_tx_frames._entry_ptr.74, !206, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.75, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 655, i32 3}
!211 = !{ptr @send_tx_flowc_wr._rs, !210, !"_rs", i1 false, i1 false}
!212 = !{ptr @__func__.send_tx_flowc_wr, !210, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.76, !210, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @send_tx_flowc_wr._entry, !210, !"_entry", i1 false, i1 false}
!215 = !{ptr @send_tx_flowc_wr._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.78, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 666, i32 2}
!218 = !{ptr @send_tx_flowc_wr._entry.77, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @send_tx_flowc_wr._entry_ptr.79, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.80, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/scsi/cxgbi/cxgb4i/../libcxgbi.h", i32 278, i32 2}
!222 = !{ptr @cxgbi_sock_set_flag._entry, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @cxgbi_sock_set_flag._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @ulp2_extra_len, !225, !"ulp2_extra_len", i1 false, i1 false}
!225 = !{!"../drivers/scsi/cxgbi/cxgb4i/../libcxgbi.h", i32 92, i32 27}
!226 = !{ptr @.str.81, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 705, i32 2}
!228 = !{ptr @.str.82, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @cxgb4i_make_tx_iso_cpl._entry, !227, !"_entry", i1 false, i1 false}
!230 = !{ptr @cxgb4i_make_tx_iso_cpl._entry_ptr, !227, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.83, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 500, i32 2}
!233 = !{ptr @.str.84, !232, !"<string literal>", i1 false, i1 false}
!234 = !{ptr @send_abort_req._entry, !232, !"_entry", i1 false, i1 false}
!235 = !{ptr @send_abort_req._entry_ptr, !232, !"_entry_ptr", i1 false, i1 false}
!236 = !{ptr @.str.85, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/scsi/cxgbi/cxgb4i/../libcxgbi.h", i32 302, i32 2}
!238 = !{ptr @.str.86, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @cxgbi_sock_set_state._entry, !237, !"_entry", i1 false, i1 false}
!240 = !{ptr @cxgbi_sock_set_state._entry_ptr, !237, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.87, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 465, i32 2}
!243 = !{ptr @.str.88, !242, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @abort_arp_failure._entry, !242, !"_entry", i1 false, i1 false}
!245 = !{ptr @abort_arp_failure._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.89, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 446, i32 2}
!248 = !{ptr @.str.90, !247, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @send_close_req._entry, !247, !"_entry", i1 false, i1 false}
!250 = !{ptr @send_close_req._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.91, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 535, i32 2}
!253 = !{ptr @.str.92, !252, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @send_rx_credits._entry, !252, !"_entry", i1 false, i1 false}
!255 = !{ptr @send_rx_credits._entry_ptr, !252, !"_entry_ptr", i1 false, i1 false}
!256 = !{ptr @.str.94, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 541, i32 3}
!258 = !{ptr @send_rx_credits._entry.93, !257, !"_entry", i1 false, i1 false}
!259 = !{ptr @send_rx_credits._entry_ptr.95, !257, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @.str.96, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1781, i32 2}
!262 = !{ptr @init_act_open._entry, !261, !"_entry", i1 false, i1 false}
!263 = !{ptr @init_act_open._entry_ptr, !261, !"_entry_ptr", i1 false, i1 false}
!264 = !{ptr @.str.98, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1792, i32 3}
!266 = !{ptr @init_act_open._entry.97, !265, !"_entry", i1 false, i1 false}
!267 = !{ptr @init_act_open._entry_ptr.99, !265, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.101, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1799, i32 3}
!270 = !{ptr @init_act_open._entry.100, !269, !"_entry", i1 false, i1 false}
!271 = !{ptr @init_act_open._entry_ptr.102, !269, !"_entry_ptr", i1 false, i1 false}
!272 = !{ptr @.str.104, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1808, i32 3}
!274 = !{ptr @init_act_open._entry.103, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @init_act_open._entry_ptr.105, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.107, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1824, i32 3}
!278 = !{ptr @init_act_open._entry.106, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @init_act_open._entry_ptr.108, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{ptr @.str.110, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1890, i32 2}
!282 = !{ptr @init_act_open._entry.109, !281, !"_entry", i1 false, i1 false}
!283 = !{ptr @init_act_open._entry_ptr.111, !281, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.113, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1897, i32 3}
!286 = !{ptr @init_act_open._entry.112, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @init_act_open._entry_ptr.114, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @.str.115, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/scsi/cxgbi/cxgb4i/../libcxgbi.h", i32 332, i32 2}
!290 = !{ptr @.str.116, !289, !"<string literal>", i1 false, i1 false}
!291 = !{ptr @__cxgbi_sock_get._entry, !289, !"_entry", i1 false, i1 false}
!292 = !{ptr @__cxgbi_sock_get._entry_ptr, !289, !"_entry_ptr", i1 false, i1 false}
!293 = !{ptr @.str.117, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1759, i32 2}
!295 = !{ptr @.str.118, !294, !"<string literal>", i1 false, i1 false}
!296 = !{ptr @get_iscsi_dcb_priority._entry, !294, !"_entry", i1 false, i1 false}
!297 = !{ptr @get_iscsi_dcb_priority._entry_ptr, !294, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.119, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 248, i32 3}
!300 = !{ptr @.str.120, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @send_act_open_req._entry, !299, !"_entry", i1 false, i1 false}
!302 = !{ptr @send_act_open_req._entry_ptr, !299, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.122, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 276, i32 3}
!305 = !{ptr @send_act_open_req._entry.121, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @send_act_open_req._entry_ptr.123, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.125, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 308, i32 3}
!309 = !{ptr @send_act_open_req._entry.124, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @send_act_open_req._entry_ptr.126, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.128, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 317, i32 2}
!313 = !{ptr @send_act_open_req._entry.127, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @send_act_open_req._entry_ptr.129, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.130, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 429, i32 2}
!317 = !{ptr @.str.131, !316, !"<string literal>", i1 false, i1 false}
!318 = !{ptr @send_act_open_req6._entry, !316, !"_entry", i1 false, i1 false}
!319 = !{ptr @send_act_open_req6._entry_ptr, !316, !"_entry_ptr", i1 false, i1 false}
!320 = !{ptr @cxgb4i_host_template, !321, !"cxgb4i_host_template", i1 false, i1 false}
!321 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 101, i32 34}
!322 = !{ptr @.str.132, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2324, i32 4}
!324 = !{ptr @.str.133, !323, !"<string literal>", i1 false, i1 false}
!325 = !{ptr @t4_uld_rx_handler._entry, !323, !"_entry", i1 false, i1 false}
!326 = !{ptr @t4_uld_rx_handler._entry_ptr, !323, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.135, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2337, i32 2}
!329 = !{ptr @t4_uld_rx_handler._entry.134, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @t4_uld_rx_handler._entry_ptr.136, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.138, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2341, i32 3}
!333 = !{ptr @t4_uld_rx_handler._entry.137, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @t4_uld_rx_handler._entry_ptr.139, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.141, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2348, i32 2}
!337 = !{ptr @t4_uld_rx_handler._entry.140, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @t4_uld_rx_handler._entry_ptr.142, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @cxgb4i_cplhandlers, !340, !"cxgb4i_cplhandlers", i1 false, i1 false}
!340 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1926, i32 31}
!341 = !{ptr @.str.144, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1055, i32 3}
!343 = !{ptr @.str.145, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @do_act_open_rpl._entry, !342, !"_entry", i1 false, i1 false}
!345 = !{ptr @do_act_open_rpl._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.147, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1059, i32 2}
!348 = !{ptr @do_act_open_rpl._entry.146, !347, !"_entry", i1 false, i1 false}
!349 = !{ptr @do_act_open_rpl._entry_ptr.148, !347, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @.str.149, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 996, i32 2}
!352 = !{ptr @csk_act_open_retry_timer._entry, !351, !"_entry", i1 false, i1 false}
!353 = !{ptr @csk_act_open_retry_timer._entry_ptr, !351, !"_entry_ptr", i1 false, i1 false}
!354 = !{ptr @.str.150, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1101, i32 3}
!356 = !{ptr @.str.151, !355, !"<string literal>", i1 false, i1 false}
!357 = !{ptr @do_peer_close._entry, !355, !"_entry", i1 false, i1 false}
!358 = !{ptr @do_peer_close._entry_ptr, !355, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.153, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1104, i32 2}
!361 = !{ptr @do_peer_close._entry.152, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @do_peer_close._entry_ptr.154, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.155, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1162, i32 3}
!365 = !{ptr @do_abort_req_rss._entry, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @do_abort_req_rss._entry_ptr, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.157, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1166, i32 2}
!369 = !{ptr @do_abort_req_rss._entry.156, !368, !"_entry", i1 false, i1 false}
!370 = !{ptr @do_abort_req_rss._entry_ptr.158, !368, !"_entry_ptr", i1 false, i1 false}
!371 = !{ptr @.str.159, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 513, i32 2}
!373 = !{ptr @.str.160, !372, !"<string literal>", i1 false, i1 false}
!374 = !{ptr @send_abort_rpl._entry, !372, !"_entry", i1 false, i1 false}
!375 = !{ptr @send_abort_rpl._entry_ptr, !372, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.161, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1211, i32 2}
!378 = !{ptr @do_abort_rpl_rss._entry, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @do_abort_rpl_rss._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.162, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1122, i32 3}
!382 = !{ptr @do_close_con_rpl._entry, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @do_close_con_rpl._entry_ptr, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @do_close_con_rpl._entry.163, !385, !"_entry", i1 false, i1 false}
!385 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1125, i32 2}
!386 = !{ptr @do_close_con_rpl._entry_ptr.164, !385, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.165, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1255, i32 3}
!389 = !{ptr @.str.166, !388, !"<string literal>", i1 false, i1 false}
!390 = !{ptr @do_rx_iscsi_hdr._entry, !388, !"_entry", i1 false, i1 false}
!391 = !{ptr @do_rx_iscsi_hdr._entry_ptr, !388, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.168, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1259, i32 2}
!394 = !{ptr @do_rx_iscsi_hdr._entry.167, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @do_rx_iscsi_hdr._entry_ptr.169, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.171, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1267, i32 3}
!398 = !{ptr @do_rx_iscsi_hdr._entry.170, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @do_rx_iscsi_hdr._entry_ptr.172, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.174, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1287, i32 3}
!402 = !{ptr @do_rx_iscsi_hdr._entry.173, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @do_rx_iscsi_hdr._entry_ptr.175, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.177, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1295, i32 4}
!406 = !{ptr @do_rx_iscsi_hdr._entry.176, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @do_rx_iscsi_hdr._entry_ptr.178, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.180, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1310, i32 4}
!410 = !{ptr @do_rx_iscsi_hdr._entry.179, !409, !"_entry", i1 false, i1 false}
!411 = !{ptr @do_rx_iscsi_hdr._entry_ptr.181, !409, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.183, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1322, i32 3}
!414 = !{ptr @do_rx_iscsi_hdr._entry.182, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @do_rx_iscsi_hdr._entry_ptr.184, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.186, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1332, i32 3}
!418 = !{ptr @do_rx_iscsi_hdr._entry.185, !417, !"_entry", i1 false, i1 false}
!419 = !{ptr @do_rx_iscsi_hdr._entry_ptr.187, !417, !"_entry_ptr", i1 false, i1 false}
!420 = distinct !{null, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../include/linux/skbuff.h", i32 2789, i32 6}
!422 = !{ptr @.str.189, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1233, i32 3}
!424 = !{ptr @do_rx_data._entry, !423, !"_entry", i1 false, i1 false}
!425 = !{ptr @do_rx_data._entry_ptr, !423, !"_entry_ptr", i1 false, i1 false}
!426 = !{ptr @.str.191, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1236, i32 3}
!428 = !{ptr @do_rx_data._entry.190, !427, !"_entry", i1 false, i1 false}
!429 = !{ptr @do_rx_data._entry_ptr.192, !427, !"_entry_ptr", i1 false, i1 false}
!430 = !{ptr @.str.193, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1633, i32 3}
!432 = !{ptr @do_set_tcb_rpl._entry, !431, !"_entry", i1 false, i1 false}
!433 = !{ptr @do_set_tcb_rpl._entry_ptr, !431, !"_entry_ptr", i1 false, i1 false}
!434 = !{ptr @.str.195, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1637, i32 2}
!436 = !{ptr @do_set_tcb_rpl._entry.194, !435, !"_entry", i1 false, i1 false}
!437 = !{ptr @do_set_tcb_rpl._entry_ptr.196, !435, !"_entry_ptr", i1 false, i1 false}
!438 = !{ptr @.str.198, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1642, i32 3}
!440 = !{ptr @do_set_tcb_rpl._entry.197, !439, !"_entry", i1 false, i1 false}
!441 = !{ptr @do_set_tcb_rpl._entry_ptr.199, !439, !"_entry_ptr", i1 false, i1 false}
!442 = !{ptr @.str.200, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 903, i32 3}
!444 = !{ptr @.str.201, !443, !"<string literal>", i1 false, i1 false}
!445 = !{ptr @do_act_establish._entry, !443, !"_entry", i1 false, i1 false}
!446 = !{ptr @do_act_establish._entry_ptr, !443, !"_entry_ptr", i1 false, i1 false}
!447 = !{ptr @.str.203, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 908, i32 3}
!449 = !{ptr @do_act_establish._entry.202, !448, !"_entry", i1 false, i1 false}
!450 = !{ptr @do_act_establish._entry_ptr.204, !448, !"_entry_ptr", i1 false, i1 false}
!451 = !{ptr @.str.206, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 913, i32 2}
!453 = !{ptr @do_act_establish._entry.205, !452, !"_entry", i1 false, i1 false}
!454 = !{ptr @do_act_establish._entry_ptr.207, !452, !"_entry_ptr", i1 false, i1 false}
!455 = !{ptr @.str.209, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 928, i32 3}
!457 = !{ptr @do_act_establish._entry.208, !456, !"_entry", i1 false, i1 false}
!458 = !{ptr @do_act_establish._entry_ptr.210, !456, !"_entry_ptr", i1 false, i1 false}
!459 = !{ptr @.str.212, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 950, i32 2}
!461 = !{ptr @do_act_establish._entry.211, !460, !"_entry", i1 false, i1 false}
!462 = !{ptr @do_act_establish._entry_ptr.213, !460, !"_entry_ptr", i1 false, i1 false}
!463 = !{ptr @.str.214, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1457, i32 3}
!465 = !{ptr @do_rx_data_ddp._entry, !464, !"_entry", i1 false, i1 false}
!466 = !{ptr @do_rx_data_ddp._entry_ptr, !464, !"_entry_ptr", i1 false, i1 false}
!467 = !{ptr @.str.216, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1461, i32 2}
!469 = !{ptr @do_rx_data_ddp._entry.215, !468, !"_entry", i1 false, i1 false}
!470 = !{ptr @do_rx_data_ddp._entry_ptr.217, !468, !"_entry_ptr", i1 false, i1 false}
!471 = !{ptr @do_rx_data_ddp._entry.218, !472, !"_entry", i1 false, i1 false}
!472 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1468, i32 3}
!473 = !{ptr @do_rx_data_ddp._entry_ptr.219, !472, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.221, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1478, i32 3}
!476 = !{ptr @do_rx_data_ddp._entry.220, !475, !"_entry", i1 false, i1 false}
!477 = !{ptr @do_rx_data_ddp._entry_ptr.222, !475, !"_entry_ptr", i1 false, i1 false}
!478 = !{ptr @.str.224, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1488, i32 3}
!480 = !{ptr @do_rx_data_ddp._entry.223, !479, !"_entry", i1 false, i1 false}
!481 = !{ptr @do_rx_data_ddp._entry_ptr.225, !479, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @.str.227, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1493, i32 2}
!484 = !{ptr @do_rx_data_ddp._entry.226, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @do_rx_data_ddp._entry_ptr.228, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.229, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1417, i32 3}
!488 = !{ptr @.str.230, !487, !"<string literal>", i1 false, i1 false}
!489 = !{ptr @cxgb4i_process_ddpvld._entry, !487, !"_entry", i1 false, i1 false}
!490 = !{ptr @cxgb4i_process_ddpvld._entry_ptr, !487, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.232, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1423, i32 3}
!493 = !{ptr @cxgb4i_process_ddpvld._entry.231, !492, !"_entry", i1 false, i1 false}
!494 = !{ptr @cxgb4i_process_ddpvld._entry_ptr.233, !492, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.235, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1429, i32 3}
!497 = !{ptr @cxgb4i_process_ddpvld._entry.234, !496, !"_entry", i1 false, i1 false}
!498 = !{ptr @cxgb4i_process_ddpvld._entry_ptr.236, !496, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.238, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1437, i32 3}
!501 = !{ptr @cxgb4i_process_ddpvld._entry.237, !500, !"_entry", i1 false, i1 false}
!502 = !{ptr @cxgb4i_process_ddpvld._entry_ptr.239, !500, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.240, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1525, i32 3}
!505 = !{ptr @do_rx_iscsi_cmp._entry, !504, !"_entry", i1 false, i1 false}
!506 = !{ptr @do_rx_iscsi_cmp._entry_ptr, !504, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.242, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1529, i32 2}
!509 = !{ptr @do_rx_iscsi_cmp._entry.241, !508, !"_entry", i1 false, i1 false}
!510 = !{ptr @do_rx_iscsi_cmp._entry_ptr.243, !508, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @do_rx_iscsi_cmp._entry.244, !512, !"_entry", i1 false, i1 false}
!512 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1538, i32 3}
!513 = !{ptr @do_rx_iscsi_cmp._entry_ptr.245, !512, !"_entry_ptr", i1 false, i1 false}
!514 = !{ptr @.str.247, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1562, i32 4}
!516 = !{ptr @do_rx_iscsi_cmp._entry.246, !515, !"_entry", i1 false, i1 false}
!517 = !{ptr @do_rx_iscsi_cmp._entry_ptr.248, !515, !"_entry_ptr", i1 false, i1 false}
!518 = !{ptr @.str.250, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1586, i32 2}
!520 = !{ptr @do_rx_iscsi_cmp._entry.249, !519, !"_entry", i1 false, i1 false}
!521 = !{ptr @do_rx_iscsi_cmp._entry_ptr.251, !519, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @.str.252, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1361, i32 3}
!524 = !{ptr @do_rx_iscsi_data._entry, !523, !"_entry", i1 false, i1 false}
!525 = !{ptr @do_rx_iscsi_data._entry_ptr, !523, !"_entry_ptr", i1 false, i1 false}
!526 = !{ptr @do_rx_iscsi_data._entry.253, !527, !"_entry", i1 false, i1 false}
!527 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1365, i32 2}
!528 = !{ptr @do_rx_iscsi_data._entry_ptr.254, !527, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @do_rx_iscsi_data._entry.255, !530, !"_entry", i1 false, i1 false}
!530 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1373, i32 3}
!531 = !{ptr @do_rx_iscsi_data._entry_ptr.256, !530, !"_entry_ptr", i1 false, i1 false}
!532 = !{ptr @do_rx_iscsi_data._entry.257, !533, !"_entry", i1 false, i1 false}
!533 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1396, i32 2}
!534 = !{ptr @do_rx_iscsi_data._entry_ptr.258, !533, !"_entry_ptr", i1 false, i1 false}
!535 = !{ptr @.str.259, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1612, i32 3}
!537 = !{ptr @do_fw4_ack._entry, !536, !"_entry", i1 false, i1 false}
!538 = !{ptr @do_fw4_ack._entry_ptr, !536, !"_entry_ptr", i1 false, i1 false}
!539 = !{ptr @do_fw4_ack._entry.260, !540, !"_entry", i1 false, i1 false}
!540 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 1614, i32 3}
!541 = !{ptr @do_fw4_ack._entry_ptr.261, !540, !"_entry_ptr", i1 false, i1 false}
!542 = !{ptr @.str.262, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2358, i32 3}
!544 = !{ptr @.str.263, !543, !"<string literal>", i1 false, i1 false}
!545 = !{ptr @t4_uld_state_change._entry, !543, !"_entry", i1 false, i1 false}
!546 = !{ptr @t4_uld_state_change._entry_ptr, !543, !"_entry_ptr", i1 false, i1 false}
!547 = !{ptr @.str.265, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2361, i32 3}
!549 = !{ptr @t4_uld_state_change._entry.264, !548, !"_entry", i1 false, i1 false}
!550 = !{ptr @t4_uld_state_change._entry_ptr.266, !548, !"_entry_ptr", i1 false, i1 false}
!551 = !{ptr @.str.268, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2365, i32 3}
!553 = !{ptr @t4_uld_state_change._entry.267, !552, !"_entry", i1 false, i1 false}
!554 = !{ptr @t4_uld_state_change._entry_ptr.269, !552, !"_entry_ptr", i1 false, i1 false}
!555 = !{ptr @.str.271, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2368, i32 3}
!557 = !{ptr @t4_uld_state_change._entry.270, !556, !"_entry", i1 false, i1 false}
!558 = !{ptr @t4_uld_state_change._entry_ptr.272, !556, !"_entry_ptr", i1 false, i1 false}
!559 = !{ptr @.str.274, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/scsi/cxgbi/cxgb4i/cxgb4i.c", i32 2372, i32 3}
!561 = !{ptr @t4_uld_state_change._entry.273, !560, !"_entry", i1 false, i1 false}
!562 = !{ptr @t4_uld_state_change._entry_ptr.275, !560, !"_entry_ptr", i1 false, i1 false}
!563 = !{!"sp"}
!564 = !{i32 1, !"wchar_size", i32 2}
!565 = !{i32 1, !"min_enum_size", i32 4}
!566 = !{i32 8, !"branch-target-enforcement", i32 0}
!567 = !{i32 8, !"sign-return-address", i32 0}
!568 = !{i32 8, !"sign-return-address-all", i32 0}
!569 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!570 = !{i32 7, !"uwtable", i32 1}
!571 = !{i32 7, !"frame-pointer", i32 2}
!572 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!573 = !{i8 0, i8 9}
!574 = !{i64 670749, i64 670810}
!575 = !{i64 673481}
!576 = !{!"branch_weights", i32 1, i32 2000}
!577 = !{i64 673766}
!578 = !{i32 0, i32 33}
!579 = !{i64 6513866}
!580 = !{i64 2160497810}
!581 = !{!"branch_weights", i32 2000, i32 1}
!582 = !{i64 2155107152, i64 2155107640, i64 2155107189, i64 2155107245, i64 2155107279, i64 2155107303, i64 2155107344, i64 2155107365, i64 2155107393, i64 2155107427}
!583 = !{i64 2148279798, i64 2148279830, i64 2148279859, i64 2148279893, i64 2148279924, i64 2148279947}
!584 = !{!"branch_weights", i32 2002, i32 2000}
!585 = !{!"auto-init"}
!586 = !{i64 2148367799}
!587 = !{i64 2148282263, i64 2148282295, i64 2148282324, i64 2148282358, i64 2148282389, i64 2148282412}
!588 = !{i64 2149374247}
!589 = !{i64 2155110120, i64 2155110608, i64 2155110157, i64 2155110213, i64 2155110247, i64 2155110271, i64 2155110312, i64 2155110333, i64 2155110361, i64 2155110395}
!590 = !{i64 2148278268, i64 2148278294, i64 2148278323, i64 2148278357, i64 2148278388, i64 2148278411}
!591 = !{ptr @send_act_open_req, ptr @send_act_open_req6}
