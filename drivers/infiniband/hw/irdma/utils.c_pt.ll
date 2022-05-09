; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/irdma/utils.c_pt.bc'
source_filename = "../drivers/infiniband/hw/irdma/utils.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irdma_cqp_err_info = type { i16, i16, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.irdma_pci_f = type { i8, i8, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.irdma_sc_dev, ptr, ptr, %struct.irdma_hw, %struct.irdma_cqp, %struct.irdma_ccq, %struct.irdma_aeq, ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, ptr, %struct.spinlock, %struct.mc_table_list, ptr, ptr, %struct.tasklet_struct, ptr, %struct.irdma_dma_mem, %struct.irdma_dma_mem, %struct.atomic_t, %struct.wait_queue_head, ptr, %struct.work_struct, %struct.irdma_sc_vsi, ptr, %struct.irdma_gen_ops, ptr }
%struct.irdma_sc_dev = type { %struct.list_head, %struct.spinlock, [128 x i8], [32 x %struct.irdma_dma_mem], i64, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [23 x ptr], i32, [6 x i64], [6 x i64], [13 x i64], [33 x i64], [27 x i64], [51 x i64], %struct.irdma_hw_attrs, ptr, ptr, ptr, [1024 x ptr], ptr, ptr, %struct.irdma_hmc_fpm_misc, ptr, %struct.mutex, i16, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.irdma_hw_attrs = type { %struct.irdma_uk_attrs, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.irdma_uk_attrs = type { i64, i32, i32, i32, i32, i32, i32, i32, i16, i8 }
%struct.irdma_hmc_fpm_misc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.irdma_hw = type { ptr, ptr, ptr, %struct.irdma_hmc_info }
%struct.irdma_hmc_info = type { i32, i8, i16, ptr, %struct.irdma_virt_mem, %struct.irdma_hmc_sd_table, [8192 x i16] }
%struct.irdma_virt_mem = type { ptr, i32 }
%struct.irdma_hmc_sd_table = type { %struct.irdma_virt_mem, i32, i32, ptr }
%struct.irdma_cqp = type { %struct.irdma_sc_cqp, %struct.spinlock, %struct.spinlock, %struct.wait_queue_head, %struct.wait_queue_head, %struct.irdma_dma_mem, %struct.irdma_dma_mem, ptr, ptr, %struct.list_head, %struct.list_head }
%struct.irdma_sc_cqp = type { i32, i64, i64, ptr, ptr, ptr, %struct.irdma_dma_mem, %struct.irdma_ring, ptr, %struct.irdma_dcqcn_cc_params, ptr, ptr, i32, i32, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.irdma_ring = type { i32, i32, i32 }
%struct.irdma_dcqcn_cc_params = type { i8, i8, i8, i8, i16, i16, i16, i32, i32 }
%struct.irdma_ccq = type { %struct.irdma_sc_cq, %struct.irdma_dma_mem, %struct.irdma_dma_mem }
%struct.irdma_sc_cq = type { %struct.irdma_cq_uk, i64, i64, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i32, i8, i8 }
%struct.irdma_cq_uk = type { ptr, ptr, ptr, ptr, i32, i32, %struct.irdma_ring, i8, i8 }
%struct.irdma_aeq = type { %struct.irdma_sc_aeq, %struct.irdma_dma_mem, %struct.irdma_pble_alloc, i8 }
%struct.irdma_sc_aeq = type { i32, i64, ptr, ptr, ptr, i32, %struct.irdma_ring, i8, i32, i32, i8, i8 }
%struct.irdma_pble_alloc = type { i32, i32, %union.anon.219 }
%union.anon.219 = type { %struct.irdma_pble_level2 }
%struct.irdma_pble_level2 = type { %struct.irdma_pble_info, ptr, %struct.irdma_virt_mem, i32 }
%struct.irdma_pble_info = type { ptr, i32, i32, %struct.irdma_pble_chunkinfo }
%struct.irdma_pble_chunkinfo = type { ptr, i64, i64 }
%struct.mc_table_list = type { %struct.list_head, %struct.irdma_mc_table_info, %struct.irdma_mcast_grp_info }
%struct.irdma_mc_table_info = type { i32, [4 x i32], i8 }
%struct.irdma_mcast_grp_info = type <{ [6 x i8], i16, i8, i8, i16, i32, [4 x i32], i16, %struct.irdma_dma_mem, [2 x i8], [8 x %struct.irdma_mcast_grp_ctx_entry_info] }>
%struct.irdma_mcast_grp_ctx_entry_info = type { i32, i8, i16, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.220, i32 }
%union.anon.220 = type { ptr }
%struct.irdma_dma_mem = type { ptr, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.irdma_sc_vsi = type { i16, ptr, ptr, i32, %struct.irdma_virt_mem, ptr, i32, %struct.irdma_virt_mem, ptr, i32, i16, i16, i8, i32, i8, [8 x %struct.irdma_qos], ptr, %struct.atomic_t, ptr, ptr, i8, i8 }
%struct.irdma_qos = type { %struct.list_head, %struct.mutex, i64, i32, i16, i8, i8, i8, i8 }
%struct.irdma_gen_ops = type { ptr, ptr, ptr }
%struct.irdma_arp_entry = type { [4 x i32], [6 x i8] }
%struct.ib_event = type { ptr, %union.anon.222, i32 }
%union.anon.222 = type { ptr }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.239, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.260, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.239 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.260 = type { ptr }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.irdma_device = type { %struct.ib_device, ptr, ptr, ptr, %struct.irdma_sc_vsi, %struct.irdma_cm_core, i32, i32, i32, i32, i32, i32, i32, i16, i16, i8, i8, i8, i32, %struct.wait_queue_head }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.275, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.275 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.238 }
%struct.anon.238 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.irdma_cm_core = type { ptr, ptr, %struct.list_head, [256 x %struct.hlist_head], [256 x %struct.hlist_head], %struct.timer_list, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.inet6_ifaddr = type { %struct.in6_addr, i32, i32, i32, i32, %struct.refcount_struct, %struct.spinlock, i32, i32, i8, i8, i16, i64, i32, i32, %struct.delayed_work, ptr, ptr, %struct.hlist_node, %struct.list_head, %struct.list_head, ptr, i32, i8, %struct.callback_head, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.inet6_dev = type { ptr, ptr, %struct.list_head, ptr, ptr, i8, i8, i8, i8, i32, i32, i32, i32, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.delayed_work, %struct.sk_buff_head, %struct.sk_buff_head, %struct.spinlock, %struct.spinlock, %struct.mutex, ptr, %struct.rwlock_t, %struct.refcount_struct, i32, i32, i32, %struct.list_head, %struct.in6_addr, ptr, %struct.ipv6_devconf, %struct.ipv6_devstat, %struct.timer_list, i32, i8, i32, %struct.callback_head, i32 }
%struct.ipv6_devconf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ipv6_stable_secret, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr }
%struct.ipv6_stable_secret = type { i8, %struct.in6_addr }
%struct.ipv6_devstat = type { ptr, ptr, ptr, ptr }
%struct.irdma_cqp_request = type { %struct.cqp_cmds_info, %struct.wait_queue_head, %struct.list_head, %struct.refcount_struct, ptr, ptr, %struct.irdma_cqp_compl_info, i8 }
%struct.cqp_cmds_info = type { %struct.list_head, i8, i8, %struct.cqp_info }
%struct.cqp_info = type { %union.anon.178 }
%union.anon.178 = type { %struct.anon.207 }
%struct.anon.207 = type { ptr, %struct.irdma_update_sds_info, i64 }
%struct.irdma_update_sds_info = type { i32, i8, [11 x %struct.irdma_update_sd_entry] }
%struct.irdma_update_sd_entry = type { i64, i64 }
%struct.irdma_cqp_compl_info = type { i32, i16, i16, i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.irdma_cqp_timeout = type { i64, i32 }
%struct.irdma_qp = type { %struct.ib_qp, [4 x i8], %struct.irdma_sc_qp, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irdma_qp_host_ctx_info, %union.anon.292, %union.anon.293, %struct.irdma_ah, %struct.list_head, %struct.refcount_struct, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, i32, %struct.atomic_t, %struct.spinlock, ptr, ptr, i32, ptr, i8, i8, i16, i16, i8, i8, %struct.irdma_qp_kmode, %struct.irdma_dma_mem, %struct.timer_list, ptr, %struct.irdma_dma_mem, %struct.irdma_dma_mem, %struct.completion, %struct.wait_queue_head, %struct.wait_queue_head, i8 }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.irdma_sc_qp = type <{ %struct.irdma_qp_uk, i64, i64, i64, i64, i64, ptr, ptr, ptr, ptr, ptr, [4 x i8], %struct.irdma_pfpdu, i32, ptr, i64, i32, i16, i16, i8, i8, i8, i8, i8, i8, i8, i16, [3 x i8], i32, i32, i8, i8, [2 x i8], %struct.list_head }>
%struct.irdma_qp_uk = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irdma_ring, %struct.irdma_ring, %struct.irdma_ring, i32, i32, i32, i32, i32, i32, i32, %struct.irdma_wqe_uk_ops, i16, i8, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8 }
%struct.irdma_wqe_uk_ops = type { ptr, ptr, ptr, ptr }
%struct.irdma_pfpdu = type { %struct.list_head, i32, i32, i32, i32, i32, i8, i8, i64, i64, i64, i64, i64, i64, i64, i64, ptr, ptr, %struct.spinlock, ptr }
%struct.irdma_qp_host_ctx_info = type { i64, %union.anon.290, %union.anon.291, i32, i32, i32, i8, i8, i8 }
%union.anon.290 = type { ptr }
%union.anon.291 = type { ptr }
%union.anon.292 = type { %struct.irdma_roce_offload_info }
%struct.irdma_roce_offload_info = type { i16, i16, i32, i32, i8, i8, i8, i32, i16, i16, i16, i16, i16, i8, [6 x i8], i8 }
%union.anon.293 = type { %struct.irdma_tcp_offload_info }
%struct.irdma_tcp_offload_info = type { i16, i8, i8, i8, i8, i8, i16, i16, [4 x i32], i32, i16, i16, i16, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, [4 x i32] }
%struct.irdma_ah = type { %struct.ib_ah, %struct.irdma_sc_ah, ptr, %struct.irdma_av, i8, %union.ib_gid }
%struct.ib_ah = type { ptr, ptr, ptr, ptr, i32 }
%struct.irdma_sc_ah = type { ptr, %struct.irdma_ah_info }
%struct.irdma_ah_info = type { ptr, i32, i32, [4 x i32], [4 x i32], i32, i32, i16, i8, i8, i8, [6 x i8], i8 }
%struct.irdma_av = type { [16 x i8], %struct.rdma_ah_attr, %union.anon.294, %union.anon.294, i8 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.261 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.anon.261 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%union.anon.294 = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%union.ib_gid = type { %struct.anon.237 }
%struct.anon.237 = type { i64, i64 }
%struct.irdma_qp_kmode = type { %struct.irdma_dma_mem, ptr, ptr }
%struct.anon.208 = type { ptr, ptr, i64 }
%struct.anon.203 = type { ptr, ptr, i64, i8, i64 }
%struct.anon.204 = type { ptr, ptr, i64, i8, i64 }
%struct.anon.179 = type { ptr, %struct.irdma_create_qp_info, i64 }
%struct.irdma_create_qp_info = type { i8, i8, i8 }
%struct.anon.194 = type { ptr, %struct.irdma_cqp_manage_push_page_info, i64 }
%struct.irdma_cqp_manage_push_page_info = type { i32, i16, i8, i8 }
%struct.irdma_gen_ae_info = type { i16, i8 }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.irdma_modify_qp_info = type <{ i64, i64, i16, i8, i8, i8, i16, i8 }>
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.irdma_puda_buf = type { %struct.list_head, %struct.irdma_dma_mem, ptr, %struct.irdma_virt_mem, ptr, ptr, ptr, ptr, i16, i16, i8, i8, i32, %struct.refcount_struct, i8, i8, i32, i32, [6 x i8], ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.irdma_cm_node = type { ptr, ptr, ptr, %struct.irdma_cm_tcp_context, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.callback_head, %struct.irdma_mpa_priv_info, ptr, %union.anon.287, %struct.irdma_kmem_info, ptr, %struct.hlist_node, %struct.completion, %struct.spinlock, %struct.atomic_t, %struct.refcount_struct, i32, i32, i32, [4 x i32], [4 x i32], i16, i16, i32, i32, i16, i16, i16, i16, i16, [512 x i8], [6 x i8], [6 x i8], i8, i8, i8 }
%struct.irdma_cm_tcp_context = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.irdma_mpa_priv_info = type { ptr, i32 }
%union.anon.287 = type { %struct.ietf_mpa_v2 }
%struct.ietf_mpa_v2 = type { [16 x i8], i8, i8, i16, %struct.ietf_rtr_msg, [0 x i8] }
%struct.ietf_rtr_msg = type { i16, i16 }
%struct.irdma_kmem_info = type { ptr, i32 }
%struct.irdma_puda_cmpl_info = type { ptr, i8, i8, i8, i16, i32, i32, i32, i32, i8, [6 x i8] }
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.vlan_ethhdr = type { %union.anon.297, i16, i16, i16 }
%union.anon.297 = type { %struct.anon.298 }
%struct.anon.298 = type { [6 x i8], [6 x i8] }
%struct.irdma_vsi_pestat = type { ptr, %struct.irdma_dev_hw_stats, %struct.irdma_stats_gather_info, %struct.timer_list, ptr, %struct.irdma_dev_hw_stats, %struct.spinlock }
%struct.irdma_stats_gather_info = type <{ i8, i8, i8, %struct.irdma_dma_mem, i8, ptr, ptr }>
%struct.irdma_dev_hw_stats = type { [13 x i64], [33 x i64] }
%struct.irdma_gather_stats = type { i32, i32, i64, i64, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, [88 x i32] }
%struct.anon.215 = type { ptr, %struct.irdma_stats_gather_info, i64 }
%struct.anon.214 = type { ptr, %struct.irdma_stats_inst_info, i64 }
%struct.irdma_stats_inst_info = type { i8, i8, i8 }
%struct.irdma_ccq_cqe_info = type { ptr, i64, i32, i16, i16, i8, i8 }
%struct.anon.216 = type { ptr, %struct.irdma_ws_node_info, i64 }
%struct.irdma_ws_node_info = type { i16, i16, i16, i16, i8, i8, i8, i8 }
%struct.anon.209 = type { ptr, %struct.irdma_ah_info, i64 }
%struct.anon.210 = type { ptr, %struct.irdma_ah_info, i64 }
%struct.irdma_chunk = type { %struct.list_head, %struct.irdma_dma_info, ptr, i32, i64, ptr, i64, i32, i32, ptr, %struct.irdma_virt_mem }
%struct.irdma_dma_info = type { ptr }
%struct.irdma_pble_prm = type { %struct.list_head, %struct.spinlock, i64, i64, i8 }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.irdma_cq = type { %struct.ib_cq, %struct.irdma_sc_cq, i16, i16, i16, i8, i8, i32, i32, i32, %struct.irdma_dma_mem, %struct.irdma_dma_mem, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.irdma_cq_poll_info }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.234, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.234 = type { %struct.work_struct }
%struct.irdma_cq_poll_info = type { i64, ptr, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, [6 x i8], i8, i8 }
%struct.irdma_cqe = type { [4 x i64] }

@irdma_inetaddr_event.__UNIQUE_ID_ddebug681 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"irdma\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"irdma_inetaddr_event\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/infiniband/hw/irdma/utils.c\00", [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"DEV: netdev %p event %lu local_ip=%pI4 MAC=%pM\0A\00", [48 x i8] zeroinitializer }, align 32
@irdma_inet6addr_event.__UNIQUE_ID_ddebug682 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irdma_inet6addr_event\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"DEV: netdev %p event %lu local_ip=%pI6 MAC=%pM\0A\00", [48 x i8] zeroinitializer }, align 32
@irdma_net_event.__UNIQUE_ID_ddebug683 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 68, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"irdma_net_event\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"DEV: netdev %p state %d local_ip=%pI4 MAC=%pM\0A\00", [49 x i8] zeroinitializer }, align 32
@irdma_alloc_and_get_cqp_request.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&cqp_request->waitq\00", [44 x i8] zeroinitializer }, align 32
@irdma_alloc_and_get_cqp_request.__UNIQUE_ID_ddebug696 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 110, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"irdma_alloc_and_get_cqp_request\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ERR: CQP Request Fail: No Memory\00", [63 x i8] zeroinitializer }, align 32
@irdma_noncrit_err_list = internal constant { [4 x %struct.irdma_cqp_err_info], [32 x i8] } { [4 x %struct.irdma_cqp_err_info] [%struct.irdma_cqp_err_info { i16 -1, i16 -32762, ptr @.str.38 }, %struct.irdma_cqp_err_info { i16 -1, i16 -32761, ptr @.str.39 }, %struct.irdma_cqp_err_info { i16 -1, i16 -32759, ptr @.str.40 }, %struct.irdma_cqp_err_info { i16 -1, i16 -32758, ptr @.str.41 }], [32 x i8] zeroinitializer }, align 32
@irdma_cqp_crit_err.__UNIQUE_ID_ddebug697 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -89, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"irdma_cqp_crit_err\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"CQP: [%s Error][%s] maj=0x%x min=0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@irdma_cqp_cmd_names = internal constant { [51 x ptr], [52 x i8] } { [51 x ptr] [ptr null, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr null, ptr null, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr null, ptr null, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87], [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [81 x i8], [47 x i8] } { [81 x i8] c"[%s Error][op_code=%d] status=%d waiting=%d completion_err=%d maj=0x%x min=0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@irdma_terminate_start_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"(&iwqp->terminate_timer)\00", [39 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@irdma_ieq_mpa_crc_ae.__UNIQUE_ID_ddebug698 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 1, i8 71, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"irdma_ieq_mpa_crc_ae\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"AEQ: Generate MPA CRC AE\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"crc32c\00", [25 x i8] zeroinitializer }, align 32
@irdma_hw_stats_start_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"(&devstat->stats_timer)\00", [40 x i8] zeroinitializer }, align 32
@irdma_cqp_ws_node_cmd.__UNIQUE_ID_ddebug700 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.2, ptr @.str.20, i8 1, i8 -2, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"irdma_cqp_ws_node_cmd\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DCB: opcode=%d, compl_info.retval=%d\0A\00", [58 x i8] zeroinitializer }, align 32
@irdma_alloc_rsrc.__UNIQUE_ID_ddebug680 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.22, ptr @.str.23, i8 0, i8 107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irdma_alloc_rsrc\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/infiniband/hw/irdma/main.h\00", [61 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"ERR: resource [%d] allocation failed\0A\00", [58 x i8] zeroinitializer }, align 32
@irdma_add_ipv4_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@irdma_add_ipv4_addr.__warned.25 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@irdma_add_ipv4_addr.__UNIQUE_ID_ddebug695 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irdma_add_ipv4_addr\00", [44 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CM: IP=%pI4, vlan_id=%d, MAC=%pM\0A\00", [62 x i8] zeroinitializer }, align 32
@irdma_add_ipv4_addr.__warned.29 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.33 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@irdma_add_ipv6_addr.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ipv6 inet device not found\0A\00", [36 x i8] zeroinitializer }, align 32
@irdma_add_ipv6_addr.__UNIQUE_ID_ddebug687 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 88, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irdma_add_ipv6_addr\00", [44 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"INIT: IP=%pI6, vlan_id=%d, MAC=%pM\0A\00", [60 x i8] zeroinitializer }, align 32
@__in6_dev_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/net/addrconf.h\00", [41 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.38 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Flush No Wqe Pending\00", [43 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Modify QP Bad Close\00", [44 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"LLP Closed\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Reset Not Sent\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Destroy CEQ Cmd\00", [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Destroy AEQ Cmd\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Delete ARP Cache Cmd\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Manage APBV Table Entry Cmd\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"CEQ Create Cmd\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AEQ Destroy Cmd\00", [16 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Manage Quad Hash Table Entry Cmd\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Modify QP Cmd\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Upload Context Cmd\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Create CQ Cmd\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Destroy CQ Cmd\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Create QP Cmd\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Destroy QP Cmd\00", [17 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Allocate STag Cmd\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Register Non-Shared MR Cmd\00", [37 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Deallocate STag Cmd\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Allocate Memory Window Cmd\00", [37 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Flush QP Cmd\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Add ARP Cache Cmd\00", [46 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Manage Push Page Cmd\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Update PE SDs Cmd\00", [46 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Manage HMC PM Function Table Cmd\00", [63 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Suspend QP Cmd\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Resume QP Cmd\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Manage VF PBLE Backing Pages Cmd\00", [63 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Query FPM Values Cmd\00", [43 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Commit FPM Values Cmd\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Create Address Handle Cmd\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Modify Address Handle Cmd\00", [38 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Destroy Address Handle Cmd\00", [37 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Create Multicast Group Cmd\00", [37 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Destroy Multicast Group Cmd\00", [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Modify Multicast Group Cmd\00", [37 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Add Statistics Instance Cmd\00", [36 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Free Statistics Instance Cmd\00", [35 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Gather Statistics Cmd\00", [42 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Add Work Scheduler Node Cmd\00", [36 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Modify Work Scheduler Node Cmd\00", [33 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Delete Work Scheduler Node Cmd\00", [33 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Set UP-UP Mapping Cmd\00", [42 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Generate AE Cmd\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RDMA Get Features Cmd\00", [42 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Allocate Local MAC Entry Cmd\00", [35 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Add Local MAC Entry Cmd\00", [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Delete Local MAC Entry Cmd\00", [37 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CQ Modify Cmd\00", [18 x i8] zeroinitializer }, align 32
@irdma_gen1_puda_get_tcpip_info.__UNIQUE_ID_ddebug699 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.88, ptr @.str.2, ptr @.str.89, i8 1, i8 -121, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"irdma_gen1_puda_get_tcpip_info\00", [33 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"ERR: payload_len = 0x%x totallen expected0x%x\0A\00", [49 x i8] zeroinitializer }, align 32
@switch.table.irdma_cqp_crit_err = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 0, i32 2, i32 3], [44 x i8] zeroinitializer }, align 32
@switch.table.irdma_handle_cqp_op = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 0, i32 2, i32 3], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.92 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.93 = internal global [6 x i64] [i64 4, i64 8, i64 1, i64 2, i64 3, i64 5]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 8, i64 30, i64 32]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 164, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 210, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 269, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 438, i32 5 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 442, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant [23 x i8] c"irdma_noncrit_err_list\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 645, i32 40 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 667, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant [20 x i8] c"irdma_cqp_cmd_names\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 596, i32 26 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 713, i32 6 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 916, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1310, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1325, i32 27 }
@___asan_gen_.162 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1650, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 2039, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [38 x i8] c"../drivers/infiniband/hw/irdma/main.h\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.181, i32 428, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 378, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 388, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 389, i32 5 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 695, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 232, i32 9 }
@___asan_gen_.205 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.205, i32 723, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 344, i32 30 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 349, i32 5 }
@___asan_gen_.217 = private unnamed_addr constant [26 x i8] c"../include/net/addrconf.h\00", align 1
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.217, i32 313, i32 9 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 646, i32 19 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 647, i32 19 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 648, i32 19 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 649, i32 19 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 597, i32 27 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 598, i32 27 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 599, i32 38 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 600, i32 34 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 601, i32 26 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 602, i32 26 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 603, i32 40 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 604, i32 25 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 605, i32 33 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 606, i32 25 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 607, i32 26 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 608, i32 25 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 609, i32 26 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 610, i32 26 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 611, i32 33 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 612, i32 28 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 613, i32 24 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 614, i32 29 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 615, i32 35 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 616, i32 32 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 617, i32 29 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 618, i32 40 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 619, i32 23 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 620, i32 22 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 621, i32 33 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 622, i32 29 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 623, i32 30 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 624, i32 25 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 625, i32 25 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 626, i32 26 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 627, i32 25 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 628, i32 26 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 629, i32 25 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 630, i32 30 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 631, i32 26 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 632, i32 28 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 633, i32 27 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 634, i32 30 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 635, i32 30 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 636, i32 26 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 637, i32 22 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 638, i32 35 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 639, i32 37 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 640, i32 35 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 641, i32 38 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 642, i32 25 }
@___asan_gen_.372 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.373 = private constant [39 x i8] c"../drivers/infiniband/hw/irdma/utils.c\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.373, i32 1563, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant [32 x i8] c"switch.table.irdma_cqp_crit_err\00", align 1
@___asan_gen_.376 = private unnamed_addr constant [33 x i8] c"switch.table.irdma_handle_cqp_op\00", align 1
@llvm.compiler.used = appending global [95 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @irdma_alloc_and_get_cqp_request.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @irdma_noncrit_err_list, ptr @.str.11, ptr @.str.12, ptr @irdma_cqp_cmd_names, ptr @.str.13, ptr @irdma_terminate_start_timer.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @irdma_hw_stats_start_timer.__key, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @switch.table.irdma_cqp_crit_err, ptr @switch.table.irdma_handle_cqp_op], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_alloc_and_get_cqp_request.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_noncrit_err_list to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_cqp_cmd_names to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 81, i32 128, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_terminate_start_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irdma_hw_stats_start_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.irdma_cqp_crit_err to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.irdma_handle_cqp_op to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_arp_table(ptr noundef %rf, ptr nocapture noundef readonly %ip_addr, i1 noundef zeroext %ipv4, ptr nocapture noundef readonly %mac_addr, i32 noundef %action) local_unnamed_addr #0 align 64 {
entry:
  %ip = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ip) #15
  %0 = getelementptr inbounds i8, ptr %ip, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  br i1 %ipv4, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %ip_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ip_addr, align 4
  %4 = ptrtoint ptr %ip to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ip, align 4
  br label %do.body1

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = call ptr @memcpy(ptr %ip, ptr %ip_addr, i32 16)
  br label %do.body1

do.body1:                                         ; preds = %if.else, %if.then
  %arp_lock = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 52
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arp_lock) #15
  %arp_table_size = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 27
  %6 = ptrtoint ptr %arp_table_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arp_table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp590.not = icmp eq i32 %7, 0
  br i1 %cmp590.not, label %do.body1.for.end_crit_edge, label %for.body.lr.ph

do.body1.for.end_crit_edge:                       ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.body1
  %arp_table = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 51
  %8 = ptrtoint ptr %arp_table to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arp_table, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %storemerge91 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx7 = getelementptr %struct.irdma_arp_entry, ptr %9, i32 %storemerge91
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx7, ptr noundef nonnull dereferenceable(16) %ip, i32 16) #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool12.not = icmp eq i32 %bcmp, 0
  br i1 %tobool12.not, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %storemerge91, 1
  %exitcond.not = icmp eq i32 %inc, %7
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %do.body1.for.end_crit_edge
  %storemerge.lcssa = phi i32 [ 0, %do.body1.for.end_crit_edge ], [ %storemerge91, %for.body.for.end_crit_edge ], [ %7, %for.inc.for.end_crit_edge ]
  %10 = zext i32 %action to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %action, label %for.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %sw.bb34
    i32 2, label %sw.bb40
  ]

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.lcssa, i32 %7)
  %cmp16.not = icmp eq i32 %storemerge.lcssa, %7
  br i1 %cmp16.not, label %if.end19, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end19:                                         ; preds = %sw.bb
  %allocated_arps = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 40
  %11 = ptrtoint ptr %allocated_arps to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %allocated_arps, align 8
  %next_arp_index = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 28
  %rsrc_lock.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 53
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #15
  %13 = ptrtoint ptr %next_arp_index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %next_arp_index, align 4
  %call5.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %12, i32 noundef %7, i32 noundef %14) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %7)
  %cmp6.not.i = icmp ult i32 %call5.i, %7
  br i1 %cmp6.not.i, label %if.end19.if.end24_crit_edge, label %if.then.i

if.end19.if.end24_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then.i:                                        ; preds = %if.end19
  %call8.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %12, i32 noundef %7) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %7)
  %cmp9.not.i = icmp ult i32 %call8.i, %7
  br i1 %cmp9.not.i, label %if.then.i.if.end24_crit_edge, label %if.then11.i

if.then.i.if.end24_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end24

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_arp_table, %if.then18.i)) #15
          to label %sw.epilog [label %if.then18.i], !srcloc !198

if.then18.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #17
  %iwdev.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 71
  %15 = ptrtoint ptr %iwdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iwdev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, ptr noundef %16, ptr noundef nonnull @.str.23, i32 noundef %call8.i) #15
  br label %sw.epilog

if.end24:                                         ; preds = %if.then.i.if.end24_crit_edge, %if.end19.if.end24_crit_edge
  %rsrc_num.0.i = phi i32 [ %call8.i, %if.then.i.if.end24_crit_edge ], [ %call5.i, %if.end19.if.end24_crit_edge ]
  %rem.i.i = and i32 %rsrc_num.0.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %rsrc_num.0.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %12, i32 %div2.i.i
  %17 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %18
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %add.i = add nuw i32 %rsrc_num.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %7)
  %cmp23.i = icmp eq i32 %add.i, %7
  %spec.select.i = select i1 %cmp23.i, i32 0, i32 %add.i
  %19 = ptrtoint ptr %next_arp_index to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %spec.select.i, ptr %next_arp_index, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #15
  %arp_table25 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 51
  %20 = ptrtoint ptr %arp_table25 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arp_table25, align 8
  %arrayidx26 = getelementptr %struct.irdma_arp_entry, ptr %21, i32 %rsrc_num.0.i
  %22 = call ptr @memcpy(ptr %arrayidx26, ptr %ip, i32 16)
  %23 = load ptr, ptr %arp_table25, align 8
  %mac_addr32 = getelementptr %struct.irdma_arp_entry, ptr %23, i32 %rsrc_num.0.i, i32 1
  %24 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mac_addr, align 4
  %26 = ptrtoint ptr %mac_addr32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %mac_addr32, align 4
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %mac_addr32, i32 4
  %29 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %add.ptr1.i, align 2
  br label %sw.epilog

sw.bb34:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.lcssa, i32 %7)
  %cmp36 = icmp eq i32 %storemerge.lcssa, %7
  %spec.select = select i1 %cmp36, i32 -1, i32 %storemerge.lcssa
  br label %sw.epilog

sw.bb40:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.lcssa, i32 %7)
  %cmp42 = icmp eq i32 %storemerge.lcssa, %7
  br i1 %cmp42, label %sw.bb40.sw.epilog_crit_edge, label %if.end45

sw.bb40.sw.epilog_crit_edge:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

if.end45:                                         ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #17
  %arp_table46 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 51
  %30 = ptrtoint ptr %arp_table46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arp_table46, align 8
  %arrayidx47 = getelementptr %struct.irdma_arp_entry, ptr %31, i32 %storemerge.lcssa
  %32 = call ptr @memset(ptr %arrayidx47, i32 0, i32 16)
  %33 = load ptr, ptr %arp_table46, align 8
  %mac_addr52 = getelementptr %struct.irdma_arp_entry, ptr %33, i32 %storemerge.lcssa, i32 1
  %34 = call ptr @memset(ptr %mac_addr52, i32 0, i32 6)
  %allocated_arps54 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 40
  %35 = ptrtoint ptr %allocated_arps54 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %allocated_arps54, align 8
  %rsrc_lock.i74 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 53
  %call2.i75 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i74) #15
  %rem.i.i76 = and i32 %storemerge.lcssa, 31
  %shl.i.i77 = shl nuw i32 1, %rem.i.i76
  %div2.i.i78 = lshr i32 %storemerge.lcssa, 5
  %add.ptr.i.i79 = getelementptr i32, ptr %36, i32 %div2.i.i78
  %neg.i.i = xor i32 %shl.i.i77, -1
  %37 = ptrtoint ptr %add.ptr.i.i79 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i79, align 4
  %and.i.i = and i32 %38, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i79, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i74, i32 noundef %call2.i75) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end45, %sw.bb40.sw.epilog_crit_edge, %sw.bb34, %if.end24, %if.then18.i, %if.then11.i, %sw.bb.sw.epilog_crit_edge, %for.end.sw.epilog_crit_edge
  %arp_index.1 = phi i32 [ %storemerge.lcssa, %if.end45 ], [ %rsrc_num.0.i, %if.end24 ], [ -1, %sw.bb.sw.epilog_crit_edge ], [ -1, %if.then18.i ], [ -1, %if.then11.i ], [ -1, %sw.bb40.sw.epilog_crit_edge ], [ -1, %for.end.sw.epilog_crit_edge ], [ %spec.select, %sw.bb34 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arp_lock, i32 noundef %call2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ip) #15
  ret i32 %arp_index.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_add_arp(ptr noundef %rf, ptr noundef %ip, i1 noundef zeroext %ipv4, ptr noundef %mac) local_unnamed_addr #0 align 64 {
