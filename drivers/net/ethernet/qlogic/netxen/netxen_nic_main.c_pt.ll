; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c_pt.bc'
source_filename = "../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c"
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_error_handlers = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netxen_brdinfo = type { i32, i32, [32 x i8] }
%struct.atomic_t = type { i32 }
%struct.netxen_legacy_intr_set = type { i32, i32, i32, i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ethtool_ops = type { i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bin_attribute = type { %struct.attribute, i32, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.91, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.91 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.netxen_adapter = type { %struct.netxen_hardware_context, ptr, ptr, %struct.list_head, %struct.list_head, %struct.spinlock, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, [6 x i8], %struct.netxen_adapter_stats, %struct.netxen_recv_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x %struct.msix_entry], %struct.netxen_dummy_dma, %struct.delayed_work, %struct.work_struct, %struct.nx_nic_intr_coalesce_t, i32, i32, i32, ptr, %struct.netxen_minidump, i32 }
%struct.netxen_hardware_context = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, %struct.rwlock_t, %struct.spinlock, i8, i8, i8, i8, i16, i16 }
%struct.netxen_adapter_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.netxen_recv_context = type { i32, i16, i16, ptr, ptr, ptr, i32 }
%struct.msix_entry = type { i32, i16 }
%struct.netxen_dummy_dma = type { ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.nx_nic_intr_coalesce_t = type { i16, i16, i16, i16, i32, i32, %union.nx_nic_intr_coalesce_data_t, %union.nx_nic_intr_coalesce_data_t, %union.nx_nic_intr_coalesce_data_t, %union.nx_nic_intr_coalesce_data_t }
%union.nx_nic_intr_coalesce_data_t = type { i64 }
%struct.netxen_minidump = type { i32, i8, i8, i8, i8, i32, i32, i32, i32, i64, ptr, ptr }
%struct.nx_host_tx_ring = type { i32, ptr, i32, ptr, ptr, i32, ptr, ptr, ptr, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.148, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.148 = type { ptr }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.nx_host_sds_ring = type { i32, i32, ptr, ptr, ptr, ptr, %struct.napi_struct, [3 x %struct.list_head], i32, i32, [20 x i8] }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.149, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.149 = type { ptr }
%struct.nx_host_rds_ring = type { i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, i32 }
%struct.anon.150 = type { i16, i16, i16, i16 }
%struct.nx_ip_list = type { %struct.list_head, i32, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
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
%struct.netxen_cmd_buffer = type { ptr, [18 x %struct.netxen_skb_frag], i32 }
%struct.netxen_skb_frag = type { i64, i64 }
%struct.page = type { i32, %union.anon.2, %union.anon.124, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.124 = type { %struct.atomic_t }
%struct.cmd_desc_type0 = type { i8, i8, i16, i32, i64, i16, i16, i8, i8, i16, i64, i64, [4 x i16], i64, i32, i16, i16 }
%struct.vlan_ethhdr = type { %union.anon.151, i16, i16, i16 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { [6 x i8], [6 x i8] }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.sockaddr = type { i16, [14 x i8] }
%struct.rtnl_link_stats64 = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.callback_head = type { ptr, ptr }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }

@__UNIQUE_ID_description500 = internal constant [76 x i8] c"netxen_nic.description=QLogic/NetXen (1/10) GbE Intelligent Ethernet Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file501 = internal constant [62 x i8] c"netxen_nic.file=drivers/net/ethernet/qlogic/netxen/netxen_nic\00", section ".modinfo", align 1
@__UNIQUE_ID_license502 = internal constant [23 x i8] c"netxen_nic.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version503 = internal constant [26 x i8] c"netxen_nic.version=4.0.82\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"netxen_nic\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"4.0.82\00", [25 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_firmware504 = internal constant [31 x i8] c"netxen_nic.firmware=phanfw.bin\00", section ".modinfo", align 1
@netxen_nic_driver_name = dso_local global { [11 x i8], [21 x i8] } { [11 x i8] c"netxen_nic\00", [21 x i8] zeroinitializer }, align 32
@__param_str_auto_fw_reset = internal constant [25 x i8] c"netxen_nic.auto_fw_reset\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@auto_fw_reset = internal global { i32, [28 x i8] } { i32 -284119278, [28 x i8] zeroinitializer }, align 32
@__param_auto_fw_reset = internal constant %struct.kernel_param { ptr @__param_str_auto_fw_reset, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.125 { ptr @auto_fw_reset } }, section "__param", align 4
@__UNIQUE_ID_auto_fw_resettype505 = internal constant [38 x i8] c"netxen_nic.parmtype=auto_fw_reset:int\00", section ".modinfo", align 1
@__UNIQUE_ID_auto_fw_reset506 = internal constant [73 x i8] c"netxen_nic.parm=auto_fw_reset:Auto firmware reset (0=disabled, 1=enabled\00", section ".modinfo", align 1
@netxen_advert_link_change._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 2182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: %s NIC Link is down\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"netxen_advert_link_change\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c\00", [43 x i8] zeroinitializer }, align 32
@netxen_advert_link_change._entry_ptr = internal global ptr @netxen_advert_link_change._entry, section ".printk_index", align 4
@netxen_advert_link_change._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 2191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: %s NIC Link is up\0A\00", [39 x i8] zeroinitializer }, align 32
@netxen_advert_link_change._entry_ptr.8 = internal global ptr @netxen_advert_link_change._entry.6, section ".printk_index", align 4
@__initcall__kmod_netxen_nic__521_3471_netxen_init_module6 = internal global ptr @netxen_init_module, section ".initcall6.init", align 4
@netxen_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @netxen_nic_driver_name, ptr @netxen_pci_tbl, ptr @netxen_nic_probe, ptr @netxen_nic_remove, ptr null, ptr null, ptr @netxen_nic_shutdown, ptr null, ptr null, ptr null, ptr @netxen_err_handler, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @netxen_nic_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@netxen_inetaddr_cb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @netxen_inetaddr_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@netxen_netdev_cb = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @netxen_netdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@__exitcall_netxen_exit_module = internal global ptr @netxen_exit_module, section ".exitcall.exit", align 4
@dev_attr_bridged_mode = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @netxen_show_bridged_mode, ptr @netxen_store_bridged_mode }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bridged_mode\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@netxen_nic_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 1225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Error in setting sw resources\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"netxen_nic_attach\00", [46 x i8] zeroinitializer }, align 32
@netxen_nic_attach._entry_ptr = internal global ptr @netxen_nic_attach._entry, section ".printk_index", align 4
@netxen_nic_attach._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.5, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Error in setting hw resources\0A\00", [59 x i8] zeroinitializer }, align 32
@netxen_nic_attach._entry_ptr.15 = internal global ptr @netxen_nic_attach._entry.13, section ".printk_index", align 4
@crb_cmd_producer = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 136323592, i32 136324012, i32 136324024, i32 136324048], [16 x i8] zeroinitializer }, align 32
@crb_cmd_consumer = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 136323596, i32 136324016, i32 136324028, i32 136324052], [16 x i8] zeroinitializer }, align 32
@netxen_nic_attach._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.5, i32 1258, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: failed to setup interrupt\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@netxen_nic_attach._entry_ptr.20 = internal global ptr @netxen_nic_attach._entry.16, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s[%d]\00", [25 x i8] zeroinitializer }, align 32
@netxen_create_sysfs_entries._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 3109, ptr @.str.24, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to create bridged_mode sysfs entry\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"netxen_create_sysfs_entries\00", [36 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@netxen_create_sysfs_entries._entry_ptr = internal global ptr @netxen_create_sysfs_entries._entry, section ".printk_index", align 4
@__netxen_nic_up._entry = internal constant %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.5, i32 1106, ptr null, ptr null }, align 1
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: Failed to initialize port %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__netxen_nic_up\00", [16 x i8] zeroinitializer }, align 32
@__netxen_nic_up._entry_ptr = internal global ptr @__netxen_nic_up._entry, section ".printk_index", align 4
@netxen_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.5, i32 3462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\016%s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"netxen_init_module\00", [45 x i8] zeroinitializer }, align 32
@netxen_init_module._entry_ptr = internal global ptr @netxen_init_module._entry, section ".printk_index", align 4
@netxen_nic_driver_string = internal global { [37 x i8], [59 x i8] } { [37 x i8] c"QLogic/NetXen Network Driver v4.0.82\00", [59 x i8] zeroinitializer }, align 32
@netxen_pci_tbl = internal constant { [9 x %struct.pci_device_id], [64 x i8] } { [9 x %struct.pci_device_id] [%struct.pci_device_id { i32 16448, i32 1, i32 -1, i32 -1, i32 131072, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 16448, i32 2, i32 -1, i32 -1, i32 131072, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 16448, i32 3, i32 -1, i32 -1, i32 131072, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 16448, i32 4, i32 -1, i32 -1, i32 131072, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 16448, i32 5, i32 -1, i32 -1, i32 131072, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 16448, i32 36, i32 -1, i32 -1, i32 131072, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 16448, i32 37, i32 -1, i32 -1, i32 131072, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 16448, i32 256, i32 -1, i32 -1, i32 131072, i32 -1, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [64 x i8] zeroinitializer }, align 32
@netxen_err_handler = internal constant { %struct.pci_error_handlers, [40 x i8] } { %struct.pci_error_handlers { ptr @netxen_io_error_detected, ptr null, ptr @netxen_io_slot_reset, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@netxen_nic_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @netxen_nic_suspend, ptr @netxen_nic_resume, ptr @netxen_nic_suspend, ptr @netxen_nic_resume, ptr @netxen_nic_suspend, ptr @netxen_nic_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@netxen_nic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.5, i32 1453, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014%s: chip revisions between 0x%x-0x%x will not be enabled\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"netxen_nic_probe\00", [47 x i8] zeroinitializer }, align 32
@netxen_nic_probe._entry_ptr = internal global ptr @netxen_nic_probe._entry, section ".printk_index", align 4
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"kernel\00", [25 x i8] zeroinitializer }, align 32
@netxen_nic_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&adapter->ahw.crb_lock\00", [41 x i8] zeroinitializer }, align 32
@netxen_nic_probe.__key.33 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&adapter->ahw.mem_lock\00", [41 x i8] zeroinitializer }, align 32
@netxen_nic_probe.__key.35 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&adapter->tx_clean_lock\00", [40 x i8] zeroinitializer }, align 32
@netxen_nic_probe._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.5, i32 1505, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error getting board config info.\0A\00", [62 x i8] zeroinitializer }, align 32
@netxen_nic_probe._entry_ptr.39 = internal global ptr @netxen_nic_probe._entry.37, section ".printk_index", align 4
@netxen_nic_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.30, ptr @.str.5, i32 1563, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed to setup interrupts, error = %d\0A\00", [56 x i8] zeroinitializer }, align 32
@netxen_nic_probe._entry_ptr.42 = internal global ptr @netxen_nic_probe._entry.40, section ".printk_index", align 4
@netxen_nic_probe._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.30, ptr @.str.5, i32 1580, ptr @.str.45, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: GbE port initialized\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@netxen_nic_probe._entry_ptr.46 = internal global ptr @netxen_nic_probe._entry.43, section ".printk_index", align 4
@netxen_nic_probe._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.30, ptr @.str.5, i32 1584, ptr @.str.45, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: XGbE port initialized\0A\00", [37 x i8] zeroinitializer }, align 32
@netxen_nic_probe._entry_ptr.49 = internal global ptr @netxen_nic_probe._entry.47, section ".printk_index", align 4
@netxen_setup_pci_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.5, i32 741, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to map PCI bar 0\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netxen_setup_pci_map\00", [43 x i8] zeroinitializer }, align 32
@netxen_setup_pci_map._entry_ptr = internal global ptr @netxen_setup_pci_map._entry, section ".printk_index", align 4
@netxen_setup_pci_map._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.5, i32 754, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@netxen_setup_pci_map._entry_ptr.53 = internal global ptr @netxen_setup_pci_map._entry.52, section ".printk_index", align 4
@netxen_setup_pci_map._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.5, i32 763, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@netxen_setup_pci_map._entry_ptr.55 = internal global ptr @netxen_setup_pci_map._entry.54, section ".printk_index", align 4
@netxen_setup_pci_map._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.51, ptr @.str.5, i32 773, ptr @.str.45, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%dMB memory map\0A\00", [47 x i8] zeroinitializer }, align 32
@netxen_setup_pci_map._entry_ptr.58 = internal global ptr @netxen_setup_pci_map._entry.56, section ".printk_index", align 4
@netxen_setup_pci_map._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.51, ptr @.str.5, i32 792, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013%s: doorbell is disabled\0A\00", [36 x i8] zeroinitializer }, align 32
@netxen_setup_pci_map._entry_ptr.61 = internal global ptr @netxen_setup_pci_map._entry.59, section ".printk_index", align 4
@netxen_setup_pci_map._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.51, ptr @.str.5, i32 800, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Failed to allocate doorbell map.\00", [57 x i8] zeroinitializer }, align 32
@netxen_setup_pci_map._entry_ptr.64 = internal global ptr @netxen_setup_pci_map._entry.62, section ".printk_index", align 4
@netxen_start_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.5, i32 953, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error in init HW init sequence\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"netxen_start_firmware\00", [42 x i8] zeroinitializer }, align 32
@netxen_start_firmware._entry_ptr = internal global ptr @netxen_start_firmware._entry, section ".printk_index", align 4
@netxen_pcie_strap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.5, i32 406, ptr @.str.45, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Gen2 strapping detected\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"netxen_pcie_strap_init\00", [41 x i8] zeroinitializer }, align 32
@netxen_pcie_strap_init._entry_ptr = internal global ptr @netxen_pcie_strap_init._entry, section ".printk_index", align 4
@netxen_pcie_strap_init._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.5, i32 411, ptr @.str.45, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Gen1 strapping detected\0A\00", [39 x i8] zeroinitializer }, align 32
@netxen_pcie_strap_init._entry_ptr.71 = internal global ptr @netxen_pcie_strap_init._entry.69, section ".printk_index", align 4
@nx_update_dma_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.5, i32 290, ptr @.str.45, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"using %d-bit dma mask\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"nx_update_dma_mask\00", [45 x i8] zeroinitializer }, align 32
@nx_update_dma_mask._entry_ptr = internal global ptr @nx_update_dma_mask._entry, section ".printk_index", align 4
@netxen_check_options._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.5, i32 832, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"error reading board info\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netxen_check_options\00", [43 x i8] zeroinitializer }, align 32
@netxen_check_options._entry_ptr = internal global ptr @netxen_check_options._entry, section ".printk_index", align 4
@netxen_check_options._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.75, ptr @.str.5, i32 855, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to setup minidump rcode = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@netxen_check_options._entry_ptr.78 = internal global ptr @netxen_check_options._entry.76, section ".printk_index", align 4
@netxen_check_options._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.75, ptr @.str.5, i32 866, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: %s Board S/N %s  Chip rev 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@netxen_check_options._entry_ptr.82 = internal global ptr @netxen_check_options._entry.80, section ".printk_index", align 4
@netxen_check_options._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.75, ptr @.str.5, i32 872, ptr @.str.24, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"firmware version %d.%d.%d unsupported\0A\00", [57 x i8] zeroinitializer }, align 32
@netxen_check_options._entry_ptr.85 = internal global ptr @netxen_check_options._entry.83, section ".printk_index", align 4
@netxen_check_options._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.75, ptr @.str.5, i32 883, ptr @.str.45, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Driver v%s, firmware v%d.%d.%d [%s]\0A\00", [59 x i8] zeroinitializer }, align 32
@netxen_check_options._entry_ptr.88 = internal global ptr @netxen_check_options._entry.86, section ".printk_index", align 4
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"cut-through\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"legacy\00", [25 x i8] zeroinitializer }, align 32
@netxen_boards = internal constant { [19 x %struct.netxen_brdinfo], [168 x i8] } { [19 x %struct.netxen_brdinfo] [%struct.netxen_brdinfo { i32 15, i32 1, [32 x i8] c"XGb CX4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.netxen_brdinfo { i32 14, i32 1, [32 x i8] c"XGb HMEZ\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.netxen_brdinfo { i32 13, i32 2, [32 x i8] c"XGb IMEZ\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.netxen_brdinfo { i32 11, i32 1, [32 x i8] c"XGb XFP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.netxen_brdinfo { i32 10, i32 4, [32 x i8] c"Quad Gb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.netxen_brdinfo { i32 12, i32 2, [32 x i8] c"Dual Gb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.netxen_brdinfo { i32 33, i32 4, [32 x i8] c"Reference Quad Gig \00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.netxen_brdinfo { i32 34, i32 2, [32 x i8] c"Dual XGb HMEZ\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.netxen_brdinfo { i32 35, i32 2, [32 x i8] c"Dual XGb CX4 LP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.netxen_brdinfo { i32 36, i32 4, [32 x i8] c"Quad Gig LP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.netxen_brdinfo { i32 37, i32 2, [32 x i8] c"Dual XGb IMEZ\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.netxen_brdinfo { i32 38, i32 2, [32 x i8] c"Dual XGb SFP+ LP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.netxen_brdinfo { i32 39, i32 1, [32 x i8] c"XGB 10G BaseT LP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.netxen_brdinfo { i32 40, i32 2, [32 x i8] c"Dual XGb LOM\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.netxen_brdinfo { i32 41, i32 4, [32 x i8] c"NX3031 Gigabit Ethernet\00\00\00\00\00\00\00\00\00" }, %struct.netxen_brdinfo { i32 42, i32 2, [32 x i8] c"NX3031 10 Gigabit Ethernet\00\00\00\00\00\00" }, %struct.netxen_brdinfo { i32 43, i32 2, [32 x i8] c"Quanta Dual XGb SFP+\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.netxen_brdinfo { i32 49, i32 2, [32 x i8] c"Reference Dual CX4 Option\00\00\00\00\00\00\00" }, %struct.netxen_brdinfo { i32 50, i32 1, [32 x i8] c"Reference Single XFP Option\00\00\00\00\00" }], [168 x i8] zeroinitializer }, align 32
@netxen_setup_intr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.92, ptr @.str.5, i32 672, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Co-existence of MSI-X/MSI and INTx interrupts is not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"netxen_setup_intr\00", [46 x i8] zeroinitializer }, align 32
@netxen_setup_intr._entry_ptr = internal global ptr @netxen_setup_intr._entry, section ".printk_index", align 4
@netxen_setup_intr._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.92, ptr @.str.5, i32 679, ptr @.str.45, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"using legacy interrupts\0A\00", [39 x i8] zeroinitializer }, align 32
@netxen_setup_intr._entry_ptr.95 = internal global ptr @netxen_setup_intr._entry.93, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@legacy_intr = internal constant { [8 x %struct.netxen_legacy_intr_set], [32 x i8] } { [8 x %struct.netxen_legacy_intr_set] [%struct.netxen_legacy_intr_set { i32 128, i32 101777688, i32 101777704, i32 101789696 }, %struct.netxen_legacy_intr_set { i32 256, i32 101777760, i32 101777776, i32 101789700 }, %struct.netxen_legacy_intr_set { i32 512, i32 101777764, i32 101777780, i32 101789704 }, %struct.netxen_legacy_intr_set { i32 1024, i32 101777768, i32 101777784, i32 101789708 }, %struct.netxen_legacy_intr_set { i32 2048, i32 101778272, i32 101778288, i32 101789712 }, %struct.netxen_legacy_intr_set { i32 4096, i32 101778276, i32 101778292, i32 101789716 }, %struct.netxen_legacy_intr_set { i32 8192, i32 101778280, i32 101778296, i32 101789720 }, %struct.netxen_legacy_intr_set { i32 16384, i32 101778284, i32 101778300, i32 101789724 }], [32 x i8] zeroinitializer }, align 32
@netxen_setup_msi_interrupts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.97, ptr @.str.5, i32 628, ptr @.str.45, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"using msi-x interrupts\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"netxen_setup_msi_interrupts\00", [36 x i8] zeroinitializer }, align 32
@netxen_setup_msi_interrupts._entry_ptr = internal global ptr @netxen_setup_msi_interrupts._entry, section ".printk_index", align 4
@msi_tgt_status = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 101777688, i32 101777760, i32 101777764, i32 101777768, i32 101778272, i32 101778276, i32 101778280, i32 101778284], [32 x i8] zeroinitializer }, align 32
@netxen_setup_msi_interrupts._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.97, ptr @.str.5, i32 639, ptr @.str.45, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"using msi interrupts\0A\00", [42 x i8] zeroinitializer }, align 32
@netxen_setup_msi_interrupts._entry_ptr.100 = internal global ptr @netxen_setup_msi_interrupts._entry.98, section ".printk_index", align 4
@netxen_setup_msi_interrupts._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.97, ptr @.str.5, i32 643, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Failed to acquire MSI-X/MSI interrupt vector\0A\00", [50 x i8] zeroinitializer }, align 32
@netxen_setup_msi_interrupts._entry_ptr.103 = internal global ptr @netxen_setup_msi_interrupts._entry.101, section ".printk_index", align 4
@netxen_read_ula_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.5, i32 1403, ptr @.str.45, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ULA adapter\00", [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netxen_read_ula_info\00", [43 x i8] zeroinitializer }, align 32
@netxen_read_ula_info._entry_ptr = internal global ptr @netxen_read_ula_info._entry, section ".printk_index", align 4
@netxen_read_ula_info._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.5, i32 1406, ptr @.str.45, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"non ULA adapter\00", [16 x i8] zeroinitializer }, align 32
@netxen_read_ula_info._entry_ptr.108 = internal global ptr @netxen_read_ula_info._entry.106, section ".printk_index", align 4
@netxen_netdev_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @netxen_nic_open, ptr @netxen_nic_close, ptr @netxen_nic_xmit_frame, ptr null, ptr null, ptr null, ptr @netxen_set_multicast_list, ptr @netxen_nic_set_mac, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @netxen_nic_change_mtu, ptr null, ptr @netxen_tx_timeout, ptr @netxen_nic_get_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @netxen_fix_features, ptr @netxen_set_features, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@netxen_nic_ethtool_ops = external dso_local constant %struct.ethtool_ops, align 4
@netxen_setup_netdev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.109 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&adapter->tx_timeout_task)\00", [51 x i8] zeroinitializer }, align 32
@netxen_setup_netdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.5, i32 1376, ptr @.str.24, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to read mac addr\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"netxen_setup_netdev\00", [44 x i8] zeroinitializer }, align 32
@netxen_setup_netdev._entry_ptr = internal global ptr @netxen_setup_netdev._entry, section ".printk_index", align 4
@netxen_setup_netdev._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str.5, i32 1382, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to register net device\0A\00", [33 x i8] zeroinitializer }, align 32
@netxen_setup_netdev._entry_ptr.114 = internal global ptr @netxen_setup_netdev._entry.112, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.115 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@netxen_tx_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.118, ptr @.str.5, i32 2227, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"transmit timeout, resetting.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"netxen_tx_timeout\00", [46 x i8] zeroinitializer }, align 32
@netxen_tx_timeout._entry_ptr = internal global ptr @netxen_tx_timeout._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.119 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"disabling LRO as RXCSUM is off\0A\00", [32 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@netxen_read_mac_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.5, i32 486, ptr @.str.24, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Bad MAC address %pM.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netxen_read_mac_addr\00", [43 x i8] zeroinitializer }, align 32
@netxen_read_mac_addr._entry_ptr = internal global ptr @netxen_read_mac_addr._entry, section ".printk_index", align 4
@netxen_schedule_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.122 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&adapter->fw_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@netxen_schedule_work.__key.123 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.124 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&adapter->fw_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@netxen_check_health._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.126, ptr @.str.5, i32 2687, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"firmware hang detected\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"netxen_check_health\00", [44 x i8] zeroinitializer }, align 32
@netxen_check_health._entry_ptr = internal global ptr @netxen_check_health._entry, section ".printk_index", align 4
@netxen_check_health._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.126, ptr @.str.5, i32 2700, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [172 x i8], [52 x i8] } { [172 x i8] c"Dumping hw/fw registers\0APEG_HALT_STATUS1: 0x%x, PEG_HALT_STATUS2: 0x%x,\0APEG_NET_0_PC: 0x%x, PEG_NET_1_PC: 0x%x,\0APEG_NET_2_PC: 0x%x, PEG_NET_3_PC: 0x%x,\0APEG_NET_4_PC: 0x%x\0A\00", [52 x i8] zeroinitializer }, align 32
@netxen_check_health._entry_ptr.129 = internal global ptr @netxen_check_health._entry.127, section ".printk_index", align 4
@netxen_check_health._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.126, ptr @.str.5, i32 2704, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Firmware aborted with error code 0x00006700. Device is being reset.\0A\00", [59 x i8] zeroinitializer }, align 32
@netxen_check_health._entry_ptr.132 = internal global ptr @netxen_check_health._entry.130, section ".printk_index", align 4
@netxen_nic_check_temp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.5, i32 2154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [93 x i8], [35 x i8] } { [93 x i8] c"\011%s: Device temperature %d degrees C exceeds maximum allowed. Hardware has been shut down.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"netxen_nic_check_temp\00", [42 x i8] zeroinitializer }, align 32
@netxen_nic_check_temp._entry_ptr = internal global ptr @netxen_nic_check_temp._entry, section ".printk_index", align 4
@netxen_nic_check_temp._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.5, i32 2162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\011%s: Device temperature %d degrees C exceeds operating range. Immediate action needed.\0A\00", [39 x i8] zeroinitializer }, align 32
@netxen_nic_check_temp._entry_ptr.137 = internal global ptr @netxen_nic_check_temp._entry.135, section ".printk_index", align 4
@netxen_nic_check_temp._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.134, ptr @.str.5, i32 2169, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016%s: Device temperature is now %d degrees C in normal range.\0A\00", [33 x i8] zeroinitializer }, align 32
@netxen_nic_check_temp._entry_ptr.140 = internal global ptr @netxen_nic_check_temp._entry.138, section ".printk_index", align 4
@netxen_fwinit_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.5, i32 2589, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Device initialization Failed\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"netxen_fwinit_work\00", [45 x i8] zeroinitializer }, align 32
@netxen_fwinit_work._entry_ptr = internal global ptr @netxen_fwinit_work._entry, section ".printk_index", align 4
@netxen_config_indev_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.143 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@netxen_config_indev_addr.__warned.144 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.145 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.146 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.148 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@dev_attr_diag_mode = internal constant { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.160, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @netxen_show_diag_mode, ptr @netxen_store_diag_mode }, [36 x i8] zeroinitializer }, align 32
@netxen_create_diag_entries._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.150, ptr @.str.5, i32 3131, ptr @.str.45, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed to create diag_mode sysfs entry\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"netxen_create_diag_entries\00", [37 x i8] zeroinitializer }, align 32
@netxen_create_diag_entries._entry_ptr = internal global ptr @netxen_create_diag_entries._entry, section ".printk_index", align 4
@bin_attr_crb = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.161, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @netxen_sysfs_read_crb, ptr @netxen_sysfs_write_crb, ptr null }, [52 x i8] zeroinitializer }, align 32
@netxen_create_diag_entries._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.150, ptr @.str.5, i32 3133, ptr @.str.45, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to create crb sysfs entry\0A\00", [62 x i8] zeroinitializer }, align 32
@netxen_create_diag_entries._entry_ptr.153 = internal global ptr @netxen_create_diag_entries._entry.151, section ".printk_index", align 4
@bin_attr_mem = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.162, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 0, ptr null, ptr null, ptr @netxen_sysfs_read_mem, ptr @netxen_sysfs_write_mem, ptr null }, [52 x i8] zeroinitializer }, align 32
@netxen_create_diag_entries._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.155, ptr @.str.150, ptr @.str.5, i32 3135, ptr @.str.45, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to create mem sysfs entry\0A\00", [62 x i8] zeroinitializer }, align 32
@netxen_create_diag_entries._entry_ptr.156 = internal global ptr @netxen_create_diag_entries._entry.154, section ".printk_index", align 4
@bin_attr_dimm = internal constant { %struct.bin_attribute, [52 x i8] } { %struct.bin_attribute { %struct.attribute { ptr @.str.163, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, i32 8, ptr null, ptr null, ptr @netxen_sysfs_read_dimm, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@netxen_create_diag_entries._entry.157 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.158, ptr @.str.150, ptr @.str.5, i32 3137, ptr @.str.45, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to create dimm sysfs entry\0A\00", [61 x i8] zeroinitializer }, align 32
@netxen_create_diag_entries._entry_ptr.159 = internal global ptr @netxen_create_diag_entries._entry.157, section ".printk_index", align 4
@.str.160 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"diag_mode\00", [22 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"crb\00", [28 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mem\00", [28 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dimm\00", [27 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Invalid size\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid DIMM flag\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"DIMM not present\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid DIMM type %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Invalid no of rows %x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid no of columns %x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid no of banks %x\0A\00", [40 x i8] zeroinitializer }, align 32
@netxen_nic_attach_late_func._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.173, ptr @.str.5, i32 1710, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to start firmware\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"netxen_nic_attach_late_func\00", [36 x i8] zeroinitializer }, align 32
@netxen_nic_attach_late_func._entry_ptr = internal global ptr @netxen_nic_attach_late_func._entry, section ".printk_index", align 4
@netxen_inetaddr_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.174 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@netxen_netdev_event.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netxen_config_master.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@switch.table.nx_dev_request_reset = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 -22, i32 0, i32 0, i32 0, i32 -22, i32 0], [40 x i8] zeroinitializer }, align 32
@switch.table.netxen_sysfs_read_dimm = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 32, i32 33, i32 36, i32 64], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2097152, i64 33554432, i64 134217728]
@__sancov_gen_cov_switch_values.175 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@__sancov_gen_cov_switch_values.176 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.177 = internal global [4 x i64] [i64 2, i64 16, i64 41, i64 128]
@__sancov_gen_cov_switch_values.178 = internal global [4 x i64] [i64 2, i64 16, i64 34, i64 40]
@__sancov_gen_cov_switch_values.179 = internal global [21 x i64] [i64 19, i64 16, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39, i64 40, i64 41, i64 42, i64 43, i64 49, i64 50]
@__sancov_gen_cov_switch_values.180 = internal global [4 x i64] [i64 2, i64 16, i64 1, i64 2]
@__sancov_gen_cov_switch_values.181 = internal global [4 x i64] [i64 2, i64 16, i64 11, i64 15]
@__sancov_gen_cov_switch_values.182 = internal global [4 x i64] [i64 2, i64 32, i64 3671960832, i64 3671960833]
@__sancov_gen_cov_switch_values.183 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 3]
@__sancov_gen_cov_switch_values.184 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.185 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 7]
@__sancov_gen_cov_switch_values.186 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.187 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.188 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.189 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.190 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967291]
@__sancov_gen_cov_switch_values.191 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.192 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.193 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.194 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.195 = internal global [8 x i64] [i64 6, i64 32, i64 1, i64 2, i64 4, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.196 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 6]
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 25, i32 1 }
@___asan_gen_.206 = private unnamed_addr constant [23 x i8] c"netxen_nic_driver_name\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 28, i32 6 }
@___asan_gen_.209 = private unnamed_addr constant [14 x i8] c"auto_fw_reset\00", align 1
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 41, i32 12 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2181, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2190, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant [14 x i8] c"netxen_driver\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3450, i32 26 }
@___asan_gen_.233 = private unnamed_addr constant [19 x i8] c"netxen_inetaddr_cb\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3429, i32 30 }
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"netxen_netdev_cb\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3425, i32 30 }
@___asan_gen_.239 = private unnamed_addr constant [22 x i8] c"dev_attr_bridged_mode\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2780, i32 38 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2781, i32 20 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2777, i32 22 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1224, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1231, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c"crb_cmd_producer\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 97, i32 17 }
@___asan_gen_.266 = private unnamed_addr constant [17 x i8] c"crb_cmd_consumer\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 109, i32 17 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1257, i32 3 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1056, i32 27 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3108, i32 4 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1105, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3462, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [25 x i8] c"netxen_nic_driver_string\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 29, i32 13 }
@___asan_gen_.314 = private unnamed_addr constant [15 x i8] c"netxen_pci_tbl\00", align 1
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 83, i32 35 }
@___asan_gen_.317 = private unnamed_addr constant [19 x i8] c"netxen_err_handler\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3441, i32 40 }
@___asan_gen_.320 = private unnamed_addr constant [18 x i8] c"netxen_nic_pm_ops\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3446, i32 8 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1452, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1489, i32 2 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1490, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1492, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1505, i32 3 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1562, i32 3 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1579, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1583, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 741, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 754, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 763, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 773, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 791, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 799, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 953, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 406, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 411, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 290, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 832, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 854, i32 5 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 864, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 871, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 881, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [14 x i8] c"netxen_boards\00", align 1
@___asan_gen_.486 = private unnamed_addr constant [51 x i8] c"../drivers/net/ethernet/qlogic/netxen/netxen_nic.h\00", align 1
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.486, i32 1812, i32 36 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 672, i32 4 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 679, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant [12 x i8] c"legacy_intr\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 128, i32 38 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 628, i32 4 }
@___asan_gen_.515 = private unnamed_addr constant [15 x i8] c"msi_tgt_status\00", align 1
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 121, i32 17 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 639, i32 3 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 643, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1403, i32 3 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1406, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant [18 x i8] c"netxen_netdev_ops\00", align 1
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 555, i32 36 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1373, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1376, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1382, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.573, i32 326, i32 6 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2227, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 526, i32 20 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 486, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2486, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2687, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2689, i32 2 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2702, i32 3 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2151, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2158, i32 4 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2166, i32 4 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2588, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3256, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.663, i32 232, i32 9 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 695, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.672, i32 723, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant [19 x i8] c"dev_attr_diag_mode\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2812, i32 38 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3131, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant [13 x i8] c"bin_attr_crb\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2957, i32 35 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3133, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant [13 x i8] c"bin_attr_mem\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2964, i32 35 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3135, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant [14 x i8] c"bin_attr_dimm\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3093, i32 35 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3137, i32 3 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2813, i32 20 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2958, i32 20 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2965, i32 20 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3094, i32 20 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2984, i32 22 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 2993, i32 22 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3008, i32 22 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3023, i32 22 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3038, i32 22 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3043, i32 22 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3048, i32 22 }
@___asan_gen_.746 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 1710, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.756 = private constant [56 x i8] c"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.756, i32 3407, i32 4 }
@___asan_gen_.758 = private unnamed_addr constant [34 x i8] c"switch.table.nx_dev_request_reset\00", align 1
@___asan_gen_.759 = private unnamed_addr constant [36 x i8] c"switch.table.netxen_sysfs_read_dimm\00", align 1
@llvm.compiler.used = appending global [253 x ptr] [ptr @__UNIQUE_ID_auto_fw_reset506, ptr @__UNIQUE_ID_auto_fw_resettype505, ptr @__UNIQUE_ID_description500, ptr @__UNIQUE_ID_file501, ptr @__UNIQUE_ID_firmware504, ptr @__UNIQUE_ID_license502, ptr @__UNIQUE_ID_version503, ptr @__exitcall_netxen_exit_module, ptr @__initcall__kmod_netxen_nic__521_3471_netxen_init_module6, ptr @__modver_attr, ptr @__netxen_nic_up._entry, ptr @__netxen_nic_up._entry_ptr, ptr @__param_auto_fw_reset, ptr @netxen_advert_link_change._entry, ptr @netxen_advert_link_change._entry.6, ptr @netxen_advert_link_change._entry_ptr, ptr @netxen_advert_link_change._entry_ptr.8, ptr @netxen_check_health._entry, ptr @netxen_check_health._entry.127, ptr @netxen_check_health._entry.130, ptr @netxen_check_health._entry_ptr, ptr @netxen_check_health._entry_ptr.129, ptr @netxen_check_health._entry_ptr.132, ptr @netxen_check_options._entry, ptr @netxen_check_options._entry.76, ptr @netxen_check_options._entry.80, ptr @netxen_check_options._entry.83, ptr @netxen_check_options._entry.86, ptr @netxen_check_options._entry_ptr, ptr @netxen_check_options._entry_ptr.78, ptr @netxen_check_options._entry_ptr.82, ptr @netxen_check_options._entry_ptr.85, ptr @netxen_check_options._entry_ptr.88, ptr @netxen_create_diag_entries._entry, ptr @netxen_create_diag_entries._entry.151, ptr @netxen_create_diag_entries._entry.154, ptr @netxen_create_diag_entries._entry.157, ptr @netxen_create_diag_entries._entry_ptr, ptr @netxen_create_diag_entries._entry_ptr.153, ptr @netxen_create_diag_entries._entry_ptr.156, ptr @netxen_create_diag_entries._entry_ptr.159, ptr @netxen_create_sysfs_entries._entry, ptr @netxen_create_sysfs_entries._entry_ptr, ptr @netxen_exit_module, ptr @netxen_fwinit_work._entry, ptr @netxen_fwinit_work._entry_ptr, ptr @netxen_init_module._entry, ptr @netxen_init_module._entry_ptr, ptr @netxen_nic_attach._entry, ptr @netxen_nic_attach._entry.13, ptr @netxen_nic_attach._entry.16, ptr @netxen_nic_attach._entry_ptr, ptr @netxen_nic_attach._entry_ptr.15, ptr @netxen_nic_attach._entry_ptr.20, ptr @netxen_nic_attach_late_func._entry, ptr @netxen_nic_attach_late_func._entry_ptr, ptr @netxen_nic_check_temp._entry, ptr @netxen_nic_check_temp._entry.135, ptr @netxen_nic_check_temp._entry.138, ptr @netxen_nic_check_temp._entry_ptr, ptr @netxen_nic_check_temp._entry_ptr.137, ptr @netxen_nic_check_temp._entry_ptr.140, ptr @netxen_nic_probe._entry, ptr @netxen_nic_probe._entry.37, ptr @netxen_nic_probe._entry.40, ptr @netxen_nic_probe._entry.43, ptr @netxen_nic_probe._entry.47, ptr @netxen_nic_probe._entry_ptr, ptr @netxen_nic_probe._entry_ptr.39, ptr @netxen_nic_probe._entry_ptr.42, ptr @netxen_nic_probe._entry_ptr.46, ptr @netxen_nic_probe._entry_ptr.49, ptr @netxen_pcie_strap_init._entry, ptr @netxen_pcie_strap_init._entry.69, ptr @netxen_pcie_strap_init._entry_ptr, ptr @netxen_pcie_strap_init._entry_ptr.71, ptr @netxen_read_mac_addr._entry, ptr @netxen_read_mac_addr._entry_ptr, ptr @netxen_read_ula_info._entry, ptr @netxen_read_ula_info._entry.106, ptr @netxen_read_ula_info._entry_ptr, ptr @netxen_read_ula_info._entry_ptr.108, ptr @netxen_setup_intr._entry, ptr @netxen_setup_intr._entry.93, ptr @netxen_setup_intr._entry_ptr, ptr @netxen_setup_intr._entry_ptr.95, ptr @netxen_setup_msi_interrupts._entry, ptr @netxen_setup_msi_interrupts._entry.101, ptr @netxen_setup_msi_interrupts._entry.98, ptr @netxen_setup_msi_interrupts._entry_ptr, ptr @netxen_setup_msi_interrupts._entry_ptr.100, ptr @netxen_setup_msi_interrupts._entry_ptr.103, ptr @netxen_setup_netdev._entry, ptr @netxen_setup_netdev._entry.112, ptr @netxen_setup_netdev._entry_ptr, ptr @netxen_setup_netdev._entry_ptr.114, ptr @netxen_setup_pci_map._entry, ptr @netxen_setup_pci_map._entry.52, ptr @netxen_setup_pci_map._entry.54, ptr @netxen_setup_pci_map._entry.56, ptr @netxen_setup_pci_map._entry.59, ptr @netxen_setup_pci_map._entry.62, ptr @netxen_setup_pci_map._entry_ptr, ptr @netxen_setup_pci_map._entry_ptr.53, ptr @netxen_setup_pci_map._entry_ptr.55, ptr @netxen_setup_pci_map._entry_ptr.58, ptr @netxen_setup_pci_map._entry_ptr.61, ptr @netxen_setup_pci_map._entry_ptr.64, ptr @netxen_start_firmware._entry, ptr @netxen_start_firmware._entry_ptr, ptr @netxen_tx_timeout._entry, ptr @netxen_tx_timeout._entry_ptr, ptr @nx_update_dma_mask._entry, ptr @nx_update_dma_mask._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @netxen_nic_driver_name, ptr @auto_fw_reset, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @netxen_driver, ptr @netxen_inetaddr_cb, ptr @netxen_netdev_cb, ptr @dev_attr_bridged_mode, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @crb_cmd_producer, ptr @crb_cmd_consumer, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @netxen_nic_driver_string, ptr @netxen_pci_tbl, ptr @netxen_err_handler, ptr @netxen_nic_pm_ops, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @netxen_nic_probe.__key, ptr @.str.32, ptr @netxen_nic_probe.__key.33, ptr @.str.34, ptr @netxen_nic_probe.__key.35, ptr @.str.36, ptr @.str.38, ptr @.str.41, ptr @.str.44, ptr @.str.45, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.57, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.77, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.89, ptr @.str.90, ptr @netxen_boards, ptr @.str.91, ptr @.str.92, ptr @.str.94, ptr @legacy_intr, ptr @.str.96, ptr @.str.97, ptr @msi_tgt_status, ptr @.str.99, ptr @.str.102, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @netxen_netdev_ops, ptr @netxen_setup_netdev.__key, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.113, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @netxen_schedule_work.__key, ptr @.str.122, ptr @netxen_schedule_work.__key.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.128, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.139, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @dev_attr_diag_mode, ptr @.str.149, ptr @.str.150, ptr @bin_attr_crb, ptr @.str.152, ptr @bin_attr_mem, ptr @.str.155, ptr @bin_attr_dimm, ptr @.str.158, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @switch.table.nx_dev_request_reset, ptr @switch.table.netxen_sysfs_read_dimm], section "llvm.metadata"
@0 = internal global [189 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_driver_name to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @auto_fw_reset to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_advert_link_change._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_advert_link_change._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_inetaddr_cb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_netdev_cb to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_bridged_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_attach._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crb_cmd_producer to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crb_cmd_consumer to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_attach._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_create_sysfs_entries._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_driver_string to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_pci_tbl to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_err_handler to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_probe.__key.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_probe.__key.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_probe._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_probe._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_probe._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_setup_pci_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_setup_pci_map._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_setup_pci_map._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_setup_pci_map._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_setup_pci_map._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_setup_pci_map._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_start_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_pcie_strap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_pcie_strap_init._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nx_update_dma_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_check_options._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_check_options._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_check_options._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_check_options._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_check_options._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_boards to i32), i32 760, i32 928, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_setup_intr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_setup_intr._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_intr to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_setup_msi_interrupts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_tgt_status to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_setup_msi_interrupts._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_setup_msi_interrupts._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_read_ula_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_read_ula_info._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_netdev_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_setup_netdev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_setup_netdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_setup_netdev._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_tx_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_read_mac_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_schedule_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_schedule_work.__key.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_check_health._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_check_health._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_check_health._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_check_temp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_check_temp._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_check_temp._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_fwinit_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_diag_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_create_diag_entries._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_crb to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_create_diag_entries._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_mem to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_create_diag_entries._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bin_attr_dimm to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_create_diag_entries._entry.157 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxen_nic_attach_late_func._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.nx_dev_request_reset to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.netxen_sysfs_read_dimm to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netxen_nic_update_cmd_producer(ptr noundef %adapter, ptr nocapture noundef readonly %tx_ring) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %io_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 59
  %0 = ptrtoint ptr %io_write to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_write, align 4
  %crb_cmd_producer = getelementptr inbounds %struct.nx_host_tx_ring, ptr %tx_ring, i32 0, i32 3
  %2 = ptrtoint ptr %crb_cmd_producer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crb_cmd_producer, align 4
  %4 = ptrtoint ptr %tx_ring to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tx_ring, align 4
  tail call void %1(ptr noundef %adapter, ptr noundef %3, i32 noundef %5) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netxen_nic_reset_context(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %state = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 70
  %call = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_up = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 30
  %2 = ptrtoint ptr %is_up to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %is_up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %3)
  %cmp = icmp eq i16 %3, 777
  br i1 %cmp, label %if.then3, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.then3:                                         ; preds = %if.end
  tail call void @netif_device_detach(ptr noundef %1) #15
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.then3.if.end6_crit_edge, label %if.then5

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then5:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__netxen_nic_down(ptr noundef %adapter, ptr noundef %1)
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then3.if.end6_crit_edge
  tail call fastcc void @netxen_nic_detach(ptr noundef %adapter)
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i36 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i36)
  %tobool.i37.not = icmp eq i32 %and1.i.i36, 0
  br i1 %tobool.i37.not, label %if.end6.if.end17_crit_edge, label %if.then8

if.end6.if.end17_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.then8:                                         ; preds = %if.end6
  %call9 = tail call fastcc i32 @netxen_nic_attach(ptr noundef %adapter)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end13, label %if.then8.done_crit_edge

if.then8.done_crit_edge:                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end13:                                         ; preds = %if.then8
  %call12 = tail call fastcc i32 @__netxen_nic_up(ptr noundef %adapter, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %if.end13.done_crit_edge

if.end13.done_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end17

if.end17:                                         ; preds = %if.end13.if.end17_crit_edge, %if.end6.if.end17_crit_edge
  tail call void @netif_device_attach(ptr noundef %1) #15
  br label %done

done:                                             ; preds = %if.end17, %if.end13.done_crit_edge, %if.then8.done_crit_edge, %if.end.done_crit_edge
  %err.2 = phi i32 [ %call12, %if.end13.done_crit_edge ], [ 0, %if.end17 ], [ 0, %if.end.done_crit_edge ], [ %call9, %if.then8.done_crit_edge ]
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #15
  br label %cleanup

cleanup:                                          ; preds = %done, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %done ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_detach(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__netxen_nic_down(ptr noundef %adapter, ptr noundef %netdev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %is_up = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 30
  %0 = ptrtoint ptr %is_up to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %is_up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %1)
  %cmp.not = icmp eq i16 %1, 777
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %state = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 70
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 1, ptr noundef %state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.return_crit_edge, label %do.end

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

do.end:                                           ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !389
  tail call void @netif_carrier_off(ptr noundef %netdev) #15
  tail call fastcc void @local_bh_disable() #15
  %2 = tail call i32 @llvm.read_register.i32(metadata !379) #15
  %and.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu1.i, align 4
  %tx_global_lock.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 108
  tail call void @_raw_spin_lock(ptr noundef %tx_global_lock.i) #15
  %num_tx_queues.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 104
  %6 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_tx_queues.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not.i = icmp eq i32 %7, 0
  br i1 %cmp13.not.i, label %do.end.netif_tx_disable.exit_crit_edge, label %for.body.lr.ph.i

do.end.netif_tx_disable.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_disable.exit

for.body.lr.ph.i:                                 ; preds = %do.end
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.014.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %_tx.i.i, align 128
  %_xmit_lock.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 10
  tail call void @_raw_spin_lock(ptr noundef %_xmit_lock.i.i) #15
  %xmit_lock_owner.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 11
  %10 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 %5, ptr %xmit_lock_owner.i.i, align 4
  %state.i.i = getelementptr %struct.netdev_queue, ptr %9, i32 %i.014.i, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  %11 = ptrtoint ptr %xmit_lock_owner.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile i32 -1, ptr %xmit_lock_owner.i.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %_xmit_lock.i.i) #15
  %inc.i = add nuw i32 %i.014.i, 1
  %12 = ptrtoint ptr %num_tx_queues.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_tx_queues.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.netif_tx_disable.exit_crit_edge

for.body.i.netif_tx_disable.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_tx_disable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

netif_tx_disable.exit:                            ; preds = %for.body.i.netif_tx_disable.exit_crit_edge, %do.end.netif_tx_disable.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tx_global_lock.i) #15
  tail call fastcc void @local_bh_enable() #15
  %capabilities = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 35
  %14 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %capabilities, align 8
  %and = and i32 %15, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %netif_tx_disable.exit.if.end9_crit_edge, label %if.then7

netif_tx_disable.exit.if.end9_crit_edge:          ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then7:                                         ; preds = %netif_tx_disable.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call8 = tail call i32 @netxen_linkevent_request(ptr noundef %adapter, i32 noundef 0) #15
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %netif_tx_disable.exit.if.end9_crit_edge
  %stop_port = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 52
  %16 = ptrtoint ptr %stop_port to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %stop_port, align 8
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %call13 = tail call i32 %17(ptr noundef %adapter) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %18 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %19)
  %cmp16 = icmp ugt i8 %19, 47
  br i1 %cmp16, label %if.then18, label %if.end14.if.end19_crit_edge

if.end14.if.end19_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netxen_p3_free_mac_list(ptr noundef %adapter) #15
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %if.end14.if.end19_crit_edge
  %set_promisc = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 47
  %20 = ptrtoint ptr %set_promisc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_promisc, align 4
  %call20 = tail call i32 %21(ptr noundef %adapter, i32 noundef 0) #15
  %max_sds_rings.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 11
  %22 = ptrtoint ptr %max_sds_rings.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %max_sds_rings.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp10.not.i = icmp eq i8 %23, 0
  br i1 %cmp10.not.i, label %if.end19.netxen_napi_disable.exit_crit_edge, label %for.body.lr.ph.i34

if.end19.netxen_napi_disable.exit_crit_edge:      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_napi_disable.exit

for.body.lr.ph.i34:                               ; preds = %if.end19
  %sds_rings.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 4
  br label %for.body.i36

for.body.i36:                                     ; preds = %napi_synchronize.exit.i.for.body.i36_crit_edge, %for.body.lr.ph.i34
  %ring.011.i = phi i32 [ 0, %for.body.lr.ph.i34 ], [ %inc.i37, %napi_synchronize.exit.i.for.body.i36_crit_edge ]
  %24 = ptrtoint ptr %sds_rings.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sds_rings.i, align 4
  %adapter1.i.i = getelementptr %struct.nx_host_sds_ring, ptr %25, i32 %ring.011.i, i32 5
  %26 = ptrtoint ptr %adapter1.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter1.i.i, align 4
  %io_write.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %27, i32 0, i32 59
  %28 = ptrtoint ptr %io_write.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_write.i.i, align 4
  %crb_intr_mask.i.i = getelementptr %struct.nx_host_sds_ring, ptr %25, i32 %ring.011.i, i32 3
  %30 = ptrtoint ptr %crb_intr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %crb_intr_mask.i.i, align 4
  tail call void %29(ptr noundef %27, ptr noundef %31, i32 noundef 0) #15
  %napi.i = getelementptr %struct.nx_host_sds_ring, ptr %25, i32 %ring.011.i, i32 6
  %state.i.i35 = getelementptr %struct.nx_host_sds_ring, ptr %25, i32 %ring.011.i, i32 6, i32 1
  %32 = ptrtoint ptr %state.i.i35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %state.i.i35, align 4
  %and1.i1.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i.i)
  %tobool.not2.i.i = icmp eq i32 %and1.i1.i.i, 0
  br i1 %tobool.not2.i.i, label %for.body.i36.napi_synchronize.exit.i_crit_edge, label %for.body.i36.while.body.i.i_crit_edge

for.body.i36.while.body.i.i_crit_edge:            ; preds = %for.body.i36
  br label %while.body.i.i

for.body.i36.napi_synchronize.exit.i_crit_edge:   ; preds = %for.body.i36
  call void @__sanitizer_cov_trace_pc() #17
  br label %napi_synchronize.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.body.i36.while.body.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #15
  %34 = ptrtoint ptr %state.i.i35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %state.i.i35, align 4
  %and1.i.i.i = and i32 %35, 1
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.napi_synchronize.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

while.body.i.i.napi_synchronize.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %napi_synchronize.exit.i

napi_synchronize.exit.i:                          ; preds = %while.body.i.i.napi_synchronize.exit.i_crit_edge, %for.body.i36.napi_synchronize.exit.i_crit_edge
  tail call void @napi_disable(ptr noundef %napi.i) #15
  %inc.i37 = add nuw nsw i32 %ring.011.i, 1
  %36 = ptrtoint ptr %max_sds_rings.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %max_sds_rings.i, align 1
  %conv.i = zext i8 %37 to i32
  %cmp.i38 = icmp ult i32 %inc.i37, %conv.i
  br i1 %cmp.i38, label %napi_synchronize.exit.i.for.body.i36_crit_edge, label %napi_synchronize.exit.i.netxen_napi_disable.exit_crit_edge

napi_synchronize.exit.i.netxen_napi_disable.exit_crit_edge: ; preds = %napi_synchronize.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_napi_disable.exit

napi_synchronize.exit.i.for.body.i36_crit_edge:   ; preds = %napi_synchronize.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i36

netxen_napi_disable.exit:                         ; preds = %napi_synchronize.exit.i.netxen_napi_disable.exit_crit_edge, %if.end19.netxen_napi_disable.exit_crit_edge
  tail call void @netxen_release_tx_buffers(ptr noundef %adapter) #15
  br label %return

return:                                           ; preds = %netxen_napi_disable.exit, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netxen_nic_detach(ptr noundef %adapter) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %is_up = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 30
  %0 = ptrtoint ptr %is_up to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %is_up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %1)
  %cmp.not = icmp eq i16 %1, 777
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %return

if.end:                                           ; preds = %entry
  %capabilities.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 35
  %2 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capabilities.i, align 8
  %and.i = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.netxen_remove_sysfs_entries.exit_crit_edge, label %if.then.i

if.end.netxen_remove_sysfs_entries.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_remove_sysfs_entries.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %pdev.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %4 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev.i, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev1.i, ptr noundef nonnull @dev_attr_bridged_mode) #15
  br label %netxen_remove_sysfs_entries.exit

netxen_remove_sysfs_entries.exit:                 ; preds = %if.then.i, %if.end.netxen_remove_sysfs_entries.exit_crit_edge
  tail call void @netxen_free_hw_resources(ptr noundef %adapter) #15
  tail call void @netxen_release_rx_buffers(ptr noundef %adapter) #15
  %max_sds_rings.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 11
  %6 = ptrtoint ptr %max_sds_rings.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %max_sds_rings.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp8.not.i = icmp eq i8 %7, 0
  br i1 %cmp8.not.i, label %netxen_remove_sysfs_entries.exit.netxen_napi_del.exit_crit_edge, label %for.body.lr.ph.i

netxen_remove_sysfs_entries.exit.netxen_napi_del.exit_crit_edge: ; preds = %netxen_remove_sysfs_entries.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_napi_del.exit

for.body.lr.ph.i:                                 ; preds = %netxen_remove_sysfs_entries.exit
  %sds_rings.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ring.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %sds_rings.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sds_rings.i, align 4
  %arrayidx.i = getelementptr %struct.nx_host_sds_ring, ptr %9, i32 %ring.09.i
  %irq.i = getelementptr %struct.nx_host_sds_ring, ptr %9, i32 %ring.09.i, i32 8
  %10 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq.i, align 8
  %call.i = tail call ptr @free_irq(i32 noundef %11, ptr noundef %arrayidx.i) #15
  %inc.i = add nuw nsw i32 %ring.09.i, 1
  %12 = ptrtoint ptr %max_sds_rings.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %max_sds_rings.i, align 1
  %conv.i = zext i8 %13 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %netxen_nic_free_irq.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

netxen_nic_free_irq.exit:                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp9.not.i = icmp eq i8 %13, 0
  br i1 %cmp9.not.i, label %netxen_nic_free_irq.exit.netxen_napi_del.exit_crit_edge, label %netxen_nic_free_irq.exit.for.body.i16_crit_edge

netxen_nic_free_irq.exit.for.body.i16_crit_edge:  ; preds = %netxen_nic_free_irq.exit
  br label %for.body.i16

netxen_nic_free_irq.exit.netxen_napi_del.exit_crit_edge: ; preds = %netxen_nic_free_irq.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_napi_del.exit

for.body.i16:                                     ; preds = %for.body.i16.for.body.i16_crit_edge, %netxen_nic_free_irq.exit.for.body.i16_crit_edge
  %ring.010.i = phi i32 [ %inc.i13, %for.body.i16.for.body.i16_crit_edge ], [ 0, %netxen_nic_free_irq.exit.for.body.i16_crit_edge ]
  %14 = ptrtoint ptr %sds_rings.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sds_rings.i, align 4
  %napi.i = getelementptr %struct.nx_host_sds_ring, ptr %15, i32 %ring.010.i, i32 6
  tail call void @__netif_napi_del(ptr noundef %napi.i) #15
  tail call void @synchronize_net() #15
  %inc.i13 = add nuw nsw i32 %ring.010.i, 1
  %16 = ptrtoint ptr %max_sds_rings.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %max_sds_rings.i, align 1
  %conv.i14 = zext i8 %17 to i32
  %cmp.i15 = icmp ult i32 %inc.i13, %conv.i14
  br i1 %cmp.i15, label %for.body.i16.for.body.i16_crit_edge, label %for.body.i16.netxen_napi_del.exit_crit_edge

for.body.i16.netxen_napi_del.exit_crit_edge:      ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_napi_del.exit

for.body.i16.for.body.i16_crit_edge:              ; preds = %for.body.i16
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i16

netxen_napi_del.exit:                             ; preds = %for.body.i16.netxen_napi_del.exit_crit_edge, %netxen_nic_free_irq.exit.netxen_napi_del.exit_crit_edge, %netxen_remove_sysfs_entries.exit.netxen_napi_del.exit_crit_edge
  %sds_rings.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 4
  %18 = ptrtoint ptr %sds_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sds_rings.i.i, align 4
  tail call void @kfree(ptr noundef %19) #15
  %20 = ptrtoint ptr %sds_rings.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %sds_rings.i.i, align 4
  tail call void @netxen_free_sw_resources(ptr noundef %adapter) #15
  %21 = ptrtoint ptr %is_up to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %is_up, align 2
  br label %return

return:                                           ; preds = %netxen_napi_del.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netxen_nic_attach(ptr noundef %adapter) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %pdev2 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %2 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev2, align 8
  %is_up = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 30
  %4 = ptrtoint ptr %is_up to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %is_up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %5)
  %cmp = icmp eq i16 %5, 777
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @netxen_init_firmware(ptr noundef %adapter) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 36
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, -129
  store i32 %and, ptr %flags, align 4
  %capabilities = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 35
  %8 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %capabilities, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %tobool7.not = icmp sgt i32 %9, -1
  br i1 %tobool7.not, label %if.end5.if.end15_crit_edge, label %if.then8

if.end5.if.end15_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then8:                                         ; preds = %if.end5
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %10 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crb_read, align 4
  %call9 = tail call i32 %11(ptr noundef %adapter, i32 noundef 136323372) #15
  %and10 = and i32 %call9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.then8.if.end15_crit_edge, label %if.then12

if.then8.if.end15_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags, align 4
  %or = or i32 %13, 128
  store i32 %or, ptr %flags, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %if.then8.if.end15_crit_edge, %if.end5.if.end15_crit_edge
  %max_sds_rings.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 11
  %14 = ptrtoint ptr %max_sds_rings.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %max_sds_rings.i, align 1
  %conv.i = zext i8 %15 to i32
  %mul.i.i = mul nuw nsw i32 %conv.i, 304
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i.i, i32 noundef 3520) #18
  %sds_rings.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 4
  %16 = ptrtoint ptr %sds_rings.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call9.i.i.i.i, ptr %sds_rings.i.i, align 4
  %cmp.i.not.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %cmp.i.not.i, label %if.end15.cleanup_crit_edge, label %for.cond.preheader.i

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end15
  %17 = ptrtoint ptr %max_sds_rings.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %max_sds_rings.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp13.not.i = icmp eq i8 %18, 0
  br i1 %cmp13.not.i, label %for.cond.preheader.i.if.end19_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end19_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %ring.014.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %19 = ptrtoint ptr %sds_rings.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sds_rings.i.i, align 4
  %napi.i = getelementptr %struct.nx_host_sds_ring, ptr %20, i32 %ring.014.i, i32 6
  tail call void @netif_napi_add(ptr noundef %1, ptr noundef %napi.i, ptr noundef nonnull @netxen_nic_poll, i32 noundef 64) #15
  %inc.i = add nuw nsw i32 %ring.014.i, 1
  %21 = ptrtoint ptr %max_sds_rings.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %max_sds_rings.i, align 1
  %conv3.i = zext i8 %22 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv3.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end19_crit_edge

for.body.i.if.end19_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end19:                                         ; preds = %for.body.i.if.end19_crit_edge, %for.cond.preheader.i.if.end19_crit_edge
  %call20 = tail call i32 @netxen_alloc_sw_resources(ptr noundef %adapter) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end24, label %do.end

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %1) #19
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %call25 = tail call i32 @netxen_alloc_hw_resources(ptr noundef %adapter) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %if.end35, label %do.end30

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %1) #19
  br label %err_out_free_sw

if.end35:                                         ; preds = %if.end24
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %23 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %24)
  %cmp37 = icmp ult i8 %24, 38
  br i1 %cmp37, label %if.then39, label %if.end35.if.end46_crit_edge

if.end35.if.end46_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end46

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  %tx_ring40 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 44
  %25 = ptrtoint ptr %tx_ring40 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tx_ring40, align 8
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %27 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %portnum, align 2
  %idxprom = zext i8 %28 to i32
  %arrayidx = getelementptr [4 x i32], ptr @crb_cmd_producer, i32 0, i32 %idxprom
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %call41 = tail call ptr @netxen_get_ioaddr(ptr noundef %adapter, i32 noundef %30) #15
  %crb_cmd_producer = getelementptr inbounds %struct.nx_host_tx_ring, ptr %26, i32 0, i32 3
  %31 = ptrtoint ptr %crb_cmd_producer to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call41, ptr %crb_cmd_producer, align 4
  %32 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %portnum, align 2
  %idxprom43 = zext i8 %33 to i32
  %arrayidx44 = getelementptr [4 x i32], ptr @crb_cmd_consumer, i32 0, i32 %idxprom43
  %34 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx44, align 4
  %call45 = tail call ptr @netxen_get_ioaddr(ptr noundef %adapter, i32 noundef %35) #15
  %crb_cmd_consumer = getelementptr inbounds %struct.nx_host_tx_ring, ptr %26, i32 0, i32 4
  %36 = ptrtoint ptr %crb_cmd_consumer to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call45, ptr %crb_cmd_consumer, align 4
  %37 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %26, align 4
  %sw_consumer = getelementptr inbounds %struct.nx_host_tx_ring, ptr %26, i32 0, i32 2
  %38 = ptrtoint ptr %sw_consumer to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %sw_consumer, align 4
  %io_write.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 59
  %39 = ptrtoint ptr %io_write.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %io_write.i, align 4
  %41 = ptrtoint ptr %crb_cmd_producer to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %crb_cmd_producer, align 4
  tail call void %40(ptr noundef %adapter, ptr noundef %42, i32 noundef 0) #15
  %43 = ptrtoint ptr %io_write.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %io_write.i, align 4
  %45 = ptrtoint ptr %crb_cmd_consumer to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %crb_cmd_consumer, align 4
  %47 = ptrtoint ptr %sw_consumer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %sw_consumer, align 4
  tail call void %44(ptr noundef %adapter, ptr noundef %46, i32 noundef %48) #15
  br label %if.end46

if.end46:                                         ; preds = %if.then39, %if.end35.if.end46_crit_edge
  %max_rds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 10
  %49 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %max_rds_rings, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %cmp48139.not = icmp eq i8 %50, 0
  br i1 %cmp48139.not, label %if.end46.for.end_crit_edge, label %for.body.lr.ph

if.end46.for.end_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end46
  %rds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %ring.0140 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %51 = ptrtoint ptr %rds_rings to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %rds_rings, align 8
  %arrayidx50 = getelementptr %struct.nx_host_rds_ring, ptr %52, i32 %ring.0140
  tail call void @netxen_post_rx_buffers(ptr noundef %adapter, i32 noundef %ring.0140, ptr noundef %arrayidx50) #15
  %inc = add nuw nsw i32 %ring.0140, 1
  %53 = ptrtoint ptr %max_rds_rings to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %max_rds_rings, align 8
  %conv47 = zext i8 %54 to i32
  %cmp48 = icmp ult i32 %inc, %conv47
  br i1 %cmp48, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end46.for.end_crit_edge
  %55 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %netdev1, align 4
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %flags, align 4
  %and.i = and i32 %58, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and5.i = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  %netxen_intr.netxen_msi_intr.i = select i1 %tobool6.not.i, ptr @netxen_intr, ptr @netxen_msi_intr
  %59 = shl nuw nsw i32 %and5.i, 6
  %60 = xor i32 %59, 128
  %handler.0.i = select i1 %tobool.not.i, ptr %netxen_intr.netxen_msi_intr.i, ptr @netxen_msix_intr
  %flags.0.i = select i1 %tobool.not.i, i32 %60, i32 0
  %irq.i = getelementptr inbounds %struct.net_device, ptr %56, i32 0, i32 64
  %61 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %irq.i, align 4
  %irq10.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 37
  %63 = ptrtoint ptr %irq10.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %irq10.i, align 8
  %sds_rings.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 4
  %64 = ptrtoint ptr %max_sds_rings.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %max_sds_rings.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %cmp42.not.i = icmp eq i8 %65, 0
  br i1 %cmp42.not.i, label %for.end.if.end59_crit_edge, label %for.end.for.body.i128_crit_edge

for.end.for.body.i128_crit_edge:                  ; preds = %for.end
  br label %for.body.i128

for.end.if.end59_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

for.cond.i:                                       ; preds = %for.body.i128
  %inc.i125 = add nuw nsw i32 %ring.043.i, 1
  %66 = ptrtoint ptr %max_sds_rings.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %max_sds_rings.i, align 1
  %conv.i126 = zext i8 %67 to i32
  %cmp.i127 = icmp ult i32 %inc.i125, %conv.i126
  br i1 %cmp.i127, label %for.cond.i.for.body.i128_crit_edge, label %for.cond.i.if.end59_crit_edge

for.cond.i.if.end59_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end59

for.cond.i.for.body.i128_crit_edge:               ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i128

for.body.i128:                                    ; preds = %for.cond.i.for.body.i128_crit_edge, %for.end.for.body.i128_crit_edge
  %ring.043.i = phi i32 [ %inc.i125, %for.cond.i.for.body.i128_crit_edge ], [ 0, %for.end.for.body.i128_crit_edge ]
  %68 = ptrtoint ptr %sds_rings.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %sds_rings.i, align 4
  %arrayidx.i = getelementptr %struct.nx_host_sds_ring, ptr %69, i32 %ring.043.i
  %name.i = getelementptr %struct.nx_host_sds_ring, ptr %69, i32 %ring.043.i, i32 10
  %call.i = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name.i, ptr noundef nonnull @.str.21, ptr noundef %56, i32 noundef %ring.043.i) #15
  %irq14.i = getelementptr %struct.nx_host_sds_ring, ptr %69, i32 %ring.043.i, i32 8
  %70 = ptrtoint ptr %irq14.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq14.i, align 8
  %call.i.i = tail call i32 @request_threaded_irq(i32 noundef %71, ptr noundef nonnull %handler.0.i, ptr noundef null, i32 noundef %flags.0.i, ptr noundef %name.i, ptr noundef %arrayidx.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool18.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool18.not.i, label %for.cond.i, label %do.end56

do.end56:                                         ; preds = %for.body.i128
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, ptr noundef %1) #19
  tail call void @netxen_release_rx_buffers(ptr noundef %adapter) #15
  tail call void @netxen_free_hw_resources(ptr noundef %adapter) #15
  br label %err_out_free_sw

if.end59:                                         ; preds = %for.cond.i.if.end59_crit_edge, %for.end.if.end59_crit_edge
  %72 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %73)
  %cmp63 = icmp ugt i8 %73, 47
  br i1 %cmp63, label %if.then65, label %if.end59.if.end66_crit_edge

if.end59.if.end66_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66

if.then65:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #17
  %flags.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 69, i32 2
  %74 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 4, ptr %flags.i, align 4
  %normal.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 69, i32 6
  %rx_time_us.i = getelementptr inbounds %struct.anon.150, ptr %normal.i, i32 0, i32 1
  %75 = ptrtoint ptr %rx_time_us.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 3, ptr %rx_time_us.i, align 2
  %76 = ptrtoint ptr %normal.i to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 256, ptr %normal.i, align 8
  %tx_time_us.i = getelementptr inbounds %struct.anon.150, ptr %normal.i, i32 0, i32 3
  %77 = ptrtoint ptr %tx_time_us.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 4, ptr %tx_time_us.i, align 2
  %tx_packets.i = getelementptr inbounds %struct.anon.150, ptr %normal.i, i32 0, i32 2
  %78 = ptrtoint ptr %tx_packets.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 64, ptr %tx_packets.i, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then65, %if.end59.if.end66_crit_edge
  %79 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %pdev2, align 8
  %dev1.i = getelementptr inbounds %struct.pci_dev, ptr %80, i32 0, i32 44
  %81 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %capabilities, align 8
  %and.i130 = and i32 %82, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %tobool.not.i131 = icmp eq i32 %and.i130, 0
  br i1 %tobool.not.i131, label %if.end66.netxen_create_sysfs_entries.exit_crit_edge, label %if.then.i

if.end66.netxen_create_sysfs_entries.exit_crit_edge: ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_create_sysfs_entries.exit

if.then.i:                                        ; preds = %if.end66
  %call.i132 = tail call i32 @device_create_file(ptr noundef %dev1.i, ptr noundef nonnull @dev_attr_bridged_mode) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool2.not.i = icmp eq i32 %call.i132, 0
  br i1 %tobool2.not.i, label %if.then.i.netxen_create_sysfs_entries.exit_crit_edge, label %do.end.i

if.then.i.netxen_create_sysfs_entries.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_create_sysfs_entries.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1.i, ptr noundef nonnull @.str.22) #19
  br label %netxen_create_sysfs_entries.exit

netxen_create_sysfs_entries.exit:                 ; preds = %do.end.i, %if.then.i.netxen_create_sysfs_entries.exit_crit_edge, %if.end66.netxen_create_sysfs_entries.exit_crit_edge
  %83 = ptrtoint ptr %is_up to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 777, ptr %is_up, align 2
  br label %cleanup

err_out_free_sw:                                  ; preds = %do.end56, %do.end30
  %err.0 = phi i32 [ %call25, %do.end30 ], [ %call.i.i, %do.end56 ]
  tail call void @netxen_free_sw_resources(ptr noundef %adapter) #15
  br label %cleanup

cleanup:                                          ; preds = %err_out_free_sw, %netxen_create_sysfs_entries.exit, %do.end, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %do.end ], [ %err.0, %err_out_free_sw ], [ 0, %netxen_create_sysfs_entries.exit ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__netxen_nic_up(ptr noundef %adapter, ptr noundef %netdev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %is_up = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 30
  %0 = ptrtoint ptr %is_up to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %is_up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %1)
  %cmp.not = icmp eq i16 %1, 777
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %init_port = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 51
  %2 = ptrtoint ptr %init_port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init_port, align 4
  %physical_port = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 17
  %4 = ptrtoint ptr %physical_port to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %physical_port, align 1
  %conv2 = zext i8 %5 to i32
  %call = tail call i32 %3(ptr noundef %adapter, i32 noundef %conv2) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %6 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %portnum, align 2
  %conv4 = zext i8 %7 to i32
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef nonnull @netxen_nic_driver_name, i32 noundef %conv4) #19
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %8 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %9)
  %cmp8 = icmp ult i8 %9, 38
  br i1 %cmp8, label %if.then10, label %if.end6.if.end12_crit_edge

if.end6.if.end12_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %macaddr_set = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 45
  %10 = ptrtoint ptr %macaddr_set to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %macaddr_set, align 4
  %mac_addr = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 41
  %call11 = tail call i32 %11(ptr noundef %adapter, ptr noundef %mac_addr) #15
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end6.if.end12_crit_edge
  %set_multi = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 48
  %12 = ptrtoint ptr %set_multi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %set_multi, align 8
  tail call void %13(ptr noundef %netdev) #15
  %set_mtu = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 46
  %14 = ptrtoint ptr %set_mtu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %set_mtu, align 8
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %16 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mtu, align 4
  %call13 = tail call i32 %15(ptr noundef %adapter, i32 noundef %17) #15
  %linkup = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 14
  %18 = ptrtoint ptr %linkup to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %linkup, align 1
  %max_sds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 11
  %19 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %max_sds_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %20)
  %cmp16 = icmp ugt i8 %20, 1
  br i1 %cmp16, label %if.then18, label %if.end12.if.end20_crit_edge

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then18:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %call19 = tail call i32 @netxen_config_rss(ptr noundef %adapter, i32 noundef 1) #15
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end12.if.end20_crit_edge
  %21 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %22)
  %cmp24 = icmp ugt i8 %22, 47
  br i1 %cmp24, label %if.then26, label %if.end20.if.end28_crit_edge

if.end20.if.end28_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then26:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #17
  %call27 = tail call i32 @netxen_config_intr_coalesce(ptr noundef %adapter) #15
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end20.if.end28_crit_edge
  %features = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %23 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %features, align 16
  %and = and i64 %24, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool29.not = icmp eq i64 %and, 0
  br i1 %tobool29.not, label %if.end28.if.end32_crit_edge, label %if.then30

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %call31 = tail call i32 @netxen_config_hw_lro(ptr noundef %adapter, i32 noundef 8) #15
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28.if.end32_crit_edge
  %25 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %max_sds_rings, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp8.not.i = icmp eq i8 %26, 0
  br i1 %cmp8.not.i, label %if.end32.netxen_napi_enable.exit_crit_edge, label %for.body.lr.ph.i

if.end32.netxen_napi_enable.exit_crit_edge:       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_napi_enable.exit

for.body.lr.ph.i:                                 ; preds = %if.end32
  %sds_rings.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 43, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %netxen_nic_enable_int.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ring.09.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %netxen_nic_enable_int.exit.i.for.body.i_crit_edge ]
  %27 = ptrtoint ptr %sds_rings.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sds_rings.i, align 4
  %napi.i = getelementptr %struct.nx_host_sds_ring, ptr %28, i32 %ring.09.i, i32 6
  tail call void @napi_enable(ptr noundef %napi.i) #15
  %adapter1.i.i = getelementptr %struct.nx_host_sds_ring, ptr %28, i32 %ring.09.i, i32 5
  %29 = ptrtoint ptr %adapter1.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %adapter1.i.i, align 4
  %io_write.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %30, i32 0, i32 59
  %31 = ptrtoint ptr %io_write.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %io_write.i.i, align 4
  %crb_intr_mask.i.i = getelementptr %struct.nx_host_sds_ring, ptr %28, i32 %ring.09.i, i32 3
  %33 = ptrtoint ptr %crb_intr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %crb_intr_mask.i.i, align 4
  tail call void %32(ptr noundef %30, ptr noundef %34, i32 noundef 1) #15
  %flags.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %30, i32 0, i32 36
  %35 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %36, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %for.body.i.netxen_nic_enable_int.exit.i_crit_edge

for.body.i.netxen_nic_enable_int.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_enable_int.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %37 = ptrtoint ptr %io_write.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %io_write.i.i, align 4
  %tgt_mask_reg.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %30, i32 0, i32 60
  %39 = ptrtoint ptr %tgt_mask_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tgt_mask_reg.i.i, align 8
  tail call void %38(ptr noundef %30, ptr noundef %40, i32 noundef 64511) #15
  br label %netxen_nic_enable_int.exit.i

netxen_nic_enable_int.exit.i:                     ; preds = %if.then.i.i, %for.body.i.netxen_nic_enable_int.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %ring.09.i, 1
  %41 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %max_sds_rings, align 1
  %conv.i = zext i8 %42 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %netxen_nic_enable_int.exit.i.for.body.i_crit_edge, label %netxen_nic_enable_int.exit.i.netxen_napi_enable.exit_crit_edge

netxen_nic_enable_int.exit.i.netxen_napi_enable.exit_crit_edge: ; preds = %netxen_nic_enable_int.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_napi_enable.exit

netxen_nic_enable_int.exit.i.for.body.i_crit_edge: ; preds = %netxen_nic_enable_int.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

netxen_napi_enable.exit:                          ; preds = %netxen_nic_enable_int.exit.i.netxen_napi_enable.exit_crit_edge, %if.end32.netxen_napi_enable.exit_crit_edge
  %capabilities = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 35
  %43 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %capabilities, align 8
  %and33 = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.else, label %if.then35

if.then35:                                        ; preds = %netxen_napi_enable.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call36 = tail call i32 @netxen_linkevent_request(ptr noundef %adapter, i32 noundef 1) #15
  br label %if.end37

if.else:                                          ; preds = %netxen_napi_enable.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netxen_nic_set_link_parameters(ptr noundef %adapter) #15
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then35
  %state = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 70
  tail call void @_set_bit(i32 noundef 1, ptr noundef %state) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ 0, %if.end37 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_device_attach(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netxen_advert_link_change(ptr nocapture noundef %adapter, i32 noundef %linkup) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %linkup2 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 14
  %2 = ptrtoint ptr %linkup2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %linkup2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %linkup)
  %tobool3.not = icmp eq i32 %linkup, 0
  %or.cond = and i1 %tobool3.not, %tobool.not
  br i1 %or.cond, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @netxen_nic_driver_name, ptr noundef %1) #19
  %4 = ptrtoint ptr %linkup2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %linkup2, align 1
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.end.if.end35.sink.split_crit_edge, label %if.then7

do.end.if.end35.sink.split_crit_edge:             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35.sink.split

if.then7:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netif_carrier_off(ptr noundef %1) #15
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %7 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %8, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  br label %if.end35.sink.split

if.else:                                          ; preds = %entry
  %or.cond52 = or i1 %tobool3.not, %tobool.not
  br i1 %or.cond52, label %if.else.if.end35_crit_edge, label %do.end18

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35

do.end18:                                         ; preds = %if.else
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @netxen_nic_driver_name, ptr noundef %1) #19
  %9 = ptrtoint ptr %linkup2 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %linkup2, align 1
  %state.i53 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %10 = ptrtoint ptr %state.i53 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %state.i53, align 4
  %and1.i.i54 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i54)
  %tobool.i55.not = icmp eq i32 %and1.i.i54, 0
  br i1 %tobool.i55.not, label %do.end18.if.end35.sink.split_crit_edge, label %if.then26

do.end18.if.end35.sink.split_crit_edge:           ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35.sink.split

if.then26:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netif_carrier_on(ptr noundef %1) #15
  %_tx.i.i56 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 103
  %12 = ptrtoint ptr %_tx.i.i56 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %_tx.i.i56, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %13) #15
  br label %if.end35.sink.split

if.end35.sink.split:                              ; preds = %if.then26, %do.end18.if.end35.sink.split_crit_edge, %if.then7, %do.end.if.end35.sink.split_crit_edge
  %has_link_events28 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 26
  %14 = ptrtoint ptr %has_link_events28 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_link_events28, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool29.not = icmp eq i8 %15, 0
  %conv32 = zext i1 %tobool29.not to i8
  %link_changed33 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 21
  %16 = ptrtoint ptr %link_changed33 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv32, ptr %link_changed33, align 1
  br label %if.end35

if.end35:                                         ; preds = %if.end35.sink.split, %if.else.if.end35_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_off(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_carrier_on(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nx_dev_request_reset(ptr noundef %adapter) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 5, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %0 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crb_read, align 4
  %call1 = tail call i32 %1(ptr noundef %adapter, i32 noundef 136323392) #15
  %switch.tableidx = add i32 %call1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 6
  br i1 %2, label %switch.hole_check, label %if.end.if.then6_crit_edge

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

if.then6:                                         ; preds = %switch.hole_check.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %3 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %crb_write, align 8
  %call7 = tail call i32 %4(ptr noundef %adapter, i32 noundef 136323392, i32 noundef 4) #15
  %flags = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 36
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or = or i32 %6, 64
  store i32 %or, ptr %flags, align 4
  br label %if.end9

switch.hole_check:                                ; preds = %if.end
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 53, %switch.maskindex
  %7 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %switch.lobit.not = icmp eq i8 %7, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then6_crit_edge, label %switch.lookup

switch.hole_check.if.then6_crit_edge:             ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then6

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.nx_dev_request_reset, i32 0, i32 %switch.tableidx
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end9

if.end9:                                          ; preds = %switch.lookup, %if.then6
  %ret.0 = phi i32 [ 0, %if.then6 ], [ %switch.load, %switch.lookup ]
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 5) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end9 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_pcie_sem_lock(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_pcie_sem_unlock(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_init_module() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @netxen_nic_driver_string) #19
  %call1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @netxen_netdev_cb) #15
  %call2 = tail call i32 @register_inetaddr_notifier(ptr noundef nonnull @netxen_inetaddr_cb) #15
  %call3 = tail call i32 @__pci_register_driver(ptr noundef nonnull @netxen_driver, ptr noundef null, ptr noundef nonnull @.str.1) #15
  ret i32 %call3
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @netxen_exit_module() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @pci_unregister_driver(ptr noundef nonnull @netxen_driver) #15
  %call = tail call i32 @unregister_inetaddr_notifier(ptr noundef nonnull @netxen_inetaddr_cb) #15
  %call1 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @netxen_netdev_cb) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_inetaddr_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_linkevent_request(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_p3_free_mac_list(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_release_tx_buffers(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_disable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_free_hw_resources(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_release_rx_buffers(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_free_sw_resources(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_file(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_show_bridged_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %capabilities = getelementptr i8, ptr %dev, i32 1440
  %0 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %capabilities, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %flags = getelementptr i8, ptr %dev, i32 1444
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and1 = lshr i32 %3, 4
  %and1.lobit = and i32 %and1, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bridged_mode.0 = phi i32 [ %and1.lobit, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call4 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %bridged_mode.0)
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_store_bridged_mode(ptr noundef %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %new = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 1200
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new) #15
  %0 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %new, align 4, !annotation !390
  %capabilities = getelementptr i8, ptr %dev, i32 1440
  %1 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %capabilities, align 8
  %and = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.err_out_crit_edge, label %if.end

entry.err_out_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out

if.end:                                           ; preds = %entry
  %is_up = getelementptr i8, ptr %dev, i32 1430
  %3 = ptrtoint ptr %is_up to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %is_up, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %4)
  %cmp.not = icmp eq i16 %4, 777
  br i1 %cmp.not, label %if.end3, label %if.end.err_out_crit_edge

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out

if.end3:                                          ; preds = %if.end
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 2, ptr noundef nonnull %new) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end7, label %if.end3.err_out_crit_edge

if.end3.err_out_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  %5 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %new, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8 = icmp ne i32 %6, 0
  %lnot.ext = zext i1 %tobool8 to i32
  %call10 = call i32 @netxen_config_bridged_mode(ptr noundef %add.ptr.i, i32 noundef %lnot.ext) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  %spec.select = select i1 %tobool11.not, i32 %len, i32 -22
  br label %err_out

err_out:                                          ; preds = %if.end7, %if.end3.err_out_crit_edge, %if.end.err_out_crit_edge, %entry.err_out_crit_edge
  %ret.0 = phi i32 [ -22, %if.end.err_out_crit_edge ], [ -22, %if.end3.err_out_crit_edge ], [ -22, %entry.err_out_crit_edge ], [ %spec.select, %if.end7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new) #15
  ret i32 %ret.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_config_bridged_mode(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__netif_napi_del(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_net() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_init_firmware(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_alloc_sw_resources(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_alloc_hw_resources(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netxen_get_ioaddr(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_post_rx_buffers(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_napi_add(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_poll(ptr noundef %napi, i32 noundef %budget) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %napi, i32 -24
  %adapter1 = getelementptr i8, ptr %napi, i32 -4
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %call = tail call i32 @netxen_process_cmd_ring(ptr noundef %1) #15
  %call2 = tail call i32 @netxen_process_rcv_ring(ptr noundef %add.ptr, i32 noundef %budget) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  %spec.select = select i1 %tobool.not, i32 %budget, i32 %call2
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %budget)
  %cmp = icmp slt i32 %spec.select, %budget
  br i1 %cmp, label %if.then3, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then3:                                         ; preds = %entry
  %call5 = tail call zeroext i1 @napi_complete_done(ptr noundef %napi, i32 noundef %spec.select) #15
  %state = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 70
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state, align 4
  %4 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not = icmp eq i32 %4, 0
  br i1 %tobool7.not, label %if.then3.if.end10_crit_edge, label %if.then8

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then8:                                         ; preds = %if.then3
  %5 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adapter1, align 4
  %io_write.i = getelementptr inbounds %struct.netxen_adapter, ptr %6, i32 0, i32 59
  %7 = ptrtoint ptr %io_write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_write.i, align 4
  %crb_intr_mask.i = getelementptr i8, ptr %napi, i32 -12
  %9 = ptrtoint ptr %crb_intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %crb_intr_mask.i, align 4
  tail call void %8(ptr noundef %6, ptr noundef %10, i32 noundef 1) #15
  %flags.i = getelementptr inbounds %struct.netxen_adapter, ptr %6, i32 0, i32 36
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %12, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then8.if.end10_crit_edge

if.then8.if.end10_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %io_write.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_write.i, align 4
  %tgt_mask_reg.i = getelementptr inbounds %struct.netxen_adapter, ptr %6, i32 0, i32 60
  %15 = ptrtoint ptr %tgt_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tgt_mask_reg.i, align 8
  tail call void %14(ptr noundef %6, ptr noundef %16, i32 noundef 64511) #15
  br label %if.end10

if.end10:                                         ; preds = %if.then.i, %if.then8.if.end10_crit_edge, %if.then3.if.end10_crit_edge, %entry.if.end10_crit_edge
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_process_cmd_ring(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_process_rcv_ring(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_complete_done(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_msix_intr(i32 noundef %irq, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %napi = getelementptr inbounds %struct.nx_host_sds_ring, ptr %data, i32 0, i32 6
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #15
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__napi_schedule(ptr noundef %napi) #15
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_msi_intr(i32 noundef %irq, ptr noundef %data) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.nx_host_sds_ring, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !391
  tail call void @arm_heavy_mb() #15
  %tgt_status_reg = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 62
  %2 = ptrtoint ptr %tgt_status_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tgt_status_reg, align 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 -1) #15, !srcloc !392
  %napi = getelementptr inbounds %struct.nx_host_sds_ring, ptr %data, i32 0, i32 6
  %call.i = tail call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #15
  br i1 %call.i, label %if.then.i, label %entry.napi_schedule.exit_crit_edge

entry.napi_schedule.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %napi_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__napi_schedule(ptr noundef %napi) #15
  br label %napi_schedule.exit

napi_schedule.exit:                               ; preds = %if.then.i, %entry.napi_schedule.exit_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_intr(i32 noundef %irq, ptr noundef %data) #1 align 64 {
entry:
  %our_int = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %adapter1 = getelementptr inbounds %struct.nx_host_sds_ring, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %adapter1, align 4
  %isr_int_vec = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 64
  %2 = ptrtoint ptr %isr_int_vec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %isr_int_vec, align 8
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #15, !srcloc !393
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !394
  %int_vec_bit = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 39
  %6 = ptrtoint ptr %int_vec_bit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %int_vec_bit, align 8
  %and = and i32 %7, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup44_crit_edge, label %if.end

entry.cleanup44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup44

if.end:                                           ; preds = %entry
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %9)
  %cmp = icmp ugt i8 %9, 47
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %crb_int_state_reg = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 63
  %10 = ptrtoint ptr %crb_int_state_reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %crb_int_state_reg, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #15, !srcloc !393
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !395
  %13 = and i32 %12, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %13)
  %cmp11 = icmp eq i32 %13, 131072
  br i1 %cmp11, label %if.then4.do.body29_crit_edge, label %if.then4.cleanup44_crit_edge

if.then4.cleanup44_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup44

if.then4.do.body29_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body29

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %our_int) #15
  %crb_int_state_reg17 = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 63
  %14 = ptrtoint ptr %crb_int_state_reg17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crb_int_state_reg17, align 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #15, !srcloc !393
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !396
  %18 = ptrtoint ptr %our_int to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %our_int, align 4
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 16
  %19 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %portnum, align 2
  %conv21 = zext i8 %20 to i32
  %add = add nuw nsw i32 %conv21, 7
  %call22 = call i32 @_test_and_clear_bit(i32 noundef %add, ptr noundef nonnull %our_int) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %cleanup44.critedge, label %do.body

do.body:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !397
  call void @arm_heavy_mb() #15
  %21 = ptrtoint ptr %our_int to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %our_int, align 4
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %crb_int_state_reg17 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crb_int_state_reg17, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #15, !srcloc !392
  %26 = ptrtoint ptr %adapter1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter1, align 4
  %io_write.i = getelementptr inbounds %struct.netxen_adapter, ptr %27, i32 0, i32 59
  %28 = ptrtoint ptr %io_write.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_write.i, align 4
  %crb_intr_mask.i = getelementptr inbounds %struct.nx_host_sds_ring, ptr %data, i32 0, i32 3
  %30 = ptrtoint ptr %crb_intr_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %crb_intr_mask.i, align 4
  call void %29(ptr noundef %27, ptr noundef %31, i32 noundef 0) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %our_int) #15
  br label %do.body29

do.body29:                                        ; preds = %do.body, %if.then4.do.body29_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !398
  call void @arm_heavy_mb() #15
  %tgt_status_reg = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 62
  %32 = ptrtoint ptr %tgt_status_reg to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tgt_status_reg, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 -1) #15, !srcloc !392
  %34 = ptrtoint ptr %isr_int_vec to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %isr_int_vec, align 8
  %36 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #15, !srcloc !393
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !399
  %37 = ptrtoint ptr %isr_int_vec to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %isr_int_vec, align 8
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #15, !srcloc !393
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !400
  %napi = getelementptr inbounds %struct.nx_host_sds_ring, ptr %data, i32 0, i32 6
  %call.i = call zeroext i1 @napi_schedule_prep(ptr noundef %napi) #15
  br i1 %call.i, label %if.then.i, label %do.body29.cleanup44_crit_edge

do.body29.cleanup44_crit_edge:                    ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup44

if.then.i:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #17
  call void @__napi_schedule(ptr noundef %napi) #15
  br label %cleanup44

cleanup44.critedge:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %our_int) #15
  br label %cleanup44

cleanup44:                                        ; preds = %cleanup44.critedge, %if.then.i, %do.body29.cleanup44_crit_edge, %if.then4.cleanup44_crit_edge, %entry.cleanup44_crit_edge
  %retval.1 = phi i32 [ 0, %entry.cleanup44_crit_edge ], [ 0, %if.then4.cleanup44_crit_edge ], [ 0, %cleanup44.critedge ], [ 1, %do.body29.cleanup44_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @napi_schedule_prep(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__napi_schedule(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_file(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_config_rss(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_config_intr_coalesce(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_config_hw_lro(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_nic_set_link_parameters(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @napi_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_inetaddr_notifier(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_probe(ptr noundef %pdev, ptr nocapture noundef readnone %ent) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %devfn = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 6
  %0 = ptrtoint ptr %devfn to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devfn, align 4
  %and = and i32 %1, 7
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %2 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %revision, align 4
  %4 = add i8 %3, -48
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %4)
  %5 = icmp ult i8 %4, 18
  br i1 %5, label %cond.end, label %if.end

cond.end:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.31, i32 noundef 48, i32 noundef 65) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @pci_enable_device(ptr noundef %pdev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %flags = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and11 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.err_out_disable_pdev_crit_edge, label %if.end14

if.end10.err_out_disable_pdev_crit_edge:          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_disable_pdev

if.end14:                                         ; preds = %if.end10
  %call15 = tail call i32 @pci_request_regions(ptr noundef %pdev, ptr noundef nonnull @netxen_nic_driver_name) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.err_out_disable_pdev_crit_edge

if.end14.err_out_disable_pdev_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_disable_pdev

if.end18:                                         ; preds = %if.end14
  %8 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %9)
  %cmp21 = icmp ugt i8 %9, 47
  br i1 %cmp21, label %if.then23, label %if.end18.if.end25_crit_edge

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %call24 = tail call i32 @pci_enable_pcie_error_reporting(ptr noundef %pdev) #15
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end18.if.end25_crit_edge
  tail call void @pci_set_master(ptr noundef %pdev) #15
  %call26 = tail call ptr @alloc_etherdev_mqs(i32 noundef 752, i32 noundef 1, i32 noundef 1) #15
  %tobool27.not = icmp eq ptr %call26, null
  br i1 %tobool27.not, label %if.end25.err_out_free_res_crit_edge, label %if.end29

if.end25.err_out_free_res_crit_edge:              ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_free_res

if.end29:                                         ; preds = %if.end25
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %parent = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 133, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %parent, align 8
  %add.ptr.i = getelementptr i8, ptr %call26, i32 2304
  %netdev32 = getelementptr i8, ptr %call26, i32 2436
  %11 = ptrtoint ptr %netdev32 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call26, ptr %netdev32, align 4
  %pdev33 = getelementptr i8, ptr %call26, i32 2440
  %12 = ptrtoint ptr %pdev33 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pdev, ptr %pdev33, align 8
  %conv34 = trunc i32 %and to i8
  %pci_func = getelementptr i8, ptr %call26, i32 2430
  %13 = ptrtoint ptr %pci_func to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv34, ptr %pci_func, align 2
  %14 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %revision, align 4
  %revision_id37 = getelementptr i8, ptr %call26, i32 2429
  %16 = ptrtoint ptr %revision_id37 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %revision_id37, align 1
  %crb_lock = getelementptr i8, ptr %call26, i32 2340
  tail call void @__rwlock_init(ptr noundef %crb_lock, ptr noundef nonnull @.str.32, ptr noundef nonnull @netxen_nic_probe.__key) #15
  %mem_lock = getelementptr i8, ptr %call26, i32 2384
  tail call void @__raw_spin_lock_init(ptr noundef %mem_lock, ptr noundef nonnull @.str.34, ptr noundef nonnull @netxen_nic_probe.__key.33, i16 noundef signext 3) #15
  %tx_clean_lock = getelementptr i8, ptr %call26, i32 2460
  tail call void @__raw_spin_lock_init(ptr noundef %tx_clean_lock, ptr noundef nonnull @.str.36, ptr noundef nonnull @netxen_nic_probe.__key.35, i16 noundef signext 3) #15
  %mac_list = getelementptr i8, ptr %call26, i32 2444
  %17 = ptrtoint ptr %mac_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %mac_list, ptr %mac_list, align 4
  %prev.i = getelementptr i8, ptr %call26, i32 2448
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %mac_list, ptr %prev.i, align 4
  %ip_list = getelementptr i8, ptr %call26, i32 2452
  %19 = ptrtoint ptr %ip_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %ip_list, ptr %ip_list, align 4
  %prev.i256 = getelementptr i8, ptr %call26, i32 2456
  %20 = ptrtoint ptr %prev.i256 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ip_list, ptr %prev.i256, align 4
  %21 = ptrtoint ptr %pdev33 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev33, align 8
  %23 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pci_func, align 2
  %conv.i = zext i8 %24 to i32
  %crb_win.i = getelementptr i8, ptr %call26, i32 2336
  %25 = ptrtoint ptr %crb_win.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %crb_win.i, align 8
  %ocm_win.i = getelementptr i8, ptr %call26, i32 2332
  %26 = ptrtoint ptr %ocm_win.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %ocm_win.i, align 4
  %resource.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 47
  %27 = ptrtoint ptr %resource.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %resource.i, align 8
  %end.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 47, i32 0, i32 1
  %29 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp.i = icmp eq i32 %30, 0
  %sub.i = sub i32 1, %28
  %add.i = add i32 %sub.i, %30
  %cond.i = select i1 %cmp.i, i32 0, i32 %add.i
  %31 = zext i32 %cond.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cond.i, label %if.end29.err_out_free_netdev_crit_edge [
    i32 134217728, label %if.then.i
    i32 33554432, label %if.then35.i
    i32 2097152, label %if.then58.i
  ]

if.end29.err_out_free_netdev_crit_edge:           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_free_netdev

if.then.i:                                        ; preds = %if.end29
  %call.i = tail call ptr @ioremap(i32 noundef %28, i32 noundef 1048576) #15
  %32 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %add.ptr.i, align 4
  %add18.i = add i32 %28, 100663296
  %call19.i = tail call ptr @ioremap(i32 noundef %add18.i, i32 noundef 9158656) #15
  %pci_base1.i = getelementptr i8, ptr %call26, i32 2308
  %33 = ptrtoint ptr %pci_base1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call19.i, ptr %pci_base1.i, align 4
  %add20.i = add i32 %28, 118374400
  %call21.i = tail call ptr @ioremap(i32 noundef %add20.i, i32 noundef 15843328) #15
  %pci_base2.i = getelementptr i8, ptr %call26, i32 2312
  %34 = ptrtoint ptr %pci_base2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call21.i, ptr %pci_base2.i, align 4
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %add.ptr.i, align 4
  %cmp23.i = icmp eq ptr %36, null
  br i1 %cmp23.i, label %if.then.i.do.end.i_crit_edge, label %lor.lhs.false.i

if.then.i.do.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

lor.lhs.false.i:                                  ; preds = %if.then.i
  %37 = ptrtoint ptr %pci_base1.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci_base1.i, align 4
  %cmp26.i = icmp eq ptr %38, null
  %cmp30.i = icmp eq ptr %call21.i, null
  %or.cond.i = select i1 %cmp26.i, i1 true, i1 %cmp30.i
  br i1 %or.cond.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false.i.if.end74.sink.split.i_crit_edge

lor.lhs.false.i.if.end74.sink.split.i_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74.sink.split.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false.i.do.end.i_crit_edge, %if.then.i.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.50) #19
  br label %err_out.i

if.then35.i:                                      ; preds = %if.end29
  %call36.i = tail call ptr @ioremap(i32 noundef %28, i32 noundef 9158656) #15
  %pci_base137.i = getelementptr i8, ptr %call26, i32 2308
  %39 = ptrtoint ptr %pci_base137.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call36.i, ptr %pci_base137.i, align 4
  %sub39.i = add i32 %28, 17711104
  %call40.i = tail call ptr @ioremap(i32 noundef %sub39.i, i32 noundef 15843328) #15
  %pci_base241.i = getelementptr i8, ptr %call26, i32 2312
  %40 = ptrtoint ptr %pci_base241.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call40.i, ptr %pci_base241.i, align 4
  %41 = ptrtoint ptr %pci_base137.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pci_base137.i, align 4
  %cmp43.i = icmp eq ptr %42, null
  %cmp47.i = icmp eq ptr %call40.i, null
  %or.cond221.i = select i1 %cmp43.i, i1 true, i1 %cmp47.i
  br i1 %or.cond221.i, label %do.end52.i, label %if.then35.i.if.end74.i_crit_edge

if.then35.i.if.end74.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74.i

do.end52.i:                                       ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev53.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53.i, ptr noundef nonnull @.str.50) #19
  br label %err_out.i

if.then58.i:                                      ; preds = %if.end29
  %call59.i = tail call ptr @pci_ioremap_bar(ptr noundef %22, i32 noundef 0) #15
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call59.i, ptr %add.ptr.i, align 4
  %cmp62.i = icmp eq ptr %call59.i, null
  br i1 %cmp62.i, label %do.end67.i, label %if.then58.i.if.end74.sink.split.i_crit_edge

if.then58.i.if.end74.sink.split.i_crit_edge:      ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end74.sink.split.i

do.end67.i:                                       ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev68.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev68.i, ptr noundef nonnull @.str.50) #19
  br label %err_out_free_netdev

if.end74.sink.split.i:                            ; preds = %if.then58.i.if.end74.sink.split.i_crit_edge, %lor.lhs.false.i.if.end74.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 1048576, %lor.lhs.false.i.if.end74.sink.split.i_crit_edge ], [ 2097152, %if.then58.i.if.end74.sink.split.i_crit_edge ]
  %pci_len070.i = getelementptr i8, ptr %call26, i32 2328
  %44 = ptrtoint ptr %pci_len070.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink.i, ptr %pci_len070.i, align 4
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.end74.sink.split.i, %if.then35.i.if.end74.i_crit_edge
  tail call void @netxen_setup_hwops(ptr noundef %add.ptr.i) #15
  %dev78.i = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %shr.i = lshr i32 %cond.i, 20
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev78.i, ptr noundef nonnull @.str.57, i32 noundef %shr.i) #19
  %45 = ptrtoint ptr %revision_id37 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %revision_id37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 79, i8 %46)
  %cmp81.i = icmp ugt i8 %46, 79
  br i1 %cmp81.i, label %if.then83.i, label %if.else88.i

if.then83.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #17
  %mul.i = shl nuw nsw i32 %conv.i, 5
  %add85.i = add nuw nsw i32 %mul.i, 101779456
  br label %if.end111.i

if.else88.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %46)
  %cmp92.i = icmp ugt i8 %46, 47
  br i1 %cmp92.i, label %if.then94.i, label %if.else88.i.if.end118.i_crit_edge

if.else88.i.if.end118.i_crit_edge:                ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end118.i

if.then94.i:                                      ; preds = %if.else88.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %24)
  %cmp95.i = icmp ult i8 %24, 4
  %mul98.i = shl nuw nsw i32 %conv.i, 5
  %add99.i = add nuw nsw i32 %mul98.i, 66048
  %sub101.i = shl nuw nsw i32 %conv.i, 4
  %add103.i = add nuw nsw i32 %sub101.i, 66144
  %cond105.i = select i1 %cmp95.i, i32 %add99.i, i32 %add103.i
  %add106.i = or i32 %cond105.i, 101711872
  br label %if.end111.i

if.end111.i:                                      ; preds = %if.then94.i, %if.then83.i
  %add106.sink.i = phi i32 [ %add106.i, %if.then94.i ], [ %add85.i, %if.then83.i ]
  %call107.i = tail call ptr @netxen_get_ioaddr(ptr noundef %add.ptr.i, i32 noundef %add106.sink.i) #15
  %ocm_win_crb109.i = getelementptr i8, ptr %call26, i32 2320
  %47 = ptrtoint ptr %ocm_win_crb109.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call107.i, ptr %ocm_win_crb109.i, align 8
  %48 = ptrtoint ptr %revision_id37 to i32
  call void @__asan_load1_noabort(i32 %48)
  %.pr.i = load i8, ptr %revision_id37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %.pr.i)
  %cmp115.i = icmp ugt i8 %.pr.i, 47
  br i1 %cmp115.i, label %if.end111.i.if.end54_crit_edge, label %if.end111.i.if.end118.i_crit_edge

if.end111.i.if.end118.i_crit_edge:                ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end118.i

if.end111.i.if.end54_crit_edge:                   ; preds = %if.end111.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

if.end118.i:                                      ; preds = %if.end111.i.if.end118.i_crit_edge, %if.else88.i.if.end118.i_crit_edge
  %arrayidx120.i = getelementptr %struct.pci_dev, ptr %22, i32 0, i32 47, i32 4
  %49 = ptrtoint ptr %arrayidx120.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx120.i, align 8
  %end124.i = getelementptr %struct.pci_dev, ptr %22, i32 0, i32 47, i32 4, i32 1
  %51 = ptrtoint ptr %end124.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %end124.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp125.i = icmp eq i32 %52, 0
  %sub135.i = sub i32 %52, %50
  %add136.i = add i32 %sub135.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add136.i)
  %cmp139223.i = icmp eq i32 %add136.i, 0
  %cmp139.i = select i1 %cmp125.i, i1 true, i1 %cmp139223.i
  br i1 %cmp139.i, label %do.end144.i, label %if.end146.i

do.end144.i:                                      ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #17
  %call145.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef nonnull @netxen_nic_driver_name) #19
  br label %err_out.i

if.end146.i:                                      ; preds = %if.end118.i
  %call147.i = tail call ptr @ioremap(i32 noundef %50, i32 noundef 4096) #15
  %tobool.not.i = icmp eq ptr %call147.i, null
  br i1 %tobool.not.i, label %do.end151.i, label %if.end146.i.if.end54_crit_edge

if.end146.i.if.end54_crit_edge:                   ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end54

do.end151.i:                                      ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #17
  %call153.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef nonnull @netxen_nic_driver_name) #19
  br label %err_out.i

err_out.i:                                        ; preds = %do.end151.i, %do.end144.i, %do.end52.i, %do.end.i
  %db_base.i.i = getelementptr i8, ptr %call26, i32 2316
  %53 = ptrtoint ptr %db_base.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %db_base.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %54, null
  br i1 %cmp.not.i.i, label %err_out.i.if.end.i.i_crit_edge, label %if.then.i.i

err_out.i.if.end.i.i_crit_edge:                   ; preds = %err_out.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %err_out.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iounmap(ptr noundef nonnull %54) #15
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %err_out.i.if.end.i.i_crit_edge
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %add.ptr.i, align 8
  %cmp4.not.i.i = icmp eq ptr %56, null
  br i1 %cmp4.not.i.i, label %if.end.i.i.if.end8.i.i_crit_edge, label %if.then5.i.i

if.end.i.i.if.end8.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iounmap(ptr noundef nonnull %56) #15
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then5.i.i, %if.end.i.i.if.end8.i.i_crit_edge
  %pci_base1.i.i = getelementptr i8, ptr %call26, i32 2308
  %57 = ptrtoint ptr %pci_base1.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pci_base1.i.i, align 4
  %cmp10.not.i.i = icmp eq ptr %58, null
  br i1 %cmp10.not.i.i, label %if.end8.i.i.if.end14.i.i_crit_edge, label %if.then11.i.i

if.end8.i.i.if.end14.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i.i

if.then11.i.i:                                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iounmap(ptr noundef nonnull %58) #15
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then11.i.i, %if.end8.i.i.if.end14.i.i_crit_edge
  %pci_base2.i.i = getelementptr i8, ptr %call26, i32 2312
  %59 = ptrtoint ptr %pci_base2.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pci_base2.i.i, align 8
  %cmp16.not.i.i = icmp eq ptr %60, null
  br i1 %cmp16.not.i.i, label %if.end14.i.i.err_out_free_netdev_crit_edge, label %if.then17.i.i

if.end14.i.i.err_out_free_netdev_crit_edge:       ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_free_netdev

if.then17.i.i:                                    ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iounmap(ptr noundef nonnull %60) #15
  br label %err_out_free_netdev

if.end54:                                         ; preds = %if.end146.i.if.end54_crit_edge, %if.end111.i.if.end54_crit_edge
  %db_len.0.i = phi i32 [ 0, %if.end111.i.if.end54_crit_edge ], [ %add136.i, %if.end146.i.if.end54_crit_edge ]
  %db_ptr.0.i = phi ptr [ null, %if.end111.i.if.end54_crit_edge ], [ %call147.i, %if.end146.i.if.end54_crit_edge ]
  %db_base156.i = getelementptr i8, ptr %call26, i32 2316
  %61 = ptrtoint ptr %db_base156.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %db_ptr.0.i, ptr %db_base156.i, align 4
  %db_len158.i = getelementptr i8, ptr %call26, i32 2324
  %62 = ptrtoint ptr %db_len158.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %db_len.0.i, ptr %db_len158.i, align 4
  %portnum = getelementptr i8, ptr %call26, i32 2518
  %63 = ptrtoint ptr %portnum to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv34, ptr %portnum, align 2
  %call56 = tail call i32 @netxen_nic_get_board_info(ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %if.end63, label %do.end61

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #19
  br label %err_out_iounmap

if.end63:                                         ; preds = %if.end54
  tail call fastcc void @netxen_mask_aer_correctable(ptr noundef %add.ptr.i)
  %board_type = getelementptr i8, ptr %call26, i32 2434
  %64 = ptrtoint ptr %board_type to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %board_type, align 2
  %.off = add i16 %65, -13
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off)
  %switch = icmp ult i16 %.off, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp66 = icmp ugt i32 %and, 1
  %or.cond255 = select i1 %switch, i1 %cmp66, i1 false
  br i1 %or.cond255, label %if.then68, label %if.end63.sw.epilog_crit_edge

if.end63.sw.epilog_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then68:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #17
  %conv69 = add nsw i8 %conv34, -2
  %66 = ptrtoint ptr %portnum to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %conv69, ptr %portnum, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then68, %if.end63.sw.epilog_crit_edge
  %call72 = tail call i32 @netxen_check_flash_fw_compatibility(ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %if.end75, label %sw.epilog.err_out_iounmap_crit_edge

sw.epilog.err_out_iounmap_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_iounmap

if.end75:                                         ; preds = %sw.epilog
  %67 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %portnum, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %cmp78 = icmp eq i8 %68, 0
  br i1 %cmp78, label %if.then80, label %if.end75.if.end90_crit_edge

if.end75.if.end90_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end90

if.then80:                                        ; preds = %if.end75
  %crb_read = getelementptr i8, ptr %call26, i32 2708
  %69 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %crb_read, align 4
  %call81 = tail call i32 %70(ptr noundef %add.ptr.i, i32 noundef 136323384) #15
  %71 = zext i32 %call81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.175)
  switch i32 %call81, label %if.then87 [
    i32 -1, label %if.then80.if.end90_crit_edge
    i32 0, label %if.then80.if.end90_crit_edge259
  ]

if.then80.if.end90_crit_edge259:                  ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end90

if.then80.if.end90_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end90

if.then87:                                        ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #17
  %crb_write = getelementptr i8, ptr %call26, i32 2712
  %72 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %crb_write, align 8
  %call88 = tail call i32 %73(ptr noundef %add.ptr.i, i32 noundef 136323384, i32 noundef 0) #15
  %need_fw_reset = getelementptr i8, ptr %call26, i32 2527
  %74 = ptrtoint ptr %need_fw_reset to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 1, ptr %need_fw_reset, align 1
  br label %if.end90

if.end90:                                         ; preds = %if.then87, %if.then80.if.end90_crit_edge, %if.then80.if.end90_crit_edge259, %if.end75.if.end90_crit_edge
  %call91 = tail call fastcc i32 @netxen_start_firmware(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %if.end90.err_out_decr_ref_crit_edge

if.end90.err_out_decr_ref_crit_edge:              ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_decr_ref

if.end94:                                         ; preds = %if.end90
  %75 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %portnum, align 2
  %physical_port = getelementptr i8, ptr %call26, i32 2519
  %77 = ptrtoint ptr %physical_port to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 %76, ptr %physical_port, align 1
  %78 = ptrtoint ptr %revision_id37 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %revision_id37, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %79)
  %cmp99 = icmp ult i8 %79, 38
  br i1 %cmp99, label %if.then101, label %if.end94.if.end112_crit_edge

if.end94.if.end112_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end112

if.then101:                                       ; preds = %if.end94
  %crb_read102 = getelementptr i8, ptr %call26, i32 2708
  %80 = ptrtoint ptr %crb_read102 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %crb_read102, align 4
  %conv104 = zext i8 %76 to i32
  %mul = shl nuw nsw i32 %conv104, 2
  %add = add nuw nsw i32 %mul, 136324240
  %call105 = tail call i32 %81(ptr noundef %add.ptr.i, i32 noundef %add) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %call105)
  %cmp106.not = icmp eq i32 %call105, 1431655765
  br i1 %cmp106.not, label %if.then101.if.end112thread-pre-split_crit_edge, label %if.then108

if.then101.if.end112thread-pre-split_crit_edge:   ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end112thread-pre-split

if.then108:                                       ; preds = %if.then101
  call void @__sanitizer_cov_trace_pc() #17
  %conv109 = trunc i32 %call105 to i8
  %82 = ptrtoint ptr %physical_port to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %conv109, ptr %physical_port, align 1
  br label %if.end112thread-pre-split

if.end112thread-pre-split:                        ; preds = %if.then108, %if.then101.if.end112thread-pre-split_crit_edge
  %83 = ptrtoint ptr %revision_id37 to i32
  call void @__asan_load1_noabort(i32 %83)
  %.pr = load i8, ptr %revision_id37, align 1
  br label %if.end112

if.end112:                                        ; preds = %if.end112thread-pre-split, %if.end94.if.end112_crit_edge
  %84 = phi i8 [ %.pr, %if.end112thread-pre-split ], [ %79, %if.end94.if.end112_crit_edge ]
  %min_mtu = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 30
  %85 = ptrtoint ptr %min_mtu to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 0, ptr %min_mtu, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %84)
  %cmp116 = icmp ugt i8 %84, 47
  %spec.select = select i1 %cmp116, i32 9600, i32 8000
  %86 = getelementptr inbounds %struct.net_device, ptr %call26, i32 0, i32 31
  %87 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %spec.select, ptr %86, align 4
  tail call void @netxen_nic_clear_stats(ptr noundef %add.ptr.i) #15
  %call121 = tail call fastcc i32 @netxen_setup_intr(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %if.end129, label %do.end126

do.end126:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #17
  %88 = ptrtoint ptr %pdev33 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdev33, align 8
  %dev128 = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev128, ptr noundef nonnull @.str.41, i32 noundef %call121) #19
  br label %err_out_disable_msi

if.end129:                                        ; preds = %if.end112
  tail call fastcc void @netxen_read_ula_info(ptr noundef %add.ptr.i)
  %call130 = tail call fastcc i32 @netxen_setup_netdev(ptr noundef %add.ptr.i, ptr noundef nonnull %call26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end133, label %if.end129.err_out_disable_msi_crit_edge

if.end129.err_out_disable_msi_crit_edge:          ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out_disable_msi

if.end133:                                        ; preds = %if.end129
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %90 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %add.ptr.i, ptr %driver_data.i.i, align 4
  tail call fastcc void @netxen_schedule_work(ptr noundef %add.ptr.i, ptr noundef nonnull @netxen_fw_poll_work, i32 noundef 200)
  %port_type = getelementptr i8, ptr %call26, i32 2432
  %91 = ptrtoint ptr %port_type to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %port_type, align 8
  %93 = zext i16 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.176)
  switch i16 %92, label %if.end133.sw.epilog154_crit_edge [
    i16 1, label %if.end133.sw.epilog154.sink.split_crit_edge
    i16 2, label %do.end148
  ]

if.end133.sw.epilog154.sink.split_crit_edge:      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog154.sink.split

if.end133.sw.epilog154_crit_edge:                 ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog154

do.end148:                                        ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog154.sink.split

sw.epilog154.sink.split:                          ; preds = %do.end148, %if.end133.sw.epilog154.sink.split_crit_edge
  %.str.48.sink = phi ptr [ @.str.48, %do.end148 ], [ @.str.44, %if.end133.sw.epilog154.sink.split_crit_edge ]
  %94 = ptrtoint ptr %pdev33 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pdev33, align 8
  %dev150 = getelementptr inbounds %struct.pci_dev, ptr %95, i32 0, i32 44
  %96 = ptrtoint ptr %netdev32 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %netdev32, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev150, ptr noundef nonnull %.str.48.sink, ptr noundef %97) #19
  br label %sw.epilog154

sw.epilog154:                                     ; preds = %sw.epilog154.sink.split, %if.end133.sw.epilog154_crit_edge
  tail call fastcc void @netxen_create_diag_entries(ptr noundef %add.ptr.i)
  br label %cleanup

err_out_disable_msi:                              ; preds = %if.end129.err_out_disable_msi_crit_edge, %do.end126
  %err.0 = phi i32 [ %call121, %do.end126 ], [ %call130, %if.end129.err_out_disable_msi_crit_edge ]
  tail call fastcc void @netxen_teardown_intr(ptr noundef %add.ptr.i)
  tail call void @netxen_free_dummy_dma(ptr noundef %add.ptr.i) #15
  br label %err_out_decr_ref

err_out_decr_ref:                                 ; preds = %err_out_disable_msi, %if.end90.err_out_decr_ref_crit_edge
  %err.1 = phi i32 [ %call91, %if.end90.err_out_decr_ref_crit_edge ], [ %err.0, %err_out_disable_msi ]
  %call155 = tail call fastcc i32 @nx_decr_dev_ref_cnt(ptr noundef %add.ptr.i)
  br label %err_out_iounmap

err_out_iounmap:                                  ; preds = %err_out_decr_ref, %sw.epilog.err_out_iounmap_crit_edge, %do.end61
  %err.2 = phi i32 [ %call56, %do.end61 ], [ %call72, %sw.epilog.err_out_iounmap_crit_edge ], [ %err.1, %err_out_decr_ref ]
  tail call fastcc void @netxen_cleanup_pci_map(ptr noundef %add.ptr.i)
  br label %err_out_free_netdev

err_out_free_netdev:                              ; preds = %err_out_iounmap, %if.then17.i.i, %if.end14.i.i.err_out_free_netdev_crit_edge, %do.end67.i, %if.end29.err_out_free_netdev_crit_edge
  %err.3 = phi i32 [ %err.2, %err_out_iounmap ], [ -5, %do.end67.i ], [ -5, %if.end29.err_out_free_netdev_crit_edge ], [ -5, %if.end14.i.i.err_out_free_netdev_crit_edge ], [ -5, %if.then17.i.i ]
  tail call void @free_netdev(ptr noundef nonnull %call26) #15
  br label %err_out_free_res

err_out_free_res:                                 ; preds = %err_out_free_netdev, %if.end25.err_out_free_res_crit_edge
  %err.4 = phi i32 [ %err.3, %err_out_free_netdev ], [ -12, %if.end25.err_out_free_res_crit_edge ]
  %98 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %99)
  %cmp158 = icmp ugt i8 %99, 47
  br i1 %cmp158, label %if.then160, label %err_out_free_res.if.end162_crit_edge

err_out_free_res.if.end162_crit_edge:             ; preds = %err_out_free_res
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end162

if.then160:                                       ; preds = %err_out_free_res
  call void @__sanitizer_cov_trace_pc() #17
  %call161 = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %pdev) #15
  br label %if.end162

if.end162:                                        ; preds = %if.then160, %err_out_free_res.if.end162_crit_edge
  tail call void @pci_release_regions(ptr noundef %pdev) #15
  br label %err_out_disable_pdev

err_out_disable_pdev:                             ; preds = %if.end162, %if.end14.err_out_disable_pdev_crit_edge, %if.end10.err_out_disable_pdev_crit_edge
  %err.5 = phi i32 [ %call15, %if.end14.err_out_disable_pdev_crit_edge ], [ %err.4, %if.end162 ], [ -19, %if.end10.err_out_disable_pdev_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %pdev) #15
  br label %cleanup

cleanup:                                          ; preds = %err_out_disable_pdev, %sw.epilog154, %if.end.cleanup_crit_edge, %cond.end
  %retval.0 = phi i32 [ -19, %cond.end ], [ %err.5, %err_out_disable_pdev ], [ 0, %sw.epilog154 ], [ %call7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_nic_remove(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %netdev1 = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 4
  %state.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 70
  %call3.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not4.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not4.i, label %if.end.netxen_cancel_fw_work.exit_crit_edge, label %if.end.while.body.i_crit_edge

if.end.while.body.i_crit_edge:                    ; preds = %if.end
  br label %while.body.i

if.end.netxen_cancel_fw_work.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_cancel_fw_work.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 10) #15
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state.i) #15
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i.netxen_cancel_fw_work.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.body.i.netxen_cancel_fw_work.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_cancel_fw_work.exit

netxen_cancel_fw_work.exit:                       ; preds = %while.body.i.netxen_cancel_fw_work.exit_crit_edge, %if.end.netxen_cancel_fw_work.exit_crit_edge
  %fw_work.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 67
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %fw_work.i) #15
  tail call void @unregister_netdev(ptr noundef %3) #15
  %tx_timeout_task = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 68
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_timeout_task) #15
  %ip_list.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %ip_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ip_list.i, align 4
  %cmp.not39.i = icmp eq ptr %5, %ip_list.i
  br i1 %cmp.not39.i, label %netxen_cancel_fw_work.exit.netxen_free_ip_list.exit_crit_edge, label %netxen_cancel_fw_work.exit.for.body.i_crit_edge

netxen_cancel_fw_work.exit.for.body.i_crit_edge:  ; preds = %netxen_cancel_fw_work.exit
  br label %for.body.i

netxen_cancel_fw_work.exit.netxen_free_ip_list.exit_crit_edge: ; preds = %netxen_cancel_fw_work.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_free_ip_list.exit

for.body.i:                                       ; preds = %for.inc.sink.split.i.for.body.i_crit_edge, %netxen_cancel_fw_work.exit.for.body.i_crit_edge
  %cur.040.i = phi ptr [ %tmp_cur.043.i, %for.inc.sink.split.i.for.body.i_crit_edge ], [ %5, %netxen_cancel_fw_work.exit.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %cur.040.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %tmp_cur.043.i = load ptr, ptr %cur.040.i, align 4
  %ip_addr11.i = getelementptr inbounds %struct.nx_ip_list, ptr %cur.040.i, i32 0, i32 1
  %7 = ptrtoint ptr %ip_addr11.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ip_addr11.i, align 4
  %call12.i = tail call i32 @netxen_config_ipaddr(ptr noundef nonnull %1, i32 noundef %8, i32 noundef 3) #15
  %call.i.i32.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cur.040.i) #15
  br i1 %call.i.i32.i, label %if.end.i.i35.i, label %for.body.i.for.inc.sink.split.i_crit_edge

for.body.i.for.inc.sink.split.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.sink.split.i

if.end.i.i35.i:                                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i33.i = getelementptr inbounds %struct.list_head, ptr %cur.040.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i33.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i33.i, align 4
  %11 = ptrtoint ptr %cur.040.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cur.040.i, align 4
  %prev1.i.i.i34.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i34.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %for.inc.sink.split.i

for.inc.sink.split.i:                             ; preds = %if.end.i.i35.i, %for.body.i.for.inc.sink.split.i_crit_edge
  %15 = ptrtoint ptr %cur.040.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %cur.040.i, align 4
  %prev.i36.i = getelementptr inbounds %struct.list_head, ptr %cur.040.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i36.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i36.i, align 4
  tail call void @kfree(ptr noundef %cur.040.i) #15
  %cmp.not.i = icmp eq ptr %tmp_cur.043.i, %ip_list.i
  br i1 %cmp.not.i, label %for.inc.sink.split.i.netxen_free_ip_list.exit_crit_edge, label %for.inc.sink.split.i.for.body.i_crit_edge

for.inc.sink.split.i.for.body.i_crit_edge:        ; preds = %for.inc.sink.split.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.sink.split.i.netxen_free_ip_list.exit_crit_edge: ; preds = %for.inc.sink.split.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_free_ip_list.exit

netxen_free_ip_list.exit:                         ; preds = %for.inc.sink.split.i.netxen_free_ip_list.exit_crit_edge, %netxen_cancel_fw_work.exit.netxen_free_ip_list.exit_crit_edge
  tail call fastcc void @netxen_nic_detach(ptr noundef nonnull %1)
  %call3 = tail call fastcc i32 @nx_decr_dev_ref_cnt(ptr noundef nonnull %1)
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 16
  %17 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %portnum, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp4 = icmp eq i8 %18, 0
  br i1 %cmp4, label %if.then6, label %netxen_free_ip_list.exit.if.end7_crit_edge

netxen_free_ip_list.exit.if.end7_crit_edge:       ; preds = %netxen_free_ip_list.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then6:                                         ; preds = %netxen_free_ip_list.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netxen_free_dummy_dma(ptr noundef nonnull %1) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %netxen_free_ip_list.exit.if.end7_crit_edge
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state.i) #15
  %flags.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 36
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %20, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i35 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i35, label %if.end7.if.end.i_crit_edge, label %if.then.i

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %pdev.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev.i, align 8
  tail call void @pci_disable_msix(ptr noundef %22) #15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end7.if.end.i_crit_edge
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags.i, align 4
  %and2.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.netxen_teardown_intr.exit_crit_edge, label %if.then4.i

if.end.i.netxen_teardown_intr.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_teardown_intr.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %pdev5.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %pdev5.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev5.i, align 8
  tail call void @pci_disable_msi(ptr noundef %26) #15
  br label %netxen_teardown_intr.exit

netxen_teardown_intr.exit:                        ; preds = %if.then4.i, %if.end.i.netxen_teardown_intr.exit_crit_edge
  %crb_write.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 54
  %27 = ptrtoint ptr %crb_write.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %crb_write.i, align 8
  %call.i36 = tail call i32 %28(ptr noundef nonnull %1, i32 noundef 136323652, i32 noundef 0) #15
  %pdev1.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 2
  %29 = ptrtoint ptr %pdev1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev1.i, align 8
  %dev2.i = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  tail call void @device_remove_file(ptr noundef %dev2.i, ptr noundef nonnull @dev_attr_diag_mode) #15
  tail call void @device_remove_bin_file(ptr noundef %dev2.i, ptr noundef nonnull @bin_attr_crb) #15
  tail call void @device_remove_bin_file(ptr noundef %dev2.i, ptr noundef nonnull @bin_attr_mem) #15
  tail call void @device_remove_bin_file(ptr noundef %dev2.i, ptr noundef nonnull @bin_attr_dimm) #15
  %db_base.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %1, i32 0, i32 3
  %31 = ptrtoint ptr %db_base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %db_base.i, align 4
  %cmp.not.i37 = icmp eq ptr %32, null
  br i1 %cmp.not.i37, label %netxen_teardown_intr.exit.if.end.i39_crit_edge, label %if.then.i38

netxen_teardown_intr.exit.if.end.i39_crit_edge:   ; preds = %netxen_teardown_intr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i39

if.then.i38:                                      ; preds = %netxen_teardown_intr.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iounmap(ptr noundef nonnull %32) #15
  br label %if.end.i39

if.end.i39:                                       ; preds = %if.then.i38, %netxen_teardown_intr.exit.if.end.i39_crit_edge
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %cmp4.not.i = icmp eq ptr %34, null
  br i1 %cmp4.not.i, label %if.end.i39.if.end8.i_crit_edge, label %if.then5.i

if.end.i39.if.end8.i_crit_edge:                   ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iounmap(ptr noundef nonnull %34) #15
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then5.i, %if.end.i39.if.end8.i_crit_edge
  %pci_base1.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %pci_base1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pci_base1.i, align 4
  %cmp10.not.i = icmp eq ptr %36, null
  br i1 %cmp10.not.i, label %if.end8.i.if.end14.i_crit_edge, label %if.then11.i

if.end8.i.if.end14.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iounmap(ptr noundef nonnull %36) #15
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end8.i.if.end14.i_crit_edge
  %pci_base2.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %1, i32 0, i32 2
  %37 = ptrtoint ptr %pci_base2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pci_base2.i, align 8
  %cmp16.not.i = icmp eq ptr %38, null
  br i1 %cmp16.not.i, label %if.end14.i.netxen_cleanup_pci_map.exit_crit_edge, label %if.then17.i

if.end14.i.netxen_cleanup_pci_map.exit_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_cleanup_pci_map.exit

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iounmap(ptr noundef nonnull %38) #15
  br label %netxen_cleanup_pci_map.exit

netxen_cleanup_pci_map.exit:                      ; preds = %if.then17.i, %if.end14.i.netxen_cleanup_pci_map.exit_crit_edge
  tail call void @netxen_release_firmware(ptr noundef nonnull %1) #15
  %revision = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 12
  %39 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %40)
  %cmp9 = icmp ugt i8 %40, 47
  br i1 %cmp9, label %if.then11, label %netxen_cleanup_pci_map.exit.if.end13_crit_edge

netxen_cleanup_pci_map.exit.if.end13_crit_edge:   ; preds = %netxen_cleanup_pci_map.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then11:                                        ; preds = %netxen_cleanup_pci_map.exit
  %md_template.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 74, i32 10
  %41 = ptrtoint ptr %md_template.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %md_template.i, align 8
  tail call void @kfree(ptr noundef %42) #15
  %43 = ptrtoint ptr %md_template.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %md_template.i, align 8
  %md_capture_buff.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 74, i32 11
  %44 = ptrtoint ptr %md_capture_buff.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %md_capture_buff.i, align 4
  %tobool.not.i40 = icmp eq ptr %45, null
  br i1 %tobool.not.i40, label %if.then11.netxen_cleanup_minidump.exit_crit_edge, label %if.then.i41

if.then11.netxen_cleanup_minidump.exit_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_cleanup_minidump.exit

if.then.i41:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vfree(ptr noundef nonnull %45) #15
  %46 = ptrtoint ptr %md_capture_buff.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %md_capture_buff.i, align 4
  br label %netxen_cleanup_minidump.exit

netxen_cleanup_minidump.exit:                     ; preds = %if.then.i41, %if.then11.netxen_cleanup_minidump.exit_crit_edge
  %call12 = tail call i32 @pci_disable_pcie_error_reporting(ptr noundef %pdev) #15
  br label %if.end13

if.end13:                                         ; preds = %netxen_cleanup_minidump.exit, %netxen_cleanup_pci_map.exit.if.end13_crit_edge
  tail call void @pci_release_regions(ptr noundef %pdev) #15
  tail call void @pci_disable_device(ptr noundef %pdev) #15
  tail call void @free_netdev(ptr noundef %3) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_nic_shutdown(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call fastcc void @netxen_nic_detach_func(ptr noundef %1)
  %call1 = tail call i32 @pci_save_state(ptr noundef %pdev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @netxen_nic_wol_supported(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef 4, i1 noundef zeroext true) #15
  %call6 = tail call i32 @pci_enable_wake(ptr noundef %pdev, i32 noundef 3, i1 noundef zeroext true) #15
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  tail call void @pci_disable_device(ptr noundef %pdev) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_pcie_error_reporting(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_set_master(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_nic_get_board_info(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netxen_mask_aer_correctable(ptr nocapture noundef readonly %adapter) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %bus = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bus, align 8
  %self = getelementptr inbounds %struct.pci_bus, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %self to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %self, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %board_type = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 16
  %6 = ptrtoint ptr %board_type to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %board_type, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.177)
  switch i16 %7, label %if.end.cleanup_crit_edge [
    i16 41, label %if.end.if.end9_crit_edge
    i16 128, label %if.end.if.end9_crit_edge28
  ]

if.end.if.end9_crit_edge28:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %if.end.if.end9_crit_edge28
  %pcie_flags_reg.i.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 25
  %9 = ptrtoint ptr %pcie_flags_reg.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %pcie_flags_reg.i.i, align 2
  %11 = and i16 %10, 240
  call void @__sanitizer_cov_trace_const_cmp2(i16 64, i16 %11)
  %cmp10.not = icmp eq i16 %11, 64
  br i1 %cmp10.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %call14 = tail call zeroext i16 @pci_find_ext_capability(ptr noundef nonnull %5, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %call14)
  %tobool16.not = icmp eq i16 %call14, 0
  br i1 %tobool16.not, label %if.end13.cleanup_crit_edge, label %if.end18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  %conv15 = zext i16 %call14 to i32
  %add = add nuw nsw i32 %conv15, 20
  %call19 = tail call i32 @pci_write_config_dword(ptr noundef nonnull %5, i32 noundef %add, i32 noundef 65535) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_check_flash_fw_compatibility(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netxen_start_firmware(ptr noundef %adapter) unnamed_addr #1 align 64 {
entry:
  %brd_name.i = alloca [32 x i8], align 8
  %serial_num.i = alloca [32 x i8], align 8
  %val.i = alloca i32, align 4
  %flashed_ver.i = alloca i32, align 4
  %control.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %pci_using_dac.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 15
  %2 = ptrtoint ptr %pci_using_dac.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %pci_using_dac.i, align 1
  %revision_id.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %3 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %4)
  %cmp.i = icmp ult i8 %4, 38
  %..i = select i1 %cmp.i, i64 34359738367, i64 549755813887
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call.i = tail call i32 @dma_set_mask(ptr noundef %dev.i, i64 noundef %..i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3.i = icmp eq i32 %call.i, 0
  br i1 %cmp3.i, label %land.lhs.true.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %.19.i = select i1 %cmp.i, i64 4294967295, i64 549755813887
  %call6.i = tail call i32 @dma_set_coherent_mask(ptr noundef %dev.i, i64 noundef %.19.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp eq i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  %5 = ptrtoint ptr %pci_using_dac.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %pci_using_dac.i, align 1
  %call.i129 = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 5, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool.not.i = icmp eq i32 %call.i129, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %call.i.i = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 5, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  %crb_read.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %6 = ptrtoint ptr %crb_read.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crb_read.i.i, align 4
  %call1.i.i = tail call i32 %7(ptr noundef %adapter, i32 noundef 136323384) #15
  br label %netxen_can_start_firmware.exit

if.end.i:                                         ; preds = %if.end
  %crb_read.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %8 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %crb_read.i, align 4
  %call2.i = tail call i32 %9(ptr noundef %adapter, i32 noundef 136323384) #15
  %10 = add i32 %call2.i, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -7, i32 %10)
  %11 = icmp ult i32 %10, -7
  br i1 %11, label %if.then7.i, label %if.end.i.netxen_can_start_firmware.exit_crit_edge

if.end.i.netxen_can_start_firmware.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_can_start_firmware.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %crb_write.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %12 = ptrtoint ptr %crb_write.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crb_write.i, align 8
  %call8.i = tail call i32 %13(ptr noundef %adapter, i32 noundef 136323392, i32 noundef 2) #15
  br label %netxen_can_start_firmware.exit

netxen_can_start_firmware.exit:                   ; preds = %if.then7.i, %if.end.i.netxen_can_start_firmware.exit_crit_edge, %if.end.i.i
  %call1.i.sink.i = phi i32 [ %call1.i.i, %if.end.i.i ], [ 0, %if.then7.i ], [ %call2.i, %if.end.i.netxen_can_start_firmware.exit_crit_edge ]
  %tobool5.not = phi i1 [ false, %if.end.i.i ], [ false, %if.then7.i ], [ true, %if.end.i.netxen_can_start_firmware.exit_crit_edge ]
  %crb_write.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %14 = ptrtoint ptr %crb_write.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %crb_write.i.i, align 8
  %inc.i.i = add i32 %call1.i.sink.i, 1
  %call2.i.i = tail call i32 %15(ptr noundef %adapter, i32 noundef 136323384, i32 noundef %inc.i.i) #15
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 5) #15
  br i1 %tobool.not.i, label %if.end4, label %netxen_can_start_firmware.exit.cleanup_crit_edge

netxen_can_start_firmware.exit.cleanup_crit_edge: ; preds = %netxen_can_start_firmware.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %netxen_can_start_firmware.exit
  br i1 %tobool5.not, label %if.end4.wait_init_crit_edge, label %if.end7

if.end4.wait_init_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %wait_init

if.end7:                                          ; preds = %if.end4
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %16 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crb_read, align 4
  %call8 = tail call i32 %17(ptr noundef %adapter, i32 noundef 136323580) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1431655765, i32 %call8)
  %cmp.i131 = icmp eq i32 %call8, 1431655765
  br i1 %cmp.i131, label %if.then.i135, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then.i135:                                     ; preds = %if.end7
  %18 = ptrtoint ptr %crb_write.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crb_write.i.i, align 8
  %call.i133 = tail call i32 %19(ptr noundef %adapter, i32 noundef 136323580, i32 noundef 305419896) #15
  %20 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %21)
  %cmp1.i = icmp ult i8 %21, 38
  br i1 %cmp1.i, label %if.end.i138, label %if.then.i135.if.end12_crit_edge

if.then.i135.if.end12_crit_edge:                  ; preds = %if.then.i135
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.end.i138:                                      ; preds = %if.then.i135
  %22 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %crb_read, align 4
  %call4.i = tail call i32 %23(ptr noundef %adapter, i32 noundef 101711876) #15
  %and.i = and i32 %call4.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i137 = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i137, label %if.then5.i, label %if.end.i138.if.end10.i_crit_edge

if.end.i138.if.end10.i_crit_edge:                 ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end.i138
  call void @__sanitizer_cov_trace_pc() #17
  %or.i = or i32 %call4.i, 4
  %24 = ptrtoint ptr %crb_write.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crb_write.i.i, align 8
  %call7.i = tail call i32 %25(ptr noundef %adapter, i32 noundef 101711876, i32 noundef %or.i) #15
  %26 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %crb_read, align 4
  %call9.i = tail call i32 %27(ptr noundef %adapter, i32 noundef 101711876) #15
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then5.i, %if.end.i138.if.end10.i_crit_edge
  %28 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %crb_read, align 4
  %call12.i = tail call i32 %29(ptr noundef %adapter, i32 noundef 154140680) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388623, i32 %call12.i)
  %cmp13.not.i = icmp eq i32 %call12.i, 8388623
  br i1 %cmp13.not.i, label %if.end18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %crb_write.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %crb_write.i.i, align 8
  %call17.i = tail call i32 %31(ptr noundef %adapter, i32 noundef 136323580, i32 noundef 0) #15
  br label %do.end

if.end18.i:                                       ; preds = %if.end10.i
  %32 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crb_read, align 4
  %call20.i = tail call i32 %33(ptr noundef %adapter, i32 noundef 154140764) #15
  %34 = ptrtoint ptr %crb_write.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %crb_write.i.i, align 8
  %or22.i = or i32 %call20.i, 1
  %call23.i = tail call i32 %35(ptr noundef %adapter, i32 noundef 154140764, i32 noundef %or22.i) #15
  br label %do.body.i

do.body.i:                                        ; preds = %do.cond.i.do.body.i_crit_edge, %if.end18.i
  %timeout.0.i = phi i32 [ 0, %if.end18.i ], [ %inc.i, %do.cond.i.do.body.i_crit_edge ]
  tail call void @msleep(i32 noundef 1) #15
  %36 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %crb_read, align 4
  %call25.i = tail call i32 %37(ptr noundef %adapter, i32 noundef 136323580) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 5000, i32 %timeout.0.i)
  %exitcond.i = icmp eq i32 %timeout.0.i, 5000
  br i1 %exitcond.i, label %do.body.i.do.end_crit_edge, label %do.cond.i

do.body.i.do.end_crit_edge:                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

do.cond.i:                                        ; preds = %do.body.i
  %inc.i = add nuw nsw i32 %timeout.0.i, 1
  %cmp30.i = icmp eq i32 %call25.i, 305419896
  br i1 %cmp30.i, label %do.cond.i.do.body.i_crit_edge, label %do.cond.i.if.end12_crit_edge

do.cond.i.if.end12_crit_edge:                     ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

do.cond.i.do.body.i_crit_edge:                    ; preds = %do.cond.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

do.end:                                           ; preds = %do.body.i.do.end_crit_edge, %if.then15.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.65) #19
  br label %cleanup

if.end12:                                         ; preds = %do.cond.i.if.end12_crit_edge, %if.then.i135.if.end12_crit_edge, %if.end7.if.end12_crit_edge
  tail call void @netxen_request_firmware(ptr noundef %adapter) #15
  %call13 = tail call i32 @netxen_need_fw_reset(ptr noundef %adapter) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.err_out_crit_edge, label %if.end16

if.end12.err_out_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp17 = icmp eq i32 %call13, 0
  br i1 %cmp17, label %if.end16.pcie_strap_init_crit_edge, label %if.end19

if.end16.pcie_strap_init_crit_edge:               ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %pcie_strap_init

if.end19:                                         ; preds = %if.end16
  br i1 %cmp.i131, label %if.end19.if.end24_crit_edge, label %if.then21

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then21:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  %38 = ptrtoint ptr %crb_write.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %crb_write.i.i, align 8
  %call22 = tail call i32 %39(ptr noundef %adapter, i32 noundef 136323664, i32 noundef 0) #15
  %call23 = tail call i32 @netxen_pinit_from_rom(ptr noundef %adapter) #15
  tail call void @msleep(i32 noundef 1) #15
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end19.if.end24_crit_edge
  %40 = ptrtoint ptr %crb_write.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %crb_write.i.i, align 8
  %call26 = tail call i32 %41(ptr noundef %adapter, i32 noundef 136323788, i32 noundef 1431655765) #15
  %42 = ptrtoint ptr %crb_write.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %crb_write.i.i, align 8
  %call28 = tail call i32 %43(ptr noundef %adapter, i32 noundef 136323240, i32 noundef 0) #15
  %44 = ptrtoint ptr %crb_write.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %crb_write.i.i, align 8
  %call30 = tail call i32 %45(ptr noundef %adapter, i32 noundef 136323244, i32 noundef 0) #15
  %46 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %47)
  %cmp31 = icmp ugt i8 %47, 47
  br i1 %cmp31, label %if.then33, label %if.end24.if.end34_crit_edge

if.end24.if.end34_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.then33:                                        ; preds = %if.end24
  %board_type.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 16
  %48 = ptrtoint ptr %board_type.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %board_type.i, align 2
  %50 = zext i16 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.178)
  switch i16 %49, label %if.then33.if.end34_crit_edge [
    i16 34, label %if.then33.if.else24.i_crit_edge
    i16 40, label %if.then33.if.else24.i_crit_edge185
  ]

if.then33.if.else24.i_crit_edge185:               ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else24.i

if.then33.if.else24.i_crit_edge:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else24.i

if.then33.if.end34_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end34

if.else24.i:                                      ; preds = %if.then33.if.else24.i_crit_edge, %if.then33.if.else24.i_crit_edge185
  %51 = ptrtoint ptr %crb_write.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %crb_write.i.i, align 8
  %call26.i = tail call i32 %52(ptr noundef %adapter, i32 noundef 136323108, i32 noundef 4) #15
  %53 = ptrtoint ptr %crb_write.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %crb_write.i.i, align 8
  %call43.i = tail call i32 %54(ptr noundef %adapter, i32 noundef 136323480, i32 noundef 5) #15
  br label %if.end34

if.end34:                                         ; preds = %if.else24.i, %if.then33.if.end34_crit_edge, %if.end24.if.end34_crit_edge
  %call35 = tail call i32 @netxen_load_firmware(ptr noundef %adapter) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.err_out_crit_edge

if.end34.err_out_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out

if.end38:                                         ; preds = %if.end34
  tail call void @netxen_release_firmware(ptr noundef %adapter) #15
  %55 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %56)
  %cmp42 = icmp ult i8 %56, 38
  br i1 %cmp42, label %if.then44, label %if.end38.if.end53_crit_edge

if.end38.if.end53_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %port_type = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 15
  %57 = ptrtoint ptr %port_type to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %port_type, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %58)
  %cmp47 = icmp eq i16 %58, 2
  %spec.select = select i1 %cmp47, i32 251688532, i32 30292
  %59 = ptrtoint ptr %crb_write.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %crb_write.i.i, align 8
  %call52 = tail call i32 %60(ptr noundef %adapter, i32 noundef 106958848, i32 noundef %spec.select) #15
  br label %if.end53

if.end53:                                         ; preds = %if.then44, %if.end38.if.end53_crit_edge
  %call54 = tail call i32 @netxen_init_dummy_dma(ptr noundef %adapter) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end53.err_out_crit_edge

if.end53.err_out_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out

if.end57:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #17
  %61 = ptrtoint ptr %crb_write.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %crb_write.i.i, align 8
  %call59 = tail call i32 %62(ptr noundef %adapter, i32 noundef 136324256, i32 noundef 262226) #15
  br label %pcie_strap_init

pcie_strap_init:                                  ; preds = %if.end57, %if.end16.pcie_strap_init_crit_edge
  %63 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %64)
  %cmp63 = icmp ugt i8 %64, 47
  br i1 %cmp63, label %if.then65, label %pcie_strap_init.wait_init_crit_edge

pcie_strap_init.wait_init_crit_edge:              ; preds = %pcie_strap_init
  call void @__sanitizer_cov_trace_pc() #17
  br label %wait_init

if.then65:                                        ; preds = %pcie_strap_init
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control.i) #15
  %65 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %control.i, align 4
  %66 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev1, align 8
  %68 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %crb_read, align 4
  %call.i142 = tail call i32 %69(ptr noundef %adapter, i32 noundef 101785800) #15
  %and.i143 = and i32 %call.i142, -50331649
  %call2.i144 = tail call zeroext i8 @pci_find_capability(ptr noundef %67, i32 noundef 16) #15
  %conv.i = zext i8 %call2.i144 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 -64, i8 %call2.i144)
  %cmp.i145 = icmp eq i8 %call2.i144, -64
  br i1 %cmp.i145, label %if.end22.thread.i, label %if.end22.i

if.end22.thread.i:                                ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #17
  %call4.i146 = call i32 @pci_read_config_dword(ptr noundef %67, i32 noundef 208, ptr noundef nonnull %control.i) #15
  %70 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %control.i, align 4
  %and5.i = and i32 %71, 983040
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %and5.i)
  %cmp6.not.i = icmp eq i32 %and5.i, 131072
  %or.i147 = or i32 %and.i143, 16777216
  %spec.select.i = select i1 %cmp6.not.i, i32 %and.i143, i32 %or.i147
  %72 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pdev1, align 8
  %dev.i148 = getelementptr inbounds %struct.pci_dev, ptr %73, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i148, ptr noundef nonnull @.str.67) #19
  %74 = ptrtoint ptr %crb_write.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %crb_write.i.i, align 8
  %call2376.i = call i32 %75(ptr noundef %adapter, i32 noundef 101785800, i32 noundef %spec.select.i) #15
  br label %if.end25.i

if.end22.i:                                       ; preds = %if.then65
  %or10.i = or i32 %and.i143, 16777216
  %76 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %pdev1, align 8
  %dev15.i = getelementptr inbounds %struct.pci_dev, ptr %77, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev15.i, ptr noundef nonnull @.str.70) #19
  %78 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %79)
  %cmp17.i = icmp eq i8 %79, 64
  %80 = ptrtoint ptr %crb_write.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %crb_write.i.i, align 8
  %call23.i151 = tail call i32 %81(ptr noundef %adapter, i32 noundef 101785800, i32 noundef %or10.i) #15
  br i1 %cmp17.i, label %if.end22.i.if.end25.i_crit_edge, label %if.end22.i.netxen_pcie_strap_init.exit_crit_edge

if.end22.i.netxen_pcie_strap_init.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_pcie_strap_init.exit

if.end22.i.if.end25.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end25.i

if.end25.i:                                       ; preds = %if.end22.i.if.end25.i_crit_edge, %if.end22.thread.i
  %c8c9value.077.i = phi i32 [ 987136, %if.end22.thread.i ], [ 987168, %if.end22.i.if.end25.i_crit_edge ]
  %devfn.i = getelementptr inbounds %struct.pci_dev, ptr %67, i32 0, i32 6
  %82 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %devfn.i, align 4
  %and26.i = and i32 %83, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i)
  %tobool27.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool27.not.i, label %for.cond.preheader.i, label %if.end25.i.netxen_pcie_strap_init.exit_crit_edge

if.end25.i.netxen_pcie_strap_init.exit_crit_edge: ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_pcie_strap_init.exit

for.cond.preheader.i:                             ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #17
  %add32.i = add nuw nsw i32 %conv.i, 8
  %call33.i = call i32 @pci_read_config_dword(ptr noundef %67, i32 noundef %add32.i, ptr noundef nonnull %control.i) #15
  %call35.i = call i32 @pci_read_config_dword(ptr noundef %67, i32 noundef %add32.i, ptr noundef nonnull %control.i) #15
  %call37.i = call i32 @pci_write_config_dword(ptr noundef %67, i32 noundef %add32.i, i32 noundef %c8c9value.077.i) #15
  %84 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %devfn.i, align 4
  %inc.i152 = add i32 %85, 1
  store i32 %inc.i152, ptr %devfn.i, align 4
  %call33.1.i = call i32 @pci_read_config_dword(ptr noundef %67, i32 noundef %add32.i, ptr noundef nonnull %control.i) #15
  %call35.1.i = call i32 @pci_read_config_dword(ptr noundef %67, i32 noundef %add32.i, ptr noundef nonnull %control.i) #15
  %call37.1.i = call i32 @pci_write_config_dword(ptr noundef %67, i32 noundef %add32.i, i32 noundef %c8c9value.077.i) #15
  %86 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %devfn.i, align 4
  %inc.1.i = add i32 %87, 1
  store i32 %inc.1.i, ptr %devfn.i, align 4
  %call33.2.i = call i32 @pci_read_config_dword(ptr noundef %67, i32 noundef %add32.i, ptr noundef nonnull %control.i) #15
  %call35.2.i = call i32 @pci_read_config_dword(ptr noundef %67, i32 noundef %add32.i, ptr noundef nonnull %control.i) #15
  %call37.2.i = call i32 @pci_write_config_dword(ptr noundef %67, i32 noundef %add32.i, i32 noundef %c8c9value.077.i) #15
  %88 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %devfn.i, align 4
  %inc.2.i = add i32 %89, 1
  store i32 %inc.2.i, ptr %devfn.i, align 4
  %call33.3.i = call i32 @pci_read_config_dword(ptr noundef %67, i32 noundef %add32.i, ptr noundef nonnull %control.i) #15
  %call35.3.i = call i32 @pci_read_config_dword(ptr noundef %67, i32 noundef %add32.i, ptr noundef nonnull %control.i) #15
  %call37.3.i = call i32 @pci_write_config_dword(ptr noundef %67, i32 noundef %add32.i, i32 noundef %c8c9value.077.i) #15
  %90 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %devfn.i, align 4
  %inc.3.i = add i32 %91, 1
  store i32 %inc.3.i, ptr %devfn.i, align 4
  %call33.4.i = call i32 @pci_read_config_dword(ptr noundef %67, i32 noundef %add32.i, ptr noundef nonnull %control.i) #15
  %call35.4.i = call i32 @pci_read_config_dword(ptr noundef %67, i32 noundef %add32.i, ptr noundef nonnull %control.i) #15
  %call37.4.i = call i32 @pci_write_config_dword(ptr noundef %67, i32 noundef %add32.i, i32 noundef %c8c9value.077.i) #15
  %92 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %devfn.i, align 4
  %inc.4.i = add i32 %93, 1
  store i32 %inc.4.i, ptr %devfn.i, align 4
  %call33.5.i = call i32 @pci_read_config_dword(ptr noundef %67, i32 noundef %add32.i, ptr noundef nonnull %control.i) #15
  %call35.5.i = call i32 @pci_read_config_dword(ptr noundef %67, i32 noundef %add32.i, ptr noundef nonnull %control.i) #15
  %call37.5.i = call i32 @pci_write_config_dword(ptr noundef %67, i32 noundef %add32.i, i32 noundef %c8c9value.077.i) #15
  %94 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %devfn.i, align 4
  %inc.5.i = add i32 %95, 1
  store i32 %inc.5.i, ptr %devfn.i, align 4
  %call33.6.i = call i32 @pci_read_config_dword(ptr noundef %67, i32 noundef %add32.i, ptr noundef nonnull %control.i) #15
  %call35.6.i = call i32 @pci_read_config_dword(ptr noundef %67, i32 noundef %add32.i, ptr noundef nonnull %control.i) #15
  %call37.6.i = call i32 @pci_write_config_dword(ptr noundef %67, i32 noundef %add32.i, i32 noundef %c8c9value.077.i) #15
  %96 = ptrtoint ptr %devfn.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %devfn.i, align 4
  %inc.6.i = add i32 %97, 1
  store i32 %inc.6.i, ptr %devfn.i, align 4
  %call33.7.i = call i32 @pci_read_config_dword(ptr noundef %67, i32 noundef %add32.i, ptr noundef nonnull %control.i) #15
  %call35.7.i = call i32 @pci_read_config_dword(ptr noundef %67, i32 noundef %add32.i, ptr noundef nonnull %control.i) #15
  %call37.7.i = call i32 @pci_write_config_dword(ptr noundef %67, i32 noundef %add32.i, i32 noundef %c8c9value.077.i) #15
  %98 = ptrtoint ptr %devfn.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %83, ptr %devfn.i, align 4
  br label %netxen_pcie_strap_init.exit

netxen_pcie_strap_init.exit:                      ; preds = %for.cond.preheader.i, %if.end25.i.netxen_pcie_strap_init.exit_crit_edge, %if.end22.i.netxen_pcie_strap_init.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control.i) #15
  br label %wait_init

wait_init:                                        ; preds = %netxen_pcie_strap_init.exit, %pcie_strap_init.wait_init_crit_edge, %if.end4.wait_init_crit_edge
  %call67 = call i32 @netxen_phantom_init(ptr noundef %adapter, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end70, label %if.then69

if.then69:                                        ; preds = %wait_init
  call void @__sanitizer_cov_trace_pc() #17
  call void @netxen_free_dummy_dma(ptr noundef %adapter) #15
  br label %err_out

if.end70:                                         ; preds = %wait_init
  %99 = ptrtoint ptr %crb_write.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %crb_write.i.i, align 8
  %call72 = call i32 %100(ptr noundef %adapter, i32 noundef 136323392, i32 noundef 3) #15
  %101 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %pdev1, align 8
  %crb_read.i154 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %103 = ptrtoint ptr %crb_read.i154 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %crb_read.i154, align 4
  %call.i155 = call i32 %104(ptr noundef %adapter, i32 noundef 136323788) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call.i155)
  %cmp.i156 = icmp sgt i32 %call.i155, 32
  br i1 %cmp.i156, label %if.end70.nx_update_dma_mask.exit_crit_edge, label %if.end.i158

if.end70.nx_update_dma_mask.exit_crit_edge:       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #17
  br label %nx_update_dma_mask.exit

if.end.i158:                                      ; preds = %if.end70
  %105 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %106)
  %cmp2.i = icmp ugt i8 %106, 47
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %call.i155)
  %cmp4.i = icmp sgt i32 %call.i155, 9
  %or.cond.i = select i1 %cmp2.i, i1 %cmp4.i, i1 false
  br i1 %or.cond.i, label %if.end.i158.if.then18.i_crit_edge, label %if.else.i

if.end.i158.if.then18.i_crit_edge:                ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then18.i

if.else.i:                                        ; preds = %if.end.i158
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %106)
  %cmp10.i = icmp eq i8 %106, 37
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i155)
  %cmp13.i = icmp slt i32 %call.i155, 5
  %or.cond1.i = select i1 %cmp10.i, i1 %cmp13.i, i1 false
  br i1 %or.cond1.i, label %if.else.i.if.then18.i_crit_edge, label %if.else.i.nx_update_dma_mask.exit_crit_edge

if.else.i.nx_update_dma_mask.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nx_update_dma_mask.exit

if.else.i.if.then18.i_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then18.i

if.then18.i:                                      ; preds = %if.else.i.if.then18.i_crit_edge, %if.end.i158.if.then18.i_crit_edge
  %dma_mask.i = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 28
  %107 = ptrtoint ptr %dma_mask.i to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %dma_mask.i, align 8
  %dev.i159 = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44
  %coherent_dma_mask.i = getelementptr inbounds %struct.pci_dev, ptr %102, i32 0, i32 44, i32 19
  %109 = ptrtoint ptr %coherent_dma_mask.i to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %coherent_dma_mask.i, align 8
  %add.i = add nsw i32 %call.i155, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %add.i)
  %cmp19.i = icmp eq i32 %add.i, 64
  br i1 %cmp19.i, label %if.then18.i.cond.end.i_crit_edge, label %cond.false.i

if.then18.i.cond.end.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #17
  %sh_prom.i = zext i32 %add.i to i64
  %notmask.i = shl nsw i64 -1, %sh_prom.i
  %sub.i = xor i64 %notmask.i, -1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then18.i.cond.end.i_crit_edge
  %cond.i = phi i64 [ %sub.i, %cond.false.i ], [ -1, %if.then18.i.cond.end.i_crit_edge ]
  %call23.i160 = call i32 @dma_set_mask(ptr noundef %dev.i159, i64 noundef %cond.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i160)
  %tobool24.not.i = icmp eq i32 %call23.i160, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %cond.end.i.err_out.i_crit_edge

cond.end.i.err_out.i_crit_edge:                   ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out.i

if.end26.i:                                       ; preds = %cond.end.i
  %111 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %112)
  %cmp30.i161 = icmp ugt i8 %112, 47
  br i1 %cmp30.i161, label %if.then32.i, label %if.end26.i.do.end.i_crit_edge

if.end26.i.do.end.i_crit_edge:                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

if.then32.i:                                      ; preds = %if.end26.i
  %call34.i = call i32 @dma_set_coherent_mask(ptr noundef %dev.i159, i64 noundef %cond.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34.i)
  %tobool35.not.i = icmp eq i32 %call34.i, 0
  br i1 %tobool35.not.i, label %if.then32.i.do.end.i_crit_edge, label %if.then32.i.err_out.i_crit_edge

if.then32.i.err_out.i_crit_edge:                  ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out.i

if.then32.i.do.end.i_crit_edge:                   ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i:                                         ; preds = %if.then32.i.do.end.i_crit_edge, %if.end26.i.do.end.i_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev.i159, ptr noundef nonnull @.str.72, i32 noundef %add.i) #19
  br label %nx_update_dma_mask.exit

err_out.i:                                        ; preds = %if.then32.i.err_out.i_crit_edge, %cond.end.i.err_out.i_crit_edge
  %call43.i162 = call i32 @dma_set_mask(ptr noundef %dev.i159, i64 noundef %108) #15
  %call45.i = call i32 @dma_set_coherent_mask(ptr noundef %dev.i159, i64 noundef %110) #15
  br label %nx_update_dma_mask.exit

nx_update_dma_mask.exit:                          ; preds = %err_out.i, %do.end.i, %if.else.i.nx_update_dma_mask.exit_crit_edge, %if.end70.nx_update_dma_mask.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %brd_name.i) #15
  %113 = call ptr @memset(ptr %brd_name.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %serial_num.i) #15
  %114 = getelementptr inbounds [32 x i8], ptr %serial_num.i, i32 0, i32 4
  %115 = getelementptr inbounds [32 x i8], ptr %serial_num.i, i32 0, i32 8
  %116 = getelementptr inbounds [32 x i8], ptr %serial_num.i, i32 0, i32 12
  %117 = getelementptr inbounds [32 x i8], ptr %serial_num.i, i32 0, i32 16
  %118 = getelementptr inbounds [32 x i8], ptr %serial_num.i, i32 0, i32 20
  %119 = getelementptr inbounds [32 x i8], ptr %serial_num.i, i32 0, i32 24
  %120 = getelementptr inbounds [32 x i8], ptr %serial_num.i, i32 0, i32 28
  %121 = getelementptr inbounds i8, ptr %serial_num.i, i32 24
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_store8_noabort(i32 %122)
  store i64 -1, ptr %121, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #15
  %123 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 -1, ptr %val.i, align 4, !annotation !390
  %124 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %pdev1, align 8
  %driver_mismatch.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 12
  %126 = ptrtoint ptr %driver_mismatch.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 0, ptr %driver_mismatch.i, align 2
  %call.i164 = call i32 @netxen_rom_fast_read(ptr noundef %adapter, i32 noundef 4098076, ptr noundef nonnull %val.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %tobool.not.i165 = icmp eq i32 %call.i164, 0
  br i1 %tobool.not.i165, label %if.end.i168, label %nx_update_dma_mask.exit.do.end.i167_crit_edge

nx_update_dma_mask.exit.do.end.i167_crit_edge:    ; preds = %nx_update_dma_mask.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i167

do.end.i167:                                      ; preds = %if.end.6.i.do.end.i167_crit_edge, %if.end.5.i.do.end.i167_crit_edge, %if.end.4.i.do.end.i167_crit_edge, %if.end.3.i.do.end.i167_crit_edge, %if.end.2.i.do.end.i167_crit_edge, %if.end.1.i.do.end.i167_crit_edge, %if.end.i168.do.end.i167_crit_edge, %nx_update_dma_mask.exit.do.end.i167_crit_edge
  %dev.i166 = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i166, ptr noundef nonnull @.str.74) #19
  %127 = ptrtoint ptr %driver_mismatch.i to i32
  call void @__asan_store1_noabort(i32 %127)
  store i8 1, ptr %driver_mismatch.i, align 2
  br label %netxen_check_options.exit

if.end.i168:                                      ; preds = %nx_update_dma_mask.exit
  %128 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %val.i, align 4
  %130 = call i32 @llvm.bswap.i32(i32 %129) #15
  %131 = ptrtoint ptr %serial_num.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %serial_num.i, align 8
  %call.1.i = call i32 @netxen_rom_fast_read(ptr noundef %adapter, i32 noundef 4098080, ptr noundef nonnull %val.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1.i)
  %tobool.not.1.i = icmp eq i32 %call.1.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i, label %if.end.i168.do.end.i167_crit_edge

if.end.i168.do.end.i167_crit_edge:                ; preds = %if.end.i168
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i167

if.end.1.i:                                       ; preds = %if.end.i168
  %132 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %val.i, align 4
  %134 = call i32 @llvm.bswap.i32(i32 %133) #15
  %135 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %114, align 4
  %call.2.i = call i32 @netxen_rom_fast_read(ptr noundef %adapter, i32 noundef 4098084, ptr noundef nonnull %val.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2.i)
  %tobool.not.2.i = icmp eq i32 %call.2.i, 0
  br i1 %tobool.not.2.i, label %if.end.2.i, label %if.end.1.i.do.end.i167_crit_edge

if.end.1.i.do.end.i167_crit_edge:                 ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i167

if.end.2.i:                                       ; preds = %if.end.1.i
  %136 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %val.i, align 4
  %138 = call i32 @llvm.bswap.i32(i32 %137) #15
  %139 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %138, ptr %115, align 8
  %call.3.i = call i32 @netxen_rom_fast_read(ptr noundef %adapter, i32 noundef 4098088, ptr noundef nonnull %val.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3.i)
  %tobool.not.3.i = icmp eq i32 %call.3.i, 0
  br i1 %tobool.not.3.i, label %if.end.3.i, label %if.end.2.i.do.end.i167_crit_edge

if.end.2.i.do.end.i167_crit_edge:                 ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i167

if.end.3.i:                                       ; preds = %if.end.2.i
  %140 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %val.i, align 4
  %142 = call i32 @llvm.bswap.i32(i32 %141) #15
  %143 = ptrtoint ptr %116 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %142, ptr %116, align 4
  %call.4.i = call i32 @netxen_rom_fast_read(ptr noundef %adapter, i32 noundef 4098092, ptr noundef nonnull %val.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4.i)
  %tobool.not.4.i = icmp eq i32 %call.4.i, 0
  br i1 %tobool.not.4.i, label %if.end.4.i, label %if.end.3.i.do.end.i167_crit_edge

if.end.3.i.do.end.i167_crit_edge:                 ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i167

if.end.4.i:                                       ; preds = %if.end.3.i
  %144 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %val.i, align 4
  %146 = call i32 @llvm.bswap.i32(i32 %145) #15
  %147 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %117, align 8
  %call.5.i = call i32 @netxen_rom_fast_read(ptr noundef %adapter, i32 noundef 4098096, ptr noundef nonnull %val.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.5.i)
  %tobool.not.5.i = icmp eq i32 %call.5.i, 0
  br i1 %tobool.not.5.i, label %if.end.5.i, label %if.end.4.i.do.end.i167_crit_edge

if.end.4.i.do.end.i167_crit_edge:                 ; preds = %if.end.4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i167

if.end.5.i:                                       ; preds = %if.end.4.i
  %148 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %val.i, align 4
  %150 = call i32 @llvm.bswap.i32(i32 %149) #15
  %151 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %118, align 4
  %call.6.i = call i32 @netxen_rom_fast_read(ptr noundef %adapter, i32 noundef 4098100, ptr noundef nonnull %val.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.6.i)
  %tobool.not.6.i = icmp eq i32 %call.6.i, 0
  br i1 %tobool.not.6.i, label %if.end.6.i, label %if.end.5.i.do.end.i167_crit_edge

if.end.5.i.do.end.i167_crit_edge:                 ; preds = %if.end.5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i167

if.end.6.i:                                       ; preds = %if.end.5.i
  %152 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %val.i, align 4
  %154 = call i32 @llvm.bswap.i32(i32 %153) #15
  %155 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %154, ptr %119, align 8
  %call.7.i = call i32 @netxen_rom_fast_read(ptr noundef %adapter, i32 noundef 4098104, ptr noundef nonnull %val.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.7.i)
  %tobool.not.7.i = icmp eq i32 %call.7.i, 0
  br i1 %tobool.not.7.i, label %if.end.7.i, label %if.end.6.i.do.end.i167_crit_edge

if.end.6.i.do.end.i167_crit_edge:                 ; preds = %if.end.6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i167

if.end.7.i:                                       ; preds = %if.end.6.i
  %156 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %val.i, align 4
  %158 = call i32 @llvm.bswap.i32(i32 %157) #15
  %159 = ptrtoint ptr %120 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %120, align 4
  %160 = ptrtoint ptr %crb_read.i154 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %crb_read.i154, align 4
  %call3.i = call i32 %161(ptr noundef %adapter, i32 noundef 136323408) #15
  %162 = ptrtoint ptr %crb_read.i154 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %crb_read.i154, align 4
  %call5.i = call i32 %163(ptr noundef %adapter, i32 noundef 136323412) #15
  %164 = ptrtoint ptr %crb_read.i154 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %crb_read.i154, align 4
  %call7.i170 = call i32 %165(ptr noundef %adapter, i32 noundef 136323416) #15
  %fw_version.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 72
  %166 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %fw_version.i, align 8
  %shl.i = shl i32 %call3.i, 24
  %shl8.i = shl i32 %call5.i, 16
  %add9.i = add i32 %shl8.i, %shl.i
  %add10.i = add i32 %add9.i, %call7.i170
  store i32 %add10.i, ptr %fw_version.i, align 8
  %168 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %169)
  %cmp12.i = icmp ugt i8 %169, 47
  br i1 %cmp12.i, label %if.then14.i, label %if.end.7.i.if.end35.i_crit_edge

if.end.7.i.if.end35.i_crit_edge:                  ; preds = %if.end.7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35.i

if.then14.i:                                      ; preds = %if.end.7.i
  %md_template.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 74, i32 10
  %170 = ptrtoint ptr %md_template.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %md_template.i, align 8
  %cmp15.i = icmp eq ptr %171, null
  call void @__sanitizer_cov_trace_cmp4(i32 %add10.i, i32 %167)
  %cmp18.i = icmp ugt i32 %add10.i, %167
  %or.cond.i172 = select i1 %cmp15.i, i1 true, i1 %cmp18.i
  br i1 %or.cond.i172, label %if.then20.i, label %if.then14.i.if.end35.i_crit_edge

if.then14.i.if.end35.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35.i

if.then20.i:                                      ; preds = %if.then14.i
  call void @kfree(ptr noundef %171) #15
  %172 = ptrtoint ptr %md_template.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr null, ptr %md_template.i, align 8
  %call25.i173 = call i32 @netxen_setup_minidump(ptr noundef %adapter) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i173)
  %tobool26.not.i = icmp eq i32 %call25.i173, 0
  br i1 %tobool26.not.i, label %if.then20.i.if.end35.i_crit_edge, label %do.end30.i

if.then20.i.if.end35.i_crit_edge:                 ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end35.i

do.end30.i:                                       ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #17
  %173 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %pdev1, align 8
  %dev32.i = getelementptr inbounds %struct.pci_dev, ptr %174, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32.i, ptr noundef nonnull @.str.77, i32 noundef %call25.i173) #19
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end30.i, %if.then20.i.if.end35.i_crit_edge, %if.then14.i.if.end35.i_crit_edge, %if.end.7.i.if.end35.i_crit_edge
  %portnum.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %175 = ptrtoint ptr %portnum.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %portnum.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %cmp37.i = icmp eq i8 %176, 0
  br i1 %cmp37.i, label %if.then39.i, label %if.end35.i.if.end60.i_crit_edge

if.end35.i.if.end60.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end60.i

if.then39.i:                                      ; preds = %if.end35.i
  %board_type.i174 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 16
  %177 = ptrtoint ptr %board_type.i174 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %board_type.i174, align 2
  %179 = zext i16 %178 to i64
  call void @__sanitizer_cov_trace_switch(i64 %179, ptr @__sancov_gen_cov_switch_values.179)
  switch i16 %178, label %if.then44.i [
    i16 15, label %if.then39.i.netxen_nic_get_brd_name_by_type.exit.thread.i_crit_edge
    i16 14, label %if.then.fold.split.i.i
    i16 13, label %if.then.fold.split14.i.i
    i16 11, label %if.then.fold.split15.i.i
    i16 10, label %if.then.fold.split16.i.i
    i16 12, label %if.then.fold.split17.i.i
    i16 33, label %if.then.fold.split18.i.i
    i16 34, label %if.then.fold.split19.i.i
    i16 35, label %if.then.fold.split20.i.i
    i16 36, label %if.then.fold.split21.i.i
    i16 37, label %if.then.fold.split22.i.i
    i16 38, label %if.then.fold.split23.i.i
    i16 39, label %if.then.fold.split24.i.i
    i16 40, label %if.then.fold.split25.i.i
    i16 41, label %if.then.fold.split26.i.i
    i16 42, label %if.then.fold.split27.i.i
    i16 43, label %if.then.fold.split28.i.i
    i16 49, label %if.then.fold.split29.i.i
    i16 50, label %if.then.fold.split30.i.i
  ]

if.then39.i.netxen_nic_get_brd_name_by_type.exit.thread.i_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

if.then.fold.split.i.i:                           ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

if.then.fold.split14.i.i:                         ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

if.then.fold.split15.i.i:                         ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

if.then.fold.split16.i.i:                         ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

if.then.fold.split17.i.i:                         ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

if.then.fold.split18.i.i:                         ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

if.then.fold.split19.i.i:                         ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

if.then.fold.split20.i.i:                         ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

if.then.fold.split21.i.i:                         ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

if.then.fold.split22.i.i:                         ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

if.then.fold.split23.i.i:                         ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

if.then.fold.split24.i.i:                         ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

if.then.fold.split25.i.i:                         ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

if.then.fold.split26.i.i:                         ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

if.then.fold.split27.i.i:                         ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

if.then.fold.split28.i.i:                         ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

if.then.fold.split29.i.i:                         ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

if.then.fold.split30.i.i:                         ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_get_brd_name_by_type.exit.thread.i

netxen_nic_get_brd_name_by_type.exit.thread.i:    ; preds = %if.then.fold.split30.i.i, %if.then.fold.split29.i.i, %if.then.fold.split28.i.i, %if.then.fold.split27.i.i, %if.then.fold.split26.i.i, %if.then.fold.split25.i.i, %if.then.fold.split24.i.i, %if.then.fold.split23.i.i, %if.then.fold.split22.i.i, %if.then.fold.split21.i.i, %if.then.fold.split20.i.i, %if.then.fold.split19.i.i, %if.then.fold.split18.i.i, %if.then.fold.split17.i.i, %if.then.fold.split16.i.i, %if.then.fold.split15.i.i, %if.then.fold.split14.i.i, %if.then.fold.split.i.i, %if.then39.i.netxen_nic_get_brd_name_by_type.exit.thread.i_crit_edge
  %i.012.lcssa.i.i = phi i32 [ 0, %if.then39.i.netxen_nic_get_brd_name_by_type.exit.thread.i_crit_edge ], [ 1, %if.then.fold.split.i.i ], [ 2, %if.then.fold.split14.i.i ], [ 3, %if.then.fold.split15.i.i ], [ 4, %if.then.fold.split16.i.i ], [ 5, %if.then.fold.split17.i.i ], [ 6, %if.then.fold.split18.i.i ], [ 7, %if.then.fold.split19.i.i ], [ 8, %if.then.fold.split20.i.i ], [ 9, %if.then.fold.split21.i.i ], [ 10, %if.then.fold.split22.i.i ], [ 11, %if.then.fold.split23.i.i ], [ 12, %if.then.fold.split24.i.i ], [ 13, %if.then.fold.split25.i.i ], [ 14, %if.then.fold.split26.i.i ], [ 15, %if.then.fold.split27.i.i ], [ 16, %if.then.fold.split28.i.i ], [ 17, %if.then.fold.split29.i.i ], [ 18, %if.then.fold.split30.i.i ]
  %short_name.i.i = getelementptr [19 x %struct.netxen_brdinfo], ptr @netxen_boards, i32 0, i32 %i.012.lcssa.i.i, i32 2
  %call.i.i175 = call ptr @strcpy(ptr noundef nonnull %brd_name.i, ptr noundef %short_name.i.i) #20
  br label %cond.end.i176

if.then44.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  %180 = ptrtoint ptr %brd_name.i to i32
  call void @__asan_store8_noabort(i32 %180)
  store i64 6155975862722719232, ptr %brd_name.i, align 8
  %181 = ptrtoint ptr %serial_num.i to i32
  call void @__asan_store8_noabort(i32 %181)
  store i64 6155975862722719232, ptr %serial_num.i, align 8
  br label %cond.end.i176

cond.end.i176:                                    ; preds = %if.then44.i, %netxen_nic_get_brd_name_by_type.exit.thread.i
  %182 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %revision_id.i, align 1
  %conv58.i = zext i8 %183 to i32
  %call59.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.31, ptr noundef nonnull %brd_name.i, ptr noundef nonnull %serial_num.i, i32 noundef %conv58.i) #19
  br label %if.end60.i

if.end60.i:                                       ; preds = %cond.end.i176, %if.end35.i.if.end60.i_crit_edge
  %184 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %fw_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 50594008, i32 %185)
  %cmp62.i = icmp ult i32 %185, 50594008
  br i1 %cmp62.i, label %if.then64.i, label %if.end70.i

if.then64.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #17
  %186 = ptrtoint ptr %driver_mismatch.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 1, ptr %driver_mismatch.i, align 2
  %dev69.i = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev69.i, ptr noundef nonnull @.str.84, i32 noundef %call3.i, i32 noundef %call5.i, i32 noundef %call7.i170) #19
  br label %netxen_check_options.exit

if.end70.i:                                       ; preds = %if.end60.i
  %187 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %188)
  %cmp74.i = icmp ugt i8 %188, 47
  br i1 %cmp74.i, label %if.then76.i, label %if.end70.i.do.end86.i_crit_edge

if.end70.i.do.end86.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end86.i

if.then76.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #17
  %189 = ptrtoint ptr %crb_read.i154 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %crb_read.i154, align 4
  %call78.i = call i32 %190(ptr noundef %adapter, i32 noundef 105906220) #15
  %and.i177 = lshr i32 %call78.i, 15
  %191 = trunc i32 %and.i177 to i8
  %192 = and i8 %191, 1
  %cut_through.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 11
  %193 = ptrtoint ptr %cut_through.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %192, ptr %cut_through.i, align 4
  br label %do.end86.i

do.end86.i:                                       ; preds = %if.then76.i, %if.end70.i.do.end86.i_crit_edge
  %dev87.i = getelementptr inbounds %struct.pci_dev, ptr %125, i32 0, i32 44
  %cut_through89.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 11
  %194 = ptrtoint ptr %cut_through89.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %cut_through89.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool91.not.i = icmp eq i8 %195, 0
  %cond92.i = select i1 %tobool91.not.i, ptr @.str.90, ptr @.str.89
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev87.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.2, i32 noundef %call3.i, i32 noundef %call5.i, i32 noundef %call7.i170, ptr noundef nonnull %cond92.i) #19
  %196 = ptrtoint ptr %fw_version.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %fw_version.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 67109085, i32 %197)
  %cmp94.i = icmp ugt i32 %197, 67109085
  br i1 %cmp94.i, label %if.then96.i, label %do.end86.i.if.end99.i_crit_edge

do.end86.i.if.end99.i_crit_edge:                  ; preds = %do.end86.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end99.i

if.then96.i:                                      ; preds = %do.end86.i
  call void @__sanitizer_cov_trace_pc() #17
  %198 = ptrtoint ptr %crb_read.i154 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %crb_read.i154, align 4
  %call98.i = call i32 %199(ptr noundef %adapter, i32 noundef 136323368) #15
  %capabilities.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 35
  %200 = ptrtoint ptr %capabilities.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 %call98.i, ptr %capabilities.i, align 8
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then96.i, %do.end86.i.if.end99.i_crit_edge
  %port_type.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 15
  %201 = ptrtoint ptr %port_type.i to i32
  call void @__asan_load2_noabort(i32 %201)
  %202 = load i16, ptr %port_type.i, align 8
  %203 = zext i16 %202 to i64
  call void @__sanitizer_cov_trace_switch(i64 %203, ptr @__sancov_gen_cov_switch_values.180)
  switch i16 %202, label %if.end99.i.if.end114.i_crit_edge [
    i16 2, label %if.end99.i.if.end114.sink.split.i_crit_edge
    i16 1, label %if.then110.i
  ]

if.end99.i.if.end114.sink.split.i_crit_edge:      ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end114.sink.split.i

if.end99.i.if.end114.i_crit_edge:                 ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end114.i

if.then110.i:                                     ; preds = %if.end99.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end114.sink.split.i

if.end114.sink.split.i:                           ; preds = %if.then110.i, %if.end99.i.if.end114.sink.split.i_crit_edge
  %.sink254.i = phi i16 [ 2048, %if.then110.i ], [ 4096, %if.end99.i.if.end114.sink.split.i_crit_edge ]
  %.sink.i = phi i16 [ 512, %if.then110.i ], [ 1024, %if.end99.i.if.end114.sink.split.i_crit_edge ]
  %num_rxd111.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 7
  %204 = ptrtoint ptr %num_rxd111.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %.sink254.i, ptr %num_rxd111.i, align 2
  %num_jumbo_rxd112.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 8
  %205 = ptrtoint ptr %num_jumbo_rxd112.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 %.sink.i, ptr %num_jumbo_rxd112.i, align 4
  br label %if.end114.i

if.end114.i:                                      ; preds = %if.end114.sink.split.i, %if.end99.i.if.end114.i_crit_edge
  %msix_supported.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 13
  %206 = ptrtoint ptr %msix_supported.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 0, ptr %msix_supported.i, align 1
  %207 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %208)
  %cmp118.i = icmp ugt i8 %208, 47
  br i1 %cmp118.i, label %if.then120.i, label %if.else131.i

if.then120.i:                                     ; preds = %if.end114.i
  call void @__sanitizer_cov_trace_pc() #17
  %209 = ptrtoint ptr %msix_supported.i to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 1, ptr %msix_supported.i, align 1
  %rss_supported.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 20
  %210 = ptrtoint ptr %rss_supported.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 1, ptr %rss_supported.i, align 2
  br label %if.end161.i

if.else131.i:                                     ; preds = %if.end114.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flashed_ver.i) #15
  %211 = ptrtoint ptr %flashed_ver.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 0, ptr %flashed_ver.i, align 4
  %call132.i = call i32 @netxen_rom_fast_read(ptr noundef %adapter, i32 noundef 4097032, ptr noundef nonnull %flashed_ver.i) #15
  %212 = ptrtoint ptr %flashed_ver.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %flashed_ver.i, align 4
  %214 = and i32 %213, 65535
  %215 = call i32 @llvm.bswap.i32(i32 %214) #15
  %shr138.i = lshr i32 %213, 16
  %add139.i = or i32 %215, %shr138.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50594127, i32 %add139.i)
  %cmp140.i = icmp ugt i32 %add139.i, 50594127
  br i1 %cmp140.i, label %if.then142.i, label %if.else131.i.if.end160.i_crit_edge

if.else131.i.if.end160.i_crit_edge:               ; preds = %if.else131.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end160.i

if.then142.i:                                     ; preds = %if.else131.i
  %board_type144.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 16
  %216 = ptrtoint ptr %board_type144.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %board_type144.i, align 2
  %218 = zext i16 %217 to i64
  call void @__sanitizer_cov_trace_switch(i64 %218, ptr @__sancov_gen_cov_switch_values.181)
  switch i16 %217, label %if.then142.i.if.end160.i_crit_edge [
    i16 11, label %if.then142.i.sw.bb.i_crit_edge
    i16 15, label %if.then142.i.sw.bb.i_crit_edge186
  ]

if.then142.i.sw.bb.i_crit_edge186:                ; preds = %if.then142.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.then142.i.sw.bb.i_crit_edge:                   ; preds = %if.then142.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb.i

if.then142.i.if.end160.i_crit_edge:               ; preds = %if.then142.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end160.i

sw.bb.i:                                          ; preds = %if.then142.i.sw.bb.i_crit_edge, %if.then142.i.sw.bb.i_crit_edge186
  %219 = ptrtoint ptr %msix_supported.i to i32
  call void @__asan_store1_noabort(i32 %219)
  store i8 1, ptr %msix_supported.i, align 1
  %rss_supported159.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 20
  %220 = ptrtoint ptr %rss_supported159.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 1, ptr %rss_supported159.i, align 2
  br label %if.end160.i

if.end160.i:                                      ; preds = %sw.bb.i, %if.then142.i.if.end160.i_crit_edge, %if.else131.i.if.end160.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flashed_ver.i) #15
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.end160.i, %if.then120.i
  %num_txd.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 6
  %221 = ptrtoint ptr %num_txd.i to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 1024, ptr %num_txd.i, align 8
  %222 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %223)
  %cmp165.i = icmp ult i8 %223, 38
  %num_lro_rxd.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 9
  br i1 %cmp165.i, label %if.then167.i, label %if.else168.i

if.then167.i:                                     ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #17
  %224 = ptrtoint ptr %num_lro_rxd.i to i32
  call void @__asan_store2_noabort(i32 %224)
  store i16 8, ptr %num_lro_rxd.i, align 2
  %max_rds_rings.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 10
  %225 = ptrtoint ptr %max_rds_rings.i to i32
  call void @__asan_store1_noabort(i32 %225)
  store i8 3, ptr %max_rds_rings.i, align 8
  br label %netxen_check_options.exit

if.else168.i:                                     ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #17
  %226 = ptrtoint ptr %num_lro_rxd.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 0, ptr %num_lro_rxd.i, align 2
  %max_rds_rings170.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 10
  %227 = ptrtoint ptr %max_rds_rings170.i to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 2, ptr %max_rds_rings170.i, align 8
  br label %netxen_check_options.exit

netxen_check_options.exit:                        ; preds = %if.else168.i, %if.then167.i, %if.then64.i, %do.end.i167
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %serial_num.i) #15
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %brd_name.i) #15
  %need_fw_reset = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 25
  %228 = ptrtoint ptr %need_fw_reset to i32
  call void @__asan_store1_noabort(i32 %228)
  store i8 0, ptr %need_fw_reset, align 1
  br label %err_out

err_out:                                          ; preds = %netxen_check_options.exit, %if.then69, %if.end53.err_out_crit_edge, %if.end34.err_out_crit_edge, %if.end12.err_out_crit_edge
  %err.0 = phi i32 [ %call13, %if.end12.err_out_crit_edge ], [ %call67, %if.then69 ], [ 0, %netxen_check_options.exit ], [ %call35, %if.end34.err_out_crit_edge ], [ %call54, %if.end53.err_out_crit_edge ]
  call void @netxen_release_firmware(ptr noundef %adapter) #15
  br label %cleanup

cleanup:                                          ; preds = %err_out, %do.end, %netxen_can_start_firmware.exit.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ %err.0, %err_out ], [ -1, %netxen_can_start_firmware.exit.cleanup_crit_edge ], [ -5, %land.lhs.true.i.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ -1, %if.then.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_nic_clear_stats(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netxen_setup_intr(ptr noundef %adapter) unnamed_addr #1 align 64 {
entry:
  %control.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %rss_supported = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 20
  %2 = ptrtoint ptr %rss_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %rss_supported, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %4 = load volatile i32, ptr @__num_online_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %4)
  %cmp.inv = icmp ult i32 %4, 4
  %cond = select i1 %cmp.inv, i32 2, i32 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %num_msix.0 = phi i32 [ %cond, %if.then ], [ 1, %entry.if.end_crit_edge ]
  %max_sds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 11
  %5 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %max_sds_rings, align 1
  %flags = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 36
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, -7
  store i32 %and, ptr %flags, align 4
  %revision_id.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %8 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %9)
  %cmp.i = icmp ugt i8 %9, 63
  br i1 %cmp.i, label %if.then.i, label %if.end.netxen_initialize_interrupt_registers.exit_crit_edge

if.end.netxen_initialize_interrupt_registers.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_initialize_interrupt_registers.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %pci_func.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 13
  %10 = ptrtoint ptr %pci_func.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pci_func.i, align 2
  %idxprom.i = zext i8 %11 to i32
  %arrayidx.i = getelementptr [8 x %struct.netxen_legacy_intr_set], ptr @legacy_intr, i32 0, i32 %idxprom.i
  br label %netxen_initialize_interrupt_registers.exit

netxen_initialize_interrupt_registers.exit:       ; preds = %if.then.i, %if.end.netxen_initialize_interrupt_registers.exit_crit_edge
  %legacy_intrp.0.i = phi ptr [ %arrayidx.i, %if.then.i ], [ @legacy_intr, %if.end.netxen_initialize_interrupt_registers.exit_crit_edge ]
  %tgt_status_reg3.i = getelementptr inbounds %struct.netxen_legacy_intr_set, ptr %legacy_intrp.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %tgt_status_reg3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tgt_status_reg3.i, align 4
  %14 = ptrtoint ptr %legacy_intrp.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %legacy_intrp.0.i, align 4
  %int_vec_bit4.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 39
  %16 = ptrtoint ptr %int_vec_bit4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %int_vec_bit4.i, align 8
  %call.i = tail call ptr @netxen_get_ioaddr(ptr noundef %adapter, i32 noundef %13) #15
  %tgt_status_reg5.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 62
  %17 = ptrtoint ptr %tgt_status_reg5.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %tgt_status_reg5.i, align 8
  %tgt_mask_reg.i = getelementptr inbounds %struct.netxen_legacy_intr_set, ptr %legacy_intrp.0.i, i32 0, i32 2
  %18 = ptrtoint ptr %tgt_mask_reg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tgt_mask_reg.i, align 4
  %call6.i = tail call ptr @netxen_get_ioaddr(ptr noundef %adapter, i32 noundef %19) #15
  %tgt_mask_reg7.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 60
  %20 = ptrtoint ptr %tgt_mask_reg7.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call6.i, ptr %tgt_mask_reg7.i, align 8
  %pci_int_reg.i = getelementptr inbounds %struct.netxen_legacy_intr_set, ptr %legacy_intrp.0.i, i32 0, i32 3
  %21 = ptrtoint ptr %pci_int_reg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pci_int_reg.i, align 4
  %call8.i = tail call ptr @netxen_get_ioaddr(ptr noundef %adapter, i32 noundef %22) #15
  %pci_int_reg9.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 61
  %23 = ptrtoint ptr %pci_int_reg9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call8.i, ptr %pci_int_reg9.i, align 4
  %call10.i = tail call ptr @netxen_get_ioaddr(ptr noundef %adapter, i32 noundef 101777664) #15
  %isr_int_vec.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 64
  %24 = ptrtoint ptr %isr_int_vec.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call10.i, ptr %isr_int_vec.i, align 8
  %25 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %26)
  %cmp14.i = icmp ugt i8 %26, 64
  %..i = select i1 %cmp14.i, i32 101785708, i32 136323796
  %call19.i = tail call ptr @netxen_get_ioaddr(ptr noundef %adapter, i32 noundef %..i) #15
  %27 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 63
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call19.i, ptr %27, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control.i) #15
  %29 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %control.i, align 4, !annotation !390
  %msix_cap.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 21
  %30 = ptrtoint ptr %msix_cap.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %msix_cap.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %netxen_initialize_interrupt_registers.exit.netxen_set_msix_bit.exit_crit_edge, label %if.then.i46

netxen_initialize_interrupt_registers.exit.netxen_set_msix_bit.exit_crit_edge: ; preds = %netxen_initialize_interrupt_registers.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_set_msix_bit.exit

if.then.i46:                                      ; preds = %netxen_initialize_interrupt_registers.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i = zext i8 %31 to i32
  %call.i45 = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %conv.i, ptr noundef nonnull %control.i) #15
  %32 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %control.i, align 4
  %33 = ptrtoint ptr %msix_cap.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %msix_cap.i, align 2
  %conv5.i = zext i8 %34 to i32
  %call6.i47 = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef %conv5.i, i32 noundef 0) #15
  br label %netxen_set_msix_bit.exit

netxen_set_msix_bit.exit:                         ; preds = %if.then.i46, %netxen_initialize_interrupt_registers.exit.netxen_set_msix_bit.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control.i) #15
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %35 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %portnum, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp2 = icmp eq i8 %36, 0
  br i1 %cmp2, label %if.then4, label %if.else10

if.then4:                                         ; preds = %netxen_set_msix_bit.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = call fastcc i32 @netxen_setup_msi_interrupts(ptr noundef %adapter, i32 noundef %num_msix.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  %crb_write.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %37 = ptrtoint ptr %crb_write.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %crb_write.i, align 8
  %. = select i1 %tobool6.not, i32 1, i32 2
  %call.i48 = call i32 %38(ptr noundef %adapter, i32 noundef 136323652, i32 noundef %.) #15
  br label %if.end18

if.else10:                                        ; preds = %netxen_set_msix_bit.exit
  %crb_read.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %39 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %crb_read.i, align 4
  %call.i51 = call i32 %40(ptr noundef %adapter, i32 noundef 136323652) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i51)
  %cmp12 = icmp eq i32 %call.i51, 1
  br i1 %cmp12, label %land.lhs.true, label %if.else10.if.end18_crit_edge

if.else10.if.end18_crit_edge:                     ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

land.lhs.true:                                    ; preds = %if.else10
  %call14 = call fastcc i32 @netxen_setup_msi_interrupts(ptr noundef %adapter, i32 noundef %num_msix.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true.if.end18_crit_edge, label %do.end

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.91) #19
  br label %cleanup

if.end18:                                         ; preds = %land.lhs.true.if.end18_crit_edge, %if.else10.if.end18_crit_edge, %if.then4
  %41 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags, align 4
  %and20 = and i32 %42, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then22:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq, align 4
  %msix_entries = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 65
  %45 = ptrtoint ptr %msix_entries to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %msix_entries, align 4
  %dev26 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev26, ptr noundef nonnull @.str.94) #19
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %if.end18.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %if.then22 ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netxen_read_ula_info(ptr noundef %adapter) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %0 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %portnum, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %2 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crb_read, align 4
  %call = tail call i32 %3(ptr noundef %adapter, i32 noundef 136323448) #15
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.182)
  switch i32 %call, label %if.end.cleanup_crit_edge [
    i32 -623006463, label %if.end.cleanup.sink.split_crit_edge
    i32 -623006464, label %do.end5
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %do.end5, %if.end.cleanup.sink.split_crit_edge
  %.str.104.sink = phi ptr [ @.str.107, %do.end5 ], [ @.str.104, %if.end.cleanup.sink.split_crit_edge ]
  %pdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull %.str.104.sink) #19
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netxen_setup_netdev(ptr noundef %adapter, ptr noundef %netdev) unnamed_addr #1 align 64 {
entry:
  %mac_addr.i = alloca i64, align 8
  %addr.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %mc_enabled = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 18
  %2 = ptrtoint ptr %mc_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %mc_enabled, align 8
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %3 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %4)
  %cmp = icmp ugt i8 %4, 47
  %spec.select = select i1 %cmp, i8 38, i8 16
  %5 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 19
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %spec.select, ptr %5, align 1
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 16
  %7 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @netxen_netdev_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 115
  %8 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 500, ptr %watchdog_timeo, align 4
  %mtu = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 20
  %9 = ptrtoint ptr %mtu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mtu, align 4
  %call = tail call i32 @netxen_nic_change_mtu(ptr noundef %netdev, i32 noundef %10) #15
  %ethtool_ops = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 44
  %11 = ptrtoint ptr %ethtool_ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @netxen_nic_ethtool_ops, ptr %ethtool_ops, align 16
  %hw_features = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 24
  %12 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 1099511693315, ptr %hw_features, align 8
  %13 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %14)
  %cmp7 = icmp ugt i8 %14, 47
  %spec.store.select = select i1 %cmp7, i64 1099512741907, i64 1099511693315
  %15 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %spec.store.select, ptr %hw_features, align 8
  %vlan_features = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 26
  %16 = ptrtoint ptr %vlan_features to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %vlan_features, align 8
  %or13 = or i64 %17, %spec.store.select
  store i64 %or13, ptr %vlan_features, align 8
  %pci_using_dac = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 15
  %18 = ptrtoint ptr %pci_using_dac to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pci_using_dac, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not = icmp eq i8 %19, 0
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then14

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %features = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %20 = ptrtoint ptr %features to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %features, align 16
  %or15 = or i64 %21, 32
  store i64 %or15, ptr %features, align 16
  %or17 = or i64 %or13, 32
  %22 = ptrtoint ptr %vlan_features to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %or17, ptr %vlan_features, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %entry.if.end18_crit_edge
  %capabilities = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 35
  %23 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %capabilities, align 8
  %and = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end18.if.end23_crit_edge, label %if.then20

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %or22 = or i64 %spec.store.select, 128
  %25 = ptrtoint ptr %hw_features to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %or22, ptr %hw_features, align 8
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end18.if.end23_crit_edge
  %26 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %capabilities, align 8
  %and25 = and i32 %27, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end23.if.end30_crit_edge, label %if.then27

if.end23.if.end30_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end30

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #17
  %28 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %hw_features, align 8
  %or29 = or i64 %29, 32768
  store i64 %or29, ptr %hw_features, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end23.if.end30_crit_edge
  %30 = ptrtoint ptr %hw_features to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %hw_features, align 8
  %features32 = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %32 = ptrtoint ptr %features32 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %features32, align 16
  %or33 = or i64 %33, %31
  store i64 %or33, ptr %features32, align 16
  %msix_entries = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 65
  %34 = ptrtoint ptr %msix_entries to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %msix_entries, align 4
  %irq = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 64
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %irq, align 4
  %tx_timeout_task = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 68
  tail call void @__init_work(ptr noundef %tx_timeout_task, i32 noundef 0) #15
  %37 = ptrtoint ptr %tx_timeout_task to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -64, ptr %tx_timeout_task, align 8
  %lockdep_map = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 68, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.109, ptr noundef nonnull @netxen_setup_netdev.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry37 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 68, i32 1
  %38 = ptrtoint ptr %entry37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %entry37, ptr %entry37, align 4
  %prev.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 68, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %entry37, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 68, i32 2
  %40 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @netxen_tx_timeout_task, ptr %func, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mac_addr.i) #15
  %41 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 -1, ptr %mac_addr.i, align 8, !annotation !390
  %netdev1.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 1
  %42 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %netdev1.i, align 4
  %44 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev1, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr.i) #15
  %46 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 1
  %47 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 2
  %48 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 3
  %49 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 4
  %50 = getelementptr inbounds [6 x i8], ptr %addr.i, i32 0, i32 5
  %51 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %52)
  %cmp.i = icmp ugt i8 %52, 47
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end30
  %call.i = call i32 @netxen_p3_get_mac_addr(ptr noundef %adapter, ptr noundef nonnull %mac_addr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4.not.i = icmp eq i32 %call.i, 0
  br i1 %cmp4.not.i, label %if.then.i.if.end12.i_crit_edge, label %if.then.i.do.end44_crit_edge

if.then.i.do.end44_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end44

if.then.i.if.end12.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end30
  %call7.i = call i32 @netxen_get_flash_mac_addr(ptr noundef %adapter, ptr noundef nonnull %mac_addr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.not.i = icmp eq i32 %call7.i, 0
  br i1 %cmp8.not.i, label %if.else.i.if.end12.i_crit_edge, label %if.else.i.do.end44_crit_edge

if.else.i.do.end44_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end44

if.else.i.if.end12.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i.if.end12.i_crit_edge, %if.then.i.if.end12.i_crit_edge
  %add.ptr.i = getelementptr inbounds i8, ptr %mac_addr.i, i32 5
  %53 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr.i, align 1
  %55 = ptrtoint ptr %addr.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %54, ptr %addr.i, align 1
  %add.ptr15.1.i = getelementptr inbounds i8, ptr %mac_addr.i, i32 4
  %56 = ptrtoint ptr %add.ptr15.1.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %add.ptr15.1.i, align 4
  %58 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %46, align 1
  %add.ptr15.2.i = getelementptr inbounds i8, ptr %mac_addr.i, i32 3
  %59 = ptrtoint ptr %add.ptr15.2.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %add.ptr15.2.i, align 1
  %61 = ptrtoint ptr %47 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %47, align 1
  %add.ptr15.3.i = getelementptr inbounds i8, ptr %mac_addr.i, i32 2
  %62 = ptrtoint ptr %add.ptr15.3.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %add.ptr15.3.i, align 2
  %64 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %48, align 1
  %add.ptr15.4.i = getelementptr inbounds i8, ptr %mac_addr.i, i32 1
  %65 = ptrtoint ptr %add.ptr15.4.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %add.ptr15.4.i, align 1
  %67 = ptrtoint ptr %49 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %66, ptr %49, align 1
  %68 = ptrtoint ptr %mac_addr.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %mac_addr.i, align 8
  %70 = ptrtoint ptr %50 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %50, align 1
  call void @dev_addr_mod(ptr noundef %43, i32 noundef 0, ptr noundef nonnull %addr.i, i32 noundef 6) #15
  %mac_addr16.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 41
  %dev_addr.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 86
  %71 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev_addr.i, align 64
  %addr_len.i = getelementptr inbounds %struct.net_device, ptr %43, i32 0, i32 56
  %73 = ptrtoint ptr %addr_len.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %addr_len.i, align 1
  %conv18.i = zext i8 %74 to i32
  %75 = call ptr @memcpy(ptr %mac_addr16.i, ptr %72, i32 %conv18.i)
  %76 = load ptr, ptr %dev_addr.i, align 64
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 4
  %79 = and i32 %78, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool.i.not.i.i = icmp eq i32 %79, 0
  br i1 %tobool.i.not.i.i, label %is_valid_ether_addr.exit.i, label %if.end12.i.do.end.i_crit_edge

if.end12.i.do.end.i_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

is_valid_ether_addr.exit.i:                       ; preds = %if.end12.i
  %add.ptr.i.i.i = getelementptr i8, ptr %76, i32 4
  %80 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv.i.i.i = zext i16 %81 to i32
  %or.i.i.i = or i32 %78, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i.not.i, label %is_valid_ether_addr.exit.i.do.end.i_crit_edge, label %is_valid_ether_addr.exit.i.netxen_read_mac_addr.exit.thread_crit_edge

is_valid_ether_addr.exit.i.netxen_read_mac_addr.exit.thread_crit_edge: ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_read_mac_addr.exit.thread

is_valid_ether_addr.exit.i.do.end.i_crit_edge:    ; preds = %is_valid_ether_addr.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

do.end.i:                                         ; preds = %is_valid_ether_addr.exit.i.do.end.i_crit_edge, %if.end12.i.do.end.i_crit_edge
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.120, ptr noundef %76) #19
  br label %netxen_read_mac_addr.exit.thread

netxen_read_mac_addr.exit.thread:                 ; preds = %do.end.i, %is_valid_ether_addr.exit.i.netxen_read_mac_addr.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mac_addr.i) #15
  br label %if.end45

do.end44:                                         ; preds = %if.else.i.do.end44_crit_edge, %if.then.i.do.end44_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr.i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mac_addr.i) #15
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.110) #19
  br label %if.end45

if.end45:                                         ; preds = %do.end44, %netxen_read_mac_addr.exit.thread
  call void @netif_carrier_off(ptr noundef %netdev) #15
  %call46 = call i32 @register_netdev(ptr noundef %netdev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.end45.cleanup_crit_edge, label %do.end51

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #17
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev52, ptr noundef nonnull @.str.113) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end51, %if.end45.cleanup_crit_edge
  ret i32 %call46
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netxen_schedule_work(ptr noundef %adapter, ptr noundef %func, i32 noundef %delay) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_work = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 67
  tail call void @__init_work(ptr noundef %fw_work, i32 noundef 0) #15
  %0 = ptrtoint ptr %fw_work to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -64, ptr %fw_work, align 4
  %lockdep_map = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 67, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.122, ptr noundef nonnull @netxen_schedule_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry8 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 67, i32 0, i32 1
  %1 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 67, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %entry8, ptr %prev.i, align 4
  %func11 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 67, i32 0, i32 2
  %3 = ptrtoint ptr %func11 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %func, ptr %func11, align 4
  %timer = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 67, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.124, ptr noundef nonnull @netxen_schedule_work.__key.123) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %fw_work, i32 noundef %delay) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_fw_poll_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -492
  %state = getelementptr i8, ptr %work, i32 196
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.reschedule_crit_edge

entry.reschedule_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %reschedule

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %state, align 4
  %5 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %capabilities = getelementptr i8, ptr %work, i32 -252
  %6 = ptrtoint ptr %capabilities to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %capabilities, align 8
  %and = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then5, label %land.lhs.true.if.end12_crit_edge

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then5:                                         ; preds = %land.lhs.true
  %has_link_events = getelementptr i8, ptr %work, i32 -268
  %8 = ptrtoint ptr %has_link_events to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_link_events, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.then7, label %if.then5.if.end12_crit_edge

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then7:                                         ; preds = %if.then5
  %revision_id.i = getelementptr i8, ptr %work, i32 -367
  %10 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %11)
  %cmp.i = icmp ugt i8 %11, 47
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  %crb_read.i = getelementptr i8, ptr %work, i32 -88
  %12 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crb_read.i, align 4
  %call.i = tail call i32 %13(ptr noundef %add.ptr, i32 noundef 136323736) #15
  %pci_func.i = getelementptr i8, ptr %work, i32 -366
  %14 = ptrtoint ptr %pci_func.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pci_func.i, align 2
  %conv4.i = zext i8 %15 to i32
  %mul.i = shl nuw nsw i32 %conv4.i, 2
  %shr.i27 = lshr i32 %call.i, %mul.i
  %and.i = and i32 %shr.i27, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %cmp5.i = icmp eq i32 %and.i, 1
  br label %netxen_nic_handle_phy_intr.exit

if.else.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #17
  %physical_port.i = getelementptr i8, ptr %work, i32 -277
  %16 = ptrtoint ptr %physical_port.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %physical_port.i, align 1
  %conv.i = zext i8 %17 to i32
  %crb_read7.i = getelementptr i8, ptr %work, i32 -88
  %18 = ptrtoint ptr %crb_read7.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %crb_read7.i, align 4
  %call8.i = tail call i32 %19(ptr noundef %add.ptr, i32 noundef 136323732) #15
  %mul9.i = shl nuw nsw i32 %conv.i, 3
  %shr10.i = lshr i32 %call8.i, %mul9.i
  %and11.i = and i32 %shr10.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and11.i)
  %cmp12.i = icmp eq i32 %and11.i, 16
  br label %netxen_nic_handle_phy_intr.exit

netxen_nic_handle_phy_intr.exit:                  ; preds = %if.else.i, %if.then.i
  %linkup.0.in.i = phi i1 [ %cmp5.i, %if.then.i ], [ %cmp12.i, %if.else.i ]
  %linkup.0.i = zext i1 %linkup.0.in.i to i32
  tail call void @netxen_advert_link_change(ptr noundef %add.ptr, i32 noundef %linkup.0.i) #15
  %link_changed = getelementptr i8, ptr %work, i32 -273
  %20 = ptrtoint ptr %link_changed to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %link_changed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool8.not = icmp eq i8 %21, 0
  br i1 %tobool8.not, label %netxen_nic_handle_phy_intr.exit.if.end12_crit_edge, label %if.then9

netxen_nic_handle_phy_intr.exit.if.end12_crit_edge: ; preds = %netxen_nic_handle_phy_intr.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then9:                                         ; preds = %netxen_nic_handle_phy_intr.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netxen_nic_set_link_parameters(ptr noundef %add.ptr) #15
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %netxen_nic_handle_phy_intr.exit.if.end12_crit_edge, %if.then5.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %netdev1.i = getelementptr i8, ptr %work, i32 -360
  %22 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %netdev1.i, align 4
  %crb_read.i28 = getelementptr i8, ptr %work, i32 -88
  %24 = ptrtoint ptr %crb_read.i28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %crb_read.i28, align 4
  %call.i29 = tail call i32 %25(ptr noundef %add.ptr, i32 noundef 136323392) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call.i29)
  %cmp.i30 = icmp eq i32 %call.i29, 6
  br i1 %cmp.i30, label %if.end12.reschedule_crit_edge, label %if.end.i

if.end12.reschedule_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %reschedule

if.end.i:                                         ; preds = %if.end12
  %26 = ptrtoint ptr %netdev1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %netdev1.i, align 4
  %28 = ptrtoint ptr %crb_read.i28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %crb_read.i28, align 4
  %call.i.i = tail call i32 %29(ptr noundef %add.ptr, i32 noundef 136324020) #15
  %shr.i.i = lshr i32 %call.i.i, 16
  %trunc.i.i = trunc i32 %call.i.i to i16
  %30 = zext i16 %trunc.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.183)
  switch i16 %trunc.i.i, label %if.else15.i.i [
    i16 3, label %detach.critedge.i
    i16 2, label %if.then4.i.i
  ]

if.then4.i.i:                                     ; preds = %if.end.i
  %temp5.i.i = getelementptr i8, ptr %work, i32 -240
  %31 = ptrtoint ptr %temp5.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %temp5.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp6.i.i = icmp eq i32 %32, 1
  br i1 %cmp6.i.i, label %if.then4.i.i.netxen_nic_check_temp.exit.i_crit_edge, label %if.then4.i.i.if.end4.i_crit_edge

if.then4.i.i.if.end4.i_crit_edge:                 ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.then4.i.i.netxen_nic_check_temp.exit.i_crit_edge: ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_check_temp.exit.i

if.else15.i.i:                                    ; preds = %if.end.i
  %temp16.i.i = getelementptr i8, ptr %work, i32 -240
  %33 = ptrtoint ptr %temp16.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %temp16.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp17.i.i = icmp eq i32 %34, 2
  br i1 %cmp17.i.i, label %if.else15.i.i.netxen_nic_check_temp.exit.i_crit_edge, label %if.else15.i.i.if.end4.i_crit_edge

if.else15.i.i.if.end4.i_crit_edge:                ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.else15.i.i.netxen_nic_check_temp.exit.i_crit_edge: ; preds = %if.else15.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_check_temp.exit.i

netxen_nic_check_temp.exit.i:                     ; preds = %if.else15.i.i.netxen_nic_check_temp.exit.i_crit_edge, %if.then4.i.i.netxen_nic_check_temp.exit.i_crit_edge
  %.str.136.sink.i.i = phi ptr [ @.str.136, %if.then4.i.i.netxen_nic_check_temp.exit.i_crit_edge ], [ @.str.139, %if.else15.i.i.netxen_nic_check_temp.exit.i_crit_edge ]
  %call14.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.136.sink.i.i, ptr noundef %27, i32 noundef %shr.i.i) #19
  br label %if.end4.i

if.end4.i:                                        ; preds = %netxen_nic_check_temp.exit.i, %if.else15.i.i.if.end4.i_crit_edge, %if.then4.i.i.if.end4.i_crit_edge
  %and.i.i = and i32 %call.i.i, 65535
  %temp29.i.i = getelementptr i8, ptr %work, i32 -240
  %35 = ptrtoint ptr %temp29.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %and.i.i, ptr %temp29.i.i, align 4
  %need_fw_reset.i = getelementptr i8, ptr %work, i32 -269
  %36 = ptrtoint ptr %need_fw_reset.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %need_fw_reset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool5.not.i = icmp eq i8 %37, 0
  br i1 %tobool5.not.i, label %if.end11.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end4.i
  %call.i127.i = tail call i32 @netxen_pcie_sem_lock(ptr noundef %add.ptr, i32 noundef 5, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127.i)
  %tobool.not.i.i = icmp eq i32 %call.i127.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then6.i.reschedule_crit_edge

if.then6.i.reschedule_crit_edge:                  ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %reschedule

if.end.i.i:                                       ; preds = %if.then6.i
  %38 = ptrtoint ptr %crb_read.i28 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %crb_read.i28, align 4
  %call1.i.i = tail call i32 %39(ptr noundef %add.ptr, i32 noundef 136323392) #15
  %40 = zext i32 %call1.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.184)
  switch i32 %call1.i.i, label %if.then6.i.i [
    i32 4, label %if.end.i.i.nx_dev_request_reset.exit.thread135.i_crit_edge
    i32 7, label %if.end.i.i.nx_dev_request_reset.exit.thread135.i_crit_edge35
    i32 2, label %if.end.i.i.nx_dev_request_reset.exit.i_crit_edge
    i32 6, label %if.end.i.i.nx_dev_request_reset.exit.i_crit_edge36
  ]

if.end.i.i.nx_dev_request_reset.exit.i_crit_edge36: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nx_dev_request_reset.exit.i

if.end.i.i.nx_dev_request_reset.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nx_dev_request_reset.exit.i

if.end.i.i.nx_dev_request_reset.exit.thread135.i_crit_edge35: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nx_dev_request_reset.exit.thread135.i

if.end.i.i.nx_dev_request_reset.exit.thread135.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %nx_dev_request_reset.exit.thread135.i

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %crb_write.i.i = getelementptr i8, ptr %work, i32 -84
  %41 = ptrtoint ptr %crb_write.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %crb_write.i.i, align 8
  %call7.i.i = tail call i32 %42(ptr noundef %add.ptr, i32 noundef 136323392, i32 noundef 4) #15
  %flags.i.i = getelementptr i8, ptr %work, i32 -248
  %43 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %44, 64
  store i32 %or.i.i, ptr %flags.i.i, align 4
  br label %nx_dev_request_reset.exit.thread135.i

nx_dev_request_reset.exit.thread135.i:            ; preds = %if.then6.i.i, %if.end.i.i.nx_dev_request_reset.exit.thread135.i_crit_edge, %if.end.i.i.nx_dev_request_reset.exit.thread135.i_crit_edge35
  tail call void @netxen_pcie_sem_unlock(ptr noundef %add.ptr, i32 noundef 5) #15
  br label %detach.i

nx_dev_request_reset.exit.i:                      ; preds = %if.end.i.i.nx_dev_request_reset.exit.i_crit_edge, %if.end.i.i.nx_dev_request_reset.exit.i_crit_edge36
  tail call void @netxen_pcie_sem_unlock(ptr noundef %add.ptr, i32 noundef 5) #15
  br label %reschedule

if.end11.i:                                       ; preds = %if.end4.i
  %45 = zext i32 %call.i29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.185)
  switch i32 %call.i29, label %if.end11.i.if.end20.i_crit_edge [
    i32 4, label %if.end11.i.if.then14.i_crit_edge
    i32 7, label %if.end11.i.if.then14.i_crit_edge37
  ]

if.end11.i.if.then14.i_crit_edge37:               ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i

if.end11.i.if.then14.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then14.i

if.end11.i.if.end20.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.then14.i:                                      ; preds = %if.end11.i.if.then14.i_crit_edge, %if.end11.i.if.then14.i_crit_edge37
  %46 = ptrtoint ptr %need_fw_reset.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %need_fw_reset.i, align 1
  %revision_id.i31 = getelementptr i8, ptr %work, i32 -367
  %47 = ptrtoint ptr %revision_id.i31 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %revision_id.i31, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %48)
  %cmp16.i = icmp ult i8 %48, 38
  br i1 %cmp16.i, label %if.then14.i.detach.i_crit_edge, label %if.then14.i.if.end20.i_crit_edge

if.then14.i.if.end20.i_crit_edge:                 ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20.i

if.then14.i.detach.i_crit_edge:                   ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %detach.i

if.end20.i:                                       ; preds = %if.then14.i.if.end20.i_crit_edge, %if.end11.i.if.end20.i_crit_edge
  %revision_id22.i = getelementptr i8, ptr %work, i32 -367
  %49 = ptrtoint ptr %revision_id22.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %revision_id22.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %50)
  %cmp24.i = icmp ult i8 %50, 38
  br i1 %cmp24.i, label %if.end20.i.reschedule_crit_edge, label %if.end27.i

if.end20.i.reschedule_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %reschedule

if.end27.i:                                       ; preds = %if.end20.i
  %51 = ptrtoint ptr %crb_read.i28 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %crb_read.i28, align 4
  %call29.i = tail call i32 %52(ptr noundef %add.ptr, i32 noundef 136323248) #15
  %heartbit30.i = getelementptr i8, ptr %work, i32 -232
  %53 = ptrtoint ptr %heartbit30.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %heartbit30.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call29.i, i32 %54)
  %cmp31.not.i = icmp eq i32 %call29.i, %54
  br i1 %cmp31.not.i, label %if.end39.i, label %if.then33.i

if.then33.i:                                      ; preds = %if.end27.i
  %55 = ptrtoint ptr %heartbit30.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call29.i, ptr %heartbit30.i, align 4
  %fw_fail_cnt.i = getelementptr i8, ptr %work, i32 -271
  %56 = ptrtoint ptr %fw_fail_cnt.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %fw_fail_cnt.i, align 1
  %57 = ptrtoint ptr %need_fw_reset.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %need_fw_reset.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool36.not.i = icmp eq i8 %58, 0
  br i1 %tobool36.not.i, label %if.then33.i.reschedule_crit_edge, label %if.then33.i.detach.i_crit_edge

if.then33.i.detach.i_crit_edge:                   ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %detach.i

if.then33.i.reschedule_crit_edge:                 ; preds = %if.then33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %reschedule

if.end39.i:                                       ; preds = %if.end27.i
  %fw_fail_cnt40.i = getelementptr i8, ptr %work, i32 -271
  %59 = ptrtoint ptr %fw_fail_cnt40.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %fw_fail_cnt40.i, align 1
  %inc.i = add i8 %60, 1
  store i8 %inc.i, ptr %fw_fail_cnt40.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %inc.i)
  %cmp42.i = icmp ult i8 %inc.i, 3
  br i1 %cmp42.i, label %if.end39.i.reschedule_crit_edge, label %if.end45.i

if.end39.i.reschedule_crit_edge:                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %reschedule

if.end45.i:                                       ; preds = %if.end39.i
  %call46.i = tail call i32 @nx_dev_request_reset(ptr noundef %add.ptr) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %tobool47.not.i = icmp eq i32 %call46.i, 0
  br i1 %tobool47.not.i, label %if.end49.i, label %if.end45.i.reschedule_crit_edge

if.end45.i.reschedule_crit_edge:                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %reschedule

if.end49.i:                                       ; preds = %if.end45.i
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state) #15
  %dev.i = getelementptr inbounds %struct.net_device, ptr %23, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.125) #19
  %61 = ptrtoint ptr %crb_read.i28 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %crb_read.i28, align 4
  %call52.i = tail call i32 %62(ptr noundef %add.ptr, i32 noundef 136323240) #15
  %pdev.i = getelementptr i8, ptr %work, i32 -356
  %63 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pdev.i, align 8
  %dev56.i = getelementptr inbounds %struct.pci_dev, ptr %64, i32 0, i32 44
  %65 = ptrtoint ptr %crb_read.i28 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %crb_read.i28, align 4
  %call58.i = tail call i32 %66(ptr noundef %add.ptr, i32 noundef 136323244) #15
  %67 = ptrtoint ptr %crb_read.i28 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %crb_read.i28, align 4
  %call60.i = tail call i32 %68(ptr noundef %add.ptr, i32 noundef 118489148) #15
  %69 = ptrtoint ptr %crb_read.i28 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %crb_read.i28, align 4
  %call62.i = tail call i32 %70(ptr noundef %add.ptr, i32 noundef 119537724) #15
  %71 = ptrtoint ptr %crb_read.i28 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %crb_read.i28, align 4
  %call64.i = tail call i32 %72(ptr noundef %add.ptr, i32 noundef 120586300) #15
  %73 = ptrtoint ptr %crb_read.i28 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %crb_read.i28, align 4
  %call66.i = tail call i32 %74(ptr noundef %add.ptr, i32 noundef 121634876) #15
  %75 = ptrtoint ptr %crb_read.i28 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %crb_read.i28, align 4
  %call68.i = tail call i32 %76(ptr noundef %add.ptr, i32 noundef 116391996) #15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev56.i, ptr noundef nonnull @.str.128, i32 noundef %call52.i, i32 noundef %call58.i, i32 noundef %call60.i, i32 noundef %call62.i, i32 noundef %call64.i, i32 noundef %call66.i, i32 noundef %call68.i) #19
  %77 = and i32 %call52.i, 536870656
  call void @__sanitizer_cov_trace_const_cmp4(i32 26368, i32 %77)
  %cmp69.i = icmp eq i32 %77, 26368
  br i1 %cmp69.i, label %do.end74.i, label %if.end49.i.detach.i_crit_edge

if.end49.i.detach.i_crit_edge:                    ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %detach.i

do.end74.i:                                       ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #17
  %78 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pdev.i, align 8
  %dev76.i = getelementptr inbounds %struct.pci_dev, ptr %79, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev76.i, ptr noundef nonnull @.str.131) #19
  br label %detach.i

detach.critedge.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %call14.i.c.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef %27, i32 noundef %shr.i.i) #19
  %and.i.c.i = and i32 %call.i.i, 65535
  %temp29.i.c.i = getelementptr i8, ptr %work, i32 -240
  %80 = ptrtoint ptr %temp29.i.c.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %and.i.c.i, ptr %temp29.i.c.i, align 4
  br label %detach.i

detach.i:                                         ; preds = %detach.critedge.i, %do.end74.i, %if.end49.i.detach.i_crit_edge, %if.then33.i.detach.i_crit_edge, %if.then14.i.detach.i_crit_edge, %nx_dev_request_reset.exit.thread135.i
  %81 = load i32, ptr @auto_fw_reset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -284119278, i32 %81)
  %cmp78.i = icmp eq i32 %81, -284119278
  br i1 %cmp78.i, label %land.lhs.true.i, label %detach.i.cleanup_crit_edge

detach.i.cleanup_crit_edge:                       ; preds = %detach.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.i:                                  ; preds = %detach.i
  %call81.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81.i)
  %tobool82.not.i = icmp eq i32 %call81.i, 0
  br i1 %tobool82.not.i, label %if.then83.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then83.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #15
  %82 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -64, ptr %work, align 4
  %lockdep_map.i.i = getelementptr i8, ptr %work, i32 16
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.122, ptr noundef nonnull @netxen_schedule_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry8.i.i = getelementptr i8, ptr %work, i32 4
  %83 = ptrtoint ptr %entry8.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %entry8.i.i, ptr %entry8.i.i, align 4
  br label %cleanup.sink.split

reschedule:                                       ; preds = %if.end45.i.reschedule_crit_edge, %if.end39.i.reschedule_crit_edge, %if.then33.i.reschedule_crit_edge, %if.end20.i.reschedule_crit_edge, %nx_dev_request_reset.exit.i, %if.then6.i.reschedule_crit_edge, %if.end12.reschedule_crit_edge, %entry.reschedule_crit_edge
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #15
  %84 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -64, ptr %work, align 4
  %lockdep_map.i = getelementptr i8, ptr %work, i32 16
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.122, ptr noundef nonnull @netxen_schedule_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry8.i = getelementptr i8, ptr %work, i32 4
  %85 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %entry8.i, ptr %entry8.i, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %reschedule, %if.then83.i
  %entry8.i.i.sink = phi ptr [ %entry8.i.i, %if.then83.i ], [ %entry8.i, %reschedule ]
  %netxen_detach_work.sink = phi ptr [ @netxen_detach_work, %if.then83.i ], [ @netxen_fw_poll_work, %reschedule ]
  %.sink34 = phi i32 [ 0, %if.then83.i ], [ 200, %reschedule ]
  %prev.i.i.i = getelementptr i8, ptr %work, i32 8
  %86 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %entry8.i.i.sink, ptr %prev.i.i.i, align 4
  %func11.i.i = getelementptr i8, ptr %work, i32 12
  %87 = ptrtoint ptr %func11.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %netxen_detach_work.sink, ptr %func11.i.i, align 4
  %timer.i.i = getelementptr i8, ptr %work, i32 44
  tail call void @init_timer_key(ptr noundef %timer.i.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.124, ptr noundef nonnull @netxen_schedule_work.__key.123) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %88 = load ptr, ptr @system_wq, align 4
  %call.i.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %88, ptr noundef %work, i32 noundef %.sink34) #15
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %land.lhs.true.i.cleanup_crit_edge, %detach.i.cleanup_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netxen_create_diag_entries(ptr nocapture noundef readonly %adapter) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %dev2 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  %call = tail call i32 @device_create_file(ptr noundef %dev2, ptr noundef nonnull @dev_attr_diag_mode) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.149) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call3 = tail call i32 @device_create_bin_file(ptr noundef %dev2, ptr noundef nonnull @bin_attr_crb) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %do.end8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.152) #19
  br label %if.end9

if.end9:                                          ; preds = %do.end8, %if.end.if.end9_crit_edge
  %call10 = tail call i32 @device_create_bin_file(ptr noundef %dev2, ptr noundef nonnull @bin_attr_mem) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end9.if.end16_crit_edge, label %do.end15

if.end9.if.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.155) #19
  br label %if.end16

if.end16:                                         ; preds = %do.end15, %if.end9.if.end16_crit_edge
  %call17 = tail call i32 @device_create_bin_file(ptr noundef %dev2, ptr noundef nonnull @bin_attr_dimm) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end16.if.end23_crit_edge, label %do.end22

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

do.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev2, ptr noundef nonnull @.str.158) #19
  br label %if.end23

if.end23:                                         ; preds = %do.end22, %if.end16.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netxen_teardown_intr(ptr nocapture noundef readonly %adapter) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 36
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %pdev = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 8
  tail call void @pci_disable_msix(ptr noundef %3) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and2 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %pdev5 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %6 = ptrtoint ptr %pdev5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev5, align 8
  tail call void @pci_disable_msi(ptr noundef %7) #15
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_free_dummy_dma(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nx_decr_dev_ref_cnt(ptr noundef %adapter) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @netxen_pcie_sem_lock(ptr noundef %adapter, i32 noundef 5, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 53
  %0 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crb_read, align 4
  %call1 = tail call i32 %1(ptr noundef %adapter, i32 noundef 136323384) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp eq i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end.if.end16_crit_edge, !prof !401

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2396, i32 noundef 9, ptr noundef null) #15
  br label %if.end16

if.end16:                                         ; preds = %do.end, %if.end.if.end16_crit_edge
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 54
  %2 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crb_write, align 8
  %dec = add i32 %call1, -1
  %call23 = tail call i32 %3(ptr noundef %adapter, i32 noundef 136323384, i32 noundef %dec) #15
  %4 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crb_read, align 4
  %call25 = tail call i32 %5(ptr noundef %adapter, i32 noundef 136323392) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp26 = icmp ne i32 %dec, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call25)
  %cmp27.not = icmp eq i32 %call25, 7
  %or.cond = select i1 %cmp26, i1 true, i1 %cmp27.not
  br i1 %or.cond, label %if.end16.if.end31_crit_edge, label %if.then28

if.end16.if.end31_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then28:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crb_write, align 8
  %call30 = tail call i32 %7(ptr noundef %adapter, i32 noundef 136323392, i32 noundef 1) #15
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end16.if.end31_crit_edge
  tail call void @netxen_pcie_sem_unlock(ptr noundef %adapter, i32 noundef 5) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %dec, %if.end31 ], [ -5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netxen_cleanup_pci_map(ptr nocapture noundef readonly %adapter) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %db_base = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 3
  %0 = ptrtoint ptr %db_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %db_base, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iounmap(ptr noundef nonnull %1) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %adapter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adapter, align 8
  %cmp4.not = icmp eq ptr %3, null
  br i1 %cmp4.not, label %if.end.if.end8_crit_edge, label %if.then5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iounmap(ptr noundef nonnull %3) #15
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end.if.end8_crit_edge
  %pci_base1 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 1
  %4 = ptrtoint ptr %pci_base1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pci_base1, align 4
  %cmp10.not = icmp eq ptr %5, null
  br i1 %cmp10.not, label %if.end8.if.end14_crit_edge, label %if.then11

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iounmap(ptr noundef nonnull %5) #15
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end8.if.end14_crit_edge
  %pci_base2 = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 2
  %6 = ptrtoint ptr %pci_base2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_base2, align 8
  %cmp16.not = icmp eq ptr %7, null
  br i1 %cmp16.not, label %if.end14.if.end20_crit_edge, label %if.then17

if.end14.if.end20_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @iounmap(ptr noundef nonnull %7) #15
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %if.end14.if.end20_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_disable_pcie_error_reporting(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_release_regions(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_ioremap_bar(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_setup_hwops(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @pci_find_ext_capability(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_dword(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_request_firmware(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_need_fw_reset(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_pinit_from_rom(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_load_firmware(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_release_firmware(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_init_dummy_dma(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_phantom_init(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_rom_fast_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_setup_minidump(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netxen_setup_msi_interrupts(ptr noundef %adapter, i32 noundef %num_msix) unnamed_addr #1 align 64 {
entry:
  %control.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pdev1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 2
  %0 = ptrtoint ptr %pdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev1, align 8
  %msix_supported = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 13
  %2 = ptrtoint ptr %msix_supported to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %msix_supported, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.land.lhs.true_crit_edge, label %if.then

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_msix)
  %cmp5.i = icmp sgt i32 %num_msix, 0
  br i1 %cmp5.i, label %if.then.for.body.i_crit_edge, label %if.then.netxen_init_msix_entries.exit_crit_edge

if.then.netxen_init_msix_entries.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_init_msix_entries.exit

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.06.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %conv.i = trunc i32 %i.06.i to i16
  %entry1.i = getelementptr %struct.netxen_adapter, ptr %adapter, i32 0, i32 65, i32 %i.06.i, i32 1
  %4 = ptrtoint ptr %entry1.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv.i, ptr %entry1.i, align 4
  %inc.i = add nuw nsw i32 %i.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %num_msix
  br i1 %exitcond.not.i, label %for.body.i.netxen_init_msix_entries.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.netxen_init_msix_entries.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_init_msix_entries.exit

netxen_init_msix_entries.exit:                    ; preds = %for.body.i.netxen_init_msix_entries.exit_crit_edge, %if.then.netxen_init_msix_entries.exit_crit_edge
  %msix_entries = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 65
  %call = tail call i32 @pci_enable_msix_range(ptr noundef %1, ptr noundef %msix_entries, i32 noundef %num_msix, i32 noundef %num_msix) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp sgt i32 %call, 0
  br i1 %cmp, label %if.then2, label %netxen_init_msix_entries.exit.land.lhs.true_crit_edge

netxen_init_msix_entries.exit.land.lhs.true_crit_edge: ; preds = %netxen_init_msix_entries.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

if.then2:                                         ; preds = %netxen_init_msix_entries.exit
  %flags = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 36
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %or = or i32 %6, 4
  store i32 %or, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %control.i) #15
  %7 = ptrtoint ptr %control.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %control.i, align 4, !annotation !390
  %msix_cap.i = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 21
  %8 = ptrtoint ptr %msix_cap.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %msix_cap.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then2.netxen_set_msix_bit.exit_crit_edge, label %if.then.i

if.then2.netxen_set_msix_bit.exit_crit_edge:      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_set_msix_bit.exit

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  %conv.i47 = zext i8 %9 to i32
  %call.i = call i32 @pci_read_config_dword(ptr noundef %1, i32 noundef %conv.i47, ptr noundef nonnull %control.i) #15
  %10 = ptrtoint ptr %control.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %control.i, align 4
  %or.i = or i32 %11, 32768
  store i32 %or.i, ptr %control.i, align 4
  %12 = ptrtoint ptr %msix_cap.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %msix_cap.i, align 2
  %conv5.i = zext i8 %13 to i32
  %call6.i = call i32 @pci_write_config_dword(ptr noundef %1, i32 noundef %conv5.i, i32 noundef %or.i) #15
  br label %netxen_set_msix_bit.exit

netxen_set_msix_bit.exit:                         ; preds = %if.then.i, %if.then2.netxen_set_msix_bit.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %control.i) #15
  %rss_supported = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 20
  %14 = ptrtoint ptr %rss_supported to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %rss_supported, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool3.not = icmp eq i8 %15, 0
  br i1 %tobool3.not, label %netxen_set_msix_bit.exit.do.end_crit_edge, label %if.then4

netxen_set_msix_bit.exit.do.end_crit_edge:        ; preds = %netxen_set_msix_bit.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then4:                                         ; preds = %netxen_set_msix_bit.exit
  call void @__sanitizer_cov_trace_pc() #17
  %conv = trunc i32 %num_msix to i8
  %max_sds_rings = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 11
  %16 = ptrtoint ptr %max_sds_rings to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv, ptr %max_sds_rings, align 1
  br label %do.end

do.end:                                           ; preds = %if.then4, %netxen_set_msix_bit.exit.do.end_crit_edge
  %dev = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.96) #19
  br label %cleanup

land.lhs.true:                                    ; preds = %netxen_init_msix_entries.exit.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call8 = tail call i32 @pci_enable_msi(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.then10, label %do.end23

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %pci_func = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 13
  %17 = ptrtoint ptr %pci_func to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %pci_func, align 2
  %idxprom = zext i8 %18 to i32
  %arrayidx = getelementptr [8 x i32], ptr @msi_tgt_status, i32 0, i32 %idxprom
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %flags11 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 36
  %21 = ptrtoint ptr %flags11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags11, align 4
  %or12 = or i32 %22, 2
  store i32 %or12, ptr %flags11, align 4
  %call13 = tail call ptr @netxen_get_ioaddr(ptr noundef %adapter, i32 noundef %20) #15
  %tgt_status_reg = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 62
  %23 = ptrtoint ptr %tgt_status_reg to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call13, ptr %tgt_status_reg, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 46
  %24 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq, align 4
  %msix_entries14 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 65
  %26 = ptrtoint ptr %msix_entries14 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %msix_entries14, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19, ptr noundef nonnull @.str.99) #19
  br label %cleanup

do.end23:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  %dev24 = getelementptr inbounds %struct.pci_dev, ptr %1, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev24, ptr noundef nonnull @.str.102) #19
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.then10, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ -5, %do.end23 ], [ 0, %if.then10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msix_range(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_msi(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_nic_change_mtu(ptr noundef, i32 noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_tx_timeout_task(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -592
  %netdev = getelementptr i8, ptr %work, i32 -460
  %0 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %state = getelementptr i8, ptr %work, i32 96
  %call1 = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tx_timeo_cnt = getelementptr i8, ptr %work, i32 -370
  %4 = ptrtoint ptr %tx_timeo_cnt to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %tx_timeo_cnt, align 2
  %inc = add i8 %5, 1
  store i8 %inc, ptr %tx_timeo_cnt, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %inc)
  %cmp = icmp ugt i8 %inc, 1
  br i1 %cmp, label %if.end3.request_reset_crit_edge, label %if.end6

if.end3.request_reset_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %request_reset

if.end6:                                          ; preds = %if.end3
  tail call void @rtnl_lock() #15
  %revision_id = getelementptr i8, ptr %work, i32 -467
  %6 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %7)
  %cmp8 = icmp ult i8 %7, 38
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end6
  %max_sds_rings.i = getelementptr i8, ptr %work, i32 -383
  %8 = ptrtoint ptr %max_sds_rings.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %max_sds_rings.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp10.not.i = icmp eq i8 %9, 0
  br i1 %cmp10.not.i, label %if.then10.netxen_napi_enable.exit_crit_edge, label %for.body.lr.ph.i

if.then10.netxen_napi_enable.exit_crit_edge:      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_napi_enable.exit

for.body.lr.ph.i:                                 ; preds = %if.then10
  %sds_rings.i = getelementptr i8, ptr %work, i32 -236
  br label %for.body.i

for.body.i:                                       ; preds = %napi_synchronize.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ring.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %napi_synchronize.exit.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %sds_rings.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sds_rings.i, align 4
  %adapter1.i.i = getelementptr %struct.nx_host_sds_ring, ptr %11, i32 %ring.011.i, i32 5
  %12 = ptrtoint ptr %adapter1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adapter1.i.i, align 4
  %io_write.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %13, i32 0, i32 59
  %14 = ptrtoint ptr %io_write.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_write.i.i, align 4
  %crb_intr_mask.i.i = getelementptr %struct.nx_host_sds_ring, ptr %11, i32 %ring.011.i, i32 3
  %16 = ptrtoint ptr %crb_intr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %crb_intr_mask.i.i, align 4
  tail call void %15(ptr noundef %13, ptr noundef %17, i32 noundef 0) #15
  %napi.i = getelementptr %struct.nx_host_sds_ring, ptr %11, i32 %ring.011.i, i32 6
  %state.i.i = getelementptr %struct.nx_host_sds_ring, ptr %11, i32 %ring.011.i, i32 6, i32 1
  %18 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %state.i.i, align 4
  %and1.i1.i.i = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i.i)
  %tobool.not2.i.i = icmp eq i32 %and1.i1.i.i, 0
  br i1 %tobool.not2.i.i, label %for.body.i.napi_synchronize.exit.i_crit_edge, label %for.body.i.while.body.i.i_crit_edge

for.body.i.while.body.i.i_crit_edge:              ; preds = %for.body.i
  br label %while.body.i.i

for.body.i.napi_synchronize.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %napi_synchronize.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.body.i.while.body.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #15
  %20 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %21, 1
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.napi_synchronize.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

while.body.i.i.napi_synchronize.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %napi_synchronize.exit.i

napi_synchronize.exit.i:                          ; preds = %while.body.i.i.napi_synchronize.exit.i_crit_edge, %for.body.i.napi_synchronize.exit.i_crit_edge
  tail call void @napi_disable(ptr noundef %napi.i) #15
  %inc.i = add nuw nsw i32 %ring.011.i, 1
  %22 = ptrtoint ptr %max_sds_rings.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %max_sds_rings.i, align 1
  %conv.i = zext i8 %23 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %napi_synchronize.exit.i.for.body.i_crit_edge, label %netxen_napi_disable.exit

napi_synchronize.exit.i.for.body.i_crit_edge:     ; preds = %napi_synchronize.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

netxen_napi_disable.exit:                         ; preds = %napi_synchronize.exit.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp8.not.i = icmp eq i8 %23, 0
  br i1 %cmp8.not.i, label %netxen_napi_disable.exit.netxen_napi_enable.exit_crit_edge, label %netxen_napi_disable.exit.for.body.i41_crit_edge

netxen_napi_disable.exit.for.body.i41_crit_edge:  ; preds = %netxen_napi_disable.exit
  br label %for.body.i41

netxen_napi_disable.exit.netxen_napi_enable.exit_crit_edge: ; preds = %netxen_napi_disable.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_napi_enable.exit

for.body.i41:                                     ; preds = %netxen_nic_enable_int.exit.i.for.body.i41_crit_edge, %netxen_napi_disable.exit.for.body.i41_crit_edge
  %ring.09.i = phi i32 [ %inc.i42, %netxen_nic_enable_int.exit.i.for.body.i41_crit_edge ], [ 0, %netxen_napi_disable.exit.for.body.i41_crit_edge ]
  %24 = ptrtoint ptr %sds_rings.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sds_rings.i, align 4
  %napi.i36 = getelementptr %struct.nx_host_sds_ring, ptr %25, i32 %ring.09.i, i32 6
  tail call void @napi_enable(ptr noundef %napi.i36) #15
  %adapter1.i.i37 = getelementptr %struct.nx_host_sds_ring, ptr %25, i32 %ring.09.i, i32 5
  %26 = ptrtoint ptr %adapter1.i.i37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adapter1.i.i37, align 4
  %io_write.i.i38 = getelementptr inbounds %struct.netxen_adapter, ptr %27, i32 0, i32 59
  %28 = ptrtoint ptr %io_write.i.i38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_write.i.i38, align 4
  %crb_intr_mask.i.i39 = getelementptr %struct.nx_host_sds_ring, ptr %25, i32 %ring.09.i, i32 3
  %30 = ptrtoint ptr %crb_intr_mask.i.i39 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %crb_intr_mask.i.i39, align 4
  tail call void %29(ptr noundef %27, ptr noundef %31, i32 noundef 1) #15
  %flags.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %27, i32 0, i32 36
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %33, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i40 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i40, label %if.then.i.i, label %for.body.i41.netxen_nic_enable_int.exit.i_crit_edge

for.body.i41.netxen_nic_enable_int.exit.i_crit_edge: ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_enable_int.exit.i

if.then.i.i:                                      ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #17
  %34 = ptrtoint ptr %io_write.i.i38 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %io_write.i.i38, align 4
  %tgt_mask_reg.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %27, i32 0, i32 60
  %36 = ptrtoint ptr %tgt_mask_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tgt_mask_reg.i.i, align 8
  tail call void %35(ptr noundef %27, ptr noundef %37, i32 noundef 64511) #15
  br label %netxen_nic_enable_int.exit.i

netxen_nic_enable_int.exit.i:                     ; preds = %if.then.i.i, %for.body.i41.netxen_nic_enable_int.exit.i_crit_edge
  %inc.i42 = add nuw nsw i32 %ring.09.i, 1
  %38 = ptrtoint ptr %max_sds_rings.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %max_sds_rings.i, align 1
  %conv.i43 = zext i8 %39 to i32
  %cmp.i44 = icmp ult i32 %inc.i42, %conv.i43
  br i1 %cmp.i44, label %netxen_nic_enable_int.exit.i.for.body.i41_crit_edge, label %netxen_nic_enable_int.exit.i.netxen_napi_enable.exit_crit_edge

netxen_nic_enable_int.exit.i.netxen_napi_enable.exit_crit_edge: ; preds = %netxen_nic_enable_int.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_napi_enable.exit

netxen_nic_enable_int.exit.i.for.body.i41_crit_edge: ; preds = %netxen_nic_enable_int.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i41

netxen_napi_enable.exit:                          ; preds = %netxen_nic_enable_int.exit.i.netxen_napi_enable.exit_crit_edge, %netxen_napi_disable.exit.netxen_napi_enable.exit_crit_edge, %if.then10.netxen_napi_enable.exit_crit_edge
  %40 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %netdev, align 4
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %41, i32 0, i32 103
  %42 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %43) #15
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #15
  br label %if.end18

if.else:                                          ; preds = %if.end6
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #15
  %call14 = tail call i32 @netxen_nic_reset_context(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.else.if.end18_crit_edge, label %if.then16

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @rtnl_unlock() #15
  br label %request_reset

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %netxen_napi_enable.exit
  %44 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %netdev, align 4
  %_tx.i.i45 = getelementptr inbounds %struct.net_device, ptr %45, i32 0, i32 103
  %46 = ptrtoint ptr %_tx.i.i45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %_tx.i.i45, align 128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %48 = load volatile i32, ptr @jiffies, align 128
  %trans_start.i.i = getelementptr inbounds %struct.netdev_queue, ptr %47, i32 0, i32 12
  %49 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %trans_start.i.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %50, i32 %48)
  %cmp.not.i.i = icmp eq i32 %50, %48
  br i1 %cmp.not.i.i, label %if.end18.netif_trans_update.exit_crit_edge, label %do.body5.i.i

if.end18.netif_trans_update.exit_crit_edge:       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_trans_update.exit

do.body5.i.i:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %trans_start.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile i32 %48, ptr %trans_start.i.i, align 16
  br label %netif_trans_update.exit

netif_trans_update.exit:                          ; preds = %do.body5.i.i, %if.end18.netif_trans_update.exit_crit_edge
  tail call void @rtnl_unlock() #15
  br label %cleanup

request_reset:                                    ; preds = %if.then16, %if.end3.request_reset_crit_edge
  %need_fw_reset = getelementptr i8, ptr %work, i32 -369
  %52 = ptrtoint ptr %need_fw_reset to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %need_fw_reset, align 1
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #15
  br label %cleanup

cleanup:                                          ; preds = %request_reset, %netif_trans_update.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_open(ptr noundef %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %driver_mismatch = getelementptr i8, ptr %netdev, i32 2514
  %0 = ptrtoint ptr %driver_mismatch to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %driver_mismatch, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @netxen_nic_attach(ptr noundef %add.ptr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @__netxen_nic_up(ptr noundef %add.ptr.i, ptr noundef %netdev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %err_out

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %2 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %3, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  br label %cleanup

err_out:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @netxen_nic_detach(ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %err_out ], [ 0, %if.end8 ], [ -5, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_close(ptr noundef %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  tail call fastcc void @__netxen_nic_down(ptr noundef %add.ptr.i, ptr noundef %netdev)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_xmit_frame(ptr noundef %skb, ptr noundef %netdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
  %tx_ring1 = getelementptr i8, ptr %netdev, i32 2672
  %0 = ptrtoint ptr %tx_ring1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tx_ring1, align 8
  %num_desc = getelementptr inbounds %struct.nx_host_tx_ring, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_desc, align 4
  %end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %end.i, align 4
  %nr_frags = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %nr_frags to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %nr_frags, align 2
  %conv = zext i8 %7 to i32
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %5, i32 0, i32 4
  %8 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool.i.not = icmp eq i16 %9, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %7)
  %cmp = icmp ugt i8 %7, 13
  %or.cond = select i1 %tobool.i.not, i1 %cmp, i1 false
  br i1 %or.cond, label %for.body.preheader, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

for.body.preheader:                               ; preds = %entry
  %10 = add nsw i32 %conv, -14
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %delta.0214 = phi i32 [ %add9, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.0213 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %bv_len.i = getelementptr %struct.skb_shared_info, ptr %5, i32 0, i32 12, i32 %i.0213, i32 1
  %11 = ptrtoint ptr %bv_len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bv_len.i, align 4
  %add9 = add i32 %12, %delta.0214
  %inc = add nuw nsw i32 %i.0213, 1
  %exitcond.not = icmp eq i32 %i.0213, %10
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.end:                                          ; preds = %for.body
  %call10 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %add9) #15
  %tobool.not = icmp eq ptr %call10, null
  br i1 %tobool.not, label %for.end.drop_packet_crit_edge, label %if.end

for.end.drop_packet_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %drop_packet

if.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %end.i, align 4
  %nr_frags13 = getelementptr inbounds %struct.skb_shared_info, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %nr_frags13 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nr_frags13, align 2
  %conv14 = zext i8 %16 to i32
  br label %if.end16

if.end16:                                         ; preds = %if.end, %entry.if.end16_crit_edge
  %frag_count.0.in = phi i32 [ %conv, %entry.if.end16_crit_edge ], [ %conv14, %if.end ]
  %frag_count.0 = add nuw nsw i32 %frag_count.0.in, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !402
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %sw_consumer.i = getelementptr inbounds %struct.nx_host_tx_ring, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %sw_consumer.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sw_consumer.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %18)
  %cmp.i = icmp ugt i32 %20, %18
  br i1 %cmp.i, label %if.end16.netxen_tx_avail.exit_crit_edge, label %cond.false.i

if.end16.netxen_tx_avail.exit_crit_edge:          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_tx_avail.exit

cond.false.i:                                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %21 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_desc, align 4
  %add.i = add i32 %22, %20
  br label %netxen_tx_avail.exit

netxen_tx_avail.exit:                             ; preds = %cond.false.i, %if.end16.netxen_tx_avail.exit_crit_edge
  %.pn.i = phi i32 [ %add.i, %cond.false.i ], [ %20, %if.end16.netxen_tx_avail.exit_crit_edge ]
  %cond.i = sub i32 %.pn.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %cond.i)
  %cmp18 = icmp ult i32 %cond.i, 11
  br i1 %cmp18, label %if.then22, label %netxen_tx_avail.exit.if.end31_crit_edge, !prof !401

netxen_tx_avail.exit.if.end31_crit_edge:          ; preds = %netxen_tx_avail.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31

if.then22:                                        ; preds = %netxen_tx_avail.exit
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 103
  %23 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %24, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !403
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !402
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %1, align 4
  %27 = ptrtoint ptr %sw_consumer.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sw_consumer.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp.i175 = icmp ugt i32 %28, %26
  br i1 %cmp.i175, label %if.then22.netxen_tx_avail.exit181_crit_edge, label %cond.false.i178

if.then22.netxen_tx_avail.exit181_crit_edge:      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_tx_avail.exit181

cond.false.i178:                                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #17
  %29 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_desc, align 4
  %add.i177 = add i32 %30, %28
  br label %netxen_tx_avail.exit181

netxen_tx_avail.exit181:                          ; preds = %cond.false.i178, %if.then22.netxen_tx_avail.exit181_crit_edge
  %.pn.i179 = phi i32 [ %add.i177, %cond.false.i178 ], [ %28, %if.then22.netxen_tx_avail.exit181_crit_edge ]
  %cond.i180 = sub i32 %.pn.i179, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %cond.i180)
  %cmp27 = icmp ugt i32 %cond.i180, 10
  br i1 %cmp27, label %if.then29, label %netxen_tx_avail.exit181.cleanup_crit_edge

netxen_tx_avail.exit181.cleanup_crit_edge:        ; preds = %netxen_tx_avail.exit181
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then29:                                        ; preds = %netxen_tx_avail.exit181
  call void @__sanitizer_cov_trace_pc() #17
  %31 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i183 = getelementptr inbounds %struct.netdev_queue, ptr %32, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i183) #15
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %netxen_tx_avail.exit.if.end31_crit_edge
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  %cmd_buf_arr = getelementptr inbounds %struct.nx_host_tx_ring, ptr %1, i32 0, i32 7
  %35 = ptrtoint ptr %cmd_buf_arr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cmd_buf_arr, align 4
  %arrayidx33 = getelementptr %struct.netxen_cmd_buffer, ptr %36, i32 %34
  %pdev34 = getelementptr i8, ptr %netdev, i32 2440
  %37 = ptrtoint ptr %pdev34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdev34, align 8
  %39 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %end.i, align 4
  %nr_frags1.i = getelementptr inbounds %struct.skb_shared_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %nr_frags1.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %nr_frags1.i, align 2
  %conv.i = zext i8 %42 to i32
  %frag_array.i = getelementptr %struct.netxen_cmd_buffer, ptr %36, i32 %34, i32 1
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %43 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %45 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %47 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %data_len.i.i, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %44) #15
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end31
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !404

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #15
  %init_name.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %38, i32 0, i32 44, i32 3
  %49 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %50, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %51 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %52, %if.end.i.i.i ], [ %50, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.115, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.116, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #15
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #15
  br label %drop_packet

dma_map_single_attrs.exit.i:                      ; preds = %if.end31
  %sub.i.i = sub i32 %46, %48
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %44, i32 noundef %sub.i.i) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %53 = load ptr, ptr @mem_map, align 4
  %54 = ptrtoint ptr %44 to i32
  %sub.i80.i = add i32 %54, 1073741824
  %shr.i.i = lshr i32 %sub.i80.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %53, i32 %shr.i.i
  %and.i.i = and i32 %54, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %sub.i.i, i32 noundef 1, i32 noundef 0) #15
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.drop_packet_crit_edge, label %if.end.i

dma_map_single_attrs.exit.i.drop_packet_crit_edge: ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %drop_packet

if.end.i:                                         ; preds = %dma_map_single_attrs.exit.i
  %conv6.i = zext i32 %call41.i.i to i64
  %55 = ptrtoint ptr %frag_array.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 %conv6.i, ptr %frag_array.i, align 8
  %56 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %len.i.i, align 4
  %58 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %data_len.i.i, align 8
  %sub.i83.i = sub i32 %57, %59
  %conv8.i = zext i32 %sub.i83.i to i64
  %length.i = getelementptr %struct.netxen_cmd_buffer, ptr %36, i32 %34, i32 1, i32 0, i32 1
  %60 = ptrtoint ptr %length.i to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %conv8.i, ptr %length.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %cmp99.not.i = icmp eq i8 %42, 0
  br i1 %cmp99.not.i, label %if.end.i.if.end38_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.if.end38_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

for.body.i:                                       ; preds = %if.end21.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.0100.i = phi i32 [ %add.i185, %if.end21.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %61 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %end.i, align 4
  %arrayidx11.i = getelementptr %struct.skb_shared_info, ptr %62, i32 0, i32 12, i32 %i.0100.i
  %bv_len.i.i = getelementptr %struct.skb_shared_info, ptr %62, i32 0, i32 12, i32 %i.0100.i, i32 1
  %63 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %bv_len.i.i, align 4
  %65 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx11.i, align 4
  %bv_offset.i.i.i = getelementptr %struct.skb_shared_info, ptr %62, i32 0, i32 12, i32 %i.0100.i, i32 2
  %67 = ptrtoint ptr %bv_offset.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %bv_offset.i.i.i, align 4
  %call2.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %66, i32 noundef %68, i32 noundef %64, i32 noundef 1, i32 noundef 0) #15
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call2.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i.i)
  %cmp.i85.not.i = icmp eq i32 %call2.i.i, -1
  br i1 %cmp.i85.not.i, label %while.cond.preheader.i, label %if.end21.i

while.cond.preheader.i:                           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0100.i)
  %cmp27102.not.i = icmp eq i32 %i.0100.i, 0
  br i1 %cmp27102.not.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

if.end21.i:                                       ; preds = %for.body.i
  %add.i185 = add nuw nsw i32 %i.0100.i, 1
  %arrayidx13.i = getelementptr %struct.netxen_cmd_buffer, ptr %36, i32 %34, i32 1, i32 %add.i185
  %conv22.i = zext i32 %call2.i.i to i64
  %69 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 %conv22.i, ptr %arrayidx13.i, align 8
  %70 = ptrtoint ptr %bv_len.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bv_len.i.i, align 4
  %conv25.i = zext i32 %71 to i64
  %length26.i = getelementptr %struct.netxen_cmd_buffer, ptr %36, i32 %34, i32 1, i32 %add.i185, i32 1
  %72 = ptrtoint ptr %length26.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %conv25.i, ptr %length26.i, align 8
  %exitcond.not.i = icmp eq i32 %add.i185, %conv.i
  br i1 %exitcond.not.i, label %if.end21.i.if.end38_crit_edge, label %if.end21.i.for.body.i_crit_edge

if.end21.i.for.body.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end21.i.if.end38_crit_edge:                    ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %i.1103.i = phi i32 [ %dec104.i, %while.body.i.while.body.i_crit_edge ], [ %i.0100.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %dec104.i = add nsw i32 %i.1103.i, -1
  %arrayidx31.i = getelementptr %struct.netxen_cmd_buffer, ptr %36, i32 %34, i32 1, i32 %i.1103.i
  %73 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx31.i, align 8
  %conv34.i = trunc i64 %74 to i32
  %length35.i = getelementptr %struct.netxen_cmd_buffer, ptr %36, i32 %34, i32 1, i32 %i.1103.i, i32 1
  %75 = ptrtoint ptr %length35.i to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %length35.i, align 8
  %conv36.i = trunc i64 %76 to i32
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %conv34.i, i32 noundef %conv36.i, i32 noundef 1, i32 noundef 0) #15
  %77 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store8_noabort(i32 %77)
  store i64 0, ptr %arrayidx31.i, align 8
  %cmp27.i = icmp sgt i32 %i.1103.i, 1
  br i1 %cmp27.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %78 = ptrtoint ptr %frag_array.i to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %frag_array.i, align 8
  %conv42.i = trunc i64 %79 to i32
  %80 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %len.i.i, align 4
  %82 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %data_len.i.i, align 8
  %sub.i90.i = sub i32 %81, %83
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %conv42.i, i32 noundef %sub.i90.i, i32 noundef 1, i32 noundef 0) #15
  %84 = ptrtoint ptr %frag_array.i to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 0, ptr %frag_array.i, align 8
  br label %drop_packet

if.end38:                                         ; preds = %if.end21.i.if.end38_crit_edge, %if.end.i.if.end38_crit_edge
  %85 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %skb, ptr %arrayidx33, align 8
  %frag_count40 = getelementptr %struct.netxen_cmd_buffer, ptr %36, i32 %34, i32 2
  %86 = ptrtoint ptr %frag_count40 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %frag_count.0, ptr %frag_count40, align 8
  %desc_head = getelementptr inbounds %struct.nx_host_tx_ring, ptr %1, i32 0, i32 8
  %87 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %desc_head, align 4
  %arrayidx41 = getelementptr %struct.cmd_desc_type0, ptr %88, i32 %34
  %89 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 0, ptr %arrayidx41, align 8
  %arrayidx1.i = getelementptr i64, ptr %arrayidx41, i32 2
  %90 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 0, ptr %arrayidx1.i, align 8
  %and = and i32 %frag_count.0, 255
  %91 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %len.i.i, align 4
  %shl = shl i32 %92, 8
  %or = or i32 %shl, %and
  %93 = tail call i32 @llvm.bswap.i32(i32 %or)
  %nfrags__length = getelementptr %struct.cmd_desc_type0, ptr %88, i32 %34, i32 3
  %94 = ptrtoint ptr %nfrags__length to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %nfrags__length, align 4
  %portnum = getelementptr i8, ptr %netdev, i32 2518
  %95 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %portnum, align 2
  %and44 = and i8 %96, 15
  %shl47 = shl i8 %96, 4
  %or49 = or i8 %and44, %shl47
  %port_ctxid = getelementptr %struct.cmd_desc_type0, ptr %88, i32 %34, i32 7
  %97 = ptrtoint ptr %port_ctxid to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 %or49, ptr %port_ctxid, align 4
  %sub62 = add i32 %3, -1
  br label %for.body54

for.body54:                                       ; preds = %for.inc79.for.body54_crit_edge, %if.end38
  %producer.0219 = phi i32 [ %34, %if.end38 ], [ %producer.1209, %for.inc79.for.body54_crit_edge ]
  %i.1216 = phi i32 [ 0, %if.end38 ], [ %inc80, %for.inc79.for.body54_crit_edge ]
  %hwdesc.0215 = phi ptr [ %arrayidx41, %if.end38 ], [ %hwdesc.1207, %for.inc79.for.body54_crit_edge ]
  %rem.urem = and i32 %i.1216, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.urem)
  %cmp55 = icmp eq i32 %rem.urem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1216)
  %cmp58 = icmp ne i32 %i.1216, 0
  %or.cond171 = and i1 %cmp58, %cmp55
  br i1 %or.cond171, label %if.end69.thread, label %if.end69

if.end69.thread:                                  ; preds = %for.body54
  call void @__sanitizer_cov_trace_pc() #17
  %add61 = add i32 %producer.0219, 1
  %and63 = and i32 %add61, %sub62
  %98 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %desc_head, align 4
  %arrayidx65 = getelementptr %struct.cmd_desc_type0, ptr %99, i32 %and63
  %100 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 0, ptr %arrayidx65, align 8
  %arrayidx1.i186 = getelementptr i64, ptr %arrayidx65, i32 2
  %101 = ptrtoint ptr %arrayidx1.i186 to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 0, ptr %arrayidx1.i186, align 8
  %102 = ptrtoint ptr %cmd_buf_arr to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cmd_buf_arr, align 4
  %arrayidx67 = getelementptr %struct.netxen_cmd_buffer, ptr %103, i32 %and63
  %104 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr null, ptr %arrayidx67, align 8
  %arrayidx70202 = getelementptr %struct.netxen_cmd_buffer, ptr %36, i32 %34, i32 1, i32 %i.1216
  %length203 = getelementptr %struct.netxen_cmd_buffer, ptr %36, i32 %34, i32 1, i32 %i.1216, i32 1
  %105 = ptrtoint ptr %length203 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %length203, align 8
  %conv71204 = trunc i64 %106 to i16
  %107 = tail call i16 @llvm.bswap.i16(i16 %conv71204)
  %arrayidx72205 = getelementptr %struct.cmd_desc_type0, ptr %99, i32 %and63, i32 12, i32 0
  %108 = ptrtoint ptr %arrayidx72205 to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 %107, ptr %arrayidx72205, align 2
  br label %sw.bb

if.end69:                                         ; preds = %for.body54
  %arrayidx70 = getelementptr %struct.netxen_cmd_buffer, ptr %36, i32 %34, i32 1, i32 %i.1216
  %length = getelementptr %struct.netxen_cmd_buffer, ptr %36, i32 %34, i32 1, i32 %i.1216, i32 1
  %109 = ptrtoint ptr %length to i32
  call void @__asan_load8_noabort(i32 %109)
  %110 = load i64, ptr %length, align 8
  %conv71 = trunc i64 %110 to i16
  %111 = tail call i16 @llvm.bswap.i16(i16 %conv71)
  %arrayidx72 = getelementptr %struct.cmd_desc_type0, ptr %hwdesc.0215, i32 0, i32 12, i32 %rem.urem
  %112 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %arrayidx72, align 2
  %113 = zext i32 %rem.urem to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.186)
  switch i32 %rem.urem, label %if.end69.unreachabledefault [
    i32 0, label %if.end69.sw.bb_crit_edge
    i32 1, label %sw.bb73
    i32 2, label %sw.bb75
    i32 3, label %sw.bb77
  ]

if.end69.sw.bb_crit_edge:                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

sw.bb:                                            ; preds = %if.end69.sw.bb_crit_edge, %if.end69.thread
  %arrayidx70210 = phi ptr [ %arrayidx70202, %if.end69.thread ], [ %arrayidx70, %if.end69.sw.bb_crit_edge ]
  %producer.1208 = phi i32 [ %and63, %if.end69.thread ], [ %producer.0219, %if.end69.sw.bb_crit_edge ]
  %hwdesc.1206 = phi ptr [ %arrayidx65, %if.end69.thread ], [ %hwdesc.0215, %if.end69.sw.bb_crit_edge ]
  %114 = ptrtoint ptr %arrayidx70210 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx70210, align 8
  %116 = tail call i64 @llvm.bswap.i64(i64 %115)
  %addr_buffer1 = getelementptr inbounds %struct.cmd_desc_type0, ptr %hwdesc.1206, i32 0, i32 11
  %117 = ptrtoint ptr %addr_buffer1 to i32
  call void @__asan_store8_noabort(i32 %117)
  store i64 %116, ptr %addr_buffer1, align 32
  br label %for.inc79

sw.bb73:                                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  %118 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %arrayidx70, align 8
  %120 = tail call i64 @llvm.bswap.i64(i64 %119)
  %addr_buffer2 = getelementptr inbounds %struct.cmd_desc_type0, ptr %hwdesc.0215, i32 0, i32 4
  %121 = ptrtoint ptr %addr_buffer2 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %120, ptr %addr_buffer2, align 8
  br label %for.inc79

sw.bb75:                                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  %122 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %arrayidx70, align 8
  %124 = tail call i64 @llvm.bswap.i64(i64 %123)
  %addr_buffer3 = getelementptr inbounds %struct.cmd_desc_type0, ptr %hwdesc.0215, i32 0, i32 10
  %125 = ptrtoint ptr %addr_buffer3 to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 %124, ptr %addr_buffer3, align 8
  br label %for.inc79

sw.bb77:                                          ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #17
  %126 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load8_noabort(i32 %126)
  %127 = load i64, ptr %arrayidx70, align 8
  %128 = tail call i64 @llvm.bswap.i64(i64 %127)
  %addr_buffer4 = getelementptr inbounds %struct.cmd_desc_type0, ptr %hwdesc.0215, i32 0, i32 13
  %129 = ptrtoint ptr %addr_buffer4 to i32
  call void @__asan_store8_noabort(i32 %129)
  store i64 %128, ptr %addr_buffer4, align 16
  br label %for.inc79

if.end69.unreachabledefault:                      ; preds = %if.end69
  unreachable

for.inc79:                                        ; preds = %sw.bb77, %sw.bb75, %sw.bb73, %sw.bb
  %producer.1209 = phi i32 [ %producer.1208, %sw.bb ], [ %producer.0219, %sw.bb73 ], [ %producer.0219, %sw.bb75 ], [ %producer.0219, %sw.bb77 ]
  %hwdesc.1207 = phi ptr [ %hwdesc.1206, %sw.bb ], [ %hwdesc.0215, %sw.bb73 ], [ %hwdesc.0215, %sw.bb75 ], [ %hwdesc.0215, %sw.bb77 ]
  %inc80 = add nuw nsw i32 %i.1216, 1
  %exitcond221 = icmp eq i32 %i.1216, %frag_count.0.in
  br i1 %exitcond221, label %for.end81, label %for.inc79.for.body54_crit_edge

for.inc79.for.body54_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body54

for.end81:                                        ; preds = %for.inc79
  %add82 = add i32 %producer.1209, 1
  %and84 = and i32 %add82, %sub62
  %130 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %and84, ptr %1, align 4
  %protocol1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %131 = ptrtoint ptr %protocol1.i to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %protocol1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %132)
  %cmp.i187 = icmp eq i16 %132, -32512
  br i1 %cmp.i187, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #17
  %133 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data.i, align 4
  %h_vlan_encapsulated_proto.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %h_vlan_encapsulated_proto.i to i32
  call void @__asan_load2_noabort(i32 %135)
  %136 = load i16, ptr %h_vlan_encapsulated_proto.i, align 2
  br label %if.end4.i

if.else.i:                                        ; preds = %for.end81
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %137 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %137, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.else.i.if.end4.i_crit_edge, label %if.then3.i

if.else.i.if.end4.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #17
  %vlan_tci.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %138 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %vlan_tci.i, align 2
  %140 = tail call i16 @llvm.bswap.i16(i16 %139) #15
  %vlan_TCI.i = getelementptr %struct.cmd_desc_type0, ptr %88, i32 %34, i32 16
  %141 = ptrtoint ptr %vlan_TCI.i to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 %140, ptr %vlan_TCI.i, align 2
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then3.i, %if.else.i.if.end4.i_crit_edge, %if.then.i
  %flags.0.i = phi i16 [ 16, %if.then.i ], [ 64, %if.then3.i ], [ 0, %if.else.i.if.end4.i_crit_edge ]
  %vid.0.i = phi i16 [ 0, %if.then.i ], [ %139, %if.then3.i ], [ 0, %if.else.i.if.end4.i_crit_edge ]
  %tobool94.not.i = phi i1 [ true, %if.then.i ], [ false, %if.then3.i ], [ true, %if.else.i.if.end4.i_crit_edge ]
  %protocol.0.i = phi i16 [ %136, %if.then.i ], [ %132, %if.then3.i ], [ %132, %if.else.i.if.end4.i_crit_edge ]
  %features.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 23
  %142 = ptrtoint ptr %features.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %features.i, align 16
  %and.i = and i64 %143, 1114112
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool5.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool5.not.i, label %if.end4.i.if.else28.i_crit_edge, label %land.lhs.true.i

if.end4.i.if.else28.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else28.i

land.lhs.true.i:                                  ; preds = %if.end4.i
  %144 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %end.i, align 4
  %gso_size.i190 = getelementptr inbounds %struct.skb_shared_info, ptr %145, i32 0, i32 4
  %146 = ptrtoint ptr %gso_size.i190 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %gso_size.i190, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %147)
  %cmp7.not.i = icmp eq i16 %147, 0
  br i1 %cmp7.not.i, label %land.lhs.true.i.if.else28.i_crit_edge, label %if.then9.i

land.lhs.true.i.if.else28.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.else28.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %148 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %head.i.i.i, align 8
  %transport_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %150 = ptrtoint ptr %transport_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %transport_header.i.i.i, align 2
  %conv.i.i.i = zext i16 %151 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %149, i32 %conv.i.i.i
  %152 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %153 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %doff.i.i.i = getelementptr inbounds %struct.tcphdr, ptr %add.ptr.i.i.i, i32 0, i32 4
  %154 = ptrtoint ptr %doff.i.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %bf.load.i.i.i = load i16, ptr %doff.i.i.i, align 4
  %155 = lshr i16 %bf.load.i.i.i, 10
  %156 = and i16 %155, 60
  %mul.i.i.i = zext i16 %156 to i32
  %add.i191 = add i32 %sub.ptr.sub.i.i, %mul.i.i.i
  %157 = tail call i16 @llvm.bswap.i16(i16 %147) #15
  %mss.i = getelementptr %struct.cmd_desc_type0, ptr %88, i32 %34, i32 6
  %158 = ptrtoint ptr %mss.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 %157, ptr %mss.i, align 2
  %conv14.i = trunc i32 %add.i191 to i8
  %total_hdr_length.i = getelementptr %struct.cmd_desc_type0, ptr %88, i32 %34, i32 8
  %159 = ptrtoint ptr %total_hdr_length.i to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 %conv14.i, ptr %total_hdr_length.i, align 1
  br i1 %tobool94.not.i, label %if.then9.i.if.end23.i_crit_edge, label %if.then16.i

if.then9.i.if.end23.i_crit_edge:                  ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23.i

if.then16.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  %conv20.i = add i8 %conv14.i, 4
  %160 = ptrtoint ptr %total_hdr_length.i to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 %conv20.i, ptr %total_hdr_length.i, align 1
  %161 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 4, ptr %arrayidx41, align 64
  %ip_hdr_offset.i = getelementptr %struct.cmd_desc_type0, ptr %88, i32 %34, i32 1
  %162 = ptrtoint ptr %ip_hdr_offset.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 4, ptr %ip_hdr_offset.i, align 1
  %163 = or i16 %flags.0.i, 16
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then16.i, %if.then9.i.if.end23.i_crit_edge
  %flags.1.i = phi i16 [ %163, %if.then16.i ], [ %flags.0.i, %if.then9.i.if.end23.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %protocol.0.i)
  %cmp25.i = icmp eq i16 %protocol.0.i, -31011
  %cond.i192 = select i1 %cmp25.i, i16 768, i16 640
  br label %if.end73.i

if.else28.i:                                      ; preds = %land.lhs.true.i.if.else28.i_crit_edge, %if.end4.i.if.else28.i_crit_edge
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %164 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %164)
  %bf.load29.i = load i16, ptr %ip_summed.i, align 8
  %165 = and i16 %bf.load29.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %165)
  %cmp33.i = icmp eq i16 %165, 1536
  br i1 %cmp33.i, label %if.then35.i, label %if.else28.i.if.end73.i_crit_edge

if.else28.i.if.end73.i_crit_edge:                 ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73.i

if.then35.i:                                      ; preds = %if.else28.i
  %166 = zext i16 %protocol.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %166, ptr @__sancov_gen_cov_switch_values.187)
  switch i16 %protocol.0.i, label %if.then35.i.if.end73.i_crit_edge [
    i16 2048, label %if.then39.i
    i16 -31011, label %if.then57.i
  ]

if.then35.i.if.end73.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73.i

if.then39.i:                                      ; preds = %if.then35.i
  %head.i.i211.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %167 = ptrtoint ptr %head.i.i211.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %head.i.i211.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %169 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i212.i = zext i16 %170 to i32
  %add.ptr.i.i213.i = getelementptr i8, ptr %168, i32 %conv.i.i212.i
  %protocol41.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i213.i, i32 0, i32 6
  %171 = ptrtoint ptr %protocol41.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %protocol41.i, align 1
  %173 = zext i8 %172 to i64
  call void @__sanitizer_cov_trace_switch(i64 %173, ptr @__sancov_gen_cov_switch_values.188)
  switch i8 %172, label %if.end71.fold.split.i [
    i8 6, label %if.then39.i.if.end73.i_crit_edge
    i8 17, label %if.then50.i
  ]

if.then39.i.if.end73.i_crit_edge:                 ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73.i

if.then50.i:                                      ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73.i

if.then57.i:                                      ; preds = %if.then35.i
  %head.i.i214.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %174 = ptrtoint ptr %head.i.i214.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %head.i.i214.i, align 8
  %network_header.i.i215.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %176 = ptrtoint ptr %network_header.i.i215.i to i32
  call void @__asan_load2_noabort(i32 %176)
  %177 = load i16, ptr %network_header.i.i215.i, align 4
  %conv.i.i216.i = zext i16 %177 to i32
  %add.ptr.i.i217.i = getelementptr i8, ptr %175, i32 %conv.i.i216.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i217.i, i32 0, i32 3
  %178 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %nexthdr.i, align 2
  %180 = zext i8 %179 to i64
  call void @__sanitizer_cov_trace_switch(i64 %180, ptr @__sancov_gen_cov_switch_values.189)
  switch i8 %179, label %if.end71.fold.split209.i [
    i8 6, label %if.then57.i.if.end73.i_crit_edge
    i8 17, label %if.then67.i
  ]

if.then57.i.if.end73.i_crit_edge:                 ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73.i

if.then67.i:                                      ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73.i

if.end71.fold.split.i:                            ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73.i

if.end71.fold.split209.i:                         ; preds = %if.then57.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end73.i

if.end73.i:                                       ; preds = %if.end71.fold.split209.i, %if.end71.fold.split.i, %if.then67.i, %if.then57.i.if.end73.i_crit_edge, %if.then50.i, %if.then39.i.if.end73.i_crit_edge, %if.then35.i.if.end73.i_crit_edge, %if.else28.i.if.end73.i_crit_edge, %if.end23.i
  %flags.2.i = phi i16 [ %flags.1.i, %if.end23.i ], [ %flags.0.i, %if.else28.i.if.end73.i_crit_edge ], [ %flags.0.i, %if.then57.i.if.end73.i_crit_edge ], [ %flags.0.i, %if.end71.fold.split209.i ], [ %flags.0.i, %if.then35.i.if.end73.i_crit_edge ], [ %flags.0.i, %if.then39.i.if.end73.i_crit_edge ], [ %flags.0.i, %if.end71.fold.split.i ], [ %flags.0.i, %if.then67.i ], [ %flags.0.i, %if.then50.i ]
  %hdr_len.0.i = phi i32 [ %add.i191, %if.end23.i ], [ 0, %if.else28.i.if.end73.i_crit_edge ], [ 0, %if.then57.i.if.end73.i_crit_edge ], [ 0, %if.end71.fold.split209.i ], [ 0, %if.then35.i.if.end73.i_crit_edge ], [ 0, %if.then39.i.if.end73.i_crit_edge ], [ 0, %if.end71.fold.split.i ], [ 0, %if.then67.i ], [ 0, %if.then50.i ]
  %tobool90.not.i = phi i1 [ false, %if.end23.i ], [ true, %if.else28.i.if.end73.i_crit_edge ], [ true, %if.then57.i.if.end73.i_crit_edge ], [ true, %if.end71.fold.split209.i ], [ true, %if.then35.i.if.end73.i_crit_edge ], [ true, %if.then39.i.if.end73.i_crit_edge ], [ true, %if.end71.fold.split.i ], [ true, %if.then67.i ], [ true, %if.then50.i ]
  %opcode.1.i = phi i16 [ %cond.i192, %if.end23.i ], [ 128, %if.else28.i.if.end73.i_crit_edge ], [ 1408, %if.then57.i.if.end73.i_crit_edge ], [ 128, %if.end71.fold.split209.i ], [ 128, %if.then35.i.if.end73.i_crit_edge ], [ 256, %if.then39.i.if.end73.i_crit_edge ], [ 128, %if.end71.fold.split.i ], [ 1536, %if.then67.i ], [ 384, %if.then50.i ]
  %head.i.i218.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %181 = ptrtoint ptr %head.i.i218.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %head.i.i218.i, align 8
  %transport_header.i.i219.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %183 = ptrtoint ptr %transport_header.i.i219.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %transport_header.i.i219.i, align 2
  %conv.i.i220.i = zext i16 %184 to i32
  %add.ptr.i.i221.i = getelementptr i8, ptr %182, i32 %conv.i.i220.i
  %185 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i223.i = ptrtoint ptr %add.ptr.i.i221.i to i32
  %sub.ptr.rhs.cast.i224.i = ptrtoint ptr %186 to i32
  %sub.ptr.sub.i225.i = sub i32 %sub.ptr.lhs.cast.i223.i, %sub.ptr.rhs.cast.i224.i
  %187 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx41, align 64
  %189 = trunc i32 %sub.ptr.sub.i225.i to i8
  %conv78.i = add i8 %188, %189
  store i8 %conv78.i, ptr %arrayidx41, align 64
  %190 = load ptr, ptr %head.i.i218.i, align 8
  %network_header.i.i227.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %191 = ptrtoint ptr %network_header.i.i227.i to i32
  call void @__asan_load2_noabort(i32 %191)
  %192 = load i16, ptr %network_header.i.i227.i, align 4
  %conv.i.i228.i = zext i16 %192 to i32
  %add.ptr.i.i229.i = getelementptr i8, ptr %190, i32 %conv.i.i228.i
  %193 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i231.i = ptrtoint ptr %add.ptr.i.i229.i to i32
  %sub.ptr.rhs.cast.i232.i = ptrtoint ptr %193 to i32
  %sub.ptr.sub.i233.i = sub i32 %sub.ptr.lhs.cast.i231.i, %sub.ptr.rhs.cast.i232.i
  %ip_hdr_offset80.i = getelementptr %struct.cmd_desc_type0, ptr %88, i32 %34, i32 1
  %194 = ptrtoint ptr %ip_hdr_offset80.i to i32
  call void @__asan_load1_noabort(i32 %194)
  %195 = load i8, ptr %ip_hdr_offset80.i, align 1
  %196 = trunc i32 %sub.ptr.sub.i233.i to i8
  %conv83.i = add i8 %195, %196
  store i8 %conv83.i, ptr %ip_hdr_offset80.i, align 1
  %197 = and i16 %flags.2.i, 127
  %or88.i = or i16 %opcode.1.i, %197
  %198 = tail call i16 @llvm.bswap.i16(i16 %or88.i) #15
  %flags_opcode.i = getelementptr %struct.cmd_desc_type0, ptr %88, i32 %34, i32 2
  %199 = ptrtoint ptr %flags_opcode.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %198, ptr %flags_opcode.i, align 2
  br i1 %tobool90.not.i, label %if.end73.i.netxen_tso_check.exit_crit_edge, label %if.end92.i

if.end73.i.netxen_tso_check.exit_crit_edge:       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_tso_check.exit

if.end92.i:                                       ; preds = %if.end73.i
  %200 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %1, align 4
  br i1 %tobool94.not.i, label %if.end92.i.if.end108.i_crit_edge, label %if.then95.i

if.end92.i.if.end108.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end108.i

if.then95.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #17
  %202 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %desc_head, align 4
  %204 = ptrtoint ptr %cmd_buf_arr to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %cmd_buf_arr, align 4
  %arrayidx96.i = getelementptr %struct.netxen_cmd_buffer, ptr %205, i32 %201
  %206 = ptrtoint ptr %arrayidx96.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr null, ptr %arrayidx96.i, align 8
  %add98.i = add i32 %hdr_len.0.i, 4
  %207 = tail call i32 @llvm.smin.i32(i32 %add98.i, i32 62) #15
  %add.ptr.i193 = getelementptr %struct.cmd_desc_type0, ptr %203, i32 %201, i32 2
  %208 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %data.i, align 4
  %210 = call ptr @memcpy(ptr %add.ptr.i193, ptr %209, i32 12)
  %h_vlan_proto.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i193, i32 0, i32 1
  %211 = ptrtoint ptr %h_vlan_proto.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 -32512, ptr %h_vlan_proto.i, align 2
  %h_vlan_TCI.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %add.ptr.i193, i32 0, i32 2
  %212 = ptrtoint ptr %h_vlan_TCI.i to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %vid.0.i, ptr %h_vlan_TCI.i, align 2
  %add.ptr102.i = getelementptr i8, ptr %add.ptr.i193, i32 16
  %sub103.i = add i32 %207, -16
  %213 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i194 = getelementptr i8, ptr %213, i32 12
  %214 = call ptr @memcpy(ptr %add.ptr102.i, ptr %add.ptr.i.i194, i32 %sub103.i)
  %sub104.i = add i32 %207, -4
  %add105.i = add i32 %201, 1
  %215 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %num_desc, align 4
  %sub106.i = add i32 %216, -1
  %and107.i = and i32 %sub106.i, %add105.i
  br label %if.end108.i

if.end108.i:                                      ; preds = %if.then95.i, %if.end92.i.if.end108.i_crit_edge
  %producer.0.i = phi i32 [ %and107.i, %if.then95.i ], [ %201, %if.end92.i.if.end108.i_crit_edge ]
  %copied.0.i = phi i32 [ %sub104.i, %if.then95.i ], [ 0, %if.end92.i.if.end108.i_crit_edge ]
  %offset.0.i = phi i32 [ 0, %if.then95.i ], [ 2, %if.end92.i.if.end108.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %hdr_len.0.i, i32 %copied.0.i)
  %cmp109238.i = icmp sgt i32 %hdr_len.0.i, %copied.0.i
  br i1 %cmp109238.i, label %while.body.lr.ph.i, label %if.end108.i.while.end.i197_crit_edge

if.end108.i.while.end.i197_crit_edge:             ; preds = %if.end108.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i197

while.body.lr.ph.i:                               ; preds = %if.end108.i
  %sub111.peel.i = sub nuw nsw i32 64, %offset.0.i
  %sub112.peel.i = sub i32 %hdr_len.0.i, %copied.0.i
  %217 = tail call i32 @llvm.smin.i32(i32 %sub111.peel.i, i32 %sub112.peel.i) #15
  %218 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %desc_head, align 4
  %arrayidx121.peel.i = getelementptr %struct.cmd_desc_type0, ptr %219, i32 %producer.0.i
  %220 = ptrtoint ptr %cmd_buf_arr to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %cmd_buf_arr, align 4
  %arrayidx123.peel.i = getelementptr %struct.netxen_cmd_buffer, ptr %221, i32 %producer.0.i
  %222 = ptrtoint ptr %arrayidx123.peel.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr null, ptr %arrayidx123.peel.i, align 8
  %add.ptr125.peel.i = getelementptr i8, ptr %arrayidx121.peel.i, i32 %offset.0.i
  %223 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %data.i, align 4
  %add.ptr.i237.peel.i = getelementptr i8, ptr %224, i32 %copied.0.i
  %225 = call ptr @memcpy(ptr %add.ptr125.peel.i, ptr %add.ptr.i237.peel.i, i32 %217)
  %add126.peel.i = add i32 %217, %copied.0.i
  %add127.peel.i = add i32 %producer.0.i, 1
  %226 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %num_desc, align 4
  %sub129.peel.i = add i32 %227, -1
  %and130.peel.i = and i32 %sub129.peel.i, %add127.peel.i
  call void @__sanitizer_cov_trace_cmp4(i32 %hdr_len.0.i, i32 %add126.peel.i)
  %cmp109.peel.i = icmp sgt i32 %hdr_len.0.i, %add126.peel.i
  br i1 %cmp109.peel.i, label %while.body.lr.ph.i.while.body.i196_crit_edge, label %while.body.lr.ph.i.while.end.i197_crit_edge

while.body.lr.ph.i.while.end.i197_crit_edge:      ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i197

while.body.lr.ph.i.while.body.i196_crit_edge:     ; preds = %while.body.lr.ph.i
  br label %while.body.i196

while.body.i196:                                  ; preds = %while.body.i196.while.body.i196_crit_edge, %while.body.lr.ph.i.while.body.i196_crit_edge
  %copied.1240.i = phi i32 [ %add126.i, %while.body.i196.while.body.i196_crit_edge ], [ %add126.peel.i, %while.body.lr.ph.i.while.body.i196_crit_edge ]
  %producer.1239.i = phi i32 [ %and130.i, %while.body.i196.while.body.i196_crit_edge ], [ %and130.peel.i, %while.body.lr.ph.i.while.body.i196_crit_edge ]
  %sub112.i = sub i32 %hdr_len.0.i, %copied.1240.i
  %228 = tail call i32 @llvm.smin.i32(i32 %sub112.i, i32 64) #15
  %229 = ptrtoint ptr %desc_head to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %desc_head, align 4
  %arrayidx121.i = getelementptr %struct.cmd_desc_type0, ptr %230, i32 %producer.1239.i
  %231 = ptrtoint ptr %cmd_buf_arr to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %cmd_buf_arr, align 4
  %arrayidx123.i = getelementptr %struct.netxen_cmd_buffer, ptr %232, i32 %producer.1239.i
  %233 = ptrtoint ptr %arrayidx123.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr null, ptr %arrayidx123.i, align 8
  %234 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load ptr, ptr %data.i, align 4
  %add.ptr.i237.i = getelementptr i8, ptr %235, i32 %copied.1240.i
  %236 = call ptr @memcpy(ptr %arrayidx121.i, ptr %add.ptr.i237.i, i32 %228)
  %add126.i = add i32 %228, %copied.1240.i
  %add127.i = add i32 %producer.1239.i, 1
  %237 = ptrtoint ptr %num_desc to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %num_desc, align 4
  %sub129.i = add i32 %238, -1
  %and130.i = and i32 %sub129.i, %add127.i
  %cmp109.i = icmp sgt i32 %hdr_len.0.i, %add126.i
  br i1 %cmp109.i, label %while.body.i196.while.body.i196_crit_edge, label %while.body.i196.while.end.i197_crit_edge, !llvm.loop !405

while.body.i196.while.end.i197_crit_edge:         ; preds = %while.body.i196
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end.i197

while.body.i196.while.body.i196_crit_edge:        ; preds = %while.body.i196
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i196

while.end.i197:                                   ; preds = %while.body.i196.while.end.i197_crit_edge, %while.body.lr.ph.i.while.end.i197_crit_edge, %if.end108.i.while.end.i197_crit_edge
  %producer.1.lcssa.i = phi i32 [ %producer.0.i, %if.end108.i.while.end.i197_crit_edge ], [ %and130.peel.i, %while.body.lr.ph.i.while.end.i197_crit_edge ], [ %and130.i, %while.body.i196.while.end.i197_crit_edge ]
  %239 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 %producer.1.lcssa.i, ptr %1, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !407
  br label %netxen_tso_check.exit

netxen_tso_check.exit:                            ; preds = %while.end.i197, %if.end73.i.netxen_tso_check.exit_crit_edge
  %240 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %len.i.i, align 4
  %conv87 = zext i32 %241 to i64
  %stats = getelementptr i8, ptr %netdev, i32 2576
  %txbytes = getelementptr i8, ptr %netdev, i32 2640
  %242 = ptrtoint ptr %txbytes to i32
  call void @__asan_load8_noabort(i32 %242)
  %243 = load i64, ptr %txbytes, align 8
  %add88 = add i64 %243, %conv87
  store i64 %add88, ptr %txbytes, align 8
  %244 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %244)
  %245 = load i64, ptr %stats, align 8
  %inc90 = add i64 %245, 1
  store i64 %inc90, ptr %stats, align 8
  %io_write.i = getelementptr i8, ptr %netdev, i32 2732
  %246 = ptrtoint ptr %io_write.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %io_write.i, align 4
  %crb_cmd_producer.i = getelementptr inbounds %struct.nx_host_tx_ring, ptr %1, i32 0, i32 3
  %248 = ptrtoint ptr %crb_cmd_producer.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %crb_cmd_producer.i, align 4
  %250 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %1, align 4
  tail call void %247(ptr noundef %add.ptr.i, ptr noundef %249, i32 noundef %251) #15
  br label %cleanup

drop_packet:                                      ; preds = %while.end.i, %dma_map_single_attrs.exit.i.drop_packet_crit_edge, %dma_map_single_attrs.exit.thread.i, %for.end.drop_packet_crit_edge
  %txdropped = getelementptr i8, ptr %netdev, i32 2600
  %252 = ptrtoint ptr %txdropped to i32
  call void @__asan_load8_noabort(i32 %252)
  %253 = load i64, ptr %txdropped, align 8
  %inc92 = add i64 %253, 1
  store i64 %inc92, ptr %txdropped, align 8
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 1) #15
  br label %cleanup

cleanup:                                          ; preds = %drop_packet, %netxen_tso_check.exit, %netxen_tx_avail.exit181.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %drop_packet ], [ 0, %netxen_tso_check.exit ], [ 16, %netxen_tx_avail.exit181.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_set_multicast_list(ptr noundef %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %set_multi = getelementptr i8, ptr %dev, i32 2688
  %0 = ptrtoint ptr %set_multi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %set_multi, align 8
  tail call void %1(ptr noundef %dev) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_set_mac(ptr noundef %netdev, ptr noundef %p) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %netdev, i32 2304
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
  %state.i = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 6
  %5 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then3:                                         ; preds = %if.end
  tail call void @netif_device_detach(ptr noundef %netdev) #15
  %max_sds_rings.i = getelementptr i8, ptr %netdev, i32 2513
  %7 = ptrtoint ptr %max_sds_rings.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %max_sds_rings.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %cmp10.not.i = icmp eq i8 %8, 0
  br i1 %cmp10.not.i, label %if.then3.if.end4_crit_edge, label %for.body.lr.ph.i

if.then3.if.end4_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

for.body.lr.ph.i:                                 ; preds = %if.then3
  %sds_rings.i = getelementptr i8, ptr %netdev, i32 2660
  br label %for.body.i

for.body.i:                                       ; preds = %napi_synchronize.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %ring.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %napi_synchronize.exit.i.for.body.i_crit_edge ]
  %9 = ptrtoint ptr %sds_rings.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sds_rings.i, align 4
  %adapter1.i.i = getelementptr %struct.nx_host_sds_ring, ptr %10, i32 %ring.011.i, i32 5
  %11 = ptrtoint ptr %adapter1.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adapter1.i.i, align 4
  %io_write.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %12, i32 0, i32 59
  %13 = ptrtoint ptr %io_write.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io_write.i.i, align 4
  %crb_intr_mask.i.i = getelementptr %struct.nx_host_sds_ring, ptr %10, i32 %ring.011.i, i32 3
  %15 = ptrtoint ptr %crb_intr_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %crb_intr_mask.i.i, align 4
  tail call void %14(ptr noundef %12, ptr noundef %16, i32 noundef 0) #15
  %napi.i = getelementptr %struct.nx_host_sds_ring, ptr %10, i32 %ring.011.i, i32 6
  %state.i.i = getelementptr %struct.nx_host_sds_ring, ptr %10, i32 %ring.011.i, i32 6, i32 1
  %17 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %state.i.i, align 4
  %and1.i1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i1.i.i)
  %tobool.not2.i.i = icmp eq i32 %and1.i1.i.i, 0
  br i1 %tobool.not2.i.i, label %for.body.i.napi_synchronize.exit.i_crit_edge, label %for.body.i.while.body.i.i_crit_edge

for.body.i.while.body.i.i_crit_edge:              ; preds = %for.body.i
  br label %while.body.i.i

for.body.i.napi_synchronize.exit.i_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %napi_synchronize.exit.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %for.body.i.while.body.i.i_crit_edge
  tail call void @msleep(i32 noundef 1) #15
  %19 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %20, 1
  %tobool.not.i.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.napi_synchronize.exit.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i.i

while.body.i.i.napi_synchronize.exit.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %napi_synchronize.exit.i

napi_synchronize.exit.i:                          ; preds = %while.body.i.i.napi_synchronize.exit.i_crit_edge, %for.body.i.napi_synchronize.exit.i_crit_edge
  tail call void @napi_disable(ptr noundef %napi.i) #15
  %inc.i = add nuw nsw i32 %ring.011.i, 1
  %21 = ptrtoint ptr %max_sds_rings.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %max_sds_rings.i, align 1
  %conv.i = zext i8 %22 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %napi_synchronize.exit.i.for.body.i_crit_edge, label %napi_synchronize.exit.i.if.end4_crit_edge

napi_synchronize.exit.i.if.end4_crit_edge:        ; preds = %napi_synchronize.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

napi_synchronize.exit.i.for.body.i_crit_edge:     ; preds = %napi_synchronize.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

if.end4:                                          ; preds = %napi_synchronize.exit.i.if.end4_crit_edge, %if.then3.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %mac_addr = getelementptr i8, ptr %netdev, i32 2568
  %addr_len = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 56
  %23 = ptrtoint ptr %addr_len to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %addr_len, align 1
  %conv = zext i8 %24 to i32
  %25 = call ptr @memcpy(ptr %mac_addr, ptr %sa_data, i32 %conv)
  tail call void @dev_addr_mod(ptr noundef %netdev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #15
  %macaddr_set = getelementptr i8, ptr %netdev, i32 2676
  %26 = ptrtoint ptr %macaddr_set to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %macaddr_set, align 4
  %call12 = tail call i32 %27(ptr noundef %add.ptr.i, ptr noundef %sa_data) #15
  %28 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %state.i, align 4
  %and1.i.i31 = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i31)
  %tobool.i32.not = icmp eq i32 %and1.i.i31, 0
  br i1 %tobool.i32.not, label %if.end4.cleanup_crit_edge, label %if.then14

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then14:                                        ; preds = %if.end4
  tail call void @netif_device_attach(ptr noundef %netdev) #15
  %max_sds_rings.i33 = getelementptr i8, ptr %netdev, i32 2513
  %30 = ptrtoint ptr %max_sds_rings.i33 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %max_sds_rings.i33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %cmp8.not.i = icmp eq i8 %31, 0
  br i1 %cmp8.not.i, label %if.then14.cleanup_crit_edge, label %for.body.lr.ph.i35

if.then14.cleanup_crit_edge:                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph.i35:                               ; preds = %if.then14
  %sds_rings.i34 = getelementptr i8, ptr %netdev, i32 2660
  br label %for.body.i41

for.body.i41:                                     ; preds = %netxen_nic_enable_int.exit.i.for.body.i41_crit_edge, %for.body.lr.ph.i35
  %ring.09.i = phi i32 [ 0, %for.body.lr.ph.i35 ], [ %inc.i42, %netxen_nic_enable_int.exit.i.for.body.i41_crit_edge ]
  %32 = ptrtoint ptr %sds_rings.i34 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sds_rings.i34, align 4
  %napi.i36 = getelementptr %struct.nx_host_sds_ring, ptr %33, i32 %ring.09.i, i32 6
  tail call void @napi_enable(ptr noundef %napi.i36) #15
  %adapter1.i.i37 = getelementptr %struct.nx_host_sds_ring, ptr %33, i32 %ring.09.i, i32 5
  %34 = ptrtoint ptr %adapter1.i.i37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adapter1.i.i37, align 4
  %io_write.i.i38 = getelementptr inbounds %struct.netxen_adapter, ptr %35, i32 0, i32 59
  %36 = ptrtoint ptr %io_write.i.i38 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %io_write.i.i38, align 4
  %crb_intr_mask.i.i39 = getelementptr %struct.nx_host_sds_ring, ptr %33, i32 %ring.09.i, i32 3
  %38 = ptrtoint ptr %crb_intr_mask.i.i39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %crb_intr_mask.i.i39, align 4
  tail call void %37(ptr noundef %35, ptr noundef %39, i32 noundef 1) #15
  %flags.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %35, i32 0, i32 36
  %40 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %41, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i40 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i40, label %if.then.i.i, label %for.body.i41.netxen_nic_enable_int.exit.i_crit_edge

for.body.i41.netxen_nic_enable_int.exit.i_crit_edge: ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_enable_int.exit.i

if.then.i.i:                                      ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #17
  %42 = ptrtoint ptr %io_write.i.i38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %io_write.i.i38, align 4
  %tgt_mask_reg.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %35, i32 0, i32 60
  %44 = ptrtoint ptr %tgt_mask_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tgt_mask_reg.i.i, align 8
  tail call void %43(ptr noundef %35, ptr noundef %45, i32 noundef 64511) #15
  br label %netxen_nic_enable_int.exit.i

netxen_nic_enable_int.exit.i:                     ; preds = %if.then.i.i, %for.body.i41.netxen_nic_enable_int.exit.i_crit_edge
  %inc.i42 = add nuw nsw i32 %ring.09.i, 1
  %46 = ptrtoint ptr %max_sds_rings.i33 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %max_sds_rings.i33, align 1
  %conv.i43 = zext i8 %47 to i32
  %cmp.i44 = icmp ult i32 %inc.i42, %conv.i43
  br i1 %cmp.i44, label %netxen_nic_enable_int.exit.i.for.body.i41_crit_edge, label %netxen_nic_enable_int.exit.i.cleanup_crit_edge

netxen_nic_enable_int.exit.i.cleanup_crit_edge:   ; preds = %netxen_nic_enable_int.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

netxen_nic_enable_int.exit.i.for.body.i41_crit_edge: ; preds = %netxen_nic_enable_int.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i41

cleanup:                                          ; preds = %netxen_nic_enable_int.exit.i.cleanup_crit_edge, %if.then14.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %is_valid_ether_addr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -99, %is_valid_ether_addr.exit.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ 0, %if.then14.cleanup_crit_edge ], [ -99, %entry.cleanup_crit_edge ], [ 0, %netxen_nic_enable_int.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_tx_timeout(ptr noundef %netdev, i32 noundef %txqueue) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr i8, ptr %netdev, i32 2992
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state, align 4
  %2 = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.net_device, ptr %netdev, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.117) #19
  %tx_timeout_task = getelementptr i8, ptr %netdev, i32 2896
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %3 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %3, ptr noundef %tx_timeout_task) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @netxen_nic_get_stats(ptr nocapture noundef readonly %netdev, ptr nocapture noundef writeonly %stats) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_pkts = getelementptr i8, ptr %netdev, i32 2616
  %0 = ptrtoint ptr %rx_pkts to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %rx_pkts, align 8
  %lro_pkts = getelementptr i8, ptr %netdev, i32 2624
  %2 = ptrtoint ptr %lro_pkts to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lro_pkts, align 8
  %add = add i64 %3, %1
  %4 = ptrtoint ptr %stats to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add, ptr %stats, align 8
  %xmitfinished = getelementptr i8, ptr %netdev, i32 2584
  %5 = ptrtoint ptr %xmitfinished to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %xmitfinished, align 8
  %tx_packets = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 1
  %7 = ptrtoint ptr %tx_packets to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %tx_packets, align 8
  %rxbytes = getelementptr i8, ptr %netdev, i32 2632
  %8 = ptrtoint ptr %rxbytes to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %rxbytes, align 8
  %rx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 2
  %10 = ptrtoint ptr %rx_bytes to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %rx_bytes, align 8
  %txbytes = getelementptr i8, ptr %netdev, i32 2640
  %11 = ptrtoint ptr %txbytes to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %txbytes, align 8
  %tx_bytes = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 3
  %13 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %tx_bytes, align 8
  %rxdropped = getelementptr i8, ptr %netdev, i32 2592
  %14 = ptrtoint ptr %rxdropped to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %rxdropped, align 8
  %rx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 6
  %16 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %15, ptr %rx_dropped, align 8
  %txdropped = getelementptr i8, ptr %netdev, i32 2600
  %17 = ptrtoint ptr %txdropped to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %txdropped, align 8
  %tx_dropped = getelementptr inbounds %struct.rtnl_link_stats64, ptr %stats, i32 0, i32 7
  %19 = ptrtoint ptr %tx_dropped to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %tx_dropped, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @netxen_fix_features(ptr noundef %dev, i64 noundef %features) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i64 %features, 1099511627776
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_info(ptr noundef %dev, ptr noundef nonnull @.str.119) #19
  %and1 = and i64 %features, -32769
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %features.addr.0 = phi i64 [ %features, %entry.if.end_crit_edge ], [ %and1, %if.then ]
  ret i64 %features.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_set_features(ptr noundef %dev, i64 noundef %features) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %features1 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %features1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %features1, align 16
  %xor = xor i64 %1, %features
  %and = and i64 %xor, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i64 %features, 32768
  %2 = lshr exact i64 %and2, 12
  %3 = trunc i64 %2 to i32
  %call4 = tail call i32 @netxen_config_hw_lro(ptr noundef %add.ptr.i, i32 noundef %3) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and2)
  %tobool3.not = icmp eq i64 %and2, 0
  br i1 %tobool3.not, label %land.lhs.true, label %if.end7.if.end13_crit_edge

if.end7.if.end13_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end7
  %call10 = tail call i32 @netxen_send_lro_cleanup(ptr noundef %add.ptr.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.end13:                                         ; preds = %land.lhs.true.if.end13_crit_edge, %if.end7.if.end13_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ 0, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_send_lro_cleanup(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_p3_get_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_get_flash_mac_addr(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_detach_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -492
  %netdev1 = getelementptr i8, ptr %work, i32 -360
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  tail call void @netif_device_detach(ptr noundef %1) #15
  tail call void @rtnl_lock() #15
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %entry.netxen_nic_down.exit_crit_edge, label %if.then.i

entry.netxen_nic_down.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_down.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__netxen_nic_down(ptr noundef %add.ptr, ptr noundef %1) #15
  br label %netxen_nic_down.exit

netxen_nic_down.exit:                             ; preds = %if.then.i, %entry.netxen_nic_down.exit_crit_edge
  tail call void @rtnl_unlock() #15
  tail call void @rtnl_lock() #15
  tail call fastcc void @netxen_nic_detach(ptr noundef %add.ptr)
  tail call void @rtnl_unlock() #15
  %crb_read = getelementptr i8, ptr %work, i32 -88
  %4 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crb_read, align 4
  %call = tail call i32 %5(ptr noundef %add.ptr, i32 noundef 136323240) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %tobool.not = icmp sgt i32 %call, -1
  br i1 %tobool.not, label %if.end, label %netxen_nic_down.exit.err_ret_crit_edge

netxen_nic_down.exit.err_ret_crit_edge:           ; preds = %netxen_nic_down.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_ret

if.end:                                           ; preds = %netxen_nic_down.exit
  %temp = getelementptr i8, ptr %work, i32 -240
  %6 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp = icmp eq i32 %7, 3
  br i1 %cmp, label %if.end.err_ret_crit_edge, label %if.end3

if.end.err_ret_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_ret

if.end3:                                          ; preds = %if.end
  %flags = getelementptr i8, ptr %work, i32 -248
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and4 = and i32 %9, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end8, label %if.end3.if.end11.thread_crit_edge

if.end3.if.end11.thread_crit_edge:                ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.thread

if.end8:                                          ; preds = %if.end3
  %call7 = tail call fastcc i32 @nx_decr_dev_ref_cnt(ptr noundef %add.ptr)
  %10 = zext i32 %call7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.190)
  switch i32 %call7, label %if.end8._crit_edge [
    i32 -5, label %if.end8.err_ret_crit_edge
    i32 0, label %if.end8.if.end11.thread_crit_edge
  ]

if.end8.if.end11.thread_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.thread

if.end8.err_ret_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_ret

if.end8._crit_edge:                               ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #17
  br label %11

if.end11.thread:                                  ; preds = %if.end8.if.end11.thread_crit_edge, %if.end3.if.end11.thread_crit_edge
  br label %11

11:                                               ; preds = %if.end11.thread, %if.end8._crit_edge
  %12 = phi i32 [ 0, %if.end11.thread ], [ 400, %if.end8._crit_edge ]
  %fw_wait_cnt = getelementptr i8, ptr %work, i32 -272
  %13 = ptrtoint ptr %fw_wait_cnt to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %fw_wait_cnt, align 4
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #15
  %14 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -64, ptr %work, align 4
  %lockdep_map.i = getelementptr i8, ptr %work, i32 16
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.122, ptr noundef nonnull @netxen_schedule_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry8.i = getelementptr i8, ptr %work, i32 4
  %15 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %entry8.i, ptr %entry8.i, align 4
  %prev.i.i = getelementptr i8, ptr %work, i32 8
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %entry8.i, ptr %prev.i.i, align 4
  %func11.i = getelementptr i8, ptr %work, i32 12
  %17 = ptrtoint ptr %func11.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @netxen_fwinit_work, ptr %func11.i, align 4
  %timer.i = getelementptr i8, ptr %work, i32 44
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.124, ptr noundef nonnull @netxen_schedule_work.__key.123) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %18 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %work, i32 noundef %12) #15
  br label %cleanup

err_ret:                                          ; preds = %if.end8.err_ret_crit_edge, %if.end.err_ret_crit_edge, %netxen_nic_down.exit.err_ret_crit_edge
  %state = getelementptr i8, ptr %work, i32 196
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #15
  br label %cleanup

cleanup:                                          ; preds = %err_ret, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_fwinit_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -492
  %crb_read = getelementptr i8, ptr %work, i32 -88
  %0 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %crb_read, align 4
  %call = tail call i32 %1(ptr noundef %add.ptr, i32 noundef 136323392) #15
  %flags = getelementptr i8, ptr %work, i32 -248
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end43_crit_edge, label %if.then

entry.if.end43_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %crb_read, align 4
  %call2 = tail call i32 %5(ptr noundef %add.ptr, i32 noundef 136323384) #15
  %6 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.191)
  switch i32 %call2, label %if.then.if.end43_crit_edge [
    i32 0, label %do.end
    i32 1, label %if.then25
  ], !prof !408

if.then.if.end43_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end43

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 2539, i32 noundef 9, ptr noundef null) #15
  br label %if.end43

if.then25:                                        ; preds = %if.then
  %md_enabled = getelementptr i8, ptr %work, i32 219
  %7 = ptrtoint ptr %md_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %md_enabled, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool26.not = icmp eq i8 %8, 0
  br i1 %tobool26.not, label %if.then25.if.end28_crit_edge, label %if.then27

if.then25.if.end28_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end28

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @rtnl_lock() #15
  tail call void @netxen_dump_fw(ptr noundef %add.ptr) #15
  tail call void @rtnl_unlock() #15
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.then25.if.end28_crit_edge
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %and30 = and i32 %10, -65
  store i32 %and30, ptr %flags, align 4
  %call31 = tail call i32 @netxen_pcie_sem_lock(ptr noundef %add.ptr, i32 noundef 5, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end43.thread, label %if.then33

if.then33:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %state = getelementptr i8, ptr %work, i32 196
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #15
  %crb_write = getelementptr i8, ptr %work, i32 -84
  %11 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %crb_write, align 8
  %call34 = tail call i32 %12(ptr noundef %add.ptr, i32 noundef 136323392, i32 noundef 7) #15
  br label %cleanup

if.end43.thread:                                  ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #17
  %13 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %crb_read, align 4
  %call37 = tail call i32 %14(ptr noundef %add.ptr, i32 noundef 136323384) #15
  %crb_write38 = getelementptr i8, ptr %work, i32 -84
  %15 = ptrtoint ptr %crb_write38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %crb_write38, align 8
  %dec = add i32 %call37, -1
  %call39 = tail call i32 %16(ptr noundef %add.ptr, i32 noundef 136323384, i32 noundef %dec) #15
  %17 = ptrtoint ptr %crb_write38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %crb_write38, align 8
  %call41 = tail call i32 %18(ptr noundef %add.ptr, i32 noundef 136323392, i32 noundef 1) #15
  tail call void @netxen_pcie_sem_unlock(ptr noundef %add.ptr, i32 noundef 5) #15
  br label %sw.bb

if.end43:                                         ; preds = %do.end, %if.then.if.end43_crit_edge, %entry.if.end43_crit_edge
  %19 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.192)
  switch i32 %call, label %sw.default [
    i32 1, label %if.end43.sw.bb_crit_edge
    i32 3, label %if.end43.sw.bb_crit_edge105
    i32 4, label %if.end43.sw.bb48_crit_edge
    i32 2, label %if.end43.sw.bb48_crit_edge106
  ]

if.end43.sw.bb48_crit_edge106:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb48

if.end43.sw.bb48_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb48

if.end43.sw.bb_crit_edge105:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end43.sw.bb_crit_edge:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

sw.bb:                                            ; preds = %if.end43.sw.bb_crit_edge, %if.end43.sw.bb_crit_edge105, %if.end43.thread
  %call44 = tail call fastcc i32 @netxen_start_firmware(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.then46, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.then46:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #15
  %20 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -64, ptr %work, align 4
  %lockdep_map.i = getelementptr i8, ptr %work, i32 16
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.122, ptr noundef nonnull @netxen_schedule_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry8.i = getelementptr i8, ptr %work, i32 4
  %21 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %entry8.i, ptr %entry8.i, align 4
  %prev.i.i = getelementptr i8, ptr %work, i32 8
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %entry8.i, ptr %prev.i.i, align 4
  %func11.i = getelementptr i8, ptr %work, i32 12
  %23 = ptrtoint ptr %func11.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @netxen_attach_work, ptr %func11.i, align 4
  %timer.i = getelementptr i8, ptr %work, i32 44
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.124, ptr noundef nonnull @netxen_schedule_work.__key.123) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %24 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %24, ptr noundef %work, i32 noundef 0) #15
  br label %cleanup

sw.bb48:                                          ; preds = %if.end43.sw.bb48_crit_edge, %if.end43.sw.bb48_crit_edge106
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #15
  %25 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -64, ptr %work, align 4
  %lockdep_map.i98 = getelementptr i8, ptr %work, i32 16
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i98, ptr noundef nonnull @.str.122, ptr noundef nonnull @netxen_schedule_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry8.i99 = getelementptr i8, ptr %work, i32 4
  %26 = ptrtoint ptr %entry8.i99 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %entry8.i99, ptr %entry8.i99, align 4
  %prev.i.i100 = getelementptr i8, ptr %work, i32 8
  %27 = ptrtoint ptr %prev.i.i100 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %entry8.i99, ptr %prev.i.i100, align 4
  %func11.i101 = getelementptr i8, ptr %work, i32 12
  %28 = ptrtoint ptr %func11.i101 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @netxen_fwinit_work, ptr %func11.i101, align 4
  %timer.i102 = getelementptr i8, ptr %work, i32 44
  tail call void @init_timer_key(ptr noundef %timer.i102, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.124, ptr noundef nonnull @netxen_schedule_work.__key.123) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i.i103 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %work, i32 noundef 400) #15
  br label %cleanup

sw.default:                                       ; preds = %if.end43
  %call.i = tail call i32 @netxen_pcie_sem_lock(ptr noundef %add.ptr, i32 noundef 5, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.default.sw.epilog_crit_edge

sw.default.sw.epilog_crit_edge:                   ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #17
  %30 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %crb_read, align 4
  %call1.i = tail call i32 %31(ptr noundef %add.ptr, i32 noundef 136323384) #15
  %crb_write.i = getelementptr i8, ptr %work, i32 -84
  %32 = ptrtoint ptr %crb_write.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %crb_write.i, align 8
  %inc.i = add i32 %call1.i, 1
  %call2.i = tail call i32 %33(ptr noundef %add.ptr, i32 noundef 136323384, i32 noundef %inc.i) #15
  tail call void @netxen_pcie_sem_unlock(ptr noundef %add.ptr, i32 noundef 5) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end.i, %sw.default.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %call51 = tail call i32 @netxen_pcie_sem_lock(ptr noundef %add.ptr, i32 noundef 5, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %state54 = getelementptr i8, ptr %work, i32 196
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state54) #15
  br label %cleanup

if.end55:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  %crb_write56 = getelementptr i8, ptr %work, i32 -84
  %34 = ptrtoint ptr %crb_write56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %crb_write56, align 8
  %call57 = tail call i32 %35(ptr noundef %add.ptr, i32 noundef 136323392, i32 noundef 7) #15
  tail call void @netxen_pcie_sem_unlock(ptr noundef %add.ptr, i32 noundef 5) #15
  %pdev = getelementptr i8, ptr %work, i32 -356
  %36 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pdev, align 8
  %dev = getelementptr inbounds %struct.pci_dev, ptr %37, i32 0, i32 44
  %netdev = getelementptr i8, ptr %work, i32 -360
  %38 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %netdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.141, ptr noundef %39) #19
  %state61 = getelementptr i8, ptr %work, i32 196
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state61) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.then53, %sw.bb48, %if.then46, %if.then33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_dump_fw(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxen_attach_work(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -492
  %netdev1 = getelementptr i8, ptr %work, i32 -360
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc i32 @netxen_nic_attach(ptr noundef %add.ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then.done_crit_edge

if.then.done_crit_edge:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end:                                           ; preds = %if.then
  tail call void @rtnl_lock() #15
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %netxen_nic_up.exit.thread, label %netxen_nic_up.exit

netxen_nic_up.exit.thread:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @rtnl_unlock() #15
  br label %if.end7

netxen_nic_up.exit:                               ; preds = %if.end
  %call1.i = tail call fastcc i32 @__netxen_nic_up(ptr noundef %add.ptr, ptr noundef %1) #15
  tail call void @rtnl_unlock() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool5.not = icmp eq i32 %call1.i, 0
  br i1 %tobool5.not, label %netxen_nic_up.exit.if.end7_crit_edge, label %if.then6

netxen_nic_up.exit.if.end7_crit_edge:             ; preds = %netxen_nic_up.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end7

if.then6:                                         ; preds = %netxen_nic_up.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @netxen_nic_detach(ptr noundef %add.ptr)
  br label %done

if.end7:                                          ; preds = %netxen_nic_up.exit.if.end7_crit_edge, %netxen_nic_up.exit.thread
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 2304
  tail call fastcc void @netxen_config_indev_addr(ptr noundef %add.ptr.i.i, ptr noundef %1, i32 noundef 1) #15
  %ip_list.i = getelementptr i8, ptr %1, i32 2452
  %6 = ptrtoint ptr %ip_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ip_list.i, align 4
  %cmp7.not1.i = icmp eq ptr %7, %ip_list.i
  br i1 %cmp7.not1.i, label %if.end7.if.end8_crit_edge, label %if.end7.for.body.i_crit_edge

if.end7.for.body.i_crit_edge:                     ; preds = %if.end7
  br label %for.body.i

if.end7.if.end8_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end7.for.body.i_crit_edge
  %pos.02.i = phi ptr [ %tmp_pos.0.i, %for.body.i.for.body.i_crit_edge ], [ %7, %if.end7.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %pos.02.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp_pos.0.i = load ptr, ptr %pos.02.i, align 4
  %ip_addr.i = getelementptr inbounds %struct.nx_ip_list, ptr %pos.02.i, i32 0, i32 1
  %9 = ptrtoint ptr %ip_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ip_addr.i, align 4
  %call8.i = tail call i32 @netxen_config_ipaddr(ptr noundef %add.ptr.i.i, i32 noundef %10, i32 noundef 2) #15
  %cmp7.not.i = icmp eq ptr %tmp_pos.0.i, %ip_list.i
  br i1 %cmp7.not.i, label %for.body.i.if.end8_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.if.end8_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end8

if.end8:                                          ; preds = %for.body.i.if.end8_crit_edge, %if.end7.if.end8_crit_edge, %entry.if.end8_crit_edge
  tail call void @netif_device_attach(ptr noundef %1) #15
  br label %done

done:                                             ; preds = %if.end8, %if.then6, %if.then.done_crit_edge
  %fw_fail_cnt = getelementptr i8, ptr %work, i32 -271
  %11 = ptrtoint ptr %fw_fail_cnt to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %fw_fail_cnt, align 1
  %state = getelementptr i8, ptr %work, i32 196
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state) #15
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #15
  %12 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -64, ptr %work, align 4
  %lockdep_map.i = getelementptr i8, ptr %work, i32 16
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.122, ptr noundef nonnull @netxen_schedule_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry8.i = getelementptr i8, ptr %work, i32 4
  %13 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %entry8.i, ptr %entry8.i, align 4
  %prev.i.i = getelementptr i8, ptr %work, i32 8
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %entry8.i, ptr %prev.i.i, align 4
  %func11.i = getelementptr i8, ptr %work, i32 12
  %15 = ptrtoint ptr %func11.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @netxen_fw_poll_work, ptr %func11.i, align 4
  %timer.i = getelementptr i8, ptr %work, i32 44
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.124, ptr noundef nonnull @netxen_schedule_work.__key.123) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %16 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %16, ptr noundef %work, i32 noundef 200) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netxen_config_indev_addr(ptr noundef %adapter, ptr noundef %dev, i32 noundef %event) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %revision_id.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 12
  %0 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %1)
  %cmp.i = icmp ult i8 %1, 38
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %netxen_destip_supported.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

netxen_destip_supported.exit:                     ; preds = %entry
  %cut_through.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %adapter, i32 0, i32 11
  %2 = ptrtoint ptr %cut_through.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cut_through.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i49.not = icmp eq i8 %3, 0
  br i1 %tobool.not.i49.not, label %if.end, label %netxen_destip_supported.exit.cleanup_crit_edge

netxen_destip_supported.exit.cleanup_crit_edge:   ; preds = %netxen_destip_supported.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %netxen_destip_supported.exit
  %4 = tail call i32 @llvm.read_register.i32(metadata !379) #15
  %and.i.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !409
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %if.end.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.rcu_read_lock.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.146, i32 noundef 696, ptr noundef nonnull @.str.147) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.rcu_read_lock.exit.i_crit_edge
  %ip_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 78
  %8 = ptrtoint ptr %ip_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ip_ptr.i.i, align 32
  %call.i3.i = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i)
  %tobool.not.i4.i = icmp eq i32 %call.i3.i, 0
  br i1 %tobool.not.i4.i, label %land.lhs.true.i5.i, label %rcu_read_lock.exit.i.__in_dev_get_rcu.exit.i_crit_edge

rcu_read_lock.exit.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__in_dev_get_rcu.exit.i

land.lhs.true.i5.i:                               ; preds = %rcu_read_lock.exit.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i5.i.__in_dev_get_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i5.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__in_dev_get_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i5.i
  %.b9.i.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge, label %if.then.i6.i

land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__in_dev_get_rcu.exit.i

if.then.i6.i:                                     ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.145, i32 noundef 232, ptr noundef nonnull @.str.143) #15
  br label %__in_dev_get_rcu.exit.i

__in_dev_get_rcu.exit.i:                          ; preds = %if.then.i6.i, %land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge, %land.lhs.true.i5.i.__in_dev_get_rcu.exit.i_crit_edge, %rcu_read_lock.exit.i.__in_dev_get_rcu.exit.i_crit_edge
  %tobool.not.i50 = icmp eq ptr %9, null
  br i1 %tobool.not.i50, label %__in_dev_get_rcu.exit.i.if.end.i52_crit_edge, label %if.then.i51

__in_dev_get_rcu.exit.i.if.end.i52_crit_edge:     ; preds = %__in_dev_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i52

if.then.i51:                                      ; preds = %__in_dev_get_rcu.exit.i
  %refcnt.i = getelementptr inbounds %struct.in_device, ptr %9, i32 0, i32 2
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !410
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i51.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !401

if.then.i51.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then.i51
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i51
  %add.i.i.i7.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %11 = or i32 %add.i.i.i7.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end.i52_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !404

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end.i52_crit_edge:             ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i52

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i51.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i51.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #15
  br label %if.end.i52

if.end.i52:                                       ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end.i52_crit_edge, %__in_dev_get_rcu.exit.i.if.end.i52_crit_edge
  %call.i8.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i8.i, label %if.end.i52.in_dev_get.exit_crit_edge, label %land.lhs.true.i11.i

if.end.i52.in_dev_get.exit_crit_edge:             ; preds = %if.end.i52
  call void @__sanitizer_cov_trace_pc() #17
  br label %in_dev_get.exit

land.lhs.true.i11.i:                              ; preds = %if.end.i52
  %call1.i9.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i9.i)
  %tobool.not.i10.i = icmp eq i32 %call1.i9.i, 0
  br i1 %tobool.not.i10.i, label %land.lhs.true.i11.i.in_dev_get.exit_crit_edge, label %land.lhs.true2.i13.i

land.lhs.true.i11.i.in_dev_get.exit_crit_edge:    ; preds = %land.lhs.true.i11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %in_dev_get.exit

land.lhs.true2.i13.i:                             ; preds = %land.lhs.true.i11.i
  %.b4.i12.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i12.i, label %land.lhs.true2.i13.i.in_dev_get.exit_crit_edge, label %if.then.i14.i

land.lhs.true2.i13.i.in_dev_get.exit_crit_edge:   ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %in_dev_get.exit

if.then.i14.i:                                    ; preds = %land.lhs.true2.i13.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.146, i32 noundef 724, ptr noundef nonnull @.str.148) #15
  br label %in_dev_get.exit

in_dev_get.exit:                                  ; preds = %if.then.i14.i, %land.lhs.true2.i13.i.in_dev_get.exit_crit_edge, %land.lhs.true.i11.i.in_dev_get.exit_crit_edge, %if.end.i52.in_dev_get.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !411
  %12 = tail call i32 @llvm.read_register.i32(metadata !379) #15
  %and.i.i.i.i.i15.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i15.i to ptr
  %preempt_count.i.i.i.i16.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i16.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i16.i, align 4
  %sub.i.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i16.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br i1 %tobool.not.i50, label %in_dev_get.exit.cleanup_crit_edge, label %if.end4

in_dev_get.exit.cleanup_crit_edge:                ; preds = %in_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %in_dev_get.exit
  %16 = tail call i32 @llvm.read_register.i32(metadata !379) #15
  %and.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !409
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.end4.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end4.rcu_read_lock.exit_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end4
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.146, i32 noundef 696, ptr noundef nonnull @.str.147) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end4.rcu_read_lock.exit_crit_edge
  %ifa_list = getelementptr inbounds %struct.in_device, ptr %9, i32 0, i32 4
  %20 = ptrtoint ptr %ifa_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %ifa_list, align 4
  %call6 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end15_crit_edge

rcu_read_lock.exit.do.end15_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call8 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true10

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

land.lhs.true10:                                  ; preds = %land.lhs.true
  %.b48 = load i1, ptr @netxen_config_indev_addr.__warned, align 1
  br i1 %.b48, label %land.lhs.true10.do.end15_crit_edge, label %if.then12

land.lhs.true10.do.end15_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end15

if.then12:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @netxen_config_indev_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 3256, ptr noundef nonnull @.str.143) #15
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %land.lhs.true10.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %rcu_read_lock.exit.do.end15_crit_edge
  %tobool17.not74 = icmp eq ptr %21, null
  br i1 %tobool17.not74, label %do.end15.for.end_crit_edge, label %for.body.lr.ph

do.end15.for.end_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end15
  %ip_list27.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %do.end36.for.body_crit_edge, %for.body.lr.ph
  %ifa.075 = phi ptr [ %21, %for.body.lr.ph ], [ %43, %do.end36.for.body_crit_edge ]
  %22 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.193)
  switch i32 %event, label %for.body.for.inc_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb19
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @netxen_list_config_ip(ptr noundef %adapter, ptr noundef nonnull %ifa.075, i32 noundef 2)
  br label %for.inc

sw.bb19:                                          ; preds = %for.body
  %ifa_dev.i = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.075, i32 0, i32 2
  %23 = ptrtoint ptr %ifa_dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ifa_dev.i, align 4
  %tobool.not.i53 = icmp eq ptr %24, null
  br i1 %tobool.not.i53, label %sw.bb19.for.inc_crit_edge, label %cond.end.i

sw.bb19.for.inc_crit_edge:                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

cond.end.i:                                       ; preds = %sw.bb19
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %cmp.i54 = icmp eq ptr %26, null
  br i1 %cmp.i54, label %cond.end.i.for.inc_crit_edge, label %if.end.i55

cond.end.i.for.inc_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end.i55:                                       ; preds = %cond.end.i
  %ifa_address43.i = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.075, i32 0, i32 5
  br label %for.cond36.i

for.cond36.i:                                     ; preds = %for.body41.i.for.cond36.i_crit_edge, %if.end.i55
  %cur.0.in.i = phi ptr [ %ip_list27.i, %if.end.i55 ], [ %cur.0.i, %for.body41.i.for.cond36.i_crit_edge ]
  %27 = ptrtoint ptr %cur.0.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %cur.0.i = load ptr, ptr %cur.0.in.i, align 4
  %cmp39.not.i = icmp eq ptr %cur.0.i, %ip_list27.i
  br i1 %cmp39.not.i, label %for.cond36.i.for.inc_crit_edge, label %for.body41.i

for.cond36.i.for.inc_crit_edge:                   ; preds = %for.cond36.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

for.body41.i:                                     ; preds = %for.cond36.i
  %ip_addr42.i = getelementptr inbounds %struct.nx_ip_list, ptr %cur.0.i, i32 0, i32 1
  %28 = ptrtoint ptr %ip_addr42.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ip_addr42.i, align 4
  %30 = ptrtoint ptr %ifa_address43.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ifa_address43.i, align 4
  %cmp44.i = icmp eq i32 %29, %31
  br i1 %cmp44.i, label %if.then45.i, label %for.body41.i.for.cond36.i_crit_edge

for.body41.i.for.cond36.i_crit_edge:              ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond36.i

if.then45.i:                                      ; preds = %for.body41.i
  %call.i.i3.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cur.0.i) #15
  br i1 %call.i.i3.i, label %if.end.i.i4.i, label %if.then45.i.list_del.exit.i_crit_edge

if.then45.i.list_del.exit.i_crit_edge:            ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i4.i:                                    ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %cur.0.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i.i, align 4
  %34 = ptrtoint ptr %cur.0.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cur.0.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev1.i.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %35, ptr %33, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i4.i, %if.then45.i.list_del.exit.i_crit_edge
  %38 = ptrtoint ptr %cur.0.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 256 to ptr), ptr %cur.0.i, align 4
  %prev.i5.i = getelementptr inbounds %struct.list_head, ptr %cur.0.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i5.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i5.i, align 4
  tail call void @kfree(ptr noundef %cur.0.i) #15
  %40 = ptrtoint ptr %ifa_address43.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ifa_address43.i, align 4
  %call24.i = tail call i32 @netxen_config_ipaddr(ptr noundef %adapter, i32 noundef %41, i32 noundef 3) #15
  br label %for.inc

for.inc:                                          ; preds = %list_del.exit.i, %for.cond36.i.for.inc_crit_edge, %cond.end.i.for.inc_crit_edge, %sw.bb19.for.inc_crit_edge, %sw.bb, %for.body.for.inc_crit_edge
  %ifa_next = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.075, i32 0, i32 1
  %42 = ptrtoint ptr %ifa_next to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %ifa_next, align 4
  %call26 = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true28, label %for.inc.do.end36_crit_edge

for.inc.do.end36_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end36

land.lhs.true28:                                  ; preds = %for.inc
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true28.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true28.do.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %.b4647 = load i1, ptr @netxen_config_indev_addr.__warned.144, align 1
  br i1 %.b4647, label %land.lhs.true31.do.end36_crit_edge, label %if.then33

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end36

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @netxen_config_indev_addr.__warned.144, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 3256, ptr noundef nonnull @.str.143) #15
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %land.lhs.true31.do.end36_crit_edge, %land.lhs.true28.do.end36_crit_edge, %for.inc.do.end36_crit_edge
  %tobool17.not = icmp eq ptr %43, null
  br i1 %tobool17.not, label %do.end36.for.end_crit_edge, label %do.end36.for.body_crit_edge

do.end36.for.body_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

do.end36.for.end_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %do.end36.for.end_crit_edge, %do.end15.for.end_crit_edge
  %call.i56 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i56, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i59

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i59:                                ; preds = %for.end
  %call1.i57 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i57)
  %tobool.not.i58 = icmp eq i32 %call1.i57, 0
  br i1 %tobool.not.i58, label %land.lhs.true.i59.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i61

land.lhs.true.i59.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i59
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i61:                               ; preds = %land.lhs.true.i59
  %.b4.i60 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i60, label %land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge, label %if.then.i62

land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i62:                                      ; preds = %land.lhs.true2.i61
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.146, i32 noundef 724, ptr noundef nonnull @.str.148) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i62, %land.lhs.true2.i61.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i59.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !411
  %44 = tail call i32 @llvm.read_register.i32(metadata !379) #15
  %and.i.i.i.i.i63 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i.i63 to ptr
  %preempt_count.i.i.i.i64 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %preempt_count.i.i.i.i64 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %preempt_count.i.i.i.i64, align 4
  %sub.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i64, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %refcnt.i65 = getelementptr inbounds %struct.in_device, ptr %9, i32 0, i32 2
  %call.i.i.i.i.i.i66 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i65, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !412
  tail call void @llvm.prefetch.p0(ptr %refcnt.i65, i32 1, i32 3, i32 1) #15
  %48 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i65, ptr %refcnt.i65, i32 1, ptr elementtype(i32) %refcnt.i65) #15, !srcloc !413
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %48, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i68, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i67 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i67, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !404

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i65, i32 noundef 3) #15
  br label %cleanup

if.then.i68:                                      ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !414
  tail call void @in_dev_finish_destroy(ptr noundef nonnull %9) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i68, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %in_dev_get.exit.cleanup_crit_edge, %netxen_destip_supported.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_config_ipaddr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netxen_list_config_ip(ptr noundef %adapter, ptr nocapture noundef readonly %ifa, i32 noundef %event) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ifa_dev = getelementptr inbounds %struct.in_ifaddr, ptr %ifa, i32 0, i32 2
  %0 = ptrtoint ptr %ifa_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifa_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %cond.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

cond.end:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %cond.end.out_crit_edge, label %if.end

cond.end.out_crit_edge:                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %cond.end
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.194)
  switch i32 %event, label %if.end.out_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb25
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

sw.bb:                                            ; preds = %if.end
  %ip_list = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 4
  %ifa_address = getelementptr inbounds %struct.in_ifaddr, ptr %ifa, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %sw.bb
  %head.0.in = phi ptr [ %ip_list, %sw.bb ], [ %head.0, %for.body.for.cond_crit_edge ]
  %5 = ptrtoint ptr %head.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %head.0 = load ptr, ptr %head.0.in, align 4
  %cmp.i.not = icmp eq ptr %head.0, %ip_list
  br i1 %cmp.i.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %ip_addr = getelementptr inbounds %struct.nx_ip_list, ptr %head.0, i32 0, i32 1
  %6 = ptrtoint ptr %ip_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ip_addr, align 4
  %8 = ptrtoint ptr %ifa_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ifa_address, align 4
  %cmp5 = icmp eq i32 %7, %9
  br i1 %cmp5, label %for.body.out_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.end:                                          ; preds = %for.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 16) #21
  %cmp10 = icmp eq ptr %call7.i.i, null
  br i1 %cmp10, label %for.end.out_crit_edge, label %if.end12

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end12:                                         ; preds = %for.end
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %11 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %12, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %call15 = tail call ptr @vlan_dev_real_dev(ptr noundef nonnull %3) #15
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %dev.0 = phi ptr [ %call15, %if.then14 ], [ %3, %if.end12.if.end16_crit_edge ]
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 14
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 8
  %and.i1 = and i32 %14, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1)
  %tobool.not.i = icmp eq i32 %and.i1, 0
  br i1 %tobool.not.i, label %if.end16.netif_is_bond_master.exit_crit_edge, label %land.rhs.i

if.end16.netif_is_bond_master.exit_crit_edge:     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  br label %netif_is_bond_master.exit

land.rhs.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  %priv_flags.i2 = getelementptr inbounds %struct.net_device, ptr %dev.0, i32 0, i32 15
  %15 = ptrtoint ptr %priv_flags.i2 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %priv_flags.i2, align 16
  %and1.i = and i64 %16, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.i = icmp ne i64 %and1.i, 0
  br label %netif_is_bond_master.exit

netif_is_bond_master.exit:                        ; preds = %land.rhs.i, %if.end16.netif_is_bond_master.exit_crit_edge
  %17 = phi i1 [ false, %if.end16.netif_is_bond_master.exit_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %master = getelementptr inbounds %struct.nx_ip_list, ptr %call7.i.i, i32 0, i32 2
  %frombool = zext i1 %17 to i8
  %18 = ptrtoint ptr %master to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %master, align 4
  %19 = ptrtoint ptr %ifa_address to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ifa_address, align 4
  %ip_addr21 = getelementptr inbounds %struct.nx_ip_list, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %ip_addr21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ip_addr21, align 8
  %prev.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 4, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %23, ptr noundef %ip_list) #15
  br i1 %call.i.i, label %if.end.i.i, label %netif_is_bond_master.exit.out.sink.split_crit_edge

netif_is_bond_master.exit.out.sink.split_crit_edge: ; preds = %netif_is_bond_master.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %out.sink.split

if.end.i.i:                                       ; preds = %netif_is_bond_master.exit
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %ip_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i.i, ptr %23, align 4
  br label %out.sink.split

sw.bb25:                                          ; preds = %if.end
  %ip_list27 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 4
  %ifa_address43 = getelementptr inbounds %struct.in_ifaddr, ptr %ifa, i32 0, i32 5
  br label %for.cond36

for.cond36:                                       ; preds = %for.body41.for.cond36_crit_edge, %sw.bb25
  %cur.0.in = phi ptr [ %ip_list27, %sw.bb25 ], [ %cur.0, %for.body41.for.cond36_crit_edge ]
  %28 = ptrtoint ptr %cur.0.in to i32
  call void @__asan_load4_noabort(i32 %28)
  %cur.0 = load ptr, ptr %cur.0.in, align 4
  %cmp39.not = icmp eq ptr %cur.0, %ip_list27
  br i1 %cmp39.not, label %for.cond36.out_crit_edge, label %for.body41

for.cond36.out_crit_edge:                         ; preds = %for.cond36
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.body41:                                       ; preds = %for.cond36
  %ip_addr42 = getelementptr inbounds %struct.nx_ip_list, ptr %cur.0, i32 0, i32 1
  %29 = ptrtoint ptr %ip_addr42 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ip_addr42, align 4
  %31 = ptrtoint ptr %ifa_address43 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ifa_address43, align 4
  %cmp44 = icmp eq i32 %30, %32
  br i1 %cmp44, label %if.then45, label %for.body41.for.cond36_crit_edge

for.body41.for.cond36_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond36

if.then45:                                        ; preds = %for.body41
  %call.i.i3 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cur.0) #15
  br i1 %call.i.i3, label %if.end.i.i4, label %if.then45.list_del.exit_crit_edge

if.then45.list_del.exit_crit_edge:                ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i4:                                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cur.0, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %cur.0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %cur.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i4, %if.then45.list_del.exit_crit_edge
  %39 = ptrtoint ptr %cur.0 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %cur.0, align 4
  %prev.i5 = getelementptr inbounds %struct.list_head, ptr %cur.0, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i5 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i5, align 4
  tail call void @kfree(ptr noundef %cur.0) #15
  br label %out.sink.split

out.sink.split:                                   ; preds = %list_del.exit, %if.end.i.i, %netif_is_bond_master.exit.out.sink.split_crit_edge
  %ifa_address.sink = phi ptr [ %ifa_address43, %list_del.exit ], [ %ifa_address, %netif_is_bond_master.exit.out.sink.split_crit_edge ], [ %ifa_address, %if.end.i.i ]
  %41 = ptrtoint ptr %ifa_address.sink to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ifa_address.sink, align 4
  %call24 = tail call i32 @netxen_config_ipaddr(ptr noundef %adapter, i32 noundef %42, i32 noundef %event) #15
  br label %out

out:                                              ; preds = %out.sink.split, %for.cond36.out_crit_edge, %for.end.out_crit_edge, %for.body.out_crit_edge, %if.end.out_crit_edge, %cond.end.out_crit_edge, %entry.out_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #14

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vlan_dev_real_dev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @in_dev_finish_destroy(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_show_diag_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = lshr i32 %3, 5
  %and.lobit = and i32 %and, 1
  %call2 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.10, i32 noundef %and.lobit)
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_store_diag_mode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %len) #1 align 64 {
entry:
  %new = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new) #15
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %new, align 4, !annotation !390
  %call.i = call i32 @_kstrtoul(ptr noundef %buf, i32 noundef 2, ptr noundef nonnull %new) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %new to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %new, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool2 = icmp eq i32 %4, 0
  %flags = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 36
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %7 = and i32 %6, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp ne i32 %7, 0
  %cmp.not = xor i1 %tobool2, %8
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %if.then9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %xor = xor i32 %6, 32
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %xor, ptr %flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %len, %if.then9 ], [ %len, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_sysfs_read_crb(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  %data = alloca i32, align 4
  %qmdata = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qmdata) #15
  %2 = ptrtoint ptr %qmdata to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %qmdata, align 8, !annotation !390
  %flags.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 36
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 100663296, i64 %offset)
  %cmp.i = icmp slt i64 %offset, 100663296
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.then1.i:                                       ; preds = %if.end.i
  %revision_id.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %6)
  %cmp2.i = icmp ugt i8 %6, 37
  %7 = and i64 %offset, -2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 75497472, i64 %7)
  %8 = icmp eq i64 %7, 75497472
  %or.cond.i = and i1 %8, %cmp2.i
  br i1 %or.cond.i, label %if.then1.i.if.end12.i_crit_edge, label %if.then1.i.cleanup_crit_edge

if.then1.i.cleanup_crit_edge:                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then1.i.if.end12.i_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then1.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %crb_size.0.i = phi i32 [ 4, %if.end.i.if.end12.i_crit_edge ], [ 8, %if.then1.i.if.end12.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %crb_size.0.i, i32 %size)
  %cmp13.not.i = icmp eq i32 %crb_size.0.i, %size
  br i1 %cmp13.not.i, label %lor.lhs.false.i, label %if.end12.i.cleanup_crit_edge

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end12.i
  %sub.i = add nsw i32 %size, -1
  %conv15.i = zext i32 %sub.i to i64
  %and16.i = and i64 %conv15.i, %offset
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16.i)
  %tobool17.not.i = icmp eq i64 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %10)
  %cmp3 = icmp ugt i8 %10, 47
  call void @__sanitizer_cov_trace_const_cmp8(i64 75499520, i64 %offset)
  %cmp5 = icmp ult i64 %offset, 75499520
  %or.cond = and i1 %cmp5, %cmp3
  br i1 %or.cond, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @netxen_pci_camqm_read_2M(ptr noundef %1, i64 noundef %offset, ptr noundef nonnull %qmdata) #15
  %11 = call ptr @memcpy(ptr %buf, ptr %qmdata, i32 %size)
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 53
  %12 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %crb_read, align 4
  %conv11 = trunc i64 %offset to i32
  %call12 = tail call i32 %13(ptr noundef %1, i32 noundef %conv11) #15
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call12, ptr %data, align 4
  %15 = call ptr @memcpy(ptr %buf, ptr %data, i32 %size)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then10, %lor.lhs.false.i.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %if.then1.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.else ], [ %size, %if.then10 ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end12.i.cleanup_crit_edge ], [ -22, %if.then1.i.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qmdata) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data)
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_sysfs_write_crb(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  %data = alloca i32, align 4
  %qmdata = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data)
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %qmdata)
  %3 = ptrtoint ptr %qmdata to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %qmdata, align 8
  %flags.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 36
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 100663296, i64 %offset)
  %cmp.i = icmp slt i64 %offset, 100663296
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.if.end12.i_crit_edge

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.then1.i:                                       ; preds = %if.end.i
  %revision_id.i = getelementptr inbounds %struct.netxen_hardware_context, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %revision_id.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %revision_id.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %7)
  %cmp2.i = icmp ugt i8 %7, 37
  %8 = and i64 %offset, -2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 75497472, i64 %8)
  %9 = icmp eq i64 %8, 75497472
  %or.cond.i = and i1 %9, %cmp2.i
  br i1 %or.cond.i, label %if.then1.i.if.end12.i_crit_edge, label %if.then1.i.cleanup_crit_edge

if.then1.i.cleanup_crit_edge:                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then1.i.if.end12.i_crit_edge:                  ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then1.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %crb_size.0.i = phi i32 [ 4, %if.end.i.if.end12.i_crit_edge ], [ 8, %if.then1.i.if.end12.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %crb_size.0.i, i32 %size)
  %cmp13.not.i = icmp eq i32 %crb_size.0.i, %size
  br i1 %cmp13.not.i, label %lor.lhs.false.i, label %if.end12.i.cleanup_crit_edge

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end12.i
  %sub.i = add nsw i32 %size, -1
  %conv15.i = zext i32 %sub.i to i64
  %and16.i = and i64 %conv15.i, %offset
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and16.i)
  %tobool17.not.i = icmp eq i64 %and16.i, 0
  br i1 %tobool17.not.i, label %if.end, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.i
  %revision_id = getelementptr inbounds %struct.netxen_hardware_context, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %revision_id to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %revision_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 47, i8 %11)
  %cmp3 = icmp ugt i8 %11, 47
  call void @__sanitizer_cov_trace_const_cmp8(i64 75499520, i64 %offset)
  %cmp5 = icmp ult i64 %offset, 75499520
  %or.cond = and i1 %cmp5, %cmp3
  br i1 %or.cond, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %12 = call ptr @memcpy(ptr %qmdata, ptr %buf, i32 %size)
  %13 = ptrtoint ptr %qmdata to i32
  call void @__asan_load8_noabort(i32 %13)
  %qmdata.0.qmdata.0.qmdata.0. = load i64, ptr %qmdata, align 8
  tail call void @netxen_pci_camqm_write_2M(ptr noundef %1, i64 noundef %offset, i64 noundef %qmdata.0.qmdata.0.qmdata.0.) #15
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %14 = call ptr @memcpy(ptr %data, ptr %buf, i32 %size)
  %crb_write = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 54
  %15 = ptrtoint ptr %crb_write to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %crb_write, align 8
  %conv11 = trunc i64 %offset to i32
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %data.0.data.0.data.0. = load i32, ptr %data, align 4
  %call12 = tail call i32 %16(ptr noundef %1, i32 noundef %conv11, i32 noundef %data.0.data.0.data.0.) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then10, %lor.lhs.false.i.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %if.then1.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size, %if.else ], [ %size, %if.then10 ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end12.i.cleanup_crit_edge ], [ -22, %if.then1.i.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %qmdata)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_pci_camqm_read_2M(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @netxen_pci_camqm_write_2M(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_sysfs_read_mem(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  %data = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #15
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %data, align 8, !annotation !390
  %flags.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 36
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp.not.i = icmp eq i32 %size, 8
  %and1.i = and i64 %offset, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  %or.cond.i = and i1 %cmp.not.i, %tobool2.not.i
  br i1 %or.cond.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %pci_mem_read = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 55
  %5 = ptrtoint ptr %pci_mem_read to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pci_mem_read, align 4
  %call3 = call i32 %6(ptr noundef %1, i64 noundef %offset, ptr noundef nonnull %data) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %data, align 8
  %9 = ptrtoint ptr %buf to i32
  call void @__asan_storeN_noabort(i32 %9, i32 8)
  store i64 %8, ptr %buf, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 8, %if.end5 ], [ -5, %if.end.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_sysfs_write_mem(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %flags.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 36
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %size)
  %cmp.not.i = icmp eq i32 %size, 8
  %and1.i = and i64 %offset, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.not.i = icmp eq i64 %and1.i, 0
  %or.cond.i = and i1 %cmp.not.i, %tobool2.not.i
  br i1 %or.cond.i, label %if.end, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %5 = load i64, ptr %buf, align 1
  %pci_mem_write = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 56
  %6 = ptrtoint ptr %pci_mem_write to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pci_mem_write, align 8
  %call3 = tail call i32 %7(ptr noundef %1, i64 noundef %offset, i64 noundef %5) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  %size. = select i1 %tobool.not, i32 8, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %size., %if.end ], [ -5, %entry.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_sysfs_read_dimm(ptr nocapture noundef readnone %filp, ptr nocapture noundef readonly %kobj, ptr nocapture noundef readonly %attr, ptr nocapture noundef writeonly %buf, i64 noundef %offset, i32 noundef %size) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %kobj, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %netdev2 = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %netdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev2, align 4
  %size3 = getelementptr inbounds %struct.bin_attribute, ptr %attr, i32 0, i32 1
  %4 = ptrtoint ptr %size3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %size)
  %cmp = icmp ugt i32 %5, %size
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.164) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %crb_read = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 53
  %6 = ptrtoint ptr %crb_read to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %crb_read, align 4
  %call4 = tail call i32 %7(ptr noundef %1, i32 noundef 136323672) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %tobool.not = icmp sgt i32 %call4, -1
  br i1 %tobool.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.165) #19
  br label %out

if.end6:                                          ; preds = %if.end
  %shr = lshr i32 %call4, 7
  %8 = trunc i32 %shr to i8
  %conv = and i8 %8, 15
  %shr8 = lshr i32 %call4, 11
  %9 = trunc i32 %shr8 to i8
  %conv10 = and i8 %9, 15
  %shr11 = lshr i32 %call4, 15
  %shr14 = lshr i32 %call4, 21
  %10 = trunc i32 %shr14 to i8
  %conv16 = and i8 %10, 15
  %shr17 = lshr i32 %call4, 18
  %conv19 = and i32 %shr17, 3
  %conv21133 = and i32 %call4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv21133)
  %tobool24.not = icmp eq i32 %conv21133, 0
  br i1 %tobool24.not, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.166) #19
  br label %out

if.end26:                                         ; preds = %if.end6
  %shr27 = lshr i32 %call4, 25
  %11 = trunc i32 %shr27 to i8
  %12 = zext i32 %shr27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.195)
  switch i32 %shr27, label %sw.default [
    i32 1, label %if.end26.sw.epilog_crit_edge
    i32 2, label %if.end26.sw.epilog_crit_edge135
    i32 4, label %if.end26.sw.epilog_crit_edge136
    i32 8, label %if.end26.sw.epilog_crit_edge137
    i32 16, label %if.end26.sw.epilog_crit_edge138
    i32 32, label %if.end26.sw.epilog_crit_edge139
  ]

if.end26.sw.epilog_crit_edge139:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end26.sw.epilog_crit_edge138:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end26.sw.epilog_crit_edge137:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end26.sw.epilog_crit_edge136:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end26.sw.epilog_crit_edge135:                  ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end26.sw.epilog_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.default:                                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.167, i32 noundef %shr27) #19
  br label %out

sw.epilog:                                        ; preds = %if.end26.sw.epilog_crit_edge, %if.end26.sw.epilog_crit_edge135, %if.end26.sw.epilog_crit_edge136, %if.end26.sw.epilog_crit_edge137, %if.end26.sw.epilog_crit_edge138, %if.end26.sw.epilog_crit_edge139
  %and34 = and i32 %call4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and34)
  %tobool35.not = icmp eq i32 %and34, 0
  %13 = trunc i32 %call4 to i8
  %14 = lshr i8 %13, 3
  %conv39 = and i8 %14, 15
  %dimm.sroa.8.0 = select i1 %tobool35.not, i8 %conv39, i8 8
  %and42 = and i32 %call4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end46, label %sw.epilog.out_crit_edge

sw.epilog.out_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end46:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool47.not = icmp eq i8 %conv, 0
  br i1 %tobool47.not, label %if.then48, label %if.end50

if.then48:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.168, i32 noundef 0) #19
  br label %out

if.end50:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv10)
  %tobool51.not = icmp eq i8 %conv10, 0
  br i1 %tobool51.not, label %if.then52, label %if.end54

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.169, i32 noundef 0) #19
  br label %out

if.end54:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv16)
  %tobool55.not = icmp eq i8 %conv16, 0
  br i1 %tobool55.not, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  tail call void (ptr, ptr, ...) @netdev_err(ptr noundef %3, ptr noundef nonnull @.str.170, i32 noundef 0) #19
  br label %out

if.end58:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #17
  %15 = and i32 %shr11, 3
  %conv60 = add nuw nsw i32 %15, 1
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.netxen_sysfs_read_dimm, i32 0, i32 %conv19
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %conv73 = zext i8 %conv to i32
  %conv74 = zext i8 %conv10 to i32
  %shl75 = shl nuw nsw i32 1, %conv74
  %mul = shl nuw nsw i32 %shl75, %conv73
  %conv78 = zext i8 %conv16 to i32
  %mul77 = mul nuw nsw i32 %conv60, %conv78
  %mul79 = mul i32 %mul77, %mul
  %mul81 = mul i32 %mul79, %switch.load
  %div = sdiv i32 %mul81, 8
  %div84134 = lshr i32 %div, 20
  br label %out

out:                                              ; preds = %if.end58, %if.then56, %if.then52, %if.then48, %sw.epilog.out_crit_edge, %sw.default, %if.then25, %if.then5
  %dimm.sroa.0.0 = phi i8 [ -1, %if.then5 ], [ 1, %sw.default ], [ 1, %if.end58 ], [ 1, %if.then56 ], [ 1, %if.then52 ], [ 1, %if.then48 ], [ 0, %if.then25 ], [ 1, %sw.epilog.out_crit_edge ]
  %dimm.sroa.8.1 = phi i8 [ 0, %if.then5 ], [ 0, %sw.default ], [ %dimm.sroa.8.0, %if.end58 ], [ %dimm.sroa.8.0, %if.then56 ], [ %dimm.sroa.8.0, %if.then52 ], [ %dimm.sroa.8.0, %if.then48 ], [ 0, %if.then25 ], [ %dimm.sroa.8.0, %sw.epilog.out_crit_edge ]
  %dimm.sroa.10.0 = phi i8 [ 0, %if.then5 ], [ %11, %sw.default ], [ %11, %if.end58 ], [ %11, %if.then56 ], [ %11, %if.then52 ], [ %11, %if.then48 ], [ 0, %if.then25 ], [ %11, %sw.epilog.out_crit_edge ]
  %dimm.sroa.13118.0 = phi i32 [ 0, %if.then5 ], [ 0, %sw.default ], [ %div84134, %if.end58 ], [ 0, %if.then56 ], [ 0, %if.then52 ], [ 0, %if.then48 ], [ 0, %if.then25 ], [ 512, %sw.epilog.out_crit_edge ]
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %dimm.sroa.0.0, ptr %buf, align 1
  %dimm.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 1
  %18 = ptrtoint ptr %dimm.sroa.8.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %dimm.sroa.8.1, ptr %dimm.sroa.8.0..sroa_idx, align 1
  %dimm.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 2
  %19 = ptrtoint ptr %dimm.sroa.10.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %dimm.sroa.10.0, ptr %dimm.sroa.10.0..sroa_idx, align 1
  %dimm.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 3
  %20 = ptrtoint ptr %dimm.sroa.13.0..sroa_idx to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %dimm.sroa.13.0..sroa_idx, align 1
  %dimm.sroa.13118.0..sroa_idx = getelementptr inbounds i8, ptr %buf, i32 4
  %21 = ptrtoint ptr %dimm.sroa.13118.0..sroa_idx to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %dimm.sroa.13118.0, ptr %dimm.sroa.13118.0..sroa_idx, align 1
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 8, %out ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @netdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msix(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_msi(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netxen_nic_detach_func(ptr noundef %adapter) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %netdev1 = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 1
  %0 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netdev1, align 4
  tail call void @netif_device_detach(ptr noundef %1) #15
  %state.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 70
  %call3.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not4.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not4.i, label %entry.netxen_cancel_fw_work.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.netxen_cancel_fw_work.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_cancel_fw_work.exit

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  tail call void @msleep(i32 noundef 10) #15
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %state.i) #15
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %while.body.i.netxen_cancel_fw_work.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body.i

while.body.i.netxen_cancel_fw_work.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_cancel_fw_work.exit

netxen_cancel_fw_work.exit:                       ; preds = %while.body.i.netxen_cancel_fw_work.exit_crit_edge, %entry.netxen_cancel_fw_work.exit_crit_edge
  %fw_work.i = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 67
  %call1.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %fw_work.i) #15
  %state.i17 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %state.i17 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %state.i17, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %netxen_cancel_fw_work.exit.if.end_crit_edge, label %if.then

netxen_cancel_fw_work.exit.if.end_crit_edge:      ; preds = %netxen_cancel_fw_work.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %netxen_cancel_fw_work.exit
  tail call void @rtnl_lock() #15
  %4 = ptrtoint ptr %state.i17 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i17, align 4
  %and1.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.netxen_nic_down.exit_crit_edge, label %if.then.i

if.then.netxen_nic_down.exit_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_down.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @__netxen_nic_down(ptr noundef %adapter, ptr noundef %1) #15
  br label %netxen_nic_down.exit

netxen_nic_down.exit:                             ; preds = %if.then.i, %if.then.netxen_nic_down.exit_crit_edge
  tail call void @rtnl_unlock() #15
  br label %if.end

if.end:                                           ; preds = %netxen_nic_down.exit, %netxen_cancel_fw_work.exit.if.end_crit_edge
  %tx_timeout_task = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 68
  %call2 = tail call zeroext i1 @cancel_work_sync(ptr noundef %tx_timeout_task) #15
  tail call fastcc void @netxen_nic_detach(ptr noundef %adapter)
  %portnum = getelementptr inbounds %struct.netxen_adapter, ptr %adapter, i32 0, i32 16
  %6 = ptrtoint ptr %portnum to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %portnum, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp = icmp eq i8 %7, 0
  br i1 %cmp, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netxen_free_dummy_dma(ptr noundef %adapter) #15
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %call6 = tail call fastcc i32 @nx_decr_dev_ref_cnt(ptr noundef %adapter)
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %state.i) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_save_state(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netxen_nic_wol_supported(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_wake(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_io_error_detected(ptr noundef %pdev, i32 noundef %state) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cmp = icmp eq i32 %state, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call i32 @netxen_pcie_sem_lock(ptr noundef %1, i32 noundef 5, i32 noundef 0) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %crb_read.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 53
  %2 = ptrtoint ptr %crb_read.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crb_read.i, align 4
  %call1.i = tail call i32 %3(ptr noundef %1, i32 noundef 136323392) #15
  %4 = zext i32 %call1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.196)
  switch i32 %call1.i, label %nx_dev_request_aer.exit [
    i32 6, label %if.end.i.if.end3_crit_edge
    i32 3, label %if.then4.i
  ]

if.end.i.if.end3_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end3

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %crb_write.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 54
  %5 = ptrtoint ptr %crb_write.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %crb_write.i, align 8
  %call5.i = tail call i32 %6(ptr noundef %1, i32 noundef 136323392, i32 noundef 6) #15
  br label %if.end3

nx_dev_request_aer.exit:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @netxen_pcie_sem_unlock(ptr noundef %1, i32 noundef 5) #15
  br label %cleanup

if.end3:                                          ; preds = %if.then4.i, %if.end.i.if.end3_crit_edge
  tail call void @netxen_pcie_sem_unlock(ptr noundef %1, i32 noundef 5) #15
  tail call fastcc void @netxen_nic_detach_func(ptr noundef %1)
  tail call void @pci_disable_device(ptr noundef %pdev) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %nx_dev_request_aer.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 3, %if.end3 ], [ 4, %entry.cleanup_crit_edge ], [ 5, %nx_dev_request_aer.exit ], [ 5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_io_slot_reset(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @pci_enable_device(ptr noundef %pdev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.netxen_nic_attach_func.exit_crit_edge

entry.netxen_nic_attach_func.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %netxen_nic_attach_func.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i = tail call i32 @pci_set_power_state(ptr noundef %pdev, i32 noundef 0) #15
  tail call void @pci_restore_state(ptr noundef %pdev) #15
  %call2.i = tail call fastcc i32 @netxen_nic_attach_late_func(ptr noundef %pdev) #15
  br label %netxen_nic_attach_func.exit

netxen_nic_attach_func.exit:                      ; preds = %if.end.i, %entry.netxen_nic_attach_func.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call.i, %entry.netxen_nic_attach_func.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  %cond = select i1 %tobool.not, i32 5, i32 4
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_power_state(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_restore_state(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @netxen_nic_attach_late_func(ptr noundef %pdev) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %netdev1 = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %netdev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %netdev1, align 4
  tail call void @pci_set_master(ptr noundef %pdev) #15
  %crb_win = getelementptr inbounds %struct.netxen_hardware_context, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %crb_win to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %crb_win, align 8
  %ocm_win = getelementptr inbounds %struct.netxen_hardware_context, ptr %1, i32 0, i32 7
  %5 = ptrtoint ptr %ocm_win to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %ocm_win, align 4
  %call3 = tail call fastcc i32 @netxen_start_firmware(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.172) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.if.end14_crit_edge, label %if.then5

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.then5:                                         ; preds = %if.end
  %call6 = tail call fastcc i32 @netxen_nic_attach(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.then5.err_out_crit_edge

if.then5.err_out_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %err_out

if.end9:                                          ; preds = %if.then5
  tail call void @rtnl_lock() #15
  %8 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %state.i, align 4
  %and1.i.i.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %netxen_nic_up.exit.thread, label %netxen_nic_up.exit

netxen_nic_up.exit.thread:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @rtnl_unlock() #15
  br label %if.end13

netxen_nic_up.exit:                               ; preds = %if.end9
  %call1.i = tail call fastcc i32 @__netxen_nic_up(ptr noundef %1, ptr noundef %3) #15
  tail call void @rtnl_unlock() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool11.not = icmp eq i32 %call1.i, 0
  br i1 %tobool11.not, label %netxen_nic_up.exit.if.end13_crit_edge, label %err_out_detach

netxen_nic_up.exit.if.end13_crit_edge:            ; preds = %netxen_nic_up.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.end13:                                         ; preds = %netxen_nic_up.exit.if.end13_crit_edge, %netxen_nic_up.exit.thread
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 2304
  tail call fastcc void @netxen_config_indev_addr(ptr noundef %add.ptr.i.i, ptr noundef %3, i32 noundef 1) #15
  %ip_list.i = getelementptr i8, ptr %3, i32 2452
  %10 = ptrtoint ptr %ip_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ip_list.i, align 4
  %cmp7.not1.i = icmp eq ptr %11, %ip_list.i
  br i1 %cmp7.not1.i, label %if.end13.if.end14_crit_edge, label %if.end13.for.body.i_crit_edge

if.end13.for.body.i_crit_edge:                    ; preds = %if.end13
  br label %for.body.i

if.end13.if.end14_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end13.for.body.i_crit_edge
  %pos.02.i = phi ptr [ %tmp_pos.0.i, %for.body.i.for.body.i_crit_edge ], [ %11, %if.end13.for.body.i_crit_edge ]
  %12 = ptrtoint ptr %pos.02.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %tmp_pos.0.i = load ptr, ptr %pos.02.i, align 4
  %ip_addr.i = getelementptr inbounds %struct.nx_ip_list, ptr %pos.02.i, i32 0, i32 1
  %13 = ptrtoint ptr %ip_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ip_addr.i, align 4
  %call8.i = tail call i32 @netxen_config_ipaddr(ptr noundef %add.ptr.i.i, i32 noundef %14, i32 noundef 2) #15
  %cmp7.not.i = icmp eq ptr %tmp_pos.0.i, %ip_list.i
  br i1 %cmp7.not.i, label %for.body.i.if.end14_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.if.end14_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end14

if.end14:                                         ; preds = %for.body.i.if.end14_crit_edge, %if.end13.if.end14_crit_edge, %if.end.if.end14_crit_edge
  tail call void @netif_device_attach(ptr noundef %3) #15
  %fw_work.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 67
  tail call void @__init_work(ptr noundef %fw_work.i, i32 noundef 0) #15
  %15 = ptrtoint ptr %fw_work.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -64, ptr %fw_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 67, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.122, ptr noundef nonnull @netxen_schedule_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  %entry8.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 67, i32 0, i32 1
  %16 = ptrtoint ptr %entry8.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %entry8.i, ptr %entry8.i, align 4
  %prev.i.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 67, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %entry8.i, ptr %prev.i.i, align 4
  %func11.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 67, i32 0, i32 2
  %18 = ptrtoint ptr %func11.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @netxen_fw_poll_work, ptr %func11.i, align 4
  %timer.i = getelementptr inbounds %struct.netxen_adapter, ptr %1, i32 0, i32 67, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.124, ptr noundef nonnull @netxen_schedule_work.__key.123) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %19 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %19, ptr noundef %fw_work.i, i32 noundef 200) #15
  br label %cleanup

err_out_detach:                                   ; preds = %netxen_nic_up.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @netxen_nic_detach(ptr noundef %1)
  br label %err_out

err_out:                                          ; preds = %err_out_detach, %if.then5.err_out_crit_edge
  %err.0 = phi i32 [ %call6, %if.then5.err_out_crit_edge ], [ %call1.i, %err_out_detach ]
  %call15 = tail call fastcc i32 @nx_decr_dev_ref_cnt(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end14, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %err.0, %err_out ], [ 0, %if.end14 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_suspend(ptr noundef %dev_d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev_d, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call fastcc void @netxen_nic_detach_func(ptr noundef %1)
  %call1 = tail call i32 @netxen_nic_wol_supported(ptr noundef %1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 @device_wakeup_enable(ptr noundef %dev_d) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_nic_resume(ptr noundef %dev_d) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev_d, i32 -136
  %call = tail call fastcc i32 @netxen_nic_attach_late_func(ptr noundef %add.ptr)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_inetaddr_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ifa_dev = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %ifa_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifa_dev, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.done_crit_edge, label %cond.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

cond.end:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cmp = icmp eq i32 %event, 1
  %cond3 = select i1 %cmp, i32 2, i32 3
  %cmp4101 = icmp eq ptr %3, null
  br i1 %cmp4101, label %cond.end.done_crit_edge, label %cond.end.if.end_crit_edge

cond.end.if.end_crit_edge:                        ; preds = %cond.end
  br label %if.end

cond.end.done_crit_edge:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end:                                           ; preds = %if.then5.if.end_crit_edge, %cond.end.if.end_crit_edge
  %dev.0102 = phi ptr [ %call6, %if.then5.if.end_crit_edge ], [ %3, %cond.end.if.end_crit_edge ]
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev.0102, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %5, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  %call6 = tail call ptr @vlan_dev_real_dev(ptr noundef nonnull %dev.0102) #15
  %cmp4 = icmp eq ptr %call6, null
  br i1 %cmp4, label %if.then5.done_crit_edge, label %if.then5.if.end_crit_edge

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then5.done_crit_edge:                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end7:                                          ; preds = %if.end
  %event.off = add i32 %event, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event.off)
  %switch = icmp ult i32 %event.off, 2
  br i1 %switch, label %if.then10, label %if.end7.done_crit_edge

if.end7.done_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.then10:                                        ; preds = %if.end7
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev.0102, i32 0, i32 14
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags.i, align 8
  %and.i68 = and i32 %7, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool.not.i69 = icmp ne i32 %and.i68, 0
  %and1.i = and i64 %5, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.i = icmp ne i64 %and1.i, 0
  %or.cond = select i1 %tobool.not.i69, i1 %tobool2.i, i1 false
  br i1 %or.cond, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then10
  %8 = tail call i32 @llvm.read_register.i32(metadata !379) #15
  %and.i.i.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %11, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !409
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.then12.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then12.rcu_read_lock.exit_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then12
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.146, i32 noundef 696, ptr noundef nonnull @.str.147) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then12.rcu_read_lock.exit_crit_edge
  %call13 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true17

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true17:                                  ; preds = %land.lhs.true
  %.b67 = load i1, ptr @netxen_inetaddr_event.__warned, align 1
  br i1 %.b67, label %land.lhs.true17.do.end_crit_edge, label %if.then19

land.lhs.true17.do.end_crit_edge:                 ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @netxen_inetaddr_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 3407, ptr noundef nonnull @.str.174) #15
  br label %do.end

do.end:                                           ; preds = %if.then19, %land.lhs.true17.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn103 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp25.not104 = icmp eq ptr %.pn103, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp25.not104, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn105 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn103, %do.end.for.body_crit_edge ]
  %slave.0 = getelementptr i8, ptr %.pn105, i32 -40
  %call26 = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %slave.0) #15
  %cmp27 = icmp eq ptr %call26, %dev.0102
  br i1 %cmp27, label %if.then28, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then28:                                        ; preds = %for.body
  %netdev_ops.i = getelementptr i8, ptr %.pn105, i32 80
  %12 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp ne ptr %13, @netxen_netdev_ops
  %add.ptr.i.i = getelementptr i8, ptr %.pn105, i32 2264
  %tobool.not.i71 = icmp eq ptr %add.ptr.i.i, null
  %or.cond.i = or i1 %tobool.not.i71, %cmp.i
  br i1 %or.cond.i, label %if.then28.for.inc_crit_edge, label %if.end2.i

if.then28.for.inc_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end2.i:                                        ; preds = %if.then28
  %revision_id.i.i = getelementptr i8, ptr %.pn105, i32 2389
  %14 = ptrtoint ptr %revision_id.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %revision_id.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %15)
  %cmp.i.i = icmp ult i8 %15, 38
  br i1 %cmp.i.i, label %if.end2.i.for.inc_crit_edge, label %netxen_destip_supported.exit.i

if.end2.i.for.inc_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

netxen_destip_supported.exit.i:                   ; preds = %if.end2.i
  %cut_through.i.i = getelementptr i8, ptr %.pn105, i32 2388
  %16 = ptrtoint ptr %cut_through.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cut_through.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.not.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.not.i, label %netxen_config_checkdev.exit, label %netxen_destip_supported.exit.i.for.inc_crit_edge

netxen_destip_supported.exit.i.for.inc_crit_edge: ; preds = %netxen_destip_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

netxen_config_checkdev.exit:                      ; preds = %netxen_destip_supported.exit.i
  %is_up.i = getelementptr i8, ptr %.pn105, i32 2494
  %18 = ptrtoint ptr %is_up.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %is_up.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %19)
  %cmp7.not.i = icmp eq i16 %19, 777
  br i1 %cmp7.not.i, label %if.end31, label %netxen_config_checkdev.exit.for.inc_crit_edge

netxen_config_checkdev.exit.for.inc_crit_edge:    ; preds = %netxen_config_checkdev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end31:                                         ; preds = %netxen_config_checkdev.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @netxen_list_config_ip(ptr noundef nonnull %add.ptr.i.i, ptr noundef %ptr, i32 noundef %cond3)
  br label %for.inc

for.inc:                                          ; preds = %if.end31, %netxen_config_checkdev.exit.for.inc_crit_edge, %netxen_destip_supported.exit.i.for.inc_crit_edge, %if.end2.i.for.inc_crit_edge, %if.then28.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %20 = ptrtoint ptr %.pn105 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn = load volatile ptr, ptr %.pn105, align 4
  %cmp25.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp25.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i72 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i72, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i75

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i75:                                ; preds = %for.end
  %call1.i73 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool.not.i74 = icmp eq i32 %call1.i73, 0
  br i1 %tobool.not.i74, label %land.lhs.true.i75.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i77

land.lhs.true.i75.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i77:                               ; preds = %land.lhs.true.i75
  %.b4.i76 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i76, label %land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge, label %if.then.i78

land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i78:                                      ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.146, i32 noundef 724, ptr noundef nonnull @.str.148) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i78, %land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i75.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !411
  %21 = tail call i32 @llvm.read_register.i32(metadata !379) #15
  %and.i.i.i.i.i79 = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i79 to ptr
  %preempt_count.i.i.i.i80 = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %preempt_count.i.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %preempt_count.i.i.i.i80, align 4
  %sub.i.i.i = add i32 %24, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i80, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %done

if.else:                                          ; preds = %if.then10
  %netdev_ops.i81 = getelementptr inbounds %struct.net_device, ptr %dev.0102, i32 0, i32 16
  %25 = ptrtoint ptr %netdev_ops.i81 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %netdev_ops.i81, align 8
  %cmp.i82 = icmp ne ptr %26, @netxen_netdev_ops
  %add.ptr.i.i83 = getelementptr i8, ptr %dev.0102, i32 2304
  %tobool.not.i84 = icmp eq ptr %add.ptr.i.i83, null
  %or.cond.i85 = or i1 %tobool.not.i84, %cmp.i82
  br i1 %or.cond.i85, label %if.else.done_crit_edge, label %if.end2.i88

if.else.done_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end2.i88:                                      ; preds = %if.else
  %revision_id.i.i86 = getelementptr i8, ptr %dev.0102, i32 2429
  %27 = ptrtoint ptr %revision_id.i.i86 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %revision_id.i.i86, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %28)
  %cmp.i.i87 = icmp ult i8 %28, 38
  br i1 %cmp.i.i87, label %if.end2.i88.done_crit_edge, label %netxen_destip_supported.exit.i91

if.end2.i88.done_crit_edge:                       ; preds = %if.end2.i88
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

netxen_destip_supported.exit.i91:                 ; preds = %if.end2.i88
  %cut_through.i.i89 = getelementptr i8, ptr %dev.0102, i32 2428
  %29 = ptrtoint ptr %cut_through.i.i89 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %cut_through.i.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.not.i90 = icmp eq i8 %30, 0
  br i1 %tobool.not.i.not.i90, label %netxen_config_checkdev.exit96, label %netxen_destip_supported.exit.i91.done_crit_edge

netxen_destip_supported.exit.i91.done_crit_edge:  ; preds = %netxen_destip_supported.exit.i91
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

netxen_config_checkdev.exit96:                    ; preds = %netxen_destip_supported.exit.i91
  %is_up.i92 = getelementptr i8, ptr %dev.0102, i32 2534
  %31 = ptrtoint ptr %is_up.i92 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %is_up.i92, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %32)
  %cmp7.not.i93 = icmp eq i16 %32, 777
  br i1 %cmp7.not.i93, label %if.end45, label %netxen_config_checkdev.exit96.done_crit_edge

netxen_config_checkdev.exit96.done_crit_edge:     ; preds = %netxen_config_checkdev.exit96
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end45:                                         ; preds = %netxen_config_checkdev.exit96
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @netxen_list_config_ip(ptr noundef nonnull %add.ptr.i.i83, ptr noundef %ptr, i32 noundef %cond3)
  br label %done

done:                                             ; preds = %if.end45, %netxen_config_checkdev.exit96.done_crit_edge, %netxen_destip_supported.exit.i91.done_crit_edge, %if.end2.i88.done_crit_edge, %if.else.done_crit_edge, %rcu_read_unlock.exit, %if.end7.done_crit_edge, %if.then5.done_crit_edge, %cond.end.done_crit_edge, %entry.done_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxen_netdev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %cmp108 = icmp eq ptr %1, null
  br i1 %cmp108, label %entry.done_crit_edge, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end:                                           ; preds = %if.then2.if.end_crit_edge, %entry.if.end_crit_edge
  %dev.0109 = phi ptr [ %call3, %if.then2.if.end_crit_edge ], [ %1, %entry.if.end_crit_edge ]
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %dev.0109, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %3, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr @vlan_dev_real_dev(ptr noundef nonnull %dev.0109) #15
  %cmp = icmp eq ptr %call3, null
  br i1 %cmp, label %if.then2.done_crit_edge, label %if.then2.if.end_crit_edge

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then2.done_crit_edge:                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end4:                                          ; preds = %if.end
  %event.off = add i32 %event, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event.off)
  %switch = icmp ult i32 %event.off, 2
  br i1 %switch, label %if.then7, label %if.end4.done_crit_edge

if.end4.done_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.then7:                                         ; preds = %if.end4
  %flags.i = getelementptr inbounds %struct.net_device, ptr %dev.0109, i32 0, i32 14
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 8
  %and.i68 = and i32 %5, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i68)
  %tobool.not.i69 = icmp ne i32 %and.i68, 0
  %and1.i = and i64 %3, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i)
  %tobool2.i = icmp ne i64 %and1.i, 0
  %or.cond = select i1 %tobool.not.i69, i1 %tobool2.i, i1 false
  br i1 %or.cond, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.then7
  %6 = tail call i32 @llvm.read_register.i32(metadata !379) #15
  %and.i.i.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %9, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !409
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i, label %if.then9.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then9.rcu_read_lock.exit_crit_edge:            ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then9
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.146, i32 noundef 696, ptr noundef nonnull @.str.147) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then9.rcu_read_lock.exit_crit_edge
  %call10 = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true13

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true13:                                  ; preds = %land.lhs.true
  %.b67 = load i1, ptr @netxen_netdev_event.__warned, align 1
  br i1 %.b67, label %land.lhs.true13.do.end_crit_edge, label %if.then15

land.lhs.true13.do.end_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @netxen_netdev_event.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 3362, ptr noundef nonnull @.str.174) #15
  br label %do.end

do.end:                                           ; preds = %if.then15, %land.lhs.true13.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn110 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp21.not111 = icmp eq ptr %.pn110, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp21.not111, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn112 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn110, %do.end.for.body_crit_edge ]
  %slave.0 = getelementptr i8, ptr %.pn112, i32 -40
  %call22 = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef %slave.0) #15
  %cmp23 = icmp eq ptr %call22, %dev.0109
  br i1 %cmp23, label %if.then24, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then24:                                        ; preds = %for.body
  %netdev_ops.i = getelementptr i8, ptr %.pn112, i32 80
  %10 = ptrtoint ptr %netdev_ops.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %netdev_ops.i, align 8
  %cmp.i = icmp ne ptr %11, @netxen_netdev_ops
  %add.ptr.i.i = getelementptr i8, ptr %.pn112, i32 2264
  %tobool.not.i71 = icmp eq ptr %add.ptr.i.i, null
  %or.cond.i = or i1 %tobool.not.i71, %cmp.i
  br i1 %or.cond.i, label %if.then24.for.inc_crit_edge, label %if.end2.i

if.then24.for.inc_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end2.i:                                        ; preds = %if.then24
  %revision_id.i.i = getelementptr i8, ptr %.pn112, i32 2389
  %12 = ptrtoint ptr %revision_id.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %revision_id.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %13)
  %cmp.i.i = icmp ult i8 %13, 38
  br i1 %cmp.i.i, label %if.end2.i.for.inc_crit_edge, label %netxen_destip_supported.exit.i

if.end2.i.for.inc_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

netxen_destip_supported.exit.i:                   ; preds = %if.end2.i
  %cut_through.i.i = getelementptr i8, ptr %.pn112, i32 2388
  %14 = ptrtoint ptr %cut_through.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %cut_through.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i.not.i, label %netxen_config_checkdev.exit, label %netxen_destip_supported.exit.i.for.inc_crit_edge

netxen_destip_supported.exit.i.for.inc_crit_edge: ; preds = %netxen_destip_supported.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

netxen_config_checkdev.exit:                      ; preds = %netxen_destip_supported.exit.i
  %is_up.i = getelementptr i8, ptr %.pn112, i32 2494
  %16 = ptrtoint ptr %is_up.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %is_up.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %17)
  %cmp7.not.i = icmp eq i16 %17, 777
  br i1 %cmp7.not.i, label %if.end27, label %netxen_config_checkdev.exit.for.inc_crit_edge

netxen_config_checkdev.exit.for.inc_crit_edge:    ; preds = %netxen_config_checkdev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end27:                                         ; preds = %netxen_config_checkdev.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @netxen_config_indev_addr(ptr noundef nonnull %add.ptr.i.i, ptr noundef nonnull %1, i32 noundef %event)
  br label %for.inc

for.inc:                                          ; preds = %if.end27, %netxen_config_checkdev.exit.for.inc_crit_edge, %netxen_destip_supported.exit.i.for.inc_crit_edge, %if.end2.i.for.inc_crit_edge, %if.then24.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %18 = ptrtoint ptr %.pn112 to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn = load volatile ptr, ptr %.pn112, align 4
  %cmp21.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp21.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end.for.end_crit_edge
  %call.i72 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i72, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i75

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i75:                                ; preds = %for.end
  %call1.i73 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool.not.i74 = icmp eq i32 %call1.i73, 0
  br i1 %tobool.not.i74, label %land.lhs.true.i75.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i77

land.lhs.true.i75.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i77:                               ; preds = %land.lhs.true.i75
  %.b4.i76 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i76, label %land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge, label %if.then.i78

land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i78:                                      ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.146, i32 noundef 724, ptr noundef nonnull @.str.148) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i78, %land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i75.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !411
  %19 = tail call i32 @llvm.read_register.i32(metadata !379) #15
  %and.i.i.i.i.i79 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i79 to ptr
  %preempt_count.i.i.i.i80 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %preempt_count.i.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %preempt_count.i.i.i.i80, align 4
  %sub.i.i.i = add i32 %22, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i80, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %done

if.else:                                          ; preds = %if.then7
  %netdev_ops.i81 = getelementptr inbounds %struct.net_device, ptr %dev.0109, i32 0, i32 16
  %23 = ptrtoint ptr %netdev_ops.i81 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %netdev_ops.i81, align 8
  %cmp.i82 = icmp ne ptr %24, @netxen_netdev_ops
  %add.ptr.i.i83 = getelementptr i8, ptr %dev.0109, i32 2304
  %tobool.not.i84 = icmp eq ptr %add.ptr.i.i83, null
  %or.cond.i85 = or i1 %tobool.not.i84, %cmp.i82
  br i1 %or.cond.i85, label %if.else.done_crit_edge, label %if.end2.i88

if.else.done_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end2.i88:                                      ; preds = %if.else
  %revision_id.i.i86 = getelementptr i8, ptr %dev.0109, i32 2429
  %25 = ptrtoint ptr %revision_id.i.i86 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %revision_id.i.i86, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %26)
  %cmp.i.i87 = icmp ult i8 %26, 38
  br i1 %cmp.i.i87, label %if.end2.i88.done_crit_edge, label %netxen_destip_supported.exit.i91

if.end2.i88.done_crit_edge:                       ; preds = %if.end2.i88
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

netxen_destip_supported.exit.i91:                 ; preds = %if.end2.i88
  %cut_through.i.i89 = getelementptr i8, ptr %dev.0109, i32 2428
  %27 = ptrtoint ptr %cut_through.i.i89 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cut_through.i.i89, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.not.i90 = icmp eq i8 %28, 0
  br i1 %tobool.not.i.not.i90, label %netxen_config_checkdev.exit96, label %netxen_destip_supported.exit.i91.done_crit_edge

netxen_destip_supported.exit.i91.done_crit_edge:  ; preds = %netxen_destip_supported.exit.i91
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

netxen_config_checkdev.exit96:                    ; preds = %netxen_destip_supported.exit.i91
  %is_up.i92 = getelementptr i8, ptr %dev.0109, i32 2534
  %29 = ptrtoint ptr %is_up.i92 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %is_up.i92, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 777, i16 %30)
  %cmp7.not.i93 = icmp eq i16 %30, 777
  br i1 %cmp7.not.i93, label %if.end40, label %netxen_config_checkdev.exit96.done_crit_edge

netxen_config_checkdev.exit96.done_crit_edge:     ; preds = %netxen_config_checkdev.exit96
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

if.end40:                                         ; preds = %netxen_config_checkdev.exit96
  %cmp42 = icmp eq ptr %1, %dev.0109
  br i1 %cmp42, label %if.then43, label %if.end40.if.end44_crit_edge

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then43:                                        ; preds = %if.end40
  %31 = tail call i32 @llvm.read_register.i32(metadata !379) #15
  %and.i.i.i.i.i.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %34, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !409
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #15
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i.i, label %if.then43.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then43.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then43
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.146, i32 noundef 696, ptr noundef nonnull @.str.147) #15
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then43.rcu_read_lock.exit.i_crit_edge
  %call1.i99 = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef nonnull %1) #15
  %tobool.not.i100 = icmp eq ptr %call1.i99, null
  br i1 %tobool.not.i100, label %land.lhs.true33.critedge.i, label %land.lhs.true.i101

land.lhs.true.i101:                               ; preds = %rcu_read_lock.exit.i
  %flags.i.i = getelementptr inbounds %struct.net_device, ptr %call1.i99, i32 0, i32 14
  %35 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %36, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i53.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i53.i, label %land.lhs.true.i101.if.end36.critedge52.i_crit_edge, label %netif_is_bond_master.exit.i

land.lhs.true.i101.if.end36.critedge52.i_crit_edge: ; preds = %land.lhs.true.i101
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.critedge52.i

netif_is_bond_master.exit.i:                      ; preds = %land.lhs.true.i101
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %call1.i99, i32 0, i32 15
  %37 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %priv_flags.i.i, align 16
  %and1.i.i = and i64 %38, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i.i)
  %tobool2.i.not.i = icmp eq i64 %and1.i.i, 0
  br i1 %tobool2.i.not.i, label %netif_is_bond_master.exit.i.if.end36.critedge52.i_crit_edge, label %land.lhs.true3.i

netif_is_bond_master.exit.i.if.end36.critedge52.i_crit_edge: ; preds = %netif_is_bond_master.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36.critedge52.i

land.lhs.true3.i:                                 ; preds = %netif_is_bond_master.exit.i
  %39 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags.i, align 8
  %and.i55.i = and i32 %40, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i55.i)
  %tobool.not.i56.i = icmp eq i32 %and.i55.i, 0
  br i1 %tobool.not.i56.i, label %land.lhs.true3.i.if.then.i102_crit_edge, label %netif_is_bond_slave.exit.i

land.lhs.true3.i.if.then.i102_crit_edge:          ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i102

netif_is_bond_slave.exit.i:                       ; preds = %land.lhs.true3.i
  %41 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %priv_flags.i, align 16
  %and1.i58.i = and i64 %42, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and1.i58.i)
  %tobool2.i59.not.i = icmp eq i64 %and1.i58.i, 0
  br i1 %tobool2.i59.not.i, label %netif_is_bond_slave.exit.i.if.then.i102_crit_edge, label %if.end36.critedge.i

netif_is_bond_slave.exit.i.if.then.i102_crit_edge: ; preds = %netif_is_bond_slave.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i102

if.then.i102:                                     ; preds = %netif_is_bond_slave.exit.i.if.then.i102_crit_edge, %land.lhs.true3.i.if.then.i102_crit_edge
  tail call fastcc void @netxen_config_indev_addr(ptr noundef nonnull %add.ptr.i.i83, ptr noundef nonnull %call1.i99, i32 noundef %event) #15
  %call5.i = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true7.i, label %if.then.i102.do.end.i_crit_edge

if.then.i102.do.end.i_crit_edge:                  ; preds = %if.then.i102
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true7.i:                                 ; preds = %if.then.i102
  %call8.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %land.lhs.true7.i.do.end.i_crit_edge, label %land.lhs.true10.i

land.lhs.true7.i.do.end.i_crit_edge:              ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

land.lhs.true10.i:                                ; preds = %land.lhs.true7.i
  %.b51.i = load i1, ptr @netxen_config_master.__warned, align 1
  br i1 %.b51.i, label %land.lhs.true10.i.do.end.i_crit_edge, label %if.then12.i

land.lhs.true10.i.do.end.i_crit_edge:             ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end.i

if.then12.i:                                      ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @netxen_config_master.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 3327, ptr noundef nonnull @.str.174) #15
  br label %do.end.i

do.end.i:                                         ; preds = %if.then12.i, %land.lhs.true10.i.do.end.i_crit_edge, %land.lhs.true7.i.do.end.i_crit_edge, %if.then.i102.do.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn107.i = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not109.i = icmp eq ptr %.pn107.i, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not109.i, label %do.end.i.if.end31.i_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.if.end31.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %.pn110.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn107.i, %do.end.i.for.body.i_crit_edge ]
  %slave.0111.i = getelementptr i8, ptr %.pn110.i, i32 -40
  %priv_flags.i61.i = getelementptr i8, ptr %.pn110.i, i32 72
  %43 = ptrtoint ptr %priv_flags.i61.i to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %priv_flags.i61.i, align 16
  %and.i62.i = and i64 %44, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i62.i)
  %tobool.i.not.i = icmp eq i64 %and.i62.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true18.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true18.i:                                ; preds = %for.body.i
  %call19.i = tail call ptr @vlan_dev_real_dev(ptr noundef %slave.0111.i) #15
  %cmp20.i = icmp eq ptr %call19.i, %call1.i99
  br i1 %cmp20.i, label %if.then21.i, label %land.lhs.true18.i.for.inc.i_crit_edge

land.lhs.true18.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then21.i:                                      ; preds = %land.lhs.true18.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @netxen_config_indev_addr(ptr noundef %add.ptr.i.i83, ptr noundef %slave.0111.i, i32 noundef %event) #15
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then21.i, %land.lhs.true18.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %45 = ptrtoint ptr %.pn110.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pn.i = load volatile ptr, ptr %.pn110.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not.i, label %for.inc.i.if.end31.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.if.end31.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end31.i

if.end31.i:                                       ; preds = %for.inc.i.if.end31.i_crit_edge, %do.end.i.if.end31.i_crit_edge
  %call.i63.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i63.i, label %if.end31.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i66.i

if.end31.i.rcu_read_unlock.exit.i_crit_edge:      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

land.lhs.true.i66.i:                              ; preds = %if.end31.i
  %call1.i64.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i64.i)
  %tobool.not.i65.i = icmp eq i32 %call1.i64.i, 0
  br i1 %tobool.not.i65.i, label %land.lhs.true.i66.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i68.i

land.lhs.true.i66.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i66.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i68.i:                             ; preds = %land.lhs.true.i66.i
  %.b4.i67.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i67.i, label %land.lhs.true2.i68.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i69.i

land.lhs.true2.i68.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i68.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit.i

if.then.i69.i:                                    ; preds = %land.lhs.true2.i68.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.146, i32 noundef 724, ptr noundef nonnull @.str.148) #15
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i69.i, %land.lhs.true2.i68.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i66.i.rcu_read_unlock.exit.i_crit_edge, %if.end31.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !411
  br label %if.end36.sink.split.i

land.lhs.true33.critedge.i:                       ; preds = %rcu_read_lock.exit.i
  %call.i72.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i72.i, label %land.lhs.true33.critedge.i.land.lhs.true33.i_crit_edge, label %land.lhs.true.i75.i

land.lhs.true33.critedge.i.land.lhs.true33.i_crit_edge: ; preds = %land.lhs.true33.critedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true33.i

land.lhs.true.i75.i:                              ; preds = %land.lhs.true33.critedge.i
  %call1.i73.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73.i)
  %tobool.not.i74.i = icmp eq i32 %call1.i73.i, 0
  br i1 %tobool.not.i74.i, label %land.lhs.true.i75.i.land.lhs.true33.i_crit_edge, label %land.lhs.true2.i77.i

land.lhs.true.i75.i.land.lhs.true33.i_crit_edge:  ; preds = %land.lhs.true.i75.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true33.i

land.lhs.true2.i77.i:                             ; preds = %land.lhs.true.i75.i
  %.b4.i76.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i76.i, label %land.lhs.true2.i77.i.land.lhs.true33.i_crit_edge, label %if.then.i78.i

land.lhs.true2.i77.i.land.lhs.true33.i_crit_edge: ; preds = %land.lhs.true2.i77.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true33.i

if.then.i78.i:                                    ; preds = %land.lhs.true2.i77.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.146, i32 noundef 724, ptr noundef nonnull @.str.148) #15
  br label %land.lhs.true33.i

land.lhs.true33.i:                                ; preds = %if.then.i78.i, %land.lhs.true2.i77.i.land.lhs.true33.i_crit_edge, %land.lhs.true.i75.i.land.lhs.true33.i_crit_edge, %land.lhs.true33.critedge.i.land.lhs.true33.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !411
  %46 = tail call i32 @llvm.read_register.i32(metadata !379) #15
  %and.i.i.i.i.i79.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i79.i to ptr
  %preempt_count.i.i.i.i80.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i.i.i80.i, align 4
  %sub.i.i.i81.i = add i32 %49, -1
  store volatile i32 %sub.i.i.i81.i, ptr %preempt_count.i.i.i.i80.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  %50 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %priv_flags.i, align 16
  %and.i104 = and i64 %51, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i104)
  %tobool34.not.i = icmp eq i64 %and.i104, 0
  br i1 %tobool34.not.i, label %land.lhs.true33.i.if.end44_crit_edge, label %if.then35.i

land.lhs.true33.i.if.end44_crit_edge:             ; preds = %land.lhs.true33.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.then35.i:                                      ; preds = %land.lhs.true33.i
  %ip_list.i.i = getelementptr i8, ptr %1, i32 2452
  %52 = ptrtoint ptr %ip_list.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ip_list.i.i, align 4
  %cmp.not39.i.i = icmp eq ptr %53, %ip_list.i.i
  br i1 %cmp.not39.i.i, label %if.then35.i.if.end44_crit_edge, label %if.then35.i.for.body.i.i_crit_edge

if.then35.i.for.body.i.i_crit_edge:               ; preds = %if.then35.i
  br label %for.body.i.i

if.then35.i.if.end44_crit_edge:                   ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.then35.i.for.body.i.i_crit_edge
  %cur.040.i.i = phi ptr [ %tmp_cur.043.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %53, %if.then35.i.for.body.i.i_crit_edge ]
  %54 = ptrtoint ptr %cur.040.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %tmp_cur.043.i.i = load ptr, ptr %cur.040.i.i, align 4
  %master7.i.i = getelementptr inbounds %struct.nx_ip_list, ptr %cur.040.i.i, i32 0, i32 2
  %55 = ptrtoint ptr %master7.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %master7.i.i, align 4, !range !415
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool8.not.i.i = icmp eq i8 %56, 0
  br i1 %tobool8.not.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.then9.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

if.then9.i.i:                                     ; preds = %for.body.i.i
  %ip_addr.i.i = getelementptr inbounds %struct.nx_ip_list, ptr %cur.040.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %ip_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ip_addr.i.i, align 4
  %call.i84.i = tail call i32 @netxen_config_ipaddr(ptr noundef %add.ptr.i.i83, i32 noundef %58, i32 noundef 3) #15
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cur.040.i.i) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then9.i.i.for.inc.sink.split.i.i_crit_edge

if.then9.i.i.for.inc.sink.split.i.i_crit_edge:    ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.sink.split.i.i

if.end.i.i.i.i:                                   ; preds = %if.then9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %cur.040.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i.i.i, align 4
  %61 = ptrtoint ptr %cur.040.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cur.040.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %for.inc.sink.split.i.i

for.inc.sink.split.i.i:                           ; preds = %if.end.i.i.i.i, %if.then9.i.i.for.inc.sink.split.i.i_crit_edge
  %65 = ptrtoint ptr %cur.040.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %cur.040.i.i, align 4
  %prev.i36.i.i = getelementptr inbounds %struct.list_head, ptr %cur.040.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i36.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i36.i.i, align 4
  tail call void @kfree(ptr noundef %cur.040.i.i) #15
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %for.inc.sink.split.i.i, %for.body.i.i.for.inc.i.i_crit_edge
  %cmp.not.i.i = icmp eq ptr %tmp_cur.043.i.i, %ip_list.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.end44_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.if.end44_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end44

if.end36.critedge.i:                              ; preds = %netif_is_bond_slave.exit.i
  %call.i85.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i85.i, label %if.end36.critedge.i.rcu_read_unlock.exit95.i_crit_edge, label %land.lhs.true.i88.i

if.end36.critedge.i.rcu_read_unlock.exit95.i_crit_edge: ; preds = %if.end36.critedge.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit95.i

land.lhs.true.i88.i:                              ; preds = %if.end36.critedge.i
  %call1.i86.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i86.i)
  %tobool.not.i87.i = icmp eq i32 %call1.i86.i, 0
  br i1 %tobool.not.i87.i, label %land.lhs.true.i88.i.rcu_read_unlock.exit95.i_crit_edge, label %land.lhs.true2.i90.i

land.lhs.true.i88.i.rcu_read_unlock.exit95.i_crit_edge: ; preds = %land.lhs.true.i88.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit95.i

land.lhs.true2.i90.i:                             ; preds = %land.lhs.true.i88.i
  %.b4.i89.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i89.i, label %land.lhs.true2.i90.i.rcu_read_unlock.exit95.i_crit_edge, label %if.then.i91.i

land.lhs.true2.i90.i.rcu_read_unlock.exit95.i_crit_edge: ; preds = %land.lhs.true2.i90.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit95.i

if.then.i91.i:                                    ; preds = %land.lhs.true2.i90.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.146, i32 noundef 724, ptr noundef nonnull @.str.148) #15
  br label %rcu_read_unlock.exit95.i

rcu_read_unlock.exit95.i:                         ; preds = %if.then.i91.i, %land.lhs.true2.i90.i.rcu_read_unlock.exit95.i_crit_edge, %land.lhs.true.i88.i.rcu_read_unlock.exit95.i_crit_edge, %if.end36.critedge.i.rcu_read_unlock.exit95.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !411
  br label %if.end36.sink.split.i

if.end36.critedge52.i:                            ; preds = %netif_is_bond_master.exit.i.if.end36.critedge52.i_crit_edge, %land.lhs.true.i101.if.end36.critedge52.i_crit_edge
  %call.i96.i = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i96.i, label %if.end36.critedge52.i.rcu_read_unlock.exit106.i_crit_edge, label %land.lhs.true.i99.i

if.end36.critedge52.i.rcu_read_unlock.exit106.i_crit_edge: ; preds = %if.end36.critedge52.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit106.i

land.lhs.true.i99.i:                              ; preds = %if.end36.critedge52.i
  %call1.i97.i = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i97.i)
  %tobool.not.i98.i = icmp eq i32 %call1.i97.i, 0
  br i1 %tobool.not.i98.i, label %land.lhs.true.i99.i.rcu_read_unlock.exit106.i_crit_edge, label %land.lhs.true2.i101.i

land.lhs.true.i99.i.rcu_read_unlock.exit106.i_crit_edge: ; preds = %land.lhs.true.i99.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit106.i

land.lhs.true2.i101.i:                            ; preds = %land.lhs.true.i99.i
  %.b4.i100.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i100.i, label %land.lhs.true2.i101.i.rcu_read_unlock.exit106.i_crit_edge, label %if.then.i102.i

land.lhs.true2.i101.i.rcu_read_unlock.exit106.i_crit_edge: ; preds = %land.lhs.true2.i101.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit106.i

if.then.i102.i:                                   ; preds = %land.lhs.true2.i101.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.146, i32 noundef 724, ptr noundef nonnull @.str.148) #15
  br label %rcu_read_unlock.exit106.i

rcu_read_unlock.exit106.i:                        ; preds = %if.then.i102.i, %land.lhs.true2.i101.i.rcu_read_unlock.exit106.i_crit_edge, %land.lhs.true.i99.i.rcu_read_unlock.exit106.i_crit_edge, %if.end36.critedge52.i.rcu_read_unlock.exit106.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !411
  br label %if.end36.sink.split.i

if.end36.sink.split.i:                            ; preds = %rcu_read_unlock.exit106.i, %rcu_read_unlock.exit95.i, %rcu_read_unlock.exit.i
  %67 = tail call i32 @llvm.read_register.i32(metadata !379) #15
  %and.i.i.i.i.i92.i = and i32 %67, -16384
  %68 = inttoptr i32 %and.i.i.i.i.i92.i to ptr
  %preempt_count.i.i.i.i93.i = getelementptr inbounds %struct.thread_info, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %preempt_count.i.i.i.i93.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %preempt_count.i.i.i.i93.i, align 4
  %sub.i.i.i.i = add i32 %70, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i93.i, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  br label %if.end44

if.end44:                                         ; preds = %if.end36.sink.split.i, %for.inc.i.i.if.end44_crit_edge, %if.then35.i.if.end44_crit_edge, %land.lhs.true33.i.if.end44_crit_edge, %if.end40.if.end44_crit_edge
  tail call fastcc void @netxen_config_indev_addr(ptr noundef %add.ptr.i.i83, ptr noundef nonnull %1, i32 noundef %event)
  br label %done

done:                                             ; preds = %if.end44, %netxen_config_checkdev.exit96.done_crit_edge, %netxen_destip_supported.exit.i91.done_crit_edge, %if.end2.i88.done_crit_edge, %if.else.done_crit_edge, %rcu_read_unlock.exit, %if.end4.done_crit_edge, %if.then2.done_crit_edge, %entry.done_crit_edge
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 189)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 189)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { cold nounwind }
attributes #20 = { nobuiltin nounwind }
attributes #21 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !15, !17, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !37, !39, !41, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !58, !60, !62, !64, !66, !67, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !80, !82, !84, !86, !88, !89, !90, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !123, !125, !126, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !146, !148, !150, !152, !153, !154, !155, !157, !158, !159, !161, !162, !163, !164, !166, !167, !168, !169, !171, !172, !173, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !189, !191, !193, !195, !196, !197, !198, !200, !201, !202, !204, !206, !207, !208, !209, !211, !212, !213, !215, !216, !217, !219, !221, !223, !224, !225, !226, !228, !229, !230, !232, !233, !235, !236, !237, !238, !240, !241, !242, !244, !246, !247, !248, !250, !251, !252, !253, !255, !257, !258, !259, !260, !262, !263, !264, !265, !267, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !296, !298, !299, !300, !302, !303, !305, !306, !307, !309, !310, !312, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !364, !365, !366, !368, !370, !372, !373, !375, !377}
!llvm.named.register.sp = !{!379}
!llvm.module.flags = !{!380, !381, !382, !383, !384, !385, !386, !387}
!llvm.ident = !{!388}

!0 = !{ptr @__UNIQUE_ID_description500, !1, !"__UNIQUE_ID_description500", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_file501, !3, !"__UNIQUE_ID_file501", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 24, i32 1}
!4 = !{ptr @__UNIQUE_ID_license502, !3, !"__UNIQUE_ID_license502", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_version503, !6, !"__UNIQUE_ID_version503", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 25, i32 1}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__modver_attr, !6, !"__modver_attr", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_firmware504, !12, !"__UNIQUE_ID_firmware504", i1 false, i1 false}
!12 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 26, i32 1}
!13 = !{ptr @netxen_nic_driver_name, !14, !"netxen_nic_driver_name", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 28, i32 6}
!15 = !{ptr @__param_auto_fw_reset, !16, !"__param_auto_fw_reset", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 42, i32 1}
!17 = !{ptr @__UNIQUE_ID_auto_fw_resettype505, !16, !"__UNIQUE_ID_auto_fw_resettype505", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_auto_fw_reset506, !19, !"__UNIQUE_ID_auto_fw_reset506", i1 false, i1 false}
!19 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 43, i32 1}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2181, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @netxen_advert_link_change._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @netxen_advert_link_change._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2190, i32 3}
!28 = !{ptr @netxen_advert_link_change._entry.6, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @netxen_advert_link_change._entry_ptr.8, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__initcall__kmod_netxen_nic__521_3471_netxen_init_module6, !31, !"__initcall__kmod_netxen_nic__521_3471_netxen_init_module6", i1 false, i1 false}
!31 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3471, i32 1}
!32 = !{ptr @__exitcall_netxen_exit_module, !33, !"__exitcall_netxen_exit_module", i1 false, i1 false}
!33 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3483, i32 1}
!34 = !{ptr @__param_str_auto_fw_reset, !16, !"__param_str_auto_fw_reset", i1 false, i1 false}
!35 = !{ptr @auto_fw_reset, !36, !"auto_fw_reset", i1 false, i1 false}
!36 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 41, i32 12}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2781, i32 20}
!39 = !{ptr @dev_attr_bridged_mode, !40, !"dev_attr_bridged_mode", i1 false, i1 false}
!40 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2780, i32 38}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2777, i32 22}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1224, i32 3}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @netxen_nic_attach._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @netxen_nic_attach._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1231, i32 3}
!50 = !{ptr @netxen_nic_attach._entry.13, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @netxen_nic_attach._entry_ptr.15, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1257, i32 3}
!54 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @netxen_nic_attach._entry.16, !53, !"_entry", i1 false, i1 false}
!57 = !{ptr @netxen_nic_attach._entry_ptr.20, !53, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @crb_cmd_producer, !59, !"crb_cmd_producer", i1 false, i1 false}
!59 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 97, i32 17}
!60 = !{ptr @crb_cmd_consumer, !61, !"crb_cmd_consumer", i1 false, i1 false}
!61 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 109, i32 17}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1056, i32 27}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3108, i32 4}
!66 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @netxen_create_sysfs_entries._entry, !65, !"_entry", i1 false, i1 false}
!69 = !{ptr @netxen_create_sysfs_entries._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1105, i32 3}
!72 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @__netxen_nic_up._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @__netxen_nic_up._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3462, i32 2}
!77 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @netxen_init_module._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @netxen_init_module._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @netxen_nic_driver_string, !81, !"netxen_nic_driver_string", i1 false, i1 false}
!81 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 29, i32 13}
!82 = !{ptr @netxen_driver, !83, !"netxen_driver", i1 false, i1 false}
!83 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3450, i32 26}
!84 = !{ptr @netxen_pci_tbl, !85, !"netxen_pci_tbl", i1 false, i1 false}
!85 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 83, i32 35}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1452, i32 3}
!88 = !{ptr @.str.30, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @netxen_nic_probe._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @netxen_nic_probe._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.31, !87, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @netxen_nic_probe.__key, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1489, i32 2}
!94 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @netxen_nic_probe.__key.33, !96, !"__key", i1 false, i1 false}
!96 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1490, i32 2}
!97 = !{ptr @.str.34, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @netxen_nic_probe.__key.35, !99, !"__key", i1 false, i1 false}
!99 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1492, i32 2}
!100 = !{ptr @.str.36, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @.str.38, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1505, i32 3}
!103 = !{ptr @netxen_nic_probe._entry.37, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @netxen_nic_probe._entry_ptr.39, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1562, i32 3}
!107 = !{ptr @netxen_nic_probe._entry.40, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @netxen_nic_probe._entry_ptr.42, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1579, i32 3}
!111 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @netxen_nic_probe._entry.43, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @netxen_nic_probe._entry_ptr.46, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.48, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1583, i32 3}
!116 = !{ptr @netxen_nic_probe._entry.47, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @netxen_nic_probe._entry_ptr.49, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.50, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 741, i32 4}
!120 = !{ptr @.str.51, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @netxen_setup_pci_map._entry, !119, !"_entry", i1 false, i1 false}
!122 = !{ptr @netxen_setup_pci_map._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @netxen_setup_pci_map._entry.52, !124, !"_entry", i1 false, i1 false}
!124 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 754, i32 4}
!125 = !{ptr @netxen_setup_pci_map._entry_ptr.53, !124, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @netxen_setup_pci_map._entry.54, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 763, i32 4}
!128 = !{ptr @netxen_setup_pci_map._entry_ptr.55, !127, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 773, i32 2}
!131 = !{ptr @netxen_setup_pci_map._entry.56, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @netxen_setup_pci_map._entry_ptr.58, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 791, i32 3}
!135 = !{ptr @netxen_setup_pci_map._entry.59, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @netxen_setup_pci_map._entry_ptr.61, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 799, i32 3}
!139 = !{ptr @netxen_setup_pci_map._entry.62, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @netxen_setup_pci_map._entry_ptr.64, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 953, i32 3}
!143 = !{ptr @.str.66, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @netxen_start_firmware._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @netxen_start_firmware._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = distinct !{null, !147, !"port_mode", i1 false, i1 false}
!147 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 32, i32 12}
!148 = distinct !{null, !149, !"wol_port_mode", i1 false, i1 false}
!149 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 35, i32 12}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 406, i32 3}
!152 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @netxen_pcie_strap_init._entry, !151, !"_entry", i1 false, i1 false}
!154 = !{ptr @netxen_pcie_strap_init._entry_ptr, !151, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 411, i32 3}
!157 = !{ptr @netxen_pcie_strap_init._entry.69, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @netxen_pcie_strap_init._entry_ptr.71, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 290, i32 3}
!161 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @nx_update_dma_mask._entry, !160, !"_entry", i1 false, i1 false}
!163 = !{ptr @nx_update_dma_mask._entry_ptr, !160, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.74, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 832, i32 4}
!166 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @netxen_check_options._entry, !165, !"_entry", i1 false, i1 false}
!168 = !{ptr @netxen_check_options._entry_ptr, !165, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 854, i32 5}
!171 = !{ptr @netxen_check_options._entry.76, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @netxen_check_options._entry_ptr.78, !170, !"_entry_ptr", i1 false, i1 false}
!173 = distinct !{null, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 862, i32 23}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 864, i32 3}
!177 = !{ptr @netxen_check_options._entry.80, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @netxen_check_options._entry_ptr.82, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 871, i32 3}
!181 = !{ptr @netxen_check_options._entry.83, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @netxen_check_options._entry_ptr.85, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 881, i32 2}
!185 = !{ptr @netxen_check_options._entry.86, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @netxen_check_options._entry_ptr.88, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.89, !184, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.90, !184, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @netxen_boards, !190, !"netxen_boards", i1 false, i1 false}
!190 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic.h", i32 1812, i32 36}
!191 = distinct !{null, !192, !"use_msi_x", i1 false, i1 false}
!192 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 39, i32 12}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 672, i32 4}
!195 = !{ptr @.str.92, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @netxen_setup_intr._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @netxen_setup_intr._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.94, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 679, i32 3}
!200 = !{ptr @netxen_setup_intr._entry.93, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @netxen_setup_intr._entry_ptr.95, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @legacy_intr, !203, !"legacy_intr", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 128, i32 38}
!204 = !{ptr @.str.96, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 628, i32 4}
!206 = !{ptr @.str.97, !205, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @netxen_setup_msi_interrupts._entry, !205, !"_entry", i1 false, i1 false}
!208 = !{ptr @netxen_setup_msi_interrupts._entry_ptr, !205, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.99, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 639, i32 3}
!211 = !{ptr @netxen_setup_msi_interrupts._entry.98, !210, !"_entry", i1 false, i1 false}
!212 = !{ptr @netxen_setup_msi_interrupts._entry_ptr.100, !210, !"_entry_ptr", i1 false, i1 false}
!213 = !{ptr @.str.102, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 643, i32 2}
!215 = !{ptr @netxen_setup_msi_interrupts._entry.101, !214, !"_entry", i1 false, i1 false}
!216 = !{ptr @netxen_setup_msi_interrupts._entry_ptr.103, !214, !"_entry_ptr", i1 false, i1 false}
!217 = distinct !{null, !218, !"use_msi", i1 false, i1 false}
!218 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 37, i32 12}
!219 = !{ptr @msi_tgt_status, !220, !"msi_tgt_status", i1 false, i1 false}
!220 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 121, i32 17}
!221 = !{ptr @.str.104, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1403, i32 3}
!223 = !{ptr @.str.105, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @netxen_read_ula_info._entry, !222, !"_entry", i1 false, i1 false}
!225 = !{ptr @netxen_read_ula_info._entry_ptr, !222, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.107, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1406, i32 3}
!228 = !{ptr @netxen_read_ula_info._entry.106, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @netxen_read_ula_info._entry_ptr.108, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @netxen_setup_netdev.__key, !231, !"__key", i1 false, i1 false}
!231 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1373, i32 2}
!232 = !{ptr @.str.109, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.110, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1376, i32 3}
!235 = !{ptr @.str.111, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @netxen_setup_netdev._entry, !234, !"_entry", i1 false, i1 false}
!237 = !{ptr @netxen_setup_netdev._entry_ptr, !234, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.113, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1382, i32 3}
!240 = !{ptr @netxen_setup_netdev._entry.112, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @netxen_setup_netdev._entry_ptr.114, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @netxen_netdev_ops, !243, !"netxen_netdev_ops", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 555, i32 36}
!244 = distinct !{null, !245, !"__already_done", i1 false, i1 false}
!245 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!246 = !{ptr @.str.115, !245, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.116, !245, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.117, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2227, i32 2}
!250 = !{ptr @.str.118, !249, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @netxen_tx_timeout._entry, !249, !"_entry", i1 false, i1 false}
!252 = !{ptr @netxen_tx_timeout._entry_ptr, !249, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.119, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 526, i32 20}
!255 = !{ptr @.str.120, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 486, i32 3}
!257 = !{ptr @.str.121, !256, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @netxen_read_mac_addr._entry, !256, !"_entry", i1 false, i1 false}
!259 = !{ptr @netxen_read_mac_addr._entry_ptr, !256, !"_entry_ptr", i1 false, i1 false}
!260 = !{ptr @netxen_schedule_work.__key, !261, !"__key", i1 false, i1 false}
!261 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2486, i32 2}
!262 = !{ptr @.str.122, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @netxen_schedule_work.__key.123, !261, !"__key", i1 false, i1 false}
!264 = !{ptr @.str.124, !261, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @.str.125, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2687, i32 2}
!267 = !{ptr @.str.126, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @netxen_check_health._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @netxen_check_health._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.128, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2689, i32 2}
!272 = !{ptr @netxen_check_health._entry.127, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @netxen_check_health._entry_ptr.129, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.131, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2702, i32 3}
!276 = !{ptr @netxen_check_health._entry.130, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @netxen_check_health._entry_ptr.132, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.133, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2151, i32 3}
!280 = !{ptr @.str.134, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @netxen_nic_check_temp._entry, !279, !"_entry", i1 false, i1 false}
!282 = !{ptr @netxen_nic_check_temp._entry_ptr, !279, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.136, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2158, i32 4}
!285 = !{ptr @netxen_nic_check_temp._entry.135, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @netxen_nic_check_temp._entry_ptr.137, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.139, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2166, i32 4}
!289 = !{ptr @netxen_nic_check_temp._entry.138, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @netxen_nic_check_temp._entry_ptr.140, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.141, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2588, i32 2}
!293 = !{ptr @.str.142, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @netxen_fwinit_work._entry, !292, !"_entry", i1 false, i1 false}
!295 = !{ptr @netxen_fwinit_work._entry_ptr, !292, !"_entry_ptr", i1 false, i1 false}
!296 = distinct !{null, !297, !"__warned", i1 false, i1 false}
!297 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3256, i32 2}
!298 = !{ptr @.str.143, !297, !"<string literal>", i1 false, i1 false}
!299 = distinct !{null, !297, !"__warned", i1 false, i1 false}
!300 = distinct !{null, !301, !"__warned", i1 false, i1 false}
!301 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!302 = !{ptr @.str.145, !301, !"<string literal>", i1 false, i1 false}
!303 = distinct !{null, !304, !"__warned", i1 false, i1 false}
!304 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!305 = !{ptr @.str.146, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.147, !304, !"<string literal>", i1 false, i1 false}
!307 = distinct !{null, !308, !"__warned", i1 false, i1 false}
!308 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!309 = !{ptr @.str.148, !308, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @.str.149, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3131, i32 3}
!312 = !{ptr @.str.150, !311, !"<string literal>", i1 false, i1 false}
!313 = !{ptr @netxen_create_diag_entries._entry, !311, !"_entry", i1 false, i1 false}
!314 = !{ptr @netxen_create_diag_entries._entry_ptr, !311, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.152, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3133, i32 3}
!317 = !{ptr @netxen_create_diag_entries._entry.151, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @netxen_create_diag_entries._entry_ptr.153, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.155, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3135, i32 3}
!321 = !{ptr @netxen_create_diag_entries._entry.154, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @netxen_create_diag_entries._entry_ptr.156, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.158, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3137, i32 3}
!325 = !{ptr @netxen_create_diag_entries._entry.157, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @netxen_create_diag_entries._entry_ptr.159, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.160, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2813, i32 20}
!329 = !{ptr @dev_attr_diag_mode, !330, !"dev_attr_diag_mode", i1 false, i1 false}
!330 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2812, i32 38}
!331 = !{ptr @.str.161, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2958, i32 20}
!333 = !{ptr @bin_attr_crb, !334, !"bin_attr_crb", i1 false, i1 false}
!334 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2957, i32 35}
!335 = !{ptr @.str.162, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2965, i32 20}
!337 = !{ptr @bin_attr_mem, !338, !"bin_attr_mem", i1 false, i1 false}
!338 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2964, i32 35}
!339 = !{ptr @.str.163, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3094, i32 20}
!341 = !{ptr @bin_attr_dimm, !342, !"bin_attr_dimm", i1 false, i1 false}
!342 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3093, i32 35}
!343 = !{ptr @.str.164, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2984, i32 22}
!345 = !{ptr @.str.165, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 2993, i32 22}
!347 = !{ptr @.str.166, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3008, i32 22}
!349 = !{ptr @.str.167, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3023, i32 22}
!351 = !{ptr @.str.168, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3038, i32 22}
!353 = !{ptr @.str.169, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3043, i32 22}
!355 = !{ptr @.str.170, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3048, i32 22}
!357 = distinct !{null, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3080, i32 22}
!359 = !{ptr @netxen_err_handler, !360, !"netxen_err_handler", i1 false, i1 false}
!360 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3441, i32 40}
!361 = !{ptr @.str.172, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 1710, i32 3}
!363 = !{ptr @.str.173, !362, !"<string literal>", i1 false, i1 false}
!364 = !{ptr @netxen_nic_attach_late_func._entry, !362, !"_entry", i1 false, i1 false}
!365 = !{ptr @netxen_nic_attach_late_func._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @netxen_nic_pm_ops, !367, !"netxen_nic_pm_ops", i1 false, i1 false}
!367 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3446, i32 8}
!368 = !{ptr @netxen_inetaddr_cb, !369, !"netxen_inetaddr_cb", i1 false, i1 false}
!369 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3429, i32 30}
!370 = distinct !{null, !371, !"__warned", i1 false, i1 false}
!371 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3407, i32 4}
!372 = !{ptr @.str.174, !371, !"<string literal>", i1 false, i1 false}
!373 = !{ptr @netxen_netdev_cb, !374, !"netxen_netdev_cb", i1 false, i1 false}
!374 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3425, i32 30}
!375 = distinct !{null, !376, !"__warned", i1 false, i1 false}
!376 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3362, i32 4}
!377 = distinct !{null, !378, !"__warned", i1 false, i1 false}
!378 = !{!"../drivers/net/ethernet/qlogic/netxen/netxen_nic_main.c", i32 3327, i32 3}
!379 = !{!"sp"}
!380 = !{i32 1, !"wchar_size", i32 2}
!381 = !{i32 1, !"min_enum_size", i32 4}
!382 = !{i32 8, !"branch-target-enforcement", i32 0}
!383 = !{i32 8, !"sign-return-address", i32 0}
!384 = !{i32 8, !"sign-return-address-all", i32 0}
!385 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!386 = !{i32 7, !"uwtable", i32 1}
!387 = !{i32 7, !"frame-pointer", i32 2}
!388 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!389 = !{i64 2158157771}
!390 = !{!"auto-init"}
!391 = !{i64 2158216982}
!392 = !{i64 4741856}
!393 = !{i64 4742274}
!394 = !{i64 2158213561}
!395 = !{i64 2158214136}
!396 = !{i64 2158214692}
!397 = !{i64 2158215089}
!398 = !{i64 2158215557}
!399 = !{i64 2158216257}
!400 = !{i64 2158216755}
!401 = !{!"branch_weights", i32 1, i32 2000}
!402 = !{i64 2157743095}
!403 = !{i64 2158194046}
!404 = !{!"branch_weights", i32 2000, i32 1}
!405 = distinct !{!405, !406}
!406 = !{!"llvm.loop.peeled.count", i32 1}
!407 = !{i64 2158192965}
!408 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!409 = !{i64 2149999914}
!410 = !{i64 2148664573, i64 2148664605, i64 2148664634, i64 2148664668, i64 2148664699, i64 2148664722}
!411 = !{i64 2150000180}
!412 = !{i64 2148752598}
!413 = !{i64 2148667038, i64 2148667070, i64 2148667099, i64 2148667133, i64 2148667164, i64 2148667187}
!414 = !{i64 2149950371}
!415 = !{i8 0, i8 2}
