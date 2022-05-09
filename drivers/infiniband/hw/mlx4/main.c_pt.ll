; ModuleID = '/llk/IR_all_yes/drivers/infiniband/hw/mlx4/main.c_pt.bc'
source_filename = "../drivers/infiniband/hw/mlx4/main.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.125 }
%union.anon.125 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mlx4_interface = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.diag_counter = type { ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.mlx4_ib_dev = type { %struct.ib_device, ptr, i32, ptr, %struct.mlx4_uar, i32, %struct.spinlock, [2 x [2 x ptr]], [2 x ptr], %struct.spinlock, [2 x %struct.atomic64_t], %struct.mlx4_ib_sriov, %struct.mutex, i8, %struct.mlx4_ib_iboe, [2 x %struct.mlx4_ib_counters], ptr, ptr, ptr, [128 x ptr], [2 x %struct.mlx4_ib_iov_port], %struct.pkey_mgt, ptr, i32, i32, i32, [2 x ptr], [2 x %struct.mutex], i8, %struct.spinlock, %struct.list_head, [2 x %struct.mlx4_ib_diag_counters] }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.175, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.callback_head = type { ptr, ptr }
%union.anon.175 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.166 }
%struct.anon.166 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mlx4_uar = type { i32, i32, %struct.list_head, i32, ptr, ptr }
%struct.atomic64_t = type { i64 }
%struct.mlx4_ib_sriov = type { [2 x %struct.mlx4_ib_demux_ctx], [2 x ptr], %struct.spinlock, i32, %struct.mlx4_sriov_alias_guid, %struct.xarray, i32, %struct.spinlock, %struct.rb_root, %struct.list_head, %struct.xarray }
%struct.mlx4_ib_demux_ctx = type { ptr, i32, ptr, ptr, ptr, %struct.spinlock, %struct.atomic64_t, [128 x i64], ptr, %struct.mutex, %struct.rb_root, %struct.list_head, ptr, ptr, %struct.atomic_t, i32 }
%struct.mlx4_sriov_alias_guid = type { [2 x %struct.mlx4_sriov_alias_guid_port_rec_det], %struct.spinlock, ptr }
%struct.mlx4_sriov_alias_guid_port_rec_det = type { [16 x %struct.mlx4_sriov_alias_guid_info_rec_det], ptr, %struct.delayed_work, i32, i32, ptr, %struct.list_head }
%struct.mlx4_sriov_alias_guid_info_rec_det = type { [64 x i8], i64, i32, [8 x i32], i64 }
%struct.mlx4_ib_iboe = type { %struct.spinlock, [2 x ptr], [2 x %struct.atomic64_t], %struct.notifier_block, [2 x %struct.mlx4_port_gid_table], [2 x i32] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.mlx4_port_gid_table = type { [128 x %struct.gid_entry] }
%struct.gid_entry = type { %union.ib_gid, i32, ptr, i16 }
%union.ib_gid = type { %struct.anon.162 }
%struct.anon.162 = type { i64, i64 }
%struct.mlx4_ib_counters = type { %struct.list_head, %struct.mutex, i32 }
%struct.mlx4_ib_iov_port = type { [100 x i8], i8, ptr, %struct.list_head, ptr, %struct.ib_port_attr, ptr, ptr, ptr, ptr, ptr, %struct.mlx4_ib_iov_sysfs_attr }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.mlx4_ib_iov_sysfs_attr = type { ptr, ptr, i32, i32, [15 x i8], %struct.device_attribute, ptr }
%struct.pkey_mgt = type { [128 x [2 x [128 x i8]]], [2 x [128 x i16]], [128 x %struct.list_head], [128 x ptr] }
%struct.mlx4_ib_diag_counters = type { ptr, ptr, i32 }
%struct.ib_gid_attr = type { ptr, ptr, %union.ib_gid, i32, i16, i32 }
%struct.mlx4_dev = type { ptr, i32, i32, %struct.mlx4_caps, %struct.mlx4_phys_caps, %struct.mlx4_quotas, %struct.xarray, i8, i8, [64 x i8], i32, i32, [3 x i64], [3 x i64], ptr, i8 }
%struct.mlx4_caps = type { i64, i32, i32, [3 x i32], [3 x i32], [3 x i32], [3 x i64], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i32], [3 x i64], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i16, [3 x i8], i32, i32, [5 x i32], i32, [5 x i32], i32, i32, [3 x i32], [3 x i8], [3 x i8], [3 x i8], [3 x i32], [3 x i32], i32, [3 x i8], i16, i32, i32, i8, i32, i32, i16, [3 x i64], i32, [3 x i8], [3 x i8], i8, i32, i32, i32, [3 x i8], %struct.mlx4_rate_limit_caps, i32, i8 }
%struct.mlx4_rate_limit_caps = type { i16, i8, i16, i8, i16 }
%struct.mlx4_phys_caps = type { [3 x i32], [3 x i32], i32, i32, i32, i32 }
%struct.mlx4_quotas = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.ib_port_data = type { ptr, %struct.ib_port_immutable, %struct.spinlock, %struct.spinlock, %struct.list_head, %struct.ib_port_cache, ptr, %struct.hlist_node, %struct.rdma_port_counter, ptr }
%struct.ib_port_immutable = type { i32, i32, i32, i32 }
%struct.ib_port_cache = type { i64, ptr, ptr, i8, i32 }
%struct.rdma_port_counter = type { %struct.rdma_counter_mode, ptr, i32, %struct.mutex }
%struct.rdma_counter_mode = type { i32, i32, %struct.auto_mode_param }
%struct.auto_mode_param = type { i32 }
%struct.ib_smp = type { i8, i8, i8, i8, i16, i8, i8, i64, i16, i16, i32, i64, i16, i16, [28 x i8], [64 x i8], [64 x i8], [64 x i8] }
%struct.mlx4_cmd_mailbox = type { ptr, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.152, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.152 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.mlx4_ib_qp = type { %union.anon.178, %struct.mlx4_qp, %struct.mlx4_buf, %struct.mlx4_db, %struct.mlx4_ib_wq, i32, i32, i32, i32, %struct.mlx4_ib_wq, i32, ptr, %struct.mlx4_mtt, i32, %struct.mutex, i16, i32, i8, i8, i8, i8, i8, i8, i32, i32, %struct.list_head, %struct.list_head, ptr, %struct.mlx4_roce_smac_vlan_info, %struct.mlx4_roce_smac_vlan_info, i64, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, i32, %union.anon.180 }
%union.anon.178 = type { %struct.ib_qp }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.mlx4_qp = type { ptr, i32, %struct.refcount_struct, %struct.completion, i8 }
%struct.mlx4_buf = type { %struct.mlx4_buf_list, ptr, i32, i32, i32 }
%struct.mlx4_buf_list = type { ptr, i32 }
%struct.mlx4_db = type { ptr, %union.anon.179, i32, i32, i32 }
%union.anon.179 = type { ptr }
%struct.mlx4_ib_wq = type { ptr, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32 }
%struct.mlx4_mtt = type { i32, i32, i32 }
%struct.mlx4_roce_smac_vlan_info = type { i64, i32, i32, i64, i32, i32, i16, i32, i32, i16, i32, i32, i32 }
%union.anon.180 = type { ptr }
%struct.ib_flow_attr = type { i32, i16, i16, i32, i8, i32, [0 x %union.ib_flow_spec] }
%union.ib_flow_spec = type { %struct.ib_flow_spec_ipv6 }
%struct.ib_flow_spec_ipv6 = type { i32, i16, %struct.ib_flow_ipv6_filter, %struct.ib_flow_ipv6_filter }
%struct.ib_flow_ipv6_filter = type { [16 x i8], [16 x i8], i32, i8, i8, i8, [0 x i8] }
%struct.ib_flow_spec_ib = type { i32, i16, %struct.ib_flow_ib_filter, %struct.ib_flow_ib_filter }
%struct.ib_flow_ib_filter = type { i16, i8, [0 x i8] }
%struct.mlx4_net_trans_rule_hw_ctrl = type { i16, i8, i8, i8, i8, i8, i8, i32, i32 }
%struct.anon.172 = type { i32, i16 }
%struct.default_rules = type { [10 x i32], [10 x i32], [10 x i32], i8 }
%struct.ib_event_work = type { %struct.work_struct, ptr, %struct.mlx4_eqe, i32 }
%struct.mlx4_eqe = type { i8, i8, i8, i8, %union.anon.181, i8, [2 x i8], i8 }
%union.anon.181 = type { [6 x i32] }
%struct.ib_flow_spec_eth = type { i32, i16, %struct.ib_flow_eth_filter, %struct.ib_flow_eth_filter }
%struct.ib_flow_eth_filter = type { [6 x i8], [6 x i8], i16, i16, [0 x i8] }
%struct.mlx4_net_trans_rule_hw_eth = type { i8, i8, i16, [6 x i8], [6 x i8], i16, [6 x i8], i16, [6 x i8], i16, [6 x i8], i8, i8, i16, i16, i16 }
%struct.mlx4_net_trans_rule_hw_ib = type { i8, i8, i16, i32, i32, i32, [16 x i8], [16 x i8] }
%struct.ib_flow_spec_ipv4 = type { i32, i16, %struct.ib_flow_ipv4_filter, %struct.ib_flow_ipv4_filter }
%struct.ib_flow_ipv4_filter = type { i32, i32, i8, i8, i8, i8, [0 x i8] }
%struct.mlx4_net_trans_rule_hw_ipv4 = type { i8, i8, i16, i32, i32, i32, i32, i32 }
%struct.ib_flow_spec_tcp_udp = type { i32, i16, %struct.ib_flow_tcp_udp_filter, %struct.ib_flow_tcp_udp_filter }
%struct.ib_flow_tcp_udp_filter = type { i16, i16, [0 x i8] }
%struct.mlx4_net_trans_rule_hw_tcp_udp = type { i8, i8, i16, [3 x i16], i16, i16, i16, i16, i16, i16, i16 }
%struct.anon.199 = type { i8, i8, i16 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.176, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.176 = type { ptr }
%struct.counter_index = type { %struct.list_head, i32, i8 }
%struct.ib_event = type { ptr, %union.anon.155, i32 }
%union.anon.155 = type { ptr }
%struct.mlx4_ib_cq = type { %struct.ib_cq, %struct.mlx4_cq, %struct.mlx4_ib_cq_buf, ptr, %struct.mlx4_db, %struct.spinlock, %struct.mutex, ptr, ptr, i32, %struct.list_head, %struct.list_head }
%struct.ib_cq = type { ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, i32, ptr, %struct.list_head, %union.anon.161, ptr, ptr, i64, i8, i32, %struct.rdma_restrack_entry }
%union.anon.161 = type { %struct.work_struct }
%struct.mlx4_cq = type { ptr, ptr, ptr, i32, i16, ptr, ptr, i32, i32, i32, %struct.refcount_struct, %struct.completion, %struct.anon.201, i32, %struct.list_head, i8 }
%struct.anon.201 = type { %struct.list_head, ptr, ptr }
%struct.mlx4_ib_cq_buf = type { %struct.mlx4_buf, %struct.mlx4_mtt, i32 }
%struct.rdma_stat_desc = type { ptr, i32, ptr }
%struct.mlx4_update_qp_params = type { i8, i8, i32, i16, i16 }
%struct.mlx4_dev_persistent = type { ptr, ptr, [3 x i32], i32, [3 x i32], [3 x i32], %struct.work_struct, ptr, %struct.mutex, i8, %struct.mutex, i8, %struct.mutex, i32, %struct.mlx4_fw_crdump }
%struct.mlx4_fw_crdump = type { i8, ptr, ptr }
%struct.mlx4_active_ports = type { [1 x i32] }
%struct.mlx4_ib_demux_work = type { %struct.work_struct, ptr, i32, i32, i8 }
%struct.mlx4_uverbs_ex_query_device = type { i32, i32 }
%struct.mlx4_uverbs_ex_query_device_resp = type { i32, i32, i64, i32, i32, %struct.mlx4_ib_rss_caps, %struct.mlx4_ib_tso_caps }
%struct.mlx4_ib_rss_caps = type { i64, i8, [7 x i8] }
%struct.mlx4_ib_tso_caps = type { i32, i32 }
%struct.mlx4_clock_params = type { i64, i8, i8 }
%struct.ib_udata = type { ptr, ptr, i32, i32 }
%struct.ib_device_modify = type { i64, [64 x i8] }
%struct.ib_port_modify = type { i32, i32, i8 }
%struct.gid_cache_context = type { i32, i32 }
%struct.mlx4_ib_alloc_ucontext_resp_v3 = type { i32, i16, i16 }
%struct.mlx4_ib_alloc_ucontext_resp = type { i32, i32, i16, i16, i32 }
%struct.mlx4_ib_ucontext = type { %struct.ib_ucontext, %struct.mlx4_uar, %struct.list_head, %struct.mutex, %struct.list_head, %struct.mutex }
%struct.ib_ucontext = type { ptr, ptr, %struct.ib_rdmacg_object, %struct.rdma_restrack_entry, %struct.xarray }
%struct.ib_rdmacg_object = type { ptr }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.11, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.11 = type { %struct.anon.12 }
%struct.anon.12 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.ib_pd = type { i32, i32, ptr, ptr, %struct.atomic_t, i32, ptr, %struct.rdma_restrack_entry }
%struct.mlx4_ib_pd = type { %struct.ib_pd, i32 }
%struct.mlx4_flow_reg_id = type { i64, i64 }
%struct.mlx4_ib_gid_entry = type { %struct.list_head, %union.ib_gid, i32, i8 }
%struct.mlx4_ib_steering = type { %struct.list_head, %struct.mlx4_flow_reg_id, %union.ib_gid }
%struct.anon.200 = type { %union.ib_gid, [2 x i32], i16, i8, i8, i32 }
%struct.ib_cq_init_attr = type { i32, i32, i32 }
%struct.mlx4_ib_xrcd = type { %struct.ib_xrcd, i32, ptr, ptr }
%struct.ib_xrcd = type { ptr, %struct.atomic_t, ptr, %struct.rw_semaphore, %struct.xarray }
%struct.mlx4_ib_flow = type { %struct.ib_flow, [2 x %struct.mlx4_flow_reg_id] }
%struct.ib_flow = type { ptr, ptr, ptr }
%struct.rdma_hw_stats = type { %struct.mutex, i32, i32, ptr, ptr, i32, [0 x i64] }

@__UNIQUE_ID_author528 = internal constant [29 x i8] c"mlx4_ib.author=Roland Dreier\00", section ".modinfo", align 1
@__UNIQUE_ID_description529 = internal constant [60 x i8] c"mlx4_ib.description=Mellanox ConnectX HCA InfiniBand driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file530 = internal constant [48 x i8] c"mlx4_ib.file=drivers/infiniband/hw/mlx4/mlx4_ib\00", section ".modinfo", align 1
@__UNIQUE_ID_license531 = internal constant [29 x i8] c"mlx4_ib.license=Dual BSD/GPL\00", section ".modinfo", align 1
@mlx4_ib_sm_guid_assign = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_str_sm_guid_assign = internal constant [23 x i8] c"mlx4_ib.sm_guid_assign\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_sm_guid_assign = internal constant %struct.kernel_param { ptr @__param_str_sm_guid_assign, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.125 { ptr @mlx4_ib_sm_guid_assign } }, section "__param", align 4
@__UNIQUE_ID_sm_guid_assigntype532 = internal constant [36 x i8] c"mlx4_ib.parmtype=sm_guid_assign:int\00", section ".modinfo", align 1
@__UNIQUE_ID_sm_guid_assign533 = internal constant [95 x i8] c"mlx4_ib.parm=sm_guid_assign:Enable SM alias_GUID assignment if sm_guid_assign > 0 (Default: 0)\00", section ".modinfo", align 1
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/infiniband/hw/mlx4/main.c\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"qpn = %u, steer_qpn_base = %u\0A\00", [33 x i8] zeroinitializer }, align 32
@mlx4_ib_sl2vl_update._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 3152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013<mlx4_ib> %s: Unable to get current sl to vl mapping for port %d.  Using all zeroes (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mlx4_ib_sl2vl_update\00", [43 x i8] zeroinitializer }, align 32
@mlx4_ib_sl2vl_update._entry_ptr = internal global ptr @mlx4_ib_sl2vl_update._entry, section ".printk_index", align 4
@mlx4_sched_ib_sl2vl_update_work.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&ew->work)\00", [35 x i8] zeroinitializer }, align 32
@wq = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mlx4_ib_interface = internal global { %struct.mlx4_interface, [60 x i8] } { %struct.mlx4_interface { ptr @mlx4_ib_add, ptr @mlx4_ib_remove, ptr @mlx4_ib_event, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0, i32 1 }, [60 x i8] zeroinitializer }, align 32
@__initcall__kmod_mlx4_ib__540_3335_mlx4_ib_init6 = internal global ptr @mlx4_ib_init, section ".initcall6.init", align 4
@__exitcall_mlx4_ib_cleanup = internal global ptr @mlx4_ib_cleanup, section ".exitcall.exit", align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__mlx4_ib_create_flow._entry = internal constant %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 1531, ptr null, ptr null }, align 1
@.str.8 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013<mlx4_ib> %s: Invalid priority value %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"__mlx4_ib_create_flow\00", [42 x i8] zeroinitializer }, align 32
@__mlx4_ib_create_flow._entry_ptr = internal global ptr @__mlx4_ib_create_flow._entry, section ".printk_index", align 4
@__mlx4_ib_create_flow._entry.10 = internal constant %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str, i32 1587, ptr null, ptr null }, align 1
@.str.11 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013<mlx4_ib> %s: mcg table is full. Fail to register network rule.\0A\00", [61 x i8] zeroinitializer }, align 32
@__mlx4_ib_create_flow._entry_ptr.12 = internal global ptr @__mlx4_ib_create_flow._entry.10, section ".printk_index", align 4
@__mlx4_ib_create_flow._entry.13 = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str, i32 1589, ptr null, ptr null }, align 1
@.str.14 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\013<mlx4_ib> %s: Device managed flow steering is disabled. Fail to register network rule.\0A\00", [38 x i8] zeroinitializer }, align 32
@__mlx4_ib_create_flow._entry_ptr.15 = internal global ptr @__mlx4_ib_create_flow._entry.13, section ".printk_index", align 4
@__mlx4_ib_create_flow._entry.16 = internal constant %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str, i32 1591, ptr null, ptr null }, align 1
@.str.17 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"\013<mlx4_ib> %s: Invalid argument. Fail to register network rule.\0A\00", [62 x i8] zeroinitializer }, align 32
@__mlx4_ib_create_flow._entry_ptr.18 = internal global ptr @__mlx4_ib_create_flow._entry.16, section ".printk_index", align 4
@__const.__mlx4_ib_create_default_rules.ib_spec = private unnamed_addr constant { { i32, i16, [2 x i8] }, [80 x i8] } { { i32, i16, [2 x i8] } zeroinitializer, [80 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF" }, align 4
@__mlx4_ib_create_default_rules._entry = internal constant %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 1507, ptr null, ptr null }, align 1
@.str.19 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016<mlx4_ib> %s: invalid parsing\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"__mlx4_ib_create_default_rules\00", [33 x i8] zeroinitializer }, align 32
@__mlx4_ib_create_default_rules._entry_ptr = internal global ptr @__mlx4_ib_create_default_rules._entry, section ".printk_index", align 4
@default_table = internal constant { [1 x { <{ i32, [9 x i32] }>, <{ i32, [9 x i32] }>, <{ i32, [9 x i32] }>, i8, [3 x i8] }], [36 x i8] } { [1 x { <{ i32, [9 x i32] }>, <{ i32, [9 x i32] }>, <{ i32, [9 x i32] }>, i8, [3 x i8] }] [{ <{ i32, [9 x i32] }>, <{ i32, [9 x i32] }>, <{ i32, [9 x i32] }>, i8, [3 x i8] } { <{ i32, [9 x i32] }> <{ i32 48, [9 x i32] zeroinitializer }>, <{ i32, [9 x i32] }> <{ i32 32, [9 x i32] zeroinitializer }>, <{ i32, [9 x i32] }> <{ i32 34, [9 x i32] zeroinitializer }>, i8 1, [3 x i8] undef }], [36 x i8] zeroinitializer }, align 32
@__mlx4_ib_destroy_flow._entry = internal constant %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str, i32 1605, ptr null, ptr null }, align 1
@.str.22 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\013<mlx4_ib> %s: Fail to detach network rule. registration id = 0x%llx\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"__mlx4_ib_destroy_flow\00", [41 x i8] zeroinitializer }, align 32
@__mlx4_ib_destroy_flow._entry_ptr = internal global ptr @__mlx4_ib_destroy_flow._entry, section ".printk_index", align 4
@mlx4_ib_add.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@mlx4_ib_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str, i32 2630, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016<mlx4_ib> %s: %s\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mlx4_ib_add\00", [20 x i8] zeroinitializer }, align 32
@mlx4_ib_add._entry_ptr = internal global ptr @mlx4_ib_add._entry, section ".printk_index", align 4
@mlx4_ib_version = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"mlx4_ib: Mellanox ConnectX InfiniBand driver v4.0-0\0A\00", [43 x i8] zeroinitializer }, align 32
@mlx4_ib_add._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str, i32 2643, ptr @.str.28, ptr @.str.29 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Device struct alloc failed\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mlx4_ib_add._entry_ptr.30 = internal global ptr @mlx4_ib_add._entry.26, section ".printk_index", align 4
@mlx4_ib_add.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ibdev->uar_lock\00", [47 x i8] zeroinitializer }, align 32
@mlx4_ib_dev_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 2, i32 4, i8 0, ptr @mlx4_attr_group, ptr null, ptr @mlx4_ib_post_send, ptr @mlx4_ib_post_recv, ptr @mlx4_ib_drain_rq, ptr @mlx4_ib_drain_sq, ptr @mlx4_ib_poll_cq, ptr null, ptr @mlx4_ib_arm_cq, ptr @mlx4_ib_post_srq_recv, ptr @mlx4_ib_process_mad, ptr @mlx4_ib_query_device, ptr @mlx4_ib_modify_device, ptr @get_fw_ver_str, ptr null, ptr @mlx4_ib_query_port, ptr @mlx4_ib_modify_port, ptr @mlx4_port_immutable, ptr @mlx4_ib_port_link_layer, ptr @mlx4_ib_get_netdev, ptr null, ptr null, ptr @mlx4_ib_query_gid, ptr @mlx4_ib_add_gid, ptr @mlx4_ib_del_gid, ptr @mlx4_ib_query_pkey, ptr @mlx4_ib_alloc_ucontext, ptr @mlx4_ib_dealloc_ucontext, ptr @mlx4_ib_mmap, ptr null, ptr @mlx4_ib_disassociate_ucontext, ptr @mlx4_ib_alloc_pd, ptr @mlx4_ib_dealloc_pd, ptr @mlx4_ib_create_ah, ptr null, ptr null, ptr @mlx4_ib_query_ah, ptr @mlx4_ib_destroy_ah, ptr @mlx4_ib_create_srq, ptr @mlx4_ib_modify_srq, ptr @mlx4_ib_query_srq, ptr @mlx4_ib_destroy_srq, ptr @mlx4_ib_create_qp, ptr @mlx4_ib_modify_qp, ptr @mlx4_ib_query_qp, ptr @mlx4_ib_destroy_qp, ptr @mlx4_ib_create_cq, ptr @mlx4_ib_modify_cq, ptr @mlx4_ib_destroy_cq, ptr @mlx4_ib_resize_cq, ptr @mlx4_ib_get_dma_mr, ptr @mlx4_ib_reg_user_mr, ptr null, ptr @mlx4_ib_rereg_user_mr, ptr @mlx4_ib_dereg_mr, ptr @mlx4_ib_alloc_mr, ptr null, ptr null, ptr @mlx4_ib_map_mr_sg, ptr null, ptr null, ptr null, ptr @mlx4_ib_mcg_attach, ptr @mlx4_ib_mcg_detach, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 68, i32 0, i32 568, i32 0, i32 116, i32 872, i32 0, i32 416, i32 376, i32 0 }, [148 x i8] zeroinitializer }, align 32
@mlx4_ib_dev_wq_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_ib_create_wq, ptr @mlx4_ib_destroy_wq, ptr @mlx4_ib_modify_wq, ptr @mlx4_ib_create_rwq_ind_table, ptr @mlx4_ib_destroy_rwq_ind_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 24, i32 0, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@mlx4_ib_dev_mw_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_ib_alloc_mw, ptr @mlx4_ib_dealloc_mw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 36, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@mlx4_ib_dev_xrc_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_ib_alloc_xrcd, ptr @mlx4_ib_dealloc_xrcd, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 172 }, [148 x i8] zeroinitializer }, align 32
@mlx4_ib_dev_fs_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_ib_create_flow, ptr @mlx4_ib_destroy_flow, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@mlx4_ib_add.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&iboe->lock\00", [20 x i8] zeroinitializer }, align 32
@mlx4_ib_add.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"&ibdev->counters_table[i].mutex\00", [32 x i8] zeroinitializer }, align 32
@mlx4_ib_add.__key.36 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&ibdev->qp1_proxy_lock[i]\00", [38 x i8] zeroinitializer }, align 32
@mlx4_ib_add._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.25, ptr @.str, i32 2744, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016<mlx4_ib> %s: counter index %d for port %d allocated %d\0A\00", [37 x i8] zeroinitializer }, align 32
@mlx4_ib_add._entry_ptr.40 = internal global ptr @mlx4_ib_add._entry.38, section ".printk_index", align 4
@mlx4_ib_add.__key.41 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&ibdev->sm_lock\00", [16 x i8] zeroinitializer }, align 32
@mlx4_ib_add.__key.43 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&ibdev->cap_mask_mutex\00", [41 x i8] zeroinitializer }, align 32
@mlx4_ib_add.__key.45 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"&ibdev->reset_flow_resource_lock\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx4_%d\00", [24 x i8] zeroinitializer }, align 32
@mlx4_ib_add._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.25, ptr @.str, i32 2851, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014<mlx4_ib> %s: failure unregistering notifier\0A\00", [48 x i8] zeroinitializer }, align 32
@mlx4_ib_add._entry_ptr.50 = internal global ptr @mlx4_ib_add._entry.48, section ".printk_index", align 4
@mlx4_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @mlx4_class_attributes, ptr null }, [44 x i8] zeroinitializer }, align 32
@mlx4_class_attributes = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @dev_attr_hw_rev, ptr @dev_attr_hca_type, ptr @dev_attr_board_id, ptr null], [16 x i8] zeroinitializer }, align 32
@dev_attr_hw_rev = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.51, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hw_rev_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_hca_type = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.53, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @hca_type_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_board_id = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.55, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @board_id_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"hw_rev\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%x\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hca_type\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MT%d\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"board_id\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%.*s\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%d.%d.%d\00", [23 x i8] zeroinitializer }, align 32
@bond_option_active_slave_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.61 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/bonding.h\00", [42 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@mlx4_ib_alloc_ucontext.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.63 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&context->db_page_mutex\00", [40 x i8] zeroinitializer }, align 32
@mlx4_ib_alloc_ucontext.__key.64 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&context->wqn_ranges_mutex\00", [37 x i8] zeroinitializer }, align 32
@mlx4_ib_mcg_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str, i32 1854, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013<mlx4_ib> %s: multicast attach op failed, err %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx4_ib_mcg_attach\00", [45 x i8] zeroinitializer }, align 32
@mlx4_ib_mcg_attach._entry_ptr = internal global ptr @mlx4_ib_mcg_attach._entry, section ".printk_index", align 4
@mlx4_ib_mcg_detach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.69, ptr @.str, i32 1934, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\013<mlx4_ib> %s: Couldn't find reg_id for mgid. Steering rule is left attached\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mlx4_ib_mcg_detach\00", [45 x i8] zeroinitializer }, align 32
@mlx4_ib_mcg_detach._entry_ptr = internal global ptr @mlx4_ib_mcg_detach._entry, section ".printk_index", align 4
@mlx4_ib_mcg_detach._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.69, ptr @.str, i32 1966, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014<mlx4_ib> %s: could not find mgid entry\0A\00", [53 x i8] zeroinitializer }, align 32
@mlx4_ib_mcg_detach._entry_ptr.72 = internal global ptr @mlx4_ib_mcg_detach._entry.70, section ".printk_index", align 4
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mlx4_ib\00", [24 x i8] zeroinitializer }, align 32
@ib_dealloc_pd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel PD shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@ib_destroy_cq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.76 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel CQ shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@check_flow_steering_support._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str, i32 106, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"\014<mlx4_ib> %s: Device managed flow steering is unavailable for IB port in multifunction env.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"check_flow_steering_support\00", [36 x i8] zeroinitializer }, align 32
@check_flow_steering_support._entry_ptr = internal global ptr @check_flow_steering_support._entry, section ".printk_index", align 4
@mlx4_init_sl2vl_tbl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str, i32 946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [92 x i8], [36 x i8] } { [92 x i8] c"\013<mlx4_ib> %s: Unable to get default sl to vl mapping for port %d.  Using all zeroes (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mlx4_init_sl2vl_tbl\00", [44 x i8] zeroinitializer }, align 32
@mlx4_init_sl2vl_tbl._entry_ptr = internal global ptr @mlx4_init_sl2vl_tbl._entry, section ".printk_index", align 4
@mlx4_ib_hw_stats_ops1 = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_ib_alloc_hw_device_stats, ptr null, ptr @mlx4_ib_get_hw_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@mlx4_ib_hw_stats_ops = internal constant { %struct.ib_device_ops, [148 x i8] } { %struct.ib_device_ops { ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mlx4_ib_alloc_hw_device_stats, ptr @mlx4_ib_alloc_hw_port_stats, ptr @mlx4_ib_get_hw_stats, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, [148 x i8] zeroinitializer }, align 32
@diag_basic = internal constant { [21 x %struct.diag_counter], [56 x i8] } { [21 x %struct.diag_counter] [%struct.diag_counter { ptr @.str.81, i32 0 }, %struct.diag_counter { ptr @.str.82, i32 4 }, %struct.diag_counter { ptr @.str.83, i32 8 }, %struct.diag_counter { ptr @.str.84, i32 12 }, %struct.diag_counter { ptr @.str.85, i32 24 }, %struct.diag_counter { ptr @.str.86, i32 28 }, %struct.diag_counter { ptr @.str.87, i32 32 }, %struct.diag_counter { ptr @.str.88, i32 36 }, %struct.diag_counter { ptr @.str.89, i32 44 }, %struct.diag_counter { ptr @.str.90, i32 52 }, %struct.diag_counter { ptr @.str.91, i32 68 }, %struct.diag_counter { ptr @.str.92, i32 72 }, %struct.diag_counter { ptr @.str.93, i32 76 }, %struct.diag_counter { ptr @.str.94, i32 80 }, %struct.diag_counter { ptr @.str.95, i32 84 }, %struct.diag_counter { ptr @.str.96, i32 92 }, %struct.diag_counter { ptr @.str.97, i32 100 }, %struct.diag_counter { ptr @.str.98, i32 104 }, %struct.diag_counter { ptr @.str.99, i32 108 }, %struct.diag_counter { ptr @.str.100, i32 256 }, %struct.diag_counter { ptr @.str.101, i32 260 }], [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rq_num_lle\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sq_num_lle\00", [21 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"rq_num_lqpoe\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sq_num_lqpoe\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rq_num_lpe\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sq_num_lpe\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rq_num_wrfe\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sq_num_wrfe\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sq_num_mwbe\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sq_num_bre\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sq_num_rire\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rq_num_rire\00", [20 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sq_num_rae\00", [21 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rq_num_rae\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sq_num_roe\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sq_num_tree\00", [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sq_num_rree\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rq_num_rnr\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sq_num_rnr\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rq_num_oos\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sq_num_oos\00", [21 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rq_num_dup\00", [21 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sq_num_to\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"num_cqovf\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rq_num_udsdprd\00", [17 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@mlx4_ib_scan_netdevs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.106 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@do_slave_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.107 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&dm[i]->work)\00", [32 x i8] zeroinitializer }, align 32
@mlx4_ib_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.108, ptr @.str, i32 2970, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mlx4_ib_remove\00", [17 x i8] zeroinitializer }, align 32
@mlx4_ib_remove._entry_ptr = internal global ptr @mlx4_ib_remove._entry, section ".printk_index", align 4
@mlx4_ib_event.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mlx4_ib_event.__key.109 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@mlx4_ib_handle_catas_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str, i32 3057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014<mlx4_ib> %s: mlx4_ib_handle_catas_error was started\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"mlx4_ib_handle_catas_error\00", [37 x i8] zeroinitializer }, align 32
@mlx4_ib_handle_catas_error._entry_ptr = internal global ptr @mlx4_ib_handle_catas_error._entry, section ".printk_index", align 4
@mlx4_ib_handle_catas_error._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.111, ptr @.str, i32 3105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014<mlx4_ib> %s: mlx4_ib_handle_catas_error ended\0A\00", [46 x i8] zeroinitializer }, align 32
@mlx4_ib_handle_catas_error._entry_ptr.114 = internal global ptr @mlx4_ib_handle_catas_error._entry.112, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 32]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 34]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 4294967284, i64 4294967290]
@__sancov_gen_cov_switch_values.118 = internal global [7 x i64] [i64 5, i64 32, i64 32, i64 34, i64 48, i64 64, i64 65]
@__sancov_gen_cov_switch_values.119 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.120 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.121 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 5, i64 8]
@__sancov_gen_cov_switch_values.122 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 5, i64 6]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.124 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.125 = private unnamed_addr constant [23 x i8] c"mlx4_ib_sm_guid_assign\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 74, i32 5 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2897, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2915, i32 6 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3151, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3176, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [3 x i8] c"wq\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 86, i32 33 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"mlx4_ib_interface\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3294, i32 30 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 695, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 723, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1531, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1587, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1589, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1591, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1507, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant [14 x i8] c"default_table\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1415, i32 35 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1604, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2630, i32 2 }
@___asan_gen_.203 = private unnamed_addr constant [16 x i8] c"mlx4_ib_version\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 78, i32 19 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2642, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2659, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant [16 x i8] c"mlx4_ib_dev_ops\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2523, i32 35 }
@___asan_gen_.227 = private unnamed_addr constant [19 x i8] c"mlx4_ib_dev_wq_ops\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2587, i32 35 }
@___asan_gen_.230 = private unnamed_addr constant [19 x i8] c"mlx4_ib_dev_mw_ops\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2598, i32 35 }
@___asan_gen_.233 = private unnamed_addr constant [20 x i8] c"mlx4_ib_dev_xrc_ops\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2605, i32 35 }
@___asan_gen_.236 = private unnamed_addr constant [19 x i8] c"mlx4_ib_dev_fs_ops\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2612, i32 35 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2700, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2707, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2714, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2743, i32 3 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2764, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2765, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2767, i32 2 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2805, i32 41 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2851, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant [16 x i8] c"mlx4_attr_group\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2048, i32 37 }
@___asan_gen_.293 = private unnamed_addr constant [22 x i8] c"mlx4_class_attributes\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2041, i32 26 }
@___asan_gen_.296 = private unnamed_addr constant [16 x i8] c"dev_attr_hw_rev\00", align 1
@___asan_gen_.299 = private unnamed_addr constant [18 x i8] c"dev_attr_hca_type\00", align 1
@___asan_gen_.302 = private unnamed_addr constant [18 x i8] c"dev_attr_board_id\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2029, i32 8 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2027, i32 25 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2019, i32 8 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2017, i32 25 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2039, i32 8 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2037, i32 25 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 230, i32 6 }
@___asan_gen_.327 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.327, i32 214, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.330, i32 156, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2517, i32 40 }
@___asan_gen_.339 = private unnamed_addr constant [25 x i8] c"../include/net/bonding.h\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 349, i32 24 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1119, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1122, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1854, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1934, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1966, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 1230, i32 13 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3498, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.387, i32 3936, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 106, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 945, i32 4 }
@___asan_gen_.407 = private unnamed_addr constant [22 x i8] c"mlx4_ib_hw_stats_ops1\00", align 1
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2210, i32 35 }
@___asan_gen_.410 = private unnamed_addr constant [21 x i8] c"mlx4_ib_hw_stats_ops\00", align 1
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2204, i32 35 }
@___asan_gen_.413 = private unnamed_addr constant [11 x i8] c"diag_basic\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2060, i32 34 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2061, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2062, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2063, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2064, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2065, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2066, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2067, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2068, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2069, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2070, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2071, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2072, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2073, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2074, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2075, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2076, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2077, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2078, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2079, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2080, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2081, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2085, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2086, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2090, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2091, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2335, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3025, i32 3 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 2970, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3198, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3242, i32 3 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3057, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.524 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.525 = private constant [37 x i8] c"../drivers/infiniband/hw/mlx4/main.c\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.525, i32 3105, i32 2 }
@llvm.compiler.used = appending global [169 x ptr] [ptr @__UNIQUE_ID_author528, ptr @__UNIQUE_ID_description529, ptr @__UNIQUE_ID_file530, ptr @__UNIQUE_ID_license531, ptr @__UNIQUE_ID_sm_guid_assign533, ptr @__UNIQUE_ID_sm_guid_assigntype532, ptr @__exitcall_mlx4_ib_cleanup, ptr @__initcall__kmod_mlx4_ib__540_3335_mlx4_ib_init6, ptr @__mlx4_ib_create_default_rules._entry, ptr @__mlx4_ib_create_default_rules._entry_ptr, ptr @__mlx4_ib_create_flow._entry, ptr @__mlx4_ib_create_flow._entry.10, ptr @__mlx4_ib_create_flow._entry.13, ptr @__mlx4_ib_create_flow._entry.16, ptr @__mlx4_ib_create_flow._entry_ptr, ptr @__mlx4_ib_create_flow._entry_ptr.12, ptr @__mlx4_ib_create_flow._entry_ptr.15, ptr @__mlx4_ib_create_flow._entry_ptr.18, ptr @__mlx4_ib_destroy_flow._entry, ptr @__mlx4_ib_destroy_flow._entry_ptr, ptr @__param_sm_guid_assign, ptr @check_flow_steering_support._entry, ptr @check_flow_steering_support._entry_ptr, ptr @mlx4_ib_add._entry, ptr @mlx4_ib_add._entry.26, ptr @mlx4_ib_add._entry.38, ptr @mlx4_ib_add._entry.48, ptr @mlx4_ib_add._entry_ptr, ptr @mlx4_ib_add._entry_ptr.30, ptr @mlx4_ib_add._entry_ptr.40, ptr @mlx4_ib_add._entry_ptr.50, ptr @mlx4_ib_cleanup, ptr @mlx4_ib_handle_catas_error._entry, ptr @mlx4_ib_handle_catas_error._entry.112, ptr @mlx4_ib_handle_catas_error._entry_ptr, ptr @mlx4_ib_handle_catas_error._entry_ptr.114, ptr @mlx4_ib_mcg_attach._entry, ptr @mlx4_ib_mcg_attach._entry_ptr, ptr @mlx4_ib_mcg_detach._entry, ptr @mlx4_ib_mcg_detach._entry.70, ptr @mlx4_ib_mcg_detach._entry_ptr, ptr @mlx4_ib_mcg_detach._entry_ptr.72, ptr @mlx4_ib_remove._entry, ptr @mlx4_ib_remove._entry_ptr, ptr @mlx4_ib_sl2vl_update._entry, ptr @mlx4_ib_sl2vl_update._entry_ptr, ptr @mlx4_init_sl2vl_tbl._entry, ptr @mlx4_init_sl2vl_tbl._entry_ptr, ptr @mlx4_ib_sm_guid_assign, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @mlx4_sched_ib_sl2vl_update_work.__key, ptr @.str.4, ptr @wq, ptr @mlx4_ib_interface, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @default_table, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @mlx4_ib_version, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @mlx4_ib_add.__key, ptr @.str.31, ptr @mlx4_ib_dev_ops, ptr @mlx4_ib_dev_wq_ops, ptr @mlx4_ib_dev_mw_ops, ptr @mlx4_ib_dev_xrc_ops, ptr @mlx4_ib_dev_fs_ops, ptr @mlx4_ib_add.__key.32, ptr @.str.33, ptr @mlx4_ib_add.__key.34, ptr @.str.35, ptr @mlx4_ib_add.__key.36, ptr @.str.37, ptr @.str.39, ptr @mlx4_ib_add.__key.41, ptr @.str.42, ptr @mlx4_ib_add.__key.43, ptr @.str.44, ptr @mlx4_ib_add.__key.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @mlx4_attr_group, ptr @mlx4_class_attributes, ptr @dev_attr_hw_rev, ptr @dev_attr_hca_type, ptr @dev_attr_board_id, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @mlx4_ib_alloc_ucontext.__key, ptr @.str.63, ptr @mlx4_ib_alloc_ucontext.__key.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @mlx4_ib_hw_stats_ops1, ptr @mlx4_ib_hw_stats_ops, ptr @diag_basic, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @do_slave_init.__key, ptr @.str.107, ptr @.str.108, ptr @mlx4_ib_event.__key, ptr @mlx4_ib_event.__key.109, ptr @.str.110, ptr @.str.111, ptr @.str.113], section "llvm.metadata"
@0 = internal global [134 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_sm_guid_assign to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_sl2vl_update._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_sched_ib_sl2vl_update_work.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_interface to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_table to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_version to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_add._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_add.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_dev_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_dev_wq_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_dev_mw_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_dev_xrc_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_dev_fs_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_add.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_add.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_add.__key.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_add._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_add.__key.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_add.__key.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_add.__key.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_add._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_class_attributes to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hw_rev to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_hca_type to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_board_id to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_alloc_ucontext.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_alloc_ucontext.__key.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_mcg_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_mcg_detach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_mcg_detach._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_flow_steering_support._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_init_sl2vl_tbl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_hw_stats_ops1 to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_hw_stats_ops to i32), i32 524, i32 672, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @diag_basic to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @do_slave_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_event.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_event.__key.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_handle_catas_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mlx4_ib_handle_catas_error._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_gid_index_to_real_index(ptr noundef %ibdev, ptr nocapture noundef readonly %attr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %iboe1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 14
  %port_num2 = getelementptr inbounds %struct.ib_gid_attr, ptr %attr, i32 0, i32 5
  %0 = ptrtoint ptr %port_num2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port_num2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %6 = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %spec.select = select i1 %tobool.not, i32 %1, i32 1
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 11
  %7 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %8, i32 %spec.select, i32 1, i32 2
  %9 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %10, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end.if.then6_crit_edge, label %land.lhs.true.i

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then6

land.lhs.true.i:                                  ; preds = %if.end
  %add_gid.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 1, i32 27
  %11 = ptrtoint ptr %add_gid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add_gid.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %land.lhs.true.i.if.then6_crit_edge, label %rdma_cap_roce_gid_table.exit

land.lhs.true.i.if.then6_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then6

rdma_cap_roce_gid_table.exit:                     ; preds = %land.lhs.true.i
  %del_gid.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 1, i32 28
  %13 = ptrtoint ptr %del_gid.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %del_gid.i, align 4
  %tobool2.i.not = icmp eq ptr %14, null
  br i1 %tobool2.i.not, label %rdma_cap_roce_gid_table.exit.if.then6_crit_edge, label %do.body8

rdma_cap_roce_gid_table.exit.if.then6_crit_edge:  ; preds = %rdma_cap_roce_gid_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then6

if.then6:                                         ; preds = %rdma_cap_roce_gid_table.exit.if.then6_crit_edge, %land.lhs.true.i.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %index = getelementptr inbounds %struct.ib_gid_attr, ptr %attr, i32 0, i32 4
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %index, align 4
  %conv = zext i16 %16 to i32
  br label %cleanup

do.body8:                                         ; preds = %rdma_cap_roce_gid_table.exit
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %iboe1) #17
  %sub = add nsw i32 %spec.select, -1
  %arrayidx = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 14, i32 4, i32 %sub
  %gid19 = getelementptr inbounds %struct.ib_gid_attr, ptr %attr, i32 0, i32 2
  %gid_type = getelementptr inbounds %struct.ib_gid_attr, ptr %attr, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body8
  %i.062 = phi i32 [ 0, %do.body8 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx18 = getelementptr [128 x %struct.gid_entry], ptr %arrayidx, i32 0, i32 %i.062
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx18, ptr noundef dereferenceable(16) %gid19, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool21.not = icmp eq i32 %bcmp, 0
  br i1 %tobool21.not, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %17 = ptrtoint ptr %gid_type to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %gid_type, align 8
  %gid_type24 = getelementptr [128 x %struct.gid_entry], ptr %arrayidx, i32 0, i32 %i.062, i32 1
  %19 = ptrtoint ptr %gid_type24 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %gid_type24, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp25 = icmp eq i32 %18, %20
  br i1 %cmp25, label %for.end, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.062, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %for.inc.if.end35_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.if.end35_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

for.end:                                          ; preds = %land.lhs.true
  %ctx30 = getelementptr [128 x %struct.gid_entry], ptr %arrayidx, i32 0, i32 %i.062, i32 2
  %21 = ptrtoint ptr %ctx30 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctx30, align 4
  %tobool32.not = icmp eq ptr %22, null
  br i1 %tobool32.not, label %for.end.if.end35_crit_edge, label %if.then33

for.end.if.end35_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end35

if.then33:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.end.if.end35_crit_edge, %for.inc.if.end35_crit_edge
  %real_index.0 = phi i32 [ %24, %if.then33 ], [ -22, %for.end.if.end35_crit_edge ], [ -22, %for.inc.if.end35_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %iboe1, i32 noundef %call12) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %real_index.0, %if.end35 ], [ %conv, %if.then6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__mlx4_ib_query_port(ptr noundef %ibdev, i32 noundef %port, ptr noundef %props, i32 noundef %netw_view) local_unnamed_addr #0 align 64 {
entry:
  %out_param.addr.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1.i, align 8
  %arrayidx.i = getelementptr %struct.mlx4_dev, ptr %1, i32 0, i32 3, i32 77, i32 %port
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %cond.true, label %cond.false

cond.true:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 256) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 256) #21
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  %tobool2.not.i = icmp eq ptr %call7.i.i, null
  %or.cond.i = select i1 %tobool.not.i, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %cond.true.ib_link_query_port.exit_crit_edge, label %if.end.i

cond.true.ib_link_query_port.exit_crit_edge:      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %ib_link_query_port.exit

if.end.i:                                         ; preds = %cond.true
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 16843009, ptr %call7.i.i.i, align 8
  %attr_id.i = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 21, ptr %attr_id.i, align 8
  %attr_mod.i = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i.i, i32 0, i32 10
  %8 = ptrtoint ptr %attr_mod.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %port, ptr %attr_mod.i, align 4
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 8
  %flags.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %12, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool5.not.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %netw_view)
  %tobool6.not.i = icmp eq i32 %netw_view, 0
  %or.cond212.i = or i1 %tobool6.not.i, %tobool5.not.i
  %mad_ifc_flags.0.i = select i1 %or.cond212.i, i32 3, i32 7
  %call10.i = tail call i32 @mlx4_MAD_IFC(ptr noundef %ibdev, i32 noundef %mad_ifc_flags.0.i, i32 noundef %port, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end.i.ib_link_query_port.exit_crit_edge

if.end.i.ib_link_query_port.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ib_link_query_port.exit

if.end13.i:                                       ; preds = %if.end.i
  %add.ptr.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 16
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i, align 8
  %conv.i = zext i16 %14 to i32
  %lid.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 13
  %15 = ptrtoint ptr %lid.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv.i, ptr %lid.i, align 8
  %arrayidx.i8 = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 34
  %16 = ptrtoint ptr %arrayidx.i8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i8, align 2
  %18 = and i8 %17, 7
  %lmc.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 14
  %19 = ptrtoint ptr %lmc.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %lmc.i, align 4
  %add.ptr20.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 18
  %20 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr20.i, align 2
  %conv22.i = zext i16 %21 to i32
  %sm_lid.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 12
  %22 = ptrtoint ptr %sm_lid.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv22.i, ptr %sm_lid.i, align 4
  %arrayidx24.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 36
  %23 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx24.i, align 4
  %25 = and i8 %24, 15
  %sm_sl.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 16
  %26 = ptrtoint ptr %sm_sl.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %sm_sl.i, align 2
  %arrayidx29.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 32
  %27 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx29.i, align 8
  %29 = and i8 %28, 15
  %and31.i = zext i8 %29 to i32
  %state.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 1
  %30 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and31.i, ptr %state.i, align 8
  %arrayidx33.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 33
  %31 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx33.i, align 1
  %33 = lshr i8 %32, 4
  %phys_state.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 21
  %34 = ptrtoint ptr %phys_state.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %phys_state.i, align 4
  %add.ptr38.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 20
  %35 = ptrtoint ptr %add.ptr38.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr38.i, align 4
  %port_cap_flags.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 7
  %37 = ptrtoint ptr %port_cap_flags.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %port_cap_flags.i, align 8
  br i1 %tobool6.not.i, label %if.else.i, label %if.then41.i

if.then41.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx43.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 50
  %38 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx43.i, align 2
  %conv44.i = zext i8 %39 to i32
  br label %if.end49.i

if.else.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  %40 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev1.i, align 8
  %arrayidx47.i = getelementptr %struct.mlx4_dev, ptr %41, i32 0, i32 3, i32 8, i32 %port
  %42 = ptrtoint ptr %arrayidx47.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx47.i, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.else.i, %if.then41.i
  %conv44.sink.i = phi i32 [ %43, %if.else.i ], [ %conv44.i, %if.then41.i ]
  %44 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 5
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv44.sink.i, ptr %44, align 8
  %46 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev1.i, align 8
  %max_msg_sz.i = getelementptr inbounds %struct.mlx4_dev, ptr %47, i32 0, i32 3, i32 58
  %48 = ptrtoint ptr %max_msg_sz.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %max_msg_sz.i, align 8
  %max_msg_sz53.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 8
  %50 = ptrtoint ptr %max_msg_sz53.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %max_msg_sz53.i, align 4
  %51 = load ptr, ptr %dev1.i, align 8
  %arrayidx57.i = getelementptr %struct.mlx4_dev, ptr %51, i32 0, i32 3, i32 9, i32 %port
  %52 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx57.i, align 4
  %conv58.i = trunc i32 %53 to i16
  %pkey_tbl_len.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 11
  %54 = ptrtoint ptr %pkey_tbl_len.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv58.i, ptr %pkey_tbl_len.i, align 8
  %add.ptr61.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 46
  %55 = ptrtoint ptr %add.ptr61.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr61.i, align 2
  %conv63.i = zext i16 %56 to i32
  %bad_pkey_cntr.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 9
  %57 = ptrtoint ptr %bad_pkey_cntr.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %conv63.i, ptr %bad_pkey_cntr.i, align 8
  %add.ptr66.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 48
  %58 = ptrtoint ptr %add.ptr66.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr66.i, align 8
  %conv68.i = zext i16 %59 to i32
  %qkey_viol_cntr.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 10
  %60 = ptrtoint ptr %qkey_viol_cntr.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %conv68.i, ptr %qkey_viol_cntr.i, align 4
  %arrayidx70.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 31
  %61 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx70.i, align 1
  %63 = and i8 %62, 15
  %active_width.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 19
  %64 = ptrtoint ptr %active_width.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %active_width.i, align 1
  %arrayidx75.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 35
  %65 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx75.i, align 1
  %67 = lshr i8 %66, 4
  %conv78.i = zext i8 %67 to i16
  %active_speed.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 20
  %68 = ptrtoint ptr %active_speed.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv78.i, ptr %active_speed.i, align 2
  %arrayidx80.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 41
  %69 = ptrtoint ptr %arrayidx80.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx80.i, align 1
  %71 = and i8 %70, 15
  %and82.i = zext i8 %71 to i32
  %max_mtu.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 2
  %72 = ptrtoint ptr %max_mtu.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %and82.i, ptr %max_mtu.i, align 4
  %73 = lshr i8 %24, 4
  %74 = zext i8 %73 to i32
  %active_mtu.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 3
  %75 = ptrtoint ptr %active_mtu.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %active_mtu.i, align 8
  %arrayidx88.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 51
  %76 = ptrtoint ptr %arrayidx88.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx88.i, align 1
  %78 = and i8 %77, 31
  %subnet_timeout.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 17
  %79 = ptrtoint ptr %subnet_timeout.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %subnet_timeout.i, align 1
  %arrayidx93.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 37
  %80 = ptrtoint ptr %arrayidx93.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %arrayidx93.i, align 1
  %82 = lshr i8 %81, 4
  %max_vl_num.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 15
  %83 = ptrtoint ptr %max_vl_num.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %82, ptr %max_vl_num.i, align 1
  %84 = lshr i8 %70, 4
  %init_type_reply.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 18
  %85 = ptrtoint ptr %init_type_reply.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %84, ptr %init_type_reply.i, align 8
  %and103.i = and i32 %36, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i)
  %tobool104.not.i = icmp eq i32 %and103.i, 0
  br i1 %tobool104.not.i, label %if.end49.i.if.end113.i_crit_edge, label %if.then105.i

if.end49.i.if.end113.i_crit_edge:                 ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end113.i

if.then105.i:                                     ; preds = %if.end49.i
  %arrayidx107.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 62
  %86 = ptrtoint ptr %arrayidx107.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx107.i, align 2
  %88 = lshr i8 %87, 4
  %89 = zext i8 %88 to i32
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values)
  switch i32 %89, label %if.then105.i.if.end113.i_crit_edge [
    i32 1, label %if.then105.i.if.end133.sink.split.i_crit_edge
    i32 2, label %sw.bb111.i
  ]

if.then105.i.if.end133.sink.split.i_crit_edge:    ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end133.sink.split.i

if.then105.i.if.end113.i_crit_edge:               ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end113.i

sw.bb111.i:                                       ; preds = %if.then105.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end133.sink.split.i

if.end113.i:                                      ; preds = %if.then105.i.if.end113.i_crit_edge, %if.end49.i.if.end113.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %67)
  %cmp.i9 = icmp eq i8 %67, 4
  br i1 %cmp.i9, label %if.then117.i, label %if.end113.i.if.end133.i_crit_edge

if.end113.i.if.end133.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end133.i

if.then117.i:                                     ; preds = %if.end113.i
  %91 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 16843009, ptr %call7.i.i.i, align 8
  %92 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -112, ptr %attr_id.i, align 8
  %93 = ptrtoint ptr %attr_mod.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %port, ptr %attr_mod.i, align 4
  %call121.i = tail call i32 @mlx4_MAD_IFC(ptr noundef %ibdev, i32 noundef %mad_ifc_flags.0.i, i32 noundef %port, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121.i)
  %tobool122.not.i = icmp eq i32 %call121.i, 0
  br i1 %tobool122.not.i, label %if.end124.i, label %if.then117.i.ib_link_query_port.exit_crit_edge

if.then117.i.ib_link_query_port.exit_crit_edge:   ; preds = %if.then117.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ib_link_query_port.exit

if.end124.i:                                      ; preds = %if.then117.i
  %arrayidx126.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 15
  %94 = ptrtoint ptr %arrayidx126.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx126.i, align 1
  %96 = and i8 %95, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %tobool129.not.i = icmp eq i8 %96, 0
  br i1 %tobool129.not.i, label %if.end124.i.if.end133.i_crit_edge, label %if.end124.i.if.end133.sink.split.i_crit_edge

if.end124.i.if.end133.sink.split.i_crit_edge:     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end133.sink.split.i

if.end124.i.if.end133.i_crit_edge:                ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end133.i

if.end133.sink.split.i:                           ; preds = %if.end124.i.if.end133.sink.split.i_crit_edge, %sw.bb111.i, %if.then105.i.if.end133.sink.split.i_crit_edge
  %.sink.i = phi i16 [ 32, %sw.bb111.i ], [ 16, %if.then105.i.if.end133.sink.split.i_crit_edge ], [ 8, %if.end124.i.if.end133.sink.split.i_crit_edge ]
  %97 = ptrtoint ptr %active_speed.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %.sink.i, ptr %active_speed.i, align 2
  br label %if.end133.i

if.end133.i:                                      ; preds = %if.end133.sink.split.i, %if.end124.i.if.end133.i_crit_edge, %if.end113.i.if.end133.i_crit_edge
  %98 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp135.i = icmp eq i32 %99, 1
  br i1 %cmp135.i, label %if.then137.i, label %if.end133.i.ib_link_query_port.exit_crit_edge

if.end133.i.ib_link_query_port.exit_crit_edge:    ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ib_link_query_port.exit

if.then137.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #19
  %100 = ptrtoint ptr %active_speed.i to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 1, ptr %active_speed.i, align 2
  br label %ib_link_query_port.exit

ib_link_query_port.exit:                          ; preds = %if.then137.i, %if.end133.i.ib_link_query_port.exit_crit_edge, %if.then117.i.ib_link_query_port.exit_crit_edge, %if.end.i.ib_link_query_port.exit_crit_edge, %cond.true.ib_link_query_port.exit_crit_edge
  %err.1.i = phi i32 [ %call10.i, %if.end.i.ib_link_query_port.exit_crit_edge ], [ %call121.i, %if.then117.i.ib_link_query_port.exit_crit_edge ], [ 0, %if.then137.i ], [ 0, %if.end133.i.ib_link_query_port.exit_crit_edge ], [ -12, %cond.true.ib_link_query_port.exit_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i.i) #17
  tail call void @kfree(ptr noundef %call7.i.i) #17
  br label %cond.end

cond.false:                                       ; preds = %entry
  %iboe1.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 14
  %flags.i.i11 = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 1
  %101 = ptrtoint ptr %flags.i.i11 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags.i.i11, align 4
  %call4.i = tail call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %1) #17
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i14

if.then.i:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #19
  %103 = ptrtoint ptr %call4.i to i32
  br label %cond.end

if.end.i14:                                       ; preds = %cond.false
  %104 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev1.i, align 8
  %dma.i = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call4.i, i32 0, i32 1
  %106 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dma.i, align 4
  %conv.i12 = zext i32 %107 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %out_param.addr.i.i) #17
  %108 = ptrtoint ptr %out_param.addr.i.i to i32
  call void @__asan_store8_noabort(i32 %108)
  store i64 %conv.i12, ptr %out_param.addr.i.i, align 8
  %call.i122.i = call i32 @__mlx4_cmd(ptr noundef %105, i64 noundef 0, ptr noundef nonnull %out_param.addr.i.i, i32 noundef 0, i32 noundef %port, i8 noundef zeroext 0, i16 noundef zeroext 67, i32 noundef 60000, i32 noundef 0) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %out_param.addr.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i122.i)
  %tobool.not.i13 = icmp eq i32 %call.i122.i, 0
  br i1 %tobool.not.i13, label %if.end10.i, label %if.end.i14.out.i_crit_edge

if.end.i14.out.i_crit_edge:                       ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #19
  br label %out.i

if.end10.i:                                       ; preds = %if.end.i14
  %109 = ptrtoint ptr %call4.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %call4.i, align 4
  %arrayidx.i15 = getelementptr i8, ptr %110, i32 5
  %111 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %arrayidx.i15, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %112)
  %cmp.i16 = icmp eq i8 %112, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %112)
  %cmp16.i = icmp eq i8 %112, 32
  %113 = or i1 %cmp.i16, %cmp16.i
  %114 = select i1 %113, i8 2, i8 1
  %active_width.i17 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 19
  %115 = ptrtoint ptr %active_width.i17 to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 %114, ptr %active_width.i17, align 1
  %116 = ptrtoint ptr %call4.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call4.i, align 4
  %arrayidx20.i = getelementptr i8, ptr %117, i32 5
  %118 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx20.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %119)
  %cmp22.i = icmp eq i8 %119, 32
  %conv25.i = select i1 %cmp22.i, i16 16, i16 4
  %active_speed.i18 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 20
  %120 = ptrtoint ptr %active_speed.i18 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv25.i, ptr %active_speed.i18, align 2
  %port_cap_flags.i19 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 7
  %121 = ptrtoint ptr %port_cap_flags.i19 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 65536, ptr %port_cap_flags.i19, align 8
  %ip_gids.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 6
  %122 = ptrtoint ptr %ip_gids.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %bf.load.i = load i8, ptr %ip_gids.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %ip_gids.i, align 4
  %123 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev1.i, align 8
  %arrayidx27.i = getelementptr %struct.mlx4_dev, ptr %124, i32 0, i32 3, i32 8, i32 %port
  %125 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %arrayidx27.i, align 4
  %gid_tbl_len.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 5
  %127 = ptrtoint ptr %gid_tbl_len.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %gid_tbl_len.i, align 8
  %128 = load ptr, ptr %dev1.i, align 8
  %max_msg_sz.i20 = getelementptr inbounds %struct.mlx4_dev, ptr %128, i32 0, i32 3, i32 58
  %129 = ptrtoint ptr %max_msg_sz.i20 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %max_msg_sz.i20, align 8
  %max_msg_sz30.i = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 8
  %131 = ptrtoint ptr %max_msg_sz30.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 %130, ptr %max_msg_sz30.i, align 4
  %132 = load ptr, ptr %dev1.i, align 8
  %arrayidx33.i21 = getelementptr %struct.mlx4_dev, ptr %132, i32 0, i32 3, i32 9, i32 %port
  %133 = ptrtoint ptr %arrayidx33.i21 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %arrayidx33.i21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool34.not.i = icmp eq i32 %134, 0
  br i1 %tobool34.not.i, label %if.end10.i.if.end36.i_crit_edge, label %if.then35.i

if.end10.i.if.end36.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end36.i

if.then35.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #19
  %pkey_tbl_len.i22 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 11
  %135 = ptrtoint ptr %pkey_tbl_len.i22 to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 1, ptr %pkey_tbl_len.i22, align 8
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then35.i, %if.end10.i.if.end36.i_crit_edge
  %max_mtu.i23 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 2
  %136 = ptrtoint ptr %max_mtu.i23 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 5, ptr %max_mtu.i23, align 4
  %max_vl_num.i24 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 15
  %137 = ptrtoint ptr %max_vl_num.i24 to i32
  call void @__asan_store1_noabort(i32 %137)
  store i8 2, ptr %max_vl_num.i24, align 1
  %state.i25 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 1
  %138 = ptrtoint ptr %state.i25 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 1, ptr %state.i25, align 8
  %phys_state.i26 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 21
  %139 = ptrtoint ptr %phys_state.i26 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 3, ptr %phys_state.i26, align 4
  %active_mtu.i27 = getelementptr inbounds %struct.ib_port_attr, ptr %props, i32 0, i32 3
  %140 = ptrtoint ptr %active_mtu.i27 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 1, ptr %active_mtu.i27, align 8
  call void @_raw_spin_lock_bh(ptr noundef %iboe1.i) #17
  %sub.i = add i32 %port, -1
  %arrayidx39.i = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 14, i32 1, i32 %sub.i
  %141 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx39.i, align 4
  %tobool40.not.i = icmp eq ptr %142, null
  br i1 %tobool40.not.i, label %if.end36.i.out_unlock.i_crit_edge, label %land.lhs.true.i

if.end36.i.out_unlock.i_crit_edge:                ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock.i

land.lhs.true.i:                                  ; preds = %if.end36.i
  %143 = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool41.not.i = icmp eq i32 %143, 0
  br i1 %tobool41.not.i, label %land.lhs.true.i.if.end47.i_crit_edge, label %if.then42.i

land.lhs.true.i.if.end47.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47.i

if.then42.i:                                      ; preds = %land.lhs.true.i
  %144 = call i32 @llvm.read_register.i32(metadata !280) #17
  %and.i.i.i.i.i.i = and i32 %144, -16384
  %145 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %147, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !290
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i.i, label %if.then42.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then42.i.rcu_read_lock.exit.i_crit_edge:       ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then42.i
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #17
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then42.i.rcu_read_lock.exit.i_crit_edge
  %call43.i = call ptr @netdev_master_upper_dev_get_rcu(ptr noundef nonnull %142) #17
  %call.i123.i = call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i123.i, label %rcu_read_lock.exit.i.if.end44.i_crit_edge, label %land.lhs.true.i126.i

rcu_read_lock.exit.i.if.end44.i_crit_edge:        ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44.i

land.lhs.true.i126.i:                             ; preds = %rcu_read_lock.exit.i
  %call1.i124.i = call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i124.i)
  %tobool.not.i125.i = icmp eq i32 %call1.i124.i, 0
  br i1 %tobool.not.i125.i, label %land.lhs.true.i126.i.if.end44.i_crit_edge, label %land.lhs.true2.i128.i

land.lhs.true.i126.i.if.end44.i_crit_edge:        ; preds = %land.lhs.true.i126.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44.i

land.lhs.true2.i128.i:                            ; preds = %land.lhs.true.i126.i
  %.b4.i127.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i127.i, label %land.lhs.true2.i128.i.if.end44.i_crit_edge, label %if.then.i129.i

land.lhs.true2.i128.i.if.end44.i_crit_edge:       ; preds = %land.lhs.true2.i128.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end44.i

if.then.i129.i:                                   ; preds = %land.lhs.true2.i128.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #17
  br label %if.end44.i

if.end44.i:                                       ; preds = %if.then.i129.i, %land.lhs.true2.i128.i.if.end44.i_crit_edge, %land.lhs.true.i126.i.if.end44.i_crit_edge, %rcu_read_lock.exit.i.if.end44.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #17, !srcloc !291
  %148 = call i32 @llvm.read_register.i32(metadata !280) #17
  %and.i.i.i.i.i130.i = and i32 %148, -16384
  %149 = inttoptr i32 %and.i.i.i.i.i130.i to ptr
  %preempt_count.i.i.i.i131.i = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %preempt_count.i.i.i.i131.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %preempt_count.i.i.i.i131.i, align 4
  %sub.i.i.i.i = add i32 %151, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i131.i, align 4
  call void @rcu_read_unlock_strict() #17
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  %tobool45.not.i = icmp eq ptr %call43.i, null
  br i1 %tobool45.not.i, label %if.end44.i.out_unlock.i_crit_edge, label %if.end44.i.if.end47.i_crit_edge

if.end44.i.if.end47.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end47.i

if.end44.i.out_unlock.i_crit_edge:                ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %out_unlock.i

if.end47.i:                                       ; preds = %if.end44.i.if.end47.i_crit_edge, %land.lhs.true.i.if.end47.i_crit_edge
  %ndev.0140.i = phi ptr [ %call43.i, %if.end44.i.if.end47.i_crit_edge ], [ %142, %land.lhs.true.i.if.end47.i_crit_edge ]
  %mtu.i = getelementptr inbounds %struct.net_device, ptr %ndev.0140.i, i32 0, i32 20
  %152 = ptrtoint ptr %mtu.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %mtu.i, align 4
  %sub.i.i = add i32 %153, -96
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub.i.i)
  %cmp.not.i.i = icmp slt i32 %sub.i.i, 4096
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.end47.i.cond.true.i_crit_edge

if.end47.i.cond.true.i_crit_edge:                 ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

if.else.i.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %sub.i.i)
  %cmp2.not.i.i = icmp slt i32 %sub.i.i, 2048
  br i1 %cmp2.not.i.i, label %if.else4.i.i, label %if.else.i.i.cond.true.i_crit_edge

if.else.i.i.cond.true.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %sub.i.i)
  %cmp6.not.i.i = icmp slt i32 %sub.i.i, 1024
  br i1 %cmp6.not.i.i, label %if.else8.i.i, label %if.else4.i.i.cond.true.i_crit_edge

if.else4.i.i.cond.true.i_crit_edge:               ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

if.else8.i.i:                                     ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %sub.i.i)
  %cmp10.not.i.i = icmp slt i32 %sub.i.i, 512
  br i1 %cmp10.not.i.i, label %iboe_get_mtu.exit.i, label %if.else8.i.i.cond.true.i_crit_edge

if.else8.i.i.cond.true.i_crit_edge:               ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

iboe_get_mtu.exit.i:                              ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %sub.i.i)
  %cmp14.not.i.i = icmp slt i32 %sub.i.i, 256
  br i1 %cmp14.not.i.i, label %iboe_get_mtu.exit.i.cond.end57.i_crit_edge, label %iboe_get_mtu.exit.i.cond.true.i_crit_edge

iboe_get_mtu.exit.i.cond.true.i_crit_edge:        ; preds = %iboe_get_mtu.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.true.i

iboe_get_mtu.exit.i.cond.end57.i_crit_edge:       ; preds = %iboe_get_mtu.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cond.end57.i

cond.true.i:                                      ; preds = %iboe_get_mtu.exit.i.cond.true.i_crit_edge, %if.else8.i.i.cond.true.i_crit_edge, %if.else4.i.i.cond.true.i_crit_edge, %if.else.i.i.cond.true.i_crit_edge, %if.end47.i.cond.true.i_crit_edge
  %retval.0.i143.i = phi i32 [ 1, %iboe_get_mtu.exit.i.cond.true.i_crit_edge ], [ 2, %if.else8.i.i.cond.true.i_crit_edge ], [ 3, %if.else4.i.i.cond.true.i_crit_edge ], [ 4, %if.else.i.i.cond.true.i_crit_edge ], [ 5, %if.end47.i.cond.true.i_crit_edge ]
  %154 = ptrtoint ptr %max_mtu.i23 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %max_mtu.i23, align 4
  %156 = call i32 @llvm.umin.i32(i32 %155, i32 %retval.0.i143.i) #17
  br label %cond.end57.i

cond.end57.i:                                     ; preds = %cond.true.i, %iboe_get_mtu.exit.i.cond.end57.i_crit_edge
  %cond58.i = phi i32 [ %156, %cond.true.i ], [ 1, %iboe_get_mtu.exit.i.cond.end57.i_crit_edge ]
  %157 = ptrtoint ptr %active_mtu.i27 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %cond58.i, ptr %active_mtu.i27, align 8
  %state.i.i = getelementptr inbounds %struct.net_device, ptr %ndev.0140.i, i32 0, i32 6
  %158 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %state.i.i, align 4
  %and1.i.i.i = and i32 %159, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %cond.end57.i.land.end.thread.i_crit_edge, label %land.rhs.i

cond.end57.i.land.end.thread.i_crit_edge:         ; preds = %cond.end57.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end.thread.i

land.rhs.i:                                       ; preds = %cond.end57.i
  call void @__sanitizer_cov_trace_pc() #19
  %160 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load volatile i32, ptr %state.i.i, align 4
  %162 = and i32 %161, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %tobool.not.i133.i = icmp eq i32 %162, 0
  %spec.select.i = select i1 %tobool.not.i133.i, i32 4, i32 1
  %spec.select145.i = select i1 %tobool.not.i133.i, i8 5, i8 3
  br label %land.end.thread.i

land.end.thread.i:                                ; preds = %land.rhs.i, %cond.end57.i.land.end.thread.i_crit_edge
  %storemerge.i = phi i32 [ 1, %cond.end57.i.land.end.thread.i_crit_edge ], [ %spec.select.i, %land.rhs.i ]
  %163 = phi i8 [ 3, %cond.end57.i.land.end.thread.i_crit_edge ], [ %spec.select145.i, %land.rhs.i ]
  %164 = ptrtoint ptr %state.i25 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %storemerge.i, ptr %state.i25, align 8
  %165 = ptrtoint ptr %phys_state.i26 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 %163, ptr %phys_state.i26, align 4
  br label %out_unlock.i

out_unlock.i:                                     ; preds = %land.end.thread.i, %if.end44.i.out_unlock.i_crit_edge, %if.end36.i.out_unlock.i_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %iboe1.i) #17
  br label %out.i

out.i:                                            ; preds = %out_unlock.i, %if.end.i14.out.i_crit_edge
  %166 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %dev1.i, align 8
  call void @mlx4_free_cmd_mailbox(ptr noundef %167, ptr noundef %call4.i) #17
  br label %cond.end

cond.end:                                         ; preds = %out.i, %if.then.i, %ib_link_query_port.exit
  %cond = phi i32 [ %err.1.i, %ib_link_query_port.exit ], [ %103, %if.then.i ], [ %call.i122.i, %out.i ]
  ret i32 %cond
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx4_ib_port_link_layer(ptr nocapture noundef readonly %device, i32 noundef %port_num) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %1, i32 0, i32 3, i32 77, i32 %port_num
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %cond = select i1 %cmp, i32 1, i32 2
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__mlx4_ib_query_gid(ptr noundef %ibdev, i32 noundef %port, i32 noundef %index, ptr nocapture noundef writeonly %gid, i32 noundef %netw_view) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 256) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool3.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.if.end40_crit_edge, label %if.end

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16843009, ptr %call7.i.i, align 8
  %attr_id = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 21, ptr %attr_id, align 8
  %attr_mod = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %attr_mod to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %port, ptr %attr_mod, align 4
  %dev4 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %5 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev4, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %netw_view)
  %tobool7.not = icmp eq i32 %netw_view, 0
  %or.cond69 = or i1 %tobool7.not, %tobool6.not
  %mad_ifc_flags.0 = select i1 %or.cond69, i32 3, i32 7
  %call10 = tail call i32 @mlx4_MAD_IFC(ptr noundef %ibdev, i32 noundef %mad_ifc_flags.0, i32 noundef %port, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.if.end40_crit_edge

if.end.if.end40_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

if.end13:                                         ; preds = %if.end
  %data = getelementptr inbounds %struct.ib_smp, ptr %call7.i, i32 0, i32 15
  %add.ptr = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 8
  %9 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %add.ptr, align 8
  %11 = ptrtoint ptr %gid to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %gid, align 8
  %12 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev4, align 8
  %flags.i72 = getelementptr inbounds %struct.mlx4_dev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i72 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags.i72, align 4
  %and.i73 = and i32 %15, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i73)
  %tobool17.not = icmp ne i32 %and.i73, 0
  %or.cond70 = and i1 %tobool7.not, %tobool17.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %tobool21.not = icmp ne i32 %index, 0
  %16 = and i1 %tobool21.not, %or.cond70
  br i1 %16, label %if.then37, label %if.end24

if.end24:                                         ; preds = %if.end13
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 16843009, ptr %call7.i.i, align 8
  %18 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 20, ptr %attr_id, align 8
  %div = sdiv i32 %index, 8
  %19 = ptrtoint ptr %attr_mod to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div, ptr %attr_mod, align 4
  %call27 = tail call i32 @mlx4_MAD_IFC(ptr noundef %ibdev, i32 noundef %mad_ifc_flags.0, i32 noundef %port, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end24.if.end40_crit_edge

if.end24.if.end40_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end40

if.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr32 = getelementptr i8, ptr %gid, i32 8
  %20 = mul i32 %div, 8
  %rem.decomposed = sub i32 %index, %20
  %mul = shl nsw i32 %rem.decomposed, 3
  %add.ptr35 = getelementptr i8, ptr %data, i32 %mul
  %21 = ptrtoint ptr %add.ptr35 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %add.ptr35, align 8
  %23 = ptrtoint ptr %add.ptr32 to i32
  call void @__asan_storeN_noabort(i32 %23, i32 8)
  store i64 %22, ptr %add.ptr32, align 1
  br label %if.end40

if.then37:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr39 = getelementptr i8, ptr %gid, i32 8
  %24 = ptrtoint ptr %add.ptr39 to i32
  call void @__asan_storeN_noabort(i32 %24, i32 8)
  store i64 0, ptr %add.ptr39, align 1
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end30, %if.end24.if.end40_crit_edge, %if.end.if.end40_crit_edge, %entry.if.end40_crit_edge
  %err.076 = phi i32 [ 0, %if.then37 ], [ -12, %entry.if.end40_crit_edge ], [ 0, %if.end30 ], [ %call27, %if.end24.if.end40_crit_edge ], [ %call10, %if.end.if.end40_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #17
  tail call void @kfree(ptr noundef %call7.i) #17
  ret i32 %err.076
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_MAD_IFC(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__mlx4_ib_query_pkey(ptr noundef %ibdev, i32 noundef %port, i16 noundef zeroext %index, ptr nocapture noundef writeonly %pkey, i32 noundef %netw_view) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 256) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 256) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  %tobool2.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 16843009, ptr %call7.i.i, align 8
  %attr_id = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 22, ptr %attr_id, align 8
  %conv = zext i16 %index to i32
  %div27 = lshr i32 %conv, 5
  %attr_mod = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 10
  %4 = ptrtoint ptr %attr_mod to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %div27, ptr %attr_mod, align 4
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not = icmp eq i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %netw_view)
  %tobool6.not = icmp eq i32 %netw_view, 0
  %or.cond28 = or i1 %tobool6.not, %tobool5.not
  %mad_ifc_flags.0 = select i1 %or.cond28, i32 3, i32 7
  %call10 = tail call i32 @mlx4_MAD_IFC(ptr noundef %ibdev, i32 noundef %mad_ifc_flags.0, i32 noundef %port, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %data = getelementptr inbounds %struct.ib_smp, ptr %call7.i, i32 0, i32 15
  %rem = and i32 %conv, 31
  %arrayidx = getelementptr i16, ptr %data, i32 %rem
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 2
  %11 = ptrtoint ptr %pkey to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %pkey, align 2
  br label %out

out:                                              ; preds = %if.end13, %if.end.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ %call10, %if.end.out_crit_edge ], [ 0, %if.end13 ], [ -12, %entry.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #17
  tail call void @kfree(ptr noundef %call7.i) #17
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_add_mc(ptr noundef %mdev, ptr nocapture noundef readonly %mqp, ptr nocapture readnone %gid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %port = getelementptr inbounds %struct.mlx4_ib_qp, ptr %mqp, i32 0, i32 17
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %iboe = getelementptr inbounds %struct.mlx4_ib_dev, ptr %mdev, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %iboe) #17
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %port, align 4
  %conv = zext i8 %3 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.mlx4_ib_dev, ptr %mdev, i32 0, i32 14, i32 1, i32 %sub
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end10.critedge, label %do.body1.i

do.body1.i:                                       ; preds = %if.end
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !292
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %5, i32 0, i32 118
  %7 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcpu_refcnt.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !280) #17
  %and.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %13
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %15, %9
  %16 = inttoptr i32 %add.i to ptr
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  %add13.i = add i32 %18, 1
  store i32 %add13.i, ptr %16, align 4
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !293
  %and.i.i.i = and i32 %19, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.body1.i27_crit_edge, !prof !294

do.body1.i.do.body1.i27_crit_edge:                ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body1.i27

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.body1.i27

do.body1.i27:                                     ; preds = %if.then28.i, %do.body1.i.do.body1.i27_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #17, !srcloc !295
  tail call void @_raw_spin_unlock_bh(ptr noundef %iboe) #17
  %20 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !292
  %21 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcpu_refcnt.i, align 4
  %23 = ptrtoint ptr %22 to i32
  %24 = tail call i32 @llvm.read_register.i32(metadata !280) #17
  %and.i.i20 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i20 to ptr
  %cpu.i21 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu.i21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i21, align 4
  %arrayidx.i22 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i22, align 4
  %add.i23 = add i32 %29, %23
  %30 = inttoptr i32 %add.i23 to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %add13.i24 = add i32 %32, -1
  store i32 %add13.i24, ptr %30, align 4
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !293
  %and.i.i.i25 = and i32 %33, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i25)
  %tobool24.not.i26 = icmp eq i32 %and.i.i.i25, 0
  br i1 %tobool24.not.i26, label %if.then28.i28, label %do.body1.i27.dev_put.exit_crit_edge, !prof !294

do.body1.i27.dev_put.exit_crit_edge:              ; preds = %do.body1.i27
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_put.exit

if.then28.i28:                                    ; preds = %do.body1.i27
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i28, %do.body1.i27.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %20) #17, !srcloc !295
  br label %cleanup

if.end10.critedge:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_bh(ptr noundef %iboe) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end10.critedge, %dev_put.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %dev_put.exit ], [ 0, %if.end10.critedge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_steer_qp_alloc(ptr nocapture noundef readonly %dev, i32 noundef %count, ptr nocapture noundef writeonly %qpn) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ib_uc_qpns_bitmap = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 22
  %0 = ptrtoint ptr %ib_uc_qpns_bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ib_uc_qpns_bitmap, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !294

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2897, i32 noundef 9, ptr noundef null) #17
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %ib_uc_qpns_bitmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ib_uc_qpns_bitmap, align 8
  %steer_qpn_count = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 23
  %4 = ptrtoint ptr %steer_qpn_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %steer_qpn_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.i = icmp eq i32 %count, 0
  br i1 %cmp.i, label %if.end.get_count_order.exit_crit_edge, label %if.end.i

if.end.get_count_order.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_count_order.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %dec.i = add i32 %count, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #17, !range !296
  %sub.i.i = sub nuw nsw i32 32, %6
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  br label %get_count_order.exit

get_count_order.exit:                             ; preds = %if.end.i, %if.end.get_count_order.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i.i, %if.end.i ], [ -1, %if.end.get_count_order.exit_crit_edge ]
  %call22 = tail call i32 @bitmap_find_free_region(ptr noundef %3, i32 noundef %5, i32 noundef %retval.0.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %get_count_order.exit.cleanup_crit_edge, label %if.end24

get_count_order.exit.cleanup_crit_edge:           ; preds = %get_count_order.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end24:                                         ; preds = %get_count_order.exit
  call void @__sanitizer_cov_trace_pc() #19
  %steer_qpn_base = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 24
  %7 = ptrtoint ptr %steer_qpn_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %steer_qpn_base, align 8
  %add = add i32 %8, %call22
  %9 = ptrtoint ptr %qpn to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add, ptr %qpn, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %get_count_order.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ %call22, %get_count_order.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_steer_qp_free(ptr nocapture noundef readonly %dev, i32 noundef %qpn, i32 noundef %count) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %qpn)
  %tobool.not = icmp eq i32 %qpn, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %steering_support = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 25
  %0 = ptrtoint ptr %steering_support to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %steering_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.not = icmp eq i32 %1, 2
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %steer_qpn_base = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 24
  %2 = ptrtoint ptr %steer_qpn_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %steer_qpn_base, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %qpn)
  %cmp1 = icmp ugt i32 %3, %qpn
  br i1 %cmp1, label %do.end, label %if.end26.critedge, !prof !294

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2916, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %qpn, i32 noundef %3) #17
  br label %return

if.end26.critedge:                                ; preds = %if.end
  %ib_uc_qpns_bitmap = getelementptr inbounds %struct.mlx4_ib_dev, ptr %dev, i32 0, i32 22
  %4 = ptrtoint ptr %ib_uc_qpns_bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ib_uc_qpns_bitmap, align 8
  %sub = sub i32 %qpn, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.i = icmp eq i32 %count, 0
  br i1 %cmp.i, label %if.end26.critedge.get_count_order.exit_crit_edge, label %if.end.i

if.end26.critedge.get_count_order.exit_crit_edge: ; preds = %if.end26.critedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %get_count_order.exit

if.end.i:                                         ; preds = %if.end26.critedge
  call void @__sanitizer_cov_trace_pc() #19
  %dec.i = add i32 %count, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #17, !range !296
  %sub.i.i = sub nuw nsw i32 32, %6
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  br label %get_count_order.exit

get_count_order.exit:                             ; preds = %if.end.i, %if.end26.critedge.get_count_order.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i.i, %if.end.i ], [ -1, %if.end26.critedge.get_count_order.exit_crit_edge ]
  tail call void @bitmap_release_region(ptr noundef %5, i32 noundef %sub, i32 noundef %retval.0.i) #17
  br label %return

return:                                           ; preds = %get_count_order.exit, %do.end, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mlx4_ib_steer_qp_reg(ptr nocapture noundef readonly %mdev, ptr noundef %mqp, i32 noundef %is_attach) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_attach)
  %tobool.not = icmp eq i32 %is_attach, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 36) #21
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %port = getelementptr inbounds %struct.mlx4_ib_qp, ptr %mqp, i32 0, i32 17
  %1 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %port, align 4
  %conv = zext i8 %2 to i32
  %port3 = getelementptr inbounds %struct.ib_flow_attr, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %port3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %conv, ptr %port3, align 8
  %num_of_specs = getelementptr inbounds %struct.ib_flow_attr, ptr %call7.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %num_of_specs to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %num_of_specs, align 4
  %size = getelementptr inbounds %struct.ib_flow_attr, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 36, ptr %size, align 4
  %add.ptr = getelementptr %struct.ib_flow_attr, ptr %call7.i.i, i32 1
  %6 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 34, ptr %add.ptr, align 4
  %size5 = getelementptr %struct.ib_flow_attr, ptr %call7.i.i, i32 1, i32 1
  %7 = ptrtoint ptr %size5 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 16, ptr %size5, align 8
  %mask = getelementptr inbounds %struct.ib_flow_spec_ib, ptr %add.ptr, i32 0, i32 3
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_storeN_noabort(i32 %8, i32 4)
  store i32 0, ptr %mask, align 2
  %reg_id = getelementptr inbounds %struct.mlx4_ib_qp, ptr %mqp, i32 0, i32 30
  %call6 = tail call fastcc i32 @__mlx4_ib_create_flow(ptr noundef %mqp, ptr noundef nonnull %call7.i.i, i32 noundef 20480, i32 noundef 1, ptr noundef %reg_id)
  br label %if.end9

if.else:                                          ; preds = %entry
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %mdev, i32 0, i32 1
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 8
  %reg_id7 = getelementptr inbounds %struct.mlx4_ib_qp, ptr %mqp, i32 0, i32 30
  %11 = ptrtoint ptr %reg_id7 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %reg_id7, align 8
  %call.i.i = tail call i32 @__mlx4_cmd(ptr noundef %10, i64 noundef %12, ptr noundef null, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 102, i32 noundef 60000, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.else.if.end9_crit_edge, label %do.end.i

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end9

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i64 noundef %12) #22
  br label %if.end9

if.end9:                                          ; preds = %do.end.i, %if.else.if.end9_crit_edge, %if.end
  %err.0 = phi i32 [ %call6, %if.end ], [ 0, %if.else.if.end9_crit_edge ], [ %call.i.i, %do.end.i ]
  %flow.0 = phi ptr [ %call7.i.i, %if.end ], [ null, %if.else.if.end9_crit_edge ], [ null, %do.end.i ]
  tail call void @kfree(ptr noundef %flow.0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end9 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__mlx4_ib_create_flow(ptr nocapture noundef readonly %qp, ptr noundef %flow_attr, i32 noundef %domain, i32 noundef %flow_type, ptr noundef %reg_id) unnamed_addr #0 align 64 {
entry:
  %ib_spec.i = alloca %union.ib_flow_spec, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priority = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 2
  %0 = ptrtoint ptr %priority to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %priority, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4095, i16 %1)
  %cmp = icmp ugt i16 %1, 4095
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i16 %1 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %conv) #22
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qp, align 4
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %call5 = tail call i32 @mlx4_map_sw_to_hw_steering_mode(ptr noundef %5, i32 noundef %flow_type) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %call11 = tail call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %7) #17
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end15:                                         ; preds = %if.end9
  %9 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call11, align 4
  %11 = ptrtoint ptr %priority to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %priority, align 2
  %13 = trunc i32 %domain to i16
  %conv18 = or i16 %12, %13
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv18, ptr %10, align 4
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 8
  %call20 = tail call i32 @mlx4_map_sw_to_hw_steering_mode(ptr noundef %16, i32 noundef %flow_type) #17
  %conv21 = trunc i32 %call20 to i8
  %type = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv21, ptr %type, align 2
  %port = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 5
  %18 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %port, align 4
  %conv22 = trunc i32 %19 to i8
  %port23 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, ptr %10, i32 0, i32 6
  %20 = ptrtoint ptr %port23 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv22, ptr %port23, align 1
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 19
  %21 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %qp_num, align 4
  %qpn = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ctrl, ptr %10, i32 0, i32 7
  %23 = ptrtoint ptr %qpn to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %qpn, align 4
  %add.ptr = getelementptr %struct.ib_flow_attr, ptr %flow_attr, i32 1
  %24 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %qp, align 4
  %26 = load i32, ptr %port, align 4
  %call.i = tail call i32 @rdma_port_get_link_layer(ptr noundef %25, i32 noundef %26) #17
  %27 = trunc i32 %call.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %27)
  %cmp5.not.i = icmp eq i8 %27, 1
  br i1 %cmp5.not.i, label %if.end.i, label %if.end15.if.end38_crit_edge

if.end15.if.end38_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.end.i:                                         ; preds = %if.end15
  %num_of_specs.i = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 4
  %28 = ptrtoint ptr %num_of_specs.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %num_of_specs.i, align 4
  %conv10.i = zext i8 %29 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %cmp11.not.i = icmp eq i8 %29, 0
  br i1 %cmp11.not.i, label %if.end.i.if.then27_crit_edge, label %for.body13.i

if.end.i.if.then27_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27

for.body13.i:                                     ; preds = %if.end.i
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr, align 4
  %32 = and i32 %31, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %32)
  %cmp15.i = icmp ne i32 %32, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %31)
  %cmp20.not.i = icmp eq i32 %31, 48
  %or.cond.i = or i1 %cmp20.not.i, %cmp15.i
  br i1 %or.cond.i, label %if.end23.i, label %for.body13.i.if.end38_crit_edge

for.body13.i.if.end38_crit_edge:                  ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.end23.i:                                       ; preds = %for.body13.i
  br i1 %cmp20.not.i, label %if.then29.i, label %if.end23.i.for.inc.i_crit_edge

if.end23.i.for.inc.i_crit_edge:                   ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.then29.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #19
  %size.i = getelementptr %struct.ib_flow_attr, ptr %flow_attr, i32 1, i32 1
  %33 = ptrtoint ptr %size.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %size.i, align 4
  %conv30.i = zext i16 %34 to i32
  %add.ptr31.i = getelementptr i8, ptr %add.ptr, i32 %conv30.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then29.i, %if.end23.i.for.inc.i_crit_edge
  %j.2.ph.i = phi i32 [ 0, %if.end23.i.for.inc.i_crit_edge ], [ 1, %if.then29.i ]
  %ib_flow.2.ph.i = phi ptr [ %add.ptr, %if.end23.i.for.inc.i_crit_edge ], [ %add.ptr31.i, %if.then29.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.2.ph.i, i32 %conv10.i)
  %cmp11.1.i = icmp ult i32 %j.2.ph.i, %conv10.i
  br i1 %cmp11.1.i, label %for.body13.1.i, label %for.inc.i.for.cond41.preheader.i.preheader_crit_edge

for.inc.i.for.cond41.preheader.i.preheader_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond41.preheader.i.preheader

for.body13.1.i:                                   ; preds = %for.inc.i
  %35 = ptrtoint ptr %ib_flow.2.ph.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ib_flow.2.ph.i, align 4
  %37 = and i32 %36, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp15.1.i = icmp ne i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp20.not.1.i = icmp eq i32 %36, 0
  %or.cond.1.i = or i1 %cmp20.not.1.i, %cmp15.1.i
  br i1 %or.cond.1.i, label %if.end23.1.i, label %for.body13.1.i.if.end38_crit_edge

for.body13.1.i.if.end38_crit_edge:                ; preds = %for.body13.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.end23.1.i:                                     ; preds = %for.body13.1.i
  br i1 %cmp20.not.1.i, label %if.then29.1.i, label %if.end23.1.i.for.inc.1.i_crit_edge

if.end23.1.i.for.inc.1.i_crit_edge:               ; preds = %if.end23.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.1.i

if.then29.1.i:                                    ; preds = %if.end23.1.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc.1.i = add nuw nsw i32 %j.2.ph.i, 1
  %size.1.i = getelementptr inbounds %struct.anon.172, ptr %ib_flow.2.ph.i, i32 0, i32 1
  %38 = ptrtoint ptr %size.1.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %size.1.i, align 4
  %conv30.1.i = zext i16 %39 to i32
  %add.ptr31.1.i = getelementptr i8, ptr %ib_flow.2.ph.i, i32 %conv30.1.i
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.then29.1.i, %if.end23.1.i.for.inc.1.i_crit_edge
  %j.2.ph.1.i = phi i32 [ %j.2.ph.i, %if.end23.1.i.for.inc.1.i_crit_edge ], [ %inc.1.i, %if.then29.1.i ]
  %ib_flow.2.ph.1.i = phi ptr [ %ib_flow.2.ph.i, %if.end23.1.i.for.inc.1.i_crit_edge ], [ %add.ptr31.1.i, %if.then29.1.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.2.ph.1.i, i32 %conv10.i)
  %cmp11.2.i = icmp ult i32 %j.2.ph.1.i, %conv10.i
  br i1 %cmp11.2.i, label %for.body13.2.i, label %for.inc.1.i.for.cond41.preheader.i.preheader_crit_edge

for.inc.1.i.for.cond41.preheader.i.preheader_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond41.preheader.i.preheader

for.body13.2.i:                                   ; preds = %for.inc.1.i
  %40 = ptrtoint ptr %ib_flow.2.ph.1.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ib_flow.2.ph.1.i, align 4
  %42 = and i32 %41, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp15.2.i = icmp ne i32 %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp20.not.2.i = icmp eq i32 %41, 0
  %or.cond.2.i = or i1 %cmp20.not.2.i, %cmp15.2.i
  br i1 %or.cond.2.i, label %if.end23.2.i, label %for.body13.2.i.if.end38_crit_edge

for.body13.2.i.if.end38_crit_edge:                ; preds = %for.body13.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.end23.2.i:                                     ; preds = %for.body13.2.i
  br i1 %cmp20.not.2.i, label %if.then29.2.i, label %if.end23.2.i.for.inc.2.i_crit_edge

if.end23.2.i.for.inc.2.i_crit_edge:               ; preds = %if.end23.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.2.i

if.then29.2.i:                                    ; preds = %if.end23.2.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc.2.i = add nuw nsw i32 %j.2.ph.1.i, 1
  %size.2.i = getelementptr inbounds %struct.anon.172, ptr %ib_flow.2.ph.1.i, i32 0, i32 1
  %43 = ptrtoint ptr %size.2.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %size.2.i, align 4
  %conv30.2.i = zext i16 %44 to i32
  %add.ptr31.2.i = getelementptr i8, ptr %ib_flow.2.ph.1.i, i32 %conv30.2.i
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.then29.2.i, %if.end23.2.i.for.inc.2.i_crit_edge
  %j.2.ph.2.i = phi i32 [ %j.2.ph.1.i, %if.end23.2.i.for.inc.2.i_crit_edge ], [ %inc.2.i, %if.then29.2.i ]
  %ib_flow.2.ph.2.i = phi ptr [ %ib_flow.2.ph.1.i, %if.end23.2.i.for.inc.2.i_crit_edge ], [ %add.ptr31.2.i, %if.then29.2.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.2.ph.2.i, i32 %conv10.i)
  %cmp11.3.i = icmp ult i32 %j.2.ph.2.i, %conv10.i
  br i1 %cmp11.3.i, label %for.body13.3.i, label %for.inc.2.i.for.cond41.preheader.i.preheader_crit_edge

for.inc.2.i.for.cond41.preheader.i.preheader_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond41.preheader.i.preheader

for.body13.3.i:                                   ; preds = %for.inc.2.i
  %45 = ptrtoint ptr %ib_flow.2.ph.2.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %ib_flow.2.ph.2.i, align 4
  %47 = and i32 %46, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp15.3.i = icmp ne i32 %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp20.not.3.i = icmp eq i32 %46, 0
  %or.cond.3.i = or i1 %cmp20.not.3.i, %cmp15.3.i
  br i1 %or.cond.3.i, label %if.end23.3.i, label %for.body13.3.i.if.end38_crit_edge

for.body13.3.i.if.end38_crit_edge:                ; preds = %for.body13.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.end23.3.i:                                     ; preds = %for.body13.3.i
  br i1 %cmp20.not.3.i, label %if.then29.3.i, label %if.end23.3.i.for.inc.3.i_crit_edge

if.end23.3.i.for.inc.3.i_crit_edge:               ; preds = %if.end23.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.3.i

if.then29.3.i:                                    ; preds = %if.end23.3.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc.3.i = add nuw nsw i32 %j.2.ph.2.i, 1
  %size.3.i = getelementptr inbounds %struct.anon.172, ptr %ib_flow.2.ph.2.i, i32 0, i32 1
  %48 = ptrtoint ptr %size.3.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %size.3.i, align 4
  %conv30.3.i = zext i16 %49 to i32
  %add.ptr31.3.i = getelementptr i8, ptr %ib_flow.2.ph.2.i, i32 %conv30.3.i
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.then29.3.i, %if.end23.3.i.for.inc.3.i_crit_edge
  %j.2.ph.3.i = phi i32 [ %j.2.ph.2.i, %if.end23.3.i.for.inc.3.i_crit_edge ], [ %inc.3.i, %if.then29.3.i ]
  %ib_flow.2.ph.3.i = phi ptr [ %ib_flow.2.ph.2.i, %if.end23.3.i.for.inc.3.i_crit_edge ], [ %add.ptr31.3.i, %if.then29.3.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.2.ph.3.i, i32 %conv10.i)
  %cmp11.4.i = icmp ult i32 %j.2.ph.3.i, %conv10.i
  br i1 %cmp11.4.i, label %for.body13.4.i, label %for.inc.3.i.for.cond41.preheader.i.preheader_crit_edge

for.inc.3.i.for.cond41.preheader.i.preheader_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond41.preheader.i.preheader

for.body13.4.i:                                   ; preds = %for.inc.3.i
  %50 = ptrtoint ptr %ib_flow.2.ph.3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %ib_flow.2.ph.3.i, align 4
  %52 = and i32 %51, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp15.4.i = icmp ne i32 %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp20.not.4.i = icmp eq i32 %51, 0
  %or.cond.4.i = or i1 %cmp20.not.4.i, %cmp15.4.i
  br i1 %or.cond.4.i, label %if.end23.4.i, label %for.body13.4.i.if.end38_crit_edge

for.body13.4.i.if.end38_crit_edge:                ; preds = %for.body13.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.end23.4.i:                                     ; preds = %for.body13.4.i
  br i1 %cmp20.not.4.i, label %if.then29.4.i, label %if.end23.4.i.for.inc.4.i_crit_edge

if.end23.4.i.for.inc.4.i_crit_edge:               ; preds = %if.end23.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.4.i

if.then29.4.i:                                    ; preds = %if.end23.4.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc.4.i = add nuw nsw i32 %j.2.ph.3.i, 1
  %size.4.i = getelementptr inbounds %struct.anon.172, ptr %ib_flow.2.ph.3.i, i32 0, i32 1
  %53 = ptrtoint ptr %size.4.i to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %size.4.i, align 4
  %conv30.4.i = zext i16 %54 to i32
  %add.ptr31.4.i = getelementptr i8, ptr %ib_flow.2.ph.3.i, i32 %conv30.4.i
  br label %for.inc.4.i

for.inc.4.i:                                      ; preds = %if.then29.4.i, %if.end23.4.i.for.inc.4.i_crit_edge
  %j.2.ph.4.i = phi i32 [ %j.2.ph.3.i, %if.end23.4.i.for.inc.4.i_crit_edge ], [ %inc.4.i, %if.then29.4.i ]
  %ib_flow.2.ph.4.i = phi ptr [ %ib_flow.2.ph.3.i, %if.end23.4.i.for.inc.4.i_crit_edge ], [ %add.ptr31.4.i, %if.then29.4.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.2.ph.4.i, i32 %conv10.i)
  %cmp11.5.i = icmp ult i32 %j.2.ph.4.i, %conv10.i
  br i1 %cmp11.5.i, label %for.body13.5.i, label %for.inc.4.i.for.cond41.preheader.i.preheader_crit_edge

for.inc.4.i.for.cond41.preheader.i.preheader_crit_edge: ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond41.preheader.i.preheader

for.body13.5.i:                                   ; preds = %for.inc.4.i
  %55 = ptrtoint ptr %ib_flow.2.ph.4.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ib_flow.2.ph.4.i, align 4
  %57 = and i32 %56, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %cmp15.5.i = icmp ne i32 %57, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp20.not.5.i = icmp eq i32 %56, 0
  %or.cond.5.i = or i1 %cmp20.not.5.i, %cmp15.5.i
  br i1 %or.cond.5.i, label %if.end23.5.i, label %for.body13.5.i.if.end38_crit_edge

for.body13.5.i.if.end38_crit_edge:                ; preds = %for.body13.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.end23.5.i:                                     ; preds = %for.body13.5.i
  br i1 %cmp20.not.5.i, label %if.then29.5.i, label %if.end23.5.i.for.inc.5.i_crit_edge

if.end23.5.i.for.inc.5.i_crit_edge:               ; preds = %if.end23.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.5.i

if.then29.5.i:                                    ; preds = %if.end23.5.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc.5.i = add nuw nsw i32 %j.2.ph.4.i, 1
  %size.5.i = getelementptr inbounds %struct.anon.172, ptr %ib_flow.2.ph.4.i, i32 0, i32 1
  %58 = ptrtoint ptr %size.5.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %size.5.i, align 4
  %conv30.5.i = zext i16 %59 to i32
  %add.ptr31.5.i = getelementptr i8, ptr %ib_flow.2.ph.4.i, i32 %conv30.5.i
  br label %for.inc.5.i

for.inc.5.i:                                      ; preds = %if.then29.5.i, %if.end23.5.i.for.inc.5.i_crit_edge
  %j.2.ph.5.i = phi i32 [ %j.2.ph.4.i, %if.end23.5.i.for.inc.5.i_crit_edge ], [ %inc.5.i, %if.then29.5.i ]
  %ib_flow.2.ph.5.i = phi ptr [ %ib_flow.2.ph.4.i, %if.end23.5.i.for.inc.5.i_crit_edge ], [ %add.ptr31.5.i, %if.then29.5.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.2.ph.5.i, i32 %conv10.i)
  %cmp11.6.i = icmp ult i32 %j.2.ph.5.i, %conv10.i
  br i1 %cmp11.6.i, label %for.body13.6.i, label %for.inc.5.i.for.cond41.preheader.i.preheader_crit_edge

for.inc.5.i.for.cond41.preheader.i.preheader_crit_edge: ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond41.preheader.i.preheader

for.body13.6.i:                                   ; preds = %for.inc.5.i
  %60 = ptrtoint ptr %ib_flow.2.ph.5.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ib_flow.2.ph.5.i, align 4
  %62 = and i32 %61, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp15.6.i = icmp ne i32 %62, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp20.not.6.i = icmp eq i32 %61, 0
  %or.cond.6.i = or i1 %cmp20.not.6.i, %cmp15.6.i
  br i1 %or.cond.6.i, label %if.end23.6.i, label %for.body13.6.i.if.end38_crit_edge

for.body13.6.i.if.end38_crit_edge:                ; preds = %for.body13.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.end23.6.i:                                     ; preds = %for.body13.6.i
  br i1 %cmp20.not.6.i, label %if.then29.6.i, label %if.end23.6.i.for.inc.6.i_crit_edge

if.end23.6.i.for.inc.6.i_crit_edge:               ; preds = %if.end23.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.6.i

if.then29.6.i:                                    ; preds = %if.end23.6.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc.6.i = add nuw nsw i32 %j.2.ph.5.i, 1
  %size.6.i = getelementptr inbounds %struct.anon.172, ptr %ib_flow.2.ph.5.i, i32 0, i32 1
  %63 = ptrtoint ptr %size.6.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %size.6.i, align 4
  %conv30.6.i = zext i16 %64 to i32
  %add.ptr31.6.i = getelementptr i8, ptr %ib_flow.2.ph.5.i, i32 %conv30.6.i
  br label %for.inc.6.i

for.inc.6.i:                                      ; preds = %if.then29.6.i, %if.end23.6.i.for.inc.6.i_crit_edge
  %j.2.ph.6.i = phi i32 [ %j.2.ph.5.i, %if.end23.6.i.for.inc.6.i_crit_edge ], [ %inc.6.i, %if.then29.6.i ]
  %ib_flow.2.ph.6.i = phi ptr [ %ib_flow.2.ph.5.i, %if.end23.6.i.for.inc.6.i_crit_edge ], [ %add.ptr31.6.i, %if.then29.6.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.2.ph.6.i, i32 %conv10.i)
  %cmp11.7.i = icmp ult i32 %j.2.ph.6.i, %conv10.i
  br i1 %cmp11.7.i, label %for.body13.7.i, label %for.inc.6.i.for.cond41.preheader.i.preheader_crit_edge

for.inc.6.i.for.cond41.preheader.i.preheader_crit_edge: ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond41.preheader.i.preheader

for.body13.7.i:                                   ; preds = %for.inc.6.i
  %65 = ptrtoint ptr %ib_flow.2.ph.6.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ib_flow.2.ph.6.i, align 4
  %67 = and i32 %66, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp15.7.i = icmp ne i32 %67, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %cmp20.not.7.i = icmp eq i32 %66, 0
  %or.cond.7.i = or i1 %cmp20.not.7.i, %cmp15.7.i
  br i1 %or.cond.7.i, label %if.end23.7.i, label %for.body13.7.i.if.end38_crit_edge

for.body13.7.i.if.end38_crit_edge:                ; preds = %for.body13.7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.end23.7.i:                                     ; preds = %for.body13.7.i
  br i1 %cmp20.not.7.i, label %if.then29.7.i, label %if.end23.7.i.for.inc.7.i_crit_edge

if.end23.7.i.for.inc.7.i_crit_edge:               ; preds = %if.end23.7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.7.i

if.then29.7.i:                                    ; preds = %if.end23.7.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc.7.i = add nuw nsw i32 %j.2.ph.6.i, 1
  %size.7.i = getelementptr inbounds %struct.anon.172, ptr %ib_flow.2.ph.6.i, i32 0, i32 1
  %68 = ptrtoint ptr %size.7.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %size.7.i, align 4
  %conv30.7.i = zext i16 %69 to i32
  %add.ptr31.7.i = getelementptr i8, ptr %ib_flow.2.ph.6.i, i32 %conv30.7.i
  br label %for.inc.7.i

for.inc.7.i:                                      ; preds = %if.then29.7.i, %if.end23.7.i.for.inc.7.i_crit_edge
  %j.2.ph.7.i = phi i32 [ %j.2.ph.6.i, %if.end23.7.i.for.inc.7.i_crit_edge ], [ %inc.7.i, %if.then29.7.i ]
  %ib_flow.2.ph.7.i = phi ptr [ %ib_flow.2.ph.6.i, %if.end23.7.i.for.inc.7.i_crit_edge ], [ %add.ptr31.7.i, %if.then29.7.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.2.ph.7.i, i32 %conv10.i)
  %cmp11.8.i = icmp ult i32 %j.2.ph.7.i, %conv10.i
  br i1 %cmp11.8.i, label %for.body13.8.i, label %for.inc.7.i.for.cond41.preheader.i.preheader_crit_edge

for.inc.7.i.for.cond41.preheader.i.preheader_crit_edge: ; preds = %for.inc.7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond41.preheader.i.preheader

for.body13.8.i:                                   ; preds = %for.inc.7.i
  %70 = ptrtoint ptr %ib_flow.2.ph.7.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %ib_flow.2.ph.7.i, align 4
  %72 = and i32 %71, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp15.8.i = icmp ne i32 %72, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp20.not.8.i = icmp eq i32 %71, 0
  %or.cond.8.i = or i1 %cmp20.not.8.i, %cmp15.8.i
  br i1 %or.cond.8.i, label %if.end23.8.i, label %for.body13.8.i.if.end38_crit_edge

for.body13.8.i.if.end38_crit_edge:                ; preds = %for.body13.8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.end23.8.i:                                     ; preds = %for.body13.8.i
  br i1 %cmp20.not.8.i, label %if.then29.8.i, label %if.end23.8.i.for.inc.8.i_crit_edge

if.end23.8.i.for.inc.8.i_crit_edge:               ; preds = %if.end23.8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.8.i

if.then29.8.i:                                    ; preds = %if.end23.8.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc.8.i = add nuw nsw i32 %j.2.ph.7.i, 1
  %size.8.i = getelementptr inbounds %struct.anon.172, ptr %ib_flow.2.ph.7.i, i32 0, i32 1
  %73 = ptrtoint ptr %size.8.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %size.8.i, align 4
  %conv30.8.i = zext i16 %74 to i32
  %add.ptr31.8.i = getelementptr i8, ptr %ib_flow.2.ph.7.i, i32 %conv30.8.i
  br label %for.inc.8.i

for.inc.8.i:                                      ; preds = %if.then29.8.i, %if.end23.8.i.for.inc.8.i_crit_edge
  %j.2.ph.8.i = phi i32 [ %j.2.ph.7.i, %if.end23.8.i.for.inc.8.i_crit_edge ], [ %inc.8.i, %if.then29.8.i ]
  %ib_flow.2.ph.8.i = phi ptr [ %ib_flow.2.ph.7.i, %if.end23.8.i.for.inc.8.i_crit_edge ], [ %add.ptr31.8.i, %if.then29.8.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %j.2.ph.8.i, i32 %conv10.i)
  %cmp11.9.i = icmp ult i32 %j.2.ph.8.i, %conv10.i
  br i1 %cmp11.9.i, label %for.body13.9.i, label %for.inc.8.i.for.cond41.preheader.i.preheader_crit_edge

for.inc.8.i.for.cond41.preheader.i.preheader_crit_edge: ; preds = %for.inc.8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond41.preheader.i.preheader

for.body13.9.i:                                   ; preds = %for.inc.8.i
  %75 = ptrtoint ptr %ib_flow.2.ph.8.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ib_flow.2.ph.8.i, align 4
  %77 = and i32 %76, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp15.9.i = icmp ne i32 %77, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp20.not.9.i = icmp eq i32 %76, 0
  %or.cond.9.i = or i1 %cmp20.not.9.i, %cmp15.9.i
  br i1 %or.cond.9.i, label %for.body13.9.i.for.cond41.preheader.i.preheader_crit_edge, label %for.body13.9.i.if.end38_crit_edge

for.body13.9.i.if.end38_crit_edge:                ; preds = %for.body13.9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

for.body13.9.i.for.cond41.preheader.i.preheader_crit_edge: ; preds = %for.body13.9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond41.preheader.i.preheader

for.cond41.preheader.i.preheader:                 ; preds = %for.body13.9.i.for.cond41.preheader.i.preheader_crit_edge, %for.inc.8.i.for.cond41.preheader.i.preheader_crit_edge, %for.inc.7.i.for.cond41.preheader.i.preheader_crit_edge, %for.inc.6.i.for.cond41.preheader.i.preheader_crit_edge, %for.inc.5.i.for.cond41.preheader.i.preheader_crit_edge, %for.inc.4.i.for.cond41.preheader.i.preheader_crit_edge, %for.inc.3.i.for.cond41.preheader.i.preheader_crit_edge, %for.inc.2.i.for.cond41.preheader.i.preheader_crit_edge, %for.inc.1.i.for.cond41.preheader.i.preheader_crit_edge, %for.inc.i.for.cond41.preheader.i.preheader_crit_edge
  br label %for.cond41.preheader.i

for.cond41.preheader.i:                           ; preds = %for.cond41.9.i.for.cond41.preheader.i_crit_edge, %for.cond41.preheader.i.preheader
  %ib_flow.3120.i = phi ptr [ %add.ptr58.i, %for.cond41.9.i.for.cond41.preheader.i_crit_edge ], [ %add.ptr, %for.cond41.preheader.i.preheader ]
  %j.3119.i = phi i32 [ %inc55.i, %for.cond41.9.i.for.cond41.preheader.i_crit_edge ], [ 0, %for.cond41.preheader.i.preheader ]
  %78 = ptrtoint ptr %ib_flow.3120.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %ib_flow.3120.i, align 4
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %79, label %for.cond41.9.i [
    i32 32, label %for.cond41.preheader.i.if.end38_crit_edge
    i32 0, label %for.cond41.preheader.i.if.end38_crit_edge190
  ]

for.cond41.preheader.i.if.end38_crit_edge190:     ; preds = %for.cond41.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

for.cond41.preheader.i.if.end38_crit_edge:        ; preds = %for.cond41.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

for.cond41.9.i:                                   ; preds = %for.cond41.preheader.i
  %inc55.i = add nuw nsw i32 %j.3119.i, 1
  %size56.i = getelementptr inbounds %struct.anon.172, ptr %ib_flow.3120.i, i32 0, i32 1
  %81 = ptrtoint ptr %size56.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %size56.i, align 4
  %conv57.i = zext i16 %82 to i32
  %add.ptr58.i = getelementptr i8, ptr %ib_flow.3120.i, i32 %conv57.i
  %exitcond.not.i = icmp eq i32 %inc55.i, %conv10.i
  br i1 %exitcond.not.i, label %for.cond41.9.i.if.then27_crit_edge, label %for.cond41.9.i.for.cond41.preheader.i_crit_edge

for.cond41.9.i.for.cond41.preheader.i_crit_edge:  ; preds = %for.cond41.9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond41.preheader.i

for.cond41.9.i.if.then27_crit_edge:               ; preds = %for.cond41.9.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then27

if.then27:                                        ; preds = %for.cond41.9.i.if.then27_crit_edge, %if.end.i.if.then27_crit_edge
  %83 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %call11, align 4
  %add.ptr30 = getelementptr i8, ptr %84, i32 16
  %size2.i = getelementptr inbounds %struct.anon.172, ptr %ib_spec.i, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i169.for.body.i_crit_edge, %if.then27
  %i.08.i = phi i32 [ 0, %if.then27 ], [ %inc.i, %for.inc.i169.for.body.i_crit_edge ]
  %size.07.i = phi i32 [ 0, %if.then27 ], [ %size.1.i167, %for.inc.i169.for.body.i_crit_edge ]
  %mlx4_spec.addr.06.i = phi ptr [ %add.ptr30, %if.then27 ], [ %mlx4_spec.addr.1.i, %for.inc.i169.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %ib_spec.i) #17
  %85 = call ptr @memcpy(ptr %ib_spec.i, ptr @__const.__mlx4_ib_create_default_rules.ib_spec, i32 88)
  %arrayidx.i = getelementptr %struct.default_rules, ptr @default_table, i32 0, i32 2, i32 %i.08.i
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %87, label %for.body.i.__mlx4_ib_create_default_rules.exit.thread_crit_edge [
    i32 0, label %for.body.i.for.inc.i169_crit_edge
    i32 34, label %sw.bb1.i
  ]

for.body.i.for.inc.i169_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i169

for.body.i.__mlx4_ib_create_default_rules.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %__mlx4_ib_create_default_rules.exit.thread

sw.bb1.i:                                         ; preds = %for.body.i
  %89 = ptrtoint ptr %ib_spec.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 34, ptr %ib_spec.i, align 4
  %90 = ptrtoint ptr %size2.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 16, ptr %size2.i, align 4
  %91 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev, align 8
  %call.i164 = call fastcc i32 @parse_flow_attr(ptr noundef %92, i32 noundef 0, ptr noundef nonnull %ib_spec.i, ptr noundef %mlx4_spec.addr.06.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i164)
  %cmp3.i = icmp slt i32 %call.i164, 0
  br i1 %cmp3.i, label %do.end.i, label %if.end.i166

do.end.i:                                         ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #19
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #22
  br label %__mlx4_ib_create_default_rules.exit.thread

if.end.i166:                                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i165 = getelementptr i8, ptr %mlx4_spec.addr.06.i, i32 %call.i164
  %add.i = add i32 %call.i164, %size.07.i
  br label %for.inc.i169

__mlx4_ib_create_default_rules.exit.thread:       ; preds = %do.end.i, %for.body.i.__mlx4_ib_create_default_rules.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ib_spec.i) #17
  br label %if.then34

for.inc.i169:                                     ; preds = %if.end.i166, %for.body.i.for.inc.i169_crit_edge
  %mlx4_spec.addr.1.i = phi ptr [ %add.ptr.i165, %if.end.i166 ], [ %mlx4_spec.addr.06.i, %for.body.i.for.inc.i169_crit_edge ]
  %size.1.i167 = phi i32 [ %add.i, %if.end.i166 ], [ %size.07.i, %for.body.i.for.inc.i169_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %ib_spec.i) #17
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i168 = icmp eq i32 %inc.i, 10
  br i1 %exitcond.not.i168, label %__mlx4_ib_create_default_rules.exit, label %for.inc.i169.for.body.i_crit_edge

for.inc.i169.for.body.i_crit_edge:                ; preds = %for.inc.i169
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

__mlx4_ib_create_default_rules.exit:              ; preds = %for.inc.i169
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.1.i167)
  %cmp32 = icmp slt i32 %size.1.i167, 0
  br i1 %cmp32, label %__mlx4_ib_create_default_rules.exit.if.then34_crit_edge, label %if.end36

__mlx4_ib_create_default_rules.exit.if.then34_crit_edge: ; preds = %__mlx4_ib_create_default_rules.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then34

if.then34:                                        ; preds = %__mlx4_ib_create_default_rules.exit.if.then34_crit_edge, %__mlx4_ib_create_default_rules.exit.thread
  %93 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev, align 8
  call void @mlx4_free_cmd_mailbox(ptr noundef %94, ptr noundef %call11) #17
  br label %cleanup

if.end36:                                         ; preds = %__mlx4_ib_create_default_rules.exit
  call void @__sanitizer_cov_trace_pc() #19
  %add37 = add nuw i32 %size.1.i167, 16
  br label %if.end38

if.end38:                                         ; preds = %if.end36, %for.cond41.preheader.i.if.end38_crit_edge, %for.cond41.preheader.i.if.end38_crit_edge190, %for.body13.9.i.if.end38_crit_edge, %for.body13.8.i.if.end38_crit_edge, %for.body13.7.i.if.end38_crit_edge, %for.body13.6.i.if.end38_crit_edge, %for.body13.5.i.if.end38_crit_edge, %for.body13.4.i.if.end38_crit_edge, %for.body13.3.i.if.end38_crit_edge, %for.body13.2.i.if.end38_crit_edge, %for.body13.1.i.if.end38_crit_edge, %for.body13.i.if.end38_crit_edge, %if.end15.if.end38_crit_edge
  %size.0 = phi i32 [ %add37, %if.end36 ], [ 16, %if.end15.if.end38_crit_edge ], [ 16, %for.body13.9.i.if.end38_crit_edge ], [ 16, %for.body13.8.i.if.end38_crit_edge ], [ 16, %for.body13.7.i.if.end38_crit_edge ], [ 16, %for.body13.6.i.if.end38_crit_edge ], [ 16, %for.body13.5.i.if.end38_crit_edge ], [ 16, %for.body13.4.i.if.end38_crit_edge ], [ 16, %for.body13.3.i.if.end38_crit_edge ], [ 16, %for.body13.2.i.if.end38_crit_edge ], [ 16, %for.body13.1.i.if.end38_crit_edge ], [ 16, %for.body13.i.if.end38_crit_edge ], [ 16, %for.cond41.preheader.i.if.end38_crit_edge ], [ 16, %for.cond41.preheader.i.if.end38_crit_edge190 ]
  %num_of_specs = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 4
  %95 = ptrtoint ptr %num_of_specs to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %num_of_specs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %96)
  %cmp40180.not = icmp eq i8 %96, 0
  br i1 %cmp40180.not, label %if.end38.for.end_crit_edge, label %if.end38.for.body_crit_edge

if.end38.for.body_crit_edge:                      ; preds = %if.end38
  br label %for.body

if.end38.for.end_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %if.end51.for.body_crit_edge, %if.end38.for.body_crit_edge
  %i.0183 = phi i32 [ %inc, %if.end51.for.body_crit_edge ], [ 0, %if.end38.for.body_crit_edge ]
  %size.1182 = phi i32 [ %add55, %if.end51.for.body_crit_edge ], [ %size.0, %if.end38.for.body_crit_edge ]
  %ib_flow.0181 = phi ptr [ %add.ptr54, %if.end51.for.body_crit_edge ], [ %add.ptr, %if.end38.for.body_crit_edge ]
  %97 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev, align 8
  %99 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %qp_num, align 4
  %101 = ptrtoint ptr %call11 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %call11, align 4
  %add.ptr45 = getelementptr i8, ptr %102, i32 %size.1182
  %call46 = call fastcc i32 @parse_flow_attr(ptr noundef %98, i32 noundef %100, ptr noundef %ib_flow.0181, ptr noundef %add.ptr45)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then49, label %if.end51

if.then49:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %103 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev, align 8
  call void @mlx4_free_cmd_mailbox(ptr noundef %104, ptr noundef %call11) #17
  br label %cleanup

if.end51:                                         ; preds = %for.body
  %size52 = getelementptr inbounds %struct.anon.172, ptr %ib_flow.0181, i32 0, i32 1
  %105 = ptrtoint ptr %size52 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %size52, align 4
  %conv53 = zext i16 %106 to i32
  %add.ptr54 = getelementptr i8, ptr %ib_flow.0181, i32 %conv53
  %add55 = add i32 %call46, %size.1182
  %inc = add nuw nsw i32 %i.0183, 1
  %107 = ptrtoint ptr %num_of_specs to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %num_of_specs, align 4
  %conv39 = zext i8 %108 to i32
  %cmp40 = icmp ult i32 %inc, %conv39
  br i1 %cmp40, label %if.end51.for.body_crit_edge, label %for.end.loopexit

if.end51.for.body_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %108)
  %phi.cmp = icmp eq i8 %108, 1
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %if.end38.for.end_crit_edge
  %size.1.lcssa = phi i32 [ %size.0, %if.end38.for.end_crit_edge ], [ %add55, %for.end.loopexit ]
  %.lcssa = phi i1 [ false, %if.end38.for.end_crit_edge ], [ %phi.cmp, %for.end.loopexit ]
  %109 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %dev, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %112, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %flow_type)
  %cmp58 = icmp eq i32 %flow_type, 1
  %or.cond = and i1 %cmp58, %tobool.not
  %or.cond176 = select i1 %or.cond, i1 %.lcssa, i1 false
  br i1 %or.cond176, label %if.then65, label %for.end.if.end73_crit_edge

for.end.if.end73_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end73

if.then65:                                        ; preds = %for.end
  %113 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %114)
  %cmp69 = icmp eq i32 %114, 32
  br i1 %cmp69, label %if.then71, label %if.then65.if.end73_crit_edge

if.then65.if.end73_crit_edge:                     ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end73

if.then71:                                        ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr66 = getelementptr %struct.mlx4_net_trans_rule_hw_ctrl, ptr %10, i32 1
  call void @mlx4_handle_eth_header_mcast_prio(ptr noundef %10, ptr noundef %add.ptr66) #17
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.then65.if.end73_crit_edge, %for.end.if.end73_crit_edge
  %115 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev, align 8
  %dma = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call11, i32 0, i32 1
  %117 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dma, align 4
  %conv75 = zext i32 %118 to i64
  %shr = ashr i32 %size.1.lcssa, 2
  %call.i171 = call i32 @__mlx4_cmd(ptr noundef %116, i64 noundef %conv75, ptr noundef %reg_id, i32 noundef 1, i32 noundef %shr, i8 noundef zeroext 0, i16 noundef zeroext 101, i32 noundef 60000, i32 noundef 1) #17
  %119 = zext i32 %call.i171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %119, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %call.i171, label %do.end98 [
    i32 -12, label %if.end73.if.end103.sink.split_crit_edge
    i32 -6, label %do.end90
    i32 0, label %if.end73.if.end103_crit_edge
  ]

if.end73.if.end103_crit_edge:                     ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end103

if.end73.if.end103.sink.split_crit_edge:          ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end103.sink.split

do.end90:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end103.sink.split

do.end98:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end103.sink.split

if.end103.sink.split:                             ; preds = %do.end98, %do.end90, %if.end73.if.end103.sink.split_crit_edge
  %.str.14.sink = phi ptr [ @.str.14, %do.end90 ], [ @.str.17, %do.end98 ], [ @.str.11, %if.end73.if.end103.sink.split_crit_edge ]
  %call92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.14.sink, ptr noundef nonnull @.str.9) #22
  br label %if.end103

if.end103:                                        ; preds = %if.end103.sink.split, %if.end73.if.end103_crit_edge
  %120 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %dev, align 8
  call void @mlx4_free_cmd_mailbox(ptr noundef %121, ptr noundef %call11) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end103, %if.then49, %if.then34, %if.then13, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %8, %if.then13 ], [ -22, %if.then34 ], [ -22, %if.then49 ], [ %call.i171, %if.end103 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_ib_sl2vl_update(ptr noundef %mdev, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  %sl2vl = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sl2vl) #17
  %0 = ptrtoint ptr %sl2vl to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %sl2vl, align 8, !annotation !297
  %call = call fastcc i32 @mlx4_ib_query_sl2vl(ptr noundef %mdev, i32 noundef %port, ptr noundef nonnull %sl2vl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %port, i32 noundef %call) #22
  %1 = ptrtoint ptr %sl2vl to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %sl2vl, align 8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %sub = add i32 %port, -1
  %arrayidx = getelementptr %struct.mlx4_ib_dev, ptr %mdev, i32 0, i32 10, i32 %sub
  %2 = ptrtoint ptr %sl2vl to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sl2vl, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 8) #17
  tail call void @generic_atomic64_set(ptr noundef %arrayidx, i64 noundef %3) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sl2vl) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx4_ib_query_sl2vl(ptr noundef %ibdev, i32 noundef %port, ptr nocapture noundef writeonly %sl2vl_tbl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %4 = ptrtoint ptr %sl2vl_tbl to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %sl2vl_tbl, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 256) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 256) #21
  %tobool4.not = icmp eq ptr %call7.i.i, null
  %tobool5.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool4.not, i1 true, i1 %tobool5.not
  br i1 %or.cond, label %if.end.out_crit_edge, label %if.end7

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16843009, ptr %call7.i.i, align 8
  %attr_id = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 8
  %8 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 23, ptr %attr_id, align 8
  %attr_mod = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 10
  %9 = ptrtoint ptr %attr_mod to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %attr_mod, align 4
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %flags.i41 = getelementptr inbounds %struct.mlx4_dev, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i41 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i41, align 4
  %and.i42 = and i32 %13, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i42)
  %tobool11.not = icmp eq i32 %and.i42, 0
  %spec.select = select i1 %tobool11.not, i32 3, i32 7
  %call15 = tail call i32 @mlx4_MAD_IFC(ptr noundef %ibdev, i32 noundef %spec.select, i32 noundef %port, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %for.body.preheader, label %if.end7.out_crit_edge

if.end7.out_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

for.body.preheader:                               ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  %uglygep = getelementptr i8, ptr %call7.i, i32 64
  %14 = ptrtoint ptr %uglygep to i32
  call void @__asan_load8_noabort(i32 %14)
  %sl2vl64.sroa.0.0.copyload = load i64, ptr %uglygep, align 8
  %15 = ptrtoint ptr %sl2vl_tbl to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %sl2vl64.sroa.0.0.copyload, ptr %sl2vl_tbl, align 8
  br label %out

out:                                              ; preds = %for.body.preheader, %if.end7.out_crit_edge, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call15, %if.end7.out_crit_edge ], [ 0, %for.body.preheader ], [ -12, %if.end.out_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #17
  tail call void @kfree(ptr noundef %call7.i) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %err.0, %out ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mlx4_sched_ib_sl2vl_update_work(ptr noundef %ibdev, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 84) #21
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #17
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @mlx4_sched_ib_sl2vl_update_work.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry4 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry4, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @ib_sl2vl_update_work, ptr %func, align 4
  %port6 = getelementptr inbounds %struct.ib_event_work, ptr %call7.i, i32 0, i32 3
  %5 = ptrtoint ptr %port6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %port, ptr %port6, align 8
  %ib_dev = getelementptr inbounds %struct.ib_event_work, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %ib_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %ibdev, ptr %ib_dev, align 4
  %7 = load ptr, ptr @wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %7, ptr noundef nonnull %call7.i) #17
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ib_sl2vl_update_work(ptr noundef %work) #0 align 64 {
entry:
  %sl2vl.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ib_dev = getelementptr inbounds %struct.ib_event_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ib_dev, align 4
  %port1 = getelementptr inbounds %struct.ib_event_work, ptr %work, i32 0, i32 3
  %2 = ptrtoint ptr %port1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sl2vl.i) #17
  %4 = ptrtoint ptr %sl2vl.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %sl2vl.i, align 8, !annotation !297
  %call.i = call fastcc i32 @mlx4_ib_query_sl2vl(ptr noundef %1, i32 noundef %3, ptr noundef nonnull %sl2vl.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.mlx4_ib_sl2vl_update.exit_crit_edge, label %do.end.i

entry.mlx4_ib_sl2vl_update.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlx4_ib_sl2vl_update.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %3, i32 noundef %call.i) #22
  %5 = ptrtoint ptr %sl2vl.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %sl2vl.i, align 8
  br label %mlx4_ib_sl2vl_update.exit

mlx4_ib_sl2vl_update.exit:                        ; preds = %do.end.i, %entry.mlx4_ib_sl2vl_update.exit_crit_edge
  %sub.i = add i32 %3, -1
  %arrayidx.i = getelementptr %struct.mlx4_ib_dev, ptr %1, i32 0, i32 10, i32 %sub.i
  %6 = ptrtoint ptr %sl2vl.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %sl2vl.i, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i, i32 noundef 8) #17
  tail call void @generic_atomic64_set(ptr noundef %arrayidx.i, i64 noundef %7) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sl2vl.i) #17
  tail call void @kfree(ptr noundef %work) #17
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_ib_cleanup() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mlx4_unregister_interface(ptr noundef nonnull @mlx4_ib_interface) #17
  tail call void @mlx4_ib_mcg_destroy() #17
  %0 = load ptr, ptr @wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_unregister_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_mcg_destroy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.73, i32 noundef 655370, i32 noundef 1) #17
  store ptr %call, ptr @wq, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mlx4_ib_mcg_init() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.clean_wq_crit_edge

if.end.clean_wq_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %clean_wq

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @mlx4_register_interface(ptr noundef nonnull @mlx4_ib_interface) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %clean_mcg

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

clean_mcg:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mlx4_ib_mcg_destroy() #17
  br label %clean_wq

clean_wq:                                         ; preds = %clean_mcg, %if.end.clean_wq_crit_edge
  %err.0 = phi i32 [ %call1, %if.end.clean_wq_crit_edge ], [ %call5, %clean_mcg ]
  %0 = load ptr, ptr @wq, align 4
  tail call void @destroy_workqueue(ptr noundef %0) #17
  br label %cleanup

cleanup:                                          ; preds = %clean_wq, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %clean_wq ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx4_alloc_cmd_mailbox(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_master_upper_dev_get_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_free_cmd_mailbox(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__mlx4_cmd(ptr noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_map_sw_to_hw_steering_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_flow_attr(ptr noundef %dev, i32 noundef %qp_num, ptr noundef %ib_spec, ptr nocapture noundef writeonly %mlx4_spec) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ib_spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ib_spec, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 32, label %sw.bb
    i32 34, label %sw.bb13
    i32 48, label %sw.bb20
    i32 64, label %entry.sw.bb36_crit_edge
    i32 65, label %entry.sw.bb36_crit_edge103
  ]

entry.sw.bb36_crit_edge103:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb36

entry.sw.bb36_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb36

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %vlan_tag = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %ib_spec, i32 0, i32 3, i32 3
  %add.ptr = getelementptr i8, ptr %vlan_tag, i32 2
  %call = tail call ptr @memchr_inv(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 0) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %mask = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %ib_spec, i32 0, i32 3
  %dst_mac = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_eth, ptr %mlx4_spec, i32 0, i32 4
  %val = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %ib_spec, i32 0, i32 2
  %3 = call ptr @memcpy(ptr %dst_mac, ptr %val, i32 6)
  %dst_mac_msk = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_eth, ptr %mlx4_spec, i32 0, i32 6
  %4 = call ptr @memcpy(ptr %dst_mac_msk, ptr %mask, i32 6)
  %vlan_tag9 = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %ib_spec, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %vlan_tag9 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %vlan_tag9, align 2
  %vlan_tag10 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_eth, ptr %mlx4_spec, i32 0, i32 15
  %7 = ptrtoint ptr %vlan_tag10 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %vlan_tag10, align 2
  %8 = ptrtoint ptr %vlan_tag to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %vlan_tag, align 2
  %vlan_tag_msk = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_eth, ptr %mlx4_spec, i32 0, i32 14
  %10 = ptrtoint ptr %vlan_tag_msk to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %vlan_tag_msk, align 2
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %add.ptr15 = getelementptr %struct.ib_flow_spec_ib, ptr %ib_spec, i32 0, i32 3, i32 2
  %call16 = tail call ptr @memchr_inv(ptr noundef %add.ptr15, i32 noundef 0, i32 noundef 1) #17
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end19, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end19:                                         ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #19
  %l3_qpn = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ib, ptr %mlx4_spec, i32 0, i32 4
  %11 = ptrtoint ptr %l3_qpn to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %qp_num, ptr %l3_qpn, align 2
  %qpn_mask = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ib, ptr %mlx4_spec, i32 0, i32 5
  %12 = ptrtoint ptr %qpn_mask to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 16777215, ptr %qpn_mask, align 2
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %add.ptr22 = getelementptr %struct.ib_flow_spec_ipv4, ptr %ib_spec, i32 0, i32 3, i32 2
  %call23 = tail call ptr @memchr_inv(ptr noundef %add.ptr22, i32 noundef 0, i32 noundef 4) #17
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %if.end26, label %sw.bb20.cleanup_crit_edge

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end26:                                         ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #19
  %dst_ip = getelementptr inbounds %struct.ib_flow_spec_ipv4, ptr %ib_spec, i32 0, i32 3, i32 1
  %mask21 = getelementptr inbounds %struct.ib_flow_spec_ipv4, ptr %ib_spec, i32 0, i32 3
  %val27 = getelementptr inbounds %struct.ib_flow_spec_ipv4, ptr %ib_spec, i32 0, i32 2
  %13 = ptrtoint ptr %val27 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %val27, align 4
  %src_ip28 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ipv4, ptr %mlx4_spec, i32 0, i32 6
  %15 = ptrtoint ptr %src_ip28 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %14, ptr %src_ip28, align 2
  %16 = ptrtoint ptr %mask21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mask21, align 4
  %src_ip_msk = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ipv4, ptr %mlx4_spec, i32 0, i32 7
  %18 = ptrtoint ptr %src_ip_msk to i32
  call void @__asan_storeN_noabort(i32 %18, i32 4)
  store i32 %17, ptr %src_ip_msk, align 2
  %dst_ip32 = getelementptr inbounds %struct.ib_flow_spec_ipv4, ptr %ib_spec, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %dst_ip32 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dst_ip32, align 4
  %dst_ip33 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ipv4, ptr %mlx4_spec, i32 0, i32 4
  %21 = ptrtoint ptr %dst_ip33 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 %20, ptr %dst_ip33, align 2
  %22 = ptrtoint ptr %dst_ip to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dst_ip, align 4
  %dst_ip_msk = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_ipv4, ptr %mlx4_spec, i32 0, i32 5
  %24 = ptrtoint ptr %dst_ip_msk to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %dst_ip_msk, align 2
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry.sw.bb36_crit_edge, %entry.sw.bb36_crit_edge103
  %src_port = getelementptr inbounds %struct.ib_flow_spec_tcp_udp, ptr %ib_spec, i32 0, i32 3, i32 1
  %add.ptr38 = getelementptr i8, ptr %src_port, i32 2
  %call39 = tail call ptr @memchr_inv(ptr noundef %add.ptr38, i32 noundef 0, i32 noundef 0) #17
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.end42, label %sw.bb36.cleanup_crit_edge

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end42:                                         ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #19
  %mask37 = getelementptr inbounds %struct.ib_flow_spec_tcp_udp, ptr %ib_spec, i32 0, i32 3
  %25 = ptrtoint ptr %ib_spec to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ib_spec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %26)
  %cmp = icmp eq i32 %26, 64
  %cond = select i1 %cmp, i32 4, i32 5
  %val44 = getelementptr inbounds %struct.ib_flow_spec_tcp_udp, ptr %ib_spec, i32 0, i32 2
  %27 = ptrtoint ptr %val44 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %val44, align 2
  %dst_port45 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_tcp_udp, ptr %mlx4_spec, i32 0, i32 4
  %29 = ptrtoint ptr %dst_port45 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %28, ptr %dst_port45, align 2
  %30 = ptrtoint ptr %mask37 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %mask37, align 2
  %dst_port_msk = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_tcp_udp, ptr %mlx4_spec, i32 0, i32 6
  %32 = ptrtoint ptr %dst_port_msk to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %dst_port_msk, align 2
  %src_port49 = getelementptr inbounds %struct.ib_flow_spec_tcp_udp, ptr %ib_spec, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %src_port49 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %src_port49, align 2
  %src_port50 = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_tcp_udp, ptr %mlx4_spec, i32 0, i32 8
  %35 = ptrtoint ptr %src_port50 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %src_port50, align 2
  %36 = ptrtoint ptr %src_port to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %src_port, align 2
  %src_port_msk = getelementptr inbounds %struct.mlx4_net_trans_rule_hw_tcp_udp, ptr %mlx4_spec, i32 0, i32 10
  %38 = ptrtoint ptr %src_port_msk to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %src_port_msk, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end42, %if.end26, %if.end19, %if.end
  %type.0 = phi i32 [ %cond, %if.end42 ], [ 3, %if.end26 ], [ 1, %if.end19 ], [ 0, %if.end ]
  %call53 = tail call i32 @mlx4_map_sw_to_hw_steering_id(ptr noundef %dev, i32 noundef %type.0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %sw.epilog.cleanup_crit_edge, label %lor.lhs.false

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.epilog
  %call55 = tail call i32 @mlx4_hw_rule_sz(ptr noundef %dev, i32 noundef %type.0) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  br i1 %cmp56, label %lor.lhs.false.cleanup_crit_edge, label %if.end58

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end58:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  %call59 = tail call i32 @mlx4_map_sw_to_hw_steering_id(ptr noundef %dev, i32 noundef %type.0) #17
  %conv = trunc i32 %call59 to i16
  %id = getelementptr inbounds %struct.anon.199, ptr %mlx4_spec, i32 0, i32 2
  %39 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv, ptr %id, align 2
  %call60 = tail call i32 @mlx4_hw_rule_sz(ptr noundef %dev, i32 noundef %type.0) #17
  %40 = lshr i32 %call60, 2
  %conv61 = trunc i32 %40 to i8
  %41 = ptrtoint ptr %mlx4_spec to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv61, ptr %mlx4_spec, align 2
  %call62 = tail call i32 @mlx4_hw_rule_sz(ptr noundef %dev, i32 noundef %type.0) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %lor.lhs.false.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb36.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call62, %if.end58 ], [ -524, %sw.bb.cleanup_crit_edge ], [ -524, %sw.bb13.cleanup_crit_edge ], [ -524, %sw.bb20.cleanup_crit_edge ], [ -524, %sw.bb36.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_handle_eth_header_mcast_prio(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_port_get_link_layer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memchr_inv(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_map_sw_to_hw_steering_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_hw_rule_sz(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx4_ib_add(ptr noundef %dev) #0 align 64 {
entry:
  %counter_index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %counter_index) #17
  %0 = ptrtoint ptr %counter_index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %counter_index, align 4, !annotation !297
  %.b613 = load i1, ptr @mlx4_ib_add.__already_done, align 1
  br i1 %.b613, label %entry.if.end_crit_edge, label %if.then, !prof !298

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlx4_ib_add.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @mlx4_ib_version) #22
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %num_ports12 = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 2
  %1 = ptrtoint ptr %num_ports12 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_ports12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.not686 = icmp slt i32 %2, 1
  br i1 %cmp.not686, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %num_ports.0688 = phi i32 [ %spec.select614, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.0687 = phi i32 [ %inc21, %for.body.for.body_crit_edge ], [ 1, %if.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 77, i32 %i.0687
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %.off = add i32 %4, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  %inc = zext i1 %switch to i32
  %spec.select614 = add i32 %num_ports.0688, %inc
  %inc21 = add i32 %i.0687, 1
  %cmp.not = icmp sgt i32 %inc21, %2
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select614)
  %cmp22 = icmp eq i32 %spec.select614, 0
  br i1 %cmp22, label %for.end.cleanup_crit_edge, label %if.end24

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end24:                                         ; preds = %for.end
  %call25 = tail call ptr @_ib_alloc_device(i32 noundef 54560) #17
  %tobool27.not = icmp eq ptr %call25, null
  br i1 %tobool27.not, label %do.end31, label %if.end33

do.end31:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %dev32 = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev32, ptr noundef nonnull @.str.27) #22
  br label %cleanup

if.end33:                                         ; preds = %if.end24
  %iboe34 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 14
  %priv_pdn = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 5
  %call35 = tail call i32 @mlx4_pd_alloc(ptr noundef %dev, ptr noundef %priv_pdn) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end33.err_dealloc_crit_edge

if.end33.err_dealloc_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_dealloc

if.end38:                                         ; preds = %if.end33
  %priv_uar = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 4
  %call39 = tail call i32 @mlx4_uar_alloc(ptr noundef %dev, ptr noundef %priv_uar) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.err_pd_crit_edge

if.end38.err_pd_crit_edge:                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_pd

if.end42:                                         ; preds = %if.end38
  %9 = ptrtoint ptr %priv_uar to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %priv_uar, align 4
  %shl = shl i32 %10, 12
  %call44 = tail call ptr @ioremap(i32 noundef %shl, i32 noundef 4096) #17
  %uar_map = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 3
  %11 = ptrtoint ptr %uar_map to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call44, ptr %uar_map, align 8
  %tobool46.not = icmp eq ptr %call44, null
  br i1 %tobool46.not, label %if.end42.err_uar_crit_edge, label %do.body49

if.end42.err_uar_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_uar

do.body49:                                        ; preds = %if.end42
  %uar_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %uar_lock, ptr noundef nonnull @.str.31, ptr noundef nonnull @mlx4_ib_add.__key, i16 noundef signext 3) #17
  %dev53 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 1
  %12 = ptrtoint ptr %dev53 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %dev, ptr %dev53, align 8
  %bond_next_port = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 28
  %13 = ptrtoint ptr %bond_next_port to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %bond_next_port, align 8
  %node_type = getelementptr inbounds %struct.ib_device, ptr %call25, i32 0, i32 20
  %14 = ptrtoint ptr %node_type to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %node_type, align 1
  %reserved_lkey = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 63
  %15 = ptrtoint ptr %reserved_lkey to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reserved_lkey, align 4
  %local_dma_lkey = getelementptr inbounds %struct.ib_device, ptr %call25, i32 0, i32 18
  %17 = ptrtoint ptr %local_dma_lkey to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %local_dma_lkey, align 8
  %num_ports56 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 2
  %18 = ptrtoint ptr %num_ports56 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %spec.select614, ptr %num_ports56, align 4
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %21 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool58.not = icmp eq i32 %21, 0
  %spec.select683 = select i1 %tobool58.not, i32 %spec.select614, i32 1
  %phys_port_cnt = getelementptr inbounds %struct.ib_device, ptr %call25, i32 0, i32 21
  %22 = ptrtoint ptr %phys_port_cnt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select683, ptr %phys_port_cnt, align 8
  %num_comp_vectors = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 39
  %23 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_comp_vectors, align 4
  %num_comp_vectors63 = getelementptr inbounds %struct.ib_device, ptr %call25, i32 0, i32 12
  %25 = ptrtoint ptr %num_comp_vectors63 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %num_comp_vectors63, align 4
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %dev66 = getelementptr inbounds %struct.pci_dev, ptr %29, i32 0, i32 44
  %parent = getelementptr inbounds %struct.ib_device, ptr %call25, i32 0, i32 13, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev66, ptr %parent, align 8
  tail call void @ib_set_device_ops(ptr noundef nonnull %call25, ptr noundef nonnull @mlx4_ib_dev_ops) #17
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 61
  %31 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %flags2, align 8
  %and = and i64 %32, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool70.not = icmp eq i64 %and, 0
  br i1 %tobool70.not, label %do.body49.if.end80_crit_edge, label %land.lhs.true

do.body49.if.end80_crit_edge:                     ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end80

land.lhs.true:                                    ; preds = %do.body49
  %33 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev53, align 8
  %arrayidx.i = getelementptr %struct.mlx4_dev, ptr %34, i32 0, i32 3, i32 77, i32 1
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp.i.not = icmp eq i32 %36, 1
  br i1 %cmp.i.not, label %lor.lhs.false74, label %land.lhs.true.if.then78_crit_edge

land.lhs.true.if.then78_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then78

lor.lhs.false74:                                  ; preds = %land.lhs.true
  %arrayidx.i617 = getelementptr %struct.mlx4_dev, ptr %34, i32 0, i32 3, i32 77, i32 2
  %37 = ptrtoint ptr %arrayidx.i617 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i617, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i618.not = icmp eq i32 %38, 1
  br i1 %cmp.i618.not, label %lor.lhs.false74.if.end80_crit_edge, label %lor.lhs.false74.if.then78_crit_edge

lor.lhs.false74.if.then78_crit_edge:              ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then78

lor.lhs.false74.if.end80_crit_edge:               ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end80

if.then78:                                        ; preds = %lor.lhs.false74.if.then78_crit_edge, %land.lhs.true.if.then78_crit_edge
  tail call void @ib_set_device_ops(ptr noundef nonnull %call25, ptr noundef nonnull @mlx4_ib_dev_wq_ops) #17
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %lor.lhs.false74.if.end80_crit_edge, %do.body49.if.end80_crit_edge
  %flags = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 60
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %flags, align 8
  %and82 = and i64 %40, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and82)
  %tobool83.not = icmp eq i64 %and82, 0
  br i1 %tobool83.not, label %lor.lhs.false84, label %if.end80.if.then88_crit_edge

if.end80.if.then88_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then88

lor.lhs.false84:                                  ; preds = %if.end80
  %bmme_flags = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 62
  %41 = ptrtoint ptr %bmme_flags to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bmme_flags, align 8
  %and86 = and i32 %42, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %lor.lhs.false84.if.end90_crit_edge, label %lor.lhs.false84.if.then88_crit_edge

lor.lhs.false84.if.then88_crit_edge:              ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then88

lor.lhs.false84.if.end90_crit_edge:               ; preds = %lor.lhs.false84
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end90

if.then88:                                        ; preds = %lor.lhs.false84.if.then88_crit_edge, %if.end80.if.then88_crit_edge
  tail call void @ib_set_device_ops(ptr noundef nonnull %call25, ptr noundef nonnull @mlx4_ib_dev_mw_ops) #17
  br label %if.end90

if.end90:                                         ; preds = %if.then88, %lor.lhs.false84.if.end90_crit_edge
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %flags, align 8
  %and93 = and i64 %44, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and93)
  %tobool94.not = icmp eq i64 %and93, 0
  br i1 %tobool94.not, label %if.end90.if.end97_crit_edge, label %if.then95

if.end90.if.end97_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end97

if.then95:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ib_set_device_ops(ptr noundef nonnull %call25, ptr noundef nonnull @mlx4_ib_dev_xrc_ops) #17
  br label %if.end97

if.end97:                                         ; preds = %if.then95, %if.end90.if.end97_crit_edge
  %steering_mode.i = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 50
  %45 = ptrtoint ptr %steering_mode.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %steering_mode.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp.i620 = icmp eq i32 %46, 2
  %conv.i = zext i1 %cmp.i620 to i32
  br i1 %cmp.i620, label %for.cond.preheader.i, label %if.end97.if.end102_crit_edge

if.end97.if.end102_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end102

for.cond.preheader.i:                             ; preds = %if.end97
  %47 = ptrtoint ptr %num_ports12 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %num_ports12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp2.not61.i = icmp slt i32 %48, 1
  br i1 %cmp2.not61.i, label %for.cond.preheader.i.if.then100_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.then100_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then100

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %eth_num_ports.063.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.062.i = phi i32 [ %inc8.i, %for.body.i.for.body.i_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i621 = getelementptr %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 77, i32 %i.062.i
  %49 = ptrtoint ptr %arrayidx.i621 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.i621, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %50)
  %cmp5.i = icmp eq i32 %50, 2
  %inc.i = zext i1 %cmp5.i to i32
  %spec.select.i = add i32 %eth_num_ports.063.i, %inc.i
  %inc8.i = add i32 %i.062.i, 1
  %cmp2.not.i = icmp sgt i32 %inc8.i, %48
  br i1 %cmp2.not.i, label %for.body.i.for.body14.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i.for.body14.i_crit_edge:                ; preds = %for.body.i
  br label %for.body14.i

for.body14.i:                                     ; preds = %for.body14.i.for.body14.i_crit_edge, %for.body.i.for.body14.i_crit_edge
  %i.167.i = phi i32 [ %inc24.i, %for.body14.i.for.body14.i_crit_edge ], [ 1, %for.body.i.for.body14.i_crit_edge ]
  %ib_num_ports.066.i = phi i32 [ %spec.select58.i, %for.body14.i.for.body14.i_crit_edge ], [ 0, %for.body.i.for.body14.i_crit_edge ]
  %arrayidx17.i = getelementptr %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 77, i32 %i.167.i
  %51 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx17.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %52)
  %cmp18.i = icmp eq i32 %52, 1
  %inc21.i = zext i1 %cmp18.i to i32
  %spec.select58.i = add i32 %ib_num_ports.066.i, %inc21.i
  %inc24.i = add i32 %i.167.i, 1
  %cmp12.not.i = icmp sgt i32 %inc24.i, %48
  br i1 %cmp12.not.i, label %for.end25.i, label %for.body14.i.for.body14.i_crit_edge

for.body14.i.for.body14.i_crit_edge:              ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body14.i

for.end25.i:                                      ; preds = %for.body14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select58.i)
  %phi.cmp.i = icmp eq i32 %spec.select58.i, 0
  br i1 %phi.cmp.i, label %land.rhs.i, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.end25.i
  %53 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %flags2, align 8
  %and.i622 = and i64 %54, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i622)
  %tobool28.not.i = icmp eq i64 %and.i622, 0
  br i1 %tobool28.not.i, label %lor.lhs.false.i.land.lhs.true.i_crit_edge, label %land.rhs.i.thread

lor.lhs.false.i.land.lhs.true.i_crit_edge:        ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i

land.rhs.i:                                       ; preds = %for.end25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool29.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %tobool29.not.i, label %land.rhs.i.check_flow_steering_support.exit_crit_edge, label %lor.rhs.i

land.rhs.i.check_flow_steering_support.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %check_flow_steering_support.exit

land.rhs.i.thread:                                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select.i)
  %tobool29.not.i667 = icmp eq i32 %spec.select.i, 0
  br i1 %tobool29.not.i667, label %land.rhs.i.thread.land.lhs.true.i_crit_edge, label %lor.rhs.i.thread

land.rhs.i.thread.land.lhs.true.i_crit_edge:      ; preds = %land.rhs.i.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true.i

lor.rhs.i.thread:                                 ; preds = %land.rhs.i.thread
  call void @__sanitizer_cov_trace_pc() #19
  %55 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %flags2, align 8
  %57 = trunc i64 %56 to i32
  %58 = lshr i32 %57, 3
  %and3481.i668 = and i32 %58, %conv.i
  br label %land.lhs.true.i

lor.rhs.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  %59 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %flags2, align 8
  %61 = trunc i64 %60 to i32
  %62 = lshr i32 %61, 3
  %and3481.i = and i32 %62, %conv.i
  br label %check_flow_steering_support.exit

land.lhs.true.i:                                  ; preds = %lor.rhs.i.thread, %land.rhs.i.thread.land.lhs.true.i_crit_edge, %lor.lhs.false.i.land.lhs.true.i_crit_edge
  %and3460.i = phi i32 [ 0, %lor.lhs.false.i.land.lhs.true.i_crit_edge ], [ %and3481.i668, %lor.rhs.i.thread ], [ %conv.i, %land.rhs.i.thread.land.lhs.true.i_crit_edge ]
  %63 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %flags.i, align 4
  %and.i.i = and i32 %64, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool36.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool36.not.i, label %land.lhs.true.i.check_flow_steering_support.exit_crit_edge, label %do.end.i

land.lhs.true.i.check_flow_steering_support.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %check_flow_steering_support.exit

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78) #22
  br label %if.end102

check_flow_steering_support.exit:                 ; preds = %land.lhs.true.i.check_flow_steering_support.exit_crit_edge, %lor.rhs.i, %land.rhs.i.check_flow_steering_support.exit_crit_edge
  %dmfs.1.i = phi i32 [ %and3460.i, %land.lhs.true.i.check_flow_steering_support.exit_crit_edge ], [ %and3481.i, %lor.rhs.i ], [ %conv.i, %land.rhs.i.check_flow_steering_support.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dmfs.1.i)
  %tobool99.not = icmp eq i32 %dmfs.1.i, 0
  br i1 %tobool99.not, label %check_flow_steering_support.exit.if.end102_crit_edge, label %check_flow_steering_support.exit.if.then100_crit_edge

check_flow_steering_support.exit.if.then100_crit_edge: ; preds = %check_flow_steering_support.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then100

check_flow_steering_support.exit.if.end102_crit_edge: ; preds = %check_flow_steering_support.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end102

if.then100:                                       ; preds = %check_flow_steering_support.exit.if.then100_crit_edge, %for.cond.preheader.i.if.then100_crit_edge
  %steering_support = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 25
  %65 = ptrtoint ptr %steering_support to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 2, ptr %steering_support, align 4
  tail call void @ib_set_device_ops(ptr noundef %call25, ptr noundef nonnull @mlx4_ib_dev_fs_ops) #17
  br label %if.end102

if.end102:                                        ; preds = %if.then100, %check_flow_steering_support.exit.if.end102_crit_edge, %do.end.i, %if.end97.if.end102_crit_edge
  %userspace_caps = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 85
  %66 = ptrtoint ptr %userspace_caps to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %userspace_caps, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool104.not = icmp eq i32 %67, 0
  br i1 %tobool104.not, label %if.then105, label %if.end102.if.end107_crit_edge

if.end102.if.end107_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end107

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #19
  %uverbs_abi_ver = getelementptr inbounds %struct.ib_device, ptr %call25, i32 0, i32 1, i32 2
  %68 = ptrtoint ptr %uverbs_abi_ver to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 3, ptr %uverbs_abi_ver, align 4
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.end102.if.end107_crit_edge
  %69 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_comp_vectors, align 4
  %71 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %70, i32 4) #17
  %72 = extractvalue { i32, i1 } %71, 1
  br i1 %72, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !294

kcalloc.exit.thread.i:                            ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #19
  %eq_table70.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 16
  %73 = ptrtoint ptr %eq_table70.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %eq_table70.i, align 8
  br label %mlx4_ib_alloc_eqs.exit

if.end7.i.i.i:                                    ; preds = %if.end107
  %74 = extractvalue { i32, i1 } %71, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %74, i32 noundef 3520) #23
  %eq_table.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 16
  %75 = ptrtoint ptr %eq_table.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call8.i.i.i, ptr %eq_table.i, align 8
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.mlx4_ib_alloc_eqs.exit_crit_edge, label %for.cond.preheader.i624

if.end7.i.i.i.mlx4_ib_alloc_eqs.exit_crit_edge:   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlx4_ib_alloc_eqs.exit

for.cond.preheader.i624:                          ; preds = %if.end7.i.i.i
  %76 = ptrtoint ptr %num_ports12 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_ports12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp.not79.i = icmp slt i32 %77, 1
  br i1 %cmp.not79.i, label %for.cond.preheader.i624.for.cond29.preheader.i_crit_edge, label %for.cond.preheader.i624.for.cond3.preheader.i_crit_edge

for.cond.preheader.i624.for.cond3.preheader.i_crit_edge: ; preds = %for.cond.preheader.i624
  br label %for.cond3.preheader.i

for.cond.preheader.i624.for.cond29.preheader.i_crit_edge: ; preds = %for.cond.preheader.i624
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond29.preheader.i

for.cond3.preheader.i:                            ; preds = %for.inc26.i.for.cond3.preheader.i_crit_edge, %for.cond.preheader.i624.for.cond3.preheader.i_crit_edge
  %total_eqs.083.i = phi i32 [ %total_eqs.1.lcssa.i, %for.inc26.i.for.cond3.preheader.i_crit_edge ], [ 0, %for.cond.preheader.i624.for.cond3.preheader.i_crit_edge ]
  %eq.082.i = phi i32 [ %eq.1.lcssa.i, %for.inc26.i.for.cond3.preheader.i_crit_edge ], [ 0, %for.cond.preheader.i624.for.cond3.preheader.i_crit_edge ]
  %i.080.i = phi i32 [ %inc27.i, %for.inc26.i.for.cond3.preheader.i_crit_edge ], [ 1, %for.cond.preheader.i624.for.cond3.preheader.i_crit_edge ]
  %conv.i625 = trunc i32 %i.080.i to i8
  %call472.i = tail call i32 @mlx4_get_eqs_per_port(ptr noundef %dev, i8 noundef zeroext %conv.i625) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call472.i)
  %cmp573.not.i = icmp eq i32 %call472.i, 0
  br i1 %cmp573.not.i, label %for.cond3.preheader.i.for.inc26.i_crit_edge, label %for.body7.lr.ph.i

for.cond3.preheader.i.for.inc26.i_crit_edge:      ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc26.i

for.body7.lr.ph.i:                                ; preds = %for.cond3.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %i.080.i)
  %cmp8.i = icmp sgt i32 %i.080.i, 1
  br label %for.body7.i

for.cond29.preheader.i:                           ; preds = %for.inc26.i.for.cond29.preheader.i_crit_edge, %for.cond.preheader.i624.for.cond29.preheader.i_crit_edge
  %eq.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i624.for.cond29.preheader.i_crit_edge ], [ %eq.1.lcssa.i, %for.inc26.i.for.cond29.preheader.i_crit_edge ]
  %78 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_comp_vectors, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %eq.0.lcssa.i, i32 %79)
  %cmp3285.i = icmp slt i32 %eq.0.lcssa.i, %79
  br i1 %cmp3285.i, label %for.cond29.preheader.i.for.inc35.i_crit_edge, label %for.cond29.preheader.i.for.end39.i_crit_edge

for.cond29.preheader.i.for.end39.i_crit_edge:     ; preds = %for.cond29.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end39.i

for.cond29.preheader.i.for.inc35.i_crit_edge:     ; preds = %for.cond29.preheader.i
  br label %for.inc35.i

for.body7.i:                                      ; preds = %for.inc.i.for.body7.i_crit_edge, %for.body7.lr.ph.i
  %total_eqs.176.i = phi i32 [ %total_eqs.083.i, %for.body7.lr.ph.i ], [ %inc25.i, %for.inc.i.for.body7.i_crit_edge ]
  %eq.175.i = phi i32 [ %eq.082.i, %for.body7.lr.ph.i ], [ %eq.2.i, %for.inc.i.for.body7.i_crit_edge ]
  %j.074.i = phi i32 [ 0, %for.body7.lr.ph.i ], [ %inc24.i630, %for.inc.i.for.body7.i_crit_edge ]
  br i1 %cmp8.i, label %land.lhs.true.i626, label %for.body7.i.if.end13.i_crit_edge

for.body7.i.if.end13.i_crit_edge:                 ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i

land.lhs.true.i626:                               ; preds = %for.body7.i
  %call10.i = tail call i32 @mlx4_is_eq_shared(ptr noundef %dev, i32 noundef %total_eqs.176.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true.i626.if.end13.i_crit_edge, label %land.lhs.true.i626.for.inc.i_crit_edge

land.lhs.true.i626.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i626
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i626.if.end13.i_crit_edge:          ; preds = %land.lhs.true.i626
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13.i

if.end13.i:                                       ; preds = %land.lhs.true.i626.if.end13.i_crit_edge, %for.body7.i.if.end13.i_crit_edge
  %80 = ptrtoint ptr %eq_table.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %eq_table.i, align 8
  %arrayidx.i627 = getelementptr i32, ptr %81, i32 %eq.175.i
  %82 = ptrtoint ptr %arrayidx.i627 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %total_eqs.176.i, ptr %arrayidx.i627, align 4
  %83 = load ptr, ptr %eq_table.i, align 8
  %arrayidx17.i628 = getelementptr i32, ptr %83, i32 %eq.175.i
  %call18.i = tail call i32 @mlx4_assign_eq(ptr noundef %dev, i8 noundef zeroext %conv.i625, ptr noundef %arrayidx17.i628) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %tobool19.not.i = icmp eq i32 %call18.i, 0
  br i1 %tobool19.not.i, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  %inc.i629 = add i32 %eq.175.i, 1
  br label %for.inc.i

if.else.i:                                        ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #19
  %84 = ptrtoint ptr %eq_table.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %eq_table.i, align 8
  %arrayidx22.i = getelementptr i32, ptr %85, i32 %eq.175.i
  %86 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %arrayidx22.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then20.i, %land.lhs.true.i626.for.inc.i_crit_edge
  %eq.2.i = phi i32 [ %eq.175.i, %land.lhs.true.i626.for.inc.i_crit_edge ], [ %eq.175.i, %if.else.i ], [ %inc.i629, %if.then20.i ]
  %inc24.i630 = add nuw i32 %j.074.i, 1
  %inc25.i = add i32 %total_eqs.176.i, 1
  %call4.i = tail call i32 @mlx4_get_eqs_per_port(ptr noundef %dev, i8 noundef zeroext %conv.i625) #17
  %cmp5.i631 = icmp ult i32 %inc24.i630, %call4.i
  br i1 %cmp5.i631, label %for.inc.i.for.body7.i_crit_edge, label %for.inc.i.for.inc26.i_crit_edge

for.inc.i.for.inc26.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc26.i

for.inc.i.for.body7.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body7.i

for.inc26.i:                                      ; preds = %for.inc.i.for.inc26.i_crit_edge, %for.cond3.preheader.i.for.inc26.i_crit_edge
  %eq.1.lcssa.i = phi i32 [ %eq.082.i, %for.cond3.preheader.i.for.inc26.i_crit_edge ], [ %eq.2.i, %for.inc.i.for.inc26.i_crit_edge ]
  %total_eqs.1.lcssa.i = phi i32 [ %total_eqs.083.i, %for.cond3.preheader.i.for.inc26.i_crit_edge ], [ %inc25.i, %for.inc.i.for.inc26.i_crit_edge ]
  %inc27.i = add i32 %i.080.i, 1
  %87 = ptrtoint ptr %num_ports12 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_ports12, align 4
  %cmp.not.i = icmp sgt i32 %inc27.i, %88
  br i1 %cmp.not.i, label %for.inc26.i.for.cond29.preheader.i_crit_edge, label %for.inc26.i.for.cond3.preheader.i_crit_edge

for.inc26.i.for.cond3.preheader.i_crit_edge:      ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond3.preheader.i

for.inc26.i.for.cond29.preheader.i_crit_edge:     ; preds = %for.inc26.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond29.preheader.i

for.inc35.i:                                      ; preds = %for.inc35.i.for.inc35.i_crit_edge, %for.cond29.preheader.i.for.inc35.i_crit_edge
  %i.186.i = phi i32 [ %inc37.i, %for.inc35.i.for.inc35.i_crit_edge ], [ %eq.0.lcssa.i, %for.cond29.preheader.i.for.inc35.i_crit_edge ]
  %89 = ptrtoint ptr %eq_table.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %eq_table.i, align 8
  %inc37.i = add nsw i32 %i.186.i, 1
  %arrayidx38.i = getelementptr i32, ptr %90, i32 %i.186.i
  %91 = ptrtoint ptr %arrayidx38.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 -1, ptr %arrayidx38.i, align 4
  %92 = ptrtoint ptr %num_comp_vectors to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %num_comp_vectors, align 4
  %cmp32.i = icmp slt i32 %inc37.i, %93
  br i1 %cmp32.i, label %for.inc35.i.for.inc35.i_crit_edge, label %for.inc35.i.for.end39.i_crit_edge

for.inc35.i.for.end39.i_crit_edge:                ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end39.i

for.inc35.i.for.inc35.i_crit_edge:                ; preds = %for.inc35.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc35.i

for.end39.i:                                      ; preds = %for.inc35.i.for.end39.i_crit_edge, %for.cond29.preheader.i.for.end39.i_crit_edge
  %94 = ptrtoint ptr %num_comp_vectors63 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %eq.0.lcssa.i, ptr %num_comp_vectors63, align 4
  br label %mlx4_ib_alloc_eqs.exit

mlx4_ib_alloc_eqs.exit:                           ; preds = %for.end39.i, %if.end7.i.i.i.mlx4_ib_alloc_eqs.exit_crit_edge, %kcalloc.exit.thread.i
  tail call void @__raw_spin_lock_init(ptr noundef %iboe34, ptr noundef nonnull @.str.33, ptr noundef nonnull @mlx4_ib_add.__key.32, i16 noundef signext 3) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %95 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %95, i32 noundef 3520, i32 noundef 256) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %96 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %96, i32 noundef 3264, i32 noundef 256) #21
  %tobool.not.i632 = icmp eq ptr %call7.i.i.i, null
  %tobool2.not.i = icmp eq ptr %call7.i.i, null
  %or.cond.i = select i1 %tobool.not.i632, i1 true, i1 %tobool2.not.i
  br i1 %or.cond.i, label %mlx4_ib_alloc_eqs.exit.init_node_data.exit_crit_edge, label %if.end.i

mlx4_ib_alloc_eqs.exit.init_node_data.exit_crit_edge: ; preds = %mlx4_ib_alloc_eqs.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_node_data.exit

if.end.i:                                         ; preds = %mlx4_ib_alloc_eqs.exit
  %97 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 16843009, ptr %call7.i.i.i, align 8
  %attr_id.i = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i.i, i32 0, i32 8
  %98 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 16, ptr %attr_id.i, align 8
  %99 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev53, align 8
  %flags.i.i633 = getelementptr inbounds %struct.mlx4_dev, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %flags.i.i633 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %flags.i.i633, align 4
  %and.i.i634 = and i32 %102, 4
  %103 = or i32 %and.i.i634, 3
  %call8.i = tail call i32 @mlx4_MAD_IFC(ptr noundef %call25, i32 noundef %103, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool9.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool9.not.i, label %if.end11.i, label %if.end.i.init_node_data.exit_crit_edge

if.end.i.init_node_data.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_node_data.exit

if.end11.i:                                       ; preds = %if.end.i
  %node_desc.i = getelementptr inbounds %struct.ib_device, ptr %call25, i32 0, i32 16
  %data.i = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15
  %104 = call ptr @memcpy(ptr %node_desc.i, ptr %data.i, i32 64)
  %105 = ptrtoint ptr %attr_id.i to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 17, ptr %attr_id.i, align 8
  %call14.i = tail call i32 @mlx4_MAD_IFC(ptr noundef %call25, i32 noundef %103, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end11.i.init_node_data.exit_crit_edge

if.end11.i.init_node_data.exit_crit_edge:         ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %init_node_data.exit

if.end17.i:                                       ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #19
  %add.ptr.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 32
  %106 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %add.ptr.i, align 8
  %conv.i635 = trunc i32 %107 to i8
  %108 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dev53, align 8
  %rev_id.i = getelementptr inbounds %struct.mlx4_dev, ptr %109, i32 0, i32 7
  %110 = ptrtoint ptr %rev_id.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 %conv.i635, ptr %rev_id.i, align 8
  %node_guid.i = getelementptr inbounds %struct.ib_device, ptr %call25, i32 0, i32 17
  %add.ptr25.i = getelementptr %struct.ib_smp, ptr %call7.i.i, i32 0, i32 15, i32 12
  %111 = ptrtoint ptr %add.ptr25.i to i32
  call void @__asan_loadN_noabort(i32 %111, i32 8)
  %112 = load i64, ptr %add.ptr25.i, align 4
  %113 = ptrtoint ptr %node_guid.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %112, ptr %node_guid.i, align 8
  br label %init_node_data.exit

init_node_data.exit:                              ; preds = %if.end17.i, %if.end11.i.init_node_data.exit_crit_edge, %if.end.i.init_node_data.exit_crit_edge, %mlx4_ib_alloc_eqs.exit.init_node_data.exit_crit_edge
  %err.0.i = phi i32 [ %call8.i, %if.end.i.init_node_data.exit_crit_edge ], [ %call14.i, %if.end11.i.init_node_data.exit_crit_edge ], [ 0, %if.end17.i ], [ -12, %mlx4_ib_alloc_eqs.exit.init_node_data.exit_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i.i) #17
  tail call void @kfree(ptr noundef %call7.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i)
  %tobool113.not = icmp eq i32 %err.0.i, 0
  br i1 %tobool113.not, label %if.end115, label %init_node_data.exit.err_map_crit_edge

init_node_data.exit.err_map_crit_edge:            ; preds = %init_node_data.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_map

if.end115:                                        ; preds = %init_node_data.exit
  tail call fastcc void @mlx4_init_sl2vl_tbl(ptr noundef %call25)
  %114 = ptrtoint ptr %num_ports56 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %num_ports56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp118689 = icmp sgt i32 %115, 0
  br i1 %cmp118689, label %if.end115.do.body120_crit_edge, label %if.end115.for.end129_crit_edge

if.end115.for.end129_crit_edge:                   ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end129

if.end115.do.body120_crit_edge:                   ; preds = %if.end115
  br label %do.body120

do.body120:                                       ; preds = %do.body120.do.body120_crit_edge, %if.end115.do.body120_crit_edge
  %i.1690 = phi i32 [ %inc128, %do.body120.do.body120_crit_edge ], [ 0, %if.end115.do.body120_crit_edge ]
  %arrayidx121 = getelementptr %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 15, i32 %i.1690
  %mutex = getelementptr %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 15, i32 %i.1690, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.35, ptr noundef nonnull @mlx4_ib_add.__key.34) #17
  %116 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %arrayidx121, ptr %arrayidx121, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %arrayidx121, i32 0, i32 1
  %117 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %arrayidx121, ptr %prev.i, align 4
  %arrayidx126 = getelementptr %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 14, i32 5, i32 %i.1690
  %118 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 1, ptr %arrayidx126, align 4
  %inc128 = add nuw nsw i32 %i.1690, 1
  %119 = ptrtoint ptr %num_ports56 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %num_ports56, align 4
  %cmp118 = icmp slt i32 %inc128, %120
  br i1 %cmp118, label %do.body120.do.body120_crit_edge, label %do.body120.for.end129_crit_edge

do.body120.for.end129_crit_edge:                  ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end129

do.body120.do.body120_crit_edge:                  ; preds = %do.body120
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body120

for.end129:                                       ; preds = %do.body120.for.end129_crit_edge, %if.end115.for.end129_crit_edge
  %.lcssa = phi i32 [ %115, %if.end115.for.end129_crit_edge ], [ %120, %do.body120.for.end129_crit_edge ]
  %121 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %flags.i, align 4
  %123 = and i32 %122, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool131.not = icmp eq i32 %123, 0
  %spec.select684 = select i1 %tobool131.not, i32 %.lcssa, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select684)
  %cmp138692 = icmp sgt i32 %spec.select684, 0
  br i1 %cmp138692, label %for.end129.do.body140_crit_edge, label %for.end129.for.end181_crit_edge

for.end129.for.end181_crit_edge:                  ; preds = %for.end129
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end181

for.end129.do.body140_crit_edge:                  ; preds = %for.end129
  br label %do.body140

do.body140:                                       ; preds = %list_add_tail.exit.do.body140_crit_edge, %for.end129.do.body140_crit_edge
  %i.2693 = phi i32 [ %add, %list_add_tail.exit.do.body140_crit_edge ], [ 0, %for.end129.do.body140_crit_edge ]
  %arrayidx141 = getelementptr %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 27, i32 %i.2693
  call void @__mutex_init(ptr noundef %arrayidx141, ptr noundef nonnull @.str.37, ptr noundef nonnull @mlx4_ib_add.__key.36) #17
  %add = add nuw nsw i32 %i.2693, 1
  %124 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev53, align 8
  %arrayidx.i640 = getelementptr %struct.mlx4_dev, ptr %125, i32 0, i32 3, i32 77, i32 %add
  %126 = ptrtoint ptr %arrayidx.i640 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx.i640, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %127)
  %cmp.i641.not = icmp eq i32 %127, 1
  br i1 %cmp.i641.not, label %do.body140.if.end158_crit_edge, label %if.then147

do.body140.if.end158_crit_edge:                   ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end158

if.then147:                                       ; preds = %do.body140
  %call149 = call i32 @mlx4_counter_alloc(ptr noundef %125, ptr noundef nonnull %counter_index, i8 noundef zeroext 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149)
  %tobool150.not = icmp eq i32 %call149, 0
  br i1 %tobool150.not, label %if.end158.thread, label %if.then147.if.end158_crit_edge

if.then147.if.end158_crit_edge:                   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end158

if.end158:                                        ; preds = %if.then147.if.end158_crit_edge, %do.body140.if.end158_crit_edge
  %call153 = call i32 @mlx4_get_default_counter_index(ptr noundef %dev, i32 noundef %add) #17
  %128 = ptrtoint ptr %counter_index to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 %call153, ptr %counter_index, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %129 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %129, i32 noundef 3264, i32 noundef 16) #21
  %tobool160.not = icmp eq ptr %call7.i, null
  br i1 %tobool160.not, label %if.end158.err_counter_crit_edge, label %if.end158.if.end166_crit_edge

if.end158.if.end166_crit_edge:                    ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end166

if.end158.err_counter_crit_edge:                  ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_counter

if.end158.thread:                                 ; preds = %if.then147
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %130 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i676 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %130, i32 noundef 3264, i32 noundef 16) #21
  %tobool160.not677 = icmp eq ptr %call7.i676, null
  br i1 %tobool160.not677, label %if.then163, label %if.end158.thread.if.end166_crit_edge

if.end158.thread.if.end166_crit_edge:             ; preds = %if.end158.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end166

if.then163:                                       ; preds = %if.end158.thread
  call void @__sanitizer_cov_trace_pc() #19
  %131 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev53, align 8
  %133 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %counter_index, align 4
  call void @mlx4_counter_free(ptr noundef %132, i32 noundef %134) #17
  br label %err_counter

if.end166:                                        ; preds = %if.end158.thread.if.end166_crit_edge, %if.end158.if.end166_crit_edge
  %call7.i680 = phi ptr [ %call7.i676, %if.end158.thread.if.end166_crit_edge ], [ %call7.i, %if.end158.if.end166_crit_edge ]
  %allocated.0679 = phi i32 [ 1, %if.end158.thread.if.end166_crit_edge ], [ 0, %if.end158.if.end166_crit_edge ]
  %135 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %counter_index, align 4
  %index = getelementptr inbounds %struct.counter_index, ptr %call7.i680, i32 0, i32 1
  %137 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %136, ptr %index, align 8
  %conv = trunc i32 %allocated.0679 to i8
  %allocated167 = getelementptr inbounds %struct.counter_index, ptr %call7.i680, i32 0, i32 2
  %138 = ptrtoint ptr %allocated167 to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 %conv, ptr %allocated167, align 4
  %arrayidx169 = getelementptr %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 15, i32 %i.2693
  %prev.i643 = getelementptr inbounds %struct.list_head, ptr %arrayidx169, i32 0, i32 1
  %139 = ptrtoint ptr %prev.i643 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %prev.i643, align 4
  %call.i.i644 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i680, ptr noundef %140, ptr noundef %arrayidx169) #17
  br i1 %call.i.i644, label %if.end.i.i, label %if.end166.list_add_tail.exit_crit_edge

if.end166.list_add_tail.exit_crit_edge:           ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #19
  %141 = ptrtoint ptr %prev.i643 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %call7.i680, ptr %prev.i643, align 4
  %142 = ptrtoint ptr %call7.i680 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %arrayidx169, ptr %call7.i680, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i680, i32 0, i32 1
  %143 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %140, ptr %prev3.i.i, align 4
  %144 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %call7.i680, ptr %140, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end166.list_add_tail.exit_crit_edge
  %145 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %counter_index, align 4
  %default_counter = getelementptr %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 15, i32 %i.2693, i32 2
  %147 = ptrtoint ptr %default_counter to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %default_counter, align 4
  %148 = load i32, ptr %counter_index, align 4
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.25, i32 noundef %148, i32 noundef %add, i32 noundef %allocated.0679) #22
  %exitcond.not = icmp eq i32 %add, %spec.select684
  br i1 %exitcond.not, label %list_add_tail.exit.for.end181_crit_edge, label %list_add_tail.exit.do.body140_crit_edge

list_add_tail.exit.do.body140_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body140

list_add_tail.exit.for.end181_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end181

for.end181:                                       ; preds = %list_add_tail.exit.for.end181_crit_edge, %for.end129.for.end181_crit_edge
  %149 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %flags.i, align 4
  %151 = and i32 %150, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool183.not = icmp eq i32 %151, 0
  br i1 %tobool183.not, label %for.end181.if.end206_crit_edge, label %for.cond185.preheader

for.end181.if.end206_crit_edge:                   ; preds = %for.end181
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end206

for.cond185.preheader:                            ; preds = %for.end181
  %152 = ptrtoint ptr %num_ports56 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %num_ports56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %153)
  %cmp187694 = icmp sgt i32 %153, 1
  br i1 %cmp187694, label %for.cond185.preheader.for.body189_crit_edge, label %for.cond185.preheader.if.end206_crit_edge

for.cond185.preheader.if.end206_crit_edge:        ; preds = %for.cond185.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end206

for.cond185.preheader.for.body189_crit_edge:      ; preds = %for.cond185.preheader
  br label %for.body189

for.body189:                                      ; preds = %list_add_tail.exit652.for.body189_crit_edge, %for.cond185.preheader.for.body189_crit_edge
  %i.3695 = phi i32 [ %inc204, %list_add_tail.exit652.for.body189_crit_edge ], [ 1, %for.cond185.preheader.for.body189_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %154 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i615 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %154, i32 noundef 3264, i32 noundef 16) #21
  %tobool191.not = icmp eq ptr %call7.i615, null
  br i1 %tobool191.not, label %for.body189.err_counter_crit_edge, label %if.end193

for.body189.err_counter_crit_edge:                ; preds = %for.body189
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_counter

if.end193:                                        ; preds = %for.body189
  %155 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %counter_index, align 4
  %index194 = getelementptr inbounds %struct.counter_index, ptr %call7.i615, i32 0, i32 1
  %157 = ptrtoint ptr %index194 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %index194, align 8
  %allocated195 = getelementptr inbounds %struct.counter_index, ptr %call7.i615, i32 0, i32 2
  %158 = ptrtoint ptr %allocated195 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %allocated195, align 4
  %arrayidx198 = getelementptr %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 15, i32 %i.3695
  %prev.i648 = getelementptr inbounds %struct.list_head, ptr %arrayidx198, i32 0, i32 1
  %159 = ptrtoint ptr %prev.i648 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %prev.i648, align 4
  %call.i.i649 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i615, ptr noundef %160, ptr noundef %arrayidx198) #17
  br i1 %call.i.i649, label %if.end.i.i651, label %if.end193.list_add_tail.exit652_crit_edge

if.end193.list_add_tail.exit652_crit_edge:        ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add_tail.exit652

if.end.i.i651:                                    ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #19
  %161 = ptrtoint ptr %prev.i648 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %call7.i615, ptr %prev.i648, align 4
  %162 = ptrtoint ptr %call7.i615 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %arrayidx198, ptr %call7.i615, align 8
  %prev3.i.i650 = getelementptr inbounds %struct.list_head, ptr %call7.i615, i32 0, i32 1
  %163 = ptrtoint ptr %prev3.i.i650 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %160, ptr %prev3.i.i650, align 4
  %164 = ptrtoint ptr %160 to i32
  call void @__asan_store4_noabort(i32 %164)
  store volatile ptr %call7.i615, ptr %160, align 4
  br label %list_add_tail.exit652

list_add_tail.exit652:                            ; preds = %if.end.i.i651, %if.end193.list_add_tail.exit652_crit_edge
  %165 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %counter_index, align 4
  %default_counter202 = getelementptr %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 15, i32 %i.3695, i32 2
  %167 = ptrtoint ptr %default_counter202 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %default_counter202, align 4
  %inc204 = add nuw nsw i32 %i.3695, 1
  %168 = ptrtoint ptr %num_ports56 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %num_ports56, align 4
  %cmp187 = icmp slt i32 %inc204, %169
  br i1 %cmp187, label %list_add_tail.exit652.for.body189_crit_edge, label %list_add_tail.exit652.if.end206_crit_edge

list_add_tail.exit652.if.end206_crit_edge:        ; preds = %list_add_tail.exit652
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end206

list_add_tail.exit652.for.body189_crit_edge:      ; preds = %list_add_tail.exit652
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body189

if.end206:                                        ; preds = %list_add_tail.exit652.if.end206_crit_edge, %for.cond185.preheader.if.end206_crit_edge, %for.end181.if.end206_crit_edge
  %170 = ptrtoint ptr %num_ports12 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %num_ports12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %171)
  %cmp210.not696 = icmp slt i32 %171, 1
  br i1 %cmp210.not696, label %if.end206.do.body224_crit_edge, label %if.end206.for.body212_crit_edge

if.end206.for.body212_crit_edge:                  ; preds = %if.end206
  br label %for.body212

if.end206.do.body224_crit_edge:                   ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body224

for.body212:                                      ; preds = %for.body212.for.body212_crit_edge, %if.end206.for.body212_crit_edge
  %i.4698 = phi i32 [ %inc222, %for.body212.for.body212_crit_edge ], [ 1, %if.end206.for.body212_crit_edge ]
  %ib_num_ports.0697 = phi i32 [ %spec.select, %for.body212.for.body212_crit_edge ], [ 0, %if.end206.for.body212_crit_edge ]
  %arrayidx215 = getelementptr %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 77, i32 %i.4698
  %172 = ptrtoint ptr %arrayidx215 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx215, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %173)
  %cmp216 = icmp eq i32 %173, 1
  %inc219 = zext i1 %cmp216 to i32
  %spec.select = add i32 %ib_num_ports.0697, %inc219
  %inc222 = add i32 %i.4698, 1
  %cmp210.not = icmp sgt i32 %inc222, %171
  br i1 %cmp210.not, label %for.body212.do.body224_crit_edge, label %for.body212.for.body212_crit_edge

for.body212.for.body212_crit_edge:                ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body212

for.body212.do.body224_crit_edge:                 ; preds = %for.body212
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body224

do.body224:                                       ; preds = %for.body212.do.body224_crit_edge, %if.end206.do.body224_crit_edge
  %ib_num_ports.0.lcssa = phi i32 [ 0, %if.end206.do.body224_crit_edge ], [ %spec.select, %for.body212.do.body224_crit_edge ]
  %sm_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 9
  call void @__raw_spin_lock_init(ptr noundef %sm_lock, ptr noundef nonnull @.str.42, ptr noundef nonnull @mlx4_ib_add.__key.41, i16 noundef signext 3) #17
  %cap_mask_mutex = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 12
  call void @__mutex_init(ptr noundef %cap_mask_mutex, ptr noundef nonnull @.str.44, ptr noundef nonnull @mlx4_ib_add.__key.43) #17
  %qp_list = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 30
  %174 = ptrtoint ptr %qp_list to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile ptr %qp_list, ptr %qp_list, align 4
  %prev.i653 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 30, i32 1
  %175 = ptrtoint ptr %prev.i653 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %qp_list, ptr %prev.i653, align 4
  %reset_flow_resource_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 29
  call void @__raw_spin_lock_init(ptr noundef %reset_flow_resource_lock, ptr noundef nonnull @.str.46, ptr noundef nonnull @mlx4_ib_add.__key.45, i16 noundef signext 3) #17
  %steering_support235 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 25
  %176 = ptrtoint ptr %steering_support235 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %steering_support235, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %177)
  %cmp236 = icmp ne i32 %177, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ib_num_ports.0.lcssa)
  %tobool239.not = icmp eq i32 %ib_num_ports.0.lcssa, 0
  %or.cond = select i1 %cmp236, i1 true, i1 %tobool239.not
  br i1 %or.cond, label %do.body224.if.end271_crit_edge, label %if.then240

do.body224.if.end271_crit_edge:                   ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end271

if.then240:                                       ; preds = %do.body224
  %steer_qpn_count = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 23
  %178 = ptrtoint ptr %steer_qpn_count to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 256, ptr %steer_qpn_count, align 4
  %steer_qpn_base = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 24
  %call242 = call i32 @mlx4_qp_reserve_range(ptr noundef %dev, i32 noundef 256, i32 noundef 1, ptr noundef %steer_qpn_base, i8 noundef zeroext 0, i8 noundef zeroext 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call242)
  %tobool243.not = icmp eq i32 %call242, 0
  br i1 %tobool243.not, label %if.end245, label %if.then240.err_counter_crit_edge

if.then240.err_counter_crit_edge:                 ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_counter

if.end245:                                        ; preds = %if.then240
  %179 = ptrtoint ptr %steer_qpn_count to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %steer_qpn_count, align 4
  %call247 = call ptr @bitmap_alloc(i32 noundef %180, i32 noundef 3264) #17
  %ib_uc_qpns_bitmap = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 22
  %181 = ptrtoint ptr %ib_uc_qpns_bitmap to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %call247, ptr %ib_uc_qpns_bitmap, align 8
  %tobool249.not = icmp eq ptr %call247, null
  br i1 %tobool249.not, label %if.end245.err_steer_qp_release_crit_edge, label %if.end251

if.end245.err_steer_qp_release_crit_edge:         ; preds = %if.end245
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_steer_qp_release

if.end251:                                        ; preds = %if.end245
  %182 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %182)
  %183 = load i64, ptr %flags2, align 8
  %and254 = and i64 %183, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and254)
  %tobool255.not = icmp eq i64 %and254, 0
  %184 = ptrtoint ptr %steer_qpn_count to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %steer_qpn_count, align 4
  %sub.i654 = add i32 %185, 31
  %186 = lshr i32 %sub.i654, 3
  %mul.i655 = and i32 %186, 536870908
  br i1 %tobool255.not, label %if.else267, label %if.then256

if.then256:                                       ; preds = %if.end251
  %187 = call ptr @memset(ptr %call247, i32 0, i32 %mul.i655)
  %188 = ptrtoint ptr %steer_qpn_base to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %steer_qpn_base, align 8
  %190 = ptrtoint ptr %steer_qpn_count to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %steer_qpn_count, align 4
  %add262 = add i32 %189, -1
  %sub = add i32 %add262, %191
  %call263 = call i32 @mlx4_FLOW_STEERING_IB_UC_QP_RANGE(ptr noundef %dev, i32 noundef %189, i32 noundef %sub) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call263)
  %tobool264.not = icmp eq i32 %call263, 0
  br i1 %tobool264.not, label %if.then256.if.end271_crit_edge, label %if.then256.err_steer_free_bitmap_crit_edge

if.then256.err_steer_free_bitmap_crit_edge:       ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_steer_free_bitmap

if.then256.if.end271_crit_edge:                   ; preds = %if.then256
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end271

if.else267:                                       ; preds = %if.end251
  call void @__sanitizer_cov_trace_pc() #19
  %192 = call ptr @memset(ptr %call247, i32 255, i32 %mul.i655)
  br label %if.end271

if.end271:                                        ; preds = %if.else267, %if.then256.if.end271_crit_edge, %do.body224.if.end271_crit_edge
  %193 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %dev53, align 8
  %num_ports275700 = getelementptr inbounds %struct.mlx4_dev, ptr %194, i32 0, i32 3, i32 2
  %195 = ptrtoint ptr %num_ports275700 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %num_ports275700, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %196)
  %cmp276.not701 = icmp slt i32 %196, 1
  br i1 %cmp276.not701, label %if.end271.for.end286_crit_edge, label %if.end271.for.body278_crit_edge

if.end271.for.body278_crit_edge:                  ; preds = %if.end271
  br label %for.body278

if.end271.for.end286_crit_edge:                   ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end286

for.body278:                                      ; preds = %for.body278.for.body278_crit_edge, %if.end271.for.body278_crit_edge
  %197 = phi ptr [ %201, %for.body278.for.body278_crit_edge ], [ %194, %if.end271.for.body278_crit_edge ]
  %j.0702 = phi i32 [ %inc285, %for.body278.for.body278_crit_edge ], [ 1, %if.end271.for.body278_crit_edge ]
  %sub279 = add i32 %j.0702, -1
  %arrayidx280 = getelementptr %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 14, i32 2, i32 %sub279
  %arrayidx283 = getelementptr %struct.mlx4_dev, ptr %197, i32 0, i32 3, i32 6, i32 %j.0702
  %198 = ptrtoint ptr %arrayidx283 to i32
  call void @__asan_load8_noabort(i32 %198)
  %199 = load i64, ptr %arrayidx283, align 8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx280, i32 noundef 8) #17
  call void @generic_atomic64_set(ptr noundef %arrayidx280, i64 noundef %199) #17
  %inc285 = add i32 %j.0702, 1
  %200 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dev53, align 8
  %num_ports275 = getelementptr inbounds %struct.mlx4_dev, ptr %201, i32 0, i32 3, i32 2
  %202 = ptrtoint ptr %num_ports275 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %num_ports275, align 4
  %cmp276.not = icmp sgt i32 %inc285, %203
  br i1 %cmp276.not, label %for.body278.for.end286_crit_edge, label %for.body278.for.body278_crit_edge

for.body278.for.body278_crit_edge:                ; preds = %for.body278
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body278

for.body278.for.end286_crit_edge:                 ; preds = %for.body278
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end286

for.end286:                                       ; preds = %for.body278.for.end286_crit_edge, %if.end271.for.end286_crit_edge
  %call287 = call fastcc i32 @mlx4_ib_alloc_diag_counters(ptr noundef %call25)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call287)
  %tobool288.not = icmp eq i32 %call287, 0
  br i1 %tobool288.not, label %if.end290, label %for.end286.err_steer_free_bitmap_crit_edge

for.end286.err_steer_free_bitmap_crit_edge:       ; preds = %for.end286
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_steer_free_bitmap

if.end290:                                        ; preds = %for.end286
  %204 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev, align 8
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %205, align 4
  %dev294 = getelementptr inbounds %struct.pci_dev, ptr %207, i32 0, i32 44
  %call295 = call i32 @ib_register_device(ptr noundef %call25, ptr noundef nonnull @.str.47, ptr noundef %dev294) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call295)
  %tobool296.not = icmp eq i32 %call295, 0
  br i1 %tobool296.not, label %if.end298, label %if.end290.err_diag_counters_crit_edge

if.end290.err_diag_counters_crit_edge:            ; preds = %if.end290
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_diag_counters

if.end298:                                        ; preds = %if.end290
  %call299 = call i32 @mlx4_ib_mad_init(ptr noundef %call25) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call299)
  %tobool300.not = icmp eq i32 %call299, 0
  br i1 %tobool300.not, label %if.end302, label %if.end298.err_reg_crit_edge

if.end298.err_reg_crit_edge:                      ; preds = %if.end298
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_reg

if.end302:                                        ; preds = %if.end298
  %call303 = call i32 @mlx4_ib_init_sriov(ptr noundef %call25) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call303)
  %tobool304.not = icmp eq i32 %call303, 0
  br i1 %tobool304.not, label %if.end306, label %if.end302.err_mad_crit_edge

if.end302.err_mad_crit_edge:                      ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_mad

if.end306:                                        ; preds = %if.end302
  %nb = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 14, i32 3
  %208 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %nb, align 8
  %tobool307.not = icmp eq ptr %209, null
  br i1 %tobool307.not, label %if.then308, label %if.end306.if.end318_crit_edge

if.end306.if.end318_crit_edge:                    ; preds = %if.end306
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end318

if.then308:                                       ; preds = %if.end306
  %210 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr @mlx4_ib_netdev_event, ptr %nb, align 8
  %call312 = call i32 @register_netdevice_notifier(ptr noundef %nb) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call312)
  %tobool313.not = icmp eq i32 %call312, 0
  br i1 %tobool313.not, label %if.then308.if.end318_crit_edge, label %if.then308.if.end394.sink.split_crit_edge

if.then308.if.end394.sink.split_crit_edge:        ; preds = %if.then308
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end394.sink.split

if.then308.if.end318_crit_edge:                   ; preds = %if.then308
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end318

if.end318:                                        ; preds = %if.then308.if.end318_crit_edge, %if.end306.if.end318_crit_edge
  %211 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %211)
  %212 = load i64, ptr %flags2, align 8
  %and321 = and i64 %212, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and321)
  %tobool322.not = icmp eq i64 %and321, 0
  br i1 %tobool322.not, label %if.end318.if.end328_crit_edge, label %if.then323

if.end318.if.end328_crit_edge:                    ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end328

if.then323:                                       ; preds = %if.end318
  %call324 = call i32 @mlx4_config_roce_v2_port(ptr noundef %dev, i16 noundef zeroext 4791) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call324)
  %tobool325.not = icmp eq i32 %call324, 0
  br i1 %tobool325.not, label %if.then323.if.end328_crit_edge, label %err_notif

if.then323.if.end328_crit_edge:                   ; preds = %if.then323
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end328

if.end328:                                        ; preds = %if.then323.if.end328_crit_edge, %if.end318.if.end328_crit_edge
  %ib_active = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 13
  %213 = ptrtoint ptr %ib_active to i32
  call void @__asan_store1_noabort(i32 %213)
  store i8 1, ptr %ib_active, align 4
  %214 = ptrtoint ptr %num_ports12 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %num_ports12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %215)
  %cmp332.not703 = icmp slt i32 %215, 1
  br i1 %cmp332.not703, label %if.end328.for.end346_crit_edge, label %if.end328.for.body334_crit_edge

if.end328.for.body334_crit_edge:                  ; preds = %if.end328
  br label %for.body334

if.end328.for.end346_crit_edge:                   ; preds = %if.end328
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end346

for.body334:                                      ; preds = %for.inc344.for.body334_crit_edge, %if.end328.for.body334_crit_edge
  %i.5704 = phi i32 [ %inc345, %for.inc344.for.body334_crit_edge ], [ 1, %if.end328.for.body334_crit_edge ]
  %arrayidx337 = getelementptr %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 77, i32 %i.5704
  %216 = ptrtoint ptr %arrayidx337 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx337, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %217)
  %cmp338 = icmp eq i32 %217, 1
  br i1 %cmp338, label %if.then340, label %for.body334.for.inc344_crit_edge

for.body334.for.inc344_crit_edge:                 ; preds = %for.body334
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc344

if.then340:                                       ; preds = %for.body334
  call void @__sanitizer_cov_trace_pc() #19
  %call341 = call ptr @mlx4_get_devlink_port(ptr noundef %dev, i32 noundef %i.5704) #17
  call void @devlink_port_type_ib_set(ptr noundef %call341, ptr noundef %call25) #17
  br label %for.inc344

for.inc344:                                       ; preds = %if.then340, %for.body334.for.inc344_crit_edge
  %inc345 = add i32 %i.5704, 1
  %218 = ptrtoint ptr %num_ports12 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %num_ports12, align 4
  %cmp332.not = icmp sgt i32 %inc345, %219
  br i1 %cmp332.not, label %for.inc344.for.end346_crit_edge, label %for.inc344.for.body334_crit_edge

for.inc344.for.body334_crit_edge:                 ; preds = %for.inc344
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body334

for.inc344.for.end346_crit_edge:                  ; preds = %for.inc344
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end346

for.end346:                                       ; preds = %for.inc344.for.end346_crit_edge, %if.end328.for.end346_crit_edge
  %220 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %dev53, align 8
  %flags.i656 = getelementptr inbounds %struct.mlx4_dev, ptr %221, i32 0, i32 1
  %222 = ptrtoint ptr %flags.i656 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %flags.i656, align 4
  %and.i657 = and i32 %223, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i657)
  %tobool349.not = icmp eq i32 %and.i657, 0
  br i1 %tobool349.not, label %for.end346.if.end351_crit_edge, label %if.then350

for.end346.if.end351_crit_edge:                   ; preds = %for.end346
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end351

if.then350:                                       ; preds = %for.end346
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @init_pkeys(ptr noundef %call25)
  br label %if.end351

if.end351:                                        ; preds = %if.then350, %for.end346.if.end351_crit_edge
  %224 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %dev53, align 8
  %flags.i658 = getelementptr inbounds %struct.mlx4_dev, ptr %225, i32 0, i32 1
  %226 = ptrtoint ptr %flags.i658 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %flags.i658, align 4
  %and.i659 = and i32 %227, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i659)
  %tobool354.not = icmp eq i32 %and.i659, 0
  br i1 %tobool354.not, label %if.end351.cleanup_crit_edge, label %if.end351.for.body359_crit_edge

if.end351.for.body359_crit_edge:                  ; preds = %if.end351
  br label %for.body359

if.end351.cleanup_crit_edge:                      ; preds = %if.end351
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body359:                                      ; preds = %for.inc371.for.body359_crit_edge, %if.end351.for.body359_crit_edge
  %j.1706 = phi i32 [ %inc372, %for.inc371.for.body359_crit_edge ], [ 0, %if.end351.for.body359_crit_edge ]
  %228 = ptrtoint ptr %dev53 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %dev53, align 8
  %function.i = getelementptr inbounds %struct.mlx4_dev, ptr %229, i32 0, i32 3, i32 1
  %230 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %function.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %j.1706, i32 %231)
  %cmp362 = icmp eq i32 %j.1706, %231
  br i1 %cmp362, label %for.body359.for.inc371_crit_edge, label %if.end365

for.body359.for.inc371_crit_edge:                 ; preds = %for.body359
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc371

if.end365:                                        ; preds = %for.body359
  %call367 = call i32 @mlx4_is_slave_active(ptr noundef %229, i32 noundef %j.1706) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call367)
  %tobool368.not = icmp eq i32 %call367, 0
  br i1 %tobool368.not, label %if.end365.for.inc371_crit_edge, label %if.then369

if.end365.for.inc371_crit_edge:                   ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc371

if.then369:                                       ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #19
  call fastcc void @do_slave_init(ptr noundef %call25, i32 noundef %j.1706, i32 noundef 1)
  br label %for.inc371

for.inc371:                                       ; preds = %if.then369, %if.end365.for.inc371_crit_edge, %for.body359.for.inc371_crit_edge
  %inc372 = add nuw nsw i32 %j.1706, 1
  %exitcond712.not = icmp eq i32 %inc372, 128
  br i1 %exitcond712.not, label %for.inc371.cleanup_crit_edge, label %for.inc371.for.body359_crit_edge

for.inc371.for.body359_crit_edge:                 ; preds = %for.inc371
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body359

for.inc371.cleanup_crit_edge:                     ; preds = %for.inc371
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

err_notif:                                        ; preds = %if.then323
  %232 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %232)
  %.pr = load ptr, ptr %nb, align 8
  %tobool378.not = icmp eq ptr %.pr, null
  br i1 %tobool378.not, label %err_notif.if.end394_crit_edge, label %if.then379

err_notif.if.end394_crit_edge:                    ; preds = %err_notif
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end394

if.then379:                                       ; preds = %err_notif
  %call382 = call i32 @unregister_netdevice_notifier(ptr noundef %nb) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call382)
  %tobool383.not = icmp eq i32 %call382, 0
  br i1 %tobool383.not, label %if.then379.if.end394.sink.split_crit_edge, label %do.end387

if.then379.if.end394.sink.split_crit_edge:        ; preds = %if.then379
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end394.sink.split

do.end387:                                        ; preds = %if.then379
  call void @__sanitizer_cov_trace_pc() #19
  %call389 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.25) #22
  br label %if.end394.sink.split

if.end394.sink.split:                             ; preds = %do.end387, %if.then379.if.end394.sink.split_crit_edge, %if.then308.if.end394.sink.split_crit_edge
  %233 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr null, ptr %nb, align 8
  br label %if.end394

if.end394:                                        ; preds = %if.end394.sink.split, %err_notif.if.end394_crit_edge
  %234 = load ptr, ptr @wq, align 4
  call void @flush_workqueue(ptr noundef %234) #17
  call void @mlx4_ib_close_sriov(ptr noundef %call25) #17
  br label %err_mad

err_mad:                                          ; preds = %if.end394, %if.end302.err_mad_crit_edge
  call void @mlx4_ib_mad_cleanup(ptr noundef %call25) #17
  br label %err_reg

err_reg:                                          ; preds = %err_mad, %if.end298.err_reg_crit_edge
  call void @ib_unregister_device(ptr noundef %call25) #17
  br label %err_diag_counters

err_diag_counters:                                ; preds = %err_reg, %if.end290.err_diag_counters_crit_edge
  call fastcc void @mlx4_ib_diag_cleanup(ptr noundef %call25)
  br label %err_steer_free_bitmap

err_steer_free_bitmap:                            ; preds = %err_diag_counters, %for.end286.err_steer_free_bitmap_crit_edge, %if.then256.err_steer_free_bitmap_crit_edge
  %ib_uc_qpns_bitmap396 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 22
  %235 = ptrtoint ptr %ib_uc_qpns_bitmap396 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %ib_uc_qpns_bitmap396, align 8
  call void @bitmap_free(ptr noundef %236) #17
  br label %err_steer_qp_release

err_steer_qp_release:                             ; preds = %err_steer_free_bitmap, %if.end245.err_steer_qp_release_crit_edge
  %steer_qpn_base397 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 24
  %237 = ptrtoint ptr %steer_qpn_base397 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %steer_qpn_base397, align 8
  %steer_qpn_count398 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 23
  %239 = ptrtoint ptr %steer_qpn_count398 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %steer_qpn_count398, align 4
  call void @mlx4_qp_release_range(ptr noundef %dev, i32 noundef %238, i32 noundef %240) #17
  br label %err_counter

err_counter:                                      ; preds = %err_steer_qp_release, %if.then240.err_counter_crit_edge, %for.body189.err_counter_crit_edge, %if.then163, %if.end158.err_counter_crit_edge
  %241 = ptrtoint ptr %num_ports56 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %num_ports56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %cmp401708 = icmp sgt i32 %242, 0
  br i1 %cmp401708, label %err_counter.for.body403_crit_edge, label %err_counter.err_map_crit_edge

err_counter.err_map_crit_edge:                    ; preds = %err_counter
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_map

err_counter.for.body403_crit_edge:                ; preds = %err_counter
  br label %for.body403

for.body403:                                      ; preds = %for.body403.for.body403_crit_edge, %err_counter.for.body403_crit_edge
  %i.6709 = phi i32 [ %inc407, %for.body403.for.body403_crit_edge ], [ 0, %err_counter.for.body403_crit_edge ]
  %arrayidx405 = getelementptr %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 15, i32 %i.6709
  call fastcc void @mlx4_ib_delete_counters_table(ptr noundef %call25, ptr noundef %arrayidx405)
  %inc407 = add nuw nsw i32 %i.6709, 1
  %243 = ptrtoint ptr %num_ports56 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %num_ports56, align 4
  %cmp401 = icmp slt i32 %inc407, %244
  br i1 %cmp401, label %for.body403.for.body403_crit_edge, label %for.body403.err_map_crit_edge

for.body403.err_map_crit_edge:                    ; preds = %for.body403
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_map

for.body403.for.body403_crit_edge:                ; preds = %for.body403
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body403

err_map:                                          ; preds = %for.body403.err_map_crit_edge, %err_counter.err_map_crit_edge, %init_node_data.exit.err_map_crit_edge
  %245 = ptrtoint ptr %num_comp_vectors63 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %num_comp_vectors63, align 4
  %eq_table.i661 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %call25, i32 0, i32 16
  %247 = ptrtoint ptr %eq_table.i661 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %eq_table.i661, align 8
  %tobool.not.i662 = icmp eq ptr %248, null
  br i1 %tobool.not.i662, label %err_map.mlx4_ib_free_eqs.exit_crit_edge, label %if.end.i663

err_map.mlx4_ib_free_eqs.exit_crit_edge:          ; preds = %err_map
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlx4_ib_free_eqs.exit

if.end.i663:                                      ; preds = %err_map
  %249 = ptrtoint ptr %num_comp_vectors63 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 0, ptr %num_comp_vectors63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %246)
  %cmp14.i = icmp sgt i32 %246, 0
  br i1 %cmp14.i, label %if.end.i663.for.body.i666_crit_edge, label %if.end.i663.for.end.i_crit_edge

if.end.i663.for.end.i_crit_edge:                  ; preds = %if.end.i663
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

if.end.i663.for.body.i666_crit_edge:              ; preds = %if.end.i663
  br label %for.body.i666

for.body.i666:                                    ; preds = %for.body.i666.for.body.i666_crit_edge, %if.end.i663.for.body.i666_crit_edge
  %i.015.i = phi i32 [ %inc.i665, %for.body.i666.for.body.i666_crit_edge ], [ 0, %if.end.i663.for.body.i666_crit_edge ]
  %250 = ptrtoint ptr %eq_table.i661 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %eq_table.i661, align 8
  %arrayidx.i664 = getelementptr i32, ptr %251, i32 %i.015.i
  %252 = ptrtoint ptr %arrayidx.i664 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %arrayidx.i664, align 4
  call void @mlx4_release_eq(ptr noundef %dev, i32 noundef %253) #17
  %inc.i665 = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i665, %246
  br i1 %exitcond.not.i, label %for.body.i666.for.end.i_crit_edge, label %for.body.i666.for.body.i666_crit_edge

for.body.i666.for.body.i666_crit_edge:            ; preds = %for.body.i666
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i666

for.body.i666.for.end.i_crit_edge:                ; preds = %for.body.i666
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i666.for.end.i_crit_edge, %if.end.i663.for.end.i_crit_edge
  %254 = ptrtoint ptr %eq_table.i661 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %eq_table.i661, align 8
  call void @kfree(ptr noundef %255) #17
  %256 = ptrtoint ptr %eq_table.i661 to i32
  call void @__asan_store4_noabort(i32 %256)
  store ptr null, ptr %eq_table.i661, align 8
  br label %mlx4_ib_free_eqs.exit

mlx4_ib_free_eqs.exit:                            ; preds = %for.end.i, %err_map.mlx4_ib_free_eqs.exit_crit_edge
  %257 = ptrtoint ptr %uar_map to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %uar_map, align 8
  call void @iounmap(ptr noundef %258) #17
  br label %err_uar

err_uar:                                          ; preds = %mlx4_ib_free_eqs.exit, %if.end42.err_uar_crit_edge
  call void @mlx4_uar_free(ptr noundef %dev, ptr noundef %priv_uar) #17
  br label %err_pd

err_pd:                                           ; preds = %err_uar, %if.end38.err_pd_crit_edge
  %259 = ptrtoint ptr %priv_pdn to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %priv_pdn, align 8
  call void @mlx4_pd_free(ptr noundef %dev, i32 noundef %260) #17
  br label %err_dealloc

err_dealloc:                                      ; preds = %err_pd, %if.end33.err_dealloc_crit_edge
  call void @ib_dealloc_device(ptr noundef %call25) #17
  br label %cleanup

cleanup:                                          ; preds = %err_dealloc, %for.inc371.cleanup_crit_edge, %if.end351.cleanup_crit_edge, %do.end31, %for.end.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %err_dealloc ], [ null, %do.end31 ], [ null, %for.end.cleanup_crit_edge ], [ %call25, %if.end351.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ %call25, %for.inc371.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %counter_index) #17
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_ib_remove(ptr noundef %dev, ptr noundef %ibdev_ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %num_ports = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 2
  %0 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not76 = icmp slt i32 %1, 1
  br i1 %cmp.not76, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.077 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 77, i32 %i.077
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp2 = icmp eq i32 %3, 1
  br i1 %cmp2, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %call = tail call ptr @mlx4_get_devlink_port(ptr noundef %dev, i32 noundef %i.077) #17
  tail call void @devlink_port_type_clear(ptr noundef %call) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add i32 %i.077, 1
  %4 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_ports, align 4
  %cmp.not = icmp sgt i32 %inc, %5
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ib_active = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 13
  %6 = ptrtoint ptr %ib_active to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %ib_active, align 4
  %7 = load ptr, ptr @wq, align 4
  tail call void @flush_workqueue(ptr noundef %7) #17
  %nb = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 14, i32 3
  %8 = ptrtoint ptr %nb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nb, align 8
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.end.if.end14_crit_edge, label %if.then3

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end14

if.then3:                                         ; preds = %for.end
  %call6 = tail call i32 @unregister_netdevice_notifier(ptr noundef %nb) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then3.if.end10_crit_edge, label %do.end

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #19
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.108) #22
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then3.if.end10_crit_edge
  %10 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %nb, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end10, %for.end.if.end14_crit_edge
  tail call void @mlx4_ib_close_sriov(ptr noundef %ibdev_ptr) #17
  tail call void @mlx4_ib_mad_cleanup(ptr noundef %ibdev_ptr) #17
  tail call void @ib_unregister_device(ptr noundef %ibdev_ptr) #17
  %arrayidx.i = getelementptr %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 31, i32 0
  %offset.i = getelementptr %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 31, i32 0, i32 1
  %11 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %offset.i, align 4
  tail call void @kfree(ptr noundef %12) #17
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  tail call void @kfree(ptr noundef %14) #17
  %arrayidx.1.i = getelementptr %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 31, i32 1
  %offset.1.i = getelementptr %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 31, i32 1, i32 1
  %15 = ptrtoint ptr %offset.1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %offset.1.i, align 4
  tail call void @kfree(ptr noundef %16) #17
  %17 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.1.i, align 4
  tail call void @kfree(ptr noundef %18) #17
  %steer_qpn_base = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 24
  %19 = ptrtoint ptr %steer_qpn_base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %steer_qpn_base, align 8
  %steer_qpn_count = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 23
  %21 = ptrtoint ptr %steer_qpn_count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %steer_qpn_count, align 4
  tail call void @mlx4_qp_release_range(ptr noundef %dev, i32 noundef %20, i32 noundef %22) #17
  %ib_uc_qpns_bitmap = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 22
  %23 = ptrtoint ptr %ib_uc_qpns_bitmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ib_uc_qpns_bitmap, align 8
  tail call void @bitmap_free(ptr noundef %24) #17
  %uar_map = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 3
  %25 = ptrtoint ptr %uar_map to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %uar_map, align 8
  tail call void @iounmap(ptr noundef %26) #17
  %num_ports16 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 2
  %27 = ptrtoint ptr %num_ports16 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_ports16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1779 = icmp sgt i32 %28, 0
  br i1 %cmp1779, label %if.end14.for.body18_crit_edge, label %if.end14.for.cond23.preheader_crit_edge

if.end14.for.cond23.preheader_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond23.preheader

if.end14.for.body18_crit_edge:                    ; preds = %if.end14
  br label %for.body18

for.cond23.preheader:                             ; preds = %for.body18.for.cond23.preheader_crit_edge, %if.end14.for.cond23.preheader_crit_edge
  %29 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp26.not81 = icmp slt i32 %30, 1
  br i1 %cmp26.not81, label %for.cond23.preheader.for.end37_crit_edge, label %for.cond23.preheader.for.body27_crit_edge

for.cond23.preheader.for.body27_crit_edge:        ; preds = %for.cond23.preheader
  br label %for.body27

for.cond23.preheader.for.end37_crit_edge:         ; preds = %for.cond23.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end37

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %if.end14.for.body18_crit_edge
  %p.080 = phi i32 [ %inc21, %for.body18.for.body18_crit_edge ], [ 0, %if.end14.for.body18_crit_edge ]
  %arrayidx19 = getelementptr %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 15, i32 %p.080
  tail call fastcc void @mlx4_ib_delete_counters_table(ptr noundef %ibdev_ptr, ptr noundef %arrayidx19)
  %inc21 = add nuw nsw i32 %p.080, 1
  %31 = ptrtoint ptr %num_ports16 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_ports16, align 4
  %cmp17 = icmp slt i32 %inc21, %32
  br i1 %cmp17, label %for.body18.for.body18_crit_edge, label %for.body18.for.cond23.preheader_crit_edge

for.body18.for.cond23.preheader_crit_edge:        ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond23.preheader

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body18

for.body27:                                       ; preds = %for.inc35.for.body27_crit_edge, %for.cond23.preheader.for.body27_crit_edge
  %p.182 = phi i32 [ %inc36, %for.inc35.for.body27_crit_edge ], [ 1, %for.cond23.preheader.for.body27_crit_edge ]
  %arrayidx30 = getelementptr %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 77, i32 %p.182
  %33 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp31 = icmp eq i32 %34, 1
  br i1 %cmp31, label %if.then32, label %for.body27.for.inc35_crit_edge

for.body27.for.inc35_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc35

if.then32:                                        ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #19
  %call33 = tail call i32 @mlx4_CLOSE_PORT(ptr noundef %dev, i32 noundef %p.182) #17
  br label %for.inc35

for.inc35:                                        ; preds = %if.then32, %for.body27.for.inc35_crit_edge
  %inc36 = add i32 %p.182, 1
  %35 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_ports, align 4
  %cmp26.not = icmp sgt i32 %inc36, %36
  br i1 %cmp26.not, label %for.inc35.for.end37_crit_edge, label %for.inc35.for.body27_crit_edge

for.inc35.for.body27_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body27

for.inc35.for.end37_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end37

for.end37:                                        ; preds = %for.inc35.for.end37_crit_edge, %for.cond23.preheader.for.end37_crit_edge
  %num_comp_vectors.i = getelementptr inbounds %struct.ib_device, ptr %ibdev_ptr, i32 0, i32 12
  %37 = ptrtoint ptr %num_comp_vectors.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_comp_vectors.i, align 4
  %eq_table.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 16
  %39 = ptrtoint ptr %eq_table.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %eq_table.i, align 8
  %tobool.not.i = icmp eq ptr %40, null
  br i1 %tobool.not.i, label %for.end37.mlx4_ib_free_eqs.exit_crit_edge, label %if.end.i

for.end37.mlx4_ib_free_eqs.exit_crit_edge:        ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlx4_ib_free_eqs.exit

if.end.i:                                         ; preds = %for.end37
  %41 = ptrtoint ptr %num_comp_vectors.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %num_comp_vectors.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp14.i = icmp sgt i32 %38, 0
  br i1 %cmp14.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.for.end.i_crit_edge

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %i.015.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %42 = ptrtoint ptr %eq_table.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %eq_table.i, align 8
  %arrayidx.i75 = getelementptr i32, ptr %43, i32 %i.015.i
  %44 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx.i75, align 4
  tail call void @mlx4_release_eq(ptr noundef %dev, i32 noundef %45) #17
  %inc.i = add nuw nsw i32 %i.015.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %38
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %46 = ptrtoint ptr %eq_table.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %eq_table.i, align 8
  tail call void @kfree(ptr noundef %47) #17
  %48 = ptrtoint ptr %eq_table.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %eq_table.i, align 8
  br label %mlx4_ib_free_eqs.exit

mlx4_ib_free_eqs.exit:                            ; preds = %for.end.i, %for.end37.mlx4_ib_free_eqs.exit_crit_edge
  %priv_uar = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 4
  tail call void @mlx4_uar_free(ptr noundef %dev, ptr noundef %priv_uar) #17
  %priv_pdn = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 5
  %49 = ptrtoint ptr %priv_pdn to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %priv_pdn, align 8
  tail call void @mlx4_pd_free(ptr noundef %dev, i32 noundef %50) #17
  tail call void @ib_dealloc_device(ptr noundef %ibdev_ptr) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_ib_event(ptr nocapture noundef readonly %dev, ptr noundef %ibdev_ptr, i32 noundef %event, i32 noundef %param) #0 align 64 {
entry:
  %cq_notify_list.i = alloca %struct.list_head, align 4
  %ibev = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ibev) #17
  %0 = getelementptr inbounds %struct.ib_event, ptr %ibev, i32 0, i32 1
  %1 = getelementptr inbounds %struct.ib_event, ptr %ibev, i32 0, i32 2
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %4 = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end13, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %5 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %event, label %land.lhs.true.cleanup_crit_edge [
    i32 1, label %land.lhs.true.if.then_crit_edge
    i32 2, label %land.lhs.true.if.then_crit_edge205
    i32 4, label %land.lhs.true.if.end16.thread_crit_edge
    i32 0, label %land.lhs.true.sw.bb47_crit_edge
    i32 5, label %land.lhs.true.sw.bb77_crit_edge
    i32 6, label %land.lhs.true.sw.bb89_crit_edge
  ]

land.lhs.true.sw.bb89_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb89

land.lhs.true.sw.bb77_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb77

land.lhs.true.sw.bb47_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb47

land.lhs.true.if.end16.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.thread

land.lhs.true.if.then_crit_edge205:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %land.lhs.true.if.then_crit_edge205
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2592, i32 noundef 84) #21
  %tobool4.not = icmp eq ptr %call7.i, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %do.body

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #17
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -64, ptr %call7.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.4, ptr noundef nonnull @mlx4_ib_event.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry9 = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %entry9, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i, i32 0, i32 2
  %10 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @handle_bonded_port_state_event, ptr %func, align 4
  %ib_dev = getelementptr inbounds %struct.ib_event_work, ptr %call7.i, i32 0, i32 1
  %11 = ptrtoint ptr %ib_dev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %ibdev_ptr, ptr %ib_dev, align 4
  %12 = load ptr, ptr @wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef nonnull %call7.i) #17
  br label %cleanup

if.end13:                                         ; preds = %entry
  %13 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.120)
  switch i32 %event, label %if.end13.cleanup_crit_edge [
    i32 4, label %if.end13.if.end16.thread_crit_edge
    i32 1, label %sw.bb
    i32 2, label %sw.bb41
    i32 0, label %if.end13.sw.bb47_crit_edge
    i32 5, label %if.end13.sw.bb77_crit_edge
    i32 6, label %if.end13.sw.bb89_crit_edge
  ]

if.end13.sw.bb89_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb89

if.end13.sw.bb77_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb77

if.end13.sw.bb47_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %sw.bb47

if.end13.if.end16.thread_crit_edge:               ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16.thread

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16.thread:                                  ; preds = %if.end13.if.end16.thread_crit_edge, %land.lhs.true.if.end16.thread_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i176 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 2592, i32 noundef 84) #21
  %tobool51.not = icmp eq ptr %call7.i176, null
  br i1 %tobool51.not, label %if.end16.thread.cleanup_crit_edge, label %do.body54

if.end16.thread.cleanup_crit_edge:                ; preds = %if.end16.thread
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb:                                            ; preds = %if.end13
  %num_ports = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 2
  %15 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %param)
  %cmp17 = icmp slt i32 %16, %param
  br i1 %cmp17, label %sw.bb.cleanup_crit_edge, label %if.end19

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end19:                                         ; preds = %sw.bb
  %and.i178 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i178)
  %tobool21.not = icmp eq i32 %and.i178, 0
  br i1 %tobool21.not, label %land.lhs.true22, label %if.end19.if.end39_crit_edge

if.end19.if.end39_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

land.lhs.true22:                                  ; preds = %if.end19
  %call24 = tail call i32 @rdma_port_get_link_layer(ptr noundef %ibdev_ptr, i32 noundef %param) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24)
  %cmp25 = icmp eq i32 %call24, 1
  br i1 %cmp25, label %if.then26, label %land.lhs.true22.if.end39_crit_edge

land.lhs.true22.if.end39_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

if.then26:                                        ; preds = %land.lhs.true22
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and.i180 = and i32 %18, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i180)
  %tobool28.not = icmp eq i32 %and.i180, 0
  br i1 %tobool28.not, label %if.then26.if.end30_crit_edge, label %if.then29

if.then26.if.end30_crit_edge:                     ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end30

if.then29:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mlx4_ib_invalidate_all_guid_record(ptr noundef %ibdev_ptr, i32 noundef %param) #17
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %if.then26.if.end30_crit_edge
  %dev31 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 1
  %19 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev31, align 8
  %flags = getelementptr inbounds %struct.mlx4_dev, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags, align 4
  %and = and i32 %22, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool32.not = icmp eq i32 %and, 0
  br i1 %tobool32.not, label %if.end30.if.end39_crit_edge, label %land.lhs.true33

if.end30.if.end39_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

land.lhs.true33:                                  ; preds = %if.end30
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %20, i32 0, i32 3, i32 61
  %23 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %flags2, align 8
  %and35 = and i64 %24, 137438953472
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and35)
  %tobool36.not = icmp eq i64 %and35, 0
  br i1 %tobool36.not, label %if.then37, label %land.lhs.true33.if.end39_crit_edge

land.lhs.true33.if.end39_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end39

if.then37:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mlx4_sched_ib_sl2vl_update_work(ptr noundef %ibdev_ptr, i32 noundef %param)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %land.lhs.true33.if.end39_crit_edge, %if.end30.if.end39_crit_edge, %land.lhs.true22.if.end39_crit_edge, %if.end19.if.end39_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 9, ptr %1, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end13
  %num_ports42 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 2
  %26 = ptrtoint ptr %num_ports42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_ports42, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %param)
  %cmp43 = icmp slt i32 %27, %param
  br i1 %cmp43, label %sw.bb41.cleanup_crit_edge, label %if.end45

sw.bb41.cleanup_crit_edge:                        ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end45:                                         ; preds = %sw.bb41
  call void @__sanitizer_cov_trace_pc() #19
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 10, ptr %1, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end13.sw.bb47_crit_edge, %land.lhs.true.sw.bb47_crit_edge
  %ib_active = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 13
  %29 = ptrtoint ptr %ib_active to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %ib_active, align 4
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 8, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cq_notify_list.i) #17
  %31 = getelementptr inbounds %struct.list_head, ptr %cq_notify_list.i, i32 0, i32 1
  %call.i181 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.111) #22
  %32 = ptrtoint ptr %cq_notify_list.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %cq_notify_list.i, ptr %cq_notify_list.i, align 4
  %33 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %cq_notify_list.i, ptr %31, align 4
  %reset_flow_resource_lock.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 29
  %call5.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %reset_flow_resource_lock.i) #17
  %qp_list.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 30
  %34 = ptrtoint ptr %qp_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %.pn190.i = load ptr, ptr %qp_list.i, align 8
  %cmp12.not191.i = icmp eq ptr %.pn190.i, %qp_list.i
  br i1 %cmp12.not191.i, label %sw.bb47.for.cond131.preheader.i_crit_edge, label %sw.bb47.do.body15.i_crit_edge

sw.bb47.do.body15.i_crit_edge:                    ; preds = %sw.bb47
  br label %do.body15.i

sw.bb47.for.cond131.preheader.i_crit_edge:        ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond131.preheader.i

for.cond131.preheader.i:                          ; preds = %if.end119.i.for.cond131.preheader.i_crit_edge, %sw.bb47.for.cond131.preheader.i_crit_edge
  %35 = ptrtoint ptr %cq_notify_list.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn183193.i = load ptr, ptr %cq_notify_list.i, align 4
  %cmp133.not194.i = icmp eq ptr %.pn183193.i, %cq_notify_list.i
  br i1 %cmp133.not194.i, label %for.cond131.preheader.i.mlx4_ib_handle_catas_error.exit_crit_edge, label %for.cond131.preheader.i.for.body136.i_crit_edge

for.cond131.preheader.i.for.body136.i_crit_edge:  ; preds = %for.cond131.preheader.i
  br label %for.body136.i

for.cond131.preheader.i.mlx4_ib_handle_catas_error.exit_crit_edge: ; preds = %for.cond131.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlx4_ib_handle_catas_error.exit

do.body15.i:                                      ; preds = %if.end119.i.do.body15.i_crit_edge, %sw.bb47.do.body15.i_crit_edge
  %.pn192.i = phi ptr [ %.pn.i, %if.end119.i.do.body15.i_crit_edge ], [ %.pn190.i, %sw.bb47.do.body15.i_crit_edge ]
  %lock.i = getelementptr i8, ptr %.pn192.i, i32 -368
  %call22.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #17
  %tail.i = getelementptr i8, ptr %.pn192.i, i32 -300
  %36 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tail.i, align 4
  %head.i = getelementptr i8, ptr %.pn192.i, i32 -304
  %38 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %head.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %39)
  %cmp29.not.i = icmp eq i32 %37, %39
  br i1 %cmp29.not.i, label %do.body15.i.if.end58.i_crit_edge, label %if.then.i

do.body15.i.if.end58.i_crit_edge:                 ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58.i

if.then.i:                                        ; preds = %do.body15.i
  %send_cq.i = getelementptr i8, ptr %.pn192.i, i32 -824
  %40 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %send_cq.i, align 8
  %lock39.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %41, i32 0, i32 5
  %call41.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock39.i) #17
  %mcq46.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %mcq46.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mcq46.i, align 8
  %tobool.not.i = icmp eq ptr %43, null
  br i1 %tobool.not.i, label %if.then.i.if.end56.i_crit_edge, label %land.lhs.true.i

if.then.i.if.end56.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56.i

land.lhs.true.i:                                  ; preds = %if.then.i
  %44 = ptrtoint ptr %send_cq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %send_cq.i, align 8
  %comp_handler.i = getelementptr inbounds %struct.ib_cq, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %comp_handler.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %comp_handler.i, align 8
  %tobool48.not.i = icmp eq ptr %47, null
  br i1 %tobool48.not.i, label %land.lhs.true.i.if.end56.i_crit_edge, label %if.then49.i

land.lhs.true.i.if.end56.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56.i

if.then49.i:                                      ; preds = %land.lhs.true.i
  %reset_notify_added.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %41, i32 0, i32 1, i32 13
  %48 = ptrtoint ptr %reset_notify_added.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %reset_notify_added.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool51.not.i = icmp eq i32 %49, 0
  br i1 %tobool51.not.i, label %if.then52.i, label %if.then49.i.if.end56.i_crit_edge

if.then49.i.if.end56.i_crit_edge:                 ; preds = %if.then49.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56.i

if.then52.i:                                      ; preds = %if.then49.i
  %50 = ptrtoint ptr %reset_notify_added.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %reset_notify_added.i, align 4
  %reset_notify.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %41, i32 0, i32 1, i32 14
  %51 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %31, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %reset_notify.i, ptr noundef %52, ptr noundef nonnull %cq_notify_list.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then52.i.if.end56.i_crit_edge

if.then52.i.if.end56.i_crit_edge:                 ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end56.i

if.end.i.i.i:                                     ; preds = %if.then52.i
  call void @__sanitizer_cov_trace_pc() #19
  %53 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %reset_notify.i, ptr %31, align 4
  %54 = ptrtoint ptr %reset_notify.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %cq_notify_list.i, ptr %reset_notify.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %41, i32 0, i32 1, i32 14, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %reset_notify.i, ptr %52, align 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.end.i.i.i, %if.then52.i.if.end56.i_crit_edge, %if.then49.i.if.end56.i_crit_edge, %land.lhs.true.i.if.end56.i_crit_edge, %if.then.i.if.end56.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock39.i, i32 noundef %call41.i) #17
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.end56.i, %do.body15.i.if.end58.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call22.i) #17
  %lock68.i = getelementptr i8, ptr %.pn192.i, i32 -460
  %call70.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock68.i) #17
  %srq.i = getelementptr i8, ptr %.pn192.i, i32 -752
  %57 = ptrtoint ptr %srq.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %srq.i, align 8
  %tobool75.not.i = icmp eq ptr %58, null
  br i1 %tobool75.not.i, label %if.then76.i, label %if.end58.i.if.end119.i_crit_edge

if.end58.i.if.end119.i_crit_edge:                 ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end119.i

if.then76.i:                                      ; preds = %if.end58.i
  %tail78.i = getelementptr i8, ptr %.pn192.i, i32 -392
  %59 = ptrtoint ptr %tail78.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tail78.i, align 8
  %head80.i = getelementptr i8, ptr %.pn192.i, i32 -396
  %61 = ptrtoint ptr %head80.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %head80.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %62)
  %cmp81.not.i = icmp eq i32 %60, %62
  br i1 %cmp81.not.i, label %if.then76.i.if.end119.i_crit_edge, label %if.then83.i

if.then76.i.if.end119.i_crit_edge:                ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end119.i

if.then83.i:                                      ; preds = %if.then76.i
  %recv_cq.i = getelementptr i8, ptr %.pn192.i, i32 -820
  %63 = ptrtoint ptr %recv_cq.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %recv_cq.i, align 4
  %lock92.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %64, i32 0, i32 5
  %call94.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock92.i) #17
  %mcq99.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %mcq99.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %mcq99.i, align 8
  %tobool101.not.i = icmp eq ptr %66, null
  br i1 %tobool101.not.i, label %if.then83.i.if.end116.i_crit_edge, label %land.lhs.true102.i

if.then83.i.if.end116.i_crit_edge:                ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end116.i

land.lhs.true102.i:                               ; preds = %if.then83.i
  %67 = ptrtoint ptr %recv_cq.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %recv_cq.i, align 4
  %comp_handler104.i = getelementptr inbounds %struct.ib_cq, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %comp_handler104.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %comp_handler104.i, align 8
  %tobool105.not.i = icmp eq ptr %70, null
  br i1 %tobool105.not.i, label %land.lhs.true102.i.if.end116.i_crit_edge, label %if.then106.i

land.lhs.true102.i.if.end116.i_crit_edge:         ; preds = %land.lhs.true102.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end116.i

if.then106.i:                                     ; preds = %land.lhs.true102.i
  %reset_notify_added108.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %64, i32 0, i32 1, i32 13
  %71 = ptrtoint ptr %reset_notify_added108.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %reset_notify_added108.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool109.not.i = icmp eq i32 %72, 0
  br i1 %tobool109.not.i, label %if.then110.i, label %if.then106.i.if.end116.i_crit_edge

if.then106.i.if.end116.i_crit_edge:               ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end116.i

if.then110.i:                                     ; preds = %if.then106.i
  %73 = ptrtoint ptr %reset_notify_added108.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 1, ptr %reset_notify_added108.i, align 4
  %reset_notify114.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %64, i32 0, i32 1, i32 14
  %74 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %31, align 4
  %call.i.i186.i = call zeroext i1 @__list_add_valid(ptr noundef %reset_notify114.i, ptr noundef %75, ptr noundef nonnull %cq_notify_list.i) #17
  br i1 %call.i.i186.i, label %if.end.i.i188.i, label %if.then110.i.if.end116.i_crit_edge

if.then110.i.if.end116.i_crit_edge:               ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end116.i

if.end.i.i188.i:                                  ; preds = %if.then110.i
  call void @__sanitizer_cov_trace_pc() #19
  %76 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %reset_notify114.i, ptr %31, align 4
  %77 = ptrtoint ptr %reset_notify114.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %cq_notify_list.i, ptr %reset_notify114.i, align 4
  %prev3.i.i187.i = getelementptr inbounds %struct.mlx4_ib_cq, ptr %64, i32 0, i32 1, i32 14, i32 1
  %78 = ptrtoint ptr %prev3.i.i187.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev3.i.i187.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %reset_notify114.i, ptr %75, align 4
  br label %if.end116.i

if.end116.i:                                      ; preds = %if.end.i.i188.i, %if.then110.i.if.end116.i_crit_edge, %if.then106.i.if.end116.i_crit_edge, %land.lhs.true102.i.if.end116.i_crit_edge, %if.then83.i.if.end116.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock92.i, i32 noundef %call94.i) #17
  br label %if.end119.i

if.end119.i:                                      ; preds = %if.end116.i, %if.then76.i.if.end119.i_crit_edge, %if.end58.i.if.end119.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock68.i, i32 noundef %call70.i) #17
  %80 = ptrtoint ptr %.pn192.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pn.i = load ptr, ptr %.pn192.i, align 8
  %cmp12.not.i = icmp eq ptr %.pn.i, %qp_list.i
  br i1 %cmp12.not.i, label %if.end119.i.for.cond131.preheader.i_crit_edge, label %if.end119.i.do.body15.i_crit_edge

if.end119.i.do.body15.i_crit_edge:                ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body15.i

if.end119.i.for.cond131.preheader.i_crit_edge:    ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond131.preheader.i

for.body136.i:                                    ; preds = %for.body136.i.for.body136.i_crit_edge, %for.cond131.preheader.i.for.body136.i_crit_edge
  %.pn183195.i = phi ptr [ %.pn183.i, %for.body136.i.for.body136.i_crit_edge ], [ %.pn183193.i, %for.cond131.preheader.i.for.body136.i_crit_edge ]
  %mcq.0.i = getelementptr i8, ptr %.pn183195.i, i32 -120
  %81 = ptrtoint ptr %mcq.0.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %mcq.0.i, align 4
  call void %82(ptr noundef %mcq.0.i) #17
  %83 = ptrtoint ptr %.pn183195.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pn183.i = load ptr, ptr %.pn183195.i, align 4
  %cmp133.not.i = icmp eq ptr %.pn183.i, %cq_notify_list.i
  br i1 %cmp133.not.i, label %for.body136.i.mlx4_ib_handle_catas_error.exit_crit_edge, label %for.body136.i.for.body136.i_crit_edge

for.body136.i.for.body136.i_crit_edge:            ; preds = %for.body136.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body136.i

for.body136.i.mlx4_ib_handle_catas_error.exit_crit_edge: ; preds = %for.body136.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlx4_ib_handle_catas_error.exit

mlx4_ib_handle_catas_error.exit:                  ; preds = %for.body136.i.mlx4_ib_handle_catas_error.exit_crit_edge, %for.cond131.preheader.i.mlx4_ib_handle_catas_error.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %reset_flow_resource_lock.i, i32 noundef %call5.i) #17
  %call150.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.111) #22
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cq_notify_list.i) #17
  br label %sw.epilog

do.body54:                                        ; preds = %if.end16.thread
  %84 = inttoptr i32 %param to ptr
  tail call void @__init_work(ptr noundef nonnull %call7.i176, i32 noundef 0) #17
  %85 = ptrtoint ptr %call7.i176 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 -64, ptr %call7.i176, align 8
  %lockdep_map61 = getelementptr inbounds %struct.work_struct, ptr %call7.i176, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map61, ptr noundef nonnull @.str.4, ptr noundef nonnull @mlx4_ib_event.__key.109, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %entry63 = getelementptr inbounds %struct.work_struct, ptr %call7.i176, i32 0, i32 1
  %86 = ptrtoint ptr %entry63 to i32
  call void @__asan_store4_noabort(i32 %86)
  store volatile ptr %entry63, ptr %entry63, align 4
  %prev.i182 = getelementptr inbounds %struct.work_struct, ptr %call7.i176, i32 0, i32 1, i32 1
  %87 = ptrtoint ptr %prev.i182 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %entry63, ptr %prev.i182, align 8
  %func65 = getelementptr inbounds %struct.work_struct, ptr %call7.i176, i32 0, i32 2
  %88 = ptrtoint ptr %func65 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @handle_port_mgmt_change_event, ptr %func65, align 4
  %ib_eqe = getelementptr inbounds %struct.ib_event_work, ptr %call7.i176, i32 0, i32 2
  %89 = call ptr @memcpy(ptr %ib_eqe, ptr %84, i32 32)
  %ib_dev68 = getelementptr inbounds %struct.ib_event_work, ptr %call7.i176, i32 0, i32 1
  %90 = ptrtoint ptr %ib_dev68 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %ibdev_ptr, ptr %ib_dev68, align 4
  %91 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %flags.i, align 4
  %and.i184 = and i32 %92, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i184)
  %tobool70.not = icmp eq i32 %and.i184, 0
  br i1 %tobool70.not, label %if.else74, label %if.then71

if.then71:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #19
  %93 = load ptr, ptr @wq, align 4
  %call.i185 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %93, ptr noundef nonnull %call7.i176) #17
  br label %cleanup

if.else74:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @handle_port_mgmt_change_event(ptr noundef nonnull %call7.i176) #17
  br label %cleanup

sw.bb77:                                          ; preds = %if.end13.sw.bb77_crit_edge, %land.lhs.true.sw.bb77_crit_edge
  tail call fastcc void @do_slave_init(ptr noundef %ibdev_ptr, i32 noundef %param, i32 noundef 1)
  %94 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags.i, align 4
  %and.i187 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i187)
  %tobool79.not = icmp eq i32 %and.i187, 0
  br i1 %tobool79.not, label %sw.bb77.cleanup_crit_edge, label %for.cond.preheader

sw.bb77.cleanup_crit_edge:                        ; preds = %sw.bb77
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %sw.bb77
  %num_ports81 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 2
  %96 = ptrtoint ptr %num_ports81 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %num_ports81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %97)
  %cmp82.not202 = icmp slt i32 %97, 1
  br i1 %cmp82.not202, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0203 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %for.cond.preheader.for.body_crit_edge ]
  %call84 = tail call i32 @rdma_port_get_link_layer(ptr noundef %ibdev_ptr, i32 noundef %i.0203) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call84)
  %cmp85 = icmp eq i32 %call84, 1
  br i1 %cmp85, label %if.then86, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.then86:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mlx4_ib_slave_alias_guid_event(ptr noundef %ibdev_ptr, i32 noundef %param, i32 noundef %i.0203, i32 noundef 1) #17
  br label %for.inc

for.inc:                                          ; preds = %if.then86, %for.body.for.inc_crit_edge
  %inc = add i32 %i.0203, 1
  %98 = ptrtoint ptr %num_ports81 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_ports81, align 4
  %cmp82.not = icmp sgt i32 %inc, %99
  br i1 %cmp82.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb89:                                          ; preds = %if.end13.sw.bb89_crit_edge, %land.lhs.true.sw.bb89_crit_edge
  %and.i189 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i189)
  %tobool91.not = icmp eq i32 %and.i189, 0
  br i1 %tobool91.not, label %sw.bb89.if.end106_crit_edge, label %for.cond94.preheader

sw.bb89.if.end106_crit_edge:                      ; preds = %sw.bb89
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end106

for.cond94.preheader:                             ; preds = %sw.bb89
  %num_ports95 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 2
  %100 = ptrtoint ptr %num_ports95 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %num_ports95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp96.not199 = icmp slt i32 %101, 1
  br i1 %cmp96.not199, label %for.cond94.preheader.if.end106_crit_edge, label %for.cond94.preheader.for.body97_crit_edge

for.cond94.preheader.for.body97_crit_edge:        ; preds = %for.cond94.preheader
  br label %for.body97

for.cond94.preheader.if.end106_crit_edge:         ; preds = %for.cond94.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end106

for.body97:                                       ; preds = %for.inc103.for.body97_crit_edge, %for.cond94.preheader.for.body97_crit_edge
  %i93.0200 = phi i32 [ %inc104, %for.inc103.for.body97_crit_edge ], [ 1, %for.cond94.preheader.for.body97_crit_edge ]
  %call99 = tail call i32 @rdma_port_get_link_layer(ptr noundef %ibdev_ptr, i32 noundef %i93.0200) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call99)
  %cmp100 = icmp eq i32 %call99, 1
  br i1 %cmp100, label %if.then101, label %for.body97.for.inc103_crit_edge

for.body97.for.inc103_crit_edge:                  ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc103

if.then101:                                       ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mlx4_ib_slave_alias_guid_event(ptr noundef %ibdev_ptr, i32 noundef %param, i32 noundef %i93.0200, i32 noundef 0) #17
  br label %for.inc103

for.inc103:                                       ; preds = %if.then101, %for.body97.for.inc103_crit_edge
  %inc104 = add i32 %i93.0200, 1
  %102 = ptrtoint ptr %num_ports95 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %num_ports95, align 4
  %cmp96.not = icmp sgt i32 %inc104, %103
  br i1 %cmp96.not, label %for.inc103.if.end106_crit_edge, label %for.inc103.for.body97_crit_edge

for.inc103.for.body97_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body97

for.inc103.if.end106_crit_edge:                   ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end106

if.end106:                                        ; preds = %for.inc103.if.end106_crit_edge, %for.cond94.preheader.if.end106_crit_edge, %sw.bb89.if.end106_crit_edge
  tail call fastcc void @do_slave_init(ptr noundef %ibdev_ptr, i32 noundef %param, i32 noundef 0)
  br label %cleanup

sw.epilog:                                        ; preds = %mlx4_ib_handle_catas_error.exit, %if.end45, %if.end39
  %104 = ptrtoint ptr %ibev to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %ibdev_ptr, ptr %ibev, align 4
  %dev107 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev_ptr, i32 0, i32 1
  %105 = ptrtoint ptr %dev107 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev107, align 8
  %flags.i190 = getelementptr inbounds %struct.mlx4_dev, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %flags.i190 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %flags.i190, align 4
  %109 = and i32 %108, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool109.not = icmp eq i32 %109, 0
  %conv110 = and i32 %param, 255
  %spec.select = select i1 %tobool109.not, i32 %conv110, i32 1
  %110 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %spec.select, ptr %0, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %ibev) #17
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end106, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %sw.bb77.cleanup_crit_edge, %if.else74, %if.then71, %sw.bb41.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end16.thread.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %do.body, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ibev) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @_ib_alloc_device(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_pd_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_uar_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_set_device_ops(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_init_sl2vl_tbl(ptr noundef %mdev) unnamed_addr #0 align 64 {
entry:
  %sl2vl = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sl2vl) #17
  %0 = ptrtoint ptr %sl2vl to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %sl2vl, align 8, !annotation !297
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %mdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %num_ports18 = getelementptr inbounds %struct.mlx4_dev, ptr %2, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %num_ports18 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_ports18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.not19 = icmp slt i32 %4, 1
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %5 = phi ptr [ %12, %for.inc.for.body_crit_edge ], [ %2, %entry.for.body_crit_edge ]
  %i.020 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %5, i32 0, i32 3, i32 73, i32 %i.020
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp3 = icmp eq i32 %7, 2
  br i1 %cmp3, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call = call fastcc i32 @mlx4_ib_query_sl2vl(ptr noundef %mdev, i32 noundef %i.020, ptr noundef nonnull %sl2vl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %do.end

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, i32 noundef %i.020, i32 noundef %call) #22
  %8 = ptrtoint ptr %sl2vl to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %sl2vl, align 8
  br label %if.end6

if.end6:                                          ; preds = %do.end, %if.end.if.end6_crit_edge
  %sub = add i32 %i.020, -1
  %arrayidx8 = getelementptr %struct.mlx4_ib_dev, ptr %mdev, i32 0, i32 10, i32 %sub
  %9 = ptrtoint ptr %sl2vl to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %sl2vl, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx8, i32 noundef 8) #17
  tail call void @generic_atomic64_set(ptr noundef %arrayidx8, i64 noundef %10) #17
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %for.body.for.inc_crit_edge
  %inc = add i32 %i.020, 1
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %num_ports = getelementptr inbounds %struct.mlx4_dev, ptr %12, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_ports, align 4
  %cmp.not = icmp sgt i32 %inc, %14
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sl2vl) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_counter_alloc(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_default_counter_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_counter_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_qp_reserve_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_alloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_FLOW_STEERING_IB_UC_QP_RANGE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx4_ib_alloc_diag_counters(ptr noundef %ibdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %diag_counters = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 31
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 3, i32 61
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags2, align 8
  %and = and i64 %3, 34359738368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not.not = icmp eq i64 %and, 0
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not = icmp eq i32 %and.i, 0
  br i1 %tobool3.not, label %if.end7, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then6:                                         ; preds = %for.body25.preheader.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @ib_set_device_ops(ptr noundef %ibdev, ptr noundef nonnull @mlx4_ib_hw_stats_ops1) #17
  br label %cleanup

if.end7:                                          ; preds = %entry
  %offset = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 31, i32 0, i32 1
  %num_counters = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 31, i32 0, i32 2
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %flags2.i = getelementptr inbounds %struct.mlx4_dev, ptr %7, i32 0, i32 3, i32 61
  %8 = ptrtoint ptr %flags2.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %flags2.i, align 8
  %and.i57 = and i64 %9, 34359738368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i57)
  %tobool.not.i = icmp eq i64 %and.i57, 0
  %add3.i = select i1 %tobool.not.i, i32 23, i32 25
  %10 = mul nuw nsw i32 %add3.i, 12
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %10, i32 noundef 3520) #23
  %11 = ptrtoint ptr %diag_counters to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8.i.i.i, ptr %diag_counters, align 4
  %tobool5.not59.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool5.not59.i, label %if.end7.err_alloc_crit_edge, label %if.end7.i.i50.i

if.end7.err_alloc_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_alloc

if.end7.i.i50.i:                                  ; preds = %if.end7
  %12 = shl nuw nsw i32 %add3.i, 2
  %call8.i.i49.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 3520) #23
  %13 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call8.i.i49.i, ptr %offset, align 4
  %tobool9.not.i = icmp eq ptr %call8.i.i49.i, null
  br i1 %tobool9.not.i, label %if.end7.i.i50.i.err.i_crit_edge, label %if.end14

if.end7.i.i50.i.err.i_crit_edge:                  ; preds = %if.end7.i.i50.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err.i

err.i:                                            ; preds = %if.end7.i.i50.i.1.err.i_crit_edge, %if.end7.i.i50.i.err.i_crit_edge
  %arrayidx.lcssa93 = phi ptr [ %diag_counters, %if.end7.i.i50.i.err.i_crit_edge ], [ %arrayidx.1, %if.end7.i.i50.i.1.err.i_crit_edge ]
  %14 = ptrtoint ptr %arrayidx.lcssa93 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.lcssa93, align 4
  tail call void @kfree(ptr noundef %15) #17
  br label %err_alloc

if.end14:                                         ; preds = %if.end7.i.i50.i
  %16 = ptrtoint ptr %num_counters to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add3.i, ptr %num_counters, align 4
  %17 = ptrtoint ptr %diag_counters to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %diag_counters, align 4
  %19 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %offset, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end14
  %j.062.i = phi i32 [ 0, %if.end14 ], [ %inc6.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [21 x %struct.diag_counter], ptr @diag_basic, i32 0, i32 %j.062.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr %struct.rdma_stat_desc, ptr %18, i32 %j.062.i
  %23 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %arrayidx1.i, align 4
  %offset4.i = getelementptr [21 x %struct.diag_counter], ptr @diag_basic, i32 0, i32 %j.062.i, i32 1
  %24 = ptrtoint ptr %offset4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %offset4.i, align 4
  %arrayidx5.i = getelementptr i32, ptr %20, i32 %j.062.i
  %26 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx5.i, align 4
  %inc6.i = add nuw nsw i32 %j.062.i, 1
  %exitcond.not.i = icmp eq i32 %inc6.i, 21
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %flags2.i59 = getelementptr inbounds %struct.mlx4_dev, ptr %28, i32 0, i32 3, i32 61
  %29 = ptrtoint ptr %flags2.i59 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %flags2.i59, align 8
  %and.i60 = and i64 %30, 34359738368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i60)
  %tobool.not.i61 = icmp eq i64 %and.i60, 0
  br i1 %tobool.not.i61, label %for.end.i.for.body25.preheader.i_crit_edge, label %for.body9.preheader.i

for.end.i.for.body25.preheader.i_crit_edge:       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body25.preheader.i

for.body9.preheader.i:                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx12.i = getelementptr %struct.rdma_stat_desc, ptr %18, i32 21
  %31 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str.102, ptr %arrayidx12.i, align 4
  %arrayidx16.i = getelementptr i32, ptr %20, i32 21
  %32 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 304, ptr %arrayidx16.i, align 4
  %arrayidx12.1.i = getelementptr %struct.rdma_stat_desc, ptr %18, i32 22
  %33 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.103, ptr %arrayidx12.1.i, align 4
  %arrayidx16.1.i = getelementptr i32, ptr %20, i32 22
  %34 = ptrtoint ptr %arrayidx16.1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 308, ptr %arrayidx16.1.i, align 4
  br label %for.body25.preheader.i

for.body25.preheader.i:                           ; preds = %for.body9.preheader.i, %for.end.i.for.body25.preheader.i_crit_edge
  %j.2.i = phi i32 [ 21, %for.end.i.for.body25.preheader.i_crit_edge ], [ 23, %for.body9.preheader.i ]
  %arrayidx28.i = getelementptr %struct.rdma_stat_desc, ptr %18, i32 %j.2.i
  %35 = ptrtoint ptr %arrayidx28.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @.str.104, ptr %arrayidx28.i, align 4
  %arrayidx32.i = getelementptr i32, ptr %20, i32 %j.2.i
  %36 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 416, ptr %arrayidx32.i, align 4
  %inc35.i = add nuw nsw i32 %j.2.i, 1
  %arrayidx28.1.i = getelementptr %struct.rdma_stat_desc, ptr %18, i32 %inc35.i
  %37 = ptrtoint ptr %arrayidx28.1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.105, ptr %arrayidx28.1.i, align 4
  %arrayidx32.1.i = getelementptr i32, ptr %20, i32 %inc35.i
  %38 = ptrtoint ptr %arrayidx32.1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 280, ptr %arrayidx32.1.i, align 4
  br i1 %tobool.not.not, label %if.then6, label %if.end7.1

if.end7.1:                                        ; preds = %for.body25.preheader.i
  %arrayidx.1 = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 31, i32 1
  %offset.1 = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 31, i32 1, i32 1
  %num_counters.1 = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 31, i32 1, i32 2
  %39 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev, align 8
  %flags2.i.1 = getelementptr inbounds %struct.mlx4_dev, ptr %40, i32 0, i32 3, i32 61
  %41 = ptrtoint ptr %flags2.i.1 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %flags2.i.1, align 8
  %and.i57.1 = and i64 %42, 34359738368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i57.1)
  %tobool.not.i.1 = icmp eq i64 %and.i57.1, 0
  %spec.select.i.1 = select i1 %tobool.not.i.1, i32 21, i32 23
  %43 = mul nuw nsw i32 %spec.select.i.1, 12
  %call8.i.i.i.1 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %43, i32 noundef 3520) #23
  %44 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call8.i.i.i.1, ptr %arrayidx.1, align 4
  %tobool5.not59.i.1 = icmp eq ptr %call8.i.i.i.1, null
  br i1 %tobool5.not59.i.1, label %if.end7.1.err_alloc_crit_edge, label %if.end7.i.i50.i.1

if.end7.1.err_alloc_crit_edge:                    ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_alloc

if.end7.i.i50.i.1:                                ; preds = %if.end7.1
  %45 = shl nuw nsw i32 %spec.select.i.1, 2
  %call8.i.i49.i.1 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %45, i32 noundef 3520) #23
  %46 = ptrtoint ptr %offset.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call8.i.i49.i.1, ptr %offset.1, align 4
  %tobool9.not.i.1 = icmp eq ptr %call8.i.i49.i.1, null
  br i1 %tobool9.not.i.1, label %if.end7.i.i50.i.1.err.i_crit_edge, label %if.end14.1

if.end7.i.i50.i.1.err.i_crit_edge:                ; preds = %if.end7.i.i50.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %err.i

if.end14.1:                                       ; preds = %if.end7.i.i50.i.1
  %47 = ptrtoint ptr %num_counters.1 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %spec.select.i.1, ptr %num_counters.1, align 4
  %48 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.1, align 4
  %50 = ptrtoint ptr %offset.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %offset.1, align 4
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %for.body.i.1.for.body.i.1_crit_edge, %if.end14.1
  %j.062.i.1 = phi i32 [ 0, %if.end14.1 ], [ %inc6.i.1, %for.body.i.1.for.body.i.1_crit_edge ]
  %arrayidx.i.1 = getelementptr [21 x %struct.diag_counter], ptr @diag_basic, i32 0, i32 %j.062.i.1
  %52 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i.1, align 4
  %arrayidx1.i.1 = getelementptr %struct.rdma_stat_desc, ptr %49, i32 %j.062.i.1
  %54 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %arrayidx1.i.1, align 4
  %offset4.i.1 = getelementptr [21 x %struct.diag_counter], ptr @diag_basic, i32 0, i32 %j.062.i.1, i32 1
  %55 = ptrtoint ptr %offset4.i.1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %offset4.i.1, align 4
  %arrayidx5.i.1 = getelementptr i32, ptr %51, i32 %j.062.i.1
  %57 = ptrtoint ptr %arrayidx5.i.1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %arrayidx5.i.1, align 4
  %inc6.i.1 = add nuw nsw i32 %j.062.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc6.i.1, 21
  br i1 %exitcond.not.i.1, label %for.end.i.1, label %for.body.i.1.for.body.i.1_crit_edge

for.body.i.1.for.body.i.1_crit_edge:              ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i.1

for.end.i.1:                                      ; preds = %for.body.i.1
  %58 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev, align 8
  %flags2.i59.1 = getelementptr inbounds %struct.mlx4_dev, ptr %59, i32 0, i32 3, i32 61
  %60 = ptrtoint ptr %flags2.i59.1 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %flags2.i59.1, align 8
  %and.i60.1 = and i64 %61, 34359738368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i60.1)
  %tobool.not.i61.1 = icmp eq i64 %and.i60.1, 0
  br i1 %tobool.not.i61.1, label %for.end.i.1.mlx4_ib_fill_diag_counters.exit.1_crit_edge, label %for.body9.preheader.i.1

for.end.i.1.mlx4_ib_fill_diag_counters.exit.1_crit_edge: ; preds = %for.end.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %mlx4_ib_fill_diag_counters.exit.1

for.body9.preheader.i.1:                          ; preds = %for.end.i.1
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx12.i.1 = getelementptr %struct.rdma_stat_desc, ptr %49, i32 21
  %62 = ptrtoint ptr %arrayidx12.i.1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.102, ptr %arrayidx12.i.1, align 4
  %arrayidx16.i.1 = getelementptr i32, ptr %51, i32 21
  %63 = ptrtoint ptr %arrayidx16.i.1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 304, ptr %arrayidx16.i.1, align 4
  %arrayidx12.1.i.1 = getelementptr %struct.rdma_stat_desc, ptr %49, i32 22
  %64 = ptrtoint ptr %arrayidx12.1.i.1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @.str.103, ptr %arrayidx12.1.i.1, align 4
  %arrayidx16.1.i.1 = getelementptr i32, ptr %51, i32 22
  %65 = ptrtoint ptr %arrayidx16.1.i.1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 308, ptr %arrayidx16.1.i.1, align 4
  br label %mlx4_ib_fill_diag_counters.exit.1

mlx4_ib_fill_diag_counters.exit.1:                ; preds = %for.body9.preheader.i.1, %for.end.i.1.mlx4_ib_fill_diag_counters.exit.1_crit_edge
  tail call void @ib_set_device_ops(ptr noundef %ibdev, ptr noundef nonnull @mlx4_ib_hw_stats_ops) #17
  br label %cleanup

err_alloc:                                        ; preds = %if.end7.1.err_alloc_crit_edge, %err.i, %if.end7.err_alloc_crit_edge
  %tobool4.not6592 = phi i1 [ %tobool9.not.i, %err.i ], [ %tobool5.not59.i, %if.end7.1.err_alloc_crit_edge ], [ %tobool5.not59.i, %if.end7.err_alloc_crit_edge ]
  br i1 %tobool4.not6592, label %err_alloc.cleanup_crit_edge, label %if.then22

err_alloc.cleanup_crit_edge:                      ; preds = %err_alloc
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then22:                                        ; preds = %err_alloc
  call void @__sanitizer_cov_trace_pc() #19
  %66 = ptrtoint ptr %diag_counters to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %diag_counters, align 4
  tail call void @kfree(ptr noundef %67) #17
  %offset27 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 31, i32 0, i32 1
  %68 = ptrtoint ptr %offset27 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %offset27, align 4
  tail call void @kfree(ptr noundef %69) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then22, %err_alloc.cleanup_crit_edge, %mlx4_ib_fill_diag_counters.exit.1, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %mlx4_ib_fill_diag_counters.exit.1 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.then22 ], [ -12, %err_alloc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_mad_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_init_sriov(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_netdev_event(ptr noundef %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  %update_params.i.i = alloca %struct.mlx4_update_qp_params, align 4
  %port_state.i = alloca i32, align 4
  %ibev.i = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i, align 4
  %cmp.i.not = icmp eq ptr %3, @init_net
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %this, i32 -9944
  %call.i = tail call i32 @rtnl_is_locked() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %if.end.if.end29.i_crit_edge

if.end.if.end29.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i

land.rhs.i:                                       ; preds = %if.end
  %.b149.i = load i1, ptr @mlx4_ib_scan_netdevs.__already_done, align 1
  br i1 %.b149.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !298

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @mlx4_ib_scan_netdevs.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 2335, i32 noundef 9, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str, i32 noundef 2335) #17
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %if.end.if.end29.i_crit_edge
  %iboe37.i = getelementptr i8, ptr %this, i32 -72
  tail call void @_raw_spin_lock_bh(ptr noundef %iboe37.i) #17
  %dev38.i = getelementptr i8, ptr %this, i32 -7160
  %4 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev38.i, align 8
  %num_ports154.i = getelementptr inbounds %struct.mlx4_dev, ptr %5, i32 0, i32 3, i32 2
  %6 = ptrtoint ptr %num_ports154.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_ports154.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp.not155.i = icmp slt i32 %7, 1
  br i1 %cmp.not155.i, label %for.end.thread.i, label %for.body.lr.ph.i

for.end.thread.i:                                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_bh(ptr noundef %iboe37.i) #17
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %event)
  %cmp69.i = icmp eq i32 %event, 1
  %event.off.i = add i32 %event, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %event.off.i)
  %switch150.i = icmp ult i32 %event.off.i, 2
  %element.i = getelementptr inbounds %struct.ib_event, ptr %ibev.i, i32 0, i32 1
  %event101.i = getelementptr inbounds %struct.ib_event, ptr %ibev.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %8 = phi ptr [ %5, %for.body.lr.ph.i ], [ %26, %for.inc.i.for.body.i_crit_edge ]
  %update_qps_port.0160.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %update_qps_port.2.i, %for.inc.i.for.body.i_crit_edge ]
  %port.0156.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx4_dev, ptr %8, i32 0, i32 3, i32 77, i32 %port.0156.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %.off.i = add i32 %10, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.then47.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.then47.i:                                      ; preds = %for.body.i
  %call49.i = call ptr @mlx4_get_protocol_dev(ptr noundef %8, i32 noundef 1, i32 noundef %port.0156.i) #17
  %sub.i = add i32 %port.0156.i, -1
  %arrayidx50.i = getelementptr %struct.mlx4_ib_dev, ptr %add.ptr, i32 0, i32 14, i32 1, i32 %sub.i
  %11 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call49.i, ptr %arrayidx50.i, align 4
  %cmp54.i = icmp eq ptr %call49.i, %1
  br i1 %cmp54.i, label %land.lhs.true.i, label %if.then47.i.for.inc.i_crit_edge

if.then47.i.for.inc.i_crit_edge:                  ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %if.then47.i
  %12 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %event, label %land.lhs.true.i.land.lhs.true68.i_crit_edge [
    i32 8, label %land.lhs.true.i.if.then62.i_crit_edge
    i32 5, label %land.lhs.true.i.if.then62.i_crit_edge5
    i32 1, label %land.lhs.true.i.if.then62.i_crit_edge6
    i32 4, label %land.lhs.true.i.if.then62.i_crit_edge7
  ]

land.lhs.true.i.if.then62.i_crit_edge7:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then62.i

land.lhs.true.i.if.then62.i_crit_edge6:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then62.i

land.lhs.true.i.if.then62.i_crit_edge5:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then62.i

land.lhs.true.i.if.then62.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then62.i

land.lhs.true.i.land.lhs.true68.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true68.i

if.then62.i:                                      ; preds = %land.lhs.true.i.if.then62.i_crit_edge, %land.lhs.true.i.if.then62.i_crit_edge5, %land.lhs.true.i.if.then62.i_crit_edge6, %land.lhs.true.i.if.then62.i_crit_edge7
  br label %land.lhs.true68.i

land.lhs.true68.i:                                ; preds = %if.then62.i, %land.lhs.true.i.land.lhs.true68.i_crit_edge
  %update_qps_port.1.ph.i = phi i32 [ %update_qps_port.0160.i, %land.lhs.true.i.land.lhs.true68.i_crit_edge ], [ %port.0156.i, %if.then62.i ]
  br i1 %switch150.i, label %if.then72.i, label %land.lhs.true68.i.for.inc.i_crit_edge

land.lhs.true68.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true68.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.then72.i:                                      ; preds = %land.lhs.true68.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %port_state.i) #17
  %13 = ptrtoint ptr %port_state.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %port_state.i, align 4, !annotation !297
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ibev.i) #17
  %14 = call ptr @memset(ptr %ibev.i, i32 0, i32 12)
  %call73.i = call i32 @ib_get_cached_port_state(ptr noundef %add.ptr, i32 noundef %port.0156.i, ptr noundef nonnull %port_state.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73.i)
  %tobool74.not.i = icmp eq i32 %call73.i, 0
  br i1 %tobool74.not.i, label %if.end76.i, label %if.then72.i.cleanup.i_crit_edge

if.then72.i.cleanup.i_crit_edge:                  ; preds = %if.then72.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

if.end76.i:                                       ; preds = %if.then72.i
  %15 = ptrtoint ptr %port_state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port_state.i, align 4
  br i1 %cmp69.i, label %land.lhs.true78.i, label %land.lhs.true87.i

land.lhs.true78.i:                                ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp79.not.i = icmp eq i32 %16, 4
  br i1 %cmp79.not.i, label %lor.lhs.false80.i, label %land.lhs.true78.i.cleanup.i_crit_edge

land.lhs.true78.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true78.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

lor.lhs.false80.i:                                ; preds = %land.lhs.true78.i
  %arrayidx82.i = getelementptr %struct.mlx4_ib_dev, ptr %add.ptr, i32 0, i32 14, i32 5, i32 %sub.i
  %17 = ptrtoint ptr %arrayidx82.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx82.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp83.not.i = icmp eq i32 %18, 1
  br i1 %cmp83.not.i, label %lor.lhs.false80.i.if.end95.i_crit_edge, label %lor.lhs.false80.i.cleanup.i_crit_edge

lor.lhs.false80.i.cleanup.i_crit_edge:            ; preds = %lor.lhs.false80.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

lor.lhs.false80.i.if.end95.i_crit_edge:           ; preds = %lor.lhs.false80.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end95.i

land.lhs.true87.i:                                ; preds = %if.end76.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp88.not.i = icmp eq i32 %16, 1
  br i1 %cmp88.not.i, label %lor.lhs.false89.i, label %land.lhs.true87.i.cleanup.i_crit_edge

land.lhs.true87.i.cleanup.i_crit_edge:            ; preds = %land.lhs.true87.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

lor.lhs.false89.i:                                ; preds = %land.lhs.true87.i
  %arrayidx92.i = getelementptr %struct.mlx4_ib_dev, ptr %add.ptr, i32 0, i32 14, i32 5, i32 %sub.i
  %19 = ptrtoint ptr %arrayidx92.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx92.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp93.not.i = icmp eq i32 %20, 4
  br i1 %cmp93.not.i, label %lor.lhs.false89.i.if.end95.i_crit_edge, label %lor.lhs.false89.i.cleanup.i_crit_edge

lor.lhs.false89.i.cleanup.i_crit_edge:            ; preds = %lor.lhs.false89.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i

lor.lhs.false89.i.if.end95.i_crit_edge:           ; preds = %lor.lhs.false89.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end95.i

if.end95.i:                                       ; preds = %lor.lhs.false89.i.if.end95.i_crit_edge, %lor.lhs.false80.i.if.end95.i_crit_edge
  %cond.i = phi i32 [ 9, %lor.lhs.false80.i.if.end95.i_crit_edge ], [ 10, %lor.lhs.false89.i.if.end95.i_crit_edge ]
  %arrayidx98.i = getelementptr %struct.mlx4_ib_dev, ptr %add.ptr, i32 0, i32 14, i32 5, i32 %sub.i
  %21 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %16, ptr %arrayidx98.i, align 4
  %22 = ptrtoint ptr %ibev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr, ptr %ibev.i, align 4
  %23 = ptrtoint ptr %element.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %port.0156.i, ptr %element.i, align 4
  %24 = ptrtoint ptr %event101.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %cond.i, ptr %event101.i, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %ibev.i) #17
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end95.i, %lor.lhs.false89.i.cleanup.i_crit_edge, %land.lhs.true87.i.cleanup.i_crit_edge, %lor.lhs.false80.i.cleanup.i_crit_edge, %land.lhs.true78.i.cleanup.i_crit_edge, %if.then72.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ibev.i) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %port_state.i) #17
  br label %for.inc.i

for.inc.i:                                        ; preds = %cleanup.i, %land.lhs.true68.i.for.inc.i_crit_edge, %if.then47.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %update_qps_port.2.i = phi i32 [ %update_qps_port.1.ph.i, %cleanup.i ], [ %update_qps_port.0160.i, %for.body.i.for.inc.i_crit_edge ], [ %update_qps_port.1.ph.i, %land.lhs.true68.i.for.inc.i_crit_edge ], [ %update_qps_port.0160.i, %if.then47.i.for.inc.i_crit_edge ]
  %inc.i = add i32 %port.0156.i, 1
  %25 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev38.i, align 8
  %num_ports.i = getelementptr inbounds %struct.mlx4_dev, ptr %26, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %num_ports.i, align 4
  %cmp.not.i = icmp sgt i32 %inc.i, %28
  br i1 %cmp.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  call void @_raw_spin_unlock_bh(ptr noundef %iboe37.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %update_qps_port.2.i)
  %cmp106.i = icmp sgt i32 %update_qps_port.2.i, 0
  br i1 %cmp106.i, label %if.then107.i, label %for.end.i.cleanup_crit_edge

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then107.i:                                     ; preds = %for.end.i
  %dev_addr.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %29 = ptrtoint ptr %dev_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev_addr.i.i, align 64
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %conv.i.i.i = zext i8 %32 to i64
  %arrayidx.1.i.i.i = getelementptr i8, ptr %30, i32 1
  %33 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.1.i.i.i, align 1
  %conv.1.i.i.i = zext i8 %34 to i64
  %35 = shl nuw nsw i64 %conv.i.i.i, 16
  %36 = shl nuw nsw i64 %conv.1.i.i.i, 8
  %shl.2.i.i.i = or i64 %36, %35
  %arrayidx.2.i.i.i = getelementptr i8, ptr %30, i32 2
  %37 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.2.i.i.i, align 1
  %conv.2.i.i.i = zext i8 %38 to i64
  %or.2.i.i.i = or i64 %shl.2.i.i.i, %conv.2.i.i.i
  %arrayidx.3.i.i.i = getelementptr i8, ptr %30, i32 3
  %39 = ptrtoint ptr %arrayidx.3.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.3.i.i.i, align 1
  %conv.3.i.i.i = zext i8 %40 to i64
  %arrayidx.4.i.i.i = getelementptr i8, ptr %30, i32 4
  %41 = ptrtoint ptr %arrayidx.4.i.i.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.4.i.i.i, align 1
  %conv.4.i.i.i = zext i8 %42 to i64
  %43 = shl nuw nsw i64 %or.2.i.i.i, 24
  %44 = shl nuw nsw i64 %conv.3.i.i.i, 16
  %45 = shl nuw nsw i64 %conv.4.i.i.i, 8
  %46 = or i64 %45, %44
  %shl.5.i.i.i = or i64 %46, %43
  %arrayidx.5.i.i.i = getelementptr i8, ptr %30, i32 5
  %47 = ptrtoint ptr %arrayidx.5.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.5.i.i.i, align 1
  %conv.5.i.i.i = zext i8 %48 to i64
  %or.5.i.i.i = or i64 %shl.5.i.i.i, %conv.5.i.i.i
  %sub.i.i = add nsw i32 %update_qps_port.2.i, -1
  %arrayidx.i.i = getelementptr %struct.mlx4_ib_dev, ptr %add.ptr, i32 0, i32 14, i32 2, i32 %sub.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx.i.i, i32 noundef 8) #17
  call void @generic_atomic64_set(ptr noundef %arrayidx.i.i, i64 noundef %or.5.i.i.i) #17
  %49 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev38.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %flags.i.i.i, align 4
  %and.i.i.i = and i32 %52, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then107.i.cleanup_crit_edge, label %if.end.i.i

if.then107.i.cleanup_crit_edge:                   ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then107.i
  %arrayidx4.i.i = getelementptr %struct.mlx4_ib_dev, ptr %add.ptr, i32 0, i32 27, i32 %sub.i.i
  call void @mutex_lock_nested(ptr noundef %arrayidx4.i.i, i32 noundef 0) #17
  %arrayidx6.i.i = getelementptr %struct.mlx4_ib_dev, ptr %add.ptr, i32 0, i32 26, i32 %sub.i.i
  %53 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx6.i.i, align 4
  %tobool7.not.i.i = icmp eq ptr %54, null
  br i1 %tobool7.not.i.i, label %if.end.i.i.if.end45.i.i_crit_edge, label %if.then8.i.i

if.end.i.i.if.end45.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end45.i.i

if.then8.i.i:                                     ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %update_params.i.i) #17
  %55 = call ptr @memset(ptr %update_params.i.i, i32 255, i32 12)
  %mutex.i.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %54, i32 0, i32 14
  call void @mutex_lock_nested(ptr noundef %mutex.i.i, i32 noundef 0) #17
  %pri.i.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %54, i32 0, i32 28
  %56 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %pri.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %or.5.i.i.i, i64 %57)
  %cmp.i.i = icmp eq i64 %or.5.i.i.i, %57
  br i1 %cmp.i.i, label %if.then8.i.i.unlock.thread87.i.i_crit_edge, label %if.end10.i.i

if.then8.i.i.unlock.thread87.i.i_crit_edge:       ; preds = %if.then8.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock.thread87.i.i

if.end10.i.i:                                     ; preds = %if.then8.i.i
  %58 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev38.i, align 8
  %conv.i.i = trunc i32 %update_qps_port.2.i to i8
  %call12.i.i = call i32 @mlx4_register_mac(ptr noundef %59, i8 noundef zeroext %conv.i.i, i64 noundef %or.5.i.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i.i)
  %cmp13.i.i = icmp slt i32 %call12.i.i, 0
  br i1 %cmp13.i.i, label %if.end10.i.i.unlock.thread87.i.i_crit_edge, label %if.end16.i.i

if.end10.i.i.unlock.thread87.i.i_crit_edge:       ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock.thread87.i.i

if.end16.i.i:                                     ; preds = %if.end10.i.i
  %conv17.i.i = trunc i32 %call12.i.i to i8
  %60 = ptrtoint ptr %update_params.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %conv17.i.i, ptr %update_params.i.i, align 4
  %61 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev38.i, align 8
  %qpn.i.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %54, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %qpn.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %qpn.i.i, align 4
  %call19.i.i = call i32 @mlx4_update_qp(ptr noundef %62, i32 noundef %64, i32 noundef 1, ptr noundef nonnull %update_params.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.end22.i.i, label %if.end16.i.i.unlock.i.i_crit_edge

if.end16.i.i.unlock.i.i_crit_edge:                ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock.i.i

if.end22.i.i:                                     ; preds = %if.end16.i.i
  %smac_port.i.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %54, i32 0, i32 28, i32 2
  %65 = ptrtoint ptr %smac_port.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %smac_port.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool24.not.i.i = icmp eq i32 %66, 0
  %67 = ptrtoint ptr %pri.i.i to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %or.5.i.i.i, ptr %pri.i.i, align 8
  %68 = ptrtoint ptr %smac_port.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %update_qps_port.2.i, ptr %smac_port.i.i, align 4
  %smac_index32.i.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %54, i32 0, i32 28, i32 1
  %69 = ptrtoint ptr %smac_index32.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call12.i.i, ptr %smac_index32.i.i, align 8
  br i1 %tobool24.not.i.i, label %if.end22.i.i.unlock.thread87.i.i_crit_edge, label %if.end22.i.i.unlock.i.i_crit_edge

if.end22.i.i.unlock.i.i_crit_edge:                ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock.i.i

if.end22.i.i.unlock.thread87.i.i_crit_edge:       ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %unlock.thread87.i.i

unlock.thread87.i.i:                              ; preds = %if.end22.i.i.unlock.thread87.i.i_crit_edge, %if.end10.i.i.unlock.thread87.i.i_crit_edge, %if.then8.i.i.unlock.thread87.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %update_params.i.i) #17
  br label %if.then43.i.i

unlock.i.i:                                       ; preds = %if.end22.i.i.unlock.i.i_crit_edge, %if.end16.i.i.unlock.i.i_crit_edge
  %release_mac.1.i.i = phi i64 [ %57, %if.end22.i.i.unlock.i.i_crit_edge ], [ %or.5.i.i.i, %if.end16.i.i.unlock.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %update_params.i.i) #17
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %release_mac.1.i.i)
  %cmp36.not.i.i = icmp eq i64 %release_mac.1.i.i, -1
  br i1 %cmp36.not.i.i, label %unlock.i.i.if.then43.i.i_crit_edge, label %if.then38.i.i

unlock.i.i.if.then43.i.i_crit_edge:               ; preds = %unlock.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then43.i.i

if.then38.i.i:                                    ; preds = %unlock.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %70 = ptrtoint ptr %dev38.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev38.i, align 8
  call void @mlx4_unregister_mac(ptr noundef %71, i8 noundef zeroext %conv.i.i, i64 noundef %release_mac.1.i.i) #17
  br label %if.then43.i.i

if.then43.i.i:                                    ; preds = %if.then38.i.i, %unlock.i.i.if.then43.i.i_crit_edge, %unlock.thread87.i.i
  call void @mutex_unlock(ptr noundef %mutex.i.i) #17
  br label %if.end45.i.i

if.end45.i.i:                                     ; preds = %if.then43.i.i, %if.end.i.i.if.end45.i.i_crit_edge
  call void @mutex_unlock(ptr noundef %arrayidx4.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end45.i.i, %if.then107.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %for.end.thread.i, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_config_roce_v2_port(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_type_ib_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx4_get_devlink_port(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_pkeys(ptr nocapture noundef %ibdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %num_vfs107 = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %num_vfs107 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_vfs107, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not108 = icmp slt i32 %9, 0
  br i1 %cmp.not108, label %for.cond.preheader.for.cond36.preheader_crit_edge, label %for.cond2.preheader.lr.ph

for.cond.preheader.for.cond36.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond36.preheader

for.cond2.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %pkeys = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 21
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.inc33.for.cond2.preheader_crit_edge, %for.cond2.preheader.lr.ph
  %slave.0109 = phi i32 [ 0, %for.cond2.preheader.lr.ph ], [ %inc34, %for.inc33.for.cond2.preheader_crit_edge ]
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %num_ports103 = getelementptr inbounds %struct.mlx4_dev, ptr %11, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %num_ports103 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_ports103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp4.not104 = icmp slt i32 %13, 1
  br i1 %cmp4.not104, label %for.cond2.preheader.for.inc33_crit_edge, label %for.cond2.preheader.for.cond6.preheader_crit_edge

for.cond2.preheader.for.cond6.preheader_crit_edge: ; preds = %for.cond2.preheader
  br label %for.cond6.preheader

for.cond2.preheader.for.inc33_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc33

for.cond36.preheader:                             ; preds = %for.inc33.for.cond36.preheader_crit_edge, %for.cond.preheader.for.cond36.preheader_crit_edge
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %num_ports39114 = getelementptr inbounds %struct.mlx4_dev, ptr %15, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %num_ports39114 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_ports39114, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp40.not115 = icmp slt i32 %17, 1
  br i1 %cmp40.not115, label %for.cond36.preheader.if.end_crit_edge, label %for.cond36.preheader.for.cond43.preheader_crit_edge

for.cond36.preheader.for.cond43.preheader_crit_edge: ; preds = %for.cond36.preheader
  br label %for.cond43.preheader

for.cond36.preheader.if.end_crit_edge:            ; preds = %for.cond36.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

for.cond6.preheader:                              ; preds = %for.inc30.for.cond6.preheader_crit_edge, %for.cond2.preheader.for.cond6.preheader_crit_edge
  %port.0105 = phi i32 [ %inc31, %for.inc30.for.cond6.preheader_crit_edge ], [ 1, %for.cond2.preheader.for.cond6.preheader_crit_edge ]
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %arrayidx100 = getelementptr %struct.mlx4_dev, ptr %19, i32 0, i32 4, i32 1, i32 %port.0105
  %20 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx100, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp8101.not = icmp eq i32 %21, 0
  br i1 %cmp8101.not, label %for.cond6.preheader.for.inc30_crit_edge, label %for.body9.lr.ph

for.cond6.preheader.for.inc30_crit_edge:          ; preds = %for.cond6.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc30

for.body9.lr.ph:                                  ; preds = %for.cond6.preheader
  %sub19 = add i32 %port.0105, -1
  br label %for.body9

for.body9:                                        ; preds = %for.body9.for.body9_crit_edge, %for.body9.lr.ph
  %22 = phi i32 [ %21, %for.body9.lr.ph ], [ %32, %for.body9.for.body9_crit_edge ]
  %23 = phi ptr [ %19, %for.body9.lr.ph ], [ %30, %for.body9.for.body9_crit_edge ]
  %i.0102 = phi i32 [ 0, %for.body9.lr.ph ], [ %inc, %for.body9.for.body9_crit_edge ]
  %function.i = getelementptr inbounds %struct.mlx4_dev, ptr %23, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %function.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %function.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %slave.0109, i32 %25)
  %cmp12 = icmp eq i32 %slave.0109, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0102)
  %tobool13.not = icmp eq i32 %i.0102, 0
  %or.cond = or i1 %cmp12, %tobool13.not
  %sub = add i32 %22, -1
  %spec.select = select i1 %or.cond, i32 %i.0102, i32 %sub
  %conv = trunc i32 %spec.select to i8
  %arrayidx21 = getelementptr [128 x [2 x [128 x i8]]], ptr %pkeys, i32 0, i32 %slave.0109, i32 %sub19, i32 %i.0102
  %26 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv, ptr %arrayidx21, align 1
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 8
  %conv29 = and i32 %spec.select, 255
  tail call void @mlx4_sync_pkey_table(ptr noundef %28, i32 noundef %slave.0109, i32 noundef %port.0105, i32 noundef %i.0102, i32 noundef %conv29) #17
  %inc = add nuw i32 %i.0102, 1
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 8
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %30, i32 0, i32 4, i32 1, i32 %port.0105
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 4
  %cmp8 = icmp ult i32 %inc, %32
  br i1 %cmp8, label %for.body9.for.body9_crit_edge, label %for.body9.for.inc30_crit_edge

for.body9.for.inc30_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc30

for.body9.for.body9_crit_edge:                    ; preds = %for.body9
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body9

for.inc30:                                        ; preds = %for.body9.for.inc30_crit_edge, %for.cond6.preheader.for.inc30_crit_edge
  %inc31 = add i32 %port.0105, 1
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 8
  %num_ports = getelementptr inbounds %struct.mlx4_dev, ptr %34, i32 0, i32 3, i32 2
  %35 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_ports, align 4
  %cmp4.not = icmp sgt i32 %inc31, %36
  br i1 %cmp4.not, label %for.inc30.for.inc33_crit_edge, label %for.inc30.for.cond6.preheader_crit_edge

for.inc30.for.cond6.preheader_crit_edge:          ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond6.preheader

for.inc30.for.inc33_crit_edge:                    ; preds = %for.inc30
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc33

for.inc33:                                        ; preds = %for.inc30.for.inc33_crit_edge, %for.cond2.preheader.for.inc33_crit_edge
  %inc34 = add i32 %slave.0109, 1
  %37 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev, align 8
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  %num_vfs = getelementptr inbounds %struct.mlx4_dev_persistent, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %num_vfs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %num_vfs, align 4
  %cmp.not = icmp sgt i32 %inc34, %42
  br i1 %cmp.not, label %for.inc33.for.cond36.preheader_crit_edge, label %for.inc33.for.cond2.preheader_crit_edge

for.inc33.for.cond2.preheader_crit_edge:          ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond2.preheader

for.inc33.for.cond36.preheader_crit_edge:         ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond36.preheader

for.cond43.preheader:                             ; preds = %for.inc61.for.cond43.preheader_crit_edge, %for.cond36.preheader.for.cond43.preheader_crit_edge
  %port.1116 = phi i32 [ %inc62, %for.inc61.for.cond43.preheader_crit_edge ], [ 1, %for.cond36.preheader.for.cond43.preheader_crit_edge ]
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 8
  %arrayidx47111 = getelementptr %struct.mlx4_dev, ptr %44, i32 0, i32 4, i32 1, i32 %port.1116
  %45 = ptrtoint ptr %arrayidx47111 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %arrayidx47111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp48112.not = icmp eq i32 %46, 0
  br i1 %cmp48112.not, label %for.cond43.preheader.for.inc61_crit_edge, label %for.body50.lr.ph

for.cond43.preheader.for.inc61_crit_edge:         ; preds = %for.cond43.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc61

for.body50.lr.ph:                                 ; preds = %for.cond43.preheader
  %sub55 = add i32 %port.1116, -1
  br label %for.body50

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %for.body50.lr.ph
  %i.1113 = phi i32 [ 0, %for.body50.lr.ph ], [ %inc59, %for.body50.for.body50_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1113)
  %tobool51.not = icmp eq i32 %i.1113, 0
  %conv53 = sext i1 %tobool51.not to i16
  %arrayidx57 = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 21, i32 1, i32 %sub55, i32 %i.1113
  %47 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv53, ptr %arrayidx57, align 2
  %inc59 = add nuw i32 %i.1113, 1
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 8
  %arrayidx47 = getelementptr %struct.mlx4_dev, ptr %49, i32 0, i32 4, i32 1, i32 %port.1116
  %50 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx47, align 4
  %cmp48 = icmp ult i32 %inc59, %51
  br i1 %cmp48, label %for.body50.for.body50_crit_edge, label %for.body50.for.inc61_crit_edge

for.body50.for.inc61_crit_edge:                   ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc61

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body50

for.inc61:                                        ; preds = %for.body50.for.inc61_crit_edge, %for.cond43.preheader.for.inc61_crit_edge
  %inc62 = add i32 %port.1116, 1
  %52 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev, align 8
  %num_ports39 = getelementptr inbounds %struct.mlx4_dev, ptr %53, i32 0, i32 3, i32 2
  %54 = ptrtoint ptr %num_ports39 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_ports39, align 4
  %cmp40.not = icmp sgt i32 %inc62, %55
  br i1 %cmp40.not, label %for.inc61.if.end_crit_edge, label %for.inc61.for.cond43.preheader_crit_edge

for.inc61.for.cond43.preheader_crit_edge:         ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond43.preheader

for.inc61.if.end_crit_edge:                       ; preds = %for.inc61
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %for.inc61.if.end_crit_edge, %for.cond36.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_is_slave_active(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @do_slave_init(ptr noundef %ibdev, i32 noundef %slave, i32 noundef %do_init) unnamed_addr #0 align 64 {
entry:
  %actv_ports = alloca %struct.mlx4_active_ports, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %actv_ports) #17
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i137 = and i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i137)
  %tobool.not = icmp eq i32 %and.i137, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @mlx4_get_active_ports(ptr noundef %1, i32 noundef %slave) #17
  %4 = ptrtoint ptr %actv_ports to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call2, ptr %actv_ports, align 4
  %num_ports = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 3, i32 2
  %5 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_ports, align 4
  %call4.i = call i32 @__bitmap_weight(ptr noundef nonnull %actv_ports, i32 noundef %6) #17
  %7 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_ports, align 4
  %call9 = call i32 @_find_first_bit_be(ptr noundef nonnull %actv_ports, i32 noundef %8) #17
  %9 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call4.i, i32 4) #17
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end.cleanup_crit_edge, label %if.end7.i.i, !prof !294

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 2848) #23
  %tobool11.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool11.not, label %if.end7.i.i.cleanup_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp143.not = icmp eq i32 %call4.i, 0
  br i1 %cmp143.not, label %for.cond.preheader.do.body40_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body40_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body40

for.body:                                         ; preds = %do.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0144 = phi i32 [ %inc, %do.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 2592, i32 noundef 60) #21
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.0144
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call7.i, ptr %arrayidx, align 4
  %tobool16.not = icmp eq ptr %call7.i, null
  br i1 %tobool16.not, label %while.cond.preheader, label %do.body

while.cond.preheader:                             ; preds = %for.body
  %dec149 = add i32 %i.0144, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec149)
  %cmp18150 = icmp sgt i32 %dec149, -1
  br i1 %cmp18150, label %while.cond.preheader.while.body_crit_edge, label %while.cond.preheader.out_crit_edge

while.cond.preheader.out_crit_edge:               ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dec151 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec149, %while.cond.preheader.while.body_crit_edge ]
  %arrayidx19 = getelementptr ptr, ptr %call8.i.i, i32 %dec151
  %14 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx19, align 4
  call void @kfree(ptr noundef %15) #17
  %dec = add nsw i32 %dec151, -1
  %cmp18 = icmp sgt i32 %dec151, 0
  br i1 %cmp18, label %while.body.while.body_crit_edge, label %while.body.out_crit_edge

while.body.out_crit_edge:                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

do.body:                                          ; preds = %for.body
  call void @__init_work(ptr noundef nonnull %call7.i, i32 noundef 0) #17
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -64, ptr %17, align 4
  %19 = load ptr, ptr %arrayidx, align 4
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %19, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.107, ptr noundef nonnull @do_slave_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #17
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx, align 4
  %entry28 = getelementptr inbounds %struct.work_struct, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %entry28 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %entry28, ptr %entry28, align 4
  %prev.i = getelementptr inbounds %struct.work_struct, ptr %21, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %entry28, ptr %prev.i, align 4
  %24 = load ptr, ptr %arrayidx, align 4
  %func = getelementptr inbounds %struct.work_struct, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mlx4_ib_tunnels_update_work, ptr %func, align 4
  %add = add i32 %i.0144, %call9
  %26 = trunc i32 %add to i8
  %conv = add i8 %26, 1
  %27 = load ptr, ptr %arrayidx, align 4
  %port = getelementptr inbounds %struct.mlx4_ib_demux_work, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %port to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %port, align 4
  %29 = load ptr, ptr %arrayidx, align 4
  %slave34 = getelementptr inbounds %struct.mlx4_ib_demux_work, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %slave34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %slave, ptr %slave34, align 4
  %31 = load ptr, ptr %arrayidx, align 4
  %do_init36 = getelementptr inbounds %struct.mlx4_ib_demux_work, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %do_init36 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %do_init, ptr %do_init36, align 4
  %33 = load ptr, ptr %arrayidx, align 4
  %dev38 = getelementptr inbounds %struct.mlx4_ib_demux_work, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %dev38 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %ibdev, ptr %dev38, align 4
  %inc = add nuw i32 %i.0144, 1
  %exitcond.not = icmp eq i32 %inc, %call4.i
  br i1 %exitcond.not, label %do.body.do.body40_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

do.body.do.body40_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body40

do.body40:                                        ; preds = %do.body.do.body40_crit_edge, %for.cond.preheader.do.body40_crit_edge
  %sriov = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11
  %going_down_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 2
  %call45 = call i32 @_raw_spin_lock_irqsave(ptr noundef %going_down_lock) #17
  %is_going_down = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 11, i32 3
  %35 = ptrtoint ptr %is_going_down to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %is_going_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool51.not = icmp eq i32 %36, 0
  br i1 %tobool51.not, label %for.cond53.preheader, label %if.else

for.cond53.preheader:                             ; preds = %do.body40
  br i1 %cmp143.not, label %for.cond53.preheader.for.end64_crit_edge, label %for.cond53.preheader.for.body56_crit_edge

for.cond53.preheader.for.body56_crit_edge:        ; preds = %for.cond53.preheader
  br label %for.body56

for.cond53.preheader.for.end64_crit_edge:         ; preds = %for.cond53.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end64

for.body56:                                       ; preds = %for.body56.for.body56_crit_edge, %for.cond53.preheader.for.body56_crit_edge
  %i.2148 = phi i32 [ %inc63, %for.body56.for.body56_crit_edge ], [ 0, %for.cond53.preheader.for.body56_crit_edge ]
  %ud_wq = getelementptr [2 x %struct.mlx4_ib_demux_ctx], ptr %sriov, i32 0, i32 %i.2148, i32 4
  %37 = ptrtoint ptr %ud_wq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ud_wq, align 8
  %arrayidx59 = getelementptr ptr, ptr %call8.i.i, i32 %i.2148
  %39 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx59, align 4
  %call.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %38, ptr noundef %40) #17
  %inc63 = add nuw i32 %i.2148, 1
  %exitcond155.not = icmp eq i32 %inc63, %call4.i
  br i1 %exitcond155.not, label %for.body56.for.end64_crit_edge, label %for.body56.for.body56_crit_edge

for.body56.for.body56_crit_edge:                  ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body56

for.body56.for.end64_crit_edge:                   ; preds = %for.body56
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end64

for.end64:                                        ; preds = %for.body56.for.end64_crit_edge, %for.cond53.preheader.for.end64_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %going_down_lock, i32 noundef %call45) #17
  br label %out

if.else:                                          ; preds = %do.body40
  call void @_raw_spin_unlock_irqrestore(ptr noundef %going_down_lock, i32 noundef %call45) #17
  br i1 %cmp143.not, label %if.else.out_crit_edge, label %if.else.for.body72_crit_edge

if.else.for.body72_crit_edge:                     ; preds = %if.else
  br label %for.body72

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

for.body72:                                       ; preds = %for.body72.for.body72_crit_edge, %if.else.for.body72_crit_edge
  %i.3146 = phi i32 [ %inc75, %for.body72.for.body72_crit_edge ], [ 0, %if.else.for.body72_crit_edge ]
  %arrayidx73 = getelementptr ptr, ptr %call8.i.i, i32 %i.3146
  %41 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx73, align 4
  call void @kfree(ptr noundef %42) #17
  %inc75 = add nuw i32 %i.3146, 1
  %exitcond154.not = icmp eq i32 %inc75, %call4.i
  br i1 %exitcond154.not, label %for.body72.out_crit_edge, label %for.body72.for.body72_crit_edge

for.body72.for.body72_crit_edge:                  ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body72

for.body72.out_crit_edge:                         ; preds = %for.body72
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

out:                                              ; preds = %for.body72.out_crit_edge, %if.else.out_crit_edge, %for.end64, %while.body.out_crit_edge, %while.cond.preheader.out_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end7.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %actv_ports) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_close_sriov(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_mad_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_ib_diag_cleanup(ptr nocapture noundef readonly %ibdev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 31, i32 0
  %offset = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 31, i32 0, i32 1
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %offset, align 4
  tail call void @kfree(ptr noundef %1) #17
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef %3) #17
  %arrayidx.1 = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 31, i32 1
  %offset.1 = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 31, i32 1, i32 1
  %4 = ptrtoint ptr %offset.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offset.1, align 4
  tail call void @kfree(ptr noundef %5) #17
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  tail call void @kfree(ptr noundef %7) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_qp_release_range(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mlx4_ib_delete_counters_table(ptr nocapture noundef readonly %ibdev, ptr noundef %ctr_table) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %mutex = getelementptr inbounds %struct.mlx4_ib_counters, ptr %ctr_table, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #17
  %0 = ptrtoint ptr %ctr_table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctr_table, align 4
  %cmp.not24 = icmp eq ptr %1, %ctr_table
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %counter.025 = phi ptr [ %1, %for.body.lr.ph ], [ %tmp_count.027, %list_del.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %counter.025 to i32
  call void @__asan_load4_noabort(i32 %2)
  %tmp_count.027 = load ptr, ptr %counter.025, align 4
  %allocated = getelementptr inbounds %struct.counter_index, ptr %counter.025, i32 0, i32 2
  %3 = ptrtoint ptr %allocated to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %index = getelementptr inbounds %struct.counter_index, ptr %counter.025, i32 0, i32 1
  %7 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index, align 4
  tail call void @mlx4_counter_free(ptr noundef %6, i32 noundef %8) #17
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %counter.025) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %counter.025, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %counter.025 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %counter.025, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %15 = ptrtoint ptr %counter.025 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %counter.025, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %counter.025, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %counter.025) #17
  %cmp.not = icmp eq ptr %tmp_count.027, %ctr_table
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_uar_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_pd_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dealloc_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_post_send(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_post_recv(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_drain_rq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_drain_sq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_poll_cq(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_arm_cq(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_post_srq_recv(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_process_mad(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_query_device(ptr noundef %ibdev, ptr noundef %props, ptr nocapture noundef readonly %uhw) #0 align 64 {
entry:
  %cmd = alloca %struct.mlx4_uverbs_ex_query_device, align 4
  %resp = alloca %struct.mlx4_uverbs_ex_query_device_resp, align 8
  %clock_params = alloca %struct.mlx4_clock_params, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %cmd) #17
  %0 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cmd, align 4, !annotation !297
  %1 = getelementptr inbounds %struct.mlx4_uverbs_ex_query_device, ptr %cmd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !297
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %resp) #17
  %3 = call ptr @memset(ptr %resp, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %clock_params) #17
  %4 = call ptr @memset(ptr %clock_params, i32 255, i32 16)
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %uhw, i32 0, i32 2
  %5 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %inlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %6)
  %cmp = icmp ult i32 %6, 8
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %if.then
  %7 = ptrtoint ptr %uhw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %uhw, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 156) #17
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i.i, label %if.end.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.if.then11.i.i.i_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end
  %9 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %8, i32 8, i32 -1226833920) #24, !srcloc !299
  %asmresult.i.i.i = extractvalue { i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i1.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i1.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !298

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 8) #17
  %10 = call i32 @llvm.read_register.i32(metadata !280) #17
  %and.i.i.i.i.i.i.i = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 4
  %12 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #7, !srcloc !300
  %and.i.i.i.i.i = and i32 %12, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #17, !srcloc !301
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !302
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %8, i32 noundef 8) #17
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %12) #17, !srcloc !301
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #17, !srcloc !302
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end6, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !298

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end.if.then11.i.i.i_crit_edge
  %res.03.i.i.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 8, %if.end.if.then11.i.i.i_crit_edge ], [ 8, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 8, %res.03.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i.i
  %13 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.03.i.i.i)
  br label %cleanup

if.end6:                                          ; preds = %if.end.i.i.i
  %14 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool7.not = icmp eq i32 %15, 0
  br i1 %tobool7.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool10.not = icmp eq i32 %17, 0
  br i1 %tobool10.not, label %if.end9.if.end13_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end13

if.end13:                                         ; preds = %if.end9.if.end13_crit_edge, %entry.if.end13_crit_edge
  %response_length = getelementptr inbounds %struct.mlx4_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 1
  %18 = ptrtoint ptr %response_length to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 8, ptr %response_length, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %19 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 3520, i32 noundef 256) #21
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 256) #21
  %tobool16.not = icmp eq ptr %call7.i.i, null
  %tobool17.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool16.not, i1 true, i1 %tobool17.not
  br i1 %or.cond, label %if.end13.out_crit_edge, label %if.end19

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end19:                                         ; preds = %if.end13
  %21 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 16843009, ptr %call7.i.i, align 8
  %attr_id = getelementptr inbounds %struct.ib_smp, ptr %call7.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %attr_id to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 17, ptr %attr_id, align 8
  %call21 = call i32 @mlx4_MAD_IFC(ptr noundef %ibdev, i32 noundef 3, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call7.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end24, label %if.end19.out_crit_edge

if.end19.out_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end24:                                         ; preds = %if.end19
  %23 = call ptr @memset(ptr %props, i32 0, i32 296)
  %dev25 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %24 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev25, align 8
  %num_ports.i = getelementptr inbounds %struct.mlx4_dev, ptr %25, i32 0, i32 3, i32 2
  %26 = ptrtoint ptr %num_ports.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_ports.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp.not8.i = icmp slt i32 %27, 1
  br i1 %cmp.not8.i, label %if.end24.num_ib_ports.exit_crit_edge, label %if.end24.for.body.i_crit_edge

if.end24.for.body.i_crit_edge:                    ; preds = %if.end24
  br label %for.body.i

if.end24.num_ib_ports.exit_crit_edge:             ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #19
  br label %num_ib_ports.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end24.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc3.i, %for.body.i.for.body.i_crit_edge ], [ 1, %if.end24.for.body.i_crit_edge ]
  %ib_ports.09.i = phi i32 [ %spec.select.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end24.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.mlx4_dev, ptr %25, i32 0, i32 3, i32 77, i32 %i.010.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp2.i = icmp eq i32 %29, 1
  %inc.i = zext i1 %cmp2.i to i32
  %spec.select.i = add i32 %ib_ports.09.i, %inc.i
  %inc3.i = add i32 %i.010.i, 1
  %cmp.not.i = icmp sgt i32 %inc3.i, %27
  br i1 %cmp.not.i, label %for.body.i.num_ib_ports.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.body.i.num_ib_ports.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %num_ib_ports.exit

num_ib_ports.exit:                                ; preds = %for.body.i.num_ib_ports.exit_crit_edge, %if.end24.num_ib_ports.exit_crit_edge
  %ib_ports.0.lcssa.i = phi i32 [ 0, %if.end24.num_ib_ports.exit_crit_edge ], [ %spec.select.i, %for.body.i.num_ib_ports.exit_crit_edge ]
  %caps = getelementptr inbounds %struct.mlx4_dev, ptr %25, i32 0, i32 3
  %30 = ptrtoint ptr %caps to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %caps, align 8
  %32 = ptrtoint ptr %props to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %props, align 8
  %device_cap_flags = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 9
  %33 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 4201504, ptr %device_cap_flags, align 8
  %34 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev25, align 8
  %flags = getelementptr inbounds %struct.mlx4_dev, ptr %35, i32 0, i32 3, i32 60
  %36 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %flags, align 8
  %and = and i64 %37, 256
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool31.not = icmp eq i64 %and, 0
  %spec.store.select = select i1 %tobool31.not, i64 4201504, i64 4201506
  %38 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %spec.store.select, ptr %device_cap_flags, align 8
  %39 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev25, align 8
  %flags37 = getelementptr inbounds %struct.mlx4_dev, ptr %40, i32 0, i32 3, i32 60
  %41 = ptrtoint ptr %flags37 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %flags37, align 8
  %and38 = and i64 %42, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and38)
  %tobool39.not = icmp eq i64 %and38, 0
  br i1 %tobool39.not, label %num_ib_ports.exit.if.end43_crit_edge, label %if.then40

num_ib_ports.exit.if.end43_crit_edge:             ; preds = %num_ib_ports.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.then40:                                        ; preds = %num_ib_ports.exit
  call void @__sanitizer_cov_trace_pc() #19
  %or42 = or i64 %spec.store.select, 4
  %43 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %or42, ptr %device_cap_flags, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then40, %num_ib_ports.exit.if.end43_crit_edge
  %44 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev25, align 8
  %flags46 = getelementptr inbounds %struct.mlx4_dev, ptr %45, i32 0, i32 3, i32 60
  %46 = ptrtoint ptr %flags46 to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %flags46, align 8
  %and47 = and i64 %47, 131072
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and47)
  %tobool48.not = icmp eq i64 %and47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ib_ports.0.lcssa.i)
  %tobool49.not = icmp eq i32 %ib_ports.0.lcssa.i, 0
  %or.cond522 = select i1 %tobool48.not, i1 true, i1 %tobool49.not
  br i1 %or.cond522, label %if.end43.if.end53_crit_edge, label %if.then50

if.end43.if.end53_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end53

if.then50:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #19
  %48 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %device_cap_flags, align 8
  %or52 = or i64 %49, 16
  store i64 %or52, ptr %device_cap_flags, align 8
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end43.if.end53_crit_edge
  %50 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev25, align 8
  %flags56 = getelementptr inbounds %struct.mlx4_dev, ptr %51, i32 0, i32 3, i32 60
  %52 = ptrtoint ptr %flags56 to i32
  call void @__asan_load8_noabort(i32 %52)
  %53 = load i64, ptr %flags56, align 8
  %and57 = and i64 %53, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and57)
  %tobool58.not = icmp eq i64 %and57, 0
  br i1 %tobool58.not, label %if.end53.if.end62_crit_edge, label %if.then59

if.end53.if.end62_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end62

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #19
  %54 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %device_cap_flags, align 8
  %or61 = or i64 %55, 64
  store i64 %or61, ptr %device_cap_flags, align 8
  br label %if.end62

if.end62:                                         ; preds = %if.then59, %if.end53.if.end62_crit_edge
  %56 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev25, align 8
  %flags65 = getelementptr inbounds %struct.mlx4_dev, ptr %57, i32 0, i32 3, i32 60
  %58 = ptrtoint ptr %flags65 to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %flags65, align 8
  %and66 = and i64 %59, 128
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and66)
  %tobool67.not = icmp eq i64 %and66, 0
  br i1 %tobool67.not, label %if.end62.if.end71_crit_edge, label %if.then68

if.end62.if.end71_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end71

if.then68:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #19
  %60 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %device_cap_flags, align 8
  %or70 = or i64 %61, 262144
  store i64 %or70, ptr %device_cap_flags, align 8
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end62.if.end71_crit_edge
  %62 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev25, align 8
  %max_gso_sz = getelementptr inbounds %struct.mlx4_dev, ptr %63, i32 0, i32 3, i32 66
  %64 = ptrtoint ptr %max_gso_sz to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_gso_sz, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool74.not = icmp eq i32 %65, 0
  br i1 %tobool74.not, label %if.end71.if.end88_crit_edge, label %land.lhs.true75

if.end71.if.end88_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end88

land.lhs.true75:                                  ; preds = %if.end71
  %rev_id = getelementptr inbounds %struct.mlx4_dev, ptr %63, i32 0, i32 7
  %66 = ptrtoint ptr %rev_id to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %rev_id, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -96, i8 %67)
  %cmp77.not = icmp eq i8 %67, -96
  br i1 %cmp77.not, label %land.lhs.true75.if.end88_crit_edge, label %land.lhs.true79

land.lhs.true75.if.end88_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end88

land.lhs.true79:                                  ; preds = %land.lhs.true75
  %flags82 = getelementptr inbounds %struct.mlx4_dev, ptr %63, i32 0, i32 3, i32 60
  %68 = ptrtoint ptr %flags82 to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %flags82, align 8
  %and83 = and i64 %69, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and83)
  %tobool84.not = icmp eq i64 %and83, 0
  br i1 %tobool84.not, label %land.lhs.true79.if.end88_crit_edge, label %if.then85

land.lhs.true79.if.end88_crit_edge:               ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end88

if.then85:                                        ; preds = %land.lhs.true79
  call void @__sanitizer_cov_trace_pc() #19
  %70 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %device_cap_flags, align 8
  %or87 = or i64 %71, 524288
  store i64 %or87, ptr %device_cap_flags, align 8
  br label %if.end88

if.end88:                                         ; preds = %if.then85, %land.lhs.true79.if.end88_crit_edge, %land.lhs.true75.if.end88_crit_edge, %if.end71.if.end88_crit_edge
  %72 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev25, align 8
  %bmme_flags = getelementptr inbounds %struct.mlx4_dev, ptr %73, i32 0, i32 3, i32 62
  %74 = ptrtoint ptr %bmme_flags to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bmme_flags, align 8
  %and91 = and i32 %75, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91)
  %tobool92.not = icmp eq i32 %and91, 0
  br i1 %tobool92.not, label %if.end88.if.end96_crit_edge, label %if.then93

if.end88.if.end96_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end96

if.then93:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #19
  %76 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %device_cap_flags, align 8
  %or95 = or i64 %77, 32768
  store i64 %or95, ptr %device_cap_flags, align 8
  br label %if.end96

if.end96:                                         ; preds = %if.then93, %if.end88.if.end96_crit_edge
  %78 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev25, align 8
  %bmme_flags99 = getelementptr inbounds %struct.mlx4_dev, ptr %79, i32 0, i32 3, i32 62
  %80 = ptrtoint ptr %bmme_flags99 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %bmme_flags99, align 8
  %82 = and i32 %81, 2240
  call void @__sanitizer_cov_trace_const_cmp4(i32 2240, i32 %82)
  %.not = icmp eq i32 %82, 2240
  br i1 %.not, label %if.then114, label %if.end96.if.end117_crit_edge

if.end96.if.end117_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end117

if.then114:                                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #19
  %83 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %device_cap_flags, align 8
  %or116 = or i64 %84, 2097152
  store i64 %or116, ptr %device_cap_flags, align 8
  br label %if.end117

if.end117:                                        ; preds = %if.then114, %if.end96.if.end117_crit_edge
  %85 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev25, align 8
  %flags120 = getelementptr inbounds %struct.mlx4_dev, ptr %86, i32 0, i32 3, i32 60
  %87 = ptrtoint ptr %flags120 to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %flags120, align 8
  %and121 = and i64 %88, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and121)
  %tobool122.not = icmp eq i64 %and121, 0
  br i1 %tobool122.not, label %if.end117.if.end126_crit_edge, label %if.then123

if.end117.if.end126_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end126

if.then123:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #19
  %89 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %89)
  %90 = load i64, ptr %device_cap_flags, align 8
  %or125 = or i64 %90, 1048576
  store i64 %or125, ptr %device_cap_flags, align 8
  br label %if.end126

if.end126:                                        ; preds = %if.then123, %if.end117.if.end126_crit_edge
  %91 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev25, align 8
  %flags129 = getelementptr inbounds %struct.mlx4_dev, ptr %92, i32 0, i32 3, i32 60
  %93 = ptrtoint ptr %flags129 to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %flags129, align 8
  %and130 = and i64 %94, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and130)
  %tobool131.not = icmp eq i64 %and130, 0
  br i1 %tobool131.not, label %if.end126.if.end135_crit_edge, label %if.then132

if.end126.if.end135_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end135

if.then132:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #19
  %95 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %95)
  %96 = load i64, ptr %device_cap_flags, align 8
  %or134 = or i64 %96, 131072
  store i64 %or134, ptr %device_cap_flags, align 8
  br label %if.end135

if.end135:                                        ; preds = %if.then132, %if.end126.if.end135_crit_edge
  %97 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev25, align 8
  %bmme_flags138 = getelementptr inbounds %struct.mlx4_dev, ptr %98, i32 0, i32 3, i32 62
  %99 = ptrtoint ptr %bmme_flags138 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %bmme_flags138, align 8
  %and139 = and i32 %100, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139)
  %tobool140.not = icmp eq i32 %and139, 0
  br i1 %tobool140.not, label %if.end135.if.end153_crit_edge, label %if.then141

if.end135.if.end153_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end153

if.then141:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #19
  %and145 = and i32 %100, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  %101 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %101)
  %102 = load i64, ptr %device_cap_flags, align 8
  %. = select i1 %tobool146.not, i64 8388608, i64 16777216
  %or149 = or i64 %102, %.
  store i64 %or149, ptr %device_cap_flags, align 8
  br label %if.end153

if.end153:                                        ; preds = %if.then141, %if.end135.if.end153_crit_edge
  %steering_support = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 25
  %103 = ptrtoint ptr %steering_support to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %steering_support, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %104)
  %cmp154 = icmp eq i32 %104, 2
  br i1 %cmp154, label %if.then156, label %if.end153.if.end159_crit_edge

if.end153.if.end159_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end159

if.then156:                                       ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #19
  %105 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %device_cap_flags, align 8
  %or158 = or i64 %106, 536870912
  store i64 %or158, ptr %device_cap_flags, align 8
  br label %if.end159

if.end159:                                        ; preds = %if.then156, %if.end153.if.end159_crit_edge
  %107 = ptrtoint ptr %device_cap_flags to i32
  call void @__asan_load8_noabort(i32 %107)
  %108 = load i64, ptr %device_cap_flags, align 8
  %or161 = or i64 %108, 67108864
  store i64 %or161, ptr %device_cap_flags, align 8
  %add.ptr = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 36
  %109 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %add.ptr, align 4
  %and163 = and i32 %110, 16777215
  %vendor_id = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 4
  %111 = ptrtoint ptr %vendor_id to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %and163, ptr %vendor_id, align 8
  %112 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev25, align 8
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 8
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  %device = getelementptr inbounds %struct.pci_dev, ptr %117, i32 0, i32 8
  %118 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %device, align 2
  %conv165 = zext i16 %119 to i32
  %vendor_part_id = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 5
  %120 = ptrtoint ptr %vendor_part_id to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %conv165, ptr %vendor_part_id, align 4
  %add.ptr168 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 32
  %121 = ptrtoint ptr %add.ptr168 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %add.ptr168, align 8
  %hw_ver = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 6
  %123 = ptrtoint ptr %hw_ver to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %122, ptr %hw_ver, align 8
  %sys_image_guid = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 1
  %add.ptr172 = getelementptr %struct.ib_smp, ptr %call7.i, i32 0, i32 15, i32 4
  %124 = ptrtoint ptr %add.ptr172 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 8)
  %125 = load i64, ptr %add.ptr172, align 4
  %126 = ptrtoint ptr %sys_image_guid to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %125, ptr %sys_image_guid, align 8
  %max_mr_size = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 2
  %127 = ptrtoint ptr %max_mr_size to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 -1, ptr %max_mr_size, align 8
  %128 = load ptr, ptr %dev25, align 8
  %page_size_cap = getelementptr inbounds %struct.mlx4_dev, ptr %128, i32 0, i32 3, i32 59
  %129 = ptrtoint ptr %page_size_cap to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %page_size_cap, align 4
  %conv175 = zext i32 %130 to i64
  %page_size_cap176 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 3
  %131 = ptrtoint ptr %page_size_cap176 to i32
  call void @__asan_store8_noabort(i32 %131)
  store i64 %conv175, ptr %page_size_cap176, align 8
  %132 = load ptr, ptr %dev25, align 8
  %quotas = getelementptr inbounds %struct.mlx4_dev, ptr %132, i32 0, i32 5
  %133 = ptrtoint ptr %quotas to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %quotas, align 8
  %max_qp = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 7
  %135 = ptrtoint ptr %max_qp to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %max_qp, align 4
  %136 = load ptr, ptr %dev25, align 8
  %max_wqes = getelementptr inbounds %struct.mlx4_dev, ptr %136, i32 0, i32 3, i32 22
  %137 = ptrtoint ptr %max_wqes to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %max_wqes, align 8
  %sub = add i32 %138, -33
  %max_qp_wr = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 8
  %139 = ptrtoint ptr %max_qp_wr to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %sub, ptr %max_qp_wr, align 8
  %140 = load ptr, ptr %dev25, align 8
  %max_sq_sg = getelementptr inbounds %struct.mlx4_dev, ptr %140, i32 0, i32 3, i32 19
  %141 = ptrtoint ptr %max_sq_sg to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %max_sq_sg, align 4
  %max_rq_sg = getelementptr inbounds %struct.mlx4_dev, ptr %140, i32 0, i32 3, i32 20
  %143 = ptrtoint ptr %max_rq_sg to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %max_rq_sg, align 8
  %145 = call i32 @llvm.smin.i32(i32 %142, i32 %144)
  %max_send_sge = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 10
  %146 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %max_send_sge, align 8
  %147 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev25, align 8
  %max_sq_sg188 = getelementptr inbounds %struct.mlx4_dev, ptr %148, i32 0, i32 3, i32 19
  %149 = ptrtoint ptr %max_sq_sg188 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %max_sq_sg188, align 4
  %max_rq_sg191 = getelementptr inbounds %struct.mlx4_dev, ptr %148, i32 0, i32 3, i32 20
  %151 = ptrtoint ptr %max_rq_sg191 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %max_rq_sg191, align 8
  %153 = call i32 @llvm.smin.i32(i32 %150, i32 %152)
  %max_recv_sge = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 11
  %154 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %max_recv_sge, align 4
  %max_sge_rd = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 12
  %155 = ptrtoint ptr %max_sge_rd to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 30, ptr %max_sge_rd, align 8
  %156 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev25, align 8
  %cq = getelementptr inbounds %struct.mlx4_dev, ptr %157, i32 0, i32 5, i32 1
  %158 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %cq, align 4
  %max_cq = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 13
  %160 = ptrtoint ptr %max_cq to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %max_cq, align 4
  %161 = load ptr, ptr %dev25, align 8
  %max_cqes = getelementptr inbounds %struct.mlx4_dev, ptr %161, i32 0, i32 3, i32 34
  %162 = ptrtoint ptr %max_cqes to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %max_cqes, align 8
  %max_cqe = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 14
  %164 = ptrtoint ptr %max_cqe to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %max_cqe, align 8
  %165 = load ptr, ptr %dev25, align 8
  %mpt = getelementptr inbounds %struct.mlx4_dev, ptr %165, i32 0, i32 5, i32 3
  %166 = ptrtoint ptr %mpt to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %mpt, align 4
  %max_mr = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 15
  %168 = ptrtoint ptr %max_mr to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %167, ptr %max_mr, align 4
  %169 = load ptr, ptr %dev25, align 8
  %num_pds = getelementptr inbounds %struct.mlx4_dev, ptr %169, i32 0, i32 3, i32 53
  %170 = ptrtoint ptr %num_pds to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %num_pds, align 4
  %reserved_pds = getelementptr inbounds %struct.mlx4_dev, ptr %169, i32 0, i32 3, i32 54
  %172 = ptrtoint ptr %reserved_pds to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %reserved_pds, align 8
  %sub209 = sub i32 %171, %173
  %max_pd = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 16
  %174 = ptrtoint ptr %max_pd to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %sub209, ptr %max_pd, align 8
  %175 = load ptr, ptr %dev25, align 8
  %max_qp_dest_rdma = getelementptr inbounds %struct.mlx4_dev, ptr %175, i32 0, i32 3, i32 26
  %176 = ptrtoint ptr %max_qp_dest_rdma to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %max_qp_dest_rdma, align 8
  %max_qp_rd_atom = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 17
  %178 = ptrtoint ptr %max_qp_rd_atom to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %max_qp_rd_atom, align 4
  %179 = load ptr, ptr %dev25, align 8
  %max_qp_init_rdma = getelementptr inbounds %struct.mlx4_dev, ptr %179, i32 0, i32 3, i32 25
  %180 = ptrtoint ptr %max_qp_init_rdma to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %max_qp_init_rdma, align 4
  %max_qp_init_rd_atom = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 20
  %182 = ptrtoint ptr %max_qp_init_rd_atom to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %max_qp_init_rd_atom, align 8
  %mul = mul i32 %177, %134
  %max_res_rd_atom = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 19
  %183 = ptrtoint ptr %max_res_rd_atom to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %mul, ptr %max_res_rd_atom, align 4
  %184 = load ptr, ptr %dev25, align 8
  %srq = getelementptr inbounds %struct.mlx4_dev, ptr %184, i32 0, i32 5, i32 2
  %185 = ptrtoint ptr %srq to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %srq, align 8
  %max_srq = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 33
  %187 = ptrtoint ptr %max_srq to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %186, ptr %max_srq, align 4
  %188 = load ptr, ptr %dev25, align 8
  %max_srq_wqes = getelementptr inbounds %struct.mlx4_dev, ptr %188, i32 0, i32 3, i32 30
  %189 = ptrtoint ptr %max_srq_wqes to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %max_srq_wqes, align 8
  %sub220 = add i32 %190, -1
  %max_srq_wr = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 34
  %191 = ptrtoint ptr %max_srq_wr to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %sub220, ptr %max_srq_wr, align 8
  %192 = load ptr, ptr %dev25, align 8
  %max_srq_sge = getelementptr inbounds %struct.mlx4_dev, ptr %192, i32 0, i32 3, i32 31
  %193 = ptrtoint ptr %max_srq_sge to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %max_srq_sge, align 4
  %max_srq_sge223 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 35
  %195 = ptrtoint ptr %max_srq_sge223 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %max_srq_sge223, align 4
  %max_fast_reg_page_list_len = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 36
  %196 = ptrtoint ptr %max_fast_reg_page_list_len to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 511, ptr %max_fast_reg_page_list_len, align 8
  %197 = load ptr, ptr %dev25, align 8
  %local_ca_ack_delay = getelementptr inbounds %struct.mlx4_dev, ptr %197, i32 0, i32 3, i32 14
  %198 = ptrtoint ptr %local_ca_ack_delay to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %local_ca_ack_delay, align 8
  %conv226 = trunc i32 %199 to i8
  %local_ca_ack_delay227 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 39
  %200 = ptrtoint ptr %local_ca_ack_delay227 to i32
  call void @__asan_store1_noabort(i32 %200)
  store i8 %conv226, ptr %local_ca_ack_delay227, align 2
  %201 = load ptr, ptr %dev25, align 8
  %flags230 = getelementptr inbounds %struct.mlx4_dev, ptr %201, i32 0, i32 3, i32 60
  %202 = ptrtoint ptr %flags230 to i32
  call void @__asan_load8_noabort(i32 %202)
  %203 = load i64, ptr %flags230, align 8
  %204 = trunc i64 %203 to i32
  %205 = lshr i32 %204, 18
  %206 = and i32 %205, 1
  %atomic_cap = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 22
  %207 = ptrtoint ptr %atomic_cap to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %206, ptr %atomic_cap, align 8
  %masked_atomic_cap = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 23
  %208 = ptrtoint ptr %masked_atomic_cap to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %206, ptr %masked_atomic_cap, align 4
  %209 = load ptr, ptr %dev25, align 8
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %209, i32 0, i32 3, i32 9, i32 1
  %210 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx, align 4
  %conv237 = trunc i32 %211 to i16
  %max_pkeys = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 38
  %212 = ptrtoint ptr %max_pkeys to i32
  call void @__asan_store2_noabort(i32 %212)
  store i16 %conv237, ptr %max_pkeys, align 8
  %213 = load ptr, ptr %dev25, align 8
  %num_mgms = getelementptr inbounds %struct.mlx4_dev, ptr %213, i32 0, i32 3, i32 46
  %214 = ptrtoint ptr %num_mgms to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %num_mgms, align 8
  %num_amgms = getelementptr inbounds %struct.mlx4_dev, ptr %213, i32 0, i32 3, i32 47
  %216 = ptrtoint ptr %num_amgms to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %num_amgms, align 4
  %add = add i32 %217, %215
  %max_mcast_grp = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 29
  %218 = ptrtoint ptr %max_mcast_grp to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %add, ptr %max_mcast_grp, align 4
  %219 = load ptr, ptr %dev25, align 8
  %num_qp_per_mgm = getelementptr inbounds %struct.mlx4_dev, ptr %219, i32 0, i32 3, i32 49
  %220 = ptrtoint ptr %num_qp_per_mgm to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %num_qp_per_mgm, align 4
  %max_mcast_qp_attach = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 30
  %222 = ptrtoint ptr %max_mcast_qp_attach to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %221, ptr %max_mcast_qp_attach, align 8
  %mul246 = mul i32 %221, %add
  %max_total_mcast_qp_attach = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 31
  %223 = ptrtoint ptr %max_total_mcast_qp_attach to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %mul246, ptr %max_total_mcast_qp_attach, align 4
  %224 = load ptr, ptr %dev25, align 8
  %hca_core_clock = getelementptr inbounds %struct.mlx4_dev, ptr %224, i32 0, i32 3, i32 87
  %225 = ptrtoint ptr %hca_core_clock to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %hca_core_clock, align 4
  %conv249 = zext i16 %226 to i32
  %mul250 = mul nuw nsw i32 %conv249, 1000
  %conv251 = zext i32 %mul250 to i64
  %hca_core_clock252 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 44
  %227 = ptrtoint ptr %hca_core_clock252 to i32
  call void @__asan_store8_noabort(i32 %227)
  store i64 %conv251, ptr %hca_core_clock252, align 8
  %timestamp_mask = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 43
  %228 = ptrtoint ptr %timestamp_mask to i32
  call void @__asan_store8_noabort(i32 %228)
  store i64 281474976710655, ptr %timestamp_mask, align 8
  %max_ah = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 32
  %229 = ptrtoint ptr %max_ah to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 2147483647, ptr %max_ah, align 8
  %230 = load ptr, ptr %dev25, align 8
  %arrayidx.i528 = getelementptr %struct.mlx4_dev, ptr %230, i32 0, i32 3, i32 77, i32 1
  %231 = ptrtoint ptr %arrayidx.i528 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx.i528, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %232)
  %cmp.i.not = icmp eq i32 %232, 1
  br i1 %cmp.i.not, label %lor.lhs.false256, label %if.end159.if.then260_crit_edge

if.end159.if.then260_crit_edge:                   ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then260

lor.lhs.false256:                                 ; preds = %if.end159
  %arrayidx.i530 = getelementptr %struct.mlx4_dev, ptr %230, i32 0, i32 3, i32 77, i32 2
  %233 = ptrtoint ptr %arrayidx.i530 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx.i530, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %234)
  %cmp.i531.not = icmp eq i32 %234, 1
  br i1 %cmp.i531.not, label %lor.lhs.false256.if.end281_crit_edge, label %lor.lhs.false256.if.then260_crit_edge

lor.lhs.false256.if.then260_crit_edge:            ; preds = %lor.lhs.false256
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then260

lor.lhs.false256.if.end281_crit_edge:             ; preds = %lor.lhs.false256
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end281

if.then260:                                       ; preds = %lor.lhs.false256.if.then260_crit_edge, %if.end159.if.then260_crit_edge
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %230, i32 0, i32 3, i32 61
  %235 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %235)
  %236 = load i64, ptr %flags2, align 8
  %and263 = and i64 %236, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and263)
  %tobool264.not = icmp eq i64 %and263, 0
  br i1 %tobool264.not, label %if.then260.if.end272_crit_edge, label %if.then265

if.then260.if.end272_crit_edge:                   ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end272

if.then265:                                       ; preds = %if.then260
  call void @__sanitizer_cov_trace_pc() #19
  %rss_caps = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 45
  %max_rwq_indirection_tables = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 45, i32 1
  %237 = ptrtoint ptr %max_rwq_indirection_tables to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %134, ptr %max_rwq_indirection_tables, align 4
  %238 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load ptr, ptr %dev25, align 8
  %max_rss_tbl_sz = getelementptr inbounds %struct.mlx4_dev, ptr %239, i32 0, i32 3, i32 67
  %240 = ptrtoint ptr %max_rss_tbl_sz to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %max_rss_tbl_sz, align 4
  %max_rwq_indirection_table_size = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 45, i32 2
  %242 = ptrtoint ptr %max_rwq_indirection_table_size to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %241, ptr %max_rwq_indirection_table_size, align 8
  %243 = ptrtoint ptr %rss_caps to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 256, ptr %rss_caps, align 8
  %max_wq_type_rq = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 46
  %244 = ptrtoint ptr %max_wq_type_rq to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 %134, ptr %max_wq_type_rq, align 4
  br label %if.end272

if.end272:                                        ; preds = %if.then265, %if.then260.if.end272_crit_edge
  %245 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %dev25, align 8
  %flags275 = getelementptr inbounds %struct.mlx4_dev, ptr %246, i32 0, i32 3, i32 60
  %247 = ptrtoint ptr %flags275 to i32
  call void @__asan_load8_noabort(i32 %247)
  %248 = load i64, ptr %flags275, align 8
  %and276 = and i64 %248, 17179869184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and276)
  %tobool277.not = icmp eq i64 %and276, 0
  br i1 %tobool277.not, label %if.end272.if.end281_crit_edge, label %if.then278

if.end272.if.end281_crit_edge:                    ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end281

if.then278:                                       ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #19
  %raw_packet_caps = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 47
  %249 = ptrtoint ptr %raw_packet_caps to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %raw_packet_caps, align 8
  %or279 = or i32 %250, 2
  store i32 %or279, ptr %raw_packet_caps, align 8
  br label %if.end281

if.end281:                                        ; preds = %if.then278, %if.end272.if.end281_crit_edge, %lor.lhs.false256.if.end281_crit_edge
  %cq_caps = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 49
  %251 = ptrtoint ptr %cq_caps to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 -1, ptr %cq_caps, align 8
  %max_cq_moderation_period = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 49, i32 1
  %252 = ptrtoint ptr %max_cq_moderation_period to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 -1, ptr %max_cq_moderation_period, align 2
  %outlen = getelementptr inbounds %struct.ib_udata, ptr %uhw, i32 0, i32 3
  %253 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %outlen, align 4
  %255 = ptrtoint ptr %response_length to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %response_length, align 4
  %add284 = add i32 %256, 8
  call void @__sanitizer_cov_trace_cmp4(i32 %254, i32 %add284)
  %cmp285.not = icmp ult i32 %254, %add284
  br i1 %cmp285.not, label %if.end281.if.end297_crit_edge, label %if.then287

if.end281.if.end297_crit_edge:                    ; preds = %if.end281
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end297

if.then287:                                       ; preds = %if.end281
  %257 = ptrtoint ptr %response_length to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 %add284, ptr %response_length, align 4
  %258 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %dev25, align 8
  %call291 = call i32 @mlx4_get_internal_clock_params(ptr noundef %259, ptr noundef nonnull %clock_params) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call291)
  %tobool292.not = icmp eq i32 %call291, 0
  br i1 %tobool292.not, label %if.then293, label %if.then287.if.end297thread-pre-split_crit_edge

if.then287.if.end297thread-pre-split_crit_edge:   ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end297thread-pre-split

if.then293:                                       ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #19
  %260 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %resp, align 8
  %or295 = or i32 %261, 1
  store i32 %or295, ptr %resp, align 8
  %262 = ptrtoint ptr %clock_params to i32
  call void @__asan_load8_noabort(i32 %262)
  %263 = load i64, ptr %clock_params, align 8
  %rem = and i64 %263, 4095
  %hca_core_clock_offset = getelementptr inbounds %struct.mlx4_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 2
  %264 = ptrtoint ptr %hca_core_clock_offset to i32
  call void @__asan_store8_noabort(i32 %264)
  store i64 %rem, ptr %hca_core_clock_offset, align 8
  br label %if.end297thread-pre-split

if.end297thread-pre-split:                        ; preds = %if.then293, %if.then287.if.end297thread-pre-split_crit_edge
  %265 = ptrtoint ptr %outlen to i32
  call void @__asan_load4_noabort(i32 %265)
  %.pr = load i32, ptr %outlen, align 4
  br label %if.end297

if.end297:                                        ; preds = %if.end297thread-pre-split, %if.end281.if.end297_crit_edge
  %266 = phi i32 [ %.pr, %if.end297thread-pre-split ], [ %254, %if.end281.if.end297_crit_edge ]
  %267 = ptrtoint ptr %response_length to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %response_length, align 4
  %add300 = add i32 %268, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %266, i32 %add300)
  %cmp301.not = icmp ult i32 %266, %add300
  br i1 %cmp301.not, label %if.end297.if.end310_crit_edge, label %if.then303

if.end297.if.end310_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end310

if.then303:                                       ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #19
  %269 = ptrtoint ptr %response_length to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 %add300, ptr %response_length, align 4
  %270 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dev25, align 8
  %max_rq_sg308 = getelementptr inbounds %struct.mlx4_dev, ptr %271, i32 0, i32 3, i32 20
  %272 = ptrtoint ptr %max_rq_sg308 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %max_rq_sg308, align 8
  %mul309 = shl i32 %273, 4
  %max_inl_recv_sz = getelementptr inbounds %struct.mlx4_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 3
  %274 = ptrtoint ptr %max_inl_recv_sz to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 %mul309, ptr %max_inl_recv_sz, align 8
  br label %if.end310

if.end310:                                        ; preds = %if.then303, %if.end297.if.end310_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 39, i32 %266)
  %cmp312 = icmp ugt i32 %266, 39
  br i1 %cmp312, label %if.then314, label %if.end358

if.then314:                                       ; preds = %if.end310
  %rss_caps315 = getelementptr inbounds %struct.ib_device_attr, ptr %props, i32 0, i32 45
  %275 = ptrtoint ptr %rss_caps315 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %rss_caps315, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %276)
  %tobool317.not = icmp eq i32 %276, 0
  br i1 %tobool317.not, label %if.then314.if.end332_crit_edge, label %if.then318

if.then314.if.end332_crit_edge:                   ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end332

if.then318:                                       ; preds = %if.then314
  call void @__sanitizer_cov_trace_pc() #19
  %rss_caps319 = getelementptr inbounds %struct.mlx4_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 5
  %rx_hash_function = getelementptr inbounds %struct.mlx4_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 5, i32 1
  %277 = ptrtoint ptr %rx_hash_function to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 1, ptr %rx_hash_function, align 8
  %278 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev25, align 8
  %tunnel_offload_mode = getelementptr inbounds %struct.mlx4_dev, ptr %279, i32 0, i32 3, i32 89
  %280 = ptrtoint ptr %tunnel_offload_mode to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %tunnel_offload_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %281)
  %cmp323 = icmp eq i32 %281, 1
  %spec.store.select525 = select i1 %cmp323, i64 2147483903, i64 255
  %282 = ptrtoint ptr %rss_caps319 to i32
  call void @__asan_store8_noabort(i32 %282)
  store i64 %spec.store.select525, ptr %rss_caps319, align 8
  br label %if.end332

if.end332:                                        ; preds = %if.then318, %if.then314.if.end332_crit_edge
  %283 = ptrtoint ptr %response_length to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 40, ptr %response_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 47, i32 %266)
  %cmp334 = icmp ugt i32 %266, 47
  br i1 %cmp334, label %if.then336, label %if.end332.if.end59.i.i.i_crit_edge

if.end332.if.end59.i.i.i_crit_edge:               ; preds = %if.end332
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59.i.i.i

if.then336:                                       ; preds = %if.end332
  %284 = ptrtoint ptr %dev25 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %dev25, align 8
  %max_gso_sz339 = getelementptr inbounds %struct.mlx4_dev, ptr %285, i32 0, i32 3, i32 66
  %286 = ptrtoint ptr %max_gso_sz339 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %max_gso_sz339, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %287)
  %tobool340.not = icmp eq i32 %287, 0
  br i1 %tobool340.not, label %if.then336.if.end356_crit_edge, label %land.lhs.true341

if.then336.if.end356_crit_edge:                   ; preds = %if.then336
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end356

land.lhs.true341:                                 ; preds = %if.then336
  %arrayidx.i534 = getelementptr %struct.mlx4_dev, ptr %285, i32 0, i32 3, i32 77, i32 1
  %288 = ptrtoint ptr %arrayidx.i534 to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %arrayidx.i534, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %289)
  %cmp.i535.not = icmp eq i32 %289, 1
  br i1 %cmp.i535.not, label %lor.lhs.false345, label %land.lhs.true341.if.then349_crit_edge

land.lhs.true341.if.then349_crit_edge:            ; preds = %land.lhs.true341
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then349

lor.lhs.false345:                                 ; preds = %land.lhs.true341
  %arrayidx.i538 = getelementptr %struct.mlx4_dev, ptr %285, i32 0, i32 3, i32 77, i32 2
  %290 = ptrtoint ptr %arrayidx.i538 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load i32, ptr %arrayidx.i538, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %291)
  %cmp.i539.not = icmp eq i32 %291, 1
  br i1 %cmp.i539.not, label %lor.lhs.false345.if.end356_crit_edge, label %lor.lhs.false345.if.then349_crit_edge

lor.lhs.false345.if.then349_crit_edge:            ; preds = %lor.lhs.false345
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then349

lor.lhs.false345.if.end356_crit_edge:             ; preds = %lor.lhs.false345
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end356

if.then349:                                       ; preds = %lor.lhs.false345.if.then349_crit_edge, %land.lhs.true341.if.then349_crit_edge
  %tso_caps = getelementptr inbounds %struct.mlx4_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 6
  %292 = ptrtoint ptr %tso_caps to i32
  call void @__asan_store4_noabort(i32 %292)
  store i32 %287, ptr %tso_caps, align 8
  %supported_qpts354 = getelementptr inbounds %struct.mlx4_uverbs_ex_query_device_resp, ptr %resp, i32 0, i32 6, i32 1
  %293 = ptrtoint ptr %supported_qpts354 to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %supported_qpts354, align 4
  %or355 = or i32 %294, 256
  store i32 %or355, ptr %supported_qpts354, align 4
  br label %if.end356

if.end356:                                        ; preds = %if.then349, %lor.lhs.false345.if.end356_crit_edge, %if.then336.if.end356_crit_edge
  %295 = ptrtoint ptr %response_length to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 48, ptr %response_length, align 4
  br label %if.end59.i.i.i

if.end358:                                        ; preds = %if.end310
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %266)
  %tobool360.not = icmp eq i32 %266, 0
  br i1 %tobool360.not, label %if.end358.out_crit_edge, label %if.then361

if.end358.out_crit_edge:                          ; preds = %if.end358
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then361:                                       ; preds = %if.end358
  %296 = ptrtoint ptr %response_length to i32
  call void @__asan_load4_noabort(i32 %296)
  %.pr551 = load i32, ptr %response_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %.pr551)
  %cmp1.i.i.i541 = icmp ugt i32 %.pr551, 48
  br i1 %cmp1.i.i.i541, label %if.then3.i.i.i, label %if.then361.if.end59.i.i.i_crit_edge, !prof !294

if.then361.if.end59.i.i.i_crit_edge:              ; preds = %if.then361
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end59.i.i.i

if.then3.i.i.i:                                   ; preds = %if.then361
  call void @__sanitizer_cov_trace_pc() #19
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.57, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.58, i32 noundef 48, i32 noundef %.pr551) #17
  br label %out

if.end59.i.i.i:                                   ; preds = %if.then361.if.end59.i.i.i_crit_edge, %if.end356, %if.end332.if.end59.i.i.i_crit_edge
  %297 = phi i32 [ %.pr551, %if.then361.if.end59.i.i.i_crit_edge ], [ 48, %if.end356 ], [ 40, %if.end332.if.end59.i.i.i_crit_edge ]
  %.in = getelementptr inbounds %struct.ib_udata, ptr %uhw, i32 0, i32 1
  %298 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %.in, align 4
  call void @__check_object_size(ptr noundef nonnull %resp, i32 noundef %297, i1 noundef zeroext true) #17
  call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 174) #17
  %call.i.i.i542 = call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i.i542, label %if.end59.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i545

if.end59.i.i.i.copy_to_user.exit.i_crit_edge:     ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit.i

if.end.i.i.i545:                                  ; preds = %if.end59.i.i.i
  %300 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %299, i32 %297, i32 -1226833920) #24, !srcloc !303
  %asmresult.i.i.i544 = extractvalue { i32, i32 } %300, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i544)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i544, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i545.copy_to_user.exit.i_crit_edge

if.end.i.i.i545.copy_to_user.exit.i_crit_edge:    ; preds = %if.end.i.i.i545
  call void @__sanitizer_cov_trace_pc() #19
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i545
  call void @__sanitizer_cov_trace_pc() #19
  %call.i.i.i.i546 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %resp, i32 noundef %297) #17
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %299, ptr noundef nonnull %resp, i32 noundef %297) #17
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i545.copy_to_user.exit.i_crit_edge, %if.end59.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %297, %if.end59.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %297, %if.end.i.i.i545.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool.not.i = icmp eq i32 %n.addr.0.i.i, 0
  %spec.select.i547 = select i1 %tobool.not.i, i32 0, i32 -14
  br label %out

out:                                              ; preds = %copy_to_user.exit.i, %if.then3.i.i.i, %if.end358.out_crit_edge, %if.end19.out_crit_edge, %if.end13.out_crit_edge
  %err.0 = phi i32 [ %call21, %if.end19.out_crit_edge ], [ 0, %if.end358.out_crit_edge ], [ -12, %if.end13.out_crit_edge ], [ -14, %if.then3.i.i.i ], [ %spec.select.i547, %copy_to_user.exit.i ]
  call void @kfree(ptr noundef %call7.i.i) #17
  call void @kfree(ptr noundef %call7.i) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then11.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ -22, %if.then.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %clock_params) #17
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %resp) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %cmd) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_modify_device(ptr noundef %ibdev, i32 noundef %mask, ptr nocapture noundef readonly %props) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %mask, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %and1 = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool6.not = icmp eq i32 %and.i, 0
  br i1 %tobool6.not, label %do.body9, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

do.body9:                                         ; preds = %if.end4
  %sm_lock = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 9
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sm_lock) #17
  %node_desc = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 16
  %node_desc15 = getelementptr inbounds %struct.ib_device_modify, ptr %props, i32 0, i32 1
  %4 = call ptr @memcpy(ptr %node_desc, ptr %node_desc15, i32 64)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sm_lock, i32 noundef %call12) #17
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 8
  %call21 = tail call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %6) #17
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body9.cleanup_crit_edge, label %if.end24

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end24:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #19
  %7 = ptrtoint ptr %call21 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call21, align 4
  %9 = call ptr @memcpy(ptr %8, ptr %node_desc15, i32 64)
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %dma = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call21, i32 0, i32 1
  %12 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma, align 4
  %conv29 = zext i32 %13 to i64
  %call.i = tail call i32 @__mlx4_cmd(ptr noundef %11, i64 noundef %conv29, ptr noundef null, i32 noundef 0, i32 noundef 1, i8 noundef zeroext 0, i16 noundef zeroext 90, i32 noundef 60000, i32 noundef 1) #17
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  tail call void @mlx4_free_cmd_mailbox(ptr noundef %15, ptr noundef %call21) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.body9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end24 ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -95, %if.end4.cleanup_crit_edge ], [ 0, %do.body9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @get_fw_ver_str(ptr nocapture noundef readonly %device, ptr nocapture noundef writeonly %str) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %device, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 8
  %caps = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %caps to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %caps, align 8
  %shr = lshr i64 %3, 32
  %conv = trunc i64 %shr to i32
  %4 = trunc i64 %3 to i32
  %5 = lshr i32 %4, 16
  %and11 = and i32 %4, 65535
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %str, i32 noundef 32, ptr noundef nonnull @.str.60, i32 noundef %conv, i32 noundef %5, i32 noundef %and11)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_query_port(ptr noundef %ibdev, i32 noundef %port, ptr noundef %props) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__mlx4_ib_query_port(ptr noundef %ibdev, i32 noundef %port, ptr noundef %props, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_modify_port(ptr noundef %ibdev, i32 noundef %port, i32 noundef %mask, ptr nocapture noundef readonly %props) #0 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %arrayidx = getelementptr %struct.mlx4_dev, ptr %1, i32 0, i32 3, i32 73, i32 %port
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #17
  %4 = call ptr @memset(ptr %attr, i32 255, i32 72)
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %cap_mask_mutex = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %cap_mask_mutex, i32 noundef 0) #17
  %call2 = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port, ptr noundef nonnull %attr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.end5:                                          ; preds = %if.end
  %port_cap_flags = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 7
  %5 = ptrtoint ptr %port_cap_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port_cap_flags, align 8
  %7 = ptrtoint ptr %props to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %props, align 4
  %or = or i32 %8, %6
  %clr_port_cap_mask = getelementptr inbounds %struct.ib_port_modify, ptr %props, i32 0, i32 1
  %9 = ptrtoint ptr %clr_port_cap_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %clr_port_cap_mask, align 4
  %neg = xor i32 %10, -1
  %and = and i32 %or, %neg
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 8
  %call.i = call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %12) #17
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %call.i to i32
  br label %out

if.end.i:                                         ; preds = %if.end5
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %18 = trunc i32 %mask to i8
  %19 = lshr i8 %18, 3
  %20 = and i8 %19, 1
  br i1 %tobool.not.i, label %if.else.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %21 = shl nuw nsw i8 %20, 6
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %21, ptr %23, align 1
  br label %if.end19.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call.i, align 4
  %arrayidx16.i = getelementptr i8, ptr %26, i32 3
  %27 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %20, ptr %arrayidx16.i, align 1
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else.i, %if.then5.i
  %.sink37.i = phi i32 [ 1, %if.else.i ], [ 2, %if.then5.i ]
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %arrayidx18.i = getelementptr i32, ptr %29, i32 %.sink37.i
  %30 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and, ptr %arrayidx18.i, align 4
  %31 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev, align 8
  %dma.i = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma.i, align 4
  %conv21.i = zext i32 %34 to i64
  %call.i.i = call i32 @__mlx4_cmd(ptr noundef %32, i64 noundef %conv21.i, ptr noundef null, i32 noundef 0, i32 noundef %port, i8 noundef zeroext 0, i16 noundef zeroext 12, i32 noundef 60000, i32 noundef 0) #17
  %35 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev, align 8
  call void @mlx4_free_cmd_mailbox(ptr noundef %36, ptr noundef %call.i) #17
  br label %out

out:                                              ; preds = %if.end19.i, %if.then.i, %if.end.out_crit_edge
  %err.0 = phi i32 [ %call2, %if.end.out_crit_edge ], [ %13, %if.then.i ], [ %call.i.i, %if.end19.i ]
  call void @mutex_unlock(ptr noundef %cap_mask_mutex) #17
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_port_immutable(ptr noundef %ibdev, i32 noundef %port_num, ptr nocapture noundef %immutable) #0 align 64 {
entry:
  %attr = alloca %struct.ib_port_attr, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %attr) #17
  %0 = call ptr @memset(ptr %attr, i32 255, i32 72)
  %dev1.i = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1.i, align 8
  %arrayidx.i = getelementptr %struct.mlx4_dev, ptr %2, i32 0, i32 3, i32 77, i32 %port_num
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp eq i32 %4, 1
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %core_cap_flags = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 2
  %5 = ptrtoint ptr %core_cap_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1052695, ptr %core_cap_flags, align 4
  br label %if.end18.sink.split

if.else:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.mlx4_dev, ptr %2, i32 0, i32 3, i32 60
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %flags, align 8
  %and = and i64 %7, 1073741824
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %if.else.if.end_crit_edge, label %if.then2

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then2:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %core_cap_flags3 = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 2
  %8 = ptrtoint ptr %core_cap_flags3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2109445, ptr %core_cap_flags3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else.if.end_crit_edge
  %9 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1.i, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %10, i32 0, i32 3, i32 61
  %11 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %flags2, align 8
  %and6 = and i64 %12, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %core_cap_flags9 = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 2
  %13 = ptrtoint ptr %core_cap_flags9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 10498053, ptr %core_cap_flags9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %core_cap_flags11 = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 2
  %14 = ptrtoint ptr %core_cap_flags11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %core_cap_flags11, align 4
  %or = or i32 %15, 16777216
  store i32 %or, ptr %core_cap_flags11, align 4
  %and13 = and i32 %15, 10498053
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end10.if.end18_crit_edge, label %if.end10.if.end18.sink.split_crit_edge

if.end10.if.end18.sink.split_crit_edge:           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18.sink.split

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end18

if.end18.sink.split:                              ; preds = %if.end10.if.end18.sink.split_crit_edge, %if.then
  %max_mad_size16 = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 3
  %16 = ptrtoint ptr %max_mad_size16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 256, ptr %max_mad_size16, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end18.sink.split, %if.end10.if.end18_crit_edge
  %call19 = call i32 @ib_query_port(ptr noundef %ibdev, i32 noundef %port_num, ptr noundef nonnull %attr) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #19
  %pkey_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 11
  %17 = ptrtoint ptr %pkey_tbl_len to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %pkey_tbl_len, align 8
  %conv = zext i16 %18 to i32
  %19 = ptrtoint ptr %immutable to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %immutable, align 4
  %gid_tbl_len = getelementptr inbounds %struct.ib_port_attr, ptr %attr, i32 0, i32 5
  %20 = ptrtoint ptr %gid_tbl_len to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gid_tbl_len, align 8
  %gid_tbl_len24 = getelementptr inbounds %struct.ib_port_immutable, ptr %immutable, i32 0, i32 1
  %22 = ptrtoint ptr %gid_tbl_len24 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %gid_tbl_len24, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end18.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %attr) #17
  ret i32 %call19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx4_ib_get_netdev(ptr nocapture noundef readonly %device, i32 noundef %port_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !280) #17
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !290
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #17
  %call.i = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #17
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %device, i32 0, i32 1
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 8
  %call2 = tail call ptr @mlx4_get_protocol_dev(ptr noundef %5, i32 noundef 1, i32 noundef %port_num) #17
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %rcu_read_lock.exit.if.end19_crit_edge, label %if.then

rcu_read_lock.exit.if.end19_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then:                                          ; preds = %rcu_read_lock.exit
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %10 = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool5.not = icmp eq i32 %10, 0
  br i1 %tobool5.not, label %if.then.do.body1.i_crit_edge, label %if.then6

if.then.do.body1.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body1.i

if.then6:                                         ; preds = %if.then
  %call7 = tail call ptr @netdev_master_upper_dev_get_rcu(ptr noundef nonnull %call2) #17
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.then6.do.body1.i_crit_edge, label %if.then9

if.then6.do.body1.i_crit_edge:                    ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body1.i

if.then9:                                         ; preds = %if.then6
  %curr_active_slave.i = getelementptr i8, ptr %call7, i32 2308
  %11 = ptrtoint ptr %curr_active_slave.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %curr_active_slave.i, align 4
  %call.i27 = tail call zeroext i1 @lockdep_rtnl_is_held() #17
  br i1 %call.i27, label %if.then9.do.end8.i_crit_edge, label %lor.lhs.false.i

if.then9.do.end8.i_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i

lor.lhs.false.i:                                  ; preds = %if.then9
  %call2.i = tail call i32 @rcu_read_lock_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i28 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i28, label %land.lhs.true.i29, label %lor.lhs.false.i.do.end8.i_crit_edge

lor.lhs.false.i.do.end8.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i

land.lhs.true.i29:                                ; preds = %lor.lhs.false.i
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i29.do.end8.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i29.do.end8.i_crit_edge:            ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i29
  %.b15.i = load i1, ptr @bond_option_active_slave_get_rcu.__warned, align 1
  br i1 %.b15.i, label %land.lhs.true5.i.do.end8.i_crit_edge, label %if.then.i30

land.lhs.true5.i.do.end8.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end8.i

if.then.i30:                                      ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @bond_option_active_slave_get_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.61, i32 noundef 349, ptr noundef nonnull @.str.62) #17
  br label %do.end8.i

do.end8.i:                                        ; preds = %if.then.i30, %land.lhs.true5.i.do.end8.i_crit_edge, %land.lhs.true.i29.do.end8.i_crit_edge, %lor.lhs.false.i.do.end8.i_crit_edge, %if.then9.do.end8.i_crit_edge
  %params.i.i = getelementptr i8, ptr %call7, i32 2608
  %13 = ptrtoint ptr %params.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %params.i.i, align 8
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %14, label %do.end8.i.select.unfold_crit_edge [
    i32 1, label %do.end8.i.bond_uses_primary.exit.i_crit_edge
    i32 5, label %do.end8.i.bond_uses_primary.exit.i_crit_edge47
    i32 6, label %do.end8.i.bond_uses_primary.exit.i_crit_edge48
  ]

do.end8.i.bond_uses_primary.exit.i_crit_edge48:   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bond_uses_primary.exit.i

do.end8.i.bond_uses_primary.exit.i_crit_edge47:   ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bond_uses_primary.exit.i

do.end8.i.bond_uses_primary.exit.i_crit_edge:     ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %bond_uses_primary.exit.i

do.end8.i.select.unfold_crit_edge:                ; preds = %do.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %select.unfold

bond_uses_primary.exit.i:                         ; preds = %do.end8.i.bond_uses_primary.exit.i_crit_edge, %do.end8.i.bond_uses_primary.exit.i_crit_edge47, %do.end8.i.bond_uses_primary.exit.i_crit_edge48
  %tobool12.not.i = icmp eq ptr %12, null
  br i1 %tobool12.not.i, label %bond_uses_primary.exit.i.select.unfold_crit_edge, label %bond_option_active_slave_get_rcu.exit

bond_uses_primary.exit.i.select.unfold_crit_edge: ; preds = %bond_uses_primary.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %select.unfold

bond_option_active_slave_get_rcu.exit:            ; preds = %bond_uses_primary.exit.i
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %12, align 8
  %tobool12.not = icmp eq ptr %17, null
  br i1 %tobool12.not, label %bond_option_active_slave_get_rcu.exit.select.unfold_crit_edge, label %bond_option_active_slave_get_rcu.exit.do.body1.i_crit_edge

bond_option_active_slave_get_rcu.exit.do.body1.i_crit_edge: ; preds = %bond_option_active_slave_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body1.i

bond_option_active_slave_get_rcu.exit.select.unfold_crit_edge: ; preds = %bond_option_active_slave_get_rcu.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %select.unfold

select.unfold:                                    ; preds = %bond_option_active_slave_get_rcu.exit.select.unfold_crit_edge, %bond_uses_primary.exit.i.select.unfold_crit_edge, %do.end8.i.select.unfold_crit_edge
  br label %do.body1.i

do.body1.i:                                       ; preds = %select.unfold, %bond_option_active_slave_get_rcu.exit.do.body1.i_crit_edge, %if.then6.do.body1.i_crit_edge, %if.then.do.body1.i_crit_edge
  %dev.2.ph = phi ptr [ %call2, %select.unfold ], [ %call2, %if.then6.do.body1.i_crit_edge ], [ %17, %bond_option_active_slave_get_rcu.exit.do.body1.i_crit_edge ], [ %call2, %if.then.do.body1.i_crit_edge ]
  %18 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !292
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %dev.2.ph, i32 0, i32 118
  %19 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pcpu_refcnt.i, align 4
  %21 = ptrtoint ptr %20 to i32
  %22 = tail call i32 @llvm.read_register.i32(metadata !280) #17
  %and.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %27, %21
  %28 = inttoptr i32 %add.i to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %28, align 4
  %add13.i = add i32 %30, 1
  store i32 %add13.i, ptr %28, align 4
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !293
  %and.i.i.i = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.dev_hold.exit_crit_edge, !prof !294

do.body1.i.dev_hold.exit_crit_edge:               ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_hold.exit

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %dev_hold.exit

dev_hold.exit:                                    ; preds = %if.then28.i, %do.body1.i.dev_hold.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %18) #17, !srcloc !295
  br label %if.end19

if.end19:                                         ; preds = %dev_hold.exit, %rcu_read_lock.exit.if.end19_crit_edge
  %dev.244 = phi ptr [ %dev.2.ph, %dev_hold.exit ], [ null, %rcu_read_lock.exit.if.end19_crit_edge ]
  %call.i32 = tail call zeroext i1 @rcu_is_watching() #17
  br i1 %call.i32, label %if.end19.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i35

if.end19.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true.i35:                                ; preds = %if.end19
  %call1.i33 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i33)
  %tobool.not.i34 = icmp eq i32 %call1.i33, 0
  br i1 %tobool.not.i34, label %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i37

land.lhs.true.i35.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i35
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

land.lhs.true2.i37:                               ; preds = %land.lhs.true.i35
  %.b4.i36 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i36, label %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, label %if.then.i38

land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #19
  br label %rcu_read_unlock.exit

if.then.i38:                                      ; preds = %land.lhs.true2.i37
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #17
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i38, %land.lhs.true2.i37.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i35.rcu_read_unlock.exit_crit_edge, %if.end19.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !291
  %32 = tail call i32 @llvm.read_register.i32(metadata !280) #17
  %and.i.i.i.i.i39 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i39 to ptr
  %preempt_count.i.i.i.i40 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %preempt_count.i.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %preempt_count.i.i.i.i40, align 4
  %sub.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i40, align 4
  tail call void @rcu_read_unlock_strict() #17
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #17
  ret ptr %dev.244
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_query_gid(ptr noundef %ibdev, i32 noundef %port, i32 noundef %index, ptr nocapture noundef writeonly %gid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %port_data.i = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 11
  %0 = ptrtoint ptr %port_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %port_data.i, align 8
  %core_cap_flags.i = getelementptr %struct.ib_port_data, ptr %1, i32 %port, i32 1, i32 2
  %2 = ptrtoint ptr %core_cap_flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %core_cap_flags.i, align 4
  %and.i = and i32 %3, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %call1 = tail call i32 @__mlx4_ib_query_gid(ptr noundef %ibdev, i32 noundef %port, i32 noundef %index, ptr noundef %gid, i32 noundef 0)
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_add_gid(ptr noundef %attr, ptr noundef writeonly %context) #0 align 64 {
entry:
  %vlan_id = alloca i16, align 2
  %mac = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_gid_attr, ptr %attr, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %iboe1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %vlan_id) #17
  %2 = ptrtoint ptr %vlan_id to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %vlan_id, align 2
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %mac) #17
  %port_num = getelementptr inbounds %struct.ib_gid_attr, ptr %attr, i32 0, i32 5
  %3 = call ptr @memset(ptr %mac, i32 255, i32 6)
  %4 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_num, align 8
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 11
  %6 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %7, i32 %5, i32 1, i32 2
  %8 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %9, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %add_gid.i = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 27
  %10 = ptrtoint ptr %add_gid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add_gid.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %rdma_cap_roce_gid_table.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

rdma_cap_roce_gid_table.exit:                     ; preds = %land.lhs.true.i
  %del_gid.i = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 28
  %12 = ptrtoint ptr %del_gid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %del_gid.i, align 4
  %tobool2.i.not = icmp eq ptr %13, null
  br i1 %tobool2.i.not, label %rdma_cap_roce_gid_table.exit.cleanup_crit_edge, label %if.end

rdma_cap_roce_gid_table.exit.cleanup_crit_edge:   ; preds = %rdma_cap_roce_gid_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %rdma_cap_roce_gid_table.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  %tobool.not = icmp eq ptr %context, null
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @rdma_read_gid_l2_fields(ptr noundef %attr, ptr noundef nonnull %vlan_id, ptr noundef nonnull %mac) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %port_num, align 8
  %sub = add i32 %15, -1
  %arrayidx15 = getelementptr %struct.mlx4_ib_dev, ptr %1, i32 0, i32 14, i32 4, i32 %sub
  call void @_raw_spin_lock_bh(ptr noundef %iboe1) #17
  %gid19 = getelementptr inbounds %struct.ib_gid_attr, ptr %attr, i32 0, i32 2
  %gid_type24 = getelementptr inbounds %struct.ib_gid_attr, ptr %attr, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end12
  %i.0233 = phi i32 [ 0, %if.end12 ], [ %inc, %for.inc.for.body_crit_edge ]
  %free.0231 = phi i32 [ -1, %if.end12 ], [ %free.1, %for.inc.for.body_crit_edge ]
  %arrayidx18 = getelementptr [128 x %struct.gid_entry], ptr %arrayidx15, i32 0, i32 %i.0233
  %bcmp = call i32 @bcmp(ptr noundef dereferenceable(16) %arrayidx18, ptr noundef dereferenceable(16) %gid19, i32 16) #20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool21.not = icmp eq i32 %bcmp, 0
  br i1 %tobool21.not, label %land.lhs.true, label %for.body.if.end34_crit_edge

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

land.lhs.true:                                    ; preds = %for.body
  %gid_type = getelementptr [128 x %struct.gid_entry], ptr %arrayidx15, i32 0, i32 %i.0233, i32 1
  %16 = ptrtoint ptr %gid_type to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %gid_type, align 8
  %18 = ptrtoint ptr %gid_type24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gid_type24, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp25 = icmp eq i32 %17, %19
  br i1 %cmp25, label %land.lhs.true26, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

land.lhs.true26:                                  ; preds = %land.lhs.true
  %vlan_id29 = getelementptr [128 x %struct.gid_entry], ptr %arrayidx15, i32 0, i32 %i.0233, i32 3
  %20 = ptrtoint ptr %vlan_id29 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %vlan_id29, align 8
  %22 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vlan_id, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %23)
  %cmp31 = icmp eq i16 %21, %23
  br i1 %cmp31, label %if.else82, label %land.lhs.true26.if.end34_crit_edge

land.lhs.true26.if.end34_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true26.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %for.body.if.end34_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free.0231)
  %cmp35 = icmp slt i32 %free.0231, 0
  br i1 %cmp35, label %land.lhs.true37, label %if.end34.for.inc_crit_edge

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc

land.lhs.true37:                                  ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #19
  %call41 = call zeroext i1 @rdma_is_zero_gid(ptr noundef %arrayidx18) #17
  %spec.select = select i1 %call41, i32 %i.0233, i32 %free.0231
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true37, %if.end34.for.inc_crit_edge
  %free.1 = phi i32 [ %free.0231, %if.end34.for.inc_crit_edge ], [ %spec.select, %land.lhs.true37 ]
  %inc = add nuw nsw i32 %i.0233, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %if.then47, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.then47:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %free.1)
  %cmp48 = icmp slt i32 %free.1, 0
  br i1 %cmp48, label %if.then47.if.end118.thread_crit_edge, label %if.else

if.then47.if.end118.thread_crit_edge:             ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end118.thread

if.else:                                          ; preds = %if.then47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 2592, i32 noundef 8) #21
  %ctx = getelementptr [128 x %struct.gid_entry], ptr %arrayidx15, i32 0, i32 %free.1, i32 2
  %25 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i, ptr %ctx, align 4
  %tobool57.not = icmp eq ptr %call7.i, null
  br i1 %tobool57.not, label %if.else.if.end118.thread_crit_edge, label %if.end89

if.else.if.end118.thread_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end118.thread

if.else82:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #19
  %ctx86 = getelementptr [128 x %struct.gid_entry], ptr %arrayidx15, i32 0, i32 %i.0233, i32 2
  %26 = ptrtoint ptr %ctx86 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctx86, align 4
  %28 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %context, align 4
  %refcount87 = getelementptr inbounds %struct.gid_cache_context, ptr %27, i32 0, i32 1
  %29 = ptrtoint ptr %refcount87 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %refcount87, align 4
  %inc88 = add i32 %30, 1
  store i32 %inc88, ptr %refcount87, align 4
  br label %if.end118.thread

if.end89:                                         ; preds = %if.else
  %arrayidx53 = getelementptr [128 x %struct.gid_entry], ptr %arrayidx15, i32 0, i32 %free.1
  %31 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i, ptr %context, align 4
  %32 = call ptr @memcpy(ptr %arrayidx53, ptr %gid19, i32 16)
  %33 = ptrtoint ptr %gid_type24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %gid_type24, align 8
  %gid_type70 = getelementptr [128 x %struct.gid_entry], ptr %arrayidx15, i32 0, i32 %free.1, i32 1
  %35 = ptrtoint ptr %gid_type70 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %gid_type70, align 8
  %36 = ptrtoint ptr %vlan_id to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %vlan_id, align 2
  %vlan_id73 = getelementptr [128 x %struct.gid_entry], ptr %arrayidx15, i32 0, i32 %free.1, i32 3
  %38 = ptrtoint ptr %vlan_id73 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %vlan_id73, align 8
  %39 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctx, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %free.1, ptr %40, align 4
  %42 = load ptr, ptr %ctx, align 4
  %refcount = getelementptr inbounds %struct.gid_cache_context, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 1, ptr %refcount, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 2592, i32 noundef 4096) #21
  %tobool95.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool95.not, label %if.then96, label %if.end89.for.body103_crit_edge

if.end89.for.body103_crit_edge:                   ; preds = %if.end89
  br label %for.body103

if.then96:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #19
  %45 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %context, align 4
  %46 = call ptr @memset(ptr %arrayidx53, i32 0, i32 16)
  %47 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx, align 4
  call void @kfree(ptr noundef %48) #17
  %49 = ptrtoint ptr %ctx to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %ctx, align 4
  br label %if.end118.thread

for.body103:                                      ; preds = %for.body103.for.body103_crit_edge, %if.end89.for.body103_crit_edge
  %i.1236 = phi i32 [ %inc115, %for.body103.for.body103_crit_edge ], [ 0, %if.end89.for.body103_crit_edge ]
  %arrayidx104 = getelementptr %struct.gid_entry, ptr %call7.i.i, i32 %i.1236
  %arrayidx107 = getelementptr [128 x %struct.gid_entry], ptr %arrayidx15, i32 0, i32 %i.1236
  %50 = call ptr @memcpy(ptr %arrayidx104, ptr %arrayidx107, i32 16)
  %gid_type111 = getelementptr [128 x %struct.gid_entry], ptr %arrayidx15, i32 0, i32 %i.1236, i32 1
  %51 = ptrtoint ptr %gid_type111 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %gid_type111, align 8
  %gid_type113 = getelementptr %struct.gid_entry, ptr %call7.i.i, i32 %i.1236, i32 1
  %53 = ptrtoint ptr %gid_type113 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %gid_type113, align 8
  %inc115 = add nuw nsw i32 %i.1236, 1
  %exitcond239.not = icmp eq i32 %inc115, 128
  br i1 %exitcond239.not, label %if.end118, label %for.body103.for.body103_crit_edge

for.body103.for.body103_crit_edge:                ; preds = %for.body103
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body103

if.end118.thread:                                 ; preds = %if.then96, %if.else82, %if.else.if.end118.thread_crit_edge, %if.then47.if.end118.thread_crit_edge
  %ret.1.ph = phi i32 [ 0, %if.else82 ], [ -12, %if.else.if.end118.thread_crit_edge ], [ -28, %if.then47.if.end118.thread_crit_edge ], [ -12, %if.then96 ]
  call void @_raw_spin_unlock_bh(ptr noundef %iboe1) #17
  br label %cleanup

if.end118:                                        ; preds = %for.body103
  call void @_raw_spin_unlock_bh(ptr noundef %iboe1) #17
  %54 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port_num, align 8
  %call125 = call fastcc i32 @mlx4_ib_update_gids(ptr noundef nonnull %call7.i.i, ptr noundef %1, i32 noundef %55)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call125)
  %tobool126.not = icmp eq i32 %call125, 0
  br i1 %tobool126.not, label %if.end118.if.end132_crit_edge, label %if.then127

if.end118.if.end132_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end132

if.then127:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #19
  call void @_raw_spin_lock_bh(ptr noundef %iboe1) #17
  %56 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %context, align 4
  %arrayidx130 = getelementptr [128 x %struct.gid_entry], ptr %arrayidx15, i32 0, i32 %free.1
  %57 = call ptr @memset(ptr %arrayidx130, i32 0, i32 16)
  %ctx.i218 = getelementptr [128 x %struct.gid_entry], ptr %arrayidx15, i32 0, i32 %free.1, i32 2
  %58 = ptrtoint ptr %ctx.i218 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctx.i218, align 4
  call void @kfree(ptr noundef %59) #17
  %60 = ptrtoint ptr %ctx.i218 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %ctx.i218, align 4
  call void @_raw_spin_unlock_bh(ptr noundef %iboe1) #17
  br label %if.end132

if.end132:                                        ; preds = %if.then127, %if.end118.if.end132_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end132, %if.end118.thread, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %rdma_cap_roce_gid_table.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %rdma_cap_roce_gid_table.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call125, %if.end132 ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %ret.1.ph, %if.end118.thread ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %mac) #17
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %vlan_id) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_del_gid(ptr nocapture noundef readonly %attr, ptr nocapture noundef readonly %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %device = getelementptr inbounds %struct.ib_gid_attr, ptr %attr, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %iboe1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %3, i32 0, i32 14
  %port_num = getelementptr inbounds %struct.ib_gid_attr, ptr %attr, i32 0, i32 5
  %4 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port_num, align 8
  %port_data.i.i = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 11
  %6 = ptrtoint ptr %port_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %port_data.i.i, align 8
  %core_cap_flags.i.i = getelementptr %struct.ib_port_data, ptr %7, i32 %5, i32 1, i32 2
  %8 = ptrtoint ptr %core_cap_flags.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %core_cap_flags.i.i, align 4
  %and.i.i = and i32 %9, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true.i:                                  ; preds = %entry
  %add_gid.i = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 1, i32 27
  %10 = ptrtoint ptr %add_gid.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add_gid.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %rdma_cap_roce_gid_table.exit

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

rdma_cap_roce_gid_table.exit:                     ; preds = %land.lhs.true.i
  %del_gid.i = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 1, i32 28
  %12 = ptrtoint ptr %del_gid.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %del_gid.i, align 4
  %tobool2.i = icmp eq ptr %13, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp ugt i32 %5, 2
  %or.cond = select i1 %tobool2.i, i1 true, i1 %cmp
  br i1 %or.cond, label %rdma_cap_roce_gid_table.exit.cleanup_crit_edge, label %if.end6

rdma_cap_roce_gid_table.exit.cleanup_crit_edge:   ; preds = %rdma_cap_roce_gid_table.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %rdma_cap_roce_gid_table.exit
  %sub = add nsw i32 %5, -1
  %arrayidx = getelementptr %struct.mlx4_ib_dev, ptr %3, i32 0, i32 14, i32 4, i32 %sub
  tail call void @_raw_spin_lock_bh(ptr noundef %iboe1) #17
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end6..thread88_crit_edge, label %if.then9

if.end6..thread88_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  br label %.thread88

if.then9:                                         ; preds = %if.end6
  %refcount = getelementptr inbounds %struct.gid_cache_context, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %refcount to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %refcount, align 4
  %dec = add i32 %15, -1
  store i32 %dec, ptr %refcount, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool11.not = icmp eq i32 %dec, 0
  br i1 %tobool11.not, label %if.then20, label %if.then9..thread88_crit_edge

if.then9..thread88_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  br label %.thread88

if.then20:                                        ; preds = %if.then9
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %arrayidx15 = getelementptr [128 x %struct.gid_entry], ptr %arrayidx, i32 0, i32 %17
  %18 = call ptr @memset(ptr %arrayidx15, i32 0, i32 16)
  %ctx.i = getelementptr [128 x %struct.gid_entry], ptr %arrayidx, i32 0, i32 %17, i32 2
  %19 = ptrtoint ptr %ctx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx.i, align 4
  tail call void @kfree(ptr noundef %20) #17
  %21 = ptrtoint ptr %ctx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %ctx.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 2592, i32 noundef 4096) #21
  %tobool22.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool22.not, label %.thread, label %if.then20.for.body_crit_edge

if.then20.for.body_crit_edge:                     ; preds = %if.then20
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then20.for.body_crit_edge
  %i.078 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.then20.for.body_crit_edge ]
  %arrayidx25 = getelementptr %struct.gid_entry, ptr %call7.i.i, i32 %i.078
  %arrayidx27 = getelementptr [128 x %struct.gid_entry], ptr %arrayidx, i32 0, i32 %i.078
  %23 = call ptr @memcpy(ptr %arrayidx25, ptr %arrayidx27, i32 16)
  %gid_type = getelementptr [128 x %struct.gid_entry], ptr %arrayidx, i32 0, i32 %i.078, i32 1
  %24 = ptrtoint ptr %gid_type to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %gid_type, align 8
  %gid_type32 = getelementptr %struct.gid_entry, ptr %call7.i.i, i32 %i.078, i32 1
  %26 = ptrtoint ptr %gid_type32 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %gid_type32, align 8
  %inc = add nuw nsw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, 128
  br i1 %exitcond.not, label %if.then39, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

.thread:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_bh(ptr noundef %iboe1) #17
  br label %cleanup

.thread88:                                        ; preds = %if.then9..thread88_crit_edge, %if.end6..thread88_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %iboe1) #17
  br label %cleanup

if.then39:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @_raw_spin_unlock_bh(ptr noundef %iboe1) #17
  %27 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port_num, align 8
  %call41 = tail call fastcc i32 @mlx4_ib_update_gids(ptr noundef nonnull %call7.i.i, ptr noundef %3, i32 noundef %28)
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %.thread88, %.thread, %rdma_cap_roce_gid_table.exit.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %rdma_cap_roce_gid_table.exit.cleanup_crit_edge ], [ %call41, %if.then39 ], [ -22, %land.lhs.true.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -12, %.thread ], [ 0, %.thread88 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_query_pkey(ptr noundef %ibdev, i32 noundef %port, i16 noundef zeroext %index, ptr nocapture noundef writeonly %pkey) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__mlx4_ib_query_pkey(ptr noundef %ibdev, i32 noundef %port, i16 noundef zeroext %index, ptr noundef %pkey, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_alloc_ucontext(ptr noundef %uctx, ptr nocapture noundef readonly %udata) #0 align 64 {
entry:
  %resp_v3 = alloca %struct.mlx4_ib_alloc_ucontext_resp_v3, align 8
  %resp = alloca %struct.mlx4_ib_alloc_ucontext_resp, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %uctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %uctx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %resp_v3) #17
  %2 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp_v3, ptr %resp_v3, i32 0, i32 1
  %3 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp_v3, ptr %resp_v3, i32 0, i32 2
  %4 = ptrtoint ptr %resp_v3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 -1, ptr %resp_v3, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %resp) #17
  %5 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp, ptr %resp, i32 0, i32 1
  %6 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp, ptr %resp, i32 0, i32 2
  %7 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp, ptr %resp, i32 0, i32 3
  %8 = getelementptr inbounds %struct.mlx4_ib_alloc_ucontext_resp, ptr %resp, i32 0, i32 4
  %ib_active = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 13
  %9 = call ptr @memset(ptr %resp, i32 255, i32 16)
  %10 = ptrtoint ptr %ib_active to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ib_active, align 4, !range !304
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %uverbs_abi_ver = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %uverbs_abi_ver to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %uverbs_abi_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp = icmp eq i32 %13, 3
  %dev3 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev3, align 8
  br i1 %cmp, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %num_qps = getelementptr inbounds %struct.mlx4_dev, ptr %15, i32 0, i32 3, i32 21
  %16 = ptrtoint ptr %num_qps to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_qps, align 4
  %18 = ptrtoint ptr %resp_v3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %resp_v3, align 8
  %bf_reg_size = getelementptr inbounds %struct.mlx4_dev, ptr %15, i32 0, i32 3, i32 17
  %19 = ptrtoint ptr %bf_reg_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bf_reg_size, align 4
  %conv = trunc i32 %20 to i16
  %21 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv, ptr %2, align 4
  %bf_regs_per_page = getelementptr inbounds %struct.mlx4_dev, ptr %15, i32 0, i32 3, i32 18
  %22 = ptrtoint ptr %bf_regs_per_page to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bf_regs_per_page, align 8
  %conv9 = trunc i32 %23 to i16
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv9, ptr %3, align 2
  br label %if.end30

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %userspace_caps = getelementptr inbounds %struct.mlx4_dev, ptr %15, i32 0, i32 3, i32 85
  %25 = ptrtoint ptr %userspace_caps to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %userspace_caps, align 4
  %27 = ptrtoint ptr %resp to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %resp, align 4
  %num_qps15 = getelementptr inbounds %struct.mlx4_dev, ptr %15, i32 0, i32 3, i32 21
  %28 = ptrtoint ptr %num_qps15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_qps15, align 4
  %30 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %5, align 4
  %bf_reg_size19 = getelementptr inbounds %struct.mlx4_dev, ptr %15, i32 0, i32 3, i32 17
  %31 = ptrtoint ptr %bf_reg_size19 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bf_reg_size19, align 4
  %conv20 = trunc i32 %32 to i16
  %33 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv20, ptr %6, align 4
  %bf_regs_per_page24 = getelementptr inbounds %struct.mlx4_dev, ptr %15, i32 0, i32 3, i32 18
  %34 = ptrtoint ptr %bf_regs_per_page24 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bf_regs_per_page24, align 8
  %conv25 = trunc i32 %35 to i16
  %36 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv25, ptr %7, align 2
  %cqe_size = getelementptr inbounds %struct.mlx4_dev, ptr %15, i32 0, i32 3, i32 83
  %37 = ptrtoint ptr %cqe_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cqe_size, align 4
  %39 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %8, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then2
  %dev32 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev32, align 8
  %uar = getelementptr inbounds %struct.mlx4_ib_ucontext, ptr %uctx, i32 0, i32 1
  %call33 = tail call i32 @mlx4_uar_alloc(ptr noundef %41, ptr noundef %uar) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %db_page_list = getelementptr inbounds %struct.mlx4_ib_ucontext, ptr %uctx, i32 0, i32 2
  %42 = ptrtoint ptr %db_page_list to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %db_page_list, ptr %db_page_list, align 4
  %prev.i = getelementptr inbounds %struct.mlx4_ib_ucontext, ptr %uctx, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %db_page_list, ptr %prev.i, align 4
  %db_page_mutex = getelementptr inbounds %struct.mlx4_ib_ucontext, ptr %uctx, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %db_page_mutex, ptr noundef nonnull @.str.63, ptr noundef nonnull @mlx4_ib_alloc_ucontext.__key) #17
  %wqn_ranges_list = getelementptr inbounds %struct.mlx4_ib_ucontext, ptr %uctx, i32 0, i32 4
  %44 = ptrtoint ptr %wqn_ranges_list to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %wqn_ranges_list, ptr %wqn_ranges_list, align 4
  %prev.i82 = getelementptr inbounds %struct.mlx4_ib_ucontext, ptr %uctx, i32 0, i32 4, i32 1
  %45 = ptrtoint ptr %prev.i82 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %wqn_ranges_list, ptr %prev.i82, align 4
  %wqn_ranges_mutex = getelementptr inbounds %struct.mlx4_ib_ucontext, ptr %uctx, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %wqn_ranges_mutex, ptr noundef nonnull @.str.65, ptr noundef nonnull @mlx4_ib_alloc_ucontext.__key.64) #17
  %46 = ptrtoint ptr %uverbs_abi_ver to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %uverbs_abi_ver, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %47)
  %cmp42 = icmp eq i32 %47, 3
  %outbuf.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %48 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %outbuf.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 174) #17
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %cmp42, label %if.then44, label %if.else46

if.then44:                                        ; preds = %if.end36
  br i1 %call.i.i.i, label %if.then44.if.then50_crit_edge, label %if.end.i.i.i

if.then44.if.then50_crit_edge:                    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then50

if.end.i.i.i:                                     ; preds = %if.then44
  %50 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %49, i32 8, i32 -1226833920) #24, !srcloc !303
  %asmresult.i.i.i = extractvalue { i32, i32 } %50, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.if.then50_crit_edge

if.end.i.i.i.if.then50_crit_edge:                 ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then50

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %resp_v3, i32 noundef 8) #17
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %49, ptr noundef nonnull %resp_v3, i32 noundef 8) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool.not.i, label %copy_to_user.exit.i.cleanup_crit_edge, label %copy_to_user.exit.i.if.then50_crit_edge

copy_to_user.exit.i.if.then50_crit_edge:          ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then50

copy_to_user.exit.i.cleanup_crit_edge:            ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.else46:                                        ; preds = %if.end36
  br i1 %call.i.i.i, label %if.else46.if.then50_crit_edge, label %if.end.i.i.i91

if.else46.if.then50_crit_edge:                    ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then50

if.end.i.i.i91:                                   ; preds = %if.else46
  %51 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %49, i32 16, i32 -1226833920) #24, !srcloc !303
  %asmresult.i.i.i89 = extractvalue { i32, i32 } %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i89)
  %cmp.i6.i.i90 = icmp eq i32 %asmresult.i.i.i89, 0
  br i1 %cmp.i6.i.i90, label %copy_to_user.exit.i98, label %if.end.i.i.i91.if.then50_crit_edge

if.end.i.i.i91.if.then50_crit_edge:               ; preds = %if.end.i.i.i91
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then50

copy_to_user.exit.i98:                            ; preds = %if.end.i.i.i91
  %call.i.i.i.i92 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %resp, i32 noundef 16) #17
  %call.i12.i.i.i93 = call i32 @arm_copy_to_user(ptr noundef %49, ptr noundef nonnull %resp, i32 noundef 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i93)
  %tobool.not.i96 = icmp eq i32 %call.i12.i.i.i93, 0
  br i1 %tobool.not.i96, label %copy_to_user.exit.i98.cleanup_crit_edge, label %copy_to_user.exit.i98.if.then50_crit_edge

copy_to_user.exit.i98.if.then50_crit_edge:        ; preds = %copy_to_user.exit.i98
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then50

copy_to_user.exit.i98.cleanup_crit_edge:          ; preds = %copy_to_user.exit.i98
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then50:                                        ; preds = %copy_to_user.exit.i98.if.then50_crit_edge, %if.end.i.i.i91.if.then50_crit_edge, %if.else46.if.then50_crit_edge, %copy_to_user.exit.i.if.then50_crit_edge, %if.end.i.i.i.if.then50_crit_edge, %if.then44.if.then50_crit_edge
  %52 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev32, align 8
  call void @mlx4_uar_free(ptr noundef %53, ptr noundef %uar) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then50, %copy_to_user.exit.i98.cleanup_crit_edge, %copy_to_user.exit.i.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then50 ], [ -11, %entry.cleanup_crit_edge ], [ %call33, %if.end30.cleanup_crit_edge ], [ 0, %copy_to_user.exit.i.cleanup_crit_edge ], [ 0, %copy_to_user.exit.i98.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %resp) #17
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %resp_v3) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mlx4_ib_dealloc_ucontext(ptr noundef %ibcontext) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibcontext to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibcontext, align 4
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %uar = getelementptr inbounds %struct.mlx4_ib_ucontext, ptr %ibcontext, i32 0, i32 1
  tail call void @mlx4_uar_free(ptr noundef %3, ptr noundef %uar) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_mmap(ptr noundef %context, ptr noundef %vma) #0 align 64 {
entry:
  %params = alloca %struct.mlx4_clock_params, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %vm_pgoff = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 13
  %2 = ptrtoint ptr %vm_pgoff to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %vm_pgoff, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %3, label %entry.cleanup27_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 3, label %sw.bb14
  ]

entry.cleanup27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup27

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %uar = getelementptr inbounds %struct.mlx4_ib_ucontext, ptr %context, i32 0, i32 1
  %5 = ptrtoint ptr %uar to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %uar, align 4
  %vm_page_prot = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %7 = ptrtoint ptr %vm_page_prot to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vm_page_prot, align 4
  %and = and i32 %8, -61
  %call2 = tail call i32 @rdma_user_mmap_io(ptr noundef %context, ptr noundef %vma, i32 noundef %6, i32 noundef 4096, i32 noundef %and, ptr noundef null) #17
  br label %cleanup27

sw.bb3:                                           ; preds = %entry
  %dev4 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev4, align 8
  %bf_reg_size = getelementptr inbounds %struct.mlx4_dev, ptr %10, i32 0, i32 3, i32 17
  %11 = ptrtoint ptr %bf_reg_size to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bf_reg_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp = icmp eq i32 %12, 0
  br i1 %cmp, label %sw.bb3.cleanup27_crit_edge, label %if.end

sw.bb3.cleanup27_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup27

if.end:                                           ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #19
  %uar6 = getelementptr inbounds %struct.mlx4_ib_ucontext, ptr %context, i32 0, i32 1
  %13 = ptrtoint ptr %uar6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %uar6, align 4
  %num_uars = getelementptr inbounds %struct.mlx4_dev, ptr %10, i32 0, i32 3, i32 15
  %15 = ptrtoint ptr %num_uars to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_uars, align 4
  %add = add i32 %16, %14
  %vm_page_prot10 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %17 = ptrtoint ptr %vm_page_prot10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %vm_page_prot10, align 4
  %and11 = and i32 %18, -61
  %or12 = or i32 %and11, 4
  %call13 = tail call i32 @rdma_user_mmap_io(ptr noundef %context, ptr noundef %vma, i32 noundef %add, i32 noundef 4096, i32 noundef %or12, ptr noundef null) #17
  br label %cleanup27

sw.bb14:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %params) #17
  %19 = call ptr @memset(ptr %params, i32 255, i32 16)
  %dev15 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev15, align 8
  %call16 = call i32 @mlx4_get_internal_clock_params(ptr noundef %21, ptr noundef nonnull %params) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool.not = icmp eq i32 %call16, 0
  br i1 %tobool.not, label %if.end18, label %sw.bb14.cleanup_crit_edge

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end18:                                         ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev15, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %bar = getelementptr inbounds %struct.mlx4_clock_params, ptr %params, i32 0, i32 1
  %28 = ptrtoint ptr %bar to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bar, align 8
  %idxprom = zext i8 %29 to i32
  %arrayidx = getelementptr %struct.pci_dev, ptr %27, i32 0, i32 47, i32 %idxprom
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 8
  %conv = zext i32 %31 to i64
  %32 = ptrtoint ptr %params to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %params, align 8
  %add20 = add i64 %33, %conv
  %shr = lshr i64 %add20, 12
  %conv21 = trunc i64 %shr to i32
  %vm_page_prot22 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 7
  %34 = ptrtoint ptr %vm_page_prot22 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %vm_page_prot22, align 4
  %and23 = and i32 %35, -61
  %call25 = call i32 @rdma_user_mmap_io(ptr noundef %context, ptr noundef %vma, i32 noundef %conv21, i32 noundef 4096, i32 noundef %and23, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %sw.bb14.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end18 ], [ %call16, %sw.bb14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %params) #17
  br label %cleanup27

cleanup27:                                        ; preds = %cleanup, %if.end, %sw.bb3.cleanup27_crit_edge, %sw.bb, %entry.cleanup27_crit_edge
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ %call13, %if.end ], [ %call2, %sw.bb ], [ -22, %sw.bb3.cleanup27_crit_edge ], [ -22, %entry.cleanup27_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mlx4_ib_disassociate_ucontext(ptr nocapture noundef %ibcontext) #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_alloc_pd(ptr noundef %ibpd, ptr noundef readonly %udata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %ibpd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %pdn = getelementptr inbounds %struct.mlx4_ib_pd, ptr %ibpd, i32 0, i32 1
  %call2 = tail call i32 @mlx4_pd_alloc(ptr noundef %3, ptr noundef %pdn) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %udata, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %outbuf.i = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 1
  %4 = ptrtoint ptr %outbuf.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %outbuf.i, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.59, i32 noundef 174) #17
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #17
  br i1 %call.i.i.i, label %land.lhs.true.if.then7_crit_edge, label %if.end.i.i.i

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7

if.end.i.i.i:                                     ; preds = %land.lhs.true
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 4, i32 -1226833920) #24, !srcloc !303
  %asmresult.i.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.if.then7_crit_edge

if.end.i.i.i.if.then7_crit_edge:                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pdn, i32 noundef 4) #17
  %call.i12.i.i.i = tail call i32 @arm_copy_to_user(ptr noundef %5, ptr noundef %pdn, i32 noundef 4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i12.i.i.i, 0
  br i1 %tobool.not.i, label %copy_to_user.exit.i.cleanup_crit_edge, label %copy_to_user.exit.i.if.then7_crit_edge

copy_to_user.exit.i.if.then7_crit_edge:           ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then7

copy_to_user.exit.i.cleanup_crit_edge:            ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then7:                                         ; preds = %copy_to_user.exit.i.if.then7_crit_edge, %if.end.i.i.i.if.then7_crit_edge, %land.lhs.true.if.then7_crit_edge
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 8
  %9 = ptrtoint ptr %pdn to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pdn, align 4
  tail call void @mlx4_pd_free(ptr noundef %8, i32 noundef %10) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %copy_to_user.exit.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %if.then7 ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %copy_to_user.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_dealloc_pd(ptr nocapture noundef readonly %pd, ptr nocapture noundef readnone %udata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.ib_pd, ptr %pd, i32 0, i32 2
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 8
  %pdn = getelementptr inbounds %struct.mlx4_ib_pd, ptr %pd, i32 0, i32 1
  %4 = ptrtoint ptr %pdn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pdn, align 4
  tail call void @mlx4_pd_free(ptr noundef %3, i32 noundef %5) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_create_ah(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_query_ah(ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx4_ib_destroy_ah(ptr nocapture noundef readnone %ah, i32 noundef %flags) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_create_srq(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_modify_srq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_query_srq(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_destroy_srq(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_create_qp(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_modify_qp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_query_qp(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_destroy_qp(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_create_cq(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_modify_cq(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_destroy_cq(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_resize_cq(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx4_ib_get_dma_mr(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx4_ib_reg_user_mr(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx4_ib_rereg_user_mr(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_dereg_mr(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx4_ib_alloc_mr(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_map_mr_sg(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_mcg_attach(ptr noundef %ibqp, ptr noundef %gid, i16 noundef zeroext %lid) #0 align 64 {
entry:
  %reg_id = alloca %struct.mlx4_flow_reg_id, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibqp, align 4
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg_id) #17
  %4 = getelementptr inbounds %struct.mlx4_flow_reg_id, ptr %reg_id, i32 0, i32 1
  %steering_mode = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 3, i32 50
  %5 = call ptr @memset(ptr %reg_id, i32 255, i32 16)
  %6 = ptrtoint ptr %steering_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %steering_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 40) #21
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %ib_steering.0 = phi ptr [ %call7.i, %if.then.if.end6_crit_edge ], [ null, %entry.if.end6_crit_edge ]
  %9 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev1, align 8
  %mqp8 = getelementptr inbounds %struct.mlx4_ib_qp, ptr %ibqp, i32 0, i32 1
  %port = getelementptr inbounds %struct.mlx4_ib_qp, ptr %ibqp, i32 0, i32 17
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %port, align 4
  %flags = getelementptr inbounds %struct.mlx4_ib_qp, ptr %ibqp, i32 0, i32 16
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 8
  %and = lshr i32 %14, 1
  %and.lobit = and i32 %and, 1
  %call11 = call i32 @mlx4_multicast_attach(ptr noundef %10, ptr noundef %mqp8, ptr noundef %gid, i8 noundef zeroext %12, i32 noundef %and.lobit, i32 noundef 0, ptr noundef nonnull %reg_id) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #19
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef %call11) #22
  br label %err_malloc

if.end15:                                         ; preds = %if.end6
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %4, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %18 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool17.not = icmp eq i32 %18, 0
  br i1 %tobool17.not, label %if.end15.if.end38_crit_edge, label %if.then18

if.end15.if.end38_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.then18:                                        ; preds = %if.end15
  %19 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev1, align 8
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %port, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %22)
  %cmp23 = icmp eq i8 %22, 1
  %conv25 = select i1 %cmp23, i8 2, i8 1
  %23 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flags, align 8
  %and27 = lshr i32 %24, 1
  %and27.lobit = and i32 %and27, 1
  %call34 = call i32 @mlx4_multicast_attach(ptr noundef %20, ptr noundef %mqp8, ptr noundef %gid, i8 noundef zeroext %conv25, i32 noundef %and27.lobit, i32 noundef 0, ptr noundef %4) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then18.if.end38_crit_edge, label %if.then18.err_add_crit_edge

if.then18.err_add_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_add

if.then18.if.end38_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end38

if.end38:                                         ; preds = %if.then18.if.end38_crit_edge, %if.end15.if.end38_crit_edge
  %25 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ibqp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %27 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %27, i32 noundef 3520, i32 noundef 32) #21
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end38.err_add_crit_edge, label %if.end.i

if.end38.err_add_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_add

if.end.i:                                         ; preds = %if.end38
  %gid3.i = getelementptr inbounds %struct.mlx4_ib_gid_entry, ptr %call7.i.i.i, i32 0, i32 1
  %28 = call ptr @memcpy(ptr %gid3.i, ptr %gid, i32 16)
  %call4.i = call i32 @mlx4_ib_add_mc(ptr noundef %26, ptr noundef %ibqp, ptr undef) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then6.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %port, align 4
  %port7.i = getelementptr inbounds %struct.mlx4_ib_gid_entry, ptr %call7.i.i.i, i32 0, i32 3
  %31 = ptrtoint ptr %port7.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %port7.i, align 4
  %added.i = getelementptr inbounds %struct.mlx4_ib_gid_entry, ptr %call7.i.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %added.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1, ptr %added.i, align 8
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i.if.end8.i_crit_edge
  %mutex.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %ibqp, i32 0, i32 14
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #17
  %gid_list.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %ibqp, i32 0, i32 25
  %prev.i.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %ibqp, i32 0, i32 25, i32 1
  %33 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %34, ptr noundef %gid_list.i) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end8.i.if.end42_crit_edge

if.end8.i.if.end42_crit_edge:                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end42

if.end.i.i.i:                                     ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #19
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %gid_list.i, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call7.i.i.i, ptr %34, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end.i.i.i, %if.end8.i.if.end42_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #17
  %tobool43.not = icmp eq ptr %ib_steering.0, null
  br i1 %tobool43.not, label %if.end42.cleanup_crit_edge, label %if.then44

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then44:                                        ; preds = %if.end42
  %gid45 = getelementptr inbounds %struct.mlx4_ib_steering, ptr %ib_steering.0, i32 0, i32 2
  %39 = call ptr @memcpy(ptr %gid45, ptr %gid, i32 16)
  %reg_id48 = getelementptr inbounds %struct.mlx4_ib_steering, ptr %ib_steering.0, i32 0, i32 1
  %40 = call ptr @memcpy(ptr %reg_id48, ptr %reg_id, i32 16)
  call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #17
  %steering_rules = getelementptr inbounds %struct.mlx4_ib_qp, ptr %ibqp, i32 0, i32 26
  %41 = ptrtoint ptr %steering_rules to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %steering_rules, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %ib_steering.0, ptr noundef %steering_rules, ptr noundef %42) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.then44.list_add.exit_crit_edge

if.then44.list_add.exit_crit_edge:                ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #19
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %ib_steering.0, ptr %prev1.i.i, align 4
  %44 = ptrtoint ptr %ib_steering.0 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %42, ptr %ib_steering.0, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %ib_steering.0, i32 0, i32 1
  %45 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %steering_rules, ptr %prev3.i.i, align 4
  %46 = ptrtoint ptr %steering_rules to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %ib_steering.0, ptr %steering_rules, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then44.list_add.exit_crit_edge
  call void @mutex_unlock(ptr noundef %mutex.i) #17
  br label %cleanup

err_add:                                          ; preds = %if.end38.err_add_crit_edge, %if.then18.err_add_crit_edge
  %err.0 = phi i32 [ %call34, %if.then18.err_add_crit_edge ], [ -12, %if.end38.err_add_crit_edge ]
  %47 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev1, align 8
  %49 = ptrtoint ptr %reg_id to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %reg_id, align 8
  %call55 = call i32 @mlx4_multicast_detach(ptr noundef %48, ptr noundef %mqp8, ptr noundef %gid, i32 noundef 0, i64 noundef %50) #17
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %4, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %52)
  %tobool57.not = icmp eq i64 %52, 0
  br i1 %tobool57.not, label %err_add.err_malloc_crit_edge, label %if.then58

err_add.err_malloc_crit_edge:                     ; preds = %err_add
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_malloc

if.then58:                                        ; preds = %err_add
  call void @__sanitizer_cov_trace_pc() #19
  %53 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev1, align 8
  %call63 = call i32 @mlx4_multicast_detach(ptr noundef %54, ptr noundef %mqp8, ptr noundef %gid, i32 noundef 0, i64 noundef %52) #17
  br label %err_malloc

err_malloc:                                       ; preds = %if.then58, %err_add.err_malloc_crit_edge, %do.end
  %err.1 = phi i32 [ %call11, %do.end ], [ %err.0, %if.then58 ], [ %err.0, %err_add.err_malloc_crit_edge ]
  call void @kfree(ptr noundef %ib_steering.0) #17
  br label %cleanup

cleanup:                                          ; preds = %err_malloc, %list_add.exit, %if.end42.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_malloc ], [ -12, %if.then.cleanup_crit_edge ], [ 0, %list_add.exit ], [ 0, %if.end42.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg_id) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_mcg_detach(ptr noundef %ibqp, ptr noundef %gid, i16 noundef zeroext %lid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibqp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibqp, align 4
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %steering_mode = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 3, i32 50
  %4 = ptrtoint ptr %steering_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %steering_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp = icmp eq i32 %5, 2
  br i1 %cmp, label %if.then, label %entry.if.end25_crit_edge

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end25

if.then:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.mlx4_ib_qp, ptr %ibqp, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #17
  %steering_rules = getelementptr inbounds %struct.mlx4_ib_qp, ptr %ibqp, i32 0, i32 26
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then
  %ib_steering.0.in = phi ptr [ %steering_rules, %if.then ], [ %ib_steering.0, %for.body.for.cond_crit_edge ]
  %6 = ptrtoint ptr %ib_steering.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %ib_steering.0 = load ptr, ptr %ib_steering.0.in, align 4
  %cmp5 = icmp eq ptr %ib_steering.0, %steering_rules
  br i1 %cmp5, label %cleanup.thread, label %for.body

for.body:                                         ; preds = %for.cond
  %gid6 = getelementptr inbounds %struct.mlx4_ib_steering, ptr %ib_steering.0, i32 0, i32 2
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %gid6, ptr noundef dereferenceable(16) %gid, i32 16) #20
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.then9, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond

if.then9:                                         ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %ib_steering.0) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.then9.cleanup_crit_edge

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %ib_steering.0, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %ib_steering.0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ib_steering.0, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %cleanup

cleanup.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @mutex_unlock(ptr noundef %mutex) #17
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #22
  br label %cleanup67

cleanup:                                          ; preds = %if.end.i.i, %if.then9.cleanup_crit_edge
  %13 = ptrtoint ptr %ib_steering.0 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %ib_steering.0, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %ib_steering.0, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @mutex_unlock(ptr noundef %mutex) #17
  %reg_id24 = getelementptr inbounds %struct.mlx4_ib_steering, ptr %ib_steering.0, i32 0, i32 1
  %15 = ptrtoint ptr %reg_id24 to i32
  call void @__asan_load8_noabort(i32 %15)
  %reg_id.sroa.0.0.copyload = load i64, ptr %reg_id24, align 8
  %reg_id.sroa.5.0.reg_id24.sroa_idx = getelementptr inbounds %struct.mlx4_ib_steering, ptr %ib_steering.0, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %reg_id.sroa.5.0.reg_id24.sroa_idx to i32
  call void @__asan_load8_noabort(i32 %16)
  %reg_id.sroa.5.0.copyload = load i64, ptr %reg_id.sroa.5.0.reg_id24.sroa_idx, align 8
  tail call void @kfree(ptr noundef %ib_steering.0) #17
  br label %if.end25

if.end25:                                         ; preds = %cleanup, %entry.if.end25_crit_edge
  %reg_id.sroa.0.1 = phi i64 [ %reg_id.sroa.0.0.copyload, %cleanup ], [ 0, %entry.if.end25_crit_edge ]
  %reg_id.sroa.5.1 = phi i64 [ %reg_id.sroa.5.0.copyload, %cleanup ], [ 0, %entry.if.end25_crit_edge ]
  %17 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev1, align 8
  %mqp27 = getelementptr inbounds %struct.mlx4_ib_qp, ptr %ibqp, i32 0, i32 1
  %call29 = tail call i32 @mlx4_multicast_detach(ptr noundef %18, ptr noundef %mqp27, ptr noundef %gid, i32 noundef 0, i64 noundef %reg_id.sroa.0.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end25.cleanup67_crit_edge

if.end25.cleanup67_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup67

if.end32:                                         ; preds = %if.end25
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i, align 4
  %21 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool34.not = icmp eq i32 %21, 0
  br i1 %tobool34.not, label %if.end32.if.end43_crit_edge, label %if.then35

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.then35:                                        ; preds = %if.end32
  %22 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev1, align 8
  %call39 = tail call i32 @mlx4_multicast_detach(ptr noundef %23, ptr noundef %mqp27, ptr noundef %gid, i32 noundef 0, i64 noundef %reg_id.sroa.5.1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.then35.if.end43_crit_edge, label %if.then35.cleanup67_crit_edge

if.then35.cleanup67_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup67

if.then35.if.end43_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end43

if.end43:                                         ; preds = %if.then35.if.end43_crit_edge, %if.end32.if.end43_crit_edge
  %mutex44 = getelementptr inbounds %struct.mlx4_ib_qp, ptr %ibqp, i32 0, i32 14
  tail call void @mutex_lock_nested(ptr noundef %mutex44, i32 noundef 0) #17
  %gid_list.i = getelementptr inbounds %struct.mlx4_ib_qp, ptr %ibqp, i32 0, i32 25
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end43
  %ge.0.in.i = phi ptr [ %gid_list.i, %if.end43 ], [ %ge.0.i, %for.body.i.for.cond.i_crit_edge ]
  %24 = ptrtoint ptr %ge.0.in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %ge.0.i = load ptr, ptr %ge.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %ge.0.i, %gid_list.i
  br i1 %cmp.not.i, label %for.cond.i.do.end62_crit_edge, label %for.body.i

for.cond.i.do.end62_crit_edge:                    ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end62

for.body.i:                                       ; preds = %for.cond.i
  %gid.i = getelementptr inbounds %struct.mlx4_ib_gid_entry, ptr %ge.0.i, i32 0, i32 1
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %gid, ptr noundef dereferenceable(16) %gid.i, i32 16) #25
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %find_gid_entry.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond.i

find_gid_entry.exit:                              ; preds = %for.body.i
  %tobool47.not = icmp eq ptr %ge.0.i, null
  br i1 %tobool47.not, label %find_gid_entry.exit.do.end62_crit_edge, label %if.then48

find_gid_entry.exit.do.end62_crit_edge:           ; preds = %find_gid_entry.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end62

if.then48:                                        ; preds = %find_gid_entry.exit
  %iboe = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %iboe) #17
  %added = getelementptr inbounds %struct.mlx4_ib_gid_entry, ptr %ge.0.i, i32 0, i32 2
  %25 = ptrtoint ptr %added to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %added, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool49.not = icmp eq i32 %26, 0
  br i1 %tobool49.not, label %if.then48.if.end58.critedge_crit_edge, label %cond.end

if.then48.if.end58.critedge_crit_edge:            ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58.critedge

cond.end:                                         ; preds = %if.then48
  %port = getelementptr inbounds %struct.mlx4_ib_gid_entry, ptr %ge.0.i, i32 0, i32 3
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %port, align 4
  %conv = zext i8 %28 to i32
  %sub = add nsw i32 %conv, -1
  %arrayidx = getelementptr %struct.mlx4_ib_dev, ptr %1, i32 0, i32 14, i32 1, i32 %sub
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %tobool51.not = icmp eq ptr %30, null
  br i1 %tobool51.not, label %cond.end.if.end58.critedge_crit_edge, label %do.body1.i

cond.end.if.end58.critedge_crit_edge:             ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end58.critedge

do.body1.i:                                       ; preds = %cond.end
  %31 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !292
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %30, i32 0, i32 118
  %32 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pcpu_refcnt.i, align 4
  %34 = ptrtoint ptr %33 to i32
  %35 = tail call i32 @llvm.read_register.i32(metadata !280) #17
  %and.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %40, %34
  %41 = inttoptr i32 %add.i to ptr
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %add13.i = add i32 %43, 1
  store i32 %add13.i, ptr %41, align 4
  %44 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !293
  %and.i.i.i = and i32 %44, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.body1.i122_crit_edge, !prof !294

do.body1.i.do.body1.i122_crit_edge:               ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body1.i122

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %do.body1.i122

do.body1.i122:                                    ; preds = %if.then28.i, %do.body1.i.do.body1.i122_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %31) #17, !srcloc !295
  tail call void @_raw_spin_unlock_bh(ptr noundef %iboe) #17
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #17, !srcloc !292
  %46 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcpu_refcnt.i, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = tail call i32 @llvm.read_register.i32(metadata !280) #17
  %and.i.i115 = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i115 to ptr
  %cpu.i116 = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cpu.i116 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i116, align 4
  %arrayidx.i117 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i117 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i117, align 4
  %add.i118 = add i32 %54, %48
  %55 = inttoptr i32 %add.i118 to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add13.i119 = add i32 %57, -1
  store i32 %add13.i119, ptr %55, align 4
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #17, !srcloc !293
  %and.i.i.i120 = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i120)
  %tobool24.not.i121 = icmp eq i32 %and.i.i.i120, 0
  br i1 %tobool24.not.i121, label %if.then28.i123, label %do.body1.i122.dev_put.exit_crit_edge, !prof !294

do.body1.i122.dev_put.exit_crit_edge:             ; preds = %do.body1.i122
  call void @__sanitizer_cov_trace_pc() #19
  br label %dev_put.exit

if.then28.i123:                                   ; preds = %do.body1.i122
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @warn_bogus_irq_restore() #17
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %if.then28.i123, %do.body1.i122.dev_put.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #17, !srcloc !295
  br label %if.end58

if.end58.critedge:                                ; preds = %cond.end.if.end58.critedge_crit_edge, %if.then48.if.end58.critedge_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %iboe) #17
  br label %if.end58

if.end58:                                         ; preds = %if.end58.critedge, %dev_put.exit
  %call.i.i125 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %ge.0.i) #17
  br i1 %call.i.i125, label %if.end.i.i128, label %if.end58.list_del.exit130_crit_edge

if.end58.list_del.exit130_crit_edge:              ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del.exit130

if.end.i.i128:                                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i126 = getelementptr inbounds %struct.list_head, ptr %ge.0.i, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i126 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i126, align 4
  %61 = ptrtoint ptr %ge.0.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ge.0.i, align 4
  %prev1.i.i.i127 = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i127 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i127, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %list_del.exit130

list_del.exit130:                                 ; preds = %if.end.i.i128, %if.end58.list_del.exit130_crit_edge
  %65 = ptrtoint ptr %ge.0.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 256 to ptr), ptr %ge.0.i, align 4
  %prev.i129 = getelementptr inbounds %struct.list_head, ptr %ge.0.i, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i129 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i129, align 4
  tail call void @kfree(ptr noundef nonnull %ge.0.i) #17
  br label %if.end65

do.end62:                                         ; preds = %find_gid_entry.exit.do.end62_crit_edge, %for.cond.i.do.end62_crit_edge
  %call64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.69) #22
  br label %if.end65

if.end65:                                         ; preds = %do.end62, %list_del.exit130
  tail call void @mutex_unlock(ptr noundef %mutex44) #17
  br label %cleanup67

cleanup67:                                        ; preds = %if.end65, %if.then35.cleanup67_crit_edge, %if.end25.cleanup67_crit_edge, %cleanup.thread
  %retval.1 = phi i32 [ 0, %if.end65 ], [ %call29, %if.end25.cleanup67_crit_edge ], [ %call39, %if.then35.cleanup67_crit_edge ], [ -22, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hw_rev_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.ib_core_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 8
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %rev_id = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %rev_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rev_id, align 8
  %conv = zext i8 %5 to i32
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.52, i32 noundef %conv) #17
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hca_type_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.ib_core_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 8
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %device2 = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %device2 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %device2, align 2
  %conv = zext i16 %9 to i32
  %call3 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.54, i32 noundef %conv) #17
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @board_id_show(ptr nocapture noundef readonly %device, ptr nocapture noundef readnone %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %owner.i = getelementptr inbounds %struct.ib_core_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %owner.i, align 8
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %board_id = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 9
  %call2 = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.56, i32 noundef 64, ptr noundef %board_id) #17
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_internal_clock_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx4_get_protocol_dev(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_read_gid_l2_fields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rdma_is_zero_gid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx4_ib_update_gids(ptr nocapture noundef readonly %gids, ptr nocapture noundef readonly %ibdev, i32 noundef %port_num) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 3, i32 61
  %2 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %flags2, align 8
  %and = and i64 %3, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  %call.i7 = tail call ptr @mlx4_alloc_cmd_mailbox(ptr noundef %1) #17
  %cmp.i.i8 = icmp ugt ptr %call.i7, inttoptr (i32 -4096 to ptr)
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp.i.i8, label %if.then.return_crit_edge, label %if.end.i

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end.i:                                         ; preds = %if.then
  %4 = ptrtoint ptr %call.i7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i7, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %i.049.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.anon.200, ptr %5, i32 %i.049.i
  %arrayidx3.i = getelementptr %struct.gid_entry, ptr %gids, i32 %i.049.i
  %6 = call ptr @memcpy(ptr %arrayidx.i, ptr %arrayidx3.i, i32 16)
  %gid_type.i = getelementptr %struct.gid_entry, ptr %gids, i32 %i.049.i, i32 1
  %7 = ptrtoint ptr %gid_type.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gid_type.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp6.i = icmp eq i32 %8, 2
  br i1 %cmp6.i, label %if.then7.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.then7.i:                                       ; preds = %for.body.i
  %version.i = getelementptr %struct.anon.200, ptr %5, i32 %i.049.i, i32 4
  %9 = ptrtoint ptr %version.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 2, ptr %version.i, align 1
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx3.i, align 4
  %arrayidx2.i.i = getelementptr [4 x i32], ptr %arrayidx3.i, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.i.i, align 4
  %or.i.i = or i32 %13, %11
  %arrayidx4.i.i = getelementptr [4 x i32], ptr %arrayidx3.i, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx4.i.i, align 4
  %xor.i.i = xor i32 %15, 65535
  %or5.i.i = or i32 %or.i.i, %xor.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %cmp.i47.i = icmp eq i32 %or5.i.i, 0
  br i1 %cmp.i47.i, label %if.then7.i.for.inc.i_crit_edge, label %if.then12.i

if.then7.i.for.inc.i_crit_edge:                   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.inc.i

if.then12.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #19
  %type.i = getelementptr %struct.anon.200, ptr %5, i32 %i.049.i, i32 3
  %16 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %type.i, align 2
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then12.i, %if.then7.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %dma.i = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call.i7, i32 0, i32 1
  %17 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dma.i, align 4
  %conv.i = zext i32 %18 to i64
  %or.i = or i32 %port_num, 3328
  %call.i.i = tail call i32 @__mlx4_cmd(ptr noundef %1, i64 noundef %conv.i, ptr noundef null, i32 noundef 0, i32 noundef %or.i, i8 noundef zeroext 1, i16 noundef zeroext 12, i32 noundef 60000, i32 noundef 0) #17
  %flags.i.i = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags.i.i, align 4
  %21 = and i32 %20, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %for.end.i.return.sink.split_crit_edge, label %for.end.i.return.sink.split.sink.split_crit_edge

for.end.i.return.sink.split.sink.split_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return.sink.split.sink.split

for.end.i.return.sink.split_crit_edge:            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %return.sink.split

if.end:                                           ; preds = %entry
  br i1 %cmp.i.i8, label %if.end.return_crit_edge, label %if.end.i9

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %return

if.end.i9:                                        ; preds = %if.end
  %22 = ptrtoint ptr %call.i7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call.i7, align 4
  br label %for.body.i14

for.body.i14:                                     ; preds = %for.body.i14.for.body.i14_crit_edge, %if.end.i9
  %i.028.i = phi i32 [ 0, %if.end.i9 ], [ %inc.i12, %for.body.i14.for.body.i14_crit_edge ]
  %arrayidx.i10 = getelementptr %union.ib_gid, ptr %23, i32 %i.028.i
  %arrayidx3.i11 = getelementptr %struct.gid_entry, ptr %gids, i32 %i.028.i
  %24 = call ptr @memcpy(ptr %arrayidx.i10, ptr %arrayidx3.i11, i32 16)
  %inc.i12 = add nuw nsw i32 %i.028.i, 1
  %exitcond.not.i13 = icmp eq i32 %inc.i12, 128
  br i1 %exitcond.not.i13, label %for.end.i21, label %for.body.i14.for.body.i14_crit_edge

for.body.i14.for.body.i14_crit_edge:              ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body.i14

for.end.i21:                                      ; preds = %for.body.i14
  %dma.i15 = getelementptr inbounds %struct.mlx4_cmd_mailbox, ptr %call.i7, i32 0, i32 1
  %25 = ptrtoint ptr %dma.i15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma.i15, align 4
  %conv.i16 = zext i32 %26 to i64
  %or.i17 = or i32 %port_num, 1280
  %call.i.i18 = tail call i32 @__mlx4_cmd(ptr noundef %1, i64 noundef %conv.i16, ptr noundef null, i32 noundef 0, i32 noundef %or.i17, i8 noundef zeroext 1, i16 noundef zeroext 12, i32 noundef 60000, i32 noundef 0) #17
  %flags.i.i19 = getelementptr inbounds %struct.mlx4_dev, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i.i19 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags.i.i19, align 4
  %29 = and i32 %28, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i20 = icmp eq i32 %29, 0
  br i1 %tobool.not.i20, label %for.end.i21.return.sink.split_crit_edge, label %for.end.i21.return.sink.split.sink.split_crit_edge

for.end.i21.return.sink.split.sink.split_crit_edge: ; preds = %for.end.i21
  call void @__sanitizer_cov_trace_pc() #19
  br label %return.sink.split.sink.split

for.end.i21.return.sink.split_crit_edge:          ; preds = %for.end.i21
  call void @__sanitizer_cov_trace_pc() #19
  br label %return.sink.split

return.sink.split.sink.split:                     ; preds = %for.end.i21.return.sink.split.sink.split_crit_edge, %for.end.i.return.sink.split.sink.split_crit_edge
  %dma.i15.sink = phi ptr [ %dma.i, %for.end.i.return.sink.split.sink.split_crit_edge ], [ %dma.i15, %for.end.i21.return.sink.split.sink.split_crit_edge ]
  %.sink = phi i32 [ 3330, %for.end.i.return.sink.split.sink.split_crit_edge ], [ 1282, %for.end.i21.return.sink.split.sink.split_crit_edge ]
  %call.i.i18.sink = phi i32 [ %call.i.i, %for.end.i.return.sink.split.sink.split_crit_edge ], [ %call.i.i18, %for.end.i21.return.sink.split.sink.split_crit_edge ]
  %30 = ptrtoint ptr %dma.i15.sink to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dma.i15.sink, align 4
  %conv8.i = zext i32 %31 to i64
  %call.i27.i = tail call i32 @__mlx4_cmd(ptr noundef %1, i64 noundef %conv8.i, ptr noundef null, i32 noundef 0, i32 noundef %.sink, i8 noundef zeroext 1, i16 noundef zeroext 12, i32 noundef 60000, i32 noundef 0) #17
  %add.i22 = add i32 %call.i27.i, %call.i.i18.sink
  br label %return.sink.split

return.sink.split:                                ; preds = %return.sink.split.sink.split, %for.end.i21.return.sink.split_crit_edge, %for.end.i.return.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i.i, %for.end.i.return.sink.split_crit_edge ], [ %call.i.i18, %for.end.i21.return.sink.split_crit_edge ], [ %add.i22, %return.sink.split.sink.split ]
  tail call void @mlx4_free_cmd_mailbox(ptr noundef %1, ptr noundef %call.i7) #17
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then.return_crit_edge ], [ -12, %if.end.return_crit_edge ], [ %retval.0.ph, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_user_mmap_io(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_multicast_attach(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_multicast_detach(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mlx4_ib_create_wq(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_destroy_wq(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_modify_wq(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_create_rwq_ind_table(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mlx4_ib_destroy_rwq_ind_table(ptr nocapture noundef readnone %wq_ind_table) #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_alloc_mw(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_dealloc_mw(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_alloc_xrcd(ptr noundef %ibxrcd, ptr nocapture noundef readnone %udata) #0 align 64 {
entry:
  %cq_attr = alloca %struct.ib_cq_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ibxrcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibxrcd, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cq_attr) #17
  %2 = call ptr @memset(ptr %cq_attr, i32 0, i32 12)
  %dev2 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev2, align 8
  %flags = getelementptr inbounds %struct.mlx4_dev, ptr %4, i32 0, i32 3, i32 60
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %flags, align 8
  %and = and i64 %6, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %xrcdn = getelementptr inbounds %struct.mlx4_ib_xrcd, ptr %ibxrcd, i32 0, i32 1
  %call4 = tail call i32 @mlx4_xrcd_alloc(ptr noundef %4, ptr noundef %xrcdn) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %ibxrcd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ibxrcd, align 4
  %call9 = tail call ptr @__ib_alloc_pd(ptr noundef %8, i32 noundef 0, ptr noundef nonnull @.str.73) #17
  %pd = getelementptr inbounds %struct.mlx4_ib_xrcd, ptr %ibxrcd, i32 0, i32 2
  %9 = ptrtoint ptr %pd to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %pd, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end7.err2_crit_edge, label %if.end15

if.end7.err2_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #19
  br label %err2

if.end15:                                         ; preds = %if.end7
  %10 = ptrtoint ptr %cq_attr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %cq_attr, align 4
  %11 = ptrtoint ptr %ibxrcd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ibxrcd, align 4
  %call17 = call ptr @__ib_create_cq(ptr noundef %12, ptr noundef null, ptr noundef null, ptr noundef %ibxrcd, ptr noundef nonnull %cq_attr, ptr noundef nonnull @.str.73) #17
  %cq = getelementptr inbounds %struct.mlx4_ib_xrcd, ptr %ibxrcd, i32 0, i32 3
  %13 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %cq, align 4
  %cmp.i46 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46, label %if.then20, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then20:                                        ; preds = %if.end15
  %14 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pd, align 4
  %call.i = call i32 @ib_dealloc_pd_user(ptr noundef %15, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then20.err2_crit_edge, label %land.rhs.i

if.then20.err2_crit_edge:                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #19
  br label %err2

land.rhs.i:                                       ; preds = %if.then20
  %.b38.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.err2_crit_edge, label %if.then.i, !prof !298

land.rhs.i.err2_crit_edge:                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err2

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.75) #17
  br label %err2

err2:                                             ; preds = %if.then.i, %land.rhs.i.err2_crit_edge, %if.then20.err2_crit_edge, %if.end7.err2_crit_edge
  %err.0.in = phi ptr [ %call17, %if.then20.err2_crit_edge ], [ %call17, %land.rhs.i.err2_crit_edge ], [ %call17, %if.then.i ], [ %call9, %if.end7.err2_crit_edge ]
  %err.0 = ptrtoint ptr %err.0.in to i32
  %16 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2, align 8
  %18 = ptrtoint ptr %xrcdn to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %xrcdn, align 4
  call void @mlx4_xrcd_free(ptr noundef %17, i32 noundef %19) #17
  br label %cleanup

cleanup:                                          ; preds = %err2, %if.end15.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %err2 ], [ -95, %entry.cleanup_crit_edge ], [ %call4, %if.end.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cq_attr) #17
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_dealloc_xrcd(ptr nocapture noundef readonly %xrcd, ptr nocapture noundef readnone %udata) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cq = getelementptr inbounds %struct.mlx4_ib_xrcd, ptr %xrcd, i32 0, i32 3
  %0 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cq, align 4
  %call.i = tail call i32 @ib_destroy_cq_user(ptr noundef %1, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %entry.ib_destroy_cq.exit_crit_edge, label %land.rhs.i

entry.ib_destroy_cq.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %ib_destroy_cq.exit

land.rhs.i:                                       ; preds = %entry
  %.b38.i = load i1, ptr @ib_destroy_cq.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.ib_destroy_cq.exit_crit_edge, label %if.then.i, !prof !298

land.rhs.i.ib_destroy_cq.exit_crit_edge:          ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %ib_destroy_cq.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ib_destroy_cq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 3936, i32 noundef 9, ptr noundef nonnull @.str.76) #17
  br label %ib_destroy_cq.exit

ib_destroy_cq.exit:                               ; preds = %if.then.i, %land.rhs.i.ib_destroy_cq.exit_crit_edge, %entry.ib_destroy_cq.exit_crit_edge
  %pd = getelementptr inbounds %struct.mlx4_ib_xrcd, ptr %xrcd, i32 0, i32 2
  %2 = ptrtoint ptr %pd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pd, align 4
  %call.i7 = tail call i32 @ib_dealloc_pd_user(ptr noundef %3, ptr noundef null) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7)
  %tobool.not.i8 = icmp eq i32 %call.i7, 0
  br i1 %tobool.not.i8, label %ib_destroy_cq.exit.ib_dealloc_pd.exit_crit_edge, label %land.rhs.i10

ib_destroy_cq.exit.ib_dealloc_pd.exit_crit_edge:  ; preds = %ib_destroy_cq.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %ib_dealloc_pd.exit

land.rhs.i10:                                     ; preds = %ib_destroy_cq.exit
  %.b38.i9 = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i9, label %land.rhs.i10.ib_dealloc_pd.exit_crit_edge, label %if.then.i11, !prof !298

land.rhs.i10.ib_dealloc_pd.exit_crit_edge:        ; preds = %land.rhs.i10
  call void @__sanitizer_cov_trace_pc() #19
  br label %ib_dealloc_pd.exit

if.then.i11:                                      ; preds = %land.rhs.i10
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.74, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.75) #17
  br label %ib_dealloc_pd.exit

ib_dealloc_pd.exit:                               ; preds = %if.then.i11, %land.rhs.i10.ib_dealloc_pd.exit_crit_edge, %ib_destroy_cq.exit.ib_dealloc_pd.exit_crit_edge
  %4 = ptrtoint ptr %xrcd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %xrcd, align 4
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %xrcdn = getelementptr inbounds %struct.mlx4_ib_xrcd, ptr %xrcd, i32 0, i32 1
  %8 = ptrtoint ptr %xrcdn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xrcdn, align 4
  tail call void @mlx4_xrcd_free(ptr noundef %7, i32 noundef %9) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_xrcd_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_pd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_create_cq(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_xrcd_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_pd_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_cq_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx4_ib_create_flow(ptr nocapture noundef readonly %qp, ptr noundef %flow_attr, ptr noundef readonly %udata) #0 align 64 {
entry:
  %type = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %type) #17
  %0 = getelementptr inbounds [2 x i32], ptr %type, i32 0, i32 1
  %1 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %qp, align 4
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 8
  %flags.i = getelementptr inbounds %struct.mlx4_dev, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %flags = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %and5 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %9 = ptrtoint ptr %flow_attr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flow_attr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.not = icmp eq i32 %10, 0
  br i1 %cmp.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %tobool11.not = icmp eq ptr %udata, null
  br i1 %tobool11.not, label %if.end10.if.end19_crit_edge, label %land.lhs.true12

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

land.lhs.true12:                                  ; preds = %if.end10
  %inlen = getelementptr inbounds %struct.ib_udata, ptr %udata, i32 0, i32 2
  %11 = ptrtoint ptr %inlen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %inlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool13.not = icmp eq i32 %12, 0
  br i1 %tobool13.not, label %land.lhs.true12.if.end19_crit_edge, label %land.lhs.true14

land.lhs.true12.if.end19_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

land.lhs.true14:                                  ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %12)
  %cmp.i.i = icmp ugt i32 %12, 65535
  br i1 %cmp.i.i, label %land.lhs.true14.cleanup_crit_edge, label %if.end.i.i

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end.i.i:                                       ; preds = %land.lhs.true14
  %13 = ptrtoint ptr %udata to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udata, align 4
  %call.i.i = tail call ptr @memdup_user(ptr noundef %14, i32 noundef %12) #17
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.i.i.cleanup_crit_edge, label %ib_is_udata_cleared.exit

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

ib_is_udata_cleared.exit:                         ; preds = %if.end.i.i
  %call4.i.i = tail call ptr @memchr_inv(ptr noundef %call.i.i, i32 noundef 0, i32 noundef %12) #17
  %tobool.not.i.i = icmp eq ptr %call4.i.i, null
  tail call void @kfree(ptr noundef %call.i.i) #17
  br i1 %tobool.not.i.i, label %ib_is_udata_cleared.exit.if.end19_crit_edge, label %ib_is_udata_cleared.exit.cleanup_crit_edge

ib_is_udata_cleared.exit.cleanup_crit_edge:       ; preds = %ib_is_udata_cleared.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

ib_is_udata_cleared.exit.if.end19_crit_edge:      ; preds = %ib_is_udata_cleared.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.end19:                                         ; preds = %ib_is_udata_cleared.exit.if.end19_crit_edge, %land.lhs.true12.if.end19_crit_edge, %if.end10.if.end19_crit_edge
  %15 = ptrtoint ptr %type to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 0, ptr %type, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 48) #21
  %tobool21.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool21.not, label %if.end19.err_free_crit_edge, label %if.end23

if.end19.err_free_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free

if.end23:                                         ; preds = %if.end19
  %17 = ptrtoint ptr %flow_attr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flow_attr, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %18, label %if.end23.err_free_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb37
    i32 2, label %sw.bb39
    i32 3, label %sw.bb41
  ]

if.end23.err_free_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free

sw.bb:                                            ; preds = %if.end23
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags, align 4
  %and26 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.else, label %if.then30, !prof !298

if.then30:                                        ; preds = %sw.bb
  %call32 = call fastcc i32 @mlx4_ib_add_dont_trap_rule(ptr noundef %4, ptr noundef %flow_attr, ptr noundef nonnull %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %sw.epilog, label %if.then30.err_free_crit_edge

if.then30.err_free_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #19
  %22 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %type, align 8
  br label %sw.epilog.thread

sw.bb37:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  %23 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %type, align 8
  br label %sw.epilog.thread

sw.bb39:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  %24 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %type, align 8
  br label %sw.epilog.thread

sw.bb41:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #19
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4, ptr %type, align 8
  %26 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 5, ptr %0, align 4
  br label %sw.epilog.thread

sw.epilog.thread:                                 ; preds = %sw.bb41, %sw.bb39, %sw.bb37, %if.else
  %.ph = phi i32 [ 2, %sw.bb37 ], [ 3, %sw.bb39 ], [ 4, %sw.bb41 ], [ 1, %if.else ]
  %27 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool53.not205 = icmp eq i32 %27, 0
  %port206 = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 5
  br label %while.body

sw.epilog:                                        ; preds = %if.then30
  %28 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %type, align 8
  %29 = and i32 %6, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool53.not = icmp eq i32 %29, 0
  %port = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool46.not = icmp eq i32 %.pr, 0
  br i1 %tobool46.not, label %sw.epilog.land.lhs.true66.critedge_crit_edge, label %sw.epilog.while.body_crit_edge

sw.epilog.while.body_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body

sw.epilog.land.lhs.true66.critedge_crit_edge:     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true66.critedge

while.body:                                       ; preds = %sw.epilog.while.body_crit_edge, %sw.epilog.thread
  %port210 = phi ptr [ %port206, %sw.epilog.thread ], [ %port, %sw.epilog.while.body_crit_edge ]
  %tobool53.not208 = phi i1 [ %tobool53.not205, %sw.epilog.thread ], [ %tobool53.not, %sw.epilog.while.body_crit_edge ]
  %30 = phi i32 [ %.ph, %sw.epilog.thread ], [ %.pr, %sw.epilog.while.body_crit_edge ]
  %arrayidx48 = getelementptr %struct.mlx4_ib_flow, ptr %call7.i.i, i32 0, i32 1, i32 0
  %call49 = tail call fastcc i32 @__mlx4_ib_create_flow(ptr noundef %qp, ptr noundef %flow_attr, i32 noundef 4096, i32 noundef %30, ptr noundef %arrayidx48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %while.body.err_free_crit_edge

while.body.err_free_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free

if.end52:                                         ; preds = %while.body
  br i1 %tobool53.not208, label %if.end52.if.end63_crit_edge, label %if.then54

if.end52.if.end63_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63

if.then54:                                        ; preds = %if.end52
  %31 = ptrtoint ptr %port210 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %port210, align 4
  %32 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type, align 8
  %mirror = getelementptr %struct.mlx4_ib_flow, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %call58 = tail call fastcc i32 @__mlx4_ib_create_flow(ptr noundef %qp, ptr noundef %flow_attr, i32 noundef 4096, i32 noundef %33, ptr noundef %mirror)
  %34 = ptrtoint ptr %port210 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %port210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool60.not = icmp eq i32 %call58, 0
  br i1 %tobool60.not, label %if.then54.if.end63_crit_edge, label %if.then54.err_free_crit_edge

if.then54.err_free_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free

if.then54.if.end63_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end63

if.end63:                                         ; preds = %if.then54.if.end63_crit_edge, %if.end52.if.end63_crit_edge
  %j.1 = phi i32 [ 0, %if.end52.if.end63_crit_edge ], [ 1, %if.then54.if.end63_crit_edge ]
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool46.not.1 = icmp eq i32 %36, 0
  br i1 %tobool46.not.1, label %if.end63.land.lhs.true66.critedge_crit_edge, label %while.body.1

if.end63.land.lhs.true66.critedge_crit_edge:      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true66.critedge

while.body.1:                                     ; preds = %if.end63
  %arrayidx48.1 = getelementptr %struct.mlx4_ib_flow, ptr %call7.i.i, i32 0, i32 1, i32 1
  %call49.1 = tail call fastcc i32 @__mlx4_ib_create_flow(ptr noundef %qp, ptr noundef %flow_attr, i32 noundef 4096, i32 noundef %36, ptr noundef %arrayidx48.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.1)
  %tobool50.not.1 = icmp eq i32 %call49.1, 0
  br i1 %tobool50.not.1, label %if.end52.1, label %while.body.1.while.body94.preheader_crit_edge

while.body.1.while.body94.preheader_crit_edge:    ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body94.preheader

if.end52.1:                                       ; preds = %while.body.1
  br i1 %tobool53.not208, label %if.end52.1.cleanup_crit_edge, label %if.then54.1

if.end52.1.cleanup_crit_edge:                     ; preds = %if.end52.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then54.1:                                      ; preds = %if.end52.1
  %37 = ptrtoint ptr %port210 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %port210, align 4
  %arrayidx55.1 = getelementptr [2 x i32], ptr %type, i32 0, i32 %j.1
  %38 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx55.1, align 4
  %mirror.1 = getelementptr %struct.mlx4_ib_flow, ptr %call7.i.i, i32 0, i32 1, i32 %j.1, i32 1
  %call58.1 = tail call fastcc i32 @__mlx4_ib_create_flow(ptr noundef %qp, ptr noundef %flow_attr, i32 noundef 4096, i32 noundef %39, ptr noundef %mirror.1)
  %40 = ptrtoint ptr %port210 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %port210, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58.1)
  %tobool60.not.1 = icmp eq i32 %call58.1, 0
  br i1 %tobool60.not.1, label %if.then54.1.cleanup_crit_edge, label %if.then54.1.while.body94.preheader_crit_edge

if.then54.1.while.body94.preheader_crit_edge:     ; preds = %if.then54.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body94.preheader

if.then54.1.cleanup_crit_edge:                    ; preds = %if.then54.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.lhs.true66.critedge:                         ; preds = %if.end63.land.lhs.true66.critedge_crit_edge, %sw.epilog.land.lhs.true66.critedge_crit_edge
  %port212 = phi ptr [ %port, %sw.epilog.land.lhs.true66.critedge_crit_edge ], [ %port210, %if.end63.land.lhs.true66.critedge_crit_edge ]
  %tobool53.not209 = phi i1 [ %tobool53.not, %sw.epilog.land.lhs.true66.critedge_crit_edge ], [ %tobool53.not208, %if.end63.land.lhs.true66.critedge_crit_edge ]
  %j.0194.lcssa = phi i32 [ 0, %sw.epilog.land.lhs.true66.critedge_crit_edge ], [ %j.1, %if.end63.land.lhs.true66.critedge_crit_edge ]
  %tobool93.not195 = phi i1 [ true, %sw.epilog.land.lhs.true66.critedge_crit_edge ], [ false, %if.end63.land.lhs.true66.critedge_crit_edge ]
  %i.0192.lcssa = phi i32 [ 0, %sw.epilog.land.lhs.true66.critedge_crit_edge ], [ 1, %if.end63.land.lhs.true66.critedge_crit_edge ]
  %41 = ptrtoint ptr %flow_attr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flow_attr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp68 = icmp eq i32 %42, 0
  br i1 %cmp68, label %if.then69, label %land.lhs.true66.critedge.cleanup_crit_edge

land.lhs.true66.critedge.cleanup_crit_edge:       ; preds = %land.lhs.true66.critedge
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then69:                                        ; preds = %land.lhs.true66.critedge
  %arrayidx71 = getelementptr %struct.mlx4_ib_flow, ptr %call7.i.i, i32 0, i32 1, i32 %i.0192.lcssa
  %call73 = tail call fastcc i32 @mlx4_ib_tunnel_steer_add(ptr noundef %qp, ptr noundef %flow_attr, ptr noundef %arrayidx71)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end76, label %if.then69.err_create_flow_crit_edge

if.then69.err_create_flow_crit_edge:              ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_create_flow

if.end76:                                         ; preds = %if.then69
  br i1 %tobool53.not209, label %if.end76.cleanup_crit_edge, label %if.then78

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then78:                                        ; preds = %if.end76
  %43 = ptrtoint ptr %port212 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %port212, align 4
  %mirror82 = getelementptr %struct.mlx4_ib_flow, ptr %call7.i.i, i32 0, i32 1, i32 %j.0194.lcssa, i32 1
  %call83 = tail call fastcc i32 @mlx4_ib_tunnel_steer_add(ptr noundef %qp, ptr noundef %flow_attr, ptr noundef %mirror82)
  %44 = ptrtoint ptr %port212 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %port212, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool85.not = icmp eq i32 %call83, 0
  br i1 %tobool85.not, label %if.then78.cleanup_crit_edge, label %if.then78.err_create_flow_crit_edge

if.then78.err_create_flow_crit_edge:              ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_create_flow

if.then78.cleanup_crit_edge:                      ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

err_create_flow:                                  ; preds = %if.then78.err_create_flow_crit_edge, %if.then69.err_create_flow_crit_edge
  %err.0 = phi i32 [ %call73, %if.then69.err_create_flow_crit_edge ], [ %call83, %if.then78.err_create_flow_crit_edge ]
  br i1 %tobool93.not195, label %err_create_flow.while.cond103.preheader_crit_edge, label %err_create_flow.while.body94.preheader_crit_edge

err_create_flow.while.body94.preheader_crit_edge: ; preds = %err_create_flow
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body94.preheader

err_create_flow.while.cond103.preheader_crit_edge: ; preds = %err_create_flow
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond103.preheader

while.body94.preheader:                           ; preds = %err_create_flow.while.body94.preheader_crit_edge, %if.then54.1.while.body94.preheader_crit_edge, %while.body.1.while.body94.preheader_crit_edge
  %err.0228 = phi i32 [ %err.0, %err_create_flow.while.body94.preheader_crit_edge ], [ %call58.1, %if.then54.1.while.body94.preheader_crit_edge ], [ %call49.1, %while.body.1.while.body94.preheader_crit_edge ]
  %j.0194204226 = phi i32 [ %j.0194.lcssa, %err_create_flow.while.body94.preheader_crit_edge ], [ %j.1, %if.then54.1.while.body94.preheader_crit_edge ], [ %j.1, %while.body.1.while.body94.preheader_crit_edge ]
  %45 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %qp, align 4
  %dev97 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %dev97 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev97, align 8
  %arrayidx99 = getelementptr %struct.mlx4_ib_flow, ptr %call7.i.i, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx99, align 8
  %call.i.i179 = tail call i32 @__mlx4_cmd(ptr noundef %48, i64 noundef %50, ptr noundef null, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 102, i32 noundef 60000, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i179)
  %tobool.not.i = icmp eq i32 %call.i.i179, 0
  br i1 %tobool.not.i, label %while.body94.preheader.while.cond103.preheader_crit_edge, label %do.end.i

while.body94.preheader.while.cond103.preheader_crit_edge: ; preds = %while.body94.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.cond103.preheader

while.cond103.preheader:                          ; preds = %do.end.i, %while.body94.preheader.while.cond103.preheader_crit_edge, %err_create_flow.while.cond103.preheader_crit_edge
  %err.0218 = phi i32 [ %err.0, %err_create_flow.while.cond103.preheader_crit_edge ], [ %err.0228, %while.body94.preheader.while.cond103.preheader_crit_edge ], [ %err.0228, %do.end.i ]
  %j.0194204217 = phi i32 [ %j.0194.lcssa, %err_create_flow.while.cond103.preheader_crit_edge ], [ %j.0194204226, %while.body94.preheader.while.cond103.preheader_crit_edge ], [ %j.0194204226, %do.end.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.0194204217)
  %tobool104.not197 = icmp eq i32 %j.0194204217, 0
  br i1 %tobool104.not197, label %while.cond103.preheader.err_free_crit_edge, label %while.body105.preheader

while.cond103.preheader.err_free_crit_edge:       ; preds = %while.cond103.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free

while.body105.preheader:                          ; preds = %while.cond103.preheader
  %51 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %qp, align 4
  %dev108 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %dev108 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev108, align 8
  %mirror111 = getelementptr %struct.mlx4_ib_flow, ptr %call7.i.i, i32 0, i32 1, i32 %j.0194204217, i32 1
  %55 = ptrtoint ptr %mirror111 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %mirror111, align 8
  %call.i.i180 = tail call i32 @__mlx4_cmd(ptr noundef %54, i64 noundef %56, ptr noundef null, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 102, i32 noundef 60000, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i180)
  %tobool.not.i181 = icmp eq i32 %call.i.i180, 0
  br i1 %tobool.not.i181, label %while.body105.preheader.err_free_crit_edge, label %do.end.i183

while.body105.preheader.err_free_crit_edge:       ; preds = %while.body105.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_free

do.end.i:                                         ; preds = %while.body94.preheader
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i64 noundef %50) #22
  br label %while.cond103.preheader

do.end.i183:                                      ; preds = %while.body105.preheader
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i182 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i64 noundef %56) #22
  br label %err_free

err_free:                                         ; preds = %do.end.i183, %while.body105.preheader.err_free_crit_edge, %while.cond103.preheader.err_free_crit_edge, %if.then54.err_free_crit_edge, %while.body.err_free_crit_edge, %if.then30.err_free_crit_edge, %if.end23.err_free_crit_edge, %if.end19.err_free_crit_edge
  %err.1 = phi i32 [ %call32, %if.then30.err_free_crit_edge ], [ -12, %if.end19.err_free_crit_edge ], [ -22, %if.end23.err_free_crit_edge ], [ %err.0218, %while.cond103.preheader.err_free_crit_edge ], [ %err.0218, %while.body105.preheader.err_free_crit_edge ], [ %err.0218, %do.end.i183 ], [ %call58, %if.then54.err_free_crit_edge ], [ %call49, %while.body.err_free_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i) #17
  %57 = inttoptr i32 %err.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %err_free, %if.then78.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %land.lhs.true66.critedge.cleanup_crit_edge, %if.then54.1.cleanup_crit_edge, %if.end52.1.cleanup_crit_edge, %ib_is_udata_cleared.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %land.lhs.true14.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %57, %err_free ], [ %call7.i.i, %if.end76.cleanup_crit_edge ], [ %call7.i.i, %if.then78.cleanup_crit_edge ], [ %call7.i.i, %land.lhs.true66.critedge.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %land.lhs.true.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %ib_is_udata_cleared.exit.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %land.lhs.true14.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end.i.i.cleanup_crit_edge ], [ %call7.i.i, %if.then54.1.cleanup_crit_edge ], [ %call7.i.i, %if.end52.1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %type) #17
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_destroy_flow(ptr noundef %flow_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %flow_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %flow_id, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.mlx4_ib_dev, ptr %3, i32 0, i32 1
  %arrayidx = getelementptr %struct.mlx4_ib_flow, ptr %flow_id, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %tobool.not = icmp eq i64 %5, 0
  br i1 %tobool.not, label %entry.while.end_crit_edge, label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body:                                       ; preds = %entry
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %call.i.i = tail call i32 @__mlx4_cmd(ptr noundef %7, i64 noundef %5, ptr noundef null, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 102, i32 noundef 60000, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %while.body.__mlx4_ib_destroy_flow.exit_crit_edge, label %do.end.i

while.body.__mlx4_ib_destroy_flow.exit_crit_edge: ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %__mlx4_ib_destroy_flow.exit

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i64 noundef %5) #22
  br label %__mlx4_ib_destroy_flow.exit

__mlx4_ib_destroy_flow.exit:                      ; preds = %do.end.i, %while.body.__mlx4_ib_destroy_flow.exit_crit_edge
  %mirror = getelementptr %struct.mlx4_ib_flow, ptr %flow_id, i32 0, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %mirror to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %mirror, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %9)
  %tobool9.not = icmp eq i64 %9, 0
  br i1 %tobool9.not, label %__mlx4_ib_destroy_flow.exit.if.end19_crit_edge, label %if.then10

__mlx4_ib_destroy_flow.exit.if.end19_crit_edge:   ; preds = %__mlx4_ib_destroy_flow.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

if.then10:                                        ; preds = %__mlx4_ib_destroy_flow.exit
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 8
  %call.i.i36 = tail call i32 @__mlx4_cmd(ptr noundef %11, i64 noundef %9, ptr noundef null, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 102, i32 noundef 60000, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36)
  %tobool.not.i37 = icmp eq i32 %call.i.i36, 0
  br i1 %tobool.not.i37, label %if.then10.if.end19_crit_edge, label %do.end.i39

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end19

do.end.i39:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i64 noundef %9) #22
  br label %if.end19

if.end19:                                         ; preds = %do.end.i39, %if.then10.if.end19_crit_edge, %__mlx4_ib_destroy_flow.exit.if.end19_crit_edge
  %ret.2 = phi i32 [ %call.i.i, %__mlx4_ib_destroy_flow.exit.if.end19_crit_edge ], [ %call.i.i, %if.then10.if.end19_crit_edge ], [ %call.i.i36, %do.end.i39 ]
  %arrayidx.1 = getelementptr %struct.mlx4_ib_flow, ptr %flow_id, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %13)
  %tobool.not.1 = icmp eq i64 %13, 0
  br i1 %tobool.not.1, label %if.end19.while.end_crit_edge, label %while.body.1

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

while.body.1:                                     ; preds = %if.end19
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 8
  %call.i.i.1 = tail call i32 @__mlx4_cmd(ptr noundef %15, i64 noundef %13, ptr noundef null, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 102, i32 noundef 60000, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.1)
  %tobool.not.i.1 = icmp eq i32 %call.i.i.1, 0
  br i1 %tobool.not.i.1, label %while.body.1.__mlx4_ib_destroy_flow.exit.1_crit_edge, label %do.end.i.1

while.body.1.__mlx4_ib_destroy_flow.exit.1_crit_edge: ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %__mlx4_ib_destroy_flow.exit.1

do.end.i.1:                                       ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i64 noundef %13) #22
  br label %__mlx4_ib_destroy_flow.exit.1

__mlx4_ib_destroy_flow.exit.1:                    ; preds = %do.end.i.1, %while.body.1.__mlx4_ib_destroy_flow.exit.1_crit_edge
  %spec.select.1 = phi i32 [ %ret.2, %while.body.1.__mlx4_ib_destroy_flow.exit.1_crit_edge ], [ %call.i.i.1, %do.end.i.1 ]
  %mirror.1 = getelementptr %struct.mlx4_ib_flow, ptr %flow_id, i32 0, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %mirror.1 to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %mirror.1, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %17)
  %tobool9.not.1 = icmp eq i64 %17, 0
  br i1 %tobool9.not.1, label %__mlx4_ib_destroy_flow.exit.1.while.end_crit_edge, label %if.then10.1

__mlx4_ib_destroy_flow.exit.1.while.end_crit_edge: ; preds = %__mlx4_ib_destroy_flow.exit.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

if.then10.1:                                      ; preds = %__mlx4_ib_destroy_flow.exit.1
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 8
  %call.i.i36.1 = tail call i32 @__mlx4_cmd(ptr noundef %19, i64 noundef %17, ptr noundef null, i32 noundef 0, i32 noundef 0, i8 noundef zeroext 0, i16 noundef zeroext 102, i32 noundef 60000, i32 noundef 1) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i36.1)
  %tobool.not.i37.1 = icmp eq i32 %call.i.i36.1, 0
  br i1 %tobool.not.i37.1, label %if.then10.1.while.end_crit_edge, label %do.end.i39.1

if.then10.1.while.end_crit_edge:                  ; preds = %if.then10.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.end

do.end.i39.1:                                     ; preds = %if.then10.1
  call void @__sanitizer_cov_trace_pc() #19
  %call1.i38.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23, i64 noundef %17) #22
  br label %while.end

while.end:                                        ; preds = %do.end.i39.1, %if.then10.1.while.end_crit_edge, %__mlx4_ib_destroy_flow.exit.1.while.end_crit_edge, %if.end19.while.end_crit_edge, %entry.while.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %ret.2, %if.end19.while.end_crit_edge ], [ %spec.select.1, %__mlx4_ib_destroy_flow.exit.1.while.end_crit_edge ], [ %spec.select.1, %if.then10.1.while.end_crit_edge ], [ %call.i.i36.1, %do.end.i39.1 ]
  tail call void @kfree(ptr noundef %flow_id) #17
  ret i32 %ret.0.lcssa
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @mlx4_ib_add_dont_trap_rule(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %flow_attr, ptr nocapture noundef writeonly %type) unnamed_addr #15 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %flags2 = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 61
  %0 = ptrtoint ptr %flags2 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %flags2, align 8
  %and = and i64 %1, 17179869184
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool.not = icmp eq i64 %and, 0
  br i1 %tobool.not, label %entry.cleanup65_crit_edge, label %lor.lhs.false

entry.cleanup65_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup65

lor.lhs.false:                                    ; preds = %entry
  %dmfs_high_steer_mode = getelementptr inbounds %struct.mlx4_dev, ptr %dev, i32 0, i32 3, i32 51
  %2 = ptrtoint ptr %dmfs_high_steer_mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dmfs_high_steer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %lor.lhs.false.cleanup65_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup65_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup65

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %num_of_specs = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 4
  %4 = ptrtoint ptr %num_of_specs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_of_specs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp3 = icmp ugt i8 %5, 1
  br i1 %cmp3, label %lor.lhs.false2.cleanup65_crit_edge, label %lor.lhs.false5

lor.lhs.false2.cleanup65_crit_edge:               ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup65

lor.lhs.false5:                                   ; preds = %lor.lhs.false2
  %priority = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 2
  %6 = ptrtoint ptr %priority to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %priority, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %cmp7.not = icmp eq i16 %7, 0
  br i1 %cmp7.not, label %if.end, label %lor.lhs.false5.cleanup65_crit_edge

lor.lhs.false5.cleanup65_crit_edge:               ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup65

if.end:                                           ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp11 = icmp eq i8 %5, 0
  br i1 %cmp11, label %if.then13, label %if.else

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %8 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 7, ptr %type, align 4
  %arrayidx14 = getelementptr i32, ptr %type, i32 1
  %9 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 6, ptr %arrayidx14, align 4
  br label %cleanup65

if.else:                                          ; preds = %if.end
  %add.ptr = getelementptr %struct.ib_flow_attr, ptr %flow_attr, i32 1
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %11)
  %cmp16.not = icmp eq i32 %11, 32
  br i1 %cmp16.not, label %if.end19, label %if.else.cleanup65_crit_edge

if.else.cleanup65_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup65

if.end19:                                         ; preds = %if.else
  %mask = getelementptr inbounds %struct.ib_flow_spec_eth, ptr %add.ptr, i32 0, i32 3
  %12 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mask, align 4
  %add.ptr.i = getelementptr i8, ptr %mask, i32 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i, align 2
  %conv.i = zext i16 %15 to i32
  %or.i = or i32 %13, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp eq i32 %or.i, 0
  br i1 %cmp.i, label %if.then20, label %if.else23

if.then20:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 7, ptr %type, align 4
  %arrayidx22 = getelementptr i32, ptr %type, i32 1
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %arrayidx22, align 4
  br label %cleanup65

if.else23:                                        ; preds = %if.end19
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mask, align 2
  %20 = xor i8 %19, 1
  %arrayidx31 = getelementptr [6 x i8], ptr %mask, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx31, align 1
  %arrayidx35 = getelementptr [6 x i8], ptr %mask, i32 0, i32 2
  %23 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx35, align 2
  %arrayidx39 = getelementptr [6 x i8], ptr %mask, i32 0, i32 3
  %25 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx39, align 1
  %27 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %add.ptr.i, align 2
  %mac.sroa.12.4.insert.ext = zext i8 %28 to i32
  %mac.sroa.12.4.insert.shift = shl nuw nsw i32 %mac.sroa.12.4.insert.ext, 8
  %arrayidx47 = getelementptr [6 x i8], ptr %mask, i32 0, i32 5
  %29 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx47, align 1
  %mac.sroa.12.5.insert.ext = zext i8 %30 to i32
  %mac.sroa.12.5.insert.insert95 = or i32 %mac.sroa.12.4.insert.shift, %mac.sroa.12.5.insert.ext
  %mac.sroa.0.sroa.10.0.insert.ext = zext i8 %26 to i32
  %mac.sroa.0.sroa.8.0.insert.ext = zext i8 %24 to i32
  %mac.sroa.0.sroa.8.0.insert.shift = shl nuw nsw i32 %mac.sroa.0.sroa.8.0.insert.ext, 8
  %mac.sroa.0.sroa.6.0.insert.ext = zext i8 %22 to i32
  %mac.sroa.0.sroa.6.0.insert.shift = shl nuw nsw i32 %mac.sroa.0.sroa.6.0.insert.ext, 16
  %mac.sroa.0.sroa.8.0.insert.insert = or i32 %mac.sroa.0.sroa.6.0.insert.shift, %mac.sroa.0.sroa.10.0.insert.ext
  %mac.sroa.0.sroa.6.0.insert.insert = or i32 %mac.sroa.0.sroa.8.0.insert.insert, %mac.sroa.0.sroa.8.0.insert.shift
  %mac.sroa.0.sroa.0.0.insert.ext = zext i8 %20 to i32
  %mac.sroa.0.sroa.0.0.insert.shift = shl nuw i32 %mac.sroa.0.sroa.0.0.insert.ext, 24
  %mac.sroa.0.sroa.0.0.insert.insert = or i32 %mac.sroa.0.sroa.6.0.insert.insert, %mac.sroa.0.sroa.0.0.insert.shift
  %or.i88 = or i32 %mac.sroa.12.5.insert.insert95, %mac.sroa.0.sroa.0.0.insert.insert
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i88)
  %cmp.i89 = icmp eq i32 %or.i88, 0
  br i1 %cmp.i89, label %if.end51, label %if.else23.cleanup65_crit_edge

if.else23.cleanup65_crit_edge:                    ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup65

if.end51:                                         ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #19
  %val = getelementptr %struct.ib_flow_attr, ptr %flow_attr, i32 1, i32 2
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  %33 = and i32 %32, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.not = icmp eq i32 %33, 0
  %. = select i1 %tobool.i.not, i32 6, i32 7
  %34 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %., ptr %type, align 4
  br label %cleanup65

cleanup65:                                        ; preds = %if.end51, %if.else23.cleanup65_crit_edge, %if.then20, %if.else.cleanup65_crit_edge, %if.then13, %lor.lhs.false5.cleanup65_crit_edge, %lor.lhs.false2.cleanup65_crit_edge, %lor.lhs.false.cleanup65_crit_edge, %entry.cleanup65_crit_edge
  %retval.3 = phi i32 [ -95, %lor.lhs.false5.cleanup65_crit_edge ], [ -95, %lor.lhs.false2.cleanup65_crit_edge ], [ -95, %lor.lhs.false.cleanup65_crit_edge ], [ -95, %entry.cleanup65_crit_edge ], [ 0, %if.end51 ], [ 0, %if.then20 ], [ 0, %if.then13 ], [ -22, %if.else.cleanup65_crit_edge ], [ -22, %if.else23.cleanup65_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mlx4_ib_tunnel_steer_add(ptr nocapture noundef readonly %qp, ptr noundef %flow_attr, ptr noundef %reg_id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qp, align 4
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 8
  %tunnel_offload_mode = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 3, i32 89
  %4 = ptrtoint ptr %tunnel_offload_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tunnel_offload_mode, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dmfs_high_steer_mode = getelementptr inbounds %struct.mlx4_dev, ptr %3, i32 0, i32 3, i32 51
  %6 = ptrtoint ptr %dmfs_high_steer_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dmfs_high_steer_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp3 = icmp eq i32 %7, 2
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr = getelementptr %struct.ib_flow_attr, ptr %flow_attr, i32 1
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %9)
  %cmp4.not = icmp eq i32 %9, 32
  br i1 %cmp4.not, label %lor.lhs.false5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false5:                                   ; preds = %if.end
  %num_of_specs = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 4
  %10 = ptrtoint ptr %num_of_specs to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %num_of_specs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %11)
  %cmp6.not = icmp eq i8 %11, 1
  br i1 %cmp6.not, label %if.end9, label %lor.lhs.false5.cleanup_crit_edge

lor.lhs.false5.cleanup_crit_edge:                 ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #19
  %val = getelementptr %struct.ib_flow_attr, ptr %flow_attr, i32 1, i32 2
  %port = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 5
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %qp_num = getelementptr inbounds %struct.ib_qp, ptr %qp, i32 0, i32 19
  %14 = ptrtoint ptr %qp_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qp_num, align 4
  %priority = getelementptr inbounds %struct.ib_flow_attr, ptr %flow_attr, i32 0, i32 2
  %16 = ptrtoint ptr %priority to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %priority, align 2
  %18 = and i16 %17, 255
  %19 = or i16 %18, 4096
  %call15 = tail call i32 @mlx4_tunnel_steer_add(ptr noundef %3, ptr noundef %val, i32 noundef %13, i32 noundef %15, i16 noundef zeroext %19, ptr noundef %reg_id) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %lor.lhs.false5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end9 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false5.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_tunnel_steer_add(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_eqs_per_port(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_is_eq_shared(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_assign_eq(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx4_ib_alloc_hw_device_stats(ptr nocapture noundef readonly %ibdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %diag_counters = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 31
  %0 = ptrtoint ptr %diag_counters to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %diag_counters, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %num_counters = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 31, i32 0, i32 2
  %2 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_counters, align 4
  %call4 = tail call ptr @rdma_alloc_hw_stats_struct(ptr noundef nonnull %1, i32 noundef %3, i32 noundef 10) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mlx4_ib_get_hw_stats(ptr nocapture noundef readonly %ibdev, ptr nocapture noundef writeonly %stats, i32 noundef %port, i32 noundef %index) #0 align 64 {
entry:
  %hw_value = alloca [25 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %diag_counters = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 31
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %hw_value) #17
  %0 = call ptr @memset(ptr %hw_value, i32 0, i32 100)
  %dev1 = getelementptr inbounds %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 1
  %1 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %tobool = icmp ne i32 %port, 0
  %lnot.ext = zext i1 %tobool to i32
  %offset = getelementptr %struct.mlx4_ib_diag_counters, ptr %diag_counters, i32 %lnot.ext, i32 1
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %offset, align 4
  %num_counters = getelementptr %struct.mlx4_ib_diag_counters, ptr %diag_counters, i32 %lnot.ext, i32 2
  %5 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_counters, align 4
  %conv = trunc i32 %port to i8
  %call10 = call i32 @mlx4_query_diag_counters(ptr noundef %2, i8 noundef zeroext 2, ptr noundef %4, ptr noundef nonnull %hw_value, i32 noundef %6, i8 noundef zeroext %conv) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %7 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %num_counters, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp46.not = icmp eq i32 %8, 0
  br i1 %cmp46.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.047 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx20 = getelementptr [25 x i32], ptr %hw_value, i32 0, i32 %i.047
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx20, align 4
  %conv21 = zext i32 %10 to i64
  %arrayidx22 = getelementptr %struct.rdma_hw_stats, ptr %stats, i32 0, i32 6, i32 %i.047
  %11 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv21, ptr %arrayidx22, align 8
  %inc = add nuw i32 %i.047, 1
  %12 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_counters, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %13, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %hw_value) #17
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_alloc_hw_stats_struct(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_query_diag_counters(ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mlx4_ib_alloc_hw_port_stats(ptr nocapture noundef readonly %ibdev, i32 noundef %port_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 31, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %num_counters = getelementptr %struct.mlx4_ib_dev, ptr %ibdev, i32 0, i32 31, i32 1, i32 2
  %2 = ptrtoint ptr %num_counters to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_counters, align 4
  %call4 = tail call ptr @rdma_alloc_hw_stats_struct(ptr noundef nonnull %1, i32 noundef %3, i32 noundef 10) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_get_cached_port_state(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_dispatch_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_register_mac(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_update_qp(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_unregister_mac(ptr noundef, i8 noundef zeroext, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_sync_pkey_table(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_get_active_ports(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_tunnels_update_work(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_release_eq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devlink_port_type_clear(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_CLOSE_PORT(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_bonded_port_state_event(ptr noundef %work) #0 align 64 {
entry:
  %ibev = alloca %struct.ib_event, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %ib_dev = getelementptr inbounds %struct.ib_event_work, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %ib_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ib_dev, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ibev) #17
  tail call void @kfree(ptr noundef %work) #17
  %iboe = getelementptr inbounds %struct.mlx4_ib_dev, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock_bh(ptr noundef %iboe) #17
  %arrayidx = getelementptr %struct.mlx4_ib_dev, ptr %1, i32 0, i32 14, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end.cleanup_crit_edge, label %land.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

land.end:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %state.i, align 4
  %8 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i = icmp eq i32 %8, 0
  %spec.select = select i1 %tobool.not.i, i32 4, i32 1
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %bonded_port_state.1 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %spec.select, %land.end ], [ 1, %if.end.cleanup_crit_edge ]
  %arrayidx.1 = getelementptr %struct.mlx4_ib_dev, ptr %1, i32 0, i32 14, i32 1, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %10, null
  br i1 %tobool.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.1

if.end.1:                                         ; preds = %cleanup
  %state.i.1 = getelementptr inbounds %struct.net_device, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %state.i.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %state.i.1, align 4
  %and1.i.i.1 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.1)
  %tobool.i.not.1 = icmp eq i32 %and1.i.i.1, 0
  br i1 %tobool.i.not.1, label %if.end.1.land.end.thread.1_crit_edge, label %land.end.1

if.end.1.land.end.thread.1_crit_edge:             ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.end.thread.1

land.end.1:                                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #19
  %13 = ptrtoint ptr %state.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %state.i.1, align 4
  %15 = and i32 %14, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.1 = icmp eq i32 %15, 0
  %spec.select.1 = select i1 %tobool.not.i.1, i32 4, i32 1
  br label %land.end.thread.1

land.end.thread.1:                                ; preds = %land.end.1, %if.end.1.land.end.thread.1_crit_edge
  %16 = phi i32 [ %spec.select.1, %land.end.1 ], [ 1, %if.end.1.land.end.thread.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bonded_port_state.1)
  %cmp3.not22.1 = icmp eq i32 %bonded_port_state.1, 4
  %cond4.1 = select i1 %cmp3.not22.1, i32 4, i32 %16
  br label %cleanup.1

cleanup.1:                                        ; preds = %land.end.thread.1, %cleanup.cleanup.1_crit_edge
  %bonded_port_state.1.1 = phi i32 [ %cond4.1, %land.end.thread.1 ], [ %bonded_port_state.1, %cleanup.cleanup.1_crit_edge ]
  %17 = getelementptr inbounds %struct.ib_event, ptr %ibev, i32 0, i32 2
  %18 = getelementptr inbounds %struct.ib_event, ptr %ibev, i32 0, i32 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %iboe) #17
  %19 = ptrtoint ptr %ibev to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %1, ptr %ibev, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %bonded_port_state.1.1)
  %cmp9 = icmp eq i32 %bonded_port_state.1.1, 4
  %cond10 = select i1 %cmp9, i32 9, i32 10
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cond10, ptr %17, align 4
  call void @ib_dispatch_event(ptr noundef nonnull %ibev) #17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ibev) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_invalidate_all_guid_record(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_port_mgmt_change_event(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mlx4_ib_slave_alias_guid_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_ib_mcg_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mlx4_register_interface(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 134)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #15 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #16 = { argmemonly nofree nounwind readonly willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nobuiltin }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { cold nounwind }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { nounwind readnone }
attributes #25 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !25, !26, !28, !30, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !62, !64, !66, !67, !68, !69, !71, !73, !74, !75, !76, !77, !79, !80, !81, !82, !83, !85, !86, !88, !89, !91, !92, !94, !95, !97, !98, !99, !101, !102, !104, !105, !107, !108, !110, !112, !113, !114, !116, !118, !120, !122, !124, !125, !127, !129, !130, !132, !134, !135, !137, !139, !140, !142, !144, !146, !148, !149, !150, !152, !153, !155, !156, !158, !159, !160, !161, !163, !164, !165, !166, !168, !169, !170, !172, !174, !176, !178, !180, !181, !182, !184, !185, !187, !188, !189, !190, !192, !194, !195, !196, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !260, !262, !263, !265, !266, !267, !269, !271, !273, !274, !275, !276, !278, !279}
!llvm.named.register.sp = !{!280}
!llvm.module.flags = !{!281, !282, !283, !284, !285, !286, !287, !288}
!llvm.ident = !{!289}

!0 = !{ptr @__UNIQUE_ID_author528, !1, !"__UNIQUE_ID_author528", i1 false, i1 false}
!1 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 70, i32 1}
!2 = !{ptr @__UNIQUE_ID_description529, !3, !"__UNIQUE_ID_description529", i1 false, i1 false}
!3 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 71, i32 1}
!4 = !{ptr @__UNIQUE_ID_file530, !5, !"__UNIQUE_ID_file530", i1 false, i1 false}
!5 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 72, i32 1}
!6 = !{ptr @__UNIQUE_ID_license531, !5, !"__UNIQUE_ID_license531", i1 false, i1 false}
!7 = !{ptr @mlx4_ib_sm_guid_assign, !8, !"mlx4_ib_sm_guid_assign", i1 false, i1 false}
!8 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 74, i32 5}
!9 = !{ptr @__param_sm_guid_assign, !10, !"__param_sm_guid_assign", i1 false, i1 false}
!10 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 75, i32 1}
!11 = !{ptr @__UNIQUE_ID_sm_guid_assigntype532, !10, !"__UNIQUE_ID_sm_guid_assigntype532", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_sm_guid_assign533, !13, !"__UNIQUE_ID_sm_guid_assign533", i1 false, i1 false}
!13 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 76, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2897, i32 2}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2915, i32 6}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 3151, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @mlx4_ib_sl2vl_update._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @mlx4_ib_sl2vl_update._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @mlx4_sched_ib_sl2vl_update_work.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 3176, i32 3}
!25 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @__initcall__kmod_mlx4_ib__540_3335_mlx4_ib_init6, !27, !"__initcall__kmod_mlx4_ib__540_3335_mlx4_ib_init6", i1 false, i1 false}
!27 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 3335, i32 1}
!28 = !{ptr @__exitcall_mlx4_ib_cleanup, !29, !"__exitcall_mlx4_ib_cleanup", i1 false, i1 false}
!29 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 3336, i32 1}
!30 = !{ptr @wq, !31, !"wq", i1 false, i1 false}
!31 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 86, i32 33}
!32 = !{ptr @__param_str_sm_guid_assign, !10, !"__param_str_sm_guid_assign", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!35 = !{ptr @.str.5, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!37 = distinct !{null, !38, !"__warned", i1 false, i1 false}
!38 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!39 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.8, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 1531, i32 3}
!42 = !{ptr @.str.9, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__mlx4_ib_create_flow._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @__mlx4_ib_create_flow._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 1587, i32 3}
!47 = !{ptr @__mlx4_ib_create_flow._entry.10, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @__mlx4_ib_create_flow._entry_ptr.12, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 1589, i32 3}
!51 = !{ptr @__mlx4_ib_create_flow._entry.13, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @__mlx4_ib_create_flow._entry_ptr.15, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 1591, i32 3}
!55 = !{ptr @__mlx4_ib_create_flow._entry.16, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @__mlx4_ib_create_flow._entry_ptr.18, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 1507, i32 4}
!59 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__mlx4_ib_create_default_rules._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @__mlx4_ib_create_default_rules._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @default_table, !63, !"default_table", i1 false, i1 false}
!63 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 1415, i32 35}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 1604, i32 3}
!66 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @__mlx4_ib_destroy_flow._entry, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @__mlx4_ib_destroy_flow._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @mlx4_ib_interface, !70, !"mlx4_ib_interface", i1 false, i1 false}
!70 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 3294, i32 30}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2630, i32 2}
!73 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mlx4_ib_add._entry, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @mlx4_ib_add._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.27, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2642, i32 3}
!79 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @mlx4_ib_add._entry.26, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @mlx4_ib_add._entry_ptr.30, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @mlx4_ib_add.__key, !84, !"__key", i1 false, i1 false}
!84 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2659, i32 2}
!85 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @mlx4_ib_add.__key.32, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2700, i32 2}
!88 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mlx4_ib_add.__key.34, !90, !"__key", i1 false, i1 false}
!90 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2707, i32 3}
!91 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @mlx4_ib_add.__key.36, !93, !"__key", i1 false, i1 false}
!93 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2714, i32 3}
!94 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2743, i32 3}
!97 = !{ptr @mlx4_ib_add._entry.38, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @mlx4_ib_add._entry_ptr.40, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @mlx4_ib_add.__key.41, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2764, i32 2}
!101 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @mlx4_ib_add.__key.43, !103, !"__key", i1 false, i1 false}
!103 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2765, i32 2}
!104 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @mlx4_ib_add.__key.45, !106, !"__key", i1 false, i1 false}
!106 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2767, i32 2}
!107 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.47, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2805, i32 41}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2851, i32 4}
!112 = !{ptr @mlx4_ib_add._entry.48, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @mlx4_ib_add._entry_ptr.50, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @mlx4_ib_version, !115, !"mlx4_ib_version", i1 false, i1 false}
!115 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 78, i32 19}
!116 = !{ptr @mlx4_ib_dev_ops, !117, !"mlx4_ib_dev_ops", i1 false, i1 false}
!117 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2523, i32 35}
!118 = !{ptr @mlx4_attr_group, !119, !"mlx4_attr_group", i1 false, i1 false}
!119 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2048, i32 37}
!120 = !{ptr @mlx4_class_attributes, !121, !"mlx4_class_attributes", i1 false, i1 false}
!121 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2041, i32 26}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2029, i32 8}
!124 = !{ptr @dev_attr_hw_rev, !123, !"dev_attr_hw_rev", i1 false, i1 false}
!125 = !{ptr @.str.52, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2027, i32 25}
!127 = !{ptr @.str.53, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2019, i32 8}
!129 = !{ptr @dev_attr_hca_type, !128, !"dev_attr_hca_type", i1 false, i1 false}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2017, i32 25}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2039, i32 8}
!134 = !{ptr @dev_attr_board_id, !133, !"dev_attr_board_id", i1 false, i1 false}
!135 = !{ptr @.str.56, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2037, i32 25}
!137 = distinct !{null, !138, !"__already_done", i1 false, i1 false}
!138 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!139 = !{ptr @.str.57, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @.str.58, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!142 = !{ptr @.str.59, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!144 = !{ptr @.str.60, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2517, i32 40}
!146 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!147 = !{!"../include/net/bonding.h", i32 349, i32 24}
!148 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @mlx4_ib_alloc_ucontext.__key, !151, !"__key", i1 false, i1 false}
!151 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 1119, i32 2}
!152 = !{ptr @.str.63, !151, !"<string literal>", i1 false, i1 false}
!153 = !{ptr @mlx4_ib_alloc_ucontext.__key.64, !154, !"__key", i1 false, i1 false}
!154 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 1122, i32 2}
!155 = !{ptr @.str.65, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 1854, i32 3}
!158 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @mlx4_ib_mcg_attach._entry, !157, !"_entry", i1 false, i1 false}
!160 = !{ptr @mlx4_ib_mcg_attach._entry_ptr, !157, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @.str.68, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 1934, i32 4}
!163 = !{ptr @.str.69, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @mlx4_ib_mcg_detach._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @mlx4_ib_mcg_detach._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.71, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 1966, i32 3}
!168 = !{ptr @mlx4_ib_mcg_detach._entry.70, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @mlx4_ib_mcg_detach._entry_ptr.72, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @mlx4_ib_dev_wq_ops, !171, !"mlx4_ib_dev_wq_ops", i1 false, i1 false}
!171 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2587, i32 35}
!172 = !{ptr @mlx4_ib_dev_mw_ops, !173, !"mlx4_ib_dev_mw_ops", i1 false, i1 false}
!173 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2598, i32 35}
!174 = !{ptr @mlx4_ib_dev_xrc_ops, !175, !"mlx4_ib_dev_xrc_ops", i1 false, i1 false}
!175 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2605, i32 35}
!176 = !{ptr @.str.73, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 1230, i32 13}
!178 = distinct !{null, !179, !"__already_done", i1 false, i1 false}
!179 = !{!"../include/rdma/ib_verbs.h", i32 3498, i32 2}
!180 = !{ptr @.str.74, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @.str.75, !179, !"<string literal>", i1 false, i1 false}
!182 = distinct !{null, !183, !"__already_done", i1 false, i1 false}
!183 = !{!"../include/rdma/ib_verbs.h", i32 3936, i32 2}
!184 = !{ptr @.str.76, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.77, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 106, i32 4}
!187 = !{ptr @.str.78, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @check_flow_steering_support._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @check_flow_steering_support._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @mlx4_ib_dev_fs_ops, !191, !"mlx4_ib_dev_fs_ops", i1 false, i1 false}
!191 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2612, i32 35}
!192 = !{ptr @.str.79, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 945, i32 4}
!194 = !{ptr @.str.80, !193, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @mlx4_init_sl2vl_tbl._entry, !193, !"_entry", i1 false, i1 false}
!196 = !{ptr @mlx4_init_sl2vl_tbl._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @mlx4_ib_hw_stats_ops1, !198, !"mlx4_ib_hw_stats_ops1", i1 false, i1 false}
!198 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2210, i32 35}
!199 = !{ptr @.str.81, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2061, i32 2}
!201 = !{ptr @.str.82, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2062, i32 2}
!203 = !{ptr @.str.83, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2063, i32 2}
!205 = !{ptr @.str.84, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2064, i32 2}
!207 = !{ptr @.str.85, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2065, i32 2}
!209 = !{ptr @.str.86, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2066, i32 2}
!211 = !{ptr @.str.87, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2067, i32 2}
!213 = !{ptr @.str.88, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2068, i32 2}
!215 = !{ptr @.str.89, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2069, i32 2}
!217 = !{ptr @.str.90, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2070, i32 2}
!219 = !{ptr @.str.91, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2071, i32 2}
!221 = !{ptr @.str.92, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2072, i32 2}
!223 = !{ptr @.str.93, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2073, i32 2}
!225 = !{ptr @.str.94, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2074, i32 2}
!227 = !{ptr @.str.95, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2075, i32 2}
!229 = !{ptr @.str.96, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2076, i32 2}
!231 = !{ptr @.str.97, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2077, i32 2}
!233 = !{ptr @.str.98, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2078, i32 2}
!235 = !{ptr @.str.99, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2079, i32 2}
!237 = !{ptr @.str.100, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2080, i32 2}
!239 = !{ptr @.str.101, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2081, i32 2}
!241 = !{ptr @diag_basic, !242, !"diag_basic", i1 false, i1 false}
!242 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2060, i32 34}
!243 = !{ptr @.str.102, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2085, i32 2}
!245 = !{ptr @.str.103, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2086, i32 2}
!247 = distinct !{null, !248, !"diag_ext", i1 false, i1 false}
!248 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2084, i32 34}
!249 = !{ptr @.str.104, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2090, i32 2}
!251 = !{ptr @.str.105, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2091, i32 2}
!253 = distinct !{null, !254, !"diag_device_only", i1 false, i1 false}
!254 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2089, i32 34}
!255 = !{ptr @mlx4_ib_hw_stats_ops, !256, !"mlx4_ib_hw_stats_ops", i1 false, i1 false}
!256 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2204, i32 35}
!257 = distinct !{null, !258, !"__already_done", i1 false, i1 false}
!258 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2335, i32 2}
!259 = !{ptr @.str.106, !258, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @do_slave_init.__key, !261, !"__key", i1 false, i1 false}
!261 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 3025, i32 3}
!262 = !{ptr @.str.107, !261, !"<string literal>", i1 false, i1 false}
!263 = !{ptr @.str.108, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 2970, i32 4}
!265 = !{ptr @mlx4_ib_remove._entry, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @mlx4_ib_remove._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @mlx4_ib_event.__key, !268, !"__key", i1 false, i1 false}
!268 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 3198, i32 3}
!269 = !{ptr @mlx4_ib_event.__key.109, !270, !"__key", i1 false, i1 false}
!270 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 3242, i32 3}
!271 = !{ptr @.str.110, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 3057, i32 2}
!273 = !{ptr @.str.111, !272, !"<string literal>", i1 false, i1 false}
!274 = !{ptr @mlx4_ib_handle_catas_error._entry, !272, !"_entry", i1 false, i1 false}
!275 = !{ptr @mlx4_ib_handle_catas_error._entry_ptr, !272, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.113, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/infiniband/hw/mlx4/main.c", i32 3105, i32 2}
!278 = !{ptr @mlx4_ib_handle_catas_error._entry.112, !277, !"_entry", i1 false, i1 false}
!279 = !{ptr @mlx4_ib_handle_catas_error._entry_ptr.114, !277, !"_entry_ptr", i1 false, i1 false}
!280 = !{!"sp"}
!281 = !{i32 1, !"wchar_size", i32 2}
!282 = !{i32 1, !"min_enum_size", i32 4}
!283 = !{i32 8, !"branch-target-enforcement", i32 0}
!284 = !{i32 8, !"sign-return-address", i32 0}
!285 = !{i32 8, !"sign-return-address-all", i32 0}
!286 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!287 = !{i32 7, !"uwtable", i32 1}
!288 = !{i32 7, !"frame-pointer", i32 2}
!289 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!290 = !{i64 2149444593}
!291 = !{i64 2149444859}
!292 = !{i64 832134, i64 832195}
!293 = !{i64 834866}
!294 = !{!"branch_weights", i32 1, i32 2000}
!295 = !{i64 835151}
!296 = !{i32 0, i32 33}
!297 = !{!"auto-init"}
!298 = !{!"branch_weights", i32 2000, i32 1}
!299 = !{i64 2153545195, i64 2153545220}
!300 = !{i64 6040750}
!301 = !{i64 6040947}
!302 = !{i64 2153526180}
!303 = !{i64 2153545876, i64 2153545901}
!304 = !{i8 0, i8 2}