entry:
  %ip.i28 = alloca [4 x i32], align 4
  %ip.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ip.i) #15
  %0 = getelementptr inbounds i8, ptr %ip.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 12)
  br i1 %ipv4, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ip, align 4
  %4 = ptrtoint ptr %ip.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %ip.i, align 4
  br label %do.body1.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %5 = call ptr @memcpy(ptr %ip.i, ptr %ip, i32 16)
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.else.i, %if.then.i
  %arp_lock.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 52
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arp_lock.i) #15
  %arp_table_size.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 27
  %6 = ptrtoint ptr %arp_table_size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arp_table_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp590.not.i = icmp eq i32 %7, 0
  br i1 %cmp590.not.i, label %do.body1.i.irdma_arp_table.exit_crit_edge, label %for.body.lr.ph.i

do.body1.i.irdma_arp_table.exit_crit_edge:        ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_arp_table.exit

for.body.lr.ph.i:                                 ; preds = %do.body1.i
  %arp_table.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 51
  %8 = ptrtoint ptr %arp_table.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arp_table.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %storemerge91.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.irdma_arp_entry, ptr %9, i32 %storemerge91.i
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx7.i, ptr noundef nonnull dereferenceable(16) %ip.i, i32 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool12.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool12.not.i, label %for.body.i.irdma_arp_table.exit_crit_edge, label %for.inc.i

for.body.i.irdma_arp_table.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_arp_table.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %storemerge91.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.irdma_arp_table.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.irdma_arp_table.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_arp_table.exit

irdma_arp_table.exit:                             ; preds = %for.inc.i.irdma_arp_table.exit_crit_edge, %for.body.i.irdma_arp_table.exit_crit_edge, %do.body1.i.irdma_arp_table.exit_crit_edge
  %storemerge.lcssa.i = phi i32 [ 0, %do.body1.i.irdma_arp_table.exit_crit_edge ], [ %7, %for.inc.i.irdma_arp_table.exit_crit_edge ], [ %storemerge91.i, %for.body.i.irdma_arp_table.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.lcssa.i, i32 %7)
  %cmp36.i = icmp eq i32 %storemerge.lcssa.i, %7
  %spec.select.i = select i1 %cmp36.i, i32 -1, i32 %storemerge.lcssa.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arp_lock.i, i32 noundef %call2.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ip.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %spec.select.i)
  %cmp = icmp sgt i32 %spec.select.i, -1
  br i1 %cmp, label %if.then, label %irdma_arp_table.exit.if.end9_crit_edge

irdma_arp_table.exit.if.end9_crit_edge:           ; preds = %irdma_arp_table.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end9

if.then:                                          ; preds = %irdma_arp_table.exit
  %arp_table = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 51
  %10 = ptrtoint ptr %arp_table to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arp_table, align 8
  %mac_addr = getelementptr %struct.irdma_arp_entry, ptr %11, i32 %spec.select.i, i32 1
  %12 = ptrtoint ptr %mac_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mac_addr, align 4
  %14 = ptrtoint ptr %mac to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mac, align 4
  %xor.i = xor i32 %15, %13
  %add.ptr.i = getelementptr i8, ptr %mac_addr, i32 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %mac, i32 4
  %18 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr1.i, align 2
  %xor37.i = xor i16 %19, %17
  %xor3.i = zext i16 %xor37.i to i32
  %or.i = or i32 %xor.i, %xor3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @irdma_manage_arp_cache(ptr noundef %rf, ptr noundef %mac_addr, ptr noundef %ip, i1 noundef zeroext %ipv4, i32 noundef 2) #15
  br label %if.end9

if.end9:                                          ; preds = %if.end, %irdma_arp_table.exit.if.end9_crit_edge
  tail call void @irdma_manage_arp_cache(ptr noundef %rf, ptr noundef %mac, ptr noundef %ip, i1 noundef zeroext %ipv4, i32 noundef 1) #15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ip.i28) #15
  %20 = getelementptr inbounds i8, ptr %ip.i28, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 12)
  br i1 %ipv4, label %if.then.i29, label %if.else.i30

if.then.i29:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %ip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ip, align 4
  %24 = ptrtoint ptr %ip.i28 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ip.i28, align 4
  br label %do.body1.i35

if.else.i30:                                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  %25 = call ptr @memcpy(ptr %ip.i28, ptr %ip, i32 16)
  br label %do.body1.i35

do.body1.i35:                                     ; preds = %if.else.i30, %if.then.i29
  %call2.i32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arp_lock.i) #15
  %26 = ptrtoint ptr %arp_table_size.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arp_table_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp590.not.i34 = icmp eq i32 %27, 0
  br i1 %cmp590.not.i34, label %do.body1.i35.irdma_arp_table.exit49_crit_edge, label %for.body.lr.ph.i37

do.body1.i35.irdma_arp_table.exit49_crit_edge:    ; preds = %do.body1.i35
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_arp_table.exit49

for.body.lr.ph.i37:                               ; preds = %do.body1.i35
  %arp_table.i36 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 51
  %28 = ptrtoint ptr %arp_table.i36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arp_table.i36, align 8
  br label %for.body.i42

for.body.i42:                                     ; preds = %for.inc.i45.for.body.i42_crit_edge, %for.body.lr.ph.i37
  %storemerge91.i38 = phi i32 [ 0, %for.body.lr.ph.i37 ], [ %inc.i43, %for.inc.i45.for.body.i42_crit_edge ]
  %arrayidx7.i39 = getelementptr %struct.irdma_arp_entry, ptr %29, i32 %storemerge91.i38
  %bcmp.i40 = call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx7.i39, ptr noundef nonnull dereferenceable(16) %ip.i28, i32 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i40)
  %tobool12.not.i41 = icmp eq i32 %bcmp.i40, 0
  br i1 %tobool12.not.i41, label %for.body.i42.irdma_arp_table.exit49_crit_edge, label %for.inc.i45

for.body.i42.irdma_arp_table.exit49_crit_edge:    ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_arp_table.exit49

for.inc.i45:                                      ; preds = %for.body.i42
  %inc.i43 = add nuw i32 %storemerge91.i38, 1
  %exitcond.not.i44 = icmp eq i32 %inc.i43, %27
  br i1 %exitcond.not.i44, label %for.inc.i45.irdma_arp_table.exit49_crit_edge, label %for.inc.i45.for.body.i42_crit_edge

for.inc.i45.for.body.i42_crit_edge:               ; preds = %for.inc.i45
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i42

for.inc.i45.irdma_arp_table.exit49_crit_edge:     ; preds = %for.inc.i45
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_arp_table.exit49

irdma_arp_table.exit49:                           ; preds = %for.inc.i45.irdma_arp_table.exit49_crit_edge, %for.body.i42.irdma_arp_table.exit49_crit_edge, %do.body1.i35.irdma_arp_table.exit49_crit_edge
  %storemerge.lcssa.i46 = phi i32 [ 0, %do.body1.i35.irdma_arp_table.exit49_crit_edge ], [ %27, %for.inc.i45.irdma_arp_table.exit49_crit_edge ], [ %storemerge91.i38, %for.body.i42.irdma_arp_table.exit49_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.lcssa.i46, i32 %27)
  %cmp36.i47 = icmp eq i32 %storemerge.lcssa.i46, %27
  %spec.select.i48 = select i1 %cmp36.i47, i32 -1, i32 %storemerge.lcssa.i46
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arp_lock.i, i32 noundef %call2.i32) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ip.i28) #15
  br label %cleanup

cleanup:                                          ; preds = %irdma_arp_table.exit49, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i48, %irdma_arp_table.exit49 ], [ %storemerge.lcssa.i, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_manage_arp_cache(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wr32(ptr nocapture noundef readonly %hw, i32 noundef %reg, i32 noundef %val) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !199
  tail call void @arm_heavy_mb() #15
  %0 = tail call i32 @llvm.bswap.i32(i32 %val)
  %1 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #15, !srcloc !200
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rd32(ptr nocapture noundef readonly %hw, i32 noundef %reg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !201
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  ret i32 %3
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @rd64(ptr nocapture noundef readonly %hw, i32 noundef %reg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %reg
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i = getelementptr i32, ptr %add.ptr, i32 1
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %4 = zext i32 %3 to i64
  %5 = zext i32 %2 to i64
  %6 = shl nuw i64 %5, 32
  %7 = or i64 %6, %4
  %8 = tail call i64 @llvm.bswap.i64(i64 %7) #15
  ret i64 %8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_inetaddr_event(ptr nocapture noundef readnone %notifier, i32 noundef %event, ptr nocapture noundef readonly %ptr) local_unnamed_addr #0 align 64 {
entry:
  %ib_event.i36 = alloca %struct.ib_event, align 4
  %ib_event.i = alloca %struct.ib_event, align 4
  %local_ipaddr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ifa_dev = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 2
  %0 = ptrtoint ptr %ifa_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ifa_dev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %local_ipaddr) #15
  %call = tail call ptr @ib_device_get_by_netdev(ptr noundef %3, i32 noundef 9) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %ifa_address = getelementptr inbounds %struct.in_ifaddr, ptr %ptr, i32 0, i32 5
  %4 = ptrtoint ptr %ifa_address to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ifa_address, align 4
  %6 = ptrtoint ptr %local_ipaddr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %local_ipaddr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_inetaddr_event.__UNIQUE_ID_ddebug681, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_inetaddr_event, %if.then6)) #15
          to label %do.end [label %if.then6], !srcloc !198

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_inetaddr_event.__UNIQUE_ID_ddebug681, ptr noundef nonnull %call, ptr noundef nonnull @.str.3, ptr noundef %3, i32 noundef %event, ptr noundef nonnull %local_ipaddr, ptr noundef %8) #15
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  %9 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %event, label %do.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %do.end.sw.bb11_crit_edge
    i32 8, label %do.end.sw.bb11_crit_edge38
  ]

do.end.sw.bb11_crit_edge38:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

do.end.sw.bb11_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb11

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %rf = getelementptr inbounds %struct.irdma_device, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rf, align 8
  %dev_addr9 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %12 = ptrtoint ptr %dev_addr9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr9, align 64
  call void @irdma_manage_arp_cache(ptr noundef %11, ptr noundef %13, ptr noundef nonnull %local_ipaddr, i1 noundef zeroext true, i32 noundef 2) #15
  call void @irdma_if_notify(ptr noundef nonnull %call, ptr noundef %3, ptr noundef nonnull %local_ipaddr, i1 noundef zeroext true, i1 noundef zeroext false) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ib_event.i) #15
  %14 = getelementptr inbounds %struct.ib_event, ptr %ib_event.i, i32 0, i32 1
  %15 = getelementptr inbounds %struct.ib_event, ptr %ib_event.i, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 18, ptr %15, align 4
  %17 = ptrtoint ptr %ib_event.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call, ptr %ib_event.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %14, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %ib_event.i) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ib_event.i) #15
  br label %sw.epilog

sw.bb11:                                          ; preds = %do.end.sw.bb11_crit_edge, %do.end.sw.bb11_crit_edge38
  %rf12 = getelementptr inbounds %struct.irdma_device, ptr %call, i32 0, i32 1
  %19 = ptrtoint ptr %rf12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rf12, align 8
  %dev_addr13 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %21 = ptrtoint ptr %dev_addr13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_addr13, align 64
  %call14 = call i32 @irdma_add_arp(ptr noundef %20, ptr noundef nonnull %local_ipaddr, i1 noundef zeroext true, ptr noundef %22)
  call void @irdma_if_notify(ptr noundef nonnull %call, ptr noundef %3, ptr noundef nonnull %local_ipaddr, i1 noundef zeroext true, i1 noundef zeroext true) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ib_event.i36) #15
  %23 = getelementptr inbounds %struct.ib_event, ptr %ib_event.i36, i32 0, i32 1
  %24 = getelementptr inbounds %struct.ib_event, ptr %ib_event.i36, i32 0, i32 2
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 18, ptr %24, align 4
  %26 = ptrtoint ptr %ib_event.i36 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call, ptr %ib_event.i36, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %23, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %ib_event.i36) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ib_event.i36) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb, %do.end.sw.epilog_crit_edge
  call void @ib_device_put(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %local_ipaddr) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_device_get_by_netdev(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_ibdev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_if_notify(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_device_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_inet6addr_event(ptr nocapture noundef readnone %notifier, i32 noundef %event, ptr noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  %ib_event.i42 = alloca %struct.ib_event, align 4
  %ib_event.i = alloca %struct.ib_event, align 4
  %local_ipaddr6 = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %idev = getelementptr inbounds %struct.inet6_ifaddr, ptr %ptr, i32 0, i32 16
  %0 = ptrtoint ptr %idev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %idev, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_ipaddr6) #15
  %4 = call ptr @memset(ptr %local_ipaddr6, i32 255, i32 16)
  %call = tail call ptr @ib_device_get_by_netdev(ptr noundef %3, i32 noundef 9) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @irdma_copy_ip_ntohl(ptr noundef nonnull %local_ipaddr6, ptr noundef %ptr) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_inet6addr_event.__UNIQUE_ID_ddebug682, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_inet6addr_event, %if.then7)) #15
          to label %do.end [label %if.then7], !srcloc !198

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %5 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_inet6addr_event.__UNIQUE_ID_ddebug682, ptr noundef nonnull %call, ptr noundef nonnull @.str.5, ptr noundef %3, i32 noundef %event, ptr noundef nonnull %local_ipaddr6, ptr noundef %6) #15
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  %7 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %event, label %do.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %do.end.sw.bb15_crit_edge
    i32 8, label %do.end.sw.bb15_crit_edge44
  ]

do.end.sw.bb15_crit_edge44:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb15

do.end.sw.bb15_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb15

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %rf = getelementptr inbounds %struct.irdma_device, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rf, align 8
  %dev_addr11 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %10 = ptrtoint ptr %dev_addr11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_addr11, align 64
  call void @irdma_manage_arp_cache(ptr noundef %9, ptr noundef %11, ptr noundef nonnull %local_ipaddr6, i1 noundef zeroext false, i32 noundef 2) #15
  call void @irdma_if_notify(ptr noundef nonnull %call, ptr noundef %3, ptr noundef nonnull %local_ipaddr6, i1 noundef zeroext false, i1 noundef zeroext false) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ib_event.i) #15
  %12 = getelementptr inbounds %struct.ib_event, ptr %ib_event.i, i32 0, i32 1
  %13 = getelementptr inbounds %struct.ib_event, ptr %ib_event.i, i32 0, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 18, ptr %13, align 4
  %15 = ptrtoint ptr %ib_event.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call, ptr %ib_event.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %12, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %ib_event.i) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ib_event.i) #15
  br label %sw.epilog

sw.bb15:                                          ; preds = %do.end.sw.bb15_crit_edge, %do.end.sw.bb15_crit_edge44
  %rf16 = getelementptr inbounds %struct.irdma_device, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %rf16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rf16, align 8
  %dev_addr18 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %19 = ptrtoint ptr %dev_addr18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev_addr18, align 64
  %call19 = call i32 @irdma_add_arp(ptr noundef %18, ptr noundef nonnull %local_ipaddr6, i1 noundef zeroext false, ptr noundef %20)
  call void @irdma_if_notify(ptr noundef nonnull %call, ptr noundef %3, ptr noundef nonnull %local_ipaddr6, i1 noundef zeroext false, i1 noundef zeroext true) #15
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ib_event.i42) #15
  %21 = getelementptr inbounds %struct.ib_event, ptr %ib_event.i42, i32 0, i32 1
  %22 = getelementptr inbounds %struct.ib_event, ptr %ib_event.i42, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 18, ptr %22, align 4
  %24 = ptrtoint ptr %ib_event.i42 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call, ptr %ib_event.i42, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %21, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %ib_event.i42) #15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ib_event.i42) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb15, %sw.bb, %do.end.sw.epilog_crit_edge
  call void @ib_device_put(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_ipaddr6) #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_copy_ip_ntohl(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_net_event(ptr nocapture noundef readnone %notifier, i32 noundef %event, ptr noundef %ptr) local_unnamed_addr #0 align 64 {
entry:
  %local_ipaddr = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_ipaddr) #15
  %0 = call ptr @memset(ptr %local_ipaddr, i32 0, i32 16)
  %dev = getelementptr inbounds %struct.neighbour, ptr %ptr, i32 0, i32 25
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %call = tail call ptr @ib_device_get_by_netdev(ptr noundef %2, i32 noundef 9) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cond = icmp eq i32 %event, 1
  br i1 %cond, label %sw.bb, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %primary_key = getelementptr inbounds %struct.neighbour, ptr %ptr, i32 0, i32 27
  %tbl = getelementptr inbounds %struct.neighbour, ptr %ptr, i32 0, i32 1
  %3 = ptrtoint ptr %tbl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tbl, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %6)
  %cmp = icmp eq i32 %6, 10
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  call void @irdma_copy_ip_ntohl(ptr noundef nonnull %local_ipaddr, ptr noundef %primary_key) #15
  br label %do.body

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %7 = ptrtoint ptr %primary_key to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %primary_key, align 4
  %9 = ptrtoint ptr %local_ipaddr to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %local_ipaddr, align 4
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then2
  %10 = xor i1 %cmp, true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_net_event.__UNIQUE_ID_ddebug683, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_net_event, %if.then9)) #15
          to label %do.end [label %if.then9], !srcloc !198

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %netdev = getelementptr inbounds %struct.irdma_device, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 4
  %nud_state = getelementptr inbounds %struct.neighbour, ptr %ptr, i32 0, i32 12
  %13 = ptrtoint ptr %nud_state to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %nud_state, align 8
  %conv = zext i8 %14 to i32
  %ha = getelementptr inbounds %struct.neighbour, ptr %ptr, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_net_event.__UNIQUE_ID_ddebug683, ptr noundef nonnull %call, ptr noundef nonnull @.str.7, ptr noundef %12, i32 noundef %conv, ptr noundef nonnull %local_ipaddr, ptr noundef %ha) #15
  br label %do.end

do.end:                                           ; preds = %if.then9, %do.body
  %nud_state14 = getelementptr inbounds %struct.neighbour, ptr %ptr, i32 0, i32 12
  %15 = ptrtoint ptr %nud_state14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nud_state14, align 8
  %17 = and i8 %16, -34
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool16.not = icmp eq i8 %17, 0
  %rf24 = getelementptr inbounds %struct.irdma_device, ptr %call, i32 0, i32 1
  %18 = ptrtoint ptr %rf24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %rf24, align 8
  %ha25 = getelementptr inbounds %struct.neighbour, ptr %ptr, i32 0, i32 18
  br i1 %tobool16.not, label %if.else23, label %if.then17

if.then17:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  %call22 = call i32 @irdma_add_arp(ptr noundef %19, ptr noundef nonnull %local_ipaddr, i1 noundef zeroext %10, ptr noundef %ha25)
  br label %sw.epilog

if.else23:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  call void @irdma_manage_arp_cache(ptr noundef %19, ptr noundef %ha25, ptr noundef nonnull %local_ipaddr, i1 noundef zeroext %10, i32 noundef 2) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else23, %if.then17, %if.end.sw.epilog_crit_edge
  call void @ib_device_put(ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_ipaddr) #15
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_netdevice_event(ptr nocapture noundef readnone %notifier, i32 noundef %event, ptr nocapture noundef readonly %ptr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %call1 = tail call ptr @ib_device_get_by_netdev(ptr noundef %1, i32 noundef 9) #15
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %iw_status = getelementptr inbounds %struct.irdma_device, ptr %call1, i32 0, i32 16
  %2 = ptrtoint ptr %iw_status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %iw_status, align 1
  %3 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %event, label %if.end.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %if.end.sw.bb4_crit_edge
  ]

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb4

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %iw_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %iw_status, align 1
  br label %sw.bb4

sw.bb4:                                           ; preds = %sw.bb, %if.end.sw.bb4_crit_edge
  tail call void @irdma_port_ibevent(ptr noundef nonnull %call1) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %if.end.sw.epilog_crit_edge
  tail call void @ib_device_put(ptr noundef nonnull %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_port_ibevent(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_add_ip(ptr noundef %iwdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @irdma_add_ipv4_addr(ptr noundef %iwdev)
  tail call fastcc void @irdma_add_ipv6_addr(ptr noundef %iwdev)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_add_ipv4_addr(ptr noundef %iwdev) unnamed_addr #0 align 64 {
entry:
  %ip_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ip_addr) #15
  %0 = ptrtoint ptr %ip_addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %ip_addr, align 4, !annotation !205
  %1 = tail call i32 @llvm.read_register.i32(metadata !188) #15
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !206
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 696, ptr noundef nonnull @.str.31) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b112 = load i1, ptr @irdma_add_ipv4_addr.__warned, align 1
  br i1 %.b112, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @irdma_add_ipv4_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 378, ptr noundef nonnull @.str.24) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn146 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not148 = icmp eq ptr %.pn146, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not148, label %do.end.for.end91_crit_edge, label %for.body.lr.ph

do.end.for.end91_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end91

for.body.lr.ph:                                   ; preds = %do.end
  %netdev = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 2
  %rf = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc82.for.body_crit_edge, %for.body.lr.ph
  %.pn149 = phi ptr [ %.pn146, %for.body.lr.ph ], [ %.pn, %for.inc82.for.body_crit_edge ]
  %dev.0150 = getelementptr i8, ptr %.pn149, i32 -40
  %priv_flags.i.i = getelementptr i8, ptr %.pn149, i32 72
  %5 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %6, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.lor.lhs.false_crit_edge, label %rdma_vlan_dev_vlan_id.exit

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

rdma_vlan_dev_vlan_id.exit:                       ; preds = %for.body
  %call1.i113 = call zeroext i16 @vlan_dev_vlan_id(ptr noundef %dev.0150) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call1.i113)
  %cmp10.not = icmp eq i16 %call1.i113, -1
  br i1 %cmp10.not, label %rdma_vlan_dev_vlan_id.exit.lor.lhs.false_crit_edge, label %land.lhs.true12

rdma_vlan_dev_vlan_id.exit.lor.lhs.false_crit_edge: ; preds = %rdma_vlan_dev_vlan_id.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

land.lhs.true12:                                  ; preds = %rdma_vlan_dev_vlan_id.exit
  %7 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i115 = and i64 %8, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i115)
  %tobool.i.not.i116 = icmp eq i64 %and.i.i115, 0
  br i1 %tobool.i.not.i116, label %land.lhs.true12.rdma_vlan_dev_real_dev.exit_crit_edge, label %cond.true.i118

land.lhs.true12.rdma_vlan_dev_real_dev.exit_crit_edge: ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #17
  br label %rdma_vlan_dev_real_dev.exit

cond.true.i118:                                   ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i117 = call ptr @vlan_dev_real_dev(ptr noundef %dev.0150) #15
  br label %rdma_vlan_dev_real_dev.exit

rdma_vlan_dev_real_dev.exit:                      ; preds = %cond.true.i118, %land.lhs.true12.rdma_vlan_dev_real_dev.exit_crit_edge
  %cond.i119 = phi ptr [ %call1.i117, %cond.true.i118 ], [ null, %land.lhs.true12.rdma_vlan_dev_real_dev.exit_crit_edge ]
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  %cmp14 = icmp eq ptr %cond.i119, %10
  br i1 %cmp14, label %rdma_vlan_dev_real_dev.exit.do.end22_crit_edge, label %rdma_vlan_dev_real_dev.exit.lor.lhs.false_crit_edge

rdma_vlan_dev_real_dev.exit.lor.lhs.false_crit_edge: ; preds = %rdma_vlan_dev_real_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

rdma_vlan_dev_real_dev.exit.do.end22_crit_edge:   ; preds = %rdma_vlan_dev_real_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end22

lor.lhs.false:                                    ; preds = %rdma_vlan_dev_real_dev.exit.lor.lhs.false_crit_edge, %rdma_vlan_dev_vlan_id.exit.lor.lhs.false_crit_edge, %for.body.lor.lhs.false_crit_edge
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 4
  %cmp17 = icmp eq ptr %dev.0150, %12
  br i1 %cmp17, label %lor.lhs.false.do.end22_crit_edge, label %lor.lhs.false.for.inc82_crit_edge

lor.lhs.false.for.inc82_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc82

lor.lhs.false.do.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end22

do.end22:                                         ; preds = %lor.lhs.false.do.end22_crit_edge, %rdma_vlan_dev_real_dev.exit.do.end22_crit_edge
  %flags = getelementptr i8, ptr %.pn149, i32 64
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 8
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %do.end22.for.inc82_crit_edge, label %if.then25

do.end22.for.inc82_crit_edge:                     ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc82

if.then25:                                        ; preds = %do.end22
  %ip_ptr.i = getelementptr i8, ptr %.pn149, i32 504
  %15 = ptrtoint ptr %ip_ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %ip_ptr.i, align 32
  %call.i120 = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i120)
  %tobool.not.i121 = icmp eq i32 %call.i120, 0
  br i1 %tobool.not.i121, label %land.lhs.true.i122, label %if.then25.__in_dev_get_rcu.exit_crit_edge

if.then25.__in_dev_get_rcu.exit_crit_edge:        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #17
  br label %__in_dev_get_rcu.exit

land.lhs.true.i122:                               ; preds = %if.then25
  %call2.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i122.__in_dev_get_rcu.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true.i122.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true.i122
  call void @__sanitizer_cov_trace_pc() #17
  br label %__in_dev_get_rcu.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i122
  %.b9.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i, label %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, label %if.then.i123

land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge: ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__in_dev_get_rcu.exit

if.then.i123:                                     ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.32, i32 noundef 232, ptr noundef nonnull @.str.26) #15
  br label %__in_dev_get_rcu.exit

__in_dev_get_rcu.exit:                            ; preds = %if.then.i123, %land.lhs.true4.i.__in_dev_get_rcu.exit_crit_edge, %land.lhs.true.i122.__in_dev_get_rcu.exit_crit_edge, %if.then25.__in_dev_get_rcu.exit_crit_edge
  %tobool27.not = icmp eq ptr %16, null
  br i1 %tobool27.not, label %__in_dev_get_rcu.exit.for.inc82_crit_edge, label %if.end29

__in_dev_get_rcu.exit.for.inc82_crit_edge:        ; preds = %__in_dev_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc82

if.end29:                                         ; preds = %__in_dev_get_rcu.exit
  %ifa_list = getelementptr inbounds %struct.in_device, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %ifa_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %ifa_list, align 4
  %call35 = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %land.lhs.true37, label %if.end29.do.end45_crit_edge

if.end29.do.end45_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end45

land.lhs.true37:                                  ; preds = %if.end29
  %call38 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true37.do.end45_crit_edge, label %land.lhs.true40

land.lhs.true37.do.end45_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end45

land.lhs.true40:                                  ; preds = %land.lhs.true37
  %.b108111 = load i1, ptr @irdma_add_ipv4_addr.__warned.25, align 1
  br i1 %.b108111, label %land.lhs.true40.do.end45_crit_edge, label %if.then42

land.lhs.true40.do.end45_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end45

if.then42:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @irdma_add_ipv4_addr.__warned.25, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 388, ptr noundef nonnull @.str.26) #15
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %land.lhs.true40.do.end45_crit_edge, %land.lhs.true37.do.end45_crit_edge, %if.end29.do.end45_crit_edge
  %tobool48.not143 = icmp eq ptr %18, null
  br i1 %tobool48.not143, label %do.end45.for.inc82_crit_edge, label %do.body50.lr.ph

do.end45.for.inc82_crit_edge:                     ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc82

do.body50.lr.ph:                                  ; preds = %do.end45
  %dev_addr = getelementptr i8, ptr %.pn149, i32 536
  br label %do.body50

do.body50:                                        ; preds = %do.end79.do.body50_crit_edge, %do.body50.lr.ph
  %ifa.0144 = phi ptr [ %18, %do.body50.lr.ph ], [ %31, %do.end79.do.body50_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_add_ipv4_addr.__UNIQUE_ID_ddebug695, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_add_ipv4_addr, %if.then56)) #15
          to label %do.end61 [label %if.then56], !srcloc !198

if.then56:                                        ; preds = %do.body50
  %ifa_address = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.0144, i32 0, i32 5
  %19 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i125 = and i64 %20, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i125)
  %tobool.i.not.i126 = icmp eq i64 %and.i.i125, 0
  br i1 %tobool.i.not.i126, label %if.then56.rdma_vlan_dev_vlan_id.exit130_crit_edge, label %cond.true.i128

if.then56.rdma_vlan_dev_vlan_id.exit130_crit_edge: ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #17
  br label %rdma_vlan_dev_vlan_id.exit130

cond.true.i128:                                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i127 = call zeroext i16 @vlan_dev_vlan_id(ptr noundef %dev.0150) #15
  br label %rdma_vlan_dev_vlan_id.exit130

rdma_vlan_dev_vlan_id.exit130:                    ; preds = %cond.true.i128, %if.then56.rdma_vlan_dev_vlan_id.exit130_crit_edge
  %cond.i129 = phi i16 [ %call1.i127, %cond.true.i128 ], [ -1, %if.then56.rdma_vlan_dev_vlan_id.exit130_crit_edge ]
  %conv58 = zext i16 %cond.i129 to i32
  %21 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_add_ipv4_addr.__UNIQUE_ID_ddebug695, ptr noundef %iwdev, ptr noundef nonnull @.str.28, ptr noundef %ifa_address, i32 noundef %conv58, ptr noundef %22) #15
  br label %do.end61

do.end61:                                         ; preds = %rdma_vlan_dev_vlan_id.exit130, %do.body50
  %ifa_address62 = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.0144, i32 0, i32 5
  %23 = ptrtoint ptr %ifa_address62 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ifa_address62, align 4
  %25 = ptrtoint ptr %ip_addr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %ip_addr, align 4
  %26 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %rf, align 8
  %28 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev_addr, align 64
  call void @irdma_manage_arp_cache(ptr noundef %27, ptr noundef %29, ptr noundef nonnull %ip_addr, i1 noundef zeroext true, i32 noundef 1) #15
  %ifa_next = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.0144, i32 0, i32 1
  %30 = ptrtoint ptr %ifa_next to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %ifa_next, align 4
  %call69 = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %land.lhs.true71, label %do.end61.do.end79_crit_edge

do.end61.do.end79_crit_edge:                      ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end79

land.lhs.true71:                                  ; preds = %do.end61
  %call72 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %land.lhs.true71.do.end79_crit_edge, label %land.lhs.true74

land.lhs.true71.do.end79_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end79

land.lhs.true74:                                  ; preds = %land.lhs.true71
  %.b109110 = load i1, ptr @irdma_add_ipv4_addr.__warned.29, align 1
  br i1 %.b109110, label %land.lhs.true74.do.end79_crit_edge, label %if.then76

land.lhs.true74.do.end79_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end79

if.then76:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @irdma_add_ipv4_addr.__warned.29, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 388, ptr noundef nonnull @.str.26) #15
  br label %do.end79

do.end79:                                         ; preds = %if.then76, %land.lhs.true74.do.end79_crit_edge, %land.lhs.true71.do.end79_crit_edge, %do.end61.do.end79_crit_edge
  %tobool48.not = icmp eq ptr %31, null
  br i1 %tobool48.not, label %do.end79.for.inc82_crit_edge, label %do.end79.do.body50_crit_edge

do.end79.do.body50_crit_edge:                     ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body50

do.end79.for.inc82_crit_edge:                     ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc82

for.inc82:                                        ; preds = %do.end79.for.inc82_crit_edge, %do.end45.for.inc82_crit_edge, %__in_dev_get_rcu.exit.for.inc82_crit_edge, %do.end22.for.inc82_crit_edge, %lor.lhs.false.for.inc82_crit_edge
  %32 = ptrtoint ptr %.pn149 to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pn = load volatile ptr, ptr %.pn149, align 4
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not, label %for.inc82.for.end91_crit_edge, label %for.inc82.for.body_crit_edge

for.inc82.for.body_crit_edge:                     ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc82.for.end91_crit_edge:                    ; preds = %for.inc82
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end91

for.end91:                                        ; preds = %for.inc82.for.end91_crit_edge, %do.end.for.end91_crit_edge
  %call.i131 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i131, label %for.end91.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i134

for.end91.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i134:                               ; preds = %for.end91
  %call1.i132 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i132)
  %tobool.not.i133 = icmp eq i32 %call1.i132, 0
  br i1 %tobool.not.i133, label %land.lhs.true.i134.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i136

land.lhs.true.i134.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i134
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i136:                              ; preds = %land.lhs.true.i134
  %.b4.i135 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i135, label %land.lhs.true2.i136.rcu_read_unlock.exit_crit_edge, label %if.then.i137

land.lhs.true2.i136.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i136
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i137:                                     ; preds = %land.lhs.true2.i136
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 724, ptr noundef nonnull @.str.33) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i137, %land.lhs.true2.i136.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i134.rcu_read_unlock.exit_crit_edge, %for.end91.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !207
  %33 = call i32 @llvm.read_register.i32(metadata !188) #15
  %and.i.i.i.i.i138 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i138 to ptr
  %preempt_count.i.i.i.i139 = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i139 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i139, align 4
  %sub.i.i.i = add i32 %36, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i139, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ip_addr) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_add_ipv6_addr(ptr noundef %iwdev) unnamed_addr #0 align 64 {
entry:
  %local_ipaddr6 = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %local_ipaddr6) #15
  %0 = call ptr @memset(ptr %local_ipaddr6, i32 255, i32 16)
  %1 = tail call i32 @llvm.read_register.i32(metadata !188) #15
  %and.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !206
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 696, ptr noundef nonnull @.str.31) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b99 = load i1, ptr @irdma_add_ipv6_addr.__warned, align 1
  br i1 %.b99, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @irdma_add_ipv6_addr.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 337, ptr noundef nonnull @.str.24) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16) to i32))
  %.pn137 = load volatile ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16), align 4
  %cmp.not139 = icmp eq ptr %.pn137, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not139, label %do.end.for.end78_crit_edge, label %for.body.lr.ph

do.end.for.end78_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end78

for.body.lr.ph:                                   ; preds = %do.end
  %netdev = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 2
  %rf = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc68.for.body_crit_edge, %for.body.lr.ph
  %.pn140 = phi ptr [ %.pn137, %for.body.lr.ph ], [ %.pn, %for.inc68.for.body_crit_edge ]
  %ip_dev.0141 = getelementptr i8, ptr %.pn140, i32 -40
  %priv_flags.i.i = getelementptr i8, ptr %.pn140, i32 72
  %5 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %6, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.lor.lhs.false_crit_edge, label %rdma_vlan_dev_vlan_id.exit

for.body.lor.lhs.false_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

rdma_vlan_dev_vlan_id.exit:                       ; preds = %for.body
  %call1.i101 = call zeroext i16 @vlan_dev_vlan_id(ptr noundef %ip_dev.0141) #15
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call1.i101)
  %cmp11.not = icmp eq i16 %call1.i101, -1
  br i1 %cmp11.not, label %rdma_vlan_dev_vlan_id.exit.lor.lhs.false_crit_edge, label %land.lhs.true13

rdma_vlan_dev_vlan_id.exit.lor.lhs.false_crit_edge: ; preds = %rdma_vlan_dev_vlan_id.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

land.lhs.true13:                                  ; preds = %rdma_vlan_dev_vlan_id.exit
  %7 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i103 = and i64 %8, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i103)
  %tobool.i.not.i104 = icmp eq i64 %and.i.i103, 0
  br i1 %tobool.i.not.i104, label %land.lhs.true13.rdma_vlan_dev_real_dev.exit_crit_edge, label %cond.true.i106

land.lhs.true13.rdma_vlan_dev_real_dev.exit_crit_edge: ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #17
  br label %rdma_vlan_dev_real_dev.exit

cond.true.i106:                                   ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i105 = call ptr @vlan_dev_real_dev(ptr noundef %ip_dev.0141) #15
  br label %rdma_vlan_dev_real_dev.exit

rdma_vlan_dev_real_dev.exit:                      ; preds = %cond.true.i106, %land.lhs.true13.rdma_vlan_dev_real_dev.exit_crit_edge
  %cond.i107 = phi ptr [ %call1.i105, %cond.true.i106 ], [ null, %land.lhs.true13.rdma_vlan_dev_real_dev.exit_crit_edge ]
  %9 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %netdev, align 4
  %cmp15 = icmp eq ptr %cond.i107, %10
  br i1 %cmp15, label %rdma_vlan_dev_real_dev.exit.do.end23_crit_edge, label %rdma_vlan_dev_real_dev.exit.lor.lhs.false_crit_edge

rdma_vlan_dev_real_dev.exit.lor.lhs.false_crit_edge: ; preds = %rdma_vlan_dev_real_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false

rdma_vlan_dev_real_dev.exit.do.end23_crit_edge:   ; preds = %rdma_vlan_dev_real_dev.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end23

lor.lhs.false:                                    ; preds = %rdma_vlan_dev_real_dev.exit.lor.lhs.false_crit_edge, %rdma_vlan_dev_vlan_id.exit.lor.lhs.false_crit_edge, %for.body.lor.lhs.false_crit_edge
  %11 = ptrtoint ptr %netdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %netdev, align 4
  %cmp18 = icmp eq ptr %ip_dev.0141, %12
  br i1 %cmp18, label %lor.lhs.false.do.end23_crit_edge, label %lor.lhs.false.for.inc68_crit_edge

lor.lhs.false.for.inc68_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc68

lor.lhs.false.do.end23_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end23

do.end23:                                         ; preds = %lor.lhs.false.do.end23_crit_edge, %rdma_vlan_dev_real_dev.exit.do.end23_crit_edge
  %flags = getelementptr i8, ptr %.pn140, i32 64
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %flags, align 8
  %and = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %do.end23.for.inc68_crit_edge, label %if.then26

do.end23.for.inc68_crit_edge:                     ; preds = %do.end23
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc68

if.then26:                                        ; preds = %do.end23
  %ip6_ptr.i = getelementptr i8, ptr %.pn140, i32 512
  %15 = ptrtoint ptr %ip6_ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %ip6_ptr.i, align 8
  %call.i108 = call zeroext i1 @lockdep_rtnl_is_held() #15
  br i1 %call.i108, label %if.then26.__in6_dev_get.exit_crit_edge, label %lor.lhs.false.i

if.then26.__in6_dev_get.exit_crit_edge:           ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #17
  br label %__in6_dev_get.exit

lor.lhs.false.i:                                  ; preds = %if.then26
  %call2.i = call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i109 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i109, label %land.lhs.true.i110, label %lor.lhs.false.i.__in6_dev_get.exit_crit_edge

lor.lhs.false.i.__in6_dev_get.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__in6_dev_get.exit

land.lhs.true.i110:                               ; preds = %lor.lhs.false.i
  %call3.i = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i110.__in6_dev_get.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i110.__in6_dev_get.exit_crit_edge:  ; preds = %land.lhs.true.i110
  call void @__sanitizer_cov_trace_pc() #17
  br label %__in6_dev_get.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i110
  %.b10.i = load i1, ptr @__in6_dev_get.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, label %if.then.i111

land.lhs.true5.i.__in6_dev_get.exit_crit_edge:    ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__in6_dev_get.exit

if.then.i111:                                     ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__in6_dev_get.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.37, i32 noundef 313, ptr noundef nonnull @.str.26) #15
  br label %__in6_dev_get.exit

__in6_dev_get.exit:                               ; preds = %if.then.i111, %land.lhs.true5.i.__in6_dev_get.exit_crit_edge, %land.lhs.true.i110.__in6_dev_get.exit_crit_edge, %lor.lhs.false.i.__in6_dev_get.exit_crit_edge, %if.then26.__in6_dev_get.exit_crit_edge
  %tobool28.not = icmp eq ptr %16, null
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %__in6_dev_get.exit
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, ptr, ...) @ibdev_err(ptr noundef %iwdev, ptr noundef nonnull @.str.34) #20
  br label %for.end78

if.end30:                                         ; preds = %__in6_dev_get.exit
  %addr_list = getelementptr inbounds %struct.inet6_dev, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %addr_list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addr_list, align 4
  %cmp41.not133 = icmp eq ptr %18, %addr_list
  br i1 %cmp41.not133, label %if.end30.for.inc68_crit_edge, label %do.body44.lr.ph

if.end30.for.inc68_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc68

do.body44.lr.ph:                                  ; preds = %if.end30
  %dev_addr = getelementptr i8, ptr %.pn140, i32 536
  br label %do.body44

do.body44:                                        ; preds = %do.end57.do.body44_crit_edge, %do.body44.lr.ph
  %.pn98136.in = phi ptr [ %18, %do.body44.lr.ph ], [ %.pn98136, %do.end57.do.body44_crit_edge ]
  %ifp.0134 = getelementptr i8, ptr %.pn98136.in, i32 -228
  %19 = ptrtoint ptr %.pn98136.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn98136 = load ptr, ptr %.pn98136.in, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_add_ipv6_addr.__UNIQUE_ID_ddebug687, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_add_ipv6_addr, %if.then51)) #15
          to label %do.end57 [label %if.then51], !srcloc !198

if.then51:                                        ; preds = %do.body44
  %20 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i113 = and i64 %21, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i113)
  %tobool.i.not.i114 = icmp eq i64 %and.i.i113, 0
  br i1 %tobool.i.not.i114, label %if.then51.rdma_vlan_dev_vlan_id.exit118_crit_edge, label %cond.true.i116

if.then51.rdma_vlan_dev_vlan_id.exit118_crit_edge: ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  br label %rdma_vlan_dev_vlan_id.exit118

cond.true.i116:                                   ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i115 = call zeroext i16 @vlan_dev_vlan_id(ptr noundef %ip_dev.0141) #15
  br label %rdma_vlan_dev_vlan_id.exit118

rdma_vlan_dev_vlan_id.exit118:                    ; preds = %cond.true.i116, %if.then51.rdma_vlan_dev_vlan_id.exit118_crit_edge
  %cond.i117 = phi i16 [ %call1.i115, %cond.true.i116 ], [ -1, %if.then51.rdma_vlan_dev_vlan_id.exit118_crit_edge ]
  %conv54 = zext i16 %cond.i117 to i32
  %22 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_addr, align 64
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_add_ipv6_addr.__UNIQUE_ID_ddebug687, ptr noundef %iwdev, ptr noundef nonnull @.str.36, ptr noundef %ifp.0134, i32 noundef %conv54, ptr noundef %23) #15
  br label %do.end57

do.end57:                                         ; preds = %rdma_vlan_dev_vlan_id.exit118, %do.body44
  call void @irdma_copy_ip_ntohl(ptr noundef nonnull %local_ipaddr6, ptr noundef %ifp.0134) #15
  %24 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rf, align 8
  %26 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_addr, align 64
  call void @irdma_manage_arp_cache(ptr noundef %25, ptr noundef %27, ptr noundef nonnull %local_ipaddr6, i1 noundef zeroext false, i32 noundef 1) #15
  %cmp41.not = icmp eq ptr %.pn98136, %addr_list
  br i1 %cmp41.not, label %do.end57.for.inc68_crit_edge, label %do.end57.do.body44_crit_edge

do.end57.do.body44_crit_edge:                     ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body44

do.end57.for.inc68_crit_edge:                     ; preds = %do.end57
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc68

for.inc68:                                        ; preds = %do.end57.for.inc68_crit_edge, %if.end30.for.inc68_crit_edge, %do.end23.for.inc68_crit_edge, %lor.lhs.false.for.inc68_crit_edge
  %28 = ptrtoint ptr %.pn140 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load volatile ptr, ptr %.pn140, align 4
  %cmp.not = icmp eq ptr %.pn, getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 16)
  br i1 %cmp.not, label %for.inc68.for.end78_crit_edge, label %for.inc68.for.body_crit_edge

for.inc68.for.body_crit_edge:                     ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc68.for.end78_crit_edge:                    ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end78

for.end78:                                        ; preds = %for.inc68.for.end78_crit_edge, %if.then29, %do.end.for.end78_crit_edge
  %call.i119 = call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i119, label %for.end78.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i122

for.end78.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end78
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i122:                               ; preds = %for.end78
  %call1.i120 = call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i120)
  %tobool.not.i121 = icmp eq i32 %call1.i120, 0
  br i1 %tobool.not.i121, label %land.lhs.true.i122.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i124

land.lhs.true.i122.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i122
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i124:                              ; preds = %land.lhs.true.i122
  %.b4.i123 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i123, label %land.lhs.true2.i124.rcu_read_unlock.exit_crit_edge, label %if.then.i125

land.lhs.true2.i124.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i124
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i125:                                     ; preds = %land.lhs.true2.i124
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 724, ptr noundef nonnull @.str.33) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i125, %land.lhs.true2.i124.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i122.rcu_read_unlock.exit_crit_edge, %for.end78.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #15, !srcloc !207
  %29 = call i32 @llvm.read_register.i32(metadata !188) #15
  %and.i.i.i.i.i126 = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i126 to ptr
  %preempt_count.i.i.i.i127 = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i.i.i127 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i.i.i127, align 4
  %sub.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i127, align 4
  call void @rcu_read_unlock_strict() #15
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %local_ipaddr6) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %req_lock = getelementptr inbounds %struct.irdma_cqp, ptr %cqp, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #15
  %cqp_avail_reqs = getelementptr inbounds %struct.irdma_cqp, ptr %cqp, i32 0, i32 9
  %0 = ptrtoint ptr %cqp_avail_reqs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cqp_avail_reqs, align 4
  %cmp.i.not = icmp eq ptr %1, %cqp_avail_reqs
  br i1 %cmp.i.not, label %if.end.thread, label %if.then

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call2) #15
  br label %if.then10

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -268
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %1, ptr %1, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call2) #15
  %tobool9.not = icmp eq ptr %add.ptr, null
  br i1 %tobool9.not, label %if.end.if.then10_crit_edge, label %if.end.if.end36_crit_edge

if.end.if.end36_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then10

if.then10:                                        ; preds = %if.end.if.then10_crit_edge, %if.end.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2848, i32 noundef 304) #21
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %do.body24, label %if.then13

if.then13:                                        ; preds = %if.then10
  %dynamic = getelementptr inbounds %struct.irdma_cqp_request, ptr %call7.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %dynamic to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load = load i8, ptr %dynamic, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %dynamic, align 4
  br i1 %wait, label %do.body16, label %if.then13.if.end36_crit_edge

if.then13.if.end36_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end36

do.body16:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #17
  %waitq = getelementptr inbounds %struct.irdma_cqp_request, ptr %call7.i.i, i32 0, i32 1
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.8, ptr noundef nonnull @irdma_alloc_and_get_cqp_request.__key) #15
  br label %if.end36

do.body24:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_alloc_and_get_cqp_request.__UNIQUE_ID_ddebug696, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_alloc_and_get_cqp_request, %if.then31)) #15
          to label %cleanup [label %if.then31], !srcloc !198

if.then31:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.irdma_sc_cqp, ptr %cqp, i32 0, i32 4
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %iwdev.i = getelementptr i8, ptr %13, i32 24968
  %14 = ptrtoint ptr %iwdev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iwdev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_alloc_and_get_cqp_request.__UNIQUE_ID_ddebug696, ptr noundef %15, ptr noundef nonnull @.str.10) #15
  br label %cleanup

if.end36:                                         ; preds = %do.body16, %if.then13.if.end36_crit_edge, %if.end.if.end36_crit_edge
  %cqp_request.1.ph = phi ptr [ %call7.i.i, %if.then13.if.end36_crit_edge ], [ %call7.i.i, %do.body16 ], [ %add.ptr, %if.end.if.end36_crit_edge ]
  %waiting = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request.1.ph, i32 0, i32 7
  %16 = ptrtoint ptr %waiting to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load38 = load i8, ptr %waiting, align 4
  %bf.shl = select i1 %wait, i8 -128, i8 0
  %bf.clear39 = and i8 %bf.load38, 127
  %bf.set40 = or i8 %bf.clear39, %bf.shl
  store i8 %bf.set40, ptr %waiting, align 4
  %refcnt = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request.1.ph, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #15
  %17 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile i32 1, ptr %refcnt, align 4
  %compl_info = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request.1.ph, i32 0, i32 6
  %18 = call ptr @memset(ptr %compl_info, i32 0, i32 12)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then31, %do.body24
  %retval.0 = phi ptr [ %cqp_request.1.ph, %if.end36 ], [ null, %if.then31 ], [ null, %do.body24 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @to_ibdev(ptr nocapture noundef readonly %dev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %iwdev = getelementptr i8, ptr %dev, i32 24968
  %0 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iwdev, align 8
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef %cqp_request) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dynamic = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 7
  %0 = ptrtoint ptr %dynamic to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %dynamic, align 4
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @kfree(ptr noundef %cqp_request) #15
  br label %if.end

if.else:                                          ; preds = %entry
  %callback_fcn = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 4
  %2 = ptrtoint ptr %callback_fcn to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %callback_fcn, align 8
  %bf.clear4 = and i8 %bf.load, 63
  %3 = ptrtoint ptr %dynamic to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.clear4, ptr %dynamic, align 4
  %req_lock = getelementptr inbounds %struct.irdma_cqp, ptr %cqp, i32 0, i32 1
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %req_lock) #15
  %list = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 2
  %cqp_avail_reqs = getelementptr inbounds %struct.irdma_cqp, ptr %cqp, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.irdma_cqp, ptr %cqp, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %cqp_avail_reqs) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_add_tail.exit_crit_edge

if.else.list_add_tail.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %cqp_avail_reqs, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.else.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %req_lock, i32 noundef %call7) #15
  br label %if.end

if.end:                                           ; preds = %list_add_tail.exit, %if.then
  %remove_wq = getelementptr inbounds %struct.irdma_cqp, ptr %cqp, i32 0, i32 4
  tail call void @__wake_up(ptr noundef %remove_wq, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_put_cqp_request(ptr noundef %cqp, ptr noundef %cqp_request) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !210

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef %cqp_request)
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_cleanup_pending_cqp_op(ptr noundef %rf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  %cqp1 = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46
  %sq_ring = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 0, i32 7
  %0 = ptrtoint ptr %sq_ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sq_ring, align 8
  %size = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 0, i32 7, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 8
  %add = add i32 %3, %1
  %tail = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 0, i32 7, i32 1
  %4 = ptrtoint ptr %tail to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tail, align 4
  %sub = sub i32 %add, %5
  %rem = urem i32 %sub, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp39.not = icmp eq i32 %rem, 0
  br i1 %cmp39.not, label %entry.while.cond.preheader_crit_edge, label %for.body.lr.ph

entry.while.cond.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader

for.body.lr.ph:                                   ; preds = %entry
  %scratch_array = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46, i32 7
  br label %for.body

while.cond.preheader:                             ; preds = %if.end.while.cond.preheader_crit_edge, %entry.while.cond.preheader_crit_edge
  %6 = ptrtoint ptr %sc_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %sc_dev, align 4
  %cmp.i.not42 = icmp eq ptr %7, %sc_dev
  br i1 %cmp.i.not42, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %wqe_idx.041 = phi i32 [ %5, %for.body.lr.ph ], [ %rem16, %if.end.for.body_crit_edge ]
  %i.040 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %scratch_array to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %scratch_array, align 8
  %arrayidx = getelementptr i64, ptr %9, i32 %wqe_idx.041
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx, align 8
  %conv = trunc i64 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv)
  %tobool.not = icmp eq i32 %conv, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  %12 = inttoptr i32 %conv to ptr
  tail call fastcc void @irdma_free_pending_cqp_request(ptr noundef %cqp1, ptr noundef nonnull %12)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %add12 = add i32 %wqe_idx.041, 1
  %13 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %size, align 8
  %rem16 = urem i32 %add12, %14
  %inc = add nuw i32 %i.040, 1
  %cmp = icmp ult i32 %inc, %rem
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.while.cond.preheader_crit_edge

if.end.while.cond.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.preheader

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %15 = ptrtoint ptr %sc_dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %sc_dev, align 4
  %cmp.i.not.i = icmp eq ptr %16, %sc_dev
  br i1 %cmp.i.not.i, label %while.body.if.end21_crit_edge, label %if.end.i

while.body.if.end21_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.end.i:                                         ; preds = %while.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.irdma_remove_cqp_head.exit_crit_edge

if.end.i.irdma_remove_cqp_head.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_remove_cqp_head.exit

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %irdma_remove_cqp_head.exit

irdma_remove_cqp_head.exit:                       ; preds = %if.end.i.i.i, %if.end.i.irdma_remove_cqp_head.exit_crit_edge
  %23 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %16, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %tobool19.not = icmp eq ptr %16, null
  br i1 %tobool19.not, label %irdma_remove_cqp_head.exit.if.end21_crit_edge, label %if.then20

irdma_remove_cqp_head.exit.if.end21_crit_edge:    ; preds = %irdma_remove_cqp_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end21

if.then20:                                        ; preds = %irdma_remove_cqp_head.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call fastcc void @irdma_free_pending_cqp_request(ptr noundef %cqp1, ptr noundef nonnull %16)
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %irdma_remove_cqp_head.exit.if.end21_crit_edge, %while.body.if.end21_crit_edge
  %25 = ptrtoint ptr %sc_dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %sc_dev, align 4
  %cmp.i.not = icmp eq ptr %26, %sc_dev
  br i1 %cmp.i.not, label %if.end21.while.end_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end21.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irdma_free_pending_cqp_request(ptr noundef %cqp, ptr noundef %cqp_request) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %waiting = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 7
  %0 = ptrtoint ptr %waiting to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %waiting, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %error = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 6, i32 3
  %1 = ptrtoint ptr %error to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %error, align 8
  %bf.set = or i8 %bf.load, 64
  %2 = ptrtoint ptr %waiting to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %bf.set, ptr %waiting, align 4
  %waitq = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 1
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 513) #15
  %refcnt = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #15
  %3 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.end.if.end37_crit_edge, label %if.then11

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end37

if.then11:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #15
  %5 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #15
  %remove_wq = getelementptr inbounds %struct.irdma_cqp, ptr %cqp, i32 0, i32 4
  %call1359 = call i32 @prepare_to_wait_event(ptr noundef %remove_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %call.i.i.i5560 = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #15
  %6 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp1761 = icmp eq i32 %7, 1
  br i1 %cmp1761, label %if.then11.for.end_crit_edge, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  br label %cleanup

if.then11.for.end_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then11.cleanup_crit_edge
  %__ret12.162 = phi i32 [ %__ret12.1, %cleanup.cleanup_crit_edge ], [ 1000, %if.then11.cleanup_crit_edge ]
  %call34 = call i32 @schedule_timeout(i32 noundef %__ret12.162) #15
  %call13 = call i32 @prepare_to_wait_event(ptr noundef %remove_wq, ptr noundef nonnull %__wq_entry, i32 noundef 2) #15
  %call.i.i.i55 = call zeroext i1 @__kasan_check_read(ptr noundef %refcnt, i32 noundef 4) #15
  %8 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp17 = icmp eq i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool21.not = icmp eq i32 %call34, 0
  %10 = select i1 %cmp17, i1 %tobool21.not, i1 false
  %__ret12.1 = select i1 %10, i32 1, i32 %call34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret12.1)
  %tobool27.not = icmp eq i32 %__ret12.1, 0
  %11 = select i1 %cmp17, i1 true, i1 %tobool27.not
  br i1 %11, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then11.for.end_crit_edge
  call void @finish_wait(ptr noundef %remove_wq, ptr noundef nonnull %__wq_entry) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #15
  br label %if.end37

if.end37:                                         ; preds = %for.end, %if.end.if.end37_crit_edge
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #15
  %12 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.irdma_put_cqp_request.exit_crit_edge, label %if.then10.i.i.i.i, !prof !210

if.end5.i.i.i.i.irdma_put_cqp_request.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_put_cqp_request.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #15
  br label %irdma_put_cqp_request.exit

if.then.i:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  call void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef %cqp_request) #15
  br label %irdma_put_cqp_request.exit

irdma_put_cqp_request.exit:                       ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.irdma_put_cqp_request.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @irdma_remove_cqp_head(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %dev, align 4
  %cmp.i.not = icmp eq ptr %1, %dev
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %list_del.exit ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @irdma_cqp_crit_err(ptr nocapture noundef readonly %dev, i8 noundef zeroext %cqp_cmd, i16 noundef zeroext %maj_err_code, i16 noundef zeroext %min_err_code) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %maj_err_code)
  %cmp2 = icmp eq i16 %maj_err_code, -1
  br i1 %cmp2, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %switch.tableidx = add i16 %min_err_code, 32762
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %switch.tableidx)
  %0 = icmp ult i16 %switch.tableidx, 5
  br i1 %0, label %switch.hole_check, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.hole_check:                                ; preds = %land.lhs.true
  %switch.maskindex = trunc i16 %switch.tableidx to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  %2 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.irdma_cqp_crit_err, i32 0, i32 %2
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load i32, ptr %switch.gep, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_cqp_crit_err.__UNIQUE_ID_ddebug697, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_cqp_crit_err, %if.then11)) #15
          to label %cleanup [label %if.then11], !srcloc !198

if.then11:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  %conv4.le = zext i16 %min_err_code to i32
  %conv.le = zext i16 %maj_err_code to i32
  %iwdev.i = getelementptr i8, ptr %dev, i32 24968
  %4 = ptrtoint ptr %iwdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iwdev.i, align 8
  %desc = getelementptr [4 x %struct.irdma_cqp_err_info], ptr @irdma_noncrit_err_list, i32 0, i32 %switch.load, i32 2
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %idxprom = zext i8 %cqp_cmd to i32
  %arrayidx14 = getelementptr [51 x ptr], ptr @irdma_cqp_cmd_names, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx14, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_cqp_crit_err.__UNIQUE_ID_ddebug697, ptr noundef %5, ptr noundef nonnull @.str.12, ptr noundef %7, ptr noundef %9, i32 noundef %conv.le, i32 noundef %conv4.le) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %switch.lookup, %switch.hole_check.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp26 = phi i1 [ false, %switch.lookup ], [ false, %if.then11 ], [ true, %entry.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %switch.hole_check.cleanup_crit_edge ]
  ret i1 %cmp26
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_handle_cqp_op(ptr noundef %rf, ptr noundef %cqp_request) local_unnamed_addr #0 align 64 {
entry:
  %cqp_timeout.i = alloca %struct.irdma_cqp_timeout, align 8
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_dev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 42
  %0 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %rf, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcnt.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !212
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !213

if.end.if.end15.sink.split.i.i.i.i_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %2 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %.not.i.i.i.i = icmp sgt i32 %2, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.irdma_get_cqp_request.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !210

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.irdma_get_cqp_request.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_get_cqp_request.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #15
  br label %irdma_get_cqp_request.exit

irdma_get_cqp_request.exit:                       ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.irdma_get_cqp_request.exit_crit_edge
  %call = tail call i32 @irdma_process_cqp_cmd(ptr noundef %sc_dev, ptr noundef %cqp_request) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %irdma_get_cqp_request.exit.err_crit_edge

irdma_get_cqp_request.exit.err_crit_edge:         ; preds = %irdma_get_cqp_request.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end3:                                          ; preds = %irdma_get_cqp_request.exit
  %waiting = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 7
  %3 = ptrtoint ptr %waiting to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load4 = load i8, ptr %waiting, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load4)
  %bf.cast6.not = icmp sgt i8 %bf.load4, -1
  br i1 %bf.cast6.not, label %if.end3.cleanup_crit_edge, label %if.then7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then7:                                         ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cqp_timeout.i) #15
  %4 = getelementptr inbounds i8, ptr %cqp_timeout.i, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %4, align 8
  %arrayidx.i = getelementptr %struct.irdma_pci_f, ptr %rf, i32 0, i32 42, i32 24, i32 29
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %arrayidx.i, align 8
  %8 = ptrtoint ptr %cqp_timeout.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %cqp_timeout.i, align 8
  %ccq.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 47
  %waitq.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 1
  br label %do.body.i

do.body.i:                                        ; preds = %if.end42.i.do.body.i_crit_edge, %if.then7
  call void @irdma_cqp_ce_handler(ptr noundef %rf, ptr noundef %ccq.i) #15
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 566) #15
  %9 = ptrtoint ptr %waiting to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load.i = load i8, ptr %waiting, align 4
  %10 = and i8 %bf.load.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %bf.cast.not.not.i = icmp eq i8 %10, 0
  br i1 %bf.cast.not.not.i, label %if.then9.i, label %do.body.i.do.end54.i_crit_edge

do.body.i.do.end54.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end54.i

if.then9.i:                                       ; preds = %do.body.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #15
  %11 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #15
  %call12114.i = call i32 @prepare_to_wait_event(ptr noundef %waitq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #15
  %12 = ptrtoint ptr %waiting to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load15115.i = load i8, ptr %waiting, align 4
  %13 = and i8 %bf.load15115.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %bf.cast18.not116.not.i = icmp eq i8 %13, 0
  br i1 %bf.cast18.not116.not.i, label %if.then9.i.cleanup.i_crit_edge, label %if.end38.thread.i

if.then9.i.cleanup.i_crit_edge:                   ; preds = %if.then9.i
  br label %cleanup.i

if.end38.thread.i:                                ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @finish_wait(ptr noundef %waitq.i, ptr noundef nonnull %__wq_entry.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #15
  br label %do.end54.i

cleanup.i:                                        ; preds = %cleanup.i.cleanup.i_crit_edge, %if.then9.i.cleanup.i_crit_edge
  %__ret10.1118.i = phi i32 [ %__ret10.1.i, %cleanup.i.cleanup.i_crit_edge ], [ 1, %if.then9.i.cleanup.i_crit_edge ]
  %call35.i = call i32 @schedule_timeout(i32 noundef %__ret10.1118.i) #15
  %call12.i = call i32 @prepare_to_wait_event(ptr noundef %waitq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 2) #15
  %14 = ptrtoint ptr %waiting to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load15.i = load i8, ptr %waiting, align 4
  %15 = and i8 %bf.load15.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %bf.cast18.not.i = icmp eq i8 %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool22.not.i = icmp eq i32 %call35.i, 0
  %spec.store.select83.i = select i1 %tobool22.not.i, i32 1, i32 %call35.i
  %__ret10.1.i = select i1 %bf.cast18.not.i, i32 %call35.i, i32 %spec.store.select83.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret10.1.i)
  %tobool28.not.i = icmp eq i32 %__ret10.1.i, 0
  %not.bf.cast18.not.i = xor i1 %bf.cast18.not.i, true
  %16 = select i1 %not.bf.cast18.not.i, i1 true, i1 %tobool28.not.i
  br i1 %16, label %if.end38.i, label %cleanup.i.cleanup.i_crit_edge

cleanup.i.cleanup.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i

if.end38.i:                                       ; preds = %cleanup.i
  call void @finish_wait(ptr noundef %waitq.i, ptr noundef nonnull %__wq_entry.i) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #15
  br i1 %tobool28.not.i, label %if.end42.i, label %if.end38.i.do.end54.i_crit_edge

if.end38.i.do.end54.i_crit_edge:                  ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end54.i

if.end42.i:                                       ; preds = %if.end38.i
  call void @irdma_check_cqp_progress(ptr noundef nonnull %cqp_timeout.i, ptr noundef %sc_dev) #15
  %17 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %4, align 8
  %cmp.i = icmp ult i32 %18, 500
  br i1 %cmp.i, label %if.end42.i.do.body.i_crit_edge, label %if.end45.i

if.end42.i.do.body.i_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.body.i

if.end45.i:                                       ; preds = %if.end42.i
  %19 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load46.i = load i8, ptr %rf, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load46.i)
  %bf.cast48.not.i = icmp sgt i8 %bf.load46.i, -1
  br i1 %bf.cast48.not.i, label %if.end45.i.cleanup80.sink.split.i_crit_edge, label %if.end45.i.irdma_wait_event.exit.thread_crit_edge

if.end45.i.irdma_wait_event.exit.thread_crit_edge: ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_wait_event.exit.thread

if.end45.i.cleanup80.sink.split.i_crit_edge:      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup80.sink.split.i

do.end54.i:                                       ; preds = %if.end38.i.do.end54.i_crit_edge, %if.end38.thread.i, %do.body.i.do.end54.i_crit_edge
  %error.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 6, i32 3
  %20 = ptrtoint ptr %error.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %error.i, align 8, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool55.not.i = icmp eq i8 %21, 0
  br i1 %tobool55.not.i, label %irdma_wait_event.exit, label %if.then58.i

if.then58.i:                                      ; preds = %do.end54.i
  %maj_err_code.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %maj_err_code.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %maj_err_code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %23)
  %cmp60.i = icmp eq i16 %23, -1
  br i1 %cmp60.i, label %land.lhs.true62.i, label %if.then58.i.irdma_wait_event.exit.thread_crit_edge

if.then58.i.irdma_wait_event.exit.thread_crit_edge: ; preds = %if.then58.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_wait_event.exit.thread

land.lhs.true62.i:                                ; preds = %if.then58.i
  %min_err_code.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 6, i32 2
  %24 = ptrtoint ptr %min_err_code.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %min_err_code.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32727, i16 %25)
  %cmp65.i = icmp eq i16 %25, -32727
  br i1 %cmp65.i, label %if.then67.i, label %land.lhs.true62.i.irdma_wait_event.exit.thread_crit_edge

land.lhs.true62.i.irdma_wait_event.exit.thread_crit_edge: ; preds = %land.lhs.true62.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_wait_event.exit.thread

if.then67.i:                                      ; preds = %land.lhs.true62.i
  %26 = ptrtoint ptr %rf to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load68.i = load i8, ptr %rf, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load68.i)
  %bf.cast70.not.i = icmp sgt i8 %bf.load68.i, -1
  br i1 %bf.cast70.not.i, label %if.then67.i.cleanup80.sink.split.i_crit_edge, label %if.then67.i.irdma_wait_event.exit.thread_crit_edge

if.then67.i.irdma_wait_event.exit.thread_crit_edge: ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_wait_event.exit.thread

if.then67.i.cleanup80.sink.split.i_crit_edge:     ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup80.sink.split.i

cleanup80.sink.split.i:                           ; preds = %if.then67.i.cleanup80.sink.split.i_crit_edge, %if.end45.i.cleanup80.sink.split.i_crit_edge
  %bf.load68.sink.i = phi i8 [ %bf.load46.i, %if.end45.i.cleanup80.sink.split.i_crit_edge ], [ %bf.load68.i, %if.then67.i.cleanup80.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ -27, %if.end45.i.cleanup80.sink.split.i_crit_edge ], [ -29, %if.then67.i.cleanup80.sink.split.i_crit_edge ]
  %bf.set74.i = or i8 %bf.load68.sink.i, -128
  %27 = ptrtoint ptr %rf to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.set74.i, ptr %rf, align 8
  %gen_ops75.i = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 70
  %28 = ptrtoint ptr %gen_ops75.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %gen_ops75.i, align 4
  call void %29(ptr noundef %rf) #15
  br label %irdma_wait_event.exit.thread

irdma_wait_event.exit.thread:                     ; preds = %cleanup80.sink.split.i, %if.then67.i.irdma_wait_event.exit.thread_crit_edge, %land.lhs.true62.i.irdma_wait_event.exit.thread_crit_edge, %if.then58.i.irdma_wait_event.exit.thread_crit_edge, %if.end45.i.irdma_wait_event.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %retval.0.ph.i, %cleanup80.sink.split.i ], [ -29, %if.then58.i.irdma_wait_event.exit.thread_crit_edge ], [ -29, %land.lhs.true62.i.irdma_wait_event.exit.thread_crit_edge ], [ -29, %if.then67.i.irdma_wait_event.exit.thread_crit_edge ], [ -27, %if.end45.i.irdma_wait_event.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cqp_timeout.i) #15
  br label %err

irdma_wait_event.exit:                            ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cqp_timeout.i) #15
  br label %cleanup

err:                                              ; preds = %irdma_wait_event.exit.thread, %irdma_get_cqp_request.exit.err_crit_edge
  %status.0 = phi i32 [ %call, %irdma_get_cqp_request.exit.err_crit_edge ], [ %retval.0.i.ph, %irdma_wait_event.exit.thread ]
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %cqp_request, i32 0, i32 1
  %30 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %cqp_cmd, align 8
  %maj_err_code = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %maj_err_code to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %maj_err_code, align 4
  %min_err_code = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 6, i32 2
  %34 = ptrtoint ptr %min_err_code to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %min_err_code, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %33)
  %cmp2.i = icmp eq i16 %33, -1
  br i1 %cmp2.i, label %land.lhs.true.i, label %err.if.then15_crit_edge

err.if.then15_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15

land.lhs.true.i:                                  ; preds = %err
  %switch.tableidx = add i16 %35, 32762
  call void @__sanitizer_cov_trace_const_cmp2(i16 5, i16 %switch.tableidx)
  %36 = icmp ult i16 %switch.tableidx, 5
  br i1 %36, label %switch.hole_check, label %land.lhs.true.i.if.then15_crit_edge

land.lhs.true.i.if.then15_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15

switch.hole_check:                                ; preds = %land.lhs.true.i
  %switch.maskindex = trunc i16 %switch.tableidx to i8
  %switch.shifted = lshr i8 27, %switch.maskindex
  %37 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %switch.lobit.not = icmp eq i8 %37, 0
  br i1 %switch.lobit.not, label %switch.hole_check.if.then15_crit_edge, label %switch.lookup

switch.hole_check.if.then15_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then15

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #17
  %38 = sext i16 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.irdma_handle_cqp_op, i32 0, i32 %38
  %39 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %39)
  %switch.load = load i32, ptr %switch.gep, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_cqp_crit_err.__UNIQUE_ID_ddebug697, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_handle_cqp_op, %if.then11.i)) #15
          to label %if.end32 [label %if.then11.i], !srcloc !198

if.then11.i:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #17
  %conv4.le.i = zext i16 %35 to i32
  %iwdev.i.i = getelementptr %struct.irdma_pci_f, ptr %rf, i32 0, i32 71
  %40 = ptrtoint ptr %iwdev.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iwdev.i.i, align 8
  %desc.i = getelementptr [4 x %struct.irdma_cqp_err_info], ptr @irdma_noncrit_err_list, i32 0, i32 %switch.load, i32 2
  %42 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %desc.i, align 4
  %idxprom.i = zext i8 %31 to i32
  %arrayidx14.i = getelementptr [51 x ptr], ptr @irdma_cqp_cmd_names, i32 0, i32 %idxprom.i
  %44 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx14.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_cqp_crit_err.__UNIQUE_ID_ddebug697, ptr noundef %41, ptr noundef nonnull @.str.12, ptr noundef %43, ptr noundef %45, i32 noundef 65535, i32 noundef %conv4.le.i) #15
  br label %if.end32

if.then15:                                        ; preds = %switch.hole_check.if.then15_crit_edge, %land.lhs.true.i.if.then15_crit_edge, %err.if.then15_crit_edge
  %iwdev = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 71
  %46 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %iwdev, align 8
  %48 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %cqp_cmd, align 8
  %idxprom = zext i8 %49 to i32
  %arrayidx = getelementptr [51 x ptr], ptr @irdma_cqp_cmd_names, i32 0, i32 %idxprom
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx, align 4
  %waiting18 = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 7
  %52 = ptrtoint ptr %waiting18 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load19 = load i8, ptr %waiting18, align 4
  %bf.load19.lobit = lshr i8 %bf.load19, 7
  %53 = zext i8 %bf.load19.lobit to i32
  %error = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 6, i32 3
  %54 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %error, align 8, !range !214
  %56 = zext i8 %55 to i32
  %57 = ptrtoint ptr %maj_err_code to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %maj_err_code, align 4
  %conv28 = zext i16 %58 to i32
  %59 = ptrtoint ptr %min_err_code to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %min_err_code, align 2
  %conv31 = zext i16 %60 to i32
  call void (ptr, ptr, ...) @ibdev_err(ptr noundef %47, ptr noundef nonnull @.str.13, ptr noundef %51, i32 noundef %idxprom, i32 noundef %status.0, i32 noundef %53, i32 noundef %56, i32 noundef %conv28, i32 noundef %conv31) #20
  br label %if.end32

if.end32:                                         ; preds = %if.then15, %if.then11.i, %switch.lookup
  br i1 %tobool.not, label %if.end32.cleanup_crit_edge, label %if.then34

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then34:                                        ; preds = %if.end32
  %call.i.i.i.i.i.i63 = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %61 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i64 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i64, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !210

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #17
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  call void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef %cqp_request) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %irdma_wait_event.exit, %if.end3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -48, %entry.cleanup_crit_edge ], [ 0, %irdma_wait_event.exit ], [ 0, %if.end3.cleanup_crit_edge ], [ %status.0, %if.end32.cleanup_crit_edge ], [ %status.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %status.0, %if.then10.i.i.i.i ], [ %status.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_process_cqp_cmd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @ibdev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_qp_add_ref(ptr noundef %ibqp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %refcnt = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #15
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #15, !srcloc !212
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !213

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !210

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef %.sink.i.i.i) #15
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_qp_rem_ref(ptr noundef %ibqp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %iwdev1 = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 3
  %0 = ptrtoint ptr %iwdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iwdev1, align 8
  %rf = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf, align 8
  %qptable_lock = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 54
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %qptable_lock) #15
  %refcnt = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 14
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.then_crit_edge, label %if.then10.i.i.i, !prof !210

if.end5.i.i.i.if.then_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #15
  br label %if.then

if.then:                                          ; preds = %if.then10.i.i.i, %if.end5.i.i.i.if.then_crit_edge
  %5 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rf, align 8
  %qptable_lock9 = getelementptr inbounds %struct.irdma_pci_f, ptr %6, i32 0, i32 54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qptable_lock9, i32 noundef %call4) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  %qp_num11 = getelementptr inbounds %struct.ib_qp, ptr %ibqp, i32 0, i32 19
  %7 = ptrtoint ptr %qp_num11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %qp_num11, align 4
  %9 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rf, align 8
  %qp_table = getelementptr inbounds %struct.irdma_pci_f, ptr %10, i32 0, i32 55
  %11 = ptrtoint ptr %qp_table to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qp_table, align 8
  %arrayidx = getelementptr ptr, ptr %12, i32 %8
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx, align 4
  %14 = load ptr, ptr %rf, align 8
  %qptable_lock14 = getelementptr inbounds %struct.irdma_pci_f, ptr %14, i32 0, i32 54
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %qptable_lock14, i32 noundef %call4) #15
  %free_qp = getelementptr inbounds %struct.irdma_qp, ptr %ibqp, i32 0, i32 42
  tail call void @complete(ptr noundef %free_qp) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @irdma_get_qp(ptr nocapture noundef readonly %device, i32 noundef %qpn) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %qpn)
  %cmp = icmp slt i32 %qpn, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %rf = getelementptr inbounds %struct.irdma_device, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rf, align 8
  %max_qp = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %max_qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_qp, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %qpn)
  %cmp1.not = icmp ugt i32 %3, %qpn
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %qp_table = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 55
  %4 = ptrtoint ptr %qp_table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qp_table, align 8
  %arrayidx = getelementptr ptr, ptr %5, i32 %qpn
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.end ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_cqp_sds_cmd(ptr noundef %dev, ptr nocapture noundef readonly %sdinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cqp = getelementptr i8, ptr %dev, i32 22672
  %call1 = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -160
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3
  %info2 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1
  %0 = call ptr @memcpy(ptr %info2, ptr %sdinfo, i32 184)
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 21, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %post_sq, align 1
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %in, align 8
  %4 = ptrtoint ptr %call1 to i32
  %conv = zext i32 %4 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 2
  %5 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %scratch, align 8
  %call8 = tail call i32 @irdma_handle_cqp_op(ptr noundef %add.ptr.i, ptr noundef nonnull %call1)
  %refcnt.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %call1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !210

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ %call8, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call8, %if.then10.i.i.i.i ], [ %call8, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_cqp_qp_suspend_resume(ptr noundef %qp, i8 noundef zeroext %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 6
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %cqp2 = getelementptr inbounds %struct.irdma_sc_dev, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %cqp2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cqp2, align 4
  %cqp3 = getelementptr i8, ptr %1, i32 22672
  %call4 = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp3, i1 noundef zeroext false)
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -160
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call4, i32 0, i32 1
  %4 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %op, ptr %cqp_cmd, align 8
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call4, i32 0, i32 3
  %5 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %3, ptr %in, align 8
  %qp8 = getelementptr inbounds %struct.anon.208, ptr %in, i32 0, i32 1
  %6 = ptrtoint ptr %qp8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %qp, ptr %qp8, align 4
  %7 = ptrtoint ptr %call4 to i32
  %conv = zext i32 %7 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call4, i32 0, i32 3, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %scratch, align 8
  %call11 = tail call i32 @irdma_handle_cqp_op(ptr noundef %add.ptr.i, ptr noundef nonnull %call4)
  %refcnt.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %call4, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !210

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @irdma_free_cqp_request(ptr noundef %cqp3, ptr noundef nonnull %call4) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ %call11, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call11, %if.then10.i.i.i.i ], [ %call11, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_term_modify_qp(ptr nocapture noundef readonly %qp, i8 noundef zeroext %next_state, i8 noundef zeroext %term, i8 noundef zeroext %term_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %back_qp = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 28
  %0 = ptrtoint ptr %back_qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back_qp, align 8
  tail call void @irdma_next_iw_state(ptr noundef %1, i8 noundef zeroext %next_state, i8 noundef zeroext 0, i8 noundef zeroext %term, i8 noundef zeroext %term_len) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_next_iw_state(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_terminate_done(ptr nocapture noundef %qp, i32 noundef %timeout_occurred) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %back_qp = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 28
  %0 = ptrtoint ptr %back_qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back_qp, align 8
  %lock = getelementptr inbounds %struct.irdma_qp, ptr %1, i32 0, i32 25
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %hte_added = getelementptr inbounds %struct.irdma_qp, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %hte_added to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %hte_added, align 8
  %3 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %bf.clear7 = and i8 %bf.load, -33
  %4 = ptrtoint ptr %hte_added to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.clear7, ptr %hte_added, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hte.0 = phi i8 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %term_flags = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 30
  %5 = ptrtoint ptr %term_flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %term_flags, align 4
  %7 = and i8 %6, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not = icmp eq i8 %7, 0
  %or = or i8 %6, 4
  %8 = ptrtoint ptr %term_flags to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or, ptr %term_flags, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #15
  br i1 %tobool9.not, label %if.then15, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout_occurred)
  %tobool16.not = icmp eq i32 %timeout_occurred, 0
  br i1 %tobool16.not, label %if.then17, label %if.then15.if.end18_crit_edge

if.then15.if.end18_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then17:                                        ; preds = %if.then15
  %9 = ptrtoint ptr %back_qp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %back_qp, align 8
  %terminate_timer.i = getelementptr inbounds %struct.irdma_qp, ptr %10, i32 0, i32 38
  %call.i = tail call i32 @del_timer(ptr noundef %terminate_timer.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then17.if.end18_crit_edge, label %if.then.i

if.then17.if.end18_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then.i:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @irdma_qp_rem_ref(ptr noundef %10) #15
  br label %if.end18

if.end18:                                         ; preds = %if.then.i, %if.then17.if.end18_crit_edge, %if.then15.if.end18_crit_edge
  tail call void @irdma_next_iw_state(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext %hte.0, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  tail call void @irdma_cm_disconn(ptr noundef %1) #15
  br label %if.end19

if.end19:                                         ; preds = %if.end18, %if.end.if.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_terminate_del_timer(ptr nocapture noundef readonly %qp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %back_qp = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 28
  %0 = ptrtoint ptr %back_qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back_qp, align 8
  %terminate_timer = getelementptr inbounds %struct.irdma_qp, ptr %1, i32 0, i32 38
  %call = tail call i32 @del_timer(ptr noundef %terminate_timer) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @irdma_qp_rem_ref(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_cm_disconn(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_terminate_start_timer(ptr nocapture noundef readonly %qp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %back_qp = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 28
  %0 = ptrtoint ptr %back_qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back_qp, align 8
  %refcnt.i = getelementptr inbounds %struct.irdma_qp, ptr %1, i32 0, i32 14
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !212
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !213

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.irdma_qp_add_ref.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !210

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.irdma_qp_add_ref.exit_crit_edge:  ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_qp_add_ref.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef %.sink.i.i.i.i) #15
  br label %irdma_qp_add_ref.exit

irdma_qp_add_ref.exit:                            ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.irdma_qp_add_ref.exit_crit_edge
  %terminate_timer = getelementptr inbounds %struct.irdma_qp, ptr %1, i32 0, i32 38
  tail call void @init_timer_key(ptr noundef %terminate_timer, ptr noundef nonnull @irdma_terminate_timeout, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @irdma_terminate_start_timer.__key) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %4 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %4, 100
  %expires = getelementptr inbounds %struct.irdma_qp, ptr %1, i32 0, i32 38, i32 1
  %5 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %expires, align 8
  tail call void @add_timer(ptr noundef %terminate_timer) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_terminate_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %back_qp.i = getelementptr i8, ptr %t, i32 -912
  %0 = ptrtoint ptr %back_qp.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back_qp.i, align 8
  %lock.i = getelementptr inbounds %struct.irdma_qp, ptr %1, i32 0, i32 25
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #15
  %hte_added.i = getelementptr inbounds %struct.irdma_qp, ptr %1, i32 0, i32 30
  %2 = ptrtoint ptr %hte_added.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load.i = load i8, ptr %hte_added.i, align 8
  %3 = and i8 %bf.load.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %bf.clear7.i = and i8 %bf.load.i, -33
  %4 = ptrtoint ptr %hte_added.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %bf.clear7.i, ptr %hte_added.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %hte.0.i = phi i8 [ 1, %if.then.i ], [ 0, %entry.if.end.i_crit_edge ]
  %term_flags.i = getelementptr i8, ptr %t, i32 -644
  %5 = ptrtoint ptr %term_flags.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %term_flags.i, align 4
  %7 = and i8 %6, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool9.not.i = icmp eq i8 %7, 0
  %or.i = or i8 %6, 4
  %8 = ptrtoint ptr %term_flags.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %or.i, ptr %term_flags.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #15
  br i1 %tobool9.not.i, label %if.then15.i, label %if.end.i.irdma_terminate_done.exit_crit_edge

if.end.i.irdma_terminate_done.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_terminate_done.exit

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @irdma_next_iw_state(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext %hte.0.i, i8 noundef zeroext 0, i8 noundef zeroext 0) #15
  tail call void @irdma_cm_disconn(ptr noundef %1) #15
  br label %irdma_terminate_done.exit

irdma_terminate_done.exit:                        ; preds = %if.then15.i, %if.end.i.irdma_terminate_done.exit_crit_edge
  %add.ptr = getelementptr i8, ptr %t, i32 -1296
  tail call void @irdma_qp_rem_ref(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_cqp_query_fpm_val_cmd(ptr noundef %dev, ptr nocapture noundef readonly %val_mem, i8 noundef zeroext %hmc_fn_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cqp = getelementptr i8, ptr %dev, i32 22672
  %call1 = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -160
  %param = getelementptr inbounds %struct.irdma_cqp_request, ptr %call1, i32 0, i32 5
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %param, align 4
  %cqp2 = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %cqp2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cqp2, align 4
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %in, align 8
  %pa = getelementptr inbounds %struct.irdma_dma_mem, ptr %val_mem, i32 0, i32 1
  %4 = ptrtoint ptr %pa to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %pa, align 1
  %conv = zext i32 %5 to i64
  %fpm_val_pa = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %fpm_val_pa to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %fpm_val_pa, align 8
  %7 = ptrtoint ptr %val_mem to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load ptr, ptr %val_mem, align 1
  %fpm_val_va = getelementptr inbounds %struct.anon.203, ptr %in, i32 0, i32 1
  %9 = ptrtoint ptr %fpm_val_va to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %fpm_val_va, align 4
  %hmc_fn_id10 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %hmc_fn_id10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %hmc_fn_id, ptr %hmc_fn_id10, align 8
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 1
  %11 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 26, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 2
  %12 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %post_sq, align 1
  %13 = ptrtoint ptr %call1 to i32
  %conv11 = zext i32 %13 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv11, ptr %scratch, align 8
  %call14 = tail call i32 @irdma_handle_cqp_op(ptr noundef %add.ptr.i, ptr noundef nonnull %call1)
  %refcnt.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %call1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !210

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ %call14, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call14, %if.then10.i.i.i.i ], [ %call14, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_cqp_commit_fpm_val_cmd(ptr noundef %dev, ptr nocapture noundef readonly %val_mem, i8 noundef zeroext %hmc_fn_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cqp = getelementptr i8, ptr %dev, i32 22672
  %call1 = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -160
  %param = getelementptr inbounds %struct.irdma_cqp_request, ptr %call1, i32 0, i32 5
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %param, align 4
  %cqp2 = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 27
  %1 = ptrtoint ptr %cqp2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cqp2, align 4
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %in, align 8
  %pa = getelementptr inbounds %struct.irdma_dma_mem, ptr %val_mem, i32 0, i32 1
  %4 = ptrtoint ptr %pa to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %pa, align 1
  %conv = zext i32 %5 to i64
  %fpm_val_pa = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %fpm_val_pa to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %fpm_val_pa, align 8
  %7 = ptrtoint ptr %val_mem to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load ptr, ptr %val_mem, align 1
  %fpm_val_va = getelementptr inbounds %struct.anon.204, ptr %in, i32 0, i32 1
  %9 = ptrtoint ptr %fpm_val_va to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %fpm_val_va, align 4
  %hmc_fn_id10 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %10 = ptrtoint ptr %hmc_fn_id10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %hmc_fn_id, ptr %hmc_fn_id10, align 8
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 1
  %11 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 27, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 2
  %12 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %post_sq, align 1
  %13 = ptrtoint ptr %call1 to i32
  %conv11 = zext i32 %13 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 0, i32 1
  %14 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv11, ptr %scratch, align 8
  %call14 = tail call i32 @irdma_handle_cqp_op(ptr noundef %add.ptr.i, ptr noundef nonnull %call1)
  %refcnt.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %call1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !210

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ %call14, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call14, %if.then10.i.i.i.i ], [ %call14, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_cqp_cq_create_cmd(ptr noundef %dev, ptr noundef %cq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cqp = getelementptr i8, ptr %dev, i32 22672
  %call1 = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -160
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 1
  %0 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 10, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 2
  %1 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %post_sq, align 1
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cq, ptr %in, align 8
  %3 = ptrtoint ptr %call1 to i32
  %conv = zext i32 %3 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %scratch, align 8
  %call5 = tail call i32 @irdma_handle_cqp_op(ptr noundef %add.ptr.i, ptr noundef nonnull %call1)
  %refcnt.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %call1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !210

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ %call5, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call5, %if.then10.i.i.i.i ], [ %call5, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_cqp_qp_create_cmd(ptr noundef %dev, ptr noundef %qp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cqp = getelementptr i8, ptr %dev, i32 22672
  %call1 = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -160
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3
  %info3 = getelementptr inbounds %struct.anon.179, ptr %in, i32 0, i32 1
  %0 = getelementptr inbounds %struct.anon.179, ptr %in, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %0, align 1
  %2 = ptrtoint ptr %info3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 32, ptr %info3, align 1
  %next_iwarp_state = getelementptr inbounds %struct.anon.179, ptr %in, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %next_iwarp_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %next_iwarp_state, align 1
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 12, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 2
  %5 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %post_sq, align 1
  %6 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %qp, ptr %in, align 8
  %7 = ptrtoint ptr %call1 to i32
  %conv = zext i32 %7 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %scratch, align 8
  %call9 = tail call i32 @irdma_handle_cqp_op(ptr noundef %add.ptr.i, ptr noundef nonnull %call1)
  %refcnt.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %call1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !210

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ %call9, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call9, %if.then10.i.i.i.i ], [ %call9, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_free_qp_rsrc(ptr noundef %iwqp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %iwdev1 = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 3
  %0 = ptrtoint ptr %iwdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iwdev1, align 8
  %rf2 = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rf2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rf2, align 8
  %qp_num3 = getelementptr inbounds %struct.ib_qp, ptr %iwqp, i32 0, i32 19
  %4 = ptrtoint ptr %qp_num3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qp_num3, align 4
  %ieq = getelementptr inbounds %struct.irdma_device, ptr %1, i32 0, i32 4, i32 8
  %6 = ptrtoint ptr %ieq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ieq, align 8
  %sc_qp = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2
  tail call void @irdma_ieq_cleanup_qp(ptr noundef %7, ptr noundef %sc_qp) #15
  %push_idx.i = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2, i32 16
  %8 = ptrtoint ptr %push_idx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %push_idx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.i = icmp eq i32 %9, -1
  br i1 %cmp.i, label %entry.irdma_dealloc_push_page.exit_crit_edge, label %if.end.i

entry.irdma_dealloc_push_page.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_dealloc_push_page.exit

if.end.i:                                         ; preds = %entry
  %cqp.i = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 46
  %call.i = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp.i, i1 noundef zeroext false) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i.irdma_dealloc_push_page.exit_crit_edge, label %if.end2.i

if.end.i.irdma_dealloc_push_page.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_dealloc_push_page.exit

if.end2.i:                                        ; preds = %if.end.i
  %cqp_cmd.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 1
  %10 = ptrtoint ptr %cqp_cmd.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 20, ptr %cqp_cmd.i, align 8
  %post_sq.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %post_sq.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %post_sq.i, align 1
  %12 = ptrtoint ptr %push_idx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %push_idx.i, align 8
  %in.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 3
  %info4.i = getelementptr inbounds %struct.anon.194, ptr %in.i, i32 0, i32 1
  %14 = ptrtoint ptr %info4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %info4.i, align 4
  %qs_handle.i = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2, i32 17
  %15 = ptrtoint ptr %qs_handle.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %qs_handle.i, align 4
  %qs_handle9.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 3, i32 0, i32 0, i32 1
  %17 = ptrtoint ptr %qs_handle9.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %qs_handle9.i, align 4
  %free_page.i = getelementptr inbounds %struct.anon.194, ptr %in.i, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %free_page.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %free_page.i, align 2
  %push_page_type.i = getelementptr inbounds %struct.anon.194, ptr %in.i, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %push_page_type.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %push_page_type.i, align 1
  %20 = ptrtoint ptr %in.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %cqp.i, ptr %in.i, align 8
  %21 = ptrtoint ptr %call.i to i32
  %conv.i = zext i32 %21 to i64
  %scratch.i = getelementptr inbounds %struct.cqp_cmds_info, ptr %call.i, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %scratch.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %conv.i, ptr %scratch.i, align 8
  %call22.i = tail call i32 @irdma_handle_cqp_op(ptr noundef %3, ptr noundef nonnull %call.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.then24.i, label %if.end2.i.if.end26.i_crit_edge

if.end2.i.if.end26.i_crit_edge:                   ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end26.i

if.then24.i:                                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %push_idx.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %push_idx.i, align 8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then24.i, %if.end2.i.if.end26.i_crit_edge
  %refcnt.i.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %call.i, i32 0, i32 3
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %refcnt.i.i, i32 1, i32 3, i32 1) #15
  %24 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i.i, ptr %refcnt.i.i, i32 1, ptr elementtype(i32) %refcnt.i.i) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.irdma_dealloc_push_page.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !210

if.end5.i.i.i.i.i.irdma_dealloc_push_page.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_dealloc_push_page.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i.i, i32 noundef 3) #15
  br label %irdma_dealloc_push_page.exit

if.then.i.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @irdma_free_cqp_request(ptr noundef %cqp.i, ptr noundef nonnull %call.i) #15
  br label %irdma_dealloc_push_page.exit

irdma_dealloc_push_page.exit:                     ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.irdma_dealloc_push_page.exit_crit_edge, %if.end.i.irdma_dealloc_push_page.exit_crit_edge, %entry.irdma_dealloc_push_page.exit_crit_edge
  %vsi6 = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2, i32 7
  %25 = ptrtoint ptr %vsi6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vsi6, align 4
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %irdma_dealloc_push_page.exit.if.end_crit_edge, label %if.then

irdma_dealloc_push_page.exit.if.end_crit_edge:    ; preds = %irdma_dealloc_push_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %irdma_dealloc_push_page.exit
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @irdma_qp_rem_qos(ptr noundef %sc_qp) #15
  %dev = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2, i32 6
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %ws_remove = getelementptr inbounds %struct.irdma_sc_dev, ptr %28, i32 0, i32 41
  %29 = ptrtoint ptr %ws_remove to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ws_remove, align 8
  %31 = ptrtoint ptr %vsi6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %vsi6, align 4
  %user_pri = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2, i32 31
  %33 = ptrtoint ptr %user_pri to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %user_pri, align 1
  tail call void %30(ptr noundef %32, i8 noundef zeroext %34) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %irdma_dealloc_push_page.exit.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  br i1 %cmp, label %if.then12, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %allocated_qps = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 34
  %35 = ptrtoint ptr %allocated_qps to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %allocated_qps, align 8
  %rsrc_lock.i = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 53
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #15
  %rem.i.i = and i32 %5, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %5, 5
  %add.ptr.i.i = getelementptr i32, ptr %36, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %37 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %38, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #15
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.if.end13_crit_edge
  %hw = getelementptr inbounds %struct.irdma_pci_f, ptr %3, i32 0, i32 42, i32 8
  %39 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hw, align 8
  %device = getelementptr inbounds %struct.irdma_hw, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device, align 4
  %q2_ctx_mem = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 40
  %size = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 40, i32 2
  %43 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %size, align 4
  %45 = ptrtoint ptr %q2_ctx_mem to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %q2_ctx_mem, align 4
  %pa = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 40, i32 1
  %47 = ptrtoint ptr %pa to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pa, align 4
  tail call void @dma_free_attrs(ptr noundef %42, i32 noundef %44, ptr noundef %46, i32 noundef %48, i32 noundef 0) #15
  %49 = ptrtoint ptr %q2_ctx_mem to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %q2_ctx_mem, align 4
  %50 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hw, align 8
  %device20 = getelementptr inbounds %struct.irdma_hw, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %device20 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device20, align 4
  %kqp = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 36
  %size21 = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 36, i32 0, i32 2
  %54 = ptrtoint ptr %size21 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size21, align 8
  %56 = ptrtoint ptr %kqp to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %kqp, align 8
  %pa27 = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 36, i32 0, i32 1
  %58 = ptrtoint ptr %pa27 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pa27, align 4
  tail call void @dma_free_attrs(ptr noundef %53, i32 noundef %55, ptr noundef %57, i32 noundef %59, i32 noundef 0) #15
  %60 = ptrtoint ptr %kqp to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %kqp, align 8
  %sq_wrid_mem = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 36, i32 1
  %61 = ptrtoint ptr %sq_wrid_mem to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sq_wrid_mem, align 4
  tail call void @kfree(ptr noundef %62) #15
  %rq_wrid_mem = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 36, i32 2
  %63 = ptrtoint ptr %rq_wrid_mem to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %rq_wrid_mem, align 8
  tail call void @kfree(ptr noundef %64) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_ieq_cleanup_qp(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_qp_rem_qos(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_cq_wq_destroy(ptr noundef %rf, ptr noundef %cq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46
  %call = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 11, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 2
  %1 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %post_sq, align 1
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %cq, ptr %in, align 8
  %3 = ptrtoint ptr %call to i32
  %conv = zext i32 %3 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %scratch, align 8
  %call4 = tail call i32 @irdma_handle_cqp_op(ptr noundef %rf, ptr noundef nonnull %call)
  %refcnt.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !210

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_hw_modify_qp(ptr nocapture noundef readonly %iwdev, ptr noundef %iwqp, ptr nocapture noundef readonly %info, i1 noundef zeroext %wait) local_unnamed_addr #0 align 64 {
entry:
  %ae_info = alloca %struct.irdma_gen_ae_info, align 2
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %rf1 = getelementptr inbounds %struct.irdma_device, ptr %iwdev, i32 0, i32 1
  %0 = ptrtoint ptr %rf1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rf1, align 8
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %1, i32 0, i32 46
  %call = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext %wait)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %wait, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %callback_fcn = getelementptr inbounds %struct.irdma_cqp_request, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %callback_fcn to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @irdma_hw_modify_qp_callback, ptr %callback_fcn, align 8
  %hw_mod_qp_pend = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hw_mod_qp_pend, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %hw_mod_qp_pend, i32 1, i32 3, i32 1) #15
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hw_mod_qp_pend, ptr %hw_mod_qp_pend, i32 1, ptr elementtype(i32) %hw_mod_qp_pend) #15, !srcloc !215
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3
  %info7 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %info7, ptr %info, i32 24)
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 8, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 2
  %6 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %post_sq, align 1
  %sc_qp = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2
  %7 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %sc_qp, ptr %in, align 8
  %8 = ptrtoint ptr %call to i32
  %conv = zext i32 %8 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 1
  %9 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %scratch, align 8
  %call12 = tail call i32 @irdma_handle_cqp_op(ptr noundef %1, ptr noundef nonnull %call)
  %refcnt.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.irdma_put_cqp_request.exit_crit_edge, label %if.then10.i.i.i.i, !prof !210

if.end5.i.i.i.i.irdma_put_cqp_request.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_put_cqp_request.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %irdma_put_cqp_request.exit

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call) #15
  br label %irdma_put_cqp_request.exit

irdma_put_cqp_request.exit:                       ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.irdma_put_cqp_request.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %irdma_put_cqp_request.exit.cleanup_crit_edge, label %if.then15

irdma_put_cqp_request.exit.cleanup_crit_edge:     ; preds = %irdma_put_cqp_request.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then15:                                        ; preds = %irdma_put_cqp_request.exit
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %iwdev, i32 0, i32 11
  %11 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %12, i32 1, i32 1, i32 2
  %13 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %14, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end18, label %if.then15.cleanup_crit_edge

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end18:                                         ; preds = %if.then15
  %next_iwarp_state = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info7, i32 0, i32 3
  %15 = ptrtoint ptr %next_iwarp_state to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %next_iwarp_state, align 2
  %17 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %16, label %if.end18.cleanup_crit_edge [
    i8 2, label %if.end18.sw.bb_crit_edge
    i8 1, label %if.end18.sw.bb_crit_edge111
    i8 5, label %if.end18.sw.bb_crit_edge112
    i8 3, label %if.end18.sw.bb_crit_edge113
  ]

if.end18.sw.bb_crit_edge113:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end18.sw.bb_crit_edge112:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end18.sw.bb_crit_edge111:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end18.sw.bb_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %if.end18.sw.bb_crit_edge, %if.end18.sw.bb_crit_edge111, %if.end18.sw.bb_crit_edge112, %if.end18.sw.bb_crit_edge113
  %curr_iwarp_state = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info, i32 0, i32 4
  %18 = ptrtoint ptr %curr_iwarp_state to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %curr_iwarp_state, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %19)
  %cmp = icmp eq i8 %19, 1
  br i1 %cmp, label %if.then22, label %if.else

if.then22:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %cm_node = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 16
  %20 = ptrtoint ptr %cm_node to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cm_node, align 8
  %call23 = tail call i32 @irdma_send_reset(ptr noundef %21) #15
  br label %if.end25

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  %term_flags = getelementptr inbounds %struct.irdma_qp, ptr %iwqp, i32 0, i32 2, i32 30
  %22 = ptrtoint ptr %term_flags to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 4, ptr %term_flags, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then22
  br i1 %wait, label %if.else29, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #17
  %23 = ptrtoint ptr %ae_info to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 513, ptr %ae_info, align 2
  %ae_src = getelementptr inbounds %struct.irdma_gen_ae_info, ptr %ae_info, i32 0, i32 1
  %24 = ptrtoint ptr %ae_src to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %ae_src, align 2
  call void @irdma_gen_ae(ptr noundef %1, ptr noundef %sc_qp, ptr noundef nonnull %ae_info, i1 noundef zeroext false) #15
  br label %cleanup

if.else29:                                        ; preds = %if.end25
  %call32 = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true)
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %if.else29.cleanup_crit_edge, label %if.end35

if.else29.cleanup_crit_edge:                      ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end35:                                         ; preds = %if.else29
  %in37 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call32, i32 0, i32 3
  %info39 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call32, i32 0, i32 3, i32 0, i32 0, i32 1
  %25 = call ptr @memcpy(ptr %info39, ptr %info, i32 24)
  %cqp_cmd40 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call32, i32 0, i32 1
  %26 = ptrtoint ptr %cqp_cmd40 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 8, ptr %cqp_cmd40, align 8
  %post_sq41 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call32, i32 0, i32 2
  %27 = ptrtoint ptr %post_sq41 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %post_sq41, align 1
  %28 = ptrtoint ptr %in37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %sc_qp, ptr %in37, align 8
  %29 = ptrtoint ptr %call32 to i32
  %conv46 = zext i32 %29 to i64
  %scratch49 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call32, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 1
  %30 = ptrtoint ptr %scratch49 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 %conv46, ptr %scratch49, align 8
  %next_iwarp_state50 = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info39, i32 0, i32 3
  %31 = ptrtoint ptr %next_iwarp_state50 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 6, ptr %next_iwarp_state50, align 2
  %reset_tcp_conn = getelementptr inbounds %struct.irdma_modify_qp_info, ptr %info39, i32 0, i32 6
  %32 = ptrtoint ptr %reset_tcp_conn to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %bf.load = load i16, ptr %reset_tcp_conn, align 1
  %bf.set = or i16 %bf.load, 1024
  store i16 %bf.set, ptr %reset_tcp_conn, align 1
  %call51 = tail call i32 @irdma_handle_cqp_op(ptr noundef %1, ptr noundef nonnull %call32)
  %refcnt.i102 = getelementptr inbounds %struct.irdma_cqp_request, ptr %call32, i32 0, i32 3
  %call.i.i.i.i.i.i103 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i102, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %refcnt.i102, i32 1, i32 3, i32 1) #15
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i102, ptr %refcnt.i102, i32 1, ptr elementtype(i32) %refcnt.i102) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i104 = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i104)
  %cmp.i.i.i.i105 = icmp eq i32 %asmresult.i.i.i.i.i.i.i104, 1
  br i1 %cmp.i.i.i.i105, label %if.then.i109, label %if.end5.i.i.i.i107

if.end5.i.i.i.i107:                               ; preds = %if.end35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i104)
  %.not.i.i.i.i106 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i104, 0
  br i1 %.not.i.i.i.i106, label %if.end5.i.i.i.i107.cleanup_crit_edge, label %if.then10.i.i.i.i108, !prof !210

if.end5.i.i.i.i107.cleanup_crit_edge:             ; preds = %if.end5.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i108:                             ; preds = %if.end5.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i102, i32 noundef 3) #15
  br label %cleanup

if.then.i109:                                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call32) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i109, %if.then10.i.i.i.i108, %if.end5.i.i.i.i107.cleanup_crit_edge, %if.else29.cleanup_crit_edge, %if.then27, %if.end18.cleanup_crit_edge, %if.then15.cleanup_crit_edge, %irdma_put_cqp_request.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ %call12, %if.then15.cleanup_crit_edge ], [ -9, %if.else29.cleanup_crit_edge ], [ %call12, %if.then27 ], [ %call12, %if.end18.cleanup_crit_edge ], [ 0, %irdma_put_cqp_request.exit.cleanup_crit_edge ], [ %call12, %if.end5.i.i.i.i107.cleanup_crit_edge ], [ %call12, %if.then10.i.i.i.i108 ], [ %call12, %if.then.i109 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_hw_modify_qp_callback(ptr nocapture noundef readonly %cqp_request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %cqp_request, i32 0, i32 3
  %0 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %in, align 8
  %back_qp = getelementptr inbounds %struct.irdma_qp_uk, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %back_qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back_qp, align 8
  %hw_mod_qp_pend = getelementptr inbounds %struct.irdma_qp, ptr %3, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hw_mod_qp_pend, i32 noundef 4) #15
  tail call void @llvm.prefetch.p0(ptr %hw_mod_qp_pend, i32 1, i32 3, i32 1) #15
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %hw_mod_qp_pend, ptr %hw_mod_qp_pend, i32 1, ptr elementtype(i32) %hw_mod_qp_pend) #15, !srcloc !216
  %mod_qp_waitq = getelementptr inbounds %struct.irdma_qp, ptr %3, i32 0, i32 44
  tail call void @__wake_up(ptr noundef %mod_qp_waitq, i32 noundef 3, i32 noundef 1, ptr noundef null) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_send_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_gen_ae(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_cqp_cq_destroy_cmd(ptr noundef %dev, ptr noundef %cq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -160
  tail call void @irdma_cq_wq_destroy(ptr noundef %add.ptr.i, ptr noundef %cq)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_cqp_qp_destroy_cmd(ptr noundef %dev, ptr noundef %qp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cqp = getelementptr i8, ptr %dev, i32 22672
  %call1 = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -160
  %0 = call ptr @memset(ptr %call1, i32 0, i32 216)
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 13, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %post_sq, align 1
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3
  %3 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %qp, ptr %in, align 8
  %4 = ptrtoint ptr %call1 to i32
  %conv = zext i32 %4 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1
  %5 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %scratch, align 8
  %remove_hash_idx = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %remove_hash_idx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %remove_hash_idx, align 8
  %call7 = tail call i32 @irdma_handle_cqp_op(ptr noundef %add.ptr.i, ptr noundef nonnull %call1)
  %refcnt.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %call1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !210

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ %call7, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call7, %if.then10.i.i.i.i ], [ %call7, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_ieq_mpa_crc_ae(ptr noundef %dev, ptr noundef %qp) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.irdma_gen_ae_info, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #15
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 84214016, ptr %info, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_ieq_mpa_crc_ae.__UNIQUE_ID_ddebug698, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_ieq_mpa_crc_ae, %if.then)) #15
          to label %do.end [label %if.then], !srcloc !198

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %iwdev = getelementptr i8, ptr %dev, i32 24968
  %1 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iwdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_ieq_mpa_crc_ae.__UNIQUE_ID_ddebug698, ptr noundef %2, ptr noundef nonnull @.str.16) #15
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -160
  call void @irdma_gen_ae(ptr noundef %add.ptr.i, ptr noundef %qp, ptr noundef nonnull %info, i1 noundef zeroext false) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_init_hash_desc(ptr nocapture noundef writeonly %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.17, i32 noundef 0, i32 noundef 0) #15
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 128
  %add = add i32 %1, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #22
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %call, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %call, ptr noundef %base.i.i) #15
  br label %cleanup

if.end5:                                          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %2 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %call9.i.i, align 128
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call9.i.i, ptr %desc, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -61, %if.then4 ], [ -61, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_free_hash_desc(ptr noundef %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %desc, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 8
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #15
  tail call void @kfree(ptr noundef nonnull %desc) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_ieq_check_mpacrc(ptr noundef %desc, ptr noundef %addr, i32 noundef %len, i32 noundef %val) local_unnamed_addr #0 align 64 {
entry:
  %crc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %crc) #15
  %0 = ptrtoint ptr %crc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %crc, align 4
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc, align 8
  %base.i.i.i = getelementptr inbounds %struct.crypto_shash, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.crypto_shash_init.exit_crit_edge

entry.crypto_shash_init.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %crypto_shash_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_shash, ptr %2, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 -256
  %7 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr.i.i.i, align 128
  %call3.i = tail call i32 %8(ptr noundef %desc) #15
  br label %crypto_shash_init.exit

crypto_shash_init.exit:                           ; preds = %if.end.i, %entry.crypto_shash_init.exit_crit_edge
  %call1 = tail call i32 @crypto_shash_update(ptr noundef %desc, ptr noundef %addr, i32 noundef %len) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then, label %crypto_shash_init.exit.if.end_crit_edge

crypto_shash_init.exit.if.end_crit_edge:          ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %crypto_shash_init.exit
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = call i32 @crypto_shash_final(ptr noundef %desc, ptr noundef nonnull %crc) #15
  br label %if.end

if.end:                                           ; preds = %if.then, %crypto_shash_init.exit.if.end_crit_edge
  %9 = ptrtoint ptr %crc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %crc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %val)
  %cmp.not = icmp eq i32 %10, %val
  %spec.select = select i1 %cmp.not, i32 0, i32 -61
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %crc) #15
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_final(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @irdma_ieq_get_qp(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %buf) local_unnamed_addr #0 align 64 {
entry:
  %loc_addr = alloca [4 x i32], align 4
  %rem_addr = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 19
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %back_vsi = getelementptr inbounds %struct.irdma_sc_vsi, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %back_vsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %back_vsi, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %loc_addr) #15
  %4 = call ptr @memset(ptr %loc_addr, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %rem_addr) #15
  %5 = call ptr @memset(ptr %rem_addr, i32 0, i32 16)
  %iph1 = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 5
  %6 = ptrtoint ptr %iph1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iph1, align 4
  %tcph2 = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 6
  %8 = ptrtoint ptr %tcph2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tcph2, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %7, align 4
  %bf.lshr.mask = and i8 %bf.load, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask)
  %cmp = icmp eq i8 %bf.lshr.mask, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %daddr = getelementptr inbounds %struct.iphdr, ptr %7, i32 0, i32 9
  %11 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %daddr, align 4
  %13 = ptrtoint ptr %loc_addr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %loc_addr, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %7, i32 0, i32 8
  %14 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %saddr, align 4
  %16 = ptrtoint ptr %rem_addr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rem_addr, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %daddr6 = getelementptr inbounds %struct.ipv6hdr, ptr %7, i32 0, i32 6
  call void @irdma_copy_ip_ntohl(ptr noundef nonnull %loc_addr, ptr noundef %daddr6) #15
  %saddr9 = getelementptr inbounds %struct.ipv6hdr, ptr %7, i32 0, i32 5
  call void @irdma_copy_ip_ntohl(ptr noundef nonnull %rem_addr, ptr noundef %saddr9) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dest = getelementptr inbounds %struct.tcphdr, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %dest to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %dest, align 2
  %19 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %9, align 4
  %cm_core = getelementptr inbounds %struct.irdma_device, ptr %3, i32 0, i32 5
  %vlan_valid = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 15
  %21 = ptrtoint ptr %vlan_valid to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load14 = load i8, ptr %vlan_valid, align 1
  %22 = and i8 %bf.load14, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %bf.cast.not = icmp eq i8 %22, 0
  br i1 %bf.cast.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %vlan_id = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 9
  %23 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vlan_id, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i16 [ %24, %cond.true ], [ -1, %if.end.cond.end_crit_edge ]
  %call = call ptr @irdma_find_node(ptr noundef %cm_core, i16 noundef zeroext %20, ptr noundef nonnull %rem_addr, i16 noundef zeroext %18, ptr noundef nonnull %loc_addr, i16 noundef zeroext %cond) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %cond.end.cleanup_crit_edge, label %if.end20

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end20:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #17
  %25 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call, align 4
  call void @irdma_rem_ref_cm_node(ptr noundef nonnull %call) #15
  %sc_qp = getelementptr inbounds %struct.irdma_qp, ptr %26, i32 0, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %cond.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %sc_qp, %if.end20 ], [ null, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %rem_addr) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %loc_addr) #15
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irdma_find_node(ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_rem_ref_cm_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_send_ieq_ack(ptr nocapture noundef readonly %qp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %back_qp = getelementptr inbounds %struct.irdma_qp_uk, ptr %qp, i32 0, i32 28
  %0 = ptrtoint ptr %back_qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back_qp, align 8
  %cm_node1 = getelementptr inbounds %struct.irdma_qp, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %cm_node1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm_node1, align 8
  %lastrcv_buf = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 19
  %4 = ptrtoint ptr %lastrcv_buf to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lastrcv_buf, align 4
  %tcph2 = getelementptr inbounds %struct.irdma_puda_buf, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %tcph2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tcph2, align 4
  %nextseqnum = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 4
  %8 = ptrtoint ptr %nextseqnum to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nextseqnum, align 4
  %rcv_nxt = getelementptr inbounds %struct.irdma_cm_node, ptr %3, i32 0, i32 3, i32 4
  %10 = ptrtoint ptr %rcv_nxt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rcv_nxt, align 4
  %ack_seq = getelementptr inbounds %struct.tcphdr, ptr %7, i32 0, i32 3
  %11 = ptrtoint ptr %ack_seq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ack_seq, align 4
  %loc_seq_num = getelementptr inbounds %struct.irdma_cm_node, ptr %3, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %loc_seq_num to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %loc_seq_num, align 4
  tail call void @irdma_send_ack(ptr noundef %3) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_send_ack(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_puda_ieq_get_ah_info(ptr nocapture noundef readonly %qp, ptr noundef %ah_info) local_unnamed_addr #0 align 64 {
entry:
  %ip.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ah_buf = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 12, i32 17
  %0 = ptrtoint ptr %ah_buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ah_buf, align 4
  %2 = call ptr @memset(ptr %ah_info, i32 0, i32 64)
  %do_lpbk = getelementptr inbounds %struct.irdma_ah_info, ptr %ah_info, i32 0, i32 12
  %3 = ptrtoint ptr %do_lpbk to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 32, ptr %do_lpbk, align 1
  %vlan_id = getelementptr inbounds %struct.irdma_puda_buf, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vlan_id, align 2
  %vlan_tag = getelementptr inbounds %struct.irdma_ah_info, ptr %ah_info, i32 0, i32 7
  %6 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %vlan_tag, align 4
  %vlan_valid = getelementptr inbounds %struct.irdma_puda_buf, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %vlan_valid to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load1 = load i8, ptr %vlan_valid, align 1
  %8 = lshr i8 %bf.load1, 6
  %.lobit = and i8 %8, 1
  %insert_vlan_tag = getelementptr inbounds %struct.irdma_ah_info, ptr %ah_info, i32 0, i32 8
  %9 = ptrtoint ptr %insert_vlan_tag to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.lobit, ptr %insert_vlan_tag, align 2
  %bf.load3 = load i8, ptr %vlan_valid, align 1
  %10 = lshr i8 %bf.load3, 1
  %bf.shl = and i8 %10, 64
  %bf.set8 = or i8 %bf.shl, 32
  store i8 %bf.set8, ptr %do_lpbk, align 1
  %vsi = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 7
  %11 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vsi, align 4
  %13 = ptrtoint ptr %ah_info to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %ah_info, align 4
  %bf.load10 = load i8, ptr %vlan_valid, align 1
  %14 = and i8 %bf.load10, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %bf.cast13.not = icmp eq i8 %14, 0
  br i1 %bf.cast13.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %mac_addr = getelementptr inbounds %struct.irdma_ah_info, ptr %ah_info, i32 0, i32 11
  %smac = getelementptr inbounds %struct.irdma_puda_buf, ptr %1, i32 0, i32 18
  %15 = ptrtoint ptr %smac to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %smac, align 4
  %17 = ptrtoint ptr %mac_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %mac_addr, align 4
  %add.ptr.i = getelementptr %struct.irdma_puda_buf, ptr %1, i32 0, i32 18, i32 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.irdma_ah_info, ptr %ah_info, i32 0, i32 11, i32 4
  %20 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %19, ptr %add.ptr1.i, align 2
  %21 = ptrtoint ptr %vlan_valid to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load16.pr = load i8, ptr %vlan_valid, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bf.load16 = phi i8 [ %bf.load16.pr, %if.then ], [ %bf.load10, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load16)
  %bf.cast18.not = icmp sgt i8 %bf.load16, -1
  br i1 %bf.cast18.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %22 = ptrtoint ptr %do_lpbk to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 96, ptr %do_lpbk, align 1
  %iph24 = getelementptr inbounds %struct.irdma_puda_buf, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %iph24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iph24, align 4
  %ttl = getelementptr inbounds %struct.iphdr, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ttl, align 4
  %hop_ttl = getelementptr inbounds %struct.irdma_ah_info, ptr %ah_info, i32 0, i32 10
  %27 = ptrtoint ptr %hop_ttl to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %hop_ttl, align 4
  %tos = getelementptr inbounds %struct.iphdr, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %tos, align 1
  %tc_tos = getelementptr inbounds %struct.irdma_ah_info, ptr %ah_info, i32 0, i32 9
  %30 = ptrtoint ptr %tc_tos to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %tc_tos, align 1
  %daddr = getelementptr inbounds %struct.iphdr, ptr %24, i32 0, i32 9
  %31 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %daddr, align 4
  %dest_ip_addr = getelementptr inbounds %struct.irdma_ah_info, ptr %ah_info, i32 0, i32 3
  %33 = ptrtoint ptr %dest_ip_addr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %dest_ip_addr, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %24, i32 0, i32 8
  %34 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %saddr, align 4
  %src_ip_addr = getelementptr inbounds %struct.irdma_ah_info, ptr %ah_info, i32 0, i32 4
  %36 = ptrtoint ptr %src_ip_addr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %src_ip_addr, align 4
  br label %if.end40

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %iph26 = getelementptr inbounds %struct.irdma_puda_buf, ptr %1, i32 0, i32 5
  %37 = ptrtoint ptr %iph26 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iph26, align 4
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %hop_limit, align 1
  %hop_ttl27 = getelementptr inbounds %struct.irdma_ah_info, ptr %ah_info, i32 0, i32 10
  %41 = ptrtoint ptr %hop_ttl27 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %hop_ttl27, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load28 = load i8, ptr %38, align 4
  %bf.clear29 = and i8 %bf.load28, 15
  %tc_tos30 = getelementptr inbounds %struct.irdma_ah_info, ptr %ah_info, i32 0, i32 9
  %43 = ptrtoint ptr %tc_tos30 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %bf.clear29, ptr %tc_tos30, align 1
  %dest_ip_addr31 = getelementptr inbounds %struct.irdma_ah_info, ptr %ah_info, i32 0, i32 3
  %daddr33 = getelementptr inbounds %struct.ipv6hdr, ptr %38, i32 0, i32 6
  tail call void @irdma_copy_ip_ntohl(ptr noundef %dest_ip_addr31, ptr noundef %daddr33) #15
  %src_ip_addr35 = getelementptr inbounds %struct.irdma_ah_info, ptr %ah_info, i32 0, i32 4
  %saddr37 = getelementptr inbounds %struct.ipv6hdr, ptr %38, i32 0, i32 5
  tail call void @irdma_copy_ip_ntohl(ptr noundef %src_ip_addr35, ptr noundef %saddr37) #15
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then19
  %dev = getelementptr inbounds %struct.irdma_sc_qp, ptr %qp, i32 0, i32 6
  %44 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev, align 8
  %dest_ip_addr41 = getelementptr inbounds %struct.irdma_ah_info, ptr %ah_info, i32 0, i32 3
  %46 = ptrtoint ptr %do_lpbk to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load44 = load i8, ptr %do_lpbk, align 1
  %47 = and i8 %bf.load44, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %bf.cast47.not = icmp eq i8 %47, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ip.i) #15
  %48 = getelementptr inbounds i8, ptr %ip.i, i32 4
  %49 = call ptr @memset(ptr %48, i32 0, i32 12)
  br i1 %bf.cast47.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %50 = ptrtoint ptr %dest_ip_addr41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dest_ip_addr41, align 4
  %52 = ptrtoint ptr %ip.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %ip.i, align 4
  br label %do.body1.i

if.else.i:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #17
  %53 = call ptr @memcpy(ptr %ip.i, ptr %dest_ip_addr41, i32 16)
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.else.i, %if.then.i
  %arp_lock.i = getelementptr i8, ptr %45, i32 23316
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %arp_lock.i) #15
  %arp_table_size.i = getelementptr i8, ptr %45, i32 -60
  %54 = ptrtoint ptr %arp_table_size.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arp_table_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp590.not.i = icmp eq i32 %55, 0
  br i1 %cmp590.not.i, label %do.body1.i.irdma_arp_table.exit_crit_edge, label %for.body.lr.ph.i

do.body1.i.irdma_arp_table.exit_crit_edge:        ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_arp_table.exit

for.body.lr.ph.i:                                 ; preds = %do.body1.i
  %arp_table.i = getelementptr i8, ptr %45, i32 23312
  %56 = ptrtoint ptr %arp_table.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arp_table.i, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %storemerge91.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx7.i = getelementptr %struct.irdma_arp_entry, ptr %57, i32 %storemerge91.i
  %bcmp.i = call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx7.i, ptr noundef nonnull dereferenceable(16) %ip.i, i32 16) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool12.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool12.not.i, label %for.body.i.irdma_arp_table.exit_crit_edge, label %for.inc.i

for.body.i.irdma_arp_table.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_arp_table.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %storemerge91.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %55
  br i1 %exitcond.not.i, label %for.inc.i.irdma_arp_table.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.irdma_arp_table.exit_crit_edge:         ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_arp_table.exit

irdma_arp_table.exit:                             ; preds = %for.inc.i.irdma_arp_table.exit_crit_edge, %for.body.i.irdma_arp_table.exit_crit_edge, %do.body1.i.irdma_arp_table.exit_crit_edge
  %storemerge.lcssa.i = phi i32 [ 0, %do.body1.i.irdma_arp_table.exit_crit_edge ], [ %55, %for.inc.i.irdma_arp_table.exit_crit_edge ], [ %storemerge91.i, %for.body.i.irdma_arp_table.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %storemerge.lcssa.i, i32 %55)
  %cmp36.i = icmp eq i32 %storemerge.lcssa.i, %55
  %spec.select.i = select i1 %cmp36.i, i32 -1, i32 %storemerge.lcssa.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %arp_lock.i, i32 noundef %call2.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ip.i) #15
  %dst_arpindex = getelementptr inbounds %struct.irdma_ah_info, ptr %ah_info, i32 0, i32 2
  %58 = ptrtoint ptr %dst_arpindex to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %spec.select.i, ptr %dst_arpindex, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @irdma_ieq_update_tcpip_info(ptr nocapture noundef readonly %buf, i16 noundef zeroext %len, i32 noundef %seqnum) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 19
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %dev = getelementptr inbounds %struct.irdma_sc_vsi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %hw_rev = getelementptr inbounds %struct.irdma_sc_dev, ptr %3, i32 0, i32 25, i32 0, i32 9
  %4 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %mem.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem.i, align 4
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %ipv4.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 15
  %8 = ptrtoint ptr %ipv4.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %ipv4.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %bf.cast.not.i = icmp sgt i8 %bf.load.i, -1
  %maclen.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 11
  %9 = ptrtoint ptr %maclen.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %maclen.i, align 1
  %conv1.i = zext i8 %10 to i32
  %add.ptr.i = getelementptr i8, ptr %7, i32 %conv1.i
  %conv5.i = select i1 %bf.cast.not.i, i32 40, i32 20
  %add.ptr6.i = getelementptr i8, ptr %add.ptr.i, i32 %conv5.i
  %conv7.i = zext i16 %len to i32
  %tcphlen.i = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 10
  %11 = ptrtoint ptr %tcphlen.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tcphlen.i, align 4
  %conv8.i = zext i8 %12 to i32
  %add.i = add nuw nsw i32 %conv5.i, %conv7.i
  %add10.i = add nuw nsw i32 %add.i, %conv8.i
  %conv11.i = trunc i32 %add10.i to i16
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i, i32 0, i32 2
  %13 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv11.i, ptr %tot_len.i, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %.sink = phi ptr [ %add.ptr6.i, %if.then ], [ %7, %entry.cleanup_crit_edge ]
  %seq = getelementptr inbounds %struct.tcphdr, ptr %.sink, i32 0, i32 2
  %14 = ptrtoint ptr %seq to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %seqnum, ptr %seq, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_puda_get_tcpip_info(ptr nocapture noundef %info, ptr nocapture noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 19
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 4
  %dev = getelementptr inbounds %struct.irdma_sc_vsi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %hw_rev = getelementptr inbounds %struct.irdma_sc_dev, ptr %3, i32 0, i32 25, i32 0, i32 9
  %4 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call fastcc i32 @irdma_gen1_puda_get_tcpip_info(ptr noundef %info, ptr noundef %buf)
  br label %cleanup

if.end:                                           ; preds = %entry
  %mem2 = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 1
  %6 = ptrtoint ptr %mem2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mem2, align 4
  %vlan_valid = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 9
  %8 = ptrtoint ptr %vlan_valid to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %vlan_valid, align 4
  %vlan_valid3 = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 15
  %9 = ptrtoint ptr %vlan_valid3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load4 = load i8, ptr %vlan_valid3, align 1
  %10 = shl i8 %bf.load, 1
  %bf.shl = and i8 %10, 64
  %bf.clear5 = and i8 %bf.load4, -65
  %bf.set = or i8 %bf.clear5, %bf.shl
  store i8 %bf.set, ptr %vlan_valid3, align 1
  %bf.load7 = load i8, ptr %vlan_valid, align 4
  %11 = and i8 %bf.load7, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %bf.cast10.not = icmp eq i8 %11, 0
  br i1 %bf.cast10.not, label %if.end.if.end12_crit_edge, label %if.then11

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end12

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %vlan = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 4
  %12 = ptrtoint ptr %vlan to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vlan, align 4
  %vlan_id = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 9
  %14 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %vlan_id, align 2
  %15 = ptrtoint ptr %vlan_valid to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load13.pr = load i8, ptr %vlan_valid, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %if.end.if.end12_crit_edge
  %bf.load13 = phi i8 [ %bf.load13.pr, %if.then11 ], [ %bf.load7, %if.end.if.end12_crit_edge ]
  %bf.load13.lobit = and i8 %bf.load13, -128
  %bf.clear19 = and i8 %bf.set, 127
  %bf.set20 = or i8 %bf.load13.lobit, %bf.clear19
  %16 = ptrtoint ptr %vlan_valid3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %bf.set20, ptr %vlan_valid3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load13)
  %bf.cast25.not99 = icmp slt i8 %bf.load13, 0
  %spec.select98.idx = select i1 %bf.cast25.not99, i32 20, i32 0
  %spec.select98 = getelementptr i8, ptr %7, i32 %spec.select98.idx
  %17 = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 5
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %spec.select98, ptr %17, align 4
  %add.ptr29 = getelementptr i8, ptr %7, i32 40
  %tcph30 = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 6
  %19 = ptrtoint ptr %tcph30 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr29, ptr %tcph30, align 4
  %payload_len = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 5
  %20 = ptrtoint ptr %payload_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %payload_len, align 4
  %totallen = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 12
  %22 = ptrtoint ptr %totallen to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %totallen, align 4
  %doff = getelementptr i8, ptr %7, i32 52
  %23 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load32 = load i16, ptr %doff, align 4
  %24 = lshr i16 %bf.load32, 10
  %25 = trunc i16 %24 to i8
  %conv35 = and i8 %25, 60
  %tcphlen = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 10
  %26 = ptrtoint ptr %tcphlen to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv35, ptr %tcphlen, align 4
  %sub = add i32 %21, 65496
  %conv37 = zext i8 %conv35 to i32
  %sub38 = sub i32 %sub, %conv37
  %conv39 = trunc i32 %sub38 to i16
  %datalen = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 8
  %27 = ptrtoint ptr %datalen to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv39, ptr %datalen, align 4
  %conv41 = and i32 %sub38, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv41)
  %tobool42.not = icmp eq i32 %conv41, 0
  %add.ptr46 = getelementptr i8, ptr %add.ptr29, i32 %conv37
  %spec.select = select i1 %tobool42.not, ptr null, ptr %add.ptr46
  %data = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 7
  %28 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %spec.select, ptr %data, align 4
  %add = add nuw nsw i8 %conv35, 40
  %hdrlen = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 14
  %29 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %add, ptr %hdrlen, align 4
  %seq = getelementptr i8, ptr %7, i32 44
  %30 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %seq, align 4
  %seqnum = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 16
  %32 = ptrtoint ptr %seqnum to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %seqnum, align 4
  %33 = ptrtoint ptr %vlan_valid to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load50 = load i8, ptr %vlan_valid, align 4
  %34 = and i8 %bf.load50, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %bf.cast53.not = icmp eq i8 %34, 0
  br i1 %bf.cast53.not, label %if.end12.cleanup_crit_edge, label %if.then54

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then54:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #17
  %smac = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 18
  %smac55 = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 10
  %35 = ptrtoint ptr %smac55 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %smac55, align 4
  %37 = ptrtoint ptr %smac to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %smac, align 4
  %add.ptr.i = getelementptr %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 10, i32 4
  %38 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr %struct.irdma_puda_buf, ptr %buf, i32 0, i32 18, i32 4
  %40 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %add.ptr1.i, align 2
  %bf.set60 = or i8 %bf.set20, 16
  %41 = ptrtoint ptr %vlan_valid3 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %bf.set60, ptr %vlan_valid3, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then54, %if.end12.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call, %if.then ], [ 0, %if.then54 ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @irdma_gen1_puda_get_tcpip_info(ptr nocapture noundef %info, ptr nocapture noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %mem1 = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 1
  %0 = ptrtoint ptr %mem1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mem1, align 4
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %h_proto to i32
  call void @__asan_loadN_noabort(i32 %2, i32 2)
  %3 = load i16, ptr %h_proto, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32512, i16 %3)
  %cmp = icmp eq i16 %3, -32512
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %vlan_valid = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 9
  %4 = ptrtoint ptr %vlan_valid to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %vlan_valid, align 4
  %bf.set = or i8 %bf.load, 32
  store i8 %bf.set, ptr %vlan_valid, align 4
  %h_vlan_TCI = getelementptr inbounds %struct.vlan_ethhdr, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %h_vlan_TCI to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %h_vlan_TCI, align 2
  %7 = and i16 %6, 4095
  %vlan_id = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 9
  %8 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %vlan_id, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vlan_valid7 = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 9
  %9 = ptrtoint ptr %vlan_valid7 to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load8 = load i8, ptr %vlan_valid7, align 4
  %10 = and i8 %bf.load8, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %bf.cast.not = icmp eq i8 %10, 0
  %conv11 = select i1 %bf.cast.not, i8 14, i8 18
  %maclen = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 11
  %11 = ptrtoint ptr %maclen to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv11, ptr %maclen, align 1
  %l3proto = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 2
  %12 = ptrtoint ptr %l3proto to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %l3proto, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  %ipv4 = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 15
  %14 = ptrtoint ptr %ipv4 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load20 = load i8, ptr %ipv4, align 1
  %bf.shl = select i1 %tobool.not, i8 -128, i8 0
  %bf.clear21 = and i8 %bf.load20, 127
  %bf.set22 = or i8 %bf.clear21, %bf.shl
  store i8 %bf.set22, ptr %ipv4, align 1
  %conv25 = zext i8 %conv11 to i32
  %add.ptr = getelementptr i8, ptr %1, i32 %conv25
  %iph26 = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 5
  %15 = ptrtoint ptr %iph26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %iph26, align 4
  %conv29 = select i1 %tobool.not, i32 20, i32 40
  %add.ptr30 = getelementptr i8, ptr %add.ptr, i32 %conv29
  %tcph31 = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 6
  %16 = ptrtoint ptr %tcph31 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr30, ptr %tcph31, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.set22)
  %bf.cast36.not = icmp sgt i8 %bf.set22, -1
  br i1 %bf.cast36.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr, i32 0, i32 2
  %17 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %tot_len, align 2
  br label %if.end42

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr, i32 0, i32 2
  %19 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %payload_len, align 4
  %21 = trunc i32 %conv29 to i16
  %conv41 = add i16 %20, %21
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then37
  %pkt_len.0 = phi i16 [ %18, %if.then37 ], [ %conv41, %if.else ]
  %conv43 = zext i16 %pkt_len.0 to i32
  %add46 = add nuw nsw i32 %conv43, %conv25
  %totallen = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 12
  %22 = ptrtoint ptr %totallen to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add46, ptr %totallen, align 4
  %payload_len47 = getelementptr inbounds %struct.irdma_puda_cmpl_info, ptr %info, i32 0, i32 5
  %23 = ptrtoint ptr %payload_len47 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %payload_len47, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add46)
  %cmp49 = icmp ult i32 %24, %add46
  br i1 %cmp49, label %do.body, label %if.end60

do.body:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_gen1_puda_get_tcpip_info.__UNIQUE_ID_ddebug699, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_gen1_puda_get_tcpip_info, %if.then55)) #15
          to label %cleanup [label %if.then55], !srcloc !198

if.then55:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #17
  %vsi = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 19
  %25 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vsi, align 4
  %dev = getelementptr inbounds %struct.irdma_sc_vsi, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  %iwdev.i = getelementptr i8, ptr %28, i32 24968
  %29 = ptrtoint ptr %iwdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %iwdev.i, align 8
  %31 = ptrtoint ptr %payload_len47 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %payload_len47, align 4
  %33 = ptrtoint ptr %totallen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %totallen, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_gen1_puda_get_tcpip_info.__UNIQUE_ID_ddebug699, ptr noundef %30, ptr noundef nonnull @.str.89, i32 noundef %32, i32 noundef %34) #15
  br label %cleanup

if.end60:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  %doff = getelementptr inbounds %struct.tcphdr, ptr %add.ptr30, i32 0, i32 4
  %35 = ptrtoint ptr %doff to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load61 = load i16, ptr %doff, align 4
  %36 = lshr i16 %bf.load61, 10
  %37 = trunc i16 %36 to i8
  %conv64 = and i8 %37, 60
  %tcphlen = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 10
  %38 = ptrtoint ptr %tcphlen to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv64, ptr %tcphlen, align 4
  %conv68 = zext i8 %conv64 to i32
  %39 = add nuw nsw i32 %conv29, %conv68
  %40 = trunc i32 %39 to i16
  %conv70 = sub i16 %pkt_len.0, %40
  %datalen = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 8
  %41 = ptrtoint ptr %datalen to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv70, ptr %datalen, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %pkt_len.0, i16 %40)
  %tobool73.not = icmp eq i16 %pkt_len.0, %40
  %add.ptr77 = getelementptr i8, ptr %add.ptr30, i32 %conv68
  %spec.select = select i1 %tobool73.not, ptr null, ptr %add.ptr77
  %data = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 7
  %42 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %spec.select, ptr %data, align 4
  %43 = trunc i32 %conv29 to i8
  %44 = add nuw nsw i8 %conv11, %43
  %conv86 = add nuw nsw i8 %44, %conv64
  %hdrlen = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 14
  %45 = ptrtoint ptr %hdrlen to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv86, ptr %hdrlen, align 4
  %seq = getelementptr inbounds %struct.tcphdr, ptr %add.ptr30, i32 0, i32 2
  %46 = ptrtoint ptr %seq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %seq, align 4
  %seqnum = getelementptr inbounds %struct.irdma_puda_buf, ptr %buf, i32 0, i32 16
  %48 = ptrtoint ptr %seqnum to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %seqnum, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then55, %do.body
  %retval.0 = phi i32 [ 0, %if.end60 ], [ -16, %if.then55 ], [ -16, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_hw_stats_start_timer(ptr nocapture noundef readonly %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pestat = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 16
  %0 = ptrtoint ptr %pestat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pestat, align 8
  %stats_timer = getelementptr inbounds %struct.irdma_vsi_pestat, ptr %1, i32 0, i32 3
  tail call void @init_timer_key(ptr noundef %stats_timer, ptr noundef nonnull @irdma_hw_stats_timeout, i32 noundef 0, ptr noundef nonnull @.str.18, ptr noundef nonnull @irdma_hw_stats_start_timer.__key) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 6000
  %call2 = tail call i32 @mod_timer(ptr noundef %stats_timer, i32 noundef %add) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_hw_stats_timeout(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %vsi = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vsi, align 8
  %dev = getelementptr inbounds %struct.irdma_sc_vsi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %hw_rev = getelementptr inbounds %struct.irdma_sc_dev, ptr %3, i32 0, i32 25, i32 0, i32 9
  %4 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hw_rev, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  %pestat = getelementptr inbounds %struct.irdma_sc_vsi, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %pestat to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pestat, align 8
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @irdma_cqp_gather_stats_gen1(ptr noundef %3, ptr noundef %7)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %call = tail call i32 @irdma_cqp_gather_stats_cmd(ptr noundef %3, ptr noundef %7, i1 noundef zeroext false)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %8, 6000
  %call6 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_hw_stats_stop_timer(ptr nocapture noundef readonly %vsi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pestat = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 16
  %0 = ptrtoint ptr %pestat to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pestat, align 8
  %stats_timer = getelementptr inbounds %struct.irdma_vsi_pestat, ptr %1, i32 0, i32 3
  %call = tail call i32 @del_timer_sync(ptr noundef %stats_timer) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_cqp_gather_stats_gen1(ptr noundef readonly %dev, ptr nocapture noundef readonly %pestat) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %gather_info = getelementptr inbounds %struct.irdma_vsi_pestat, ptr %pestat, i32 0, i32 2
  %gather_stats_va = getelementptr inbounds %struct.irdma_vsi_pestat, ptr %pestat, i32 0, i32 2, i32 5
  %0 = ptrtoint ptr %gather_stats_va to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gather_stats_va, align 8
  %2 = ptrtoint ptr %gather_info to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %gather_info, align 8
  %3 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %bf.cast.not = icmp eq i8 %3, 0
  br i1 %bf.cast.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %stats_inst_index = getelementptr inbounds %struct.irdma_vsi_pestat, ptr %pestat, i32 0, i32 2, i32 2
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %4 = ptrtoint ptr %pestat to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pestat, align 8
  %hmc_fn_id = getelementptr inbounds %struct.irdma_hw, ptr %5, i32 0, i32 3, i32 1
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in.in = phi ptr [ %stats_inst_index, %cond.true ], [ %hmc_fn_id, %cond.false ]
  %6 = ptrtoint ptr %cond.in.in to i32
  call void @__asan_load1_noabort(i32 %6)
  %cond.in = load i8, ptr %cond.in.in, align 2
  %cond = zext i8 %cond.in to i32
  %mul = shl nuw nsw i32 %cond, 2
  %mul4 = shl nuw nsw i32 %cond, 3
  %hw5 = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hw5, align 8
  %hw_stats_regs_32 = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21
  %arrayidx = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 9
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx, align 8
  %11 = trunc i64 %10 to i32
  %conv7 = add i32 %mul, %11
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %8, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %conv7
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #15, !srcloc !201
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  %rxvlanerr = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %rxvlanerr to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %rxvlanerr, align 4
  %17 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hw5, align 8
  %19 = ptrtoint ptr %hw_stats_regs_32 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %hw_stats_regs_32, align 8
  %21 = trunc i64 %20 to i32
  %conv13 = add i32 %mul, %21
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %18, align 4
  %add.ptr.i411 = getelementptr i8, ptr %23, i32 %conv13
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i411) #15, !srcloc !201
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  %ip4rxdiscard = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %ip4rxdiscard to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %ip4rxdiscard, align 4
  %27 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hw5, align 8
  %arrayidx17 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 1
  %29 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %arrayidx17, align 8
  %31 = trunc i64 %30 to i32
  %conv20 = add i32 %mul, %31
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %28, align 4
  %add.ptr.i412 = getelementptr i8, ptr %33, i32 %conv20
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i412) #15, !srcloc !201
  %35 = tail call i32 @llvm.bswap.i32(i32 %34) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  %ip4rxtrunc = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %ip4rxtrunc to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %ip4rxtrunc, align 8
  %37 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw5, align 8
  %arrayidx24 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 2
  %39 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %arrayidx24, align 8
  %41 = trunc i64 %40 to i32
  %conv27 = add i32 %mul, %41
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %38, align 4
  %add.ptr.i413 = getelementptr i8, ptr %43, i32 %conv27
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i413) #15, !srcloc !201
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  %ip4txnoroute = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 27
  %46 = ptrtoint ptr %ip4txnoroute to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %ip4txnoroute, align 4
  %47 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hw5, align 8
  %arrayidx31 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 3
  %49 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx31, align 8
  %51 = trunc i64 %50 to i32
  %conv34 = add i32 %mul, %51
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %48, align 4
  %add.ptr.i414 = getelementptr i8, ptr %53, i32 %conv34
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i414) #15, !srcloc !201
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  %ip6rxdiscard = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 12
  %56 = ptrtoint ptr %ip6rxdiscard to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %ip6rxdiscard, align 4
  %57 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hw5, align 8
  %arrayidx38 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 4
  %59 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx38, align 8
  %61 = trunc i64 %60 to i32
  %conv41 = add i32 %mul, %61
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %58, align 4
  %add.ptr.i415 = getelementptr i8, ptr %63, i32 %conv41
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i415) #15, !srcloc !201
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  %ip6rxtrunc = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 11
  %66 = ptrtoint ptr %ip6rxtrunc to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %ip6rxtrunc, align 8
  %67 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %hw5, align 8
  %arrayidx45 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 5
  %69 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx45, align 8
  %71 = trunc i64 %70 to i32
  %conv48 = add i32 %mul, %71
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %68, align 4
  %add.ptr.i416 = getelementptr i8, ptr %73, i32 %conv48
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i416) #15, !srcloc !201
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  %ip6txnoroute = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 26
  %76 = ptrtoint ptr %ip6txnoroute to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %ip6txnoroute, align 8
  %77 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hw5, align 8
  %arrayidx52 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 6
  %79 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %arrayidx52, align 8
  %81 = trunc i64 %80 to i32
  %conv55 = add i32 %mul, %81
  %82 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %78, align 4
  %add.ptr.i417 = getelementptr i8, ptr %83, i32 %conv55
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i417) #15, !srcloc !201
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  %tcprtxseg = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 33
  %86 = ptrtoint ptr %tcprtxseg to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %tcprtxseg, align 4
  %87 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hw5, align 8
  %arrayidx59 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 21, i32 7
  %89 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %arrayidx59, align 8
  %91 = trunc i64 %90 to i32
  %conv62 = add i32 %mul, %91
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %88, align 4
  %add.ptr.i418 = getelementptr i8, ptr %93, i32 %conv62
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i418) #15, !srcloc !201
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !202
  %tcprxopterr = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 30
  %96 = ptrtoint ptr %tcprxopterr to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %tcprxopterr, align 4
  %97 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hw5, align 8
  %hw_stats_regs_64 = getelementptr inbounds %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22
  %99 = ptrtoint ptr %hw_stats_regs_64 to i32
  call void @__asan_load8_noabort(i32 %99)
  %100 = load i64, ptr %hw_stats_regs_64, align 8
  %101 = trunc i64 %100 to i32
  %conv68 = add i32 %mul4, %101
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %98, align 4
  %add.ptr.i419 = getelementptr i8, ptr %103, i32 %conv68
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i419) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i = getelementptr i32, ptr %add.ptr.i419, i32 1
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %106 = zext i32 %105 to i64
  %107 = zext i32 %104 to i64
  %108 = shl nuw i64 %107, 32
  %109 = or i64 %108, %106
  %110 = tail call i64 @llvm.bswap.i64(i64 %109) #15
  %ip4rxocts = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 2
  %111 = ptrtoint ptr %ip4rxocts to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %110, ptr %ip4rxocts, align 8
  %112 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %hw5, align 8
  %arrayidx72 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 1
  %114 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx72, align 8
  %116 = trunc i64 %115 to i32
  %conv75 = add i32 %mul4, %116
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %113, align 4
  %add.ptr.i420 = getelementptr i8, ptr %118, i32 %conv75
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i420) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i421 = getelementptr i32, ptr %add.ptr.i420, i32 1
  %120 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i421) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %121 = zext i32 %120 to i64
  %122 = zext i32 %119 to i64
  %123 = shl nuw i64 %122, 32
  %124 = or i64 %123, %121
  %125 = tail call i64 @llvm.bswap.i64(i64 %124) #15
  %ip4rxpkts = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 3
  %126 = ptrtoint ptr %ip4rxpkts to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %125, ptr %ip4rxpkts, align 8
  %127 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %hw5, align 8
  %arrayidx79 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 2
  %129 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load8_noabort(i32 %129)
  %130 = load i64, ptr %arrayidx79, align 8
  %131 = trunc i64 %130 to i32
  %conv82 = add i32 %mul4, %131
  %132 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %128, align 4
  %add.ptr.i422 = getelementptr i8, ptr %133, i32 %conv82
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i422) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i423 = getelementptr i32, ptr %add.ptr.i422, i32 1
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i423) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %136 = zext i32 %135 to i64
  %137 = zext i32 %134 to i64
  %138 = shl nuw i64 %137, 32
  %139 = or i64 %138, %136
  %140 = tail call i64 @llvm.bswap.i64(i64 %139) #15
  %ip4txfrag = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 18
  %141 = ptrtoint ptr %ip4txfrag to i32
  call void @__asan_store8_noabort(i32 %141)
  store i64 %140, ptr %ip4txfrag, align 8
  %142 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %hw5, align 8
  %arrayidx86 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 3
  %144 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load8_noabort(i32 %144)
  %145 = load i64, ptr %arrayidx86, align 8
  %146 = trunc i64 %145 to i32
  %conv89 = add i32 %mul4, %146
  %147 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %143, align 4
  %add.ptr.i424 = getelementptr i8, ptr %148, i32 %conv89
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i424) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i425 = getelementptr i32, ptr %add.ptr.i424, i32 1
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i425) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %151 = zext i32 %150 to i64
  %152 = zext i32 %149 to i64
  %153 = shl nuw i64 %152, 32
  %154 = or i64 %153, %151
  %155 = tail call i64 @llvm.bswap.i64(i64 %154) #15
  %ip4rxmcpkts = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 8
  %156 = ptrtoint ptr %ip4rxmcpkts to i32
  call void @__asan_store8_noabort(i32 %156)
  store i64 %155, ptr %ip4rxmcpkts, align 8
  %157 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %hw5, align 8
  %arrayidx93 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 4
  %159 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load8_noabort(i32 %159)
  %160 = load i64, ptr %arrayidx93, align 8
  %161 = trunc i64 %160 to i32
  %conv96 = add i32 %mul4, %161
  %162 = ptrtoint ptr %158 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %158, align 4
  %add.ptr.i426 = getelementptr i8, ptr %163, i32 %conv96
  %164 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i426) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i427 = getelementptr i32, ptr %add.ptr.i426, i32 1
  %165 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i427) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %166 = zext i32 %165 to i64
  %167 = zext i32 %164 to i64
  %168 = shl nuw i64 %167, 32
  %169 = or i64 %168, %166
  %170 = tail call i64 @llvm.bswap.i64(i64 %169) #15
  %ip4txocts = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 16
  %171 = ptrtoint ptr %ip4txocts to i32
  call void @__asan_store8_noabort(i32 %171)
  store i64 %170, ptr %ip4txocts, align 8
  %172 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %hw5, align 8
  %arrayidx100 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 5
  %174 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load8_noabort(i32 %174)
  %175 = load i64, ptr %arrayidx100, align 8
  %176 = trunc i64 %175 to i32
  %conv103 = add i32 %mul4, %176
  %177 = ptrtoint ptr %173 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %173, align 4
  %add.ptr.i428 = getelementptr i8, ptr %178, i32 %conv103
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i428) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i429 = getelementptr i32, ptr %add.ptr.i428, i32 1
  %180 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i429) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %181 = zext i32 %180 to i64
  %182 = zext i32 %179 to i64
  %183 = shl nuw i64 %182, 32
  %184 = or i64 %183, %181
  %185 = tail call i64 @llvm.bswap.i64(i64 %184) #15
  %ip4txpkts = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 17
  %186 = ptrtoint ptr %ip4txpkts to i32
  call void @__asan_store8_noabort(i32 %186)
  store i64 %185, ptr %ip4txpkts, align 8
  %187 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %hw5, align 8
  %arrayidx107 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 6
  %189 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load8_noabort(i32 %189)
  %190 = load i64, ptr %arrayidx107, align 8
  %191 = trunc i64 %190 to i32
  %conv110 = add i32 %mul4, %191
  %192 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %188, align 4
  %add.ptr.i430 = getelementptr i8, ptr %193, i32 %conv110
  %194 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i430) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i431 = getelementptr i32, ptr %add.ptr.i430, i32 1
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i431) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %196 = zext i32 %195 to i64
  %197 = zext i32 %194 to i64
  %198 = shl nuw i64 %197, 32
  %199 = or i64 %198, %196
  %200 = tail call i64 @llvm.bswap.i64(i64 %199) #15
  %201 = ptrtoint ptr %ip4txfrag to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 %200, ptr %ip4txfrag, align 8
  %202 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %hw5, align 8
  %arrayidx115 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 7
  %204 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load8_noabort(i32 %204)
  %205 = load i64, ptr %arrayidx115, align 8
  %206 = trunc i64 %205 to i32
  %conv118 = add i32 %mul4, %206
  %207 = ptrtoint ptr %203 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %203, align 4
  %add.ptr.i432 = getelementptr i8, ptr %208, i32 %conv118
  %209 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i432) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i433 = getelementptr i32, ptr %add.ptr.i432, i32 1
  %210 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i433) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %211 = zext i32 %210 to i64
  %212 = zext i32 %209 to i64
  %213 = shl nuw i64 %212, 32
  %214 = or i64 %213, %211
  %215 = tail call i64 @llvm.bswap.i64(i64 %214) #15
  %ip4txmcpkts = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 20
  %216 = ptrtoint ptr %ip4txmcpkts to i32
  call void @__asan_store8_noabort(i32 %216)
  store i64 %215, ptr %ip4txmcpkts, align 8
  %217 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %hw5, align 8
  %arrayidx122 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 8
  %219 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %arrayidx122, align 8
  %221 = trunc i64 %220 to i32
  %conv125 = add i32 %mul4, %221
  %222 = ptrtoint ptr %218 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %218, align 4
  %add.ptr.i434 = getelementptr i8, ptr %223, i32 %conv125
  %224 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i434) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i435 = getelementptr i32, ptr %add.ptr.i434, i32 1
  %225 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i435) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %226 = zext i32 %225 to i64
  %227 = zext i32 %224 to i64
  %228 = shl nuw i64 %227, 32
  %229 = or i64 %228, %226
  %230 = tail call i64 @llvm.bswap.i64(i64 %229) #15
  %ip6rxocts = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 9
  %231 = ptrtoint ptr %ip6rxocts to i32
  call void @__asan_store8_noabort(i32 %231)
  store i64 %230, ptr %ip6rxocts, align 8
  %232 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %hw5, align 8
  %arrayidx129 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 9
  %234 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load8_noabort(i32 %234)
  %235 = load i64, ptr %arrayidx129, align 8
  %236 = trunc i64 %235 to i32
  %conv132 = add i32 %mul4, %236
  %237 = ptrtoint ptr %233 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %233, align 4
  %add.ptr.i436 = getelementptr i8, ptr %238, i32 %conv132
  %239 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i436) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i437 = getelementptr i32, ptr %add.ptr.i436, i32 1
  %240 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i437) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %241 = zext i32 %240 to i64
  %242 = zext i32 %239 to i64
  %243 = shl nuw i64 %242, 32
  %244 = or i64 %243, %241
  %245 = tail call i64 @llvm.bswap.i64(i64 %244) #15
  %ip6rxpkts = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 10
  %246 = ptrtoint ptr %ip6rxpkts to i32
  call void @__asan_store8_noabort(i32 %246)
  store i64 %245, ptr %ip6rxpkts, align 8
  %247 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %hw5, align 8
  %arrayidx136 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 10
  %249 = ptrtoint ptr %arrayidx136 to i32
  call void @__asan_load8_noabort(i32 %249)
  %250 = load i64, ptr %arrayidx136, align 8
  %251 = trunc i64 %250 to i32
  %conv139 = add i32 %mul4, %251
  %252 = ptrtoint ptr %248 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %248, align 4
  %add.ptr.i438 = getelementptr i8, ptr %253, i32 %conv139
  %254 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i438) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i439 = getelementptr i32, ptr %add.ptr.i438, i32 1
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i439) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %256 = zext i32 %255 to i64
  %257 = zext i32 %254 to i64
  %258 = shl nuw i64 %257, 32
  %259 = or i64 %258, %256
  %260 = tail call i64 @llvm.bswap.i64(i64 %259) #15
  %ip6txfrags = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 23
  %261 = ptrtoint ptr %ip6txfrags to i32
  call void @__asan_store8_noabort(i32 %261)
  store i64 %260, ptr %ip6txfrags, align 8
  %262 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %hw5, align 8
  %arrayidx143 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 11
  %264 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_load8_noabort(i32 %264)
  %265 = load i64, ptr %arrayidx143, align 8
  %266 = trunc i64 %265 to i32
  %conv146 = add i32 %mul4, %266
  %267 = ptrtoint ptr %263 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %263, align 4
  %add.ptr.i440 = getelementptr i8, ptr %268, i32 %conv146
  %269 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i440) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i441 = getelementptr i32, ptr %add.ptr.i440, i32 1
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i441) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %271 = zext i32 %270 to i64
  %272 = zext i32 %269 to i64
  %273 = shl nuw i64 %272, 32
  %274 = or i64 %273, %271
  %275 = tail call i64 @llvm.bswap.i64(i64 %274) #15
  %ip6rxmcpkts = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 15
  %276 = ptrtoint ptr %ip6rxmcpkts to i32
  call void @__asan_store8_noabort(i32 %276)
  store i64 %275, ptr %ip6rxmcpkts, align 8
  %277 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %hw5, align 8
  %arrayidx150 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 12
  %279 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load8_noabort(i32 %279)
  %280 = load i64, ptr %arrayidx150, align 8
  %281 = trunc i64 %280 to i32
  %conv153 = add i32 %mul4, %281
  %282 = ptrtoint ptr %278 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %278, align 4
  %add.ptr.i442 = getelementptr i8, ptr %283, i32 %conv153
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i442) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i443 = getelementptr i32, ptr %add.ptr.i442, i32 1
  %285 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i443) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %286 = zext i32 %285 to i64
  %287 = zext i32 %284 to i64
  %288 = shl nuw i64 %287, 32
  %289 = or i64 %288, %286
  %290 = tail call i64 @llvm.bswap.i64(i64 %289) #15
  %ip6txocts = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 21
  %291 = ptrtoint ptr %ip6txocts to i32
  call void @__asan_store8_noabort(i32 %291)
  store i64 %290, ptr %ip6txocts, align 8
  %292 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %hw5, align 8
  %arrayidx157 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 13
  %294 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_load8_noabort(i32 %294)
  %295 = load i64, ptr %arrayidx157, align 8
  %296 = trunc i64 %295 to i32
  %conv160 = add i32 %mul4, %296
  %297 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %293, align 4
  %add.ptr.i444 = getelementptr i8, ptr %298, i32 %conv160
  %299 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i444) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i445 = getelementptr i32, ptr %add.ptr.i444, i32 1
  %300 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i445) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %301 = zext i32 %300 to i64
  %302 = zext i32 %299 to i64
  %303 = shl nuw i64 %302, 32
  %304 = or i64 %303, %301
  %305 = tail call i64 @llvm.bswap.i64(i64 %304) #15
  %ip6txpkts = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 22
  %306 = ptrtoint ptr %ip6txpkts to i32
  call void @__asan_store8_noabort(i32 %306)
  store i64 %305, ptr %ip6txpkts, align 8
  %307 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %hw5, align 8
  %arrayidx164 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 14
  %309 = ptrtoint ptr %arrayidx164 to i32
  call void @__asan_load8_noabort(i32 %309)
  %310 = load i64, ptr %arrayidx164, align 8
  %311 = trunc i64 %310 to i32
  %conv167 = add i32 %mul4, %311
  %312 = ptrtoint ptr %308 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %308, align 4
  %add.ptr.i446 = getelementptr i8, ptr %313, i32 %conv167
  %314 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i446) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i447 = getelementptr i32, ptr %add.ptr.i446, i32 1
  %315 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i447) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %316 = zext i32 %315 to i64
  %317 = zext i32 %314 to i64
  %318 = shl nuw i64 %317, 32
  %319 = or i64 %318, %316
  %320 = tail call i64 @llvm.bswap.i64(i64 %319) #15
  %321 = ptrtoint ptr %ip6txfrags to i32
  call void @__asan_store8_noabort(i32 %321)
  store i64 %320, ptr %ip6txfrags, align 8
  %322 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %hw5, align 8
  %arrayidx172 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 15
  %324 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load8_noabort(i32 %324)
  %325 = load i64, ptr %arrayidx172, align 8
  %326 = trunc i64 %325 to i32
  %conv175 = add i32 %mul4, %326
  %327 = ptrtoint ptr %323 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %323, align 4
  %add.ptr.i448 = getelementptr i8, ptr %328, i32 %conv175
  %329 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i448) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i449 = getelementptr i32, ptr %add.ptr.i448, i32 1
  %330 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i449) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %331 = zext i32 %330 to i64
  %332 = zext i32 %329 to i64
  %333 = shl nuw i64 %332, 32
  %334 = or i64 %333, %331
  %335 = tail call i64 @llvm.bswap.i64(i64 %334) #15
  %ip6txmcpkts = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 25
  %336 = ptrtoint ptr %ip6txmcpkts to i32
  call void @__asan_store8_noabort(i32 %336)
  store i64 %335, ptr %ip6txmcpkts, align 8
  %337 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %hw5, align 8
  %arrayidx179 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 16
  %339 = ptrtoint ptr %arrayidx179 to i32
  call void @__asan_load8_noabort(i32 %339)
  %340 = load i64, ptr %arrayidx179, align 8
  %341 = trunc i64 %340 to i32
  %conv182 = add i32 %mul4, %341
  %342 = ptrtoint ptr %338 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %338, align 4
  %add.ptr.i450 = getelementptr i8, ptr %343, i32 %conv182
  %344 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i450) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i451 = getelementptr i32, ptr %add.ptr.i450, i32 1
  %345 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i451) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %346 = zext i32 %345 to i64
  %347 = zext i32 %344 to i64
  %348 = shl nuw i64 %347, 32
  %349 = or i64 %348, %346
  %350 = tail call i64 @llvm.bswap.i64(i64 %349) #15
  %tcprxsegs = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 28
  %351 = ptrtoint ptr %tcprxsegs to i32
  call void @__asan_store8_noabort(i32 %351)
  store i64 %350, ptr %tcprxsegs, align 8
  %352 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load ptr, ptr %hw5, align 8
  %arrayidx186 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 17
  %354 = ptrtoint ptr %arrayidx186 to i32
  call void @__asan_load8_noabort(i32 %354)
  %355 = load i64, ptr %arrayidx186, align 8
  %356 = trunc i64 %355 to i32
  %conv189 = add i32 %mul4, %356
  %357 = ptrtoint ptr %353 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %353, align 4
  %add.ptr.i452 = getelementptr i8, ptr %358, i32 %conv189
  %359 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i452) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i453 = getelementptr i32, ptr %add.ptr.i452, i32 1
  %360 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i453) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %361 = zext i32 %360 to i64
  %362 = zext i32 %359 to i64
  %363 = shl nuw i64 %362, 32
  %364 = or i64 %363, %361
  %365 = tail call i64 @llvm.bswap.i64(i64 %364) #15
  %tcptxsegs = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 31
  %366 = ptrtoint ptr %tcptxsegs to i32
  call void @__asan_store8_noabort(i32 %366)
  store i64 %365, ptr %tcptxsegs, align 8
  %367 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load ptr, ptr %hw5, align 8
  %arrayidx193 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 18
  %369 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_load8_noabort(i32 %369)
  %370 = load i64, ptr %arrayidx193, align 8
  %371 = trunc i64 %370 to i32
  %conv196 = add i32 %mul4, %371
  %372 = ptrtoint ptr %368 to i32
  call void @__asan_load4_noabort(i32 %372)
  %373 = load ptr, ptr %368, align 4
  %add.ptr.i454 = getelementptr i8, ptr %373, i32 %conv196
  %374 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i454) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i455 = getelementptr i32, ptr %add.ptr.i454, i32 1
  %375 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i455) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %376 = zext i32 %375 to i64
  %377 = zext i32 %374 to i64
  %378 = shl nuw i64 %377, 32
  %379 = or i64 %378, %376
  %380 = tail call i64 @llvm.bswap.i64(i64 %379) #15
  %rdmarxrds = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 37
  %381 = ptrtoint ptr %rdmarxrds to i32
  call void @__asan_store8_noabort(i32 %381)
  store i64 %380, ptr %rdmarxrds, align 8
  %382 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %hw5, align 8
  %arrayidx200 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 19
  %384 = ptrtoint ptr %arrayidx200 to i32
  call void @__asan_load8_noabort(i32 %384)
  %385 = load i64, ptr %arrayidx200, align 8
  %386 = trunc i64 %385 to i32
  %conv203 = add i32 %mul4, %386
  %387 = ptrtoint ptr %383 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %383, align 4
  %add.ptr.i456 = getelementptr i8, ptr %388, i32 %conv203
  %389 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i456) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i457 = getelementptr i32, ptr %add.ptr.i456, i32 1
  %390 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i457) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %391 = zext i32 %390 to i64
  %392 = zext i32 %389 to i64
  %393 = shl nuw i64 %392, 32
  %394 = or i64 %393, %391
  %395 = tail call i64 @llvm.bswap.i64(i64 %394) #15
  %rdmarxsnds = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 38
  %396 = ptrtoint ptr %rdmarxsnds to i32
  call void @__asan_store8_noabort(i32 %396)
  store i64 %395, ptr %rdmarxsnds, align 8
  %397 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %hw5, align 8
  %arrayidx207 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 20
  %399 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load8_noabort(i32 %399)
  %400 = load i64, ptr %arrayidx207, align 8
  %401 = trunc i64 %400 to i32
  %conv210 = add i32 %mul4, %401
  %402 = ptrtoint ptr %398 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %398, align 4
  %add.ptr.i458 = getelementptr i8, ptr %403, i32 %conv210
  %404 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i458) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i459 = getelementptr i32, ptr %add.ptr.i458, i32 1
  %405 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i459) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %406 = zext i32 %405 to i64
  %407 = zext i32 %404 to i64
  %408 = shl nuw i64 %407, 32
  %409 = or i64 %408, %406
  %410 = tail call i64 @llvm.bswap.i64(i64 %409) #15
  %rdmarxwrs = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 36
  %411 = ptrtoint ptr %rdmarxwrs to i32
  call void @__asan_store8_noabort(i32 %411)
  store i64 %410, ptr %rdmarxwrs, align 8
  %412 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %hw5, align 8
  %arrayidx214 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 21
  %414 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load8_noabort(i32 %414)
  %415 = load i64, ptr %arrayidx214, align 8
  %416 = trunc i64 %415 to i32
  %conv217 = add i32 %mul4, %416
  %417 = ptrtoint ptr %413 to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %413, align 4
  %add.ptr.i460 = getelementptr i8, ptr %418, i32 %conv217
  %419 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i460) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i461 = getelementptr i32, ptr %add.ptr.i460, i32 1
  %420 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i461) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %421 = zext i32 %420 to i64
  %422 = zext i32 %419 to i64
  %423 = shl nuw i64 %422, 32
  %424 = or i64 %423, %421
  %425 = tail call i64 @llvm.bswap.i64(i64 %424) #15
  %rdmatxrds = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 40
  %426 = ptrtoint ptr %rdmatxrds to i32
  call void @__asan_store8_noabort(i32 %426)
  store i64 %425, ptr %rdmatxrds, align 8
  %427 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %hw5, align 8
  %arrayidx221 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 22
  %429 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load8_noabort(i32 %429)
  %430 = load i64, ptr %arrayidx221, align 8
  %431 = trunc i64 %430 to i32
  %conv224 = add i32 %mul4, %431
  %432 = ptrtoint ptr %428 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %428, align 4
  %add.ptr.i462 = getelementptr i8, ptr %433, i32 %conv224
  %434 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i462) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i463 = getelementptr i32, ptr %add.ptr.i462, i32 1
  %435 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i463) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %436 = zext i32 %435 to i64
  %437 = zext i32 %434 to i64
  %438 = shl nuw i64 %437, 32
  %439 = or i64 %438, %436
  %440 = tail call i64 @llvm.bswap.i64(i64 %439) #15
  %rdmatxsnds = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 41
  %441 = ptrtoint ptr %rdmatxsnds to i32
  call void @__asan_store8_noabort(i32 %441)
  store i64 %440, ptr %rdmatxsnds, align 8
  %442 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %hw5, align 8
  %arrayidx228 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 23
  %444 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load8_noabort(i32 %444)
  %445 = load i64, ptr %arrayidx228, align 8
  %446 = trunc i64 %445 to i32
  %conv231 = add i32 %mul4, %446
  %447 = ptrtoint ptr %443 to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load ptr, ptr %443, align 4
  %add.ptr.i464 = getelementptr i8, ptr %448, i32 %conv231
  %449 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i464) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i465 = getelementptr i32, ptr %add.ptr.i464, i32 1
  %450 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i465) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %451 = zext i32 %450 to i64
  %452 = zext i32 %449 to i64
  %453 = shl nuw i64 %452, 32
  %454 = or i64 %453, %451
  %455 = tail call i64 @llvm.bswap.i64(i64 %454) #15
  %rdmatxwrs = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 39
  %456 = ptrtoint ptr %rdmatxwrs to i32
  call void @__asan_store8_noabort(i32 %456)
  store i64 %455, ptr %rdmatxwrs, align 8
  %457 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %457)
  %458 = load ptr, ptr %hw5, align 8
  %arrayidx235 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 24
  %459 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load8_noabort(i32 %459)
  %460 = load i64, ptr %arrayidx235, align 8
  %461 = trunc i64 %460 to i32
  %conv238 = add i32 %mul4, %461
  %462 = ptrtoint ptr %458 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load ptr, ptr %458, align 4
  %add.ptr.i466 = getelementptr i8, ptr %463, i32 %conv238
  %464 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i466) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i467 = getelementptr i32, ptr %add.ptr.i466, i32 1
  %465 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i467) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %466 = zext i32 %465 to i64
  %467 = zext i32 %464 to i64
  %468 = shl nuw i64 %467, 32
  %469 = or i64 %468, %466
  %470 = tail call i64 @llvm.bswap.i64(i64 %469) #15
  %rdmavbn = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 42
  %471 = ptrtoint ptr %rdmavbn to i32
  call void @__asan_store8_noabort(i32 %471)
  store i64 %470, ptr %rdmavbn, align 8
  %472 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load ptr, ptr %hw5, align 8
  %arrayidx242 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 25
  %474 = ptrtoint ptr %arrayidx242 to i32
  call void @__asan_load8_noabort(i32 %474)
  %475 = load i64, ptr %arrayidx242, align 8
  %476 = trunc i64 %475 to i32
  %conv245 = add i32 %mul4, %476
  %477 = ptrtoint ptr %473 to i32
  call void @__asan_load4_noabort(i32 %477)
  %478 = load ptr, ptr %473, align 4
  %add.ptr.i468 = getelementptr i8, ptr %478, i32 %conv245
  %479 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i468) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i469 = getelementptr i32, ptr %add.ptr.i468, i32 1
  %480 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i469) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %481 = zext i32 %480 to i64
  %482 = zext i32 %479 to i64
  %483 = shl nuw i64 %482, 32
  %484 = or i64 %483, %481
  %485 = tail call i64 @llvm.bswap.i64(i64 %484) #15
  %rdmavinv = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 43
  %486 = ptrtoint ptr %rdmavinv to i32
  call void @__asan_store8_noabort(i32 %486)
  store i64 %485, ptr %rdmavinv, align 8
  %487 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %hw5, align 8
  %arrayidx249 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 30
  %489 = ptrtoint ptr %arrayidx249 to i32
  call void @__asan_load8_noabort(i32 %489)
  %490 = load i64, ptr %arrayidx249, align 8
  %491 = trunc i64 %490 to i32
  %conv252 = add i32 %mul4, %491
  %492 = ptrtoint ptr %488 to i32
  call void @__asan_load4_noabort(i32 %492)
  %493 = load ptr, ptr %488, align 4
  %add.ptr.i470 = getelementptr i8, ptr %493, i32 %conv252
  %494 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i470) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i471 = getelementptr i32, ptr %add.ptr.i470, i32 1
  %495 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i471) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %496 = zext i32 %495 to i64
  %497 = zext i32 %494 to i64
  %498 = shl nuw i64 %497, 32
  %499 = or i64 %498, %496
  %500 = tail call i64 @llvm.bswap.i64(i64 %499) #15
  %udprxpkts = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 34
  %501 = ptrtoint ptr %udprxpkts to i32
  call void @__asan_store8_noabort(i32 %501)
  store i64 %500, ptr %udprxpkts, align 8
  %502 = ptrtoint ptr %hw5 to i32
  call void @__asan_load4_noabort(i32 %502)
  %503 = load ptr, ptr %hw5, align 8
  %arrayidx256 = getelementptr %struct.irdma_sc_dev, ptr %dev, i32 0, i32 22, i32 31
  %504 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_load8_noabort(i32 %504)
  %505 = load i64, ptr %arrayidx256, align 8
  %506 = trunc i64 %505 to i32
  %conv259 = add i32 %mul4, %506
  %507 = ptrtoint ptr %503 to i32
  call void @__asan_load4_noabort(i32 %507)
  %508 = load ptr, ptr %503, align 4
  %add.ptr.i472 = getelementptr i8, ptr %508, i32 %conv259
  %509 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i472) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !203
  %add.ptr.i.i473 = getelementptr i32, ptr %add.ptr.i472, i32 1
  %510 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i473) #15, !srcloc !201
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #15, !srcloc !204
  %511 = zext i32 %510 to i64
  %512 = zext i32 %509 to i64
  %513 = shl nuw i64 %512, 32
  %514 = or i64 %513, %511
  %515 = tail call i64 @llvm.bswap.i64(i64 %514) #15
  %udptxpkts = getelementptr inbounds %struct.irdma_gather_stats, ptr %1, i32 0, i32 35
  %516 = ptrtoint ptr %udptxpkts to i32
  call void @__asan_store8_noabort(i32 %516)
  store i64 %515, ptr %udptxpkts, align 8
  %vsi.i = getelementptr inbounds %struct.irdma_vsi_pestat, ptr %pestat, i32 0, i32 4
  %517 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %517)
  %518 = load ptr, ptr %vsi.i, align 8
  tail call void @sc_vsi_update_stats(ptr noundef %518) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_cqp_gather_stats_cmd(ptr noundef %dev, ptr noundef %pestat, i1 noundef zeroext %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -160
  %cqp = getelementptr i8, ptr %dev, i32 22672
  %call1 = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext %wait)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = call ptr @memset(ptr %call1, i32 0, i32 216)
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 38, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 2
  %2 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %post_sq, align 1
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3
  %info3 = getelementptr inbounds %struct.anon.215, ptr %in, i32 0, i32 1
  %gather_info = getelementptr inbounds %struct.irdma_vsi_pestat, ptr %pestat, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %info3, ptr %gather_info, i32 24)
  %4 = ptrtoint ptr %call1 to i32
  %conv = zext i32 %4 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 1
  %5 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %scratch, align 8
  %6 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cqp, ptr %in, align 8
  %param = getelementptr inbounds %struct.irdma_cqp_request, ptr %call1, i32 0, i32 5
  %7 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pestat, ptr %param, align 4
  br i1 %wait, label %if.then15, label %if.end12

if.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %callback_fcn = getelementptr inbounds %struct.irdma_cqp_request, ptr %call1, i32 0, i32 4
  %8 = ptrtoint ptr %callback_fcn to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @irdma_process_cqp_stats, ptr %callback_fcn, align 8
  %call13 = tail call i32 @irdma_handle_cqp_op(ptr noundef %add.ptr.i, ptr noundef nonnull %call1)
  br label %if.end16

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call1340 = tail call i32 @irdma_handle_cqp_op(ptr noundef %add.ptr.i, ptr noundef nonnull %call1)
  %vsi.i = getelementptr inbounds %struct.irdma_vsi_pestat, ptr %pestat, i32 0, i32 4
  %9 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vsi.i, align 8
  tail call void @sc_vsi_update_stats(ptr noundef %10) #15
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %if.end12
  %call1341 = phi i32 [ %call1340, %if.then15 ], [ %call13, %if.end12 ]
  %refcnt.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %call1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %11 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !210

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ %call1341, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call1341, %if.then10.i.i.i.i ], [ %call1341, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_process_cqp_stats(ptr nocapture noundef readonly %cqp_request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %param = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 5
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param, align 4
  %vsi.i = getelementptr inbounds %struct.irdma_vsi_pestat, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %vsi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vsi.i, align 8
  tail call void @sc_vsi_update_stats(ptr noundef %3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_cqp_stats_inst_cmd(ptr nocapture noundef readonly %vsi, i8 noundef zeroext %cmd, ptr nocapture noundef %stats_info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.irdma_sc_vsi, ptr %vsi, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %cqp = getelementptr i8, ptr %1, i32 22672
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %cmd)
  %cmp = icmp eq i8 %cmd, 36
  %call2 = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext %cmp)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %1, i32 -160
  %2 = call ptr @memset(ptr %call2, i32 0, i32 216)
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 1
  %3 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %cmd, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 2
  %4 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %post_sq, align 1
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 3
  %info6 = getelementptr inbounds %struct.anon.214, ptr %in, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %info6, ptr %stats_info, i32 3)
  %6 = ptrtoint ptr %call2 to i32
  %conv7 = zext i32 %6 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 3, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv7, ptr %scratch, align 8
  %8 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cqp, ptr %in, align 8
  %call14 = tail call i32 @irdma_handle_cqp_op(ptr noundef %add.ptr.i, ptr noundef nonnull %call2)
  br i1 %cmp, label %if.then16, label %if.end5.if.end18_crit_edge

if.end5.if.end18_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end18

if.then16:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %compl_info = getelementptr inbounds %struct.irdma_cqp_request, ptr %call2, i32 0, i32 6
  %9 = ptrtoint ptr %compl_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %compl_info, align 8
  %conv17 = trunc i32 %10 to i8
  %stats_idx = getelementptr inbounds %struct.irdma_stats_inst_info, ptr %stats_info, i32 0, i32 2
  %11 = ptrtoint ptr %stats_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv17, ptr %stats_idx, align 1
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end5.if.end18_crit_edge
  %refcnt.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %call2, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !210

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call2) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ %call14, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call14, %if.then10.i.i.i.i ], [ %call14, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_cqp_ceq_cmd(ptr noundef %dev, ptr noundef %sc_ceq, i8 noundef zeroext %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cqp = getelementptr i8, ptr %dev, i32 22672
  %call1 = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -160
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 2
  %0 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %post_sq, align 1
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %op, ptr %cqp_cmd, align 8
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sc_ceq, ptr %in, align 8
  %3 = ptrtoint ptr %call1 to i32
  %conv = zext i32 %3 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %scratch, align 8
  %call4 = tail call i32 @irdma_handle_cqp_op(ptr noundef %add.ptr.i, ptr noundef nonnull %call1)
  %refcnt.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %call1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !210

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ %call4, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call4, %if.then10.i.i.i.i ], [ %call4, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_cqp_aeq_cmd(ptr noundef %dev, ptr noundef %sc_aeq, i8 noundef zeroext %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cqp = getelementptr i8, ptr %dev, i32 22672
  %call1 = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext true)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -160
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 2
  %0 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %post_sq, align 1
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 1
  %1 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %op, ptr %cqp_cmd, align 8
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3
  %2 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %sc_aeq, ptr %in, align 8
  %3 = ptrtoint ptr %call1 to i32
  %conv = zext i32 %3 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call1, i32 0, i32 3, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv, ptr %scratch, align 8
  %call4 = tail call i32 @irdma_handle_cqp_op(ptr noundef %add.ptr.i, ptr noundef nonnull %call1)
  %refcnt.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %call1, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !210

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call1) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ %call4, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %call4, %if.then10.i.i.i.i ], [ %call4, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_cqp_ws_node_cmd(ptr noundef %dev, i8 noundef zeroext %cmd, ptr nocapture noundef %node_info) local_unnamed_addr #0 align 64 {
entry:
  %compl_info = alloca %struct.irdma_ccq_cqe_info, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %cqp = getelementptr i8, ptr %dev, i32 22672
  %ceq_valid = getelementptr i8, ptr %dev, i32 6208
  %0 = ptrtoint ptr %ceq_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %ceq_valid, align 8
  %1 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  %lnot = xor i1 %bf.cast.not, true
  %call2 = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext %lnot)
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %entry.cleanup_crit_edge, label %if.end5

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end5:                                          ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -160
  %2 = call ptr @memset(ptr %call2, i32 0, i32 216)
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 1
  %3 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %cmd, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 2
  %4 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %post_sq, align 1
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 3
  %info6 = getelementptr inbounds %struct.anon.216, ptr %in, i32 0, i32 1
  %5 = call ptr @memcpy(ptr %info6, ptr %node_info, i32 12)
  %6 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cqp, ptr %in, align 8
  %7 = ptrtoint ptr %call2 to i32
  %conv = zext i32 %7 to i64
  %scratch = getelementptr inbounds %struct.cqp_cmds_info, ptr %call2, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %scratch to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %scratch, align 8
  %call12 = tail call i32 @irdma_handle_cqp_op(ptr noundef %add.ptr.i, ptr noundef nonnull %call2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end5.exit_crit_edge

if.end5.exit_crit_edge:                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %exit

if.end15:                                         ; preds = %if.end5
  br i1 %bf.cast.not, label %if.then17, label %if.else29

if.then17:                                        ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %compl_info) #15
  %9 = call ptr @memset(ptr %compl_info, i32 255, i32 32)
  %call18 = call i32 @irdma_sc_poll_for_cqp_op_done(ptr noundef %cqp, i8 noundef zeroext 44, ptr noundef nonnull %compl_info) #15
  %op_ret_val = getelementptr inbounds %struct.irdma_ccq_cqe_info, ptr %compl_info, i32 0, i32 2
  %10 = ptrtoint ptr %op_ret_val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %op_ret_val, align 8
  %conv19 = trunc i32 %11 to i16
  %qs_handle = getelementptr inbounds %struct.irdma_ws_node_info, ptr %node_info, i32 0, i32 3
  %12 = ptrtoint ptr %qs_handle to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv19, ptr %qs_handle, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_cqp_ws_node_cmd.__UNIQUE_ID_ddebug700, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_cqp_ws_node_cmd, %if.then25)) #15
          to label %do.end [label %if.then25], !srcloc !198

if.then25:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #17
  %iwdev = getelementptr i8, ptr %dev, i32 24968
  %13 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %iwdev, align 8
  %op_code = getelementptr inbounds %struct.irdma_ccq_cqe_info, ptr %compl_info, i32 0, i32 5
  %15 = ptrtoint ptr %op_code to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %op_code, align 8
  %conv26 = zext i8 %16 to i32
  %17 = ptrtoint ptr %op_ret_val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %op_ret_val, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_cqp_ws_node_cmd.__UNIQUE_ID_ddebug700, ptr noundef %14, ptr noundef nonnull @.str.20, i32 noundef %conv26, i32 noundef %18) #15
  br label %do.end

do.end:                                           ; preds = %if.then25, %if.then17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %compl_info) #15
  br label %exit

if.else29:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #17
  %compl_info30 = getelementptr inbounds %struct.irdma_cqp_request, ptr %call2, i32 0, i32 6
  %19 = ptrtoint ptr %compl_info30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %compl_info30, align 8
  %conv32 = trunc i32 %20 to i16
  %qs_handle33 = getelementptr inbounds %struct.irdma_ws_node_info, ptr %node_info, i32 0, i32 3
  %21 = ptrtoint ptr %qs_handle33 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv32, ptr %qs_handle33, align 2
  br label %exit

exit:                                             ; preds = %if.else29, %do.end, %if.end5.exit_crit_edge
  %status.0 = phi i32 [ %call12, %if.end5.exit_crit_edge ], [ %call18, %do.end ], [ 0, %if.else29 ]
  %refcnt.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %call2, i32 0, i32 3
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %22 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !210

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %cleanup

if.then.i:                                        ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #17
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  call void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call2) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %entry.cleanup_crit_edge ], [ %status.0, %if.end5.i.i.i.i.cleanup_crit_edge ], [ %status.0, %if.then10.i.i.i.i ], [ %status.0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_sc_poll_for_cqp_op_done(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_ah_cqp_op(ptr noundef %rf, ptr nocapture noundef %sc_ah, i8 noundef zeroext %cmd, i1 noundef zeroext %wait, ptr noundef %callback_fcn, ptr noundef %cb_param) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i8 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %cmd, label %entry.cleanup_crit_edge [
    i8 30, label %entry.if.end_crit_edge
    i8 32, label %entry.if.end_crit_edge85
  ]

entry.if.end_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge85
  %cqp = getelementptr inbounds %struct.irdma_pci_f, ptr %rf, i32 0, i32 46
  %call = tail call ptr @irdma_alloc_and_get_cqp_request(ptr noundef %cqp, i1 noundef zeroext %wait)
  %tobool5.not = icmp eq ptr %call, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %cqp_cmd = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %cqp_cmd to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %cmd, ptr %cqp_cmd, align 8
  %post_sq = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %post_sq to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %post_sq, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 30, i8 %cmd)
  %cmp9 = icmp eq i8 %cmd, 30
  br i1 %cmp9, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  %in = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3
  %info12 = getelementptr inbounds %struct.anon.209, ptr %in, i32 0, i32 1
  br label %if.end38.sink.split

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %cmd)
  %cmp21 = icmp eq i8 %cmd, 32
  br i1 %cmp21, label %if.then23, label %if.else.if.end38_crit_edge

if.else.if.end38_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end38

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #17
  %in24 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3
  %info26 = getelementptr inbounds %struct.anon.210, ptr %in24, i32 0, i32 1
  br label %if.end38.sink.split

if.end38.sink.split:                              ; preds = %if.then23, %if.then11
  %info26.sink = phi ptr [ %info26, %if.then23 ], [ %info12, %if.then11 ]
  %in24.sink = phi ptr [ %in24, %if.then23 ], [ %in, %if.then11 ]
  %ah_info27 = getelementptr inbounds %struct.irdma_sc_ah, ptr %sc_ah, i32 0, i32 1
  %3 = call ptr @memcpy(ptr %info26.sink, ptr %ah_info27, i32 64)
  %4 = ptrtoint ptr %call to i32
  %conv28 = zext i32 %4 to i64
  %scratch31 = getelementptr inbounds %struct.cqp_cmds_info, ptr %call, i32 0, i32 3, i32 0, i32 0, i32 1, i32 2, i32 3, i32 1
  %5 = ptrtoint ptr %scratch31 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv28, ptr %scratch31, align 8
  %6 = ptrtoint ptr %in24.sink to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %cqp, ptr %in24.sink, align 8
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %if.else.if.end38_crit_edge
  br i1 %wait, label %if.end38.if.end42_crit_edge, label %if.then40

if.end38.if.end42_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42

if.then40:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #17
  %callback_fcn41 = getelementptr inbounds %struct.irdma_cqp_request, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %callback_fcn41 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %callback_fcn, ptr %callback_fcn41, align 8
  %param = getelementptr inbounds %struct.irdma_cqp_request, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %cb_param, ptr %param, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then40, %if.end38.if.end42_crit_edge
  %call43 = tail call i32 @irdma_handle_cqp_op(ptr noundef %rf, ptr noundef nonnull %call)
  %refcnt.i = getelementptr inbounds %struct.irdma_cqp_request, ptr %call, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !208
  tail call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #15
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #15, !srcloc !209
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.irdma_put_cqp_request.exit_crit_edge, label %if.then10.i.i.i.i, !prof !210

if.end5.i.i.i.i.irdma_put_cqp_request.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %irdma_put_cqp_request.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 3) #15
  br label %irdma_put_cqp_request.exit

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !211
  tail call void @irdma_free_cqp_request(ptr noundef %cqp, ptr noundef nonnull %call) #15
  br label %irdma_put_cqp_request.exit

irdma_put_cqp_request.exit:                       ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.irdma_put_cqp_request.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool45.not = icmp ne i32 %call43, 0
  %wait.not = xor i1 %wait, true
  %brmerge = or i1 %tobool45.not, %wait.not
  %.mux = select i1 %tobool45.not, i32 -12, i32 0
  br i1 %brmerge, label %irdma_put_cqp_request.exit.cleanup_crit_edge, label %if.then49

irdma_put_cqp_request.exit.cleanup_crit_edge:     ; preds = %irdma_put_cqp_request.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then49:                                        ; preds = %irdma_put_cqp_request.exit
  call void @__sanitizer_cov_trace_pc() #17
  %ah_valid = getelementptr inbounds %struct.irdma_sc_ah, ptr %sc_ah, i32 0, i32 1, i32 12
  %10 = ptrtoint ptr %ah_valid to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load = load i8, ptr %ah_valid, align 1
  %bf.shl = select i1 %cmp9, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %ah_valid, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %irdma_put_cqp_request.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %.mux, %irdma_put_cqp_request.exit.cleanup_crit_edge ], [ 0, %if.then49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_puda_create_ah(ptr noundef %dev, ptr nocapture noundef %ah_info, i1 noundef zeroext %wait, i32 noundef %type, ptr noundef %cb_param, ptr nocapture noundef writeonly %ah_ret) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -160
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 68) #21
  %1 = ptrtoint ptr %ah_ret to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %ah_ret, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %allocated_ahs = getelementptr i8, ptr %dev, i32 -12
  %2 = ptrtoint ptr %allocated_ahs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %allocated_ahs, align 4
  %max_ah = getelementptr i8, ptr %dev, i32 -120
  %4 = ptrtoint ptr %max_ah to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_ah, align 8
  %ah_idx = getelementptr inbounds %struct.irdma_ah_info, ptr %ah_info, i32 0, i32 6
  %next_ah = getelementptr i8, ptr %dev, i32 -116
  %rsrc_lock.i = getelementptr i8, ptr %dev, i32 23360
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #15
  %6 = ptrtoint ptr %next_ah to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %next_ah, align 4
  %call5.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %3, i32 noundef %5, i32 noundef %7) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %5)
  %cmp6.not.i = icmp ult i32 %call5.i, %5
  br i1 %cmp6.not.i, label %if.end.if.end5_crit_edge, label %if.then.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then.i:                                        ; preds = %if.end
  %call8.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %3, i32 noundef %5) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %5)
  %cmp9.not.i = icmp ult i32 %call8.i, %5
  br i1 %cmp9.not.i, label %if.then.i.if.end5_crit_edge, label %if.then11.i

if.then.i.if.end5_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_puda_create_ah, %if.then18.i)) #15
          to label %err_free [label %if.then18.i], !srcloc !198

if.then18.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #17
  %iwdev.i = getelementptr i8, ptr %dev, i32 24968
  %8 = ptrtoint ptr %iwdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iwdev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, ptr noundef %9, ptr noundef nonnull @.str.23, i32 noundef %call8.i) #15
  br label %err_free

if.end5:                                          ; preds = %if.then.i.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %rsrc_num.0.i = phi i32 [ %call8.i, %if.then.i.if.end5_crit_edge ], [ %call5.i, %if.end.if.end5_crit_edge ]
  %rem.i.i = and i32 %rsrc_num.0.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %rsrc_num.0.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %3, i32 %div2.i.i
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %11
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  %add.i = add nuw i32 %rsrc_num.0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %5)
  %cmp23.i = icmp eq i32 %add.i, %5
  %spec.select.i = select i1 %cmp23.i, i32 0, i32 %add.i
  %12 = ptrtoint ptr %next_ah to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select.i, ptr %next_ah, align 4
  %13 = ptrtoint ptr %ah_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %rsrc_num.0.i, ptr %ah_idx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #15
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %call7.i.i, align 8
  %ah_info7 = getelementptr inbounds %struct.irdma_sc_ah, ptr %call7.i.i, i32 0, i32 1
  %15 = call ptr @memcpy(ptr %ah_info7, ptr %ah_info, i32 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp = icmp eq i32 %type, 1
  %irdma_ilq_ah_cb.irdma_ieq_ah_cb = select i1 %cmp, ptr @irdma_ilq_ah_cb, ptr @irdma_ieq_ah_cb
  %call12 = tail call i32 @irdma_ah_cqp_op(ptr noundef %add.ptr.i, ptr noundef nonnull %call7.i.i, i8 noundef zeroext 30, i1 noundef zeroext %wait, ptr noundef nonnull %irdma_ilq_ah_cb.irdma_ieq_ah_cb, ptr noundef %cb_param)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool14.not = icmp eq i32 %call12, 0
  br i1 %tobool14.not, label %if.end5.cleanup_crit_edge, label %error

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

error:                                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #17
  %16 = ptrtoint ptr %allocated_ahs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %allocated_ahs, align 4
  %ah_idx19 = getelementptr inbounds %struct.irdma_sc_ah, ptr %call7.i.i, i32 0, i32 1, i32 6
  %18 = ptrtoint ptr %ah_idx19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ah_idx19, align 4
  %call2.i43 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #15
  %rem.i.i44 = and i32 %19, 31
  %shl.i.i45 = shl nuw i32 1, %rem.i.i44
  %div2.i.i46 = lshr i32 %19, 5
  %add.ptr.i.i47 = getelementptr i32, ptr %17, i32 %div2.i.i46
  %neg.i.i = xor i32 %shl.i.i45, -1
  %20 = ptrtoint ptr %add.ptr.i.i47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i47, align 4
  %and.i.i = and i32 %21, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i47, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i43) #15
  br label %err_free

err_free:                                         ; preds = %error, %if.then18.i, %if.then11.i
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #15
  %22 = ptrtoint ptr %ah_ret to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %ah_ret, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.end5.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %err_free ], [ -9, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_ilq_ah_cb(ptr nocapture noundef readonly %cqp_request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %param = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 5
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param, align 4
  %ah = getelementptr inbounds %struct.irdma_cm_node, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 4
  %compl_info = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 6
  %4 = ptrtoint ptr %compl_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %compl_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %ah_valid = getelementptr inbounds %struct.irdma_sc_ah, ptr %3, i32 0, i32 1, i32 12
  %6 = ptrtoint ptr %ah_valid to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %ah_valid, align 1
  %bf.shl = select i1 %tobool.not, i8 -128, i8 0
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %ah_valid, align 1
  tail call void @irdma_add_conn_est_qh(ptr noundef %1) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irdma_ieq_ah_cb(ptr nocapture noundef readonly %cqp_request) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %param = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 5
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param, align 4
  %ah = getelementptr inbounds %struct.irdma_sc_qp, ptr %1, i32 0, i32 12, i32 16
  %2 = ptrtoint ptr %ah to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ah, align 8
  %lock = getelementptr inbounds %struct.irdma_sc_qp, ptr %1, i32 0, i32 12, i32 18
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #15
  %compl_info = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 6
  %4 = ptrtoint ptr %compl_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %compl_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %ah_valid = getelementptr inbounds %struct.irdma_sc_ah, ptr %3, i32 0, i32 1, i32 12
  %6 = ptrtoint ptr %ah_valid to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %ah_valid, align 1
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %bf.set = or i8 %bf.load, -128
  %7 = ptrtoint ptr %ah_valid to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %bf.set, ptr %ah_valid, align 1
  %vsi = getelementptr inbounds %struct.irdma_sc_qp, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %vsi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vsi, align 4
  %ieq = getelementptr inbounds %struct.irdma_sc_vsi, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %ieq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ieq, align 8
  tail call void @irdma_ieq_process_fpdus(ptr noundef %1, ptr noundef %11) #15
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %bf.clear9 = and i8 %bf.load, 127
  %12 = ptrtoint ptr %ah_valid to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %bf.clear9, ptr %ah_valid, align 1
  %vsi11 = getelementptr inbounds %struct.irdma_sc_qp, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %vsi11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vsi11, align 4
  %ieq12 = getelementptr inbounds %struct.irdma_sc_vsi, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %ieq12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ieq12, align 8
  tail call void @irdma_ieq_cleanup_qp(ptr noundef %16, ptr noundef %1) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_puda_free_ah(ptr noundef %dev, ptr noundef %ah) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -160
  %tobool.not = icmp eq ptr %ah, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %ah_valid = getelementptr inbounds %struct.irdma_sc_ah, ptr %ah, i32 0, i32 1, i32 12
  %0 = ptrtoint ptr %ah_valid to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %ah_valid, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end.if.end4_crit_edge, label %if.then1

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call2 = tail call i32 @irdma_ah_cqp_op(ptr noundef %add.ptr.i, ptr noundef nonnull %ah, i8 noundef zeroext 32, i1 noundef zeroext false, ptr noundef null, ptr noundef null)
  %allocated_ahs = getelementptr i8, ptr %dev, i32 -12
  %1 = ptrtoint ptr %allocated_ahs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %allocated_ahs, align 4
  %ah_idx = getelementptr inbounds %struct.irdma_sc_ah, ptr %ah, i32 0, i32 1, i32 6
  %3 = ptrtoint ptr %ah_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ah_idx, align 4
  %rsrc_lock.i = getelementptr i8, ptr %dev, i32 23360
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #15
  %rem.i.i = and i32 %4, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %4, 5
  %add.ptr.i.i = getelementptr i32, ptr %2, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %5 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %6, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #15
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  tail call void @kfree(ptr noundef nonnull %ah) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @irdma_gsi_ud_qp_ah_cb(ptr nocapture noundef readonly %cqp_request) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %param = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 5
  %0 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %param, align 4
  %compl_info = getelementptr inbounds %struct.irdma_cqp_request, ptr %cqp_request, i32 0, i32 6
  %2 = ptrtoint ptr %compl_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %compl_info, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %ah_valid = getelementptr inbounds %struct.irdma_sc_ah, ptr %1, i32 0, i32 1, i32 12
  %4 = ptrtoint ptr %ah_valid to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %ah_valid, align 1
  %bf.clear4 = and i8 %bf.load, 127
  %masksel = select i1 %tobool.not, i8 -128, i8 0
  %bf.clear4.sink = or i8 %bf.clear4, %masksel
  store i8 %bf.clear4.sink, ptr %ah_valid, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_prm_add_pble_mem(ptr nocapture noundef %pprm, ptr nocapture noundef %pchunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %size = getelementptr inbounds %struct.irdma_chunk, ptr %pchunk, i32 0, i32 4
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %size, align 8
  %and = and i64 %1, 4095
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %pble_shift = getelementptr inbounds %struct.irdma_pble_prm, ptr %pprm, i32 0, i32 4
  %2 = ptrtoint ptr %pble_shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pble_shift, align 8
  %sh_prom = zext i8 %3 to i64
  %shr = lshr i64 %1, %sh_prom
  %conv2 = trunc i64 %shr to i32
  %call = tail call ptr @bitmap_zalloc(i32 noundef %conv2, i32 noundef 3264) #15
  %bitmapbuf = getelementptr inbounds %struct.irdma_chunk, ptr %pchunk, i32 0, i32 2
  %4 = ptrtoint ptr %bitmapbuf to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %bitmapbuf, align 4
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %sizeofbitmap8 = getelementptr inbounds %struct.irdma_chunk, ptr %pchunk, i32 0, i32 3
  %5 = ptrtoint ptr %sizeofbitmap8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv2, ptr %sizeofbitmap8, align 8
  %6 = ptrtoint ptr %size to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %size, align 8
  %shr10 = lshr i64 %7, 3
  %total_pble_alloc = getelementptr inbounds %struct.irdma_pble_prm, ptr %pprm, i32 0, i32 2
  %8 = ptrtoint ptr %total_pble_alloc to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %total_pble_alloc, align 8
  %add = add i64 %9, %shr10
  store i64 %add, ptr %total_pble_alloc, align 8
  %10 = load i64, ptr %size, align 8
  %shr12 = lshr i64 %10, 3
  %free_pble_cnt = getelementptr inbounds %struct.irdma_pble_prm, ptr %pprm, i32 0, i32 3
  %11 = ptrtoint ptr %free_pble_cnt to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %free_pble_cnt, align 8
  %add13 = add i64 %12, %shr12
  store i64 %add13, ptr %free_pble_cnt, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ -5, %entry.cleanup_crit_edge ], [ -9, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_prm_get_pbles(ptr noundef %pprm, ptr nocapture noundef writeonly %chunkinfo, i64 noundef %mem_size, ptr nocapture noundef writeonly %vaddr, ptr nocapture noundef writeonly %fpm_addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pprm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pprm, align 8
  %2 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %vaddr, align 4
  %3 = ptrtoint ptr %fpm_addr to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %fpm_addr, align 8
  %pble_shift = getelementptr inbounds %struct.irdma_pble_prm, ptr %pprm, i32 0, i32 4
  %4 = ptrtoint ptr %pble_shift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pble_shift, align 8
  %sh_prom = zext i8 %5 to i64
  %shl = shl nuw i64 1, %sh_prom
  %add = add i64 %mem_size, -1
  %sub = add i64 %add, %shl
  %conv5 = trunc i64 %shl to i32
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp175 = icmp ult i64 %sub, 4294967296
  br i1 %cmp175, label %if.then179, label %if.else185, !prof !210

if.then179:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %conv180 = trunc i64 %sub to i32
  %div183 = udiv i32 %conv180, %conv5
  %conv184 = zext i32 %div183 to i64
  br label %if.end189

if.else185:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %6 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %conv5, i64 %sub) #23, !srcloc !217
  %asmresult1.i = extractvalue { i64, i64 } %6, 1
  br label %if.end189

if.end189:                                        ; preds = %if.else185, %if.then179
  %_tmp.0 = phi i64 [ %conv184, %if.then179 ], [ %asmresult1.i, %if.else185 ]
  %prm_lock = getelementptr inbounds %struct.irdma_pble_prm, ptr %pprm, i32 0, i32 1
  %call197 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %prm_lock) #15
  %cmp201.not384 = icmp eq ptr %1, %pprm
  br i1 %cmp201.not384, label %if.end189.cleanup_crit_edge, label %while.body.lr.ph

if.end189.cleanup_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

while.body.lr.ph:                                 ; preds = %if.end189
  %conv203 = trunc i64 %_tmp.0 to i32
  br label %while.body

while.body:                                       ; preds = %if.end211.while.body_crit_edge, %while.body.lr.ph
  %chunk_entry.0385 = phi ptr [ %1, %while.body.lr.ph ], [ %14, %if.end211.while.body_crit_edge ]
  %bitmapbuf = getelementptr inbounds %struct.irdma_chunk, ptr %chunk_entry.0385, i32 0, i32 2
  %7 = ptrtoint ptr %bitmapbuf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bitmapbuf, align 4
  %sizeofbitmap = getelementptr inbounds %struct.irdma_chunk, ptr %chunk_entry.0385, i32 0, i32 3
  %9 = ptrtoint ptr %sizeofbitmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sizeofbitmap, align 8
  %call.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %8, i32 noundef %10, i32 noundef 0, i32 noundef %conv203, i32 noundef 0, i32 noundef 0) #15
  %11 = ptrtoint ptr %sizeofbitmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sizeofbitmap, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %12)
  %cmp208 = icmp ult i32 %call.i, %12
  br i1 %cmp208, label %while.body.while.end_crit_edge, label %if.end211

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

if.end211:                                        ; preds = %while.body
  %13 = ptrtoint ptr %chunk_entry.0385 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chunk_entry.0385, align 8
  %cmp201.not = icmp eq ptr %14, %pprm
  br i1 %cmp201.not, label %if.end211.while.end_crit_edge, label %if.end211.while.body_crit_edge

if.end211.while.body_crit_edge:                   ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body

if.end211.while.end_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.end

while.end:                                        ; preds = %if.end211.while.end_crit_edge, %while.body.while.end_crit_edge
  %bit_idx.1 = zext i32 %call.i to i64
  %tobool213.not = icmp eq ptr %chunk_entry.0385, null
  br i1 %tobool213.not, label %while.end.cleanup_crit_edge, label %lor.lhs.false

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

lor.lhs.false:                                    ; preds = %while.end
  %sizeofbitmap214 = getelementptr inbounds %struct.irdma_chunk, ptr %chunk_entry.0385, i32 0, i32 3
  %15 = ptrtoint ptr %sizeofbitmap214 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %sizeofbitmap214, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %16)
  %cmp216.not = icmp ult i32 %call.i, %16
  br i1 %cmp216.not, label %if.end220, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end220:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  %bitmapbuf221 = getelementptr inbounds %struct.irdma_chunk, ptr %chunk_entry.0385, i32 0, i32 2
  %17 = ptrtoint ptr %bitmapbuf221 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bitmapbuf221, align 4
  %conv223 = trunc i64 %_tmp.0 to i32
  tail call void @__bitmap_set(ptr noundef %18, i32 noundef %call.i, i32 noundef %conv223) #15
  %19 = ptrtoint ptr %pble_shift to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pble_shift, align 8
  %sh_prom226 = zext i8 %20 to i64
  %shl227 = shl i64 %bit_idx.1, %sh_prom226
  %conv228 = trunc i64 %shl227 to i32
  %vaddr229 = getelementptr inbounds %struct.irdma_chunk, ptr %chunk_entry.0385, i32 0, i32 5
  %21 = ptrtoint ptr %vaddr229 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vaddr229, align 8
  %add.ptr = getelementptr i8, ptr %22, i32 %conv228
  %23 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %add.ptr, ptr %vaddr, align 4
  %fpm_addr230 = getelementptr inbounds %struct.irdma_chunk, ptr %chunk_entry.0385, i32 0, i32 6
  %24 = ptrtoint ptr %fpm_addr230 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %fpm_addr230, align 8
  %conv231 = and i64 %shl227, 4294967295
  %add232 = add i64 %25, %conv231
  %26 = ptrtoint ptr %fpm_addr to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %add232, ptr %fpm_addr, align 8
  %27 = ptrtoint ptr %chunkinfo to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %chunk_entry.0385, ptr %chunkinfo, align 8
  %bit_idx234 = getelementptr inbounds %struct.irdma_pble_chunkinfo, ptr %chunkinfo, i32 0, i32 1
  %28 = ptrtoint ptr %bit_idx234 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %bit_idx.1, ptr %bit_idx234, align 8
  %bits_used = getelementptr inbounds %struct.irdma_pble_chunkinfo, ptr %chunkinfo, i32 0, i32 2
  %29 = ptrtoint ptr %bits_used to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %_tmp.0, ptr %bits_used, align 8
  %30 = load i8, ptr %pble_shift, align 8
  %conv237 = zext i8 %30 to i32
  %sub238 = add nsw i32 %conv237, -3
  %sh_prom239 = zext i32 %sub238 to i64
  %shl240 = shl i64 %_tmp.0, %sh_prom239
  %free_pble_cnt = getelementptr inbounds %struct.irdma_pble_prm, ptr %pprm, i32 0, i32 3
  %31 = ptrtoint ptr %free_pble_cnt to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %free_pble_cnt, align 8
  %sub241 = sub i64 %32, %shl240
  store i64 %sub241, ptr %free_pble_cnt, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end220, %lor.lhs.false.cleanup_crit_edge, %while.end.cleanup_crit_edge, %if.end189.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end220 ], [ -9, %if.end189.cleanup_crit_edge ], [ -9, %lor.lhs.false.cleanup_crit_edge ], [ -9, %while.end.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %prm_lock, i32 noundef %call197) #15
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_prm_return_pbles(ptr noundef %pprm, ptr nocapture noundef readonly %chunkinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %prm_lock = getelementptr inbounds %struct.irdma_pble_prm, ptr %pprm, i32 0, i32 1
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %prm_lock) #15
  %bits_used = getelementptr inbounds %struct.irdma_pble_chunkinfo, ptr %chunkinfo, i32 0, i32 2
  %0 = ptrtoint ptr %bits_used to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %bits_used, align 8
  %pble_shift = getelementptr inbounds %struct.irdma_pble_prm, ptr %pprm, i32 0, i32 4
  %2 = ptrtoint ptr %pble_shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pble_shift, align 8
  %conv5 = zext i8 %3 to i32
  %sub = add nsw i32 %conv5, -3
  %sh_prom = zext i32 %sub to i64
  %shl = shl i64 %1, %sh_prom
  %free_pble_cnt = getelementptr inbounds %struct.irdma_pble_prm, ptr %pprm, i32 0, i32 3
  %4 = ptrtoint ptr %free_pble_cnt to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %free_pble_cnt, align 8
  %add = add i64 %shl, %5
  store i64 %add, ptr %free_pble_cnt, align 8
  %6 = ptrtoint ptr %chunkinfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chunkinfo, align 8
  %bitmapbuf = getelementptr inbounds %struct.irdma_chunk, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bitmapbuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitmapbuf, align 4
  %bit_idx = getelementptr inbounds %struct.irdma_pble_chunkinfo, ptr %chunkinfo, i32 0, i32 1
  %10 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %bit_idx, align 8
  %conv6 = trunc i64 %11 to i32
  %12 = load i64, ptr %bits_used, align 8
  %conv8 = trunc i64 %12 to i32
  tail call void @__bitmap_clear(ptr noundef %9, i32 noundef %conv6, i32 noundef %conv8) #15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %prm_lock, i32 noundef %call2) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_map_vm_page_list(ptr nocapture noundef readonly %hw, ptr noundef %va, ptr nocapture noundef %pg_dma, i32 noundef %pg_cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pg_cnt)
  %cmp22.not = icmp eq i32 %pg_cnt, 0
  br i1 %cmp22.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %device = getelementptr inbounds %struct.irdma_hw, ptr %hw, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %for.body.lr.ph
  %addr.024 = phi ptr [ %va, %for.body.lr.ph ], [ %add.ptr, %if.end7.for.body_crit_edge ]
  %i.023 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end7.for.body_crit_edge ]
  %call = tail call ptr @vmalloc_to_page(ptr noundef %addr.024) #15
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.err_crit_edge, label %if.end

for.body.err_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end:                                           ; preds = %for.body
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %call1 = tail call i32 @dma_map_page_attrs(ptr noundef %1, ptr noundef nonnull %call, i32 noundef 0, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #15
  %arrayidx = getelementptr i32, ptr %pg_dma, i32 %i.023
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call1, ptr %arrayidx, align 4
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %4, i32 noundef %call1) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp.i.not = icmp eq i32 %call1, -1
  br i1 %cmp.i.not, label %if.end.err_crit_edge, label %if.end7

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end7:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %addr.024, i32 4096
  %inc = add nuw i32 %i.023, 1
  %exitcond.not = icmp eq i32 %inc, %pg_cnt
  br i1 %exitcond.not, label %if.end7.cleanup_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

err:                                              ; preds = %if.end.err_crit_edge, %for.body.err_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.023)
  %cmp3.not.i = icmp eq i32 %i.023, 0
  br i1 %cmp3.not.i, label %err.cleanup_crit_edge, label %err.for.body.i_crit_edge

err.for.body.i_crit_edge:                         ; preds = %err
  br label %for.body.i

err.cleanup_crit_edge:                            ; preds = %err
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %err.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %err.for.body.i_crit_edge ]
  %5 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device, align 4
  %arrayidx.i = getelementptr i32, ptr %pg_dma, i32 %i.04.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %6, i32 noundef %8, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #15
  %inc.i = add nuw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.023
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %err.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %err.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -9, %for.body.i.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_unmap_vm_page_list(ptr nocapture noundef readonly %hw, ptr nocapture noundef readonly %pg_dma, i32 noundef %pg_cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pg_cnt)
  %cmp3.not = icmp eq i32 %pg_cnt, 0
  br i1 %cmp3.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %device = getelementptr inbounds %struct.irdma_hw, ptr %hw, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.04 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %arrayidx = getelementptr i32, ptr %pg_dma, i32 %i.04
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %3, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #15
  %inc = add nuw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %pg_cnt
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_pble_free_paged_mem(ptr nocapture noundef %chunk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %pg_cnt = getelementptr inbounds %struct.irdma_chunk, ptr %chunk, i32 0, i32 7
  %0 = ptrtoint ptr %pg_cnt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pg_cnt, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.done_crit_edge, label %for.body.lr.ph.i

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

for.body.lr.ph.i:                                 ; preds = %entry
  %dev = getelementptr inbounds %struct.irdma_chunk, ptr %chunk, i32 0, i32 9
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %hw = getelementptr inbounds %struct.irdma_sc_dev, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hw, align 8
  %dmainfo = getelementptr inbounds %struct.irdma_chunk, ptr %chunk, i32 0, i32 1
  %6 = ptrtoint ptr %dmainfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmainfo, align 8
  %device.i = getelementptr inbounds %struct.irdma_hw, ptr %5, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.04.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i, align 4
  %arrayidx.i = getelementptr i32, ptr %7, i32 %i.04.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %11, i32 noundef 4096, i32 noundef 0, i32 noundef 0) #15
  %inc.i = add nuw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.body.i.done_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.body.i.done_crit_edge:                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %done

done:                                             ; preds = %for.body.i.done_crit_edge, %entry.done_crit_edge
  %dmainfo2 = getelementptr inbounds %struct.irdma_chunk, ptr %chunk, i32 0, i32 1
  %12 = ptrtoint ptr %dmainfo2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dmainfo2, align 8
  tail call void @kfree(ptr noundef %13) #15
  %14 = ptrtoint ptr %dmainfo2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %dmainfo2, align 8
  %vaddr = getelementptr inbounds %struct.irdma_chunk, ptr %chunk, i32 0, i32 5
  %15 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vaddr, align 8
  tail call void @vfree(ptr noundef %16) #15
  %17 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %vaddr, align 8
  %type = getelementptr inbounds %struct.irdma_chunk, ptr %chunk, i32 0, i32 8
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %type, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @irdma_pble_get_paged_mem(ptr nocapture noundef %chunk, i32 noundef %pg_cnt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl i32 %pg_cnt, 3
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %shl, i32 noundef 3520) #22
  %dmainfo = getelementptr inbounds %struct.irdma_chunk, ptr %chunk, i32 0, i32 1
  %0 = ptrtoint ptr %dmainfo to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call9.i.i, ptr %dmainfo, align 8
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %pg_cnt, 12
  %call3 = tail call noalias ptr @vmalloc(i32 noundef %mul) #22
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.err_crit_edge, label %if.end6

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %err

if.end6:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.irdma_chunk, ptr %chunk, i32 0, i32 9
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %hw = getelementptr inbounds %struct.irdma_sc_dev, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %hw, align 8
  %5 = ptrtoint ptr %dmainfo to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dmainfo, align 8
  %call9 = tail call i32 @irdma_map_vm_page_list(ptr noundef %4, ptr noundef nonnull %call3, ptr noundef %6, i32 noundef %pg_cnt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @vfree(ptr noundef nonnull %call3) #15
  br label %err

if.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  %vaddr = getelementptr inbounds %struct.irdma_chunk, ptr %chunk, i32 0, i32 5
  %7 = ptrtoint ptr %vaddr to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %vaddr, align 8
  %conv = zext i32 %mul to i64
  %size13 = getelementptr inbounds %struct.irdma_chunk, ptr %chunk, i32 0, i32 4
  %8 = ptrtoint ptr %size13 to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv, ptr %size13, align 8
  %pg_cnt14 = getelementptr inbounds %struct.irdma_chunk, ptr %chunk, i32 0, i32 7
  %9 = ptrtoint ptr %pg_cnt14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %pg_cnt, ptr %pg_cnt14, align 8
  %type = getelementptr inbounds %struct.irdma_chunk, ptr %chunk, i32 0, i32 8
  %10 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %type, align 4
  br label %cleanup

err:                                              ; preds = %if.then11, %if.end.err_crit_edge
  %11 = ptrtoint ptr %dmainfo to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dmainfo, align 8
  tail call void @kfree(ptr noundef %12) #15
  %13 = ptrtoint ptr %dmainfo to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %dmainfo, align 8
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -9, %err ], [ 0, %if.end12 ], [ -9, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @irdma_alloc_ws_node_id(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %allocated_ws_nodes = getelementptr i8, ptr %dev, i32 -36
  %0 = ptrtoint ptr %allocated_ws_nodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %allocated_ws_nodes, align 4
  %max_ws_node_id = getelementptr i8, ptr %dev, i32 -44
  %2 = ptrtoint ptr %max_ws_node_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_ws_node_id, align 4
  %rsrc_lock.i = getelementptr i8, ptr %dev, i32 23360
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #15
  %call5.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %1, i32 noundef %3, i32 noundef 1) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %3)
  %cmp6.not.i = icmp ult i32 %call5.i, %3
  br i1 %cmp6.not.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then.i:                                        ; preds = %entry
  %call8.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %1, i32 noundef %3) #15
  call void @__sanitizer_cov_trace_cmp4(i32 %call8.i, i32 %3)
  %cmp9.not.i = icmp ult i32 %call8.i, %3
  br i1 %cmp9.not.i, label %if.then.i.if.end_crit_edge, label %if.then11.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.then11.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #15
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irdma_alloc_ws_node_id, %if.then18.i)) #15
          to label %cleanup [label %if.then18.i], !srcloc !198

if.then18.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #17
  %iwdev.i = getelementptr i8, ptr %dev, i32 24968
  %4 = ptrtoint ptr %iwdev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iwdev.i, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_ibdev_dbg(ptr noundef nonnull @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, ptr noundef %5, ptr noundef nonnull @.str.23, i32 noundef %call8.i) #15
  br label %cleanup

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %entry.if.end_crit_edge
  %rsrc_num.0.i = phi i32 [ %call8.i, %if.then.i.if.end_crit_edge ], [ %call5.i, %entry.if.end_crit_edge ]
  %rem.i.i = and i32 %rsrc_num.0.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %rsrc_num.0.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %1, i32 %div2.i.i
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %7
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #15
  %conv = trunc i32 %rsrc_num.0.i to i16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then18.i, %if.then11.i
  %retval.0 = phi i16 [ %conv, %if.end ], [ -1, %if.then11.i ], [ -1, %if.then18.i ]
  ret i16 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_free_ws_node_id(ptr noundef %dev, i16 noundef zeroext %node_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %allocated_ws_nodes = getelementptr i8, ptr %dev, i32 -36
  %0 = ptrtoint ptr %allocated_ws_nodes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %allocated_ws_nodes, align 4
  %conv = zext i16 %node_id to i32
  %rsrc_lock.i = getelementptr i8, ptr %dev, i32 23360
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rsrc_lock.i) #15
  %rem.i.i = and i32 %conv, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv, 5
  %add.ptr.i.i = getelementptr i32, ptr %1, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %3, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rsrc_lock.i, i32 noundef %call2.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_modify_qp_to_err(ptr nocapture noundef readonly %sc_qp) local_unnamed_addr #0 align 64 {
entry:
  %attr = alloca %struct.ib_qp_attr, align 8
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %back_qp = getelementptr inbounds %struct.irdma_qp_uk, ptr %sc_qp, i32 0, i32 28
  %0 = ptrtoint ptr %back_qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %back_qp, align 8
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %attr) #15
  %2 = call ptr @memset(ptr %attr, i32 255, i32 216)
  %iwdev = getelementptr inbounds %struct.irdma_qp, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %iwdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %iwdev, align 8
  %rf = getelementptr inbounds %struct.irdma_device, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %rf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rf, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %6, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %attr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 6, ptr %attr, align 8
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 8
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %12, i32 1, i32 1, i32 2
  %13 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %14, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.else, label %if.then1

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call3 = call i32 @irdma_modify_qp_roce(ptr noundef %1, ptr noundef nonnull %attr, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call5 = call i32 @irdma_modify_qp(ptr noundef %1, ptr noundef nonnull %attr, i32 noundef 1, ptr noundef null) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then1, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %attr) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_modify_qp_roce(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irdma_modify_qp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @irdma_ib_qp_event(ptr noundef %iwqp, i32 noundef %event) local_unnamed_addr #0 align 64 {
entry:
  %ibevent = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ibevent) #15
  %0 = getelementptr inbounds %struct.ib_event, ptr %ibevent, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_event, ptr %ibevent, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !205
  %event_handler = getelementptr inbounds %struct.ib_qp, ptr %iwqp, i32 0, i32 15
  %3 = ptrtoint ptr %event_handler to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %event_handler, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %event, label %if.end.sw.epilog_crit_edge [
    i32 0, label %if.end.sw.epilog.sink.split_crit_edge
    i32 1, label %sw.bb2
  ]

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.sink.split

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb2, %if.end.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 3, %sw.bb2 ], [ 1, %if.end.sw.epilog.sink.split_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %1, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %7 = ptrtoint ptr %iwqp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %iwqp, align 8
  %9 = ptrtoint ptr %ibevent to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %ibevent, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %iwqp, ptr %0, align 4
  %qp_context = getelementptr inbounds %struct.ib_qp, ptr %iwqp, i32 0, i32 16
  %11 = ptrtoint ptr %qp_context to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %qp_context, align 8
  call void %4(ptr noundef nonnull %ibevent, ptr noundef %12) #15
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ibevent) #15
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @irdma_cq_empty(ptr nocapture noundef readonly %iwcq) local_unnamed_addr #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %sc_cq = getelementptr inbounds %struct.irdma_cq, ptr %iwcq, i32 0, i32 1
  %0 = ptrtoint ptr %sc_cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sc_cq, align 4
  %cq_ring = getelementptr inbounds %struct.irdma_cq, ptr %iwcq, i32 0, i32 1, i32 0, i32 6
  %2 = ptrtoint ptr %cq_ring to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cq_ring, align 4
  %arrayidx.i = getelementptr %struct.irdma_cqe, ptr %1, i32 %3, i32 0, i32 3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx.i, align 8
  %6 = trunc i64 %5 to i32
  %7 = lshr i32 %6, 7
  %conv = and i32 %7, 1
  %polarity14 = getelementptr inbounds %struct.irdma_cq, ptr %iwcq, i32 0, i32 1, i32 0, i32 7
  %8 = ptrtoint ptr %polarity14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %polarity14, align 4
  %conv15 = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv15)
  %cmp = icmp ne i32 %conv, %conv15
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dispatch_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vlan_dev_real_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

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
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_cqp_ce_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_check_cqp_progress(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sc_vsi_update_stats(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_add_conn_est_qh(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irdma_ieq_process_fpdus(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind readonly }
attributes #12 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { nobuiltin }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nounwind allocsize(0) }
attributes #23 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29, !30, !32, !33, !34, !36, !38, !39, !41, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54, !56, !57, !58, !59, !61, !62, !63, !65, !66, !68, !69, !71, !73, !75, !76, !77, !79, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !187}
!llvm.named.register.sp = !{!188}
!llvm.module.flags = !{!189, !190, !191, !192, !193, !194, !195, !196}
!llvm.ident = !{!197}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 164, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @irdma_inetaddr_event.__UNIQUE_ID_ddebug681, !1, !"__UNIQUE_ID_ddebug681", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 210, i32 2}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @irdma_inet6addr_event.__UNIQUE_ID_ddebug682, !7, !"__UNIQUE_ID_ddebug682", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 269, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @irdma_net_event.__UNIQUE_ID_ddebug683, !11, !"__UNIQUE_ID_ddebug683", i1 false, i1 false}
!14 = !{ptr @irdma_alloc_and_get_cqp_request.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 438, i32 5}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 442, i32 3}
!19 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @irdma_alloc_and_get_cqp_request.__UNIQUE_ID_ddebug696, !18, !"__UNIQUE_ID_ddebug696", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 667, i32 4}
!23 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @irdma_cqp_crit_err.__UNIQUE_ID_ddebug697, !22, !"__UNIQUE_ID_ddebug697", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 713, i32 6}
!27 = !{ptr @irdma_terminate_start_timer.__key, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 916, i32 2}
!29 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 1310, i32 2}
!32 = !{ptr @.str.16, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @irdma_ieq_mpa_crc_ae.__UNIQUE_ID_ddebug698, !31, !"__UNIQUE_ID_ddebug698", i1 false, i1 false}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 1325, i32 27}
!36 = !{ptr @irdma_hw_stats_start_timer.__key, !37, !"__key", i1 false, i1 false}
!37 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 1650, i32 2}
!38 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 2039, i32 3}
!41 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @irdma_cqp_ws_node_cmd.__UNIQUE_ID_ddebug700, !40, !"__UNIQUE_ID_ddebug700", i1 false, i1 false}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/infiniband/hw/irdma/main.h", i32 428, i32 4}
!45 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @irdma_alloc_rsrc.__UNIQUE_ID_ddebug680, !44, !"__UNIQUE_ID_ddebug680", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 378, i32 2}
!50 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!51 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!52 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 388, i32 4}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 389, i32 5}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @irdma_add_ipv4_addr.__UNIQUE_ID_ddebug695, !55, !"__UNIQUE_ID_ddebug695", i1 false, i1 false}
!58 = distinct !{null, !52, !"__warned", i1 false, i1 false}
!59 = distinct !{null, !60, !"__warned", i1 false, i1 false}
!60 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!61 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!68 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!69 = distinct !{null, !70, !"__warned", i1 false, i1 false}
!70 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 337, i32 2}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 344, i32 30}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 349, i32 5}
!75 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @irdma_add_ipv6_addr.__UNIQUE_ID_ddebug687, !74, !"__UNIQUE_ID_ddebug687", i1 false, i1 false}
!77 = distinct !{null, !78, !"__warned", i1 false, i1 false}
!78 = !{!"../include/net/addrconf.h", i32 313, i32 9}
!79 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 646, i32 19}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 647, i32 19}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 648, i32 19}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 649, i32 19}
!88 = !{ptr @irdma_noncrit_err_list, !89, !"irdma_noncrit_err_list", i1 false, i1 false}
!89 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 645, i32 40}
!90 = !{ptr @.str.42, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 597, i32 27}
!92 = !{ptr @.str.43, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 598, i32 27}
!94 = !{ptr @.str.44, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 599, i32 38}
!96 = !{ptr @.str.45, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 600, i32 34}
!98 = !{ptr @.str.46, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 601, i32 26}
!100 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 602, i32 26}
!102 = !{ptr @.str.48, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 603, i32 40}
!104 = !{ptr @.str.49, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 604, i32 25}
!106 = !{ptr @.str.50, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 605, i32 33}
!108 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 606, i32 25}
!110 = !{ptr @.str.52, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 607, i32 26}
!112 = !{ptr @.str.53, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 608, i32 25}
!114 = !{ptr @.str.54, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 609, i32 26}
!116 = !{ptr @.str.55, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 610, i32 26}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 611, i32 33}
!120 = !{ptr @.str.57, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 612, i32 28}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 613, i32 24}
!124 = !{ptr @.str.59, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 614, i32 29}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 615, i32 35}
!128 = !{ptr @.str.61, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 616, i32 32}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 617, i32 29}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 618, i32 40}
!134 = !{ptr @.str.64, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 619, i32 23}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 620, i32 22}
!138 = !{ptr @.str.66, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 621, i32 33}
!140 = !{ptr @.str.67, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 622, i32 29}
!142 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 623, i32 30}
!144 = !{ptr @.str.69, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 624, i32 25}
!146 = !{ptr @.str.70, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 625, i32 25}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 626, i32 26}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 627, i32 25}
!152 = !{ptr @.str.73, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 628, i32 26}
!154 = !{ptr @.str.74, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 629, i32 25}
!156 = !{ptr @.str.75, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 630, i32 30}
!158 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 631, i32 26}
!160 = !{ptr @.str.77, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 632, i32 28}
!162 = !{ptr @.str.78, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 633, i32 27}
!164 = !{ptr @.str.79, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 634, i32 30}
!166 = !{ptr @.str.80, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 635, i32 30}
!168 = !{ptr @.str.81, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 636, i32 26}
!170 = !{ptr @.str.82, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 637, i32 22}
!172 = !{ptr @.str.83, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 638, i32 35}
!174 = !{ptr @.str.84, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 639, i32 37}
!176 = !{ptr @.str.85, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 640, i32 35}
!178 = !{ptr @.str.86, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 641, i32 38}
!180 = !{ptr @.str.87, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 642, i32 25}
!182 = !{ptr @irdma_cqp_cmd_names, !183, !"irdma_cqp_cmd_names", i1 false, i1 false}
!183 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 596, i32 26}
!184 = !{ptr @.str.88, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/infiniband/hw/irdma/utils.c", i32 1563, i32 3}
!186 = !{ptr @.str.89, !185, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @irdma_gen1_puda_get_tcpip_info.__UNIQUE_ID_ddebug699, !185, !"__UNIQUE_ID_ddebug699", i1 false, i1 false}
!188 = !{!"sp"}
!189 = !{i32 1, !"wchar_size", i32 2}
!190 = !{i32 1, !"min_enum_size", i32 4}
!191 = !{i32 8, !"branch-target-enforcement", i32 0}
!192 = !{i32 8, !"sign-return-address", i32 0}
!193 = !{i32 8, !"sign-return-address-all", i32 0}
!194 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!195 = !{i32 7, !"uwtable", i32 1}
!196 = !{i32 7, !"frame-pointer", i32 2}
!197 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!198 = !{i64 2148913300, i64 2148913305, i64 2148913318, i64 2148913362, i64 2148913396, i64 2148913417}
!199 = !{i64 2160282307}
!200 = !{i64 6106709}
!201 = !{i64 6107127}
!202 = !{i64 2160283137}
!203 = !{i64 2159238111}
!204 = !{i64 2159238549}
!205 = !{!"auto-init"}
!206 = !{i64 2149728122}
!207 = !{i64 2149728388}
!208 = !{i64 2148521016}
!209 = !{i64 2148435480, i64 2148435512, i64 2148435541, i64 2148435575, i64 2148435606, i64 2148435629}
!210 = !{!"branch_weights", i32 2000, i32 1}
!211 = !{i64 2150602669}
!212 = !{i64 2148433015, i64 2148433047, i64 2148433076, i64 2148433110, i64 2148433141, i64 2148433164}
!213 = !{!"branch_weights", i32 1, i32 2000}
!214 = !{i8 0, i8 2}
!215 = !{i64 2148431485, i64 2148431511, i64 2148431540, i64 2148431574, i64 2148431605, i64 2148431628}
!216 = !{i64 2148433950, i64 2148433976, i64 2148434005, i64 2148434039, i64 2148434070, i64 2148434093}
!217 = !{i64 2148822019, i64 2148822299, i64 2148822633, i64 2148822967}
