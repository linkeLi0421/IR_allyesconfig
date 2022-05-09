; ModuleID = '/llk/IR_all_yes/net/smc/smc_pnet.c_pt.bc'
source_filename = "../net/smc/smc_pnet.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.143, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.143 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.89, i32, %struct.spinlock }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, ptr }
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
%struct.nla_policy = type { i8, i8, i16, %union.anon.91 }
%union.anon.91 = type { i32 }
%struct.genl_ops = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i8 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.smc_ib_devices = type { %struct.list_head, %struct.mutex }
%struct.smcd_dev_list = type { %struct.list_head, %struct.mutex }
%struct.smc_net = type { %struct.smc_pnettable, %struct.smc_pnetids_ndev }
%struct.smc_pnettable = type { %struct.mutex, %struct.list_head }
%struct.smc_pnetids_ndev = type { %struct.list_head, %struct.rwlock_t }
%struct.smc_pnetids_ndev_entry = type { %struct.list_head, [16 x i8], %struct.refcount_struct }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.85, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.111, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.85 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.111 = type { ptr }
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
%struct.smc_pnetentry = type { %struct.list_head, [17 x i8], i32, %union.anon.184 }
%union.anon.184 = type { %struct.anon.185, [40 x i8] }
%struct.anon.185 = type { [17 x i8], ptr, ptr }
%struct.smc_ib_device = type { %struct.list_head, ptr, [2 x %struct.ib_port_attr], %struct.ib_event_handler, ptr, ptr, %struct.tasklet_struct, %struct.tasklet_struct, [2 x [6 x i8]], [2 x [16 x i8]], [2 x i8], i8, %struct.work_struct, i32, [1 x i32], %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, [2 x %struct.atomic_t], [2 x i32] }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.176, i32 }
%union.anon.176 = type { ptr }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.175, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%union.anon.175 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.166 }
%struct.anon.166 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.smc_link_group = type { %struct.list_head, %struct.rb_root, %struct.rwlock_t, i32, i16, [16 x %struct.list_head], %struct.mutex, [16 x %struct.list_head], %struct.mutex, [4 x i8], %struct.delayed_work, %struct.work_struct, ptr, i8, %struct.refcount_struct, i8, i8, [32 x i8], i8, i8, [32 x i8], %union.anon.151 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, [3 x %struct.smc_link], ptr, ptr, [8 x i8], [255 x [3 x %struct.smc_rtoken]], [8 x i32], i8, i32, [17 x i8], %struct.list_head, %struct.spinlock, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.smc_llc_flow, %struct.smc_llc_flow, ptr, %struct.spinlock, i32, i32, [6 x i8], i8, i32, ptr }
%struct.smc_link = type { ptr, i8, ptr, ptr, %struct.ib_qp_attr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, ptr, ptr, ptr, i32, i32, i64, i32, i32, %struct.ib_reg_wr, %struct.wait_queue_head, %struct.atomic_t, i32, [16 x i8], i8, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, [4 x i8], [4 x i8], i8, i8, i8, %struct.refcount_struct, ptr, %struct.work_struct, [64 x i8], i32, i32, %struct.delayed_work, %struct.completion, i32, %struct.atomic_t }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.167 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.162 }
%struct.anon.162 = type { i64, i64 }
%union.anon.167 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.163, ptr, i32, i32, i32, %union.anon.164 }
%union.anon.163 = type { i64 }
%union.anon.164 = type { i32 }
%struct.smc_rtoken = type { i64, i32 }
%struct.smc_llc_flow = type { i32, ptr }
%struct.smc_init_info = type { i8, i8, i8, i8, i8, i16, i32, [32 x i8], i8, i8, [16 x i8], [6 x i8], [8 x i8], ptr, [16 x i8], i8, i32, %struct.smc_init_info_smcrv2, [9 x i64], [9 x ptr], [9 x i16], i8, i8, i8 }
%struct.smc_init_info_smcrv2 = type { i32, ptr, i32, ptr, i8, [16 x i8], i8, [6 x i8], %struct.smc_gidlist }
%struct.smc_gidlist = type { i8, [2 x [16 x i8]] }
%struct.sock = type { %struct.sock_common, ptr, i32, i32, %struct.socket_lock_t, %struct.atomic_t, i32, %struct.sk_buff_head, %struct.sk_buff_head, %struct.anon.134, %struct.llist_head, i32, i32, i32, i32, i32, ptr, %union.anon.135, [2 x ptr], ptr, %struct.atomic_t, i32, i32, %struct.refcount_struct, i32, %union.anon.136, %struct.sk_buff_head, i32, i32, i32, i32, i32, %struct.timer_list, i32, i32, i32, i32, %struct.page_frag, i64, i32, i32, i32, i32, i8, i8, i16, i16, i16, i32, ptr, %struct.rwlock_t, i32, i32, i32, i32, %struct.kuid_t, i8, i16, %struct.spinlock, i32, ptr, ptr, i32, i64, %struct.seqlock_t, i16, i8, %struct.atomic_t, %struct.atomic_t, i8, i8, ptr, ptr, ptr, %struct.sock_cgroup_data, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.callback_head, ptr }
%struct.sock_common = type { %union.anon.14, %union.anon.16, %union.anon.17, i16, i8, i8, i32, %union.anon.19, ptr, %struct.possible_net_t, %struct.in6_addr, %struct.in6_addr, %struct.atomic64_t, %union.anon.130, [0 x i32], %union.anon.131, i16, i16, %union.anon.132, %struct.refcount_struct, [0 x i32], %union.anon.133 }
%union.anon.14 = type { i64 }
%union.anon.16 = type { i32 }
%union.anon.17 = type { i32 }
%union.anon.19 = type { %struct.hlist_node }
%struct.in6_addr = type { %union.anon.106 }
%union.anon.106 = type { [4 x i32] }
%struct.atomic64_t = type { i64 }
%union.anon.130 = type { i32 }
%union.anon.131 = type { %struct.hlist_node }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%struct.socket_lock_t = type { %struct.spinlock, i32, %struct.wait_queue_head, %struct.lockdep_map }
%struct.anon.134 = type { %struct.atomic_t, i32, ptr, ptr }
%struct.llist_head = type { ptr }
%union.anon.135 = type { ptr }
%union.anon.136 = type { ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.kuid_t = type { i32 }
%struct.sock_cgroup_data = type { ptr, i32, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.smcd_dev = type { ptr, %struct.device, ptr, i64, %struct.list_head, %struct.spinlock, ptr, %struct.list_head, ptr, [16 x i8], i8, %struct.list_head, %struct.spinlock, %struct.atomic_t, %struct.wait_queue_head, i8 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.112, %union.anon.113, [48 x i8], %union.anon.114, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.116, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.112 = type { ptr }
%union.anon.113 = type { i64 }
%union.anon.114 = type { %struct.anon.115 }
%struct.anon.115 = type { i32, ptr }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.118, i32, i32, i32, i16, i16, %union.anon.120, i32, %union.anon.121, %union.anon.122, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.118 = type { i32 }
%union.anon.120 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i16 }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.93 }
%union.anon.93 = type { [6 x i32], [24 x i8] }
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }

@smc_net_id = external dso_local local_unnamed_addr global i32, align 4
@smc_pnet_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&pnettable->lock\00", [47 x i8] zeroinitializer }, align 32
@smc_pnet_net_init.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&pnetids_ndev->lock\00", [44 x i8] zeroinitializer }, align 32
@smc_pnet_nl_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"SMC_PNETID\00\00\00\00\00\00", i32 1, i32 4, i32 0, i8 -128, i8 4, i8 0, i8 0, ptr @smc_pnet_policy, ptr null, ptr null, ptr @smc_pnet_ops, ptr null, ptr null, ptr null }, section ".data..ro_after_init", align 4
@smc_netdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @smc_pnet_netdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@init_net = external dso_local global %struct.net, align 128
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__pnet_find_base_ndev.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/smc/smc_pnet.c\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smc_pnet_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 10, i8 0, i16 16, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 15, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 63, %union.anon.91 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.91 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@smc_pnet_ops = internal constant { [4 x %struct.genl_ops], [48 x i8] } { [4 x %struct.genl_ops] [%struct.genl_ops { ptr @smc_pnet_get, ptr @smc_pnet_dump_start, ptr @smc_pnet_dump, ptr null, ptr null, i32 0, i8 1, i8 0, i8 0, i8 3 }, %struct.genl_ops { ptr @smc_pnet_add, ptr null, ptr null, ptr null, ptr null, i32 0, i8 2, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @smc_pnet_del, ptr null, ptr null, ptr null, ptr null, i32 0, i8 3, i8 0, i8 1, i8 3 }, %struct.genl_ops { ptr @smc_pnet_flush, ptr null, ptr null, ptr null, ptr null, i32 0, i8 4, i8 0, i8 1, i8 3 }], [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"n/a\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@smc_pnet_add_eth._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.smc_pnet_add_eth = private unnamed_addr constant [17 x i8] c"smc_pnet_add_eth\00", align 1
@smc_pnet_add_eth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @__func__.smc_pnet_add_eth, ptr @.str.8, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014smc: net device %s applied user defined pnetid %.16s\0A\00", [40 x i8] zeroinitializer }, align 32
@smc_pnet_add_eth._entry_ptr = internal global ptr @smc_pnet_add_eth._entry, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@smc_pnet_add_ib._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smc_pnet_add_ib = private unnamed_addr constant [16 x i8] c"smc_pnet_add_ib\00", align 1
@smc_pnet_add_ib._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @__func__.smc_pnet_add_ib, ptr @.str.8, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014smc: ib device %s ibport %d applied user defined pnetid %.16s\0A\00", [63 x i8] zeroinitializer }, align 32
@smc_pnet_add_ib._entry_ptr = internal global ptr @smc_pnet_add_ib._entry, section ".printk_index", align 4
@smc_pnet_add_ib._rs.15 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smc_pnet_add_ib._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @__func__.smc_pnet_add_ib, ptr @.str.8, i32 433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\014smc: smcd device %s applied user defined pnetid %.16s\0A\00", [39 x i8] zeroinitializer }, align 32
@smc_pnet_add_ib._entry_ptr.18 = internal global ptr @smc_pnet_add_ib._entry.16, section ".printk_index", align 4
@smc_ib_devices = external dso_local global %struct.smc_ib_devices, align 4
@smcd_dev_list = external dso_local global %struct.smcd_dev_list, align 4
@smc_pnet_remove_by_ndev._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smc_pnet_remove_by_ndev = private unnamed_addr constant [24 x i8] c"smc_pnet_remove_by_ndev\00", align 1
@smc_pnet_remove_by_ndev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @__func__.smc_pnet_remove_by_ndev, ptr @.str.8, i32 236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\014smc: removing net device %s with user defined pnetid %.16s\0A\00", [34 x i8] zeroinitializer }, align 32
@smc_pnet_remove_by_ndev._entry_ptr = internal global ptr @smc_pnet_remove_by_ndev._entry, section ".printk_index", align 4
@smc_pnet_add_by_ndev._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smc_pnet_add_by_ndev = private unnamed_addr constant [21 x i8] c"smc_pnet_add_by_ndev\00", align 1
@smc_pnet_add_by_ndev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @__func__.smc_pnet_add_by_ndev, ptr @.str.8, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014smc: adding net device %s with user defined pnetid %.16s\0A\00", [36 x i8] zeroinitializer }, align 32
@smc_pnet_add_by_ndev._entry_ptr = internal global ptr @smc_pnet_add_by_ndev._entry, section ".printk_index", align 4
@smc_pnet_remove_by_pnetid._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smc_pnet_remove_by_pnetid = private unnamed_addr constant [26 x i8] c"smc_pnet_remove_by_pnetid\00", align 1
@smc_pnet_remove_by_pnetid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @__func__.smc_pnet_remove_by_pnetid, ptr @.str.8, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014smc: net device %s erased user defined pnetid %.16s\0A\00", [41 x i8] zeroinitializer }, align 32
@smc_pnet_remove_by_pnetid._entry_ptr = internal global ptr @smc_pnet_remove_by_pnetid._entry, section ".printk_index", align 4
@smc_pnet_remove_by_pnetid._rs.22 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smc_pnet_remove_by_pnetid._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @__func__.smc_pnet_remove_by_pnetid, ptr @.str.8, i32 153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014smc: ib device %s ibport %d erased user defined pnetid %.16s\0A\00", [32 x i8] zeroinitializer }, align 32
@smc_pnet_remove_by_pnetid._entry_ptr.25 = internal global ptr @smc_pnet_remove_by_pnetid._entry.23, section ".printk_index", align 4
@smc_pnet_remove_by_pnetid._rs.26 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.12, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smc_pnet_remove_by_pnetid._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @__func__.smc_pnet_remove_by_pnetid, ptr @.str.8, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014smc: smcd device %s erased user defined pnetid %.16s\0A\00", [40 x i8] zeroinitializer }, align 32
@smc_pnet_remove_by_pnetid._entry_ptr.29 = internal global ptr @smc_pnet_remove_by_pnetid._entry.27, section ".printk_index", align 4
@sk_dst_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"include/net/sock.h\00", [45 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.38 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.56 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.57 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.58 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.59 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.61 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 32]
@__sancov_gen_cov_switch_values.62 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 5, i64 6]
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 867, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 869, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [20 x i8] c"smc_netdev_notifier\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 855, i32 30 }
@___asan_gen_.82 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 45, i32 7 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 695, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 723, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 908, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [16 x i8] c"smc_pnet_policy\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 35, i32 32 }
@___asan_gen_.102 = private unnamed_addr constant [13 x i8] c"smc_pnet_ops\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 677, i32 30 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 538, i32 47 }
@___asan_gen_.109 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 991, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 395, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 420, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 430, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 233, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 202, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 124, i32 5 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 148, i32 5 }
@___asan_gen_.177 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.184 = private constant [22 x i8] c"../net/smc/smc_pnet.c\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.184, i32 168, i32 4 }
@___asan_gen_.186 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [22 x i8] c"../include/net/sock.h\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.187, i32 2077, i32 8 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @smc_pnet_add_by_ndev._entry, ptr @smc_pnet_add_by_ndev._entry_ptr, ptr @smc_pnet_add_eth._entry, ptr @smc_pnet_add_eth._entry_ptr, ptr @smc_pnet_add_ib._entry, ptr @smc_pnet_add_ib._entry.16, ptr @smc_pnet_add_ib._entry_ptr, ptr @smc_pnet_add_ib._entry_ptr.18, ptr @smc_pnet_remove_by_ndev._entry, ptr @smc_pnet_remove_by_ndev._entry_ptr, ptr @smc_pnet_remove_by_pnetid._entry, ptr @smc_pnet_remove_by_pnetid._entry.23, ptr @smc_pnet_remove_by_pnetid._entry.27, ptr @smc_pnet_remove_by_pnetid._entry_ptr, ptr @smc_pnet_remove_by_pnetid._entry_ptr.25, ptr @smc_pnet_remove_by_pnetid._entry_ptr.29, ptr @smc_pnet_net_init.__key, ptr @.str, ptr @smc_pnet_net_init.__key.1, ptr @.str.2, ptr @smc_netdev_notifier, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @smc_pnet_policy, ptr @smc_pnet_ops, ptr @.str.10, ptr @.str.11, ptr @smc_pnet_add_eth._rs, ptr @.str.12, ptr @.str.13, ptr @smc_pnet_add_ib._rs, ptr @.str.14, ptr @smc_pnet_add_ib._rs.15, ptr @.str.17, ptr @smc_pnet_remove_by_ndev._rs, ptr @.str.19, ptr @smc_pnet_add_by_ndev._rs, ptr @.str.20, ptr @smc_pnet_remove_by_pnetid._rs, ptr @.str.21, ptr @smc_pnet_remove_by_pnetid._rs.22, ptr @.str.24, ptr @smc_pnet_remove_by_pnetid._rs.26, ptr @.str.28, ptr @.str.30], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_net_init.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_netdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_ops to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_add_eth._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_add_eth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_add_ib._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_add_ib._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_add_ib._rs.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_add_ib._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_remove_by_ndev._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_remove_by_ndev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_add_by_ndev._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_add_by_ndev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_remove_by_pnetid._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_remove_by_pnetid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_remove_by_pnetid._rs.22 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_remove_by_pnetid._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_remove_by_pnetid._rs.26 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_pnet_remove_by_pnetid._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @smc_pnet_is_pnetid_set(ptr nocapture noundef readonly %pnetid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pnetid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pnetid, align 1
  %switch.and = and i8 %1, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and)
  %switch.selectcmp = icmp ne i8 %switch.and, 0
  ret i1 %switch.selectcmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @smc_pnet_is_ndev_pnetid(ptr noundef %net, ptr nocapture noundef readonly %pnetid) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_net_id to i32))
  %0 = load i32, ptr @smc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %pnetids_ndev = getelementptr inbounds %struct.smc_net, ptr %call, i32 0, i32 1
  %lock = getelementptr inbounds %struct.smc_net, ptr %call, i32 0, i32 1, i32 1
  tail call void @_raw_read_lock(ptr noundef %lock) #15
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %pe.0.in = phi ptr [ %pnetids_ndev, %entry ], [ %pe.0, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %pe.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %pe.0 = load ptr, ptr %pe.0.in, align 4
  %cmp.not = icmp eq ptr %pe.0, %pnetids_ndev
  br i1 %cmp.not, label %for.cond.unlock_crit_edge, label %for.body

for.cond.unlock_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

for.body:                                         ; preds = %for.cond
  %pnetid5 = getelementptr inbounds %struct.smc_pnetids_ndev_entry, ptr %pe.0, i32 0, i32 1
  %call6 = tail call fastcc zeroext i1 @smc_pnet_match(ptr noundef %pnetid, ptr noundef %pnetid5)
  br i1 %call6, label %for.body.unlock_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond

for.body.unlock_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %unlock

unlock:                                           ; preds = %for.body.unlock_crit_edge, %for.cond.unlock_crit_edge
  %2 = xor i1 %cmp.not, true
  tail call void @_raw_read_unlock(ptr noundef %lock) #15
  ret i1 %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !92
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 45, ptr noundef nonnull @.str.4) #15
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !93
  %8 = tail call i32 @llvm.read_register.i32(metadata !82) #15
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @smc_pnet_match(ptr nocapture noundef readonly %pnetid1, ptr nocapture noundef readonly %pnetid2) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pnetid1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pnetid1, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %entry.if.end_crit_edge [
    i8 0, label %entry.land.lhs.true_crit_edge
    i8 32, label %entry.land.lhs.true_crit_edge37
  ]

entry.land.lhs.true_crit_edge37:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

for.cond:                                         ; preds = %if.end
  %arrayidx.1 = getelementptr i8, ptr %pnetid1, i32 1
  %3 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.1, align 1
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.31)
  switch i8 %4, label %for.cond.if.end.1_crit_edge [
    i8 0, label %for.cond.land.lhs.true.1_crit_edge
    i8 32, label %for.cond.land.lhs.true.1_crit_edge38
  ]

for.cond.land.lhs.true.1_crit_edge38:             ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.1

for.cond.land.lhs.true.1_crit_edge:               ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.1

for.cond.if.end.1_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.1

land.lhs.true.1:                                  ; preds = %for.cond.land.lhs.true.1_crit_edge, %for.cond.land.lhs.true.1_crit_edge38
  %arrayidx7.1 = getelementptr i8, ptr %pnetid2, i32 1
  %6 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx7.1, align 1
  %8 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.32)
  switch i8 %7, label %land.lhs.true.1.if.end.1_crit_edge [
    i8 0, label %land.lhs.true.1.cleanup_crit_edge
    i8 32, label %land.lhs.true.1.cleanup_crit_edge39
  ]

land.lhs.true.1.cleanup_crit_edge39:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.1.if.end.1_crit_edge:               ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.1

if.end.1:                                         ; preds = %land.lhs.true.1.if.end.1_crit_edge, %for.cond.if.end.1_crit_edge
  %arrayidx18.1 = getelementptr i8, ptr %pnetid2, i32 1
  %9 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx18.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %10)
  %cmp20.not.1 = icmp eq i8 %4, %10
  br i1 %cmp20.not.1, label %for.cond.1, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.1:                                       ; preds = %if.end.1
  %arrayidx.2 = getelementptr i8, ptr %pnetid1, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.2, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.33)
  switch i8 %12, label %for.cond.1.if.end.2_crit_edge [
    i8 0, label %for.cond.1.land.lhs.true.2_crit_edge
    i8 32, label %for.cond.1.land.lhs.true.2_crit_edge40
  ]

for.cond.1.land.lhs.true.2_crit_edge40:           ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.2

for.cond.1.land.lhs.true.2_crit_edge:             ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.2

for.cond.1.if.end.2_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.2

land.lhs.true.2:                                  ; preds = %for.cond.1.land.lhs.true.2_crit_edge, %for.cond.1.land.lhs.true.2_crit_edge40
  %arrayidx7.2 = getelementptr i8, ptr %pnetid2, i32 2
  %14 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx7.2, align 1
  %16 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.34)
  switch i8 %15, label %land.lhs.true.2.if.end.2_crit_edge [
    i8 0, label %land.lhs.true.2.cleanup_crit_edge
    i8 32, label %land.lhs.true.2.cleanup_crit_edge41
  ]

land.lhs.true.2.cleanup_crit_edge41:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.2.if.end.2_crit_edge:               ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.2

if.end.2:                                         ; preds = %land.lhs.true.2.if.end.2_crit_edge, %for.cond.1.if.end.2_crit_edge
  %arrayidx18.2 = getelementptr i8, ptr %pnetid2, i32 2
  %17 = ptrtoint ptr %arrayidx18.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx18.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %18)
  %cmp20.not.2 = icmp eq i8 %12, %18
  br i1 %cmp20.not.2, label %for.cond.2, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.2:                                       ; preds = %if.end.2
  %arrayidx.3 = getelementptr i8, ptr %pnetid1, i32 3
  %19 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.3, align 1
  %21 = zext i8 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.35)
  switch i8 %20, label %for.cond.2.if.end.3_crit_edge [
    i8 0, label %for.cond.2.land.lhs.true.3_crit_edge
    i8 32, label %for.cond.2.land.lhs.true.3_crit_edge42
  ]

for.cond.2.land.lhs.true.3_crit_edge42:           ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.3

for.cond.2.land.lhs.true.3_crit_edge:             ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.3

for.cond.2.if.end.3_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.3

land.lhs.true.3:                                  ; preds = %for.cond.2.land.lhs.true.3_crit_edge, %for.cond.2.land.lhs.true.3_crit_edge42
  %arrayidx7.3 = getelementptr i8, ptr %pnetid2, i32 3
  %22 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx7.3, align 1
  %24 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.36)
  switch i8 %23, label %land.lhs.true.3.if.end.3_crit_edge [
    i8 0, label %land.lhs.true.3.cleanup_crit_edge
    i8 32, label %land.lhs.true.3.cleanup_crit_edge43
  ]

land.lhs.true.3.cleanup_crit_edge43:              ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.3.cleanup_crit_edge:                ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.3.if.end.3_crit_edge:               ; preds = %land.lhs.true.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.3

if.end.3:                                         ; preds = %land.lhs.true.3.if.end.3_crit_edge, %for.cond.2.if.end.3_crit_edge
  %arrayidx18.3 = getelementptr i8, ptr %pnetid2, i32 3
  %25 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx18.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %26)
  %cmp20.not.3 = icmp eq i8 %20, %26
  br i1 %cmp20.not.3, label %for.cond.3, label %if.end.3.cleanup_crit_edge

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.3:                                       ; preds = %if.end.3
  %arrayidx.4 = getelementptr i8, ptr %pnetid1, i32 4
  %27 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx.4, align 1
  %29 = zext i8 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %28, label %for.cond.3.if.end.4_crit_edge [
    i8 0, label %for.cond.3.land.lhs.true.4_crit_edge
    i8 32, label %for.cond.3.land.lhs.true.4_crit_edge44
  ]

for.cond.3.land.lhs.true.4_crit_edge44:           ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.4

for.cond.3.land.lhs.true.4_crit_edge:             ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.4

for.cond.3.if.end.4_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.4

land.lhs.true.4:                                  ; preds = %for.cond.3.land.lhs.true.4_crit_edge, %for.cond.3.land.lhs.true.4_crit_edge44
  %arrayidx7.4 = getelementptr i8, ptr %pnetid2, i32 4
  %30 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx7.4, align 1
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.38)
  switch i8 %31, label %land.lhs.true.4.if.end.4_crit_edge [
    i8 0, label %land.lhs.true.4.cleanup_crit_edge
    i8 32, label %land.lhs.true.4.cleanup_crit_edge45
  ]

land.lhs.true.4.cleanup_crit_edge45:              ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.4.cleanup_crit_edge:                ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.4.if.end.4_crit_edge:               ; preds = %land.lhs.true.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.4

if.end.4:                                         ; preds = %land.lhs.true.4.if.end.4_crit_edge, %for.cond.3.if.end.4_crit_edge
  %arrayidx18.4 = getelementptr i8, ptr %pnetid2, i32 4
  %33 = ptrtoint ptr %arrayidx18.4 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx18.4, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %34)
  %cmp20.not.4 = icmp eq i8 %28, %34
  br i1 %cmp20.not.4, label %for.cond.4, label %if.end.4.cleanup_crit_edge

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.4:                                       ; preds = %if.end.4
  %arrayidx.5 = getelementptr i8, ptr %pnetid1, i32 5
  %35 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.5, align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %36, label %for.cond.4.if.end.5_crit_edge [
    i8 0, label %for.cond.4.land.lhs.true.5_crit_edge
    i8 32, label %for.cond.4.land.lhs.true.5_crit_edge46
  ]

for.cond.4.land.lhs.true.5_crit_edge46:           ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.5

for.cond.4.land.lhs.true.5_crit_edge:             ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.5

for.cond.4.if.end.5_crit_edge:                    ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.5

land.lhs.true.5:                                  ; preds = %for.cond.4.land.lhs.true.5_crit_edge, %for.cond.4.land.lhs.true.5_crit_edge46
  %arrayidx7.5 = getelementptr i8, ptr %pnetid2, i32 5
  %38 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx7.5, align 1
  %40 = zext i8 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %39, label %land.lhs.true.5.if.end.5_crit_edge [
    i8 0, label %land.lhs.true.5.cleanup_crit_edge
    i8 32, label %land.lhs.true.5.cleanup_crit_edge47
  ]

land.lhs.true.5.cleanup_crit_edge47:              ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.5.cleanup_crit_edge:                ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.5.if.end.5_crit_edge:               ; preds = %land.lhs.true.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.5

if.end.5:                                         ; preds = %land.lhs.true.5.if.end.5_crit_edge, %for.cond.4.if.end.5_crit_edge
  %arrayidx18.5 = getelementptr i8, ptr %pnetid2, i32 5
  %41 = ptrtoint ptr %arrayidx18.5 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx18.5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %42)
  %cmp20.not.5 = icmp eq i8 %36, %42
  br i1 %cmp20.not.5, label %for.cond.5, label %if.end.5.cleanup_crit_edge

if.end.5.cleanup_crit_edge:                       ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.5:                                       ; preds = %if.end.5
  %arrayidx.6 = getelementptr i8, ptr %pnetid1, i32 6
  %43 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx.6, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %44, label %for.cond.5.if.end.6_crit_edge [
    i8 0, label %for.cond.5.land.lhs.true.6_crit_edge
    i8 32, label %for.cond.5.land.lhs.true.6_crit_edge48
  ]

for.cond.5.land.lhs.true.6_crit_edge48:           ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.6

for.cond.5.land.lhs.true.6_crit_edge:             ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.6

for.cond.5.if.end.6_crit_edge:                    ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.6

land.lhs.true.6:                                  ; preds = %for.cond.5.land.lhs.true.6_crit_edge, %for.cond.5.land.lhs.true.6_crit_edge48
  %arrayidx7.6 = getelementptr i8, ptr %pnetid2, i32 6
  %46 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %arrayidx7.6, align 1
  %48 = zext i8 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %47, label %land.lhs.true.6.if.end.6_crit_edge [
    i8 0, label %land.lhs.true.6.cleanup_crit_edge
    i8 32, label %land.lhs.true.6.cleanup_crit_edge49
  ]

land.lhs.true.6.cleanup_crit_edge49:              ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.6.cleanup_crit_edge:                ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.6.if.end.6_crit_edge:               ; preds = %land.lhs.true.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.6

if.end.6:                                         ; preds = %land.lhs.true.6.if.end.6_crit_edge, %for.cond.5.if.end.6_crit_edge
  %arrayidx18.6 = getelementptr i8, ptr %pnetid2, i32 6
  %49 = ptrtoint ptr %arrayidx18.6 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx18.6, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %44, i8 %50)
  %cmp20.not.6 = icmp eq i8 %44, %50
  br i1 %cmp20.not.6, label %for.cond.6, label %if.end.6.cleanup_crit_edge

if.end.6.cleanup_crit_edge:                       ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.6:                                       ; preds = %if.end.6
  %arrayidx.7 = getelementptr i8, ptr %pnetid1, i32 7
  %51 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx.7, align 1
  %53 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %52, label %for.cond.6.if.end.7_crit_edge [
    i8 0, label %for.cond.6.land.lhs.true.7_crit_edge
    i8 32, label %for.cond.6.land.lhs.true.7_crit_edge50
  ]

for.cond.6.land.lhs.true.7_crit_edge50:           ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.7

for.cond.6.land.lhs.true.7_crit_edge:             ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.7

for.cond.6.if.end.7_crit_edge:                    ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.7

land.lhs.true.7:                                  ; preds = %for.cond.6.land.lhs.true.7_crit_edge, %for.cond.6.land.lhs.true.7_crit_edge50
  %arrayidx7.7 = getelementptr i8, ptr %pnetid2, i32 7
  %54 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx7.7, align 1
  %56 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %55, label %land.lhs.true.7.if.end.7_crit_edge [
    i8 0, label %land.lhs.true.7.cleanup_crit_edge
    i8 32, label %land.lhs.true.7.cleanup_crit_edge51
  ]

land.lhs.true.7.cleanup_crit_edge51:              ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.7.cleanup_crit_edge:                ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.7.if.end.7_crit_edge:               ; preds = %land.lhs.true.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.7

if.end.7:                                         ; preds = %land.lhs.true.7.if.end.7_crit_edge, %for.cond.6.if.end.7_crit_edge
  %arrayidx18.7 = getelementptr i8, ptr %pnetid2, i32 7
  %57 = ptrtoint ptr %arrayidx18.7 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx18.7, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %52, i8 %58)
  %cmp20.not.7 = icmp eq i8 %52, %58
  br i1 %cmp20.not.7, label %for.cond.7, label %if.end.7.cleanup_crit_edge

if.end.7.cleanup_crit_edge:                       ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.7:                                       ; preds = %if.end.7
  %arrayidx.8 = getelementptr i8, ptr %pnetid1, i32 8
  %59 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx.8, align 1
  %61 = zext i8 %60 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %60, label %for.cond.7.if.end.8_crit_edge [
    i8 0, label %for.cond.7.land.lhs.true.8_crit_edge
    i8 32, label %for.cond.7.land.lhs.true.8_crit_edge52
  ]

for.cond.7.land.lhs.true.8_crit_edge52:           ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.8

for.cond.7.land.lhs.true.8_crit_edge:             ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.8

for.cond.7.if.end.8_crit_edge:                    ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.8

land.lhs.true.8:                                  ; preds = %for.cond.7.land.lhs.true.8_crit_edge, %for.cond.7.land.lhs.true.8_crit_edge52
  %arrayidx7.8 = getelementptr i8, ptr %pnetid2, i32 8
  %62 = ptrtoint ptr %arrayidx7.8 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx7.8, align 1
  %64 = zext i8 %63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %63, label %land.lhs.true.8.if.end.8_crit_edge [
    i8 0, label %land.lhs.true.8.cleanup_crit_edge
    i8 32, label %land.lhs.true.8.cleanup_crit_edge53
  ]

land.lhs.true.8.cleanup_crit_edge53:              ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.8.cleanup_crit_edge:                ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.8.if.end.8_crit_edge:               ; preds = %land.lhs.true.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.8

if.end.8:                                         ; preds = %land.lhs.true.8.if.end.8_crit_edge, %for.cond.7.if.end.8_crit_edge
  %arrayidx18.8 = getelementptr i8, ptr %pnetid2, i32 8
  %65 = ptrtoint ptr %arrayidx18.8 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx18.8, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %66)
  %cmp20.not.8 = icmp eq i8 %60, %66
  br i1 %cmp20.not.8, label %for.cond.8, label %if.end.8.cleanup_crit_edge

if.end.8.cleanup_crit_edge:                       ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.8:                                       ; preds = %if.end.8
  %arrayidx.9 = getelementptr i8, ptr %pnetid1, i32 9
  %67 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx.9, align 1
  %69 = zext i8 %68 to i64
  call void @__sanitizer_cov_trace_switch(i64 %69, ptr @__sancov_gen_cov_switch_values.47)
  switch i8 %68, label %for.cond.8.if.end.9_crit_edge [
    i8 0, label %for.cond.8.land.lhs.true.9_crit_edge
    i8 32, label %for.cond.8.land.lhs.true.9_crit_edge54
  ]

for.cond.8.land.lhs.true.9_crit_edge54:           ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.9

for.cond.8.land.lhs.true.9_crit_edge:             ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.9

for.cond.8.if.end.9_crit_edge:                    ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.9

land.lhs.true.9:                                  ; preds = %for.cond.8.land.lhs.true.9_crit_edge, %for.cond.8.land.lhs.true.9_crit_edge54
  %arrayidx7.9 = getelementptr i8, ptr %pnetid2, i32 9
  %70 = ptrtoint ptr %arrayidx7.9 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx7.9, align 1
  %72 = zext i8 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.48)
  switch i8 %71, label %land.lhs.true.9.if.end.9_crit_edge [
    i8 0, label %land.lhs.true.9.cleanup_crit_edge
    i8 32, label %land.lhs.true.9.cleanup_crit_edge55
  ]

land.lhs.true.9.cleanup_crit_edge55:              ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.9.cleanup_crit_edge:                ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.9.if.end.9_crit_edge:               ; preds = %land.lhs.true.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.9

if.end.9:                                         ; preds = %land.lhs.true.9.if.end.9_crit_edge, %for.cond.8.if.end.9_crit_edge
  %arrayidx18.9 = getelementptr i8, ptr %pnetid2, i32 9
  %73 = ptrtoint ptr %arrayidx18.9 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx18.9, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %74)
  %cmp20.not.9 = icmp eq i8 %68, %74
  br i1 %cmp20.not.9, label %for.cond.9, label %if.end.9.cleanup_crit_edge

if.end.9.cleanup_crit_edge:                       ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.9:                                       ; preds = %if.end.9
  %arrayidx.10 = getelementptr i8, ptr %pnetid1, i32 10
  %75 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %arrayidx.10, align 1
  %77 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %77, ptr @__sancov_gen_cov_switch_values.49)
  switch i8 %76, label %for.cond.9.if.end.10_crit_edge [
    i8 0, label %for.cond.9.land.lhs.true.10_crit_edge
    i8 32, label %for.cond.9.land.lhs.true.10_crit_edge56
  ]

for.cond.9.land.lhs.true.10_crit_edge56:          ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.10

for.cond.9.land.lhs.true.10_crit_edge:            ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.10

for.cond.9.if.end.10_crit_edge:                   ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.10

land.lhs.true.10:                                 ; preds = %for.cond.9.land.lhs.true.10_crit_edge, %for.cond.9.land.lhs.true.10_crit_edge56
  %arrayidx7.10 = getelementptr i8, ptr %pnetid2, i32 10
  %78 = ptrtoint ptr %arrayidx7.10 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx7.10, align 1
  %80 = zext i8 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.50)
  switch i8 %79, label %land.lhs.true.10.if.end.10_crit_edge [
    i8 0, label %land.lhs.true.10.cleanup_crit_edge
    i8 32, label %land.lhs.true.10.cleanup_crit_edge57
  ]

land.lhs.true.10.cleanup_crit_edge57:             ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.10.cleanup_crit_edge:               ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.10.if.end.10_crit_edge:             ; preds = %land.lhs.true.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.10

if.end.10:                                        ; preds = %land.lhs.true.10.if.end.10_crit_edge, %for.cond.9.if.end.10_crit_edge
  %arrayidx18.10 = getelementptr i8, ptr %pnetid2, i32 10
  %81 = ptrtoint ptr %arrayidx18.10 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx18.10, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %76, i8 %82)
  %cmp20.not.10 = icmp eq i8 %76, %82
  br i1 %cmp20.not.10, label %for.cond.10, label %if.end.10.cleanup_crit_edge

if.end.10.cleanup_crit_edge:                      ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.10:                                      ; preds = %if.end.10
  %arrayidx.11 = getelementptr i8, ptr %pnetid1, i32 11
  %83 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx.11, align 1
  %85 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %85, ptr @__sancov_gen_cov_switch_values.51)
  switch i8 %84, label %for.cond.10.if.end.11_crit_edge [
    i8 0, label %for.cond.10.land.lhs.true.11_crit_edge
    i8 32, label %for.cond.10.land.lhs.true.11_crit_edge58
  ]

for.cond.10.land.lhs.true.11_crit_edge58:         ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.11

for.cond.10.land.lhs.true.11_crit_edge:           ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.11

for.cond.10.if.end.11_crit_edge:                  ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.11

land.lhs.true.11:                                 ; preds = %for.cond.10.land.lhs.true.11_crit_edge, %for.cond.10.land.lhs.true.11_crit_edge58
  %arrayidx7.11 = getelementptr i8, ptr %pnetid2, i32 11
  %86 = ptrtoint ptr %arrayidx7.11 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %arrayidx7.11, align 1
  %88 = zext i8 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.52)
  switch i8 %87, label %land.lhs.true.11.if.end.11_crit_edge [
    i8 0, label %land.lhs.true.11.cleanup_crit_edge
    i8 32, label %land.lhs.true.11.cleanup_crit_edge59
  ]

land.lhs.true.11.cleanup_crit_edge59:             ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.11.cleanup_crit_edge:               ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.11.if.end.11_crit_edge:             ; preds = %land.lhs.true.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.11

if.end.11:                                        ; preds = %land.lhs.true.11.if.end.11_crit_edge, %for.cond.10.if.end.11_crit_edge
  %arrayidx18.11 = getelementptr i8, ptr %pnetid2, i32 11
  %89 = ptrtoint ptr %arrayidx18.11 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx18.11, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %84, i8 %90)
  %cmp20.not.11 = icmp eq i8 %84, %90
  br i1 %cmp20.not.11, label %for.cond.11, label %if.end.11.cleanup_crit_edge

if.end.11.cleanup_crit_edge:                      ; preds = %if.end.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.11:                                      ; preds = %if.end.11
  %arrayidx.12 = getelementptr i8, ptr %pnetid1, i32 12
  %91 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %arrayidx.12, align 1
  %93 = zext i8 %92 to i64
  call void @__sanitizer_cov_trace_switch(i64 %93, ptr @__sancov_gen_cov_switch_values.53)
  switch i8 %92, label %for.cond.11.if.end.12_crit_edge [
    i8 0, label %for.cond.11.land.lhs.true.12_crit_edge
    i8 32, label %for.cond.11.land.lhs.true.12_crit_edge60
  ]

for.cond.11.land.lhs.true.12_crit_edge60:         ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.12

for.cond.11.land.lhs.true.12_crit_edge:           ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.12

for.cond.11.if.end.12_crit_edge:                  ; preds = %for.cond.11
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.12

land.lhs.true.12:                                 ; preds = %for.cond.11.land.lhs.true.12_crit_edge, %for.cond.11.land.lhs.true.12_crit_edge60
  %arrayidx7.12 = getelementptr i8, ptr %pnetid2, i32 12
  %94 = ptrtoint ptr %arrayidx7.12 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %arrayidx7.12, align 1
  %96 = zext i8 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.54)
  switch i8 %95, label %land.lhs.true.12.if.end.12_crit_edge [
    i8 0, label %land.lhs.true.12.cleanup_crit_edge
    i8 32, label %land.lhs.true.12.cleanup_crit_edge61
  ]

land.lhs.true.12.cleanup_crit_edge61:             ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.12.cleanup_crit_edge:               ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.12.if.end.12_crit_edge:             ; preds = %land.lhs.true.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.12

if.end.12:                                        ; preds = %land.lhs.true.12.if.end.12_crit_edge, %for.cond.11.if.end.12_crit_edge
  %arrayidx18.12 = getelementptr i8, ptr %pnetid2, i32 12
  %97 = ptrtoint ptr %arrayidx18.12 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %arrayidx18.12, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %92, i8 %98)
  %cmp20.not.12 = icmp eq i8 %92, %98
  br i1 %cmp20.not.12, label %for.cond.12, label %if.end.12.cleanup_crit_edge

if.end.12.cleanup_crit_edge:                      ; preds = %if.end.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.12:                                      ; preds = %if.end.12
  %arrayidx.13 = getelementptr i8, ptr %pnetid1, i32 13
  %99 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx.13, align 1
  %101 = zext i8 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.55)
  switch i8 %100, label %for.cond.12.if.end.13_crit_edge [
    i8 0, label %for.cond.12.land.lhs.true.13_crit_edge
    i8 32, label %for.cond.12.land.lhs.true.13_crit_edge62
  ]

for.cond.12.land.lhs.true.13_crit_edge62:         ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.13

for.cond.12.land.lhs.true.13_crit_edge:           ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.13

for.cond.12.if.end.13_crit_edge:                  ; preds = %for.cond.12
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.13

land.lhs.true.13:                                 ; preds = %for.cond.12.land.lhs.true.13_crit_edge, %for.cond.12.land.lhs.true.13_crit_edge62
  %arrayidx7.13 = getelementptr i8, ptr %pnetid2, i32 13
  %102 = ptrtoint ptr %arrayidx7.13 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx7.13, align 1
  %104 = zext i8 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.56)
  switch i8 %103, label %land.lhs.true.13.if.end.13_crit_edge [
    i8 0, label %land.lhs.true.13.cleanup_crit_edge
    i8 32, label %land.lhs.true.13.cleanup_crit_edge63
  ]

land.lhs.true.13.cleanup_crit_edge63:             ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.13.cleanup_crit_edge:               ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.13.if.end.13_crit_edge:             ; preds = %land.lhs.true.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.13

if.end.13:                                        ; preds = %land.lhs.true.13.if.end.13_crit_edge, %for.cond.12.if.end.13_crit_edge
  %arrayidx18.13 = getelementptr i8, ptr %pnetid2, i32 13
  %105 = ptrtoint ptr %arrayidx18.13 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %arrayidx18.13, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %100, i8 %106)
  %cmp20.not.13 = icmp eq i8 %100, %106
  br i1 %cmp20.not.13, label %for.cond.13, label %if.end.13.cleanup_crit_edge

if.end.13.cleanup_crit_edge:                      ; preds = %if.end.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.13:                                      ; preds = %if.end.13
  %arrayidx.14 = getelementptr i8, ptr %pnetid1, i32 14
  %107 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %arrayidx.14, align 1
  %109 = zext i8 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.57)
  switch i8 %108, label %for.cond.13.if.end.14_crit_edge [
    i8 0, label %for.cond.13.land.lhs.true.14_crit_edge
    i8 32, label %for.cond.13.land.lhs.true.14_crit_edge64
  ]

for.cond.13.land.lhs.true.14_crit_edge64:         ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.14

for.cond.13.land.lhs.true.14_crit_edge:           ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.14

for.cond.13.if.end.14_crit_edge:                  ; preds = %for.cond.13
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.14

land.lhs.true.14:                                 ; preds = %for.cond.13.land.lhs.true.14_crit_edge, %for.cond.13.land.lhs.true.14_crit_edge64
  %arrayidx7.14 = getelementptr i8, ptr %pnetid2, i32 14
  %110 = ptrtoint ptr %arrayidx7.14 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %arrayidx7.14, align 1
  %112 = zext i8 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.58)
  switch i8 %111, label %land.lhs.true.14.if.end.14_crit_edge [
    i8 0, label %land.lhs.true.14.cleanup_crit_edge
    i8 32, label %land.lhs.true.14.cleanup_crit_edge65
  ]

land.lhs.true.14.cleanup_crit_edge65:             ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.14.cleanup_crit_edge:               ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.14.if.end.14_crit_edge:             ; preds = %land.lhs.true.14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.14

if.end.14:                                        ; preds = %land.lhs.true.14.if.end.14_crit_edge, %for.cond.13.if.end.14_crit_edge
  %arrayidx18.14 = getelementptr i8, ptr %pnetid2, i32 14
  %113 = ptrtoint ptr %arrayidx18.14 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx18.14, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %108, i8 %114)
  %cmp20.not.14 = icmp eq i8 %108, %114
  br i1 %cmp20.not.14, label %for.cond.14, label %if.end.14.cleanup_crit_edge

if.end.14.cleanup_crit_edge:                      ; preds = %if.end.14
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.cond.14:                                      ; preds = %if.end.14
  %arrayidx.15 = getelementptr i8, ptr %pnetid1, i32 15
  %115 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %arrayidx.15, align 1
  %117 = zext i8 %116 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values.59)
  switch i8 %116, label %for.cond.14.if.end.15_crit_edge [
    i8 0, label %for.cond.14.land.lhs.true.15_crit_edge
    i8 32, label %for.cond.14.land.lhs.true.15_crit_edge66
  ]

for.cond.14.land.lhs.true.15_crit_edge66:         ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.15

for.cond.14.land.lhs.true.15_crit_edge:           ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true.15

for.cond.14.if.end.15_crit_edge:                  ; preds = %for.cond.14
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.15

land.lhs.true.15:                                 ; preds = %for.cond.14.land.lhs.true.15_crit_edge, %for.cond.14.land.lhs.true.15_crit_edge66
  %arrayidx7.15 = getelementptr i8, ptr %pnetid2, i32 15
  %118 = ptrtoint ptr %arrayidx7.15 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx7.15, align 1
  %120 = zext i8 %119 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.60)
  switch i8 %119, label %land.lhs.true.15.if.end.15_crit_edge [
    i8 0, label %land.lhs.true.15.cleanup_crit_edge
    i8 32, label %land.lhs.true.15.cleanup_crit_edge67
  ]

land.lhs.true.15.cleanup_crit_edge67:             ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.15.cleanup_crit_edge:               ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.15.if.end.15_crit_edge:             ; preds = %land.lhs.true.15
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.15

if.end.15:                                        ; preds = %land.lhs.true.15.if.end.15_crit_edge, %for.cond.14.if.end.15_crit_edge
  %arrayidx18.15 = getelementptr i8, ptr %pnetid2, i32 15
  %121 = ptrtoint ptr %arrayidx18.15 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %arrayidx18.15, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %116, i8 %122)
  %cmp20.not.15 = icmp eq i8 %116, %122
  br label %cleanup

land.lhs.true:                                    ; preds = %entry.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge37
  %123 = ptrtoint ptr %pnetid2 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %pnetid2, align 1
  %125 = zext i8 %124 to i64
  call void @__sanitizer_cov_trace_switch(i64 %125, ptr @__sancov_gen_cov_switch_values.61)
  switch i8 %124, label %land.lhs.true.if.end_crit_edge [
    i8 0, label %land.lhs.true.cleanup_crit_edge
    i8 32, label %land.lhs.true.cleanup_crit_edge68
  ]

land.lhs.true.cleanup_crit_edge68:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %126 = ptrtoint ptr %pnetid2 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %pnetid2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %127)
  %cmp20.not = icmp eq i8 %1, %127
  br i1 %cmp20.not, label %for.cond, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge68, %if.end.15, %land.lhs.true.15.cleanup_crit_edge, %land.lhs.true.15.cleanup_crit_edge67, %if.end.14.cleanup_crit_edge, %land.lhs.true.14.cleanup_crit_edge, %land.lhs.true.14.cleanup_crit_edge65, %if.end.13.cleanup_crit_edge, %land.lhs.true.13.cleanup_crit_edge, %land.lhs.true.13.cleanup_crit_edge63, %if.end.12.cleanup_crit_edge, %land.lhs.true.12.cleanup_crit_edge, %land.lhs.true.12.cleanup_crit_edge61, %if.end.11.cleanup_crit_edge, %land.lhs.true.11.cleanup_crit_edge, %land.lhs.true.11.cleanup_crit_edge59, %if.end.10.cleanup_crit_edge, %land.lhs.true.10.cleanup_crit_edge, %land.lhs.true.10.cleanup_crit_edge57, %if.end.9.cleanup_crit_edge, %land.lhs.true.9.cleanup_crit_edge, %land.lhs.true.9.cleanup_crit_edge55, %if.end.8.cleanup_crit_edge, %land.lhs.true.8.cleanup_crit_edge, %land.lhs.true.8.cleanup_crit_edge53, %if.end.7.cleanup_crit_edge, %land.lhs.true.7.cleanup_crit_edge, %land.lhs.true.7.cleanup_crit_edge51, %if.end.6.cleanup_crit_edge, %land.lhs.true.6.cleanup_crit_edge, %land.lhs.true.6.cleanup_crit_edge49, %if.end.5.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge, %land.lhs.true.5.cleanup_crit_edge47, %if.end.4.cleanup_crit_edge, %land.lhs.true.4.cleanup_crit_edge, %land.lhs.true.4.cleanup_crit_edge45, %if.end.3.cleanup_crit_edge, %land.lhs.true.3.cleanup_crit_edge, %land.lhs.true.3.cleanup_crit_edge43, %if.end.2.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge, %land.lhs.true.2.cleanup_crit_edge41, %if.end.1.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge39
  %retval.0 = phi i1 [ false, %if.end.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge ], [ true, %land.lhs.true.cleanup_crit_edge68 ], [ true, %land.lhs.true.1.cleanup_crit_edge ], [ true, %land.lhs.true.1.cleanup_crit_edge39 ], [ false, %if.end.1.cleanup_crit_edge ], [ true, %land.lhs.true.2.cleanup_crit_edge ], [ true, %land.lhs.true.2.cleanup_crit_edge41 ], [ false, %if.end.2.cleanup_crit_edge ], [ true, %land.lhs.true.3.cleanup_crit_edge ], [ true, %land.lhs.true.3.cleanup_crit_edge43 ], [ false, %if.end.3.cleanup_crit_edge ], [ true, %land.lhs.true.4.cleanup_crit_edge ], [ true, %land.lhs.true.4.cleanup_crit_edge45 ], [ false, %if.end.4.cleanup_crit_edge ], [ true, %land.lhs.true.5.cleanup_crit_edge ], [ true, %land.lhs.true.5.cleanup_crit_edge47 ], [ false, %if.end.5.cleanup_crit_edge ], [ true, %land.lhs.true.6.cleanup_crit_edge ], [ true, %land.lhs.true.6.cleanup_crit_edge49 ], [ false, %if.end.6.cleanup_crit_edge ], [ true, %land.lhs.true.7.cleanup_crit_edge ], [ true, %land.lhs.true.7.cleanup_crit_edge51 ], [ false, %if.end.7.cleanup_crit_edge ], [ true, %land.lhs.true.8.cleanup_crit_edge ], [ true, %land.lhs.true.8.cleanup_crit_edge53 ], [ false, %if.end.8.cleanup_crit_edge ], [ true, %land.lhs.true.9.cleanup_crit_edge ], [ true, %land.lhs.true.9.cleanup_crit_edge55 ], [ false, %if.end.9.cleanup_crit_edge ], [ true, %land.lhs.true.10.cleanup_crit_edge ], [ true, %land.lhs.true.10.cleanup_crit_edge57 ], [ false, %if.end.10.cleanup_crit_edge ], [ true, %land.lhs.true.11.cleanup_crit_edge ], [ true, %land.lhs.true.11.cleanup_crit_edge59 ], [ false, %if.end.11.cleanup_crit_edge ], [ true, %land.lhs.true.12.cleanup_crit_edge ], [ true, %land.lhs.true.12.cleanup_crit_edge61 ], [ false, %if.end.12.cleanup_crit_edge ], [ true, %land.lhs.true.13.cleanup_crit_edge ], [ true, %land.lhs.true.13.cleanup_crit_edge63 ], [ false, %if.end.13.cleanup_crit_edge ], [ true, %land.lhs.true.14.cleanup_crit_edge ], [ true, %land.lhs.true.14.cleanup_crit_edge65 ], [ false, %if.end.14.cleanup_crit_edge ], [ true, %land.lhs.true.15.cleanup_crit_edge ], [ true, %land.lhs.true.15.cleanup_crit_edge67 ], [ %cmp20.not.15, %if.end.15 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_pnet_net_init(ptr noundef %net) local_unnamed_addr #1 align 64 {
entry:
  %lower.i.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_net_id to i32))
  %0 = load i32, ptr @smc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %pnetids_ndev2 = getelementptr inbounds %struct.smc_net, ptr %call, i32 0, i32 1
  %pnetlist = getelementptr inbounds %struct.smc_pnettable, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %pnetlist to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %pnetlist, ptr %pnetlist, align 4
  %prev.i = getelementptr inbounds %struct.smc_pnettable, ptr %call, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pnetlist, ptr %prev.i, align 4
  tail call void @__mutex_init(ptr noundef %call, ptr noundef nonnull @.str, ptr noundef nonnull @smc_pnet_net_init.__key) #15
  %3 = ptrtoint ptr %pnetids_ndev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %pnetids_ndev2, ptr %pnetids_ndev2, align 4
  %prev.i11 = getelementptr inbounds %struct.smc_net, ptr %call, i32 0, i32 1, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pnetids_ndev2, ptr %prev.i11, align 4
  %lock4 = getelementptr inbounds %struct.smc_net, ptr %call, i32 0, i32 1, i32 1
  tail call void @__rwlock_init(ptr noundef %lock4, ptr noundef nonnull @.str.2, ptr noundef nonnull @smc_pnet_net_init.__key.1) #15
  tail call void @rtnl_lock() #15
  %dev_base_head.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 16
  %5 = ptrtoint ptr %dev_base_head.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn11.i = load ptr, ptr %dev_base_head.i, align 4
  %cmp.not12.i = icmp eq ptr %.pn11.i, %dev_base_head.i
  br i1 %cmp.not12.i, label %entry.smc_pnet_create_pnetids_list.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.smc_pnet_create_pnetids_list.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_create_pnetids_list.exit

for.body.i:                                       ; preds = %smc_pnet_add_base_pnetid.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn13.i = phi ptr [ %.pn.i, %smc_pnet_add_base_pnetid.exit.i.for.body.i_crit_edge ], [ %.pn11.i, %entry.for.body.i_crit_edge ]
  %dev.0.i = getelementptr i8, ptr %.pn13.i, i32 -40
  %call.i.i.i = call i32 @rtnl_is_locked() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %for.body.i.if.end29.i.i.i_crit_edge

for.body.i.if.end29.i.i.i_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i.i.i

land.rhs.i.i.i:                                   ; preds = %for.body.i
  %.b52.i.i.i = load i1, ptr @__pnet_find_base_ndev.__already_done, align 1
  br i1 %.b52.i.i.i, label %land.rhs.i.i.i.if.end29.i.i.i_crit_edge, label %if.then.i.i.i, !prof !94

land.rhs.i.i.i.if.end29.i.i.i_crit_edge:          ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__pnet_find_base_ndev.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 908, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 908) #15
  br label %if.end29.i.i.i

if.end29.i.i.i:                                   ; preds = %if.then.i.i.i, %land.rhs.i.i.i.if.end29.i.i.i_crit_edge, %for.body.i.if.end29.i.i.i_crit_edge
  %lower_level.i.i.i = getelementptr i8, ptr %.pn13.i, i32 359
  %6 = ptrtoint ptr %lower_level.i.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %lower_level.i.i.i, align 1
  %conv.i.i.i = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp59.not.i.i.i = icmp eq i8 %7, 0
  br i1 %cmp59.not.i.i.i, label %if.end29.i.i.i.smc_pnet_add_base_pnetid.exit.i_crit_edge, label %if.end29.i.i.i.for.body.i.i.i_crit_edge

if.end29.i.i.i.for.body.i.i.i_crit_edge:          ; preds = %if.end29.i.i.i
  br label %for.body.i.i.i

if.end29.i.i.i.smc_pnet_add_base_pnetid.exit.i_crit_edge: ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_add_base_pnetid.exit.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end29.i.i.i.for.body.i.i.i_crit_edge
  %ndev.addr.061.i.i.i = phi ptr [ %call43.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %dev.0.i, %if.end29.i.i.i.for.body.i.i.i_crit_edge ]
  %i.060.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end29.i.i.i.for.body.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lower.i.i.i) #15
  %lower38.i.i.i = getelementptr inbounds %struct.net_device, ptr %ndev.addr.061.i.i.i, i32 0, i32 13, i32 1
  %8 = ptrtoint ptr %lower38.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %lower38.i.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %9, %lower38.i.i.i
  br i1 %cmp.i.not.i.i.i, label %cleanup.i.i.i, label %for.inc.i.i.i

cleanup.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lower.i.i.i) #15
  br label %smc_pnet_add_base_pnetid.exit.i

for.inc.i.i.i:                                    ; preds = %for.body.i.i.i
  %10 = ptrtoint ptr %lower.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %lower.i.i.i, align 4
  %call43.i.i.i = call ptr @netdev_lower_get_next(ptr noundef %ndev.addr.061.i.i.i, ptr noundef nonnull %lower.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lower.i.i.i) #15
  %inc.i.i.i = add nuw nsw i32 %i.060.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, %conv.i.i.i
  br i1 %exitcond.not.i.i.i, label %for.inc.i.i.i.smc_pnet_add_base_pnetid.exit.i_crit_edge, label %for.inc.i.i.i.for.body.i.i.i_crit_edge

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i.i

for.inc.i.i.i.smc_pnet_add_base_pnetid.exit.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_add_base_pnetid.exit.i

smc_pnet_add_base_pnetid.exit.i:                  ; preds = %for.inc.i.i.i.smc_pnet_add_base_pnetid.exit.i_crit_edge, %cleanup.i.i.i, %if.end29.i.i.i.smc_pnet_add_base_pnetid.exit.i_crit_edge
  %11 = ptrtoint ptr %.pn13.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn.i = load ptr, ptr %.pn13.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %dev_base_head.i
  br i1 %cmp.not.i, label %smc_pnet_add_base_pnetid.exit.i.smc_pnet_create_pnetids_list.exit_crit_edge, label %smc_pnet_add_base_pnetid.exit.i.for.body.i_crit_edge

smc_pnet_add_base_pnetid.exit.i.for.body.i_crit_edge: ; preds = %smc_pnet_add_base_pnetid.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

smc_pnet_add_base_pnetid.exit.i.smc_pnet_create_pnetids_list.exit_crit_edge: ; preds = %smc_pnet_add_base_pnetid.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_create_pnetids_list.exit

smc_pnet_create_pnetids_list.exit:                ; preds = %smc_pnet_add_base_pnetid.exit.i.smc_pnet_create_pnetids_list.exit_crit_edge, %entry.smc_pnet_create_pnetids_list.exit_crit_edge
  call void @rtnl_unlock() #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_pnet_init() local_unnamed_addr #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @genl_register_family(ptr noundef nonnull @smc_pnet_nl_family) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @smc_netdev_notifier) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  %call4 = tail call i32 @genl_unregister_family(ptr noundef nonnull @smc_pnet_nl_family) #15
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_pnet_net_exit(ptr noundef %net) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @smc_pnet_remove_by_pnetid(ptr noundef %net, ptr noundef null)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_net_id to i32))
  %0 = load i32, ptr @smc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0) #15
  %pnetids_ndev.i = getelementptr inbounds %struct.smc_net, ptr %call.i, i32 0, i32 1
  %lock.i = getelementptr inbounds %struct.smc_net, ptr %call.i, i32 0, i32 1, i32 1
  tail call void @_raw_write_lock(ptr noundef %lock.i) #15
  %1 = ptrtoint ptr %pnetids_ndev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pnetids_ndev.i, align 4
  %cmp.not25.i = icmp eq ptr %2, %pnetids_ndev.i
  br i1 %cmp.not25.i, label %entry.smc_pnet_destroy_pnetids_list.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.smc_pnet_destroy_pnetids_list.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_destroy_pnetids_list.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %pe.026.i = phi ptr [ %temp_pe.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %2, %entry.for.body.i_crit_edge ]
  %3 = ptrtoint ptr %pe.026.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %temp_pe.0.i = load ptr, ptr %pe.026.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pe.026.i) #15
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %pe.026.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %pe.026.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pe.026.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %10 = ptrtoint ptr %pe.026.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %pe.026.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pe.026.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %pe.026.i) #15
  %cmp.not.i = icmp eq ptr %temp_pe.0.i, %pnetids_ndev.i
  br i1 %cmp.not.i, label %list_del.exit.i.smc_pnet_destroy_pnetids_list.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

list_del.exit.i.smc_pnet_destroy_pnetids_list.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_destroy_pnetids_list.exit

smc_pnet_destroy_pnetids_list.exit:               ; preds = %list_del.exit.i.smc_pnet_destroy_pnetids_list.exit_crit_edge, %entry.smc_pnet_destroy_pnetids_list.exit_crit_edge
  tail call void @_raw_write_unlock(ptr noundef %lock.i) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @smc_pnet_remove_by_pnetid(ptr noundef %net, ptr noundef readonly %pnet_name) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_net_id to i32))
  %0 = load i32, ptr @smc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  tail call void @mutex_lock_nested(ptr noundef %call, i32 noundef 0) #15
  %pnetlist = getelementptr inbounds %struct.smc_pnettable, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %pnetlist to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pnetlist, align 4
  %cmp.not174 = icmp eq ptr %2, %pnetlist
  br i1 %cmp.not174, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %pnet_name, null
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pnetelem.0176 = phi ptr [ %2, %for.body.lr.ph ], [ %tmp_pe.0179, %for.inc.for.body_crit_edge ]
  %rc.0175 = phi i32 [ -2, %for.body.lr.ph ], [ %rc.1, %for.inc.for.body_crit_edge ]
  %3 = ptrtoint ptr %pnetelem.0176 to i32
  call void @__asan_load4_noabort(i32 %3)
  %tmp_pe.0179 = load ptr, ptr %pnetelem.0176, align 4
  br i1 %tobool.not, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %pnet_name8 = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.0176, i32 0, i32 1
  %call9 = tail call fastcc zeroext i1 @smc_pnet_match(ptr noundef %pnet_name8, ptr noundef nonnull %pnet_name)
  br i1 %call9, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %pnetelem.0176) #15
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %pnetelem.0176, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %pnetelem.0176 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pnetelem.0176, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %10 = ptrtoint ptr %pnetelem.0176 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %pnetelem.0176, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %pnetelem.0176, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %type = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.0176, i32 0, i32 2
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp11 = icmp eq i32 %13, 1
  br i1 %cmp11, label %land.lhs.true, label %list_del.exit.if.end23_crit_edge

list_del.exit.if.end23_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

land.lhs.true:                                    ; preds = %list_del.exit
  %14 = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.0176, i32 0, i32 3
  %ndev = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.0176, i32 0, i32 3, i32 0, i32 1
  %15 = ptrtoint ptr %ndev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ndev, align 4
  %tobool12.not = icmp eq ptr %16, null
  br i1 %tobool12.not, label %land.lhs.true.if.end23_crit_edge, label %do.body1.i.i

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

do.body1.i.i:                                     ; preds = %land.lhs.true
  %dev_tracker = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.0176, i32 0, i32 3, i32 0, i32 2
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 119
  %call.i.i171 = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #15
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !95
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %16, i32 0, i32 118
  %18 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %20 = ptrtoint ptr %19 to i32
  %21 = tail call i32 @llvm.read_register.i32(metadata !82) #15
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
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !96
  %and.i.i.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put_track.exit_crit_edge, !prof !97

do.body1.i.i.dev_put_track.exit_crit_edge:        ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put_track.exit

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %if.then28.i.i, %do.body1.i.i.dev_put_track.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %17) #15, !srcloc !98
  %call15 = tail call i32 @___ratelimit(ptr noundef nonnull @smc_pnet_remove_by_pnetid._rs, ptr noundef nonnull @__func__.smc_pnet_remove_by_pnetid) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %dev_put_track.exit.if.end23_crit_edge, label %do.end

dev_put_track.exit.if.end23_crit_edge:            ; preds = %dev_put_track.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end23

do.end:                                           ; preds = %dev_put_track.exit
  call void @__sanitizer_cov_trace_pc() #17
  %pnet_name20 = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.0176, i32 0, i32 1
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef %14, ptr noundef %pnet_name20) #18
  br label %if.end23

if.end23:                                         ; preds = %do.end, %dev_put_track.exit.if.end23_crit_edge, %land.lhs.true.if.end23_crit_edge, %list_del.exit.if.end23_crit_edge
  tail call void @kfree(ptr noundef %pnetelem.0176) #15
  br label %for.inc

for.inc:                                          ; preds = %if.end23, %lor.lhs.false.for.inc_crit_edge
  %rc.1 = phi i32 [ 0, %if.end23 ], [ %rc.0175, %lor.lhs.false.for.inc_crit_edge ]
  %cmp.not = icmp eq ptr %tmp_pe.0179, %pnetlist
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %rc.0.lcssa = phi i32 [ -2, %entry.for.end_crit_edge ], [ %rc.1, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %call) #15
  %cmp31.not = icmp eq ptr %net, @init_net
  br i1 %cmp31.not, label %if.end33, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end33:                                         ; preds = %for.end
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1), i32 noundef 0) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_ib_devices to i32))
  %ibdev.0185 = load ptr, ptr @smc_ib_devices, align 4
  %cmp39.not186 = icmp eq ptr %ibdev.0185, @smc_ib_devices
  br i1 %cmp39.not186, label %if.end33.for.end81_crit_edge, label %for.cond42.preheader.lr.ph

if.end33.for.end81_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end81

for.cond42.preheader.lr.ph:                       ; preds = %if.end33
  %tobool47.not = icmp eq ptr %pnet_name, null
  br label %for.cond42.preheader

for.cond42.preheader:                             ; preds = %for.inc73.1.for.cond42.preheader_crit_edge, %for.cond42.preheader.lr.ph
  %ibdev.0188 = phi ptr [ %ibdev.0185, %for.cond42.preheader.lr.ph ], [ %ibdev.0, %for.inc73.1.for.cond42.preheader_crit_edge ]
  %rc.2187 = phi i32 [ %rc.0.lcssa, %for.cond42.preheader.lr.ph ], [ %rc.4.1, %for.inc73.1.for.cond42.preheader_crit_edge ]
  %ibdev60 = getelementptr inbounds %struct.smc_ib_device, ptr %ibdev.0188, i32 0, i32 1
  %arrayidx = getelementptr %struct.smc_ib_device, ptr %ibdev.0188, i32 0, i32 10, i32 0
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool45.not = icmp eq i8 %32, 0
  br i1 %tobool45.not, label %for.cond42.preheader.for.inc73_crit_edge, label %land.lhs.true46

for.cond42.preheader.for.inc73_crit_edge:         ; preds = %for.cond42.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc73

land.lhs.true46:                                  ; preds = %for.cond42.preheader
  br i1 %tobool47.not, label %land.lhs.true46.if.then52_crit_edge, label %lor.lhs.false48

land.lhs.true46.if.then52_crit_edge:              ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then52

lor.lhs.false48:                                  ; preds = %land.lhs.true46
  %arrayidx49 = getelementptr %struct.smc_ib_device, ptr %ibdev.0188, i32 0, i32 9, i32 0
  %call51 = tail call fastcc zeroext i1 @smc_pnet_match(ptr noundef nonnull %pnet_name, ptr noundef %arrayidx49)
  br i1 %call51, label %lor.lhs.false48.if.then52_crit_edge, label %for.inc73.thread

lor.lhs.false48.if.then52_crit_edge:              ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then52

if.then52:                                        ; preds = %lor.lhs.false48.if.then52_crit_edge, %land.lhs.true46.if.then52_crit_edge
  %call53 = tail call i32 @___ratelimit(ptr noundef nonnull @smc_pnet_remove_by_pnetid._rs.22, ptr noundef nonnull @__func__.smc_pnet_remove_by_pnetid) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.then52.if.end66_crit_edge, label %do.end58

if.then52.if.end66_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66

do.end58:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #17
  %33 = ptrtoint ptr %ibdev60 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ibdev60, align 8
  %name = getelementptr inbounds %struct.ib_device, ptr %34, i32 0, i32 2
  %arrayidx63 = getelementptr %struct.smc_ib_device, ptr %ibdev.0188, i32 0, i32 9, i32 0
  %call65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name, i32 noundef 1, ptr noundef %arrayidx63) #18
  br label %if.end66

if.end66:                                         ; preds = %do.end58, %if.then52.if.end66_crit_edge
  %arrayidx68 = getelementptr %struct.smc_ib_device, ptr %ibdev.0188, i32 0, i32 9, i32 0
  %35 = call ptr @memset(ptr %arrayidx68, i32 0, i32 16)
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %arrayidx, align 1
  br label %for.inc73

for.inc73:                                        ; preds = %if.end66, %for.cond42.preheader.for.inc73_crit_edge
  %rc.4 = phi i32 [ 0, %if.end66 ], [ %rc.2187, %for.cond42.preheader.for.inc73_crit_edge ]
  %arrayidx.1 = getelementptr %struct.smc_ib_device, ptr %ibdev.0188, i32 0, i32 10, i32 1
  %37 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.1, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool45.not.1 = icmp eq i8 %38, 0
  br i1 %tobool45.not.1, label %for.inc73.for.inc73.1_crit_edge, label %land.lhs.true46.1

for.inc73.for.inc73.1_crit_edge:                  ; preds = %for.inc73
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc73.1

for.inc73.thread:                                 ; preds = %lor.lhs.false48
  %arrayidx.1196 = getelementptr %struct.smc_ib_device, ptr %ibdev.0188, i32 0, i32 10, i32 1
  %39 = ptrtoint ptr %arrayidx.1196 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.1196, align 1, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool45.not.1197 = icmp eq i8 %40, 0
  br i1 %tobool45.not.1197, label %for.inc73.thread.for.inc73.1_crit_edge, label %for.inc73.thread.lor.lhs.false48.1_crit_edge

for.inc73.thread.lor.lhs.false48.1_crit_edge:     ; preds = %for.inc73.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false48.1

for.inc73.thread.for.inc73.1_crit_edge:           ; preds = %for.inc73.thread
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc73.1

land.lhs.true46.1:                                ; preds = %for.inc73
  br i1 %tobool47.not, label %land.lhs.true46.1.if.then52.1_crit_edge, label %land.lhs.true46.1.lor.lhs.false48.1_crit_edge

land.lhs.true46.1.lor.lhs.false48.1_crit_edge:    ; preds = %land.lhs.true46.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %lor.lhs.false48.1

land.lhs.true46.1.if.then52.1_crit_edge:          ; preds = %land.lhs.true46.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then52.1

lor.lhs.false48.1:                                ; preds = %land.lhs.true46.1.lor.lhs.false48.1_crit_edge, %for.inc73.thread.lor.lhs.false48.1_crit_edge
  %rc.4198204 = phi i32 [ %rc.4, %land.lhs.true46.1.lor.lhs.false48.1_crit_edge ], [ %rc.2187, %for.inc73.thread.lor.lhs.false48.1_crit_edge ]
  %arrayidx.1199202 = phi ptr [ %arrayidx.1, %land.lhs.true46.1.lor.lhs.false48.1_crit_edge ], [ %arrayidx.1196, %for.inc73.thread.lor.lhs.false48.1_crit_edge ]
  %arrayidx49.1 = getelementptr %struct.smc_ib_device, ptr %ibdev.0188, i32 0, i32 9, i32 1
  %call51.1 = tail call fastcc zeroext i1 @smc_pnet_match(ptr noundef nonnull %pnet_name, ptr noundef %arrayidx49.1)
  br i1 %call51.1, label %lor.lhs.false48.1.if.then52.1_crit_edge, label %lor.lhs.false48.1.for.inc73.1_crit_edge

lor.lhs.false48.1.for.inc73.1_crit_edge:          ; preds = %lor.lhs.false48.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc73.1

lor.lhs.false48.1.if.then52.1_crit_edge:          ; preds = %lor.lhs.false48.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then52.1

if.then52.1:                                      ; preds = %lor.lhs.false48.1.if.then52.1_crit_edge, %land.lhs.true46.1.if.then52.1_crit_edge
  %arrayidx.1199203 = phi ptr [ %arrayidx.1199202, %lor.lhs.false48.1.if.then52.1_crit_edge ], [ %arrayidx.1, %land.lhs.true46.1.if.then52.1_crit_edge ]
  %call53.1 = tail call i32 @___ratelimit(ptr noundef nonnull @smc_pnet_remove_by_pnetid._rs.22, ptr noundef nonnull @__func__.smc_pnet_remove_by_pnetid) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53.1)
  %tobool54.not.1 = icmp eq i32 %call53.1, 0
  br i1 %tobool54.not.1, label %if.then52.1.if.end66.1_crit_edge, label %do.end58.1

if.then52.1.if.end66.1_crit_edge:                 ; preds = %if.then52.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end66.1

do.end58.1:                                       ; preds = %if.then52.1
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %ibdev60 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ibdev60, align 8
  %name.1 = getelementptr inbounds %struct.ib_device, ptr %42, i32 0, i32 2
  %arrayidx63.1 = getelementptr %struct.smc_ib_device, ptr %ibdev.0188, i32 0, i32 9, i32 1
  %call65.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name.1, i32 noundef 2, ptr noundef %arrayidx63.1) #18
  br label %if.end66.1

if.end66.1:                                       ; preds = %do.end58.1, %if.then52.1.if.end66.1_crit_edge
  %arrayidx68.1 = getelementptr %struct.smc_ib_device, ptr %ibdev.0188, i32 0, i32 9, i32 1
  %43 = call ptr @memset(ptr %arrayidx68.1, i32 0, i32 16)
  %44 = ptrtoint ptr %arrayidx.1199203 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %arrayidx.1199203, align 1
  br label %for.inc73.1

for.inc73.1:                                      ; preds = %if.end66.1, %lor.lhs.false48.1.for.inc73.1_crit_edge, %for.inc73.thread.for.inc73.1_crit_edge, %for.inc73.for.inc73.1_crit_edge
  %rc.4.1 = phi i32 [ 0, %if.end66.1 ], [ %rc.4198204, %lor.lhs.false48.1.for.inc73.1_crit_edge ], [ %rc.4, %for.inc73.for.inc73.1_crit_edge ], [ %rc.2187, %for.inc73.thread.for.inc73.1_crit_edge ]
  %45 = ptrtoint ptr %ibdev.0188 to i32
  call void @__asan_load4_noabort(i32 %45)
  %ibdev.0 = load ptr, ptr %ibdev.0188, align 4
  %cmp39.not = icmp eq ptr %ibdev.0, @smc_ib_devices
  br i1 %cmp39.not, label %for.inc73.1.for.end81_crit_edge, label %for.inc73.1.for.cond42.preheader_crit_edge

for.inc73.1.for.cond42.preheader_crit_edge:       ; preds = %for.inc73.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond42.preheader

for.inc73.1.for.end81_crit_edge:                  ; preds = %for.inc73.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end81

for.end81:                                        ; preds = %for.inc73.1.for.end81_crit_edge, %if.end33.for.end81_crit_edge
  %rc.2.lcssa = phi i32 [ %rc.0.lcssa, %if.end33.for.end81_crit_edge ], [ %rc.4.1, %for.inc73.1.for.end81_crit_edge ]
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1)) #15
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1), i32 noundef 0) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smcd_dev_list to i32))
  %.pn190 = load ptr, ptr @smcd_dev_list, align 4
  %cmp87.not191 = icmp eq ptr %.pn190, @smcd_dev_list
  br i1 %cmp87.not191, label %for.end81.for.end121_crit_edge, label %for.body89.lr.ph

for.end81.for.end121_crit_edge:                   ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end121

for.body89.lr.ph:                                 ; preds = %for.end81
  %tobool93.not = icmp eq ptr %pnet_name, null
  br label %for.body89

for.body89:                                       ; preds = %for.inc115.for.body89_crit_edge, %for.body89.lr.ph
  %.pn193 = phi ptr [ %.pn190, %for.body89.lr.ph ], [ %.pn, %for.inc115.for.body89_crit_edge ]
  %rc.5192 = phi i32 [ %rc.2.lcssa, %for.body89.lr.ph ], [ %rc.6, %for.inc115.for.body89_crit_edge ]
  %pnetid_by_user90 = getelementptr i8, ptr %.pn193, i32 84
  %46 = ptrtoint ptr %pnetid_by_user90 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %pnetid_by_user90, align 4, !range !99
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool91.not = icmp eq i8 %47, 0
  br i1 %tobool91.not, label %for.body89.for.inc115_crit_edge, label %land.lhs.true92

for.body89.for.inc115_crit_edge:                  ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc115

land.lhs.true92:                                  ; preds = %for.body89
  br i1 %tobool93.not, label %land.lhs.true92.if.then98_crit_edge, label %lor.lhs.false94

land.lhs.true92.if.then98_crit_edge:              ; preds = %land.lhs.true92
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then98

lor.lhs.false94:                                  ; preds = %land.lhs.true92
  %pnetid95 = getelementptr i8, ptr %.pn193, i32 68
  %call97 = tail call fastcc zeroext i1 @smc_pnet_match(ptr noundef nonnull %pnet_name, ptr noundef %pnetid95)
  br i1 %call97, label %lor.lhs.false94.if.then98_crit_edge, label %lor.lhs.false94.for.inc115_crit_edge

lor.lhs.false94.for.inc115_crit_edge:             ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc115

lor.lhs.false94.if.then98_crit_edge:              ; preds = %lor.lhs.false94
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then98

if.then98:                                        ; preds = %lor.lhs.false94.if.then98_crit_edge, %land.lhs.true92.if.then98_crit_edge
  %call99 = tail call i32 @___ratelimit(ptr noundef nonnull @smc_pnet_remove_by_pnetid._rs.26, ptr noundef nonnull @__func__.smc_pnet_remove_by_pnetid) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.then98.if.end110_crit_edge, label %do.end104

if.then98.if.end110_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end110

do.end104:                                        ; preds = %if.then98
  %init_name.i = getelementptr i8, ptr %.pn193, i32 -800
  %48 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i172 = icmp eq ptr %49, null
  br i1 %tobool.not.i172, label %if.end.i, label %do.end104.dev_name.exit_crit_edge

do.end104.dev_name.exit_crit_edge:                ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end104
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr i8, ptr %.pn193, i32 -944
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end104.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %51, %if.end.i ], [ %49, %do.end104.dev_name.exit_crit_edge ]
  %pnetid107 = getelementptr i8, ptr %.pn193, i32 68
  %call109 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %retval.0.i, ptr noundef %pnetid107) #18
  br label %if.end110

if.end110:                                        ; preds = %dev_name.exit, %if.then98.if.end110_crit_edge
  %pnetid111 = getelementptr i8, ptr %.pn193, i32 68
  %52 = call ptr @memset(ptr %pnetid111, i32 0, i32 17)
  br label %for.inc115

for.inc115:                                       ; preds = %if.end110, %lor.lhs.false94.for.inc115_crit_edge, %for.body89.for.inc115_crit_edge
  %rc.6 = phi i32 [ 0, %if.end110 ], [ %rc.5192, %lor.lhs.false94.for.inc115_crit_edge ], [ %rc.5192, %for.body89.for.inc115_crit_edge ]
  %53 = ptrtoint ptr %.pn193 to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn = load ptr, ptr %.pn193, align 4
  %cmp87.not = icmp eq ptr %.pn, @smcd_dev_list
  br i1 %cmp87.not, label %for.inc115.for.end121_crit_edge, label %for.inc115.for.body89_crit_edge

for.inc115.for.body89_crit_edge:                  ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body89

for.inc115.for.end121_crit_edge:                  ; preds = %for.inc115
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end121

for.end121:                                       ; preds = %for.inc115.for.end121_crit_edge, %for.end81.for.end121_crit_edge
  %rc.5.lcssa = phi i32 [ %rc.2.lcssa, %for.end81.for.end121_crit_edge ], [ %rc.6, %for.inc115.for.end121_crit_edge ]
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1)) #15
  br label %cleanup

cleanup:                                          ; preds = %for.end121, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.5.lcssa, %for.end121 ], [ %rc.0.lcssa, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_pnet_exit() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @smc_netdev_notifier) #15
  %call1 = tail call i32 @genl_unregister_family(ptr noundef nonnull @smc_pnet_nl_family) #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_pnet_find_alt_roce(ptr nocapture noundef readonly %lgr, ptr noundef %ini, ptr noundef %known_dev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %net1 = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 27
  %0 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net1, align 4
  %pnet_id = getelementptr inbounds %struct.smc_link_group, ptr %lgr, i32 0, i32 21, i32 0, i32 9
  tail call fastcc void @_smc_pnet_find_roce_by_pnetid(ptr noundef %pnet_id, ptr noundef %ini, ptr noundef %known_dev, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_smc_pnet_find_roce_by_pnetid(ptr nocapture noundef readonly %pnet_id, ptr noundef %ini, ptr noundef readnone %known_dev, ptr noundef %net) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1), i32 noundef 0) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_ib_devices to i32))
  %ibdev.054 = load ptr, ptr @smc_ib_devices, align 4
  %cmp.not55 = icmp eq ptr %ibdev.054, @smc_ib_devices
  br i1 %cmp.not55, label %entry.out_crit_edge, label %for.body.lr.ph

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

for.body.lr.ph:                                   ; preds = %entry
  %check_smcrv2.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 9
  %vlan_id.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 5
  %ib_gid.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 14
  %smcrv2.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17
  %ib_gid_v2.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc24.for.body_crit_edge, %for.body.lr.ph
  %ibdev.056 = phi ptr [ %ibdev.054, %for.body.lr.ph ], [ %ibdev.0, %for.inc24.for.body_crit_edge ]
  %cmp1 = icmp eq ptr %ibdev.056, %known_dev
  br i1 %cmp1, label %for.body.for.inc24_crit_edge, label %lor.lhs.false

for.body.for.inc24_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc24

lor.lhs.false:                                    ; preds = %for.body
  %ibdev2 = getelementptr inbounds %struct.smc_ib_device, ptr %ibdev.056, i32 0, i32 1
  %0 = ptrtoint ptr %ibdev2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibdev2, align 8
  %call = tail call zeroext i1 @rdma_dev_access_netns(ptr noundef %1, ptr noundef %net) #15
  br i1 %call, label %for.cond3.preheader, label %lor.lhs.false.for.inc24_crit_edge

lor.lhs.false.for.inc24_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc24

for.cond3.preheader:                              ; preds = %lor.lhs.false
  %ports_going_away = getelementptr inbounds %struct.smc_ib_device, ptr %ibdev.056, i32 0, i32 14
  %2 = ptrtoint ptr %ibdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibdev2, align 8
  %is_switch.i.i.i = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 19
  %4 = ptrtoint ptr %is_switch.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i.i.i = load i8, ptr %is_switch.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i)
  %tobool.i.i.i = icmp slt i8 %bf.load.i.i.i, 0
  br i1 %tobool.i.i.i, label %for.cond3.preheader.for.inc_crit_edge, label %rdma_is_port_valid.exit

for.cond3.preheader.for.inc_crit_edge:            ; preds = %for.cond3.preheader
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

rdma_is_port_valid.exit:                          ; preds = %for.cond3.preheader
  %phys_port_cnt.i.i = getelementptr inbounds %struct.ib_device, ptr %3, i32 0, i32 21
  %5 = ptrtoint ptr %phys_port_cnt.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phys_port_cnt.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.i.not = icmp eq i32 %6, 0
  br i1 %cmp2.i.not, label %rdma_is_port_valid.exit.for.inc_crit_edge, label %if.end9

rdma_is_port_valid.exit.for.inc_crit_edge:        ; preds = %rdma_is_port_valid.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end9:                                          ; preds = %rdma_is_port_valid.exit
  %arrayidx = getelementptr %struct.smc_ib_device, ptr %ibdev.056, i32 0, i32 9, i32 0
  %call10 = tail call fastcc zeroext i1 @smc_pnet_match(ptr noundef %arrayidx, ptr noundef %pnet_id)
  br i1 %call10, label %land.lhs.true, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end9
  %call11 = tail call zeroext i1 @smc_ib_port_active(ptr noundef %ibdev.056, i8 noundef zeroext 1) #15
  br i1 %call11, label %land.lhs.true13, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true13:                                  ; preds = %land.lhs.true
  %7 = ptrtoint ptr %ports_going_away to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %ports_going_away, align 4
  %9 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool17.not = icmp eq i32 %9, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true13.for.inc_crit_edge

land.lhs.true13.for.inc_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then18:                                        ; preds = %land.lhs.true13
  %10 = ptrtoint ptr %check_smcrv2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %check_smcrv2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then18.land.lhs.true6.i_crit_edge

if.then18.land.lhs.true6.i_crit_edge:             ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true6.i

land.lhs.true.i:                                  ; preds = %if.then18
  %12 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %vlan_id.i, align 2
  %call.i = tail call i32 @smc_ib_determine_gid(ptr noundef %ibdev.056, i8 noundef zeroext 1, i16 noundef zeroext %13, ptr noundef %ib_gid.i, ptr noundef null, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.then.i_crit_edge, label %if.end.i

land.lhs.true.i.if.then.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true.i.1.if.then.i_crit_edge, %land.lhs.true.i.if.then.i_crit_edge
  %i.051.lcssa = phi i8 [ 1, %land.lhs.true.i.if.then.i_crit_edge ], [ 2, %land.lhs.true.i.1.if.then.i_crit_edge ]
  %ib_dev.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 13
  %14 = ptrtoint ptr %ib_dev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ibdev.056, ptr %ib_dev.i, align 4
  %ib_port.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 15
  %15 = ptrtoint ptr %ib_port.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %i.051.lcssa, ptr %ib_port.i, align 8
  br label %out

if.end.i:                                         ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %check_smcrv2.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %.pr.i = load i8, ptr %check_smcrv2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool5.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool5.not.i, label %if.end.i.for.inc_crit_edge, label %if.end.i.land.lhs.true6.i_crit_edge

if.end.i.land.lhs.true6.i_crit_edge:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true6.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true6.i:                                 ; preds = %if.end.i.land.lhs.true6.i_crit_edge, %if.then18.land.lhs.true6.i_crit_edge
  %17 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vlan_id.i, align 2
  %call11.i = tail call i32 @smc_ib_determine_gid(ptr noundef %ibdev.056, i8 noundef zeroext 1, i16 noundef zeroext %18, ptr noundef %ib_gid_v2.i, ptr noundef null, ptr noundef %smcrv2.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %land.lhs.true6.i.if.then13.i_crit_edge, label %land.lhs.true6.i.for.inc_crit_edge

land.lhs.true6.i.for.inc_crit_edge:               ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true6.i.if.then13.i_crit_edge:           ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13.i

if.then13.i:                                      ; preds = %land.lhs.true6.i.1.if.then13.i_crit_edge, %land.lhs.true6.i.if.then13.i_crit_edge
  %i.051.lcssa57 = phi i8 [ 1, %land.lhs.true6.i.if.then13.i_crit_edge ], [ 2, %land.lhs.true6.i.1.if.then13.i_crit_edge ]
  %ib_dev_v2.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 3
  %19 = ptrtoint ptr %ib_dev_v2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ibdev.056, ptr %ib_dev_v2.i, align 4
  %ib_port_v2.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 4
  %20 = ptrtoint ptr %ib_port_v2.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %i.051.lcssa57, ptr %ib_port_v2.i, align 8
  br label %out

for.inc:                                          ; preds = %land.lhs.true6.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %land.lhs.true13.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %rdma_is_port_valid.exit.for.inc_crit_edge, %for.cond3.preheader.for.inc_crit_edge
  %21 = ptrtoint ptr %ibdev2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ibdev2, align 8
  %is_switch.i.i.i.1 = getelementptr inbounds %struct.ib_device, ptr %22, i32 0, i32 19
  %23 = ptrtoint ptr %is_switch.i.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load.i.i.i.1 = load i8, ptr %is_switch.i.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i.1)
  %tobool.i.i.i.1 = icmp slt i8 %bf.load.i.i.i.1, 0
  br i1 %tobool.i.i.i.1, label %for.inc.for.inc24_crit_edge, label %rdma_is_port_valid.exit.1

for.inc.for.inc24_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc24

rdma_is_port_valid.exit.1:                        ; preds = %for.inc
  %phys_port_cnt.i.i.1 = getelementptr inbounds %struct.ib_device, ptr %22, i32 0, i32 21
  %24 = ptrtoint ptr %phys_port_cnt.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phys_port_cnt.i.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp2.i.not.1 = icmp ult i32 %25, 2
  br i1 %cmp2.i.not.1, label %rdma_is_port_valid.exit.1.for.inc24_crit_edge, label %if.end9.1

rdma_is_port_valid.exit.1.for.inc24_crit_edge:    ; preds = %rdma_is_port_valid.exit.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc24

if.end9.1:                                        ; preds = %rdma_is_port_valid.exit.1
  %arrayidx.1 = getelementptr %struct.smc_ib_device, ptr %ibdev.056, i32 0, i32 9, i32 1
  %call10.1 = tail call fastcc zeroext i1 @smc_pnet_match(ptr noundef %arrayidx.1, ptr noundef %pnet_id)
  br i1 %call10.1, label %land.lhs.true.1, label %if.end9.1.for.inc24_crit_edge

if.end9.1.for.inc24_crit_edge:                    ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc24

land.lhs.true.1:                                  ; preds = %if.end9.1
  %call11.1 = tail call zeroext i1 @smc_ib_port_active(ptr noundef %ibdev.056, i8 noundef zeroext 2) #15
  br i1 %call11.1, label %land.lhs.true13.1, label %land.lhs.true.1.for.inc24_crit_edge

land.lhs.true.1.for.inc24_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc24

land.lhs.true13.1:                                ; preds = %land.lhs.true.1
  %26 = ptrtoint ptr %ports_going_away to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %ports_going_away, align 4
  %28 = and i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool17.not.1 = icmp eq i32 %28, 0
  br i1 %tobool17.not.1, label %if.then18.1, label %land.lhs.true13.1.for.inc24_crit_edge

land.lhs.true13.1.for.inc24_crit_edge:            ; preds = %land.lhs.true13.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc24

if.then18.1:                                      ; preds = %land.lhs.true13.1
  %29 = ptrtoint ptr %check_smcrv2.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %check_smcrv2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.1 = icmp eq i8 %30, 0
  br i1 %tobool.not.i.1, label %land.lhs.true.i.1, label %if.then18.1.land.lhs.true6.i.1_crit_edge

if.then18.1.land.lhs.true6.i.1_crit_edge:         ; preds = %if.then18.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true6.i.1

land.lhs.true.i.1:                                ; preds = %if.then18.1
  %31 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %vlan_id.i, align 2
  %call.i.1 = tail call i32 @smc_ib_determine_gid(ptr noundef %ibdev.056, i8 noundef zeroext 2, i16 noundef zeroext %32, ptr noundef %ib_gid.i, ptr noundef null, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1)
  %tobool1.not.i.1 = icmp eq i32 %call.i.1, 0
  br i1 %tobool1.not.i.1, label %land.lhs.true.i.1.if.then.i_crit_edge, label %if.end.i.1

land.lhs.true.i.1.if.then.i_crit_edge:            ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.end.i.1:                                       ; preds = %land.lhs.true.i.1
  %33 = ptrtoint ptr %check_smcrv2.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %.pr.i.1 = load i8, ptr %check_smcrv2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.1)
  %tobool5.not.i.1 = icmp eq i8 %.pr.i.1, 0
  br i1 %tobool5.not.i.1, label %if.end.i.1.for.inc24_crit_edge, label %if.end.i.1.land.lhs.true6.i.1_crit_edge

if.end.i.1.land.lhs.true6.i.1_crit_edge:          ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true6.i.1

if.end.i.1.for.inc24_crit_edge:                   ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc24

land.lhs.true6.i.1:                               ; preds = %if.end.i.1.land.lhs.true6.i.1_crit_edge, %if.then18.1.land.lhs.true6.i.1_crit_edge
  %34 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %vlan_id.i, align 2
  %call11.i.1 = tail call i32 @smc_ib_determine_gid(ptr noundef %ibdev.056, i8 noundef zeroext 2, i16 noundef zeroext %35, ptr noundef %ib_gid_v2.i, ptr noundef null, ptr noundef %smcrv2.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.1)
  %tobool12.not.i.1 = icmp eq i32 %call11.i.1, 0
  br i1 %tobool12.not.i.1, label %land.lhs.true6.i.1.if.then13.i_crit_edge, label %land.lhs.true6.i.1.for.inc24_crit_edge

land.lhs.true6.i.1.for.inc24_crit_edge:           ; preds = %land.lhs.true6.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc24

land.lhs.true6.i.1.if.then13.i_crit_edge:         ; preds = %land.lhs.true6.i.1
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13.i

for.inc24:                                        ; preds = %land.lhs.true6.i.1.for.inc24_crit_edge, %if.end.i.1.for.inc24_crit_edge, %land.lhs.true13.1.for.inc24_crit_edge, %land.lhs.true.1.for.inc24_crit_edge, %if.end9.1.for.inc24_crit_edge, %rdma_is_port_valid.exit.1.for.inc24_crit_edge, %for.inc.for.inc24_crit_edge, %lor.lhs.false.for.inc24_crit_edge, %for.body.for.inc24_crit_edge
  %36 = ptrtoint ptr %ibdev.056 to i32
  call void @__asan_load4_noabort(i32 %36)
  %ibdev.0 = load ptr, ptr %ibdev.056, align 4
  %cmp.not = icmp eq ptr %ibdev.0, @smc_ib_devices
  br i1 %cmp.not, label %for.inc24.out_crit_edge, label %for.inc24.for.body_crit_edge

for.inc24.for.body_crit_edge:                     ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc24.out_crit_edge:                          ; preds = %for.inc24
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

out:                                              ; preds = %for.inc24.out_crit_edge, %if.then13.i, %if.then.i, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1)) #15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_pnet_find_roce_resource(ptr noundef %sk, ptr noundef %ini) local_unnamed_addr #1 align 64 {
entry:
  %ndev_pnetid.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sk_dst_get(ptr noundef %sk)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end.out_rel_crit_edge, label %if.end3

if.end.out_rel_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_rel

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ndev_pnetid.i) #15
  %call.i = tail call fastcc ptr @pnet_find_base_ndev(ptr noundef nonnull %1) #15
  %nd_net.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 127
  %2 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nd_net.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_net_id to i32))
  %4 = load i32, ptr @smc_net_id, align 4
  %call1.i.i = tail call fastcc ptr @net_generic(ptr noundef %3, i32 noundef %4) #15
  tail call void @mutex_lock_nested(ptr noundef %call1.i.i, i32 noundef 0) #15
  %pnetlist.i.i = getelementptr inbounds %struct.smc_pnettable, ptr %call1.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %pnetlist.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %pnetelem.022.i.i = load ptr, ptr %pnetlist.i.i, align 4
  %cmp.not23.i.i = icmp eq ptr %pnetelem.022.i.i, %pnetlist.i.i
  br i1 %cmp.not23.i.i, label %if.end3.if.then.i_crit_edge, label %if.end3.for.body.i.i_crit_edge

if.end3.for.body.i.i_crit_edge:                   ; preds = %if.end3
  br label %for.body.i.i

if.end3.if.then.i_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end3.for.body.i.i_crit_edge
  %pnetelem.024.i.i = phi ptr [ %pnetelem.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %pnetelem.022.i.i, %if.end3.for.body.i.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.024.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp4.i.i = icmp eq i32 %7, 1
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %ndev5.i.i = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.024.i.i, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %ndev5.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ndev5.i.i, align 4
  %cmp6.i.i = icmp eq ptr %9, %call.i
  br i1 %cmp6.i.i, label %if.end.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %10 = ptrtoint ptr %pnetelem.024.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %pnetelem.0.i.i = load ptr, ptr %pnetelem.024.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %pnetelem.0.i.i, %pnetlist.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.if.then.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.if.then.i_crit_edge:                  ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i

if.then.i:                                        ; preds = %for.inc.i.i.if.then.i_crit_edge, %if.end3.if.then.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %call1.i.i) #15
  %11 = ptrtoint ptr %nd_net.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nd_net.i.i, align 4
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1), i32 noundef 0) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_ib_devices to i32))
  %ibdev.068.i.i = load ptr, ptr @smc_ib_devices, align 4
  %cmp.not69.i.i = icmp eq ptr %ibdev.068.i.i, @smc_ib_devices
  br i1 %cmp.not69.i.i, label %if.then.i.smc_pnet_find_rdma_dev.exit.i_crit_edge, label %for.body.lr.ph.i.i

if.then.i.smc_pnet_find_rdma_dev.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_find_rdma_dev.exit.i

for.body.lr.ph.i.i:                               ; preds = %if.then.i
  %check_smcrv2.i.i.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 9
  %vlan_id.i.i.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 5
  %ib_gid.i.i.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 14
  %smcrv2.i.i.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17
  %ib_gid_v2.i.i.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 5
  %ib_dev_v2.i.i.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 3
  %ib_port_v2.i.i.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 17, i32 4
  %ib_dev.i.i.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 13
  %ib_port.i.i.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 15
  br label %for.body.i15.i

for.body.i15.i:                                   ; preds = %cleanup.i.i.for.body.i15.i_crit_edge, %for.body.lr.ph.i.i
  %ibdev.070.i.i = phi ptr [ %ibdev.068.i.i, %for.body.lr.ph.i.i ], [ %ibdev.0.i.i, %cleanup.i.i.for.body.i15.i_crit_edge ]
  %ibdev1.i.i = getelementptr inbounds %struct.smc_ib_device, ptr %ibdev.070.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %ibdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ibdev1.i.i, align 8
  %call2.i.i = tail call zeroext i1 @rdma_dev_access_netns(ptr noundef %14, ptr noundef %12) #15
  br i1 %call2.i.i, label %for.cond3.preheader.i.i, label %for.body.i15.i.cleanup.i.i_crit_edge

for.body.i15.i.cleanup.i.i_crit_edge:             ; preds = %for.body.i15.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i.i

for.cond3.preheader.i.i:                          ; preds = %for.body.i15.i
  %ports_going_away.i.i = getelementptr inbounds %struct.smc_ib_device, ptr %ibdev.070.i.i, i32 0, i32 14
  br label %for.body5.i.i

for.body5.i.i:                                    ; preds = %for.inc.i17.i.for.body5.i.i_crit_edge, %for.cond3.preheader.i.i
  %i.065.i.i = phi i32 [ 1, %for.cond3.preheader.i.i ], [ %inc.i.i, %for.inc.i17.i.for.body5.i.i_crit_edge ]
  %15 = ptrtoint ptr %ibdev1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ibdev1.i.i, align 8
  %is_switch.i.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %16, i32 0, i32 19
  %17 = ptrtoint ptr %is_switch.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i.i.i.i.i = load i8, ptr %is_switch.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i.i.i)
  %tobool.i.i.i.i.i = icmp slt i8 %bf.load.i.i.i.i.i, 0
  br i1 %tobool.i.i.i.i.i, label %for.body5.i.i.for.inc.i17.i_crit_edge, label %rdma_is_port_valid.exit.i.i

for.body5.i.i.for.inc.i17.i_crit_edge:            ; preds = %for.body5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i17.i

rdma_is_port_valid.exit.i.i:                      ; preds = %for.body5.i.i
  %phys_port_cnt.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %16, i32 0, i32 21
  %18 = ptrtoint ptr %phys_port_cnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %phys_port_cnt.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %i.065.i.i)
  %cmp2.i.not.i.i = icmp ult i32 %19, %i.065.i.i
  br i1 %cmp2.i.not.i.i, label %rdma_is_port_valid.exit.i.i.for.inc.i17.i_crit_edge, label %if.end9.i.i

rdma_is_port_valid.exit.i.i.for.inc.i17.i_crit_edge: ; preds = %rdma_is_port_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i17.i

if.end9.i.i:                                      ; preds = %rdma_is_port_valid.exit.i.i
  %get_netdev.i.i = getelementptr inbounds %struct.ib_device, ptr %16, i32 0, i32 1, i32 23
  %20 = ptrtoint ptr %get_netdev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %get_netdev.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %21, null
  br i1 %tobool11.not.i.i, label %if.end9.i.i.for.inc.i17.i_crit_edge, label %if.end13.i.i

if.end9.i.i.for.inc.i17.i_crit_edge:              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i17.i

if.end13.i.i:                                     ; preds = %if.end9.i.i
  %call18.i.i = tail call ptr %21(ptr noundef %16, i32 noundef %i.065.i.i) #15
  %tobool19.not.i.i = icmp eq ptr %call18.i.i, null
  br i1 %tobool19.not.i.i, label %if.end13.i.i.for.inc.i17.i_crit_edge, label %do.body1.i.i.i

if.end13.i.i.for.inc.i17.i_crit_edge:             ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i17.i

do.body1.i.i.i:                                   ; preds = %if.end13.i.i
  %22 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !95
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %call18.i.i, i32 0, i32 118
  %23 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %25 = ptrtoint ptr %24 to i32
  %26 = tail call i32 @llvm.read_register.i32(metadata !82) #15
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %31, %25
  %32 = inttoptr i32 %add.i.i.i to ptr
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %add13.i.i.i = add i32 %34, -1
  store i32 %add13.i.i.i, ptr %32, align 4
  %35 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !96
  %and.i.i.i.i.i = and i32 %35, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !97

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %22) #15, !srcloc !98
  %cmp22.i.i = icmp eq ptr %call18.i.i, %call.i
  br i1 %cmp22.i.i, label %land.lhs.true.i16.i, label %dev_put.exit.i.i.for.inc.i17.i_crit_edge

dev_put.exit.i.i.for.inc.i17.i_crit_edge:         ; preds = %dev_put.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i17.i

land.lhs.true.i16.i:                              ; preds = %dev_put.exit.i.i
  %conv.i.i = trunc i32 %i.065.i.i to i8
  %call23.i.i = tail call zeroext i1 @smc_ib_port_active(ptr noundef %ibdev.070.i.i, i8 noundef zeroext %conv.i.i) #15
  br i1 %call23.i.i, label %land.lhs.true25.i.i, label %land.lhs.true.i16.i.for.inc.i17.i_crit_edge

land.lhs.true.i16.i.for.inc.i17.i_crit_edge:      ; preds = %land.lhs.true.i16.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i17.i

land.lhs.true25.i.i:                              ; preds = %land.lhs.true.i16.i
  %sub.i.i = add nuw nsw i32 %i.065.i.i, 31
  %36 = ptrtoint ptr %ports_going_away.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %ports_going_away.i.i, align 4
  %and.i.i.i = and i32 %sub.i.i, 31
  %38 = shl nuw i32 1, %and.i.i.i
  %39 = and i32 %37, %38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool27.not.i.i = icmp eq i32 %39, 0
  br i1 %tobool27.not.i.i, label %if.then28.i.i, label %land.lhs.true25.i.i.for.inc.i17.i_crit_edge

land.lhs.true25.i.i.for.inc.i17.i_crit_edge:      ; preds = %land.lhs.true25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i17.i

if.then28.i.i:                                    ; preds = %land.lhs.true25.i.i
  %40 = ptrtoint ptr %check_smcrv2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %check_smcrv2.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i59.i.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i59.i.i, label %land.lhs.true.i.i.i, label %if.then28.i.i.land.lhs.true6.i.i.i_crit_edge

if.then28.i.i.land.lhs.true6.i.i.i_crit_edge:     ; preds = %if.then28.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true6.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then28.i.i
  %42 = ptrtoint ptr %vlan_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vlan_id.i.i.i, align 2
  %call.i.i.i = tail call i32 @smc_ib_determine_gid(ptr noundef %ibdev.070.i.i, i8 noundef zeroext %conv.i.i, i16 noundef zeroext %43, ptr noundef %ib_gid.i.i.i, ptr noundef null, ptr noundef null) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %land.lhs.true.i.i.i.cleanup.sink.split.i.i_crit_edge, label %if.end.i.i.i

land.lhs.true.i.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %44 = ptrtoint ptr %check_smcrv2.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %.pr.i.i.i = load i8, ptr %check_smcrv2.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i.i.i)
  %tobool5.not.i.i.i = icmp eq i8 %.pr.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %if.end.i.i.i.for.inc.i17.i_crit_edge, label %if.end.i.i.i.land.lhs.true6.i.i.i_crit_edge

if.end.i.i.i.land.lhs.true6.i.i.i_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %land.lhs.true6.i.i.i

if.end.i.i.i.for.inc.i17.i_crit_edge:             ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i17.i

land.lhs.true6.i.i.i:                             ; preds = %if.end.i.i.i.land.lhs.true6.i.i.i_crit_edge, %if.then28.i.i.land.lhs.true6.i.i.i_crit_edge
  %45 = ptrtoint ptr %vlan_id.i.i.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %vlan_id.i.i.i, align 2
  %call11.i.i.i = tail call i32 @smc_ib_determine_gid(ptr noundef %ibdev.070.i.i, i8 noundef zeroext %conv.i.i, i16 noundef zeroext %46, ptr noundef %ib_gid_v2.i.i.i, ptr noundef null, ptr noundef %smcrv2.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i.i)
  %tobool12.not.i.i.i = icmp eq i32 %call11.i.i.i, 0
  br i1 %tobool12.not.i.i.i, label %land.lhs.true6.i.i.i.cleanup.sink.split.i.i_crit_edge, label %land.lhs.true6.i.i.i.for.inc.i17.i_crit_edge

land.lhs.true6.i.i.i.for.inc.i17.i_crit_edge:     ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i17.i

land.lhs.true6.i.i.i.cleanup.sink.split.i.i_crit_edge: ; preds = %land.lhs.true6.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.sink.split.i.i

for.inc.i17.i:                                    ; preds = %land.lhs.true6.i.i.i.for.inc.i17.i_crit_edge, %if.end.i.i.i.for.inc.i17.i_crit_edge, %land.lhs.true25.i.i.for.inc.i17.i_crit_edge, %land.lhs.true.i16.i.for.inc.i17.i_crit_edge, %dev_put.exit.i.i.for.inc.i17.i_crit_edge, %if.end13.i.i.for.inc.i17.i_crit_edge, %if.end9.i.i.for.inc.i17.i_crit_edge, %rdma_is_port_valid.exit.i.i.for.inc.i17.i_crit_edge, %for.body5.i.i.for.inc.i17.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.065.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 3
  br i1 %exitcond.not.i.i, label %for.inc.i17.i.cleanup.i.i_crit_edge, label %for.inc.i17.i.for.body5.i.i_crit_edge

for.inc.i17.i.for.body5.i.i_crit_edge:            ; preds = %for.inc.i17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body5.i.i

for.inc.i17.i.cleanup.i.i_crit_edge:              ; preds = %for.inc.i17.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup.i.i

cleanup.sink.split.i.i:                           ; preds = %land.lhs.true6.i.i.i.cleanup.sink.split.i.i_crit_edge, %land.lhs.true.i.i.i.cleanup.sink.split.i.i_crit_edge
  %ib_dev.i.sink.i.i = phi ptr [ %ib_dev.i.i.i, %land.lhs.true.i.i.i.cleanup.sink.split.i.i_crit_edge ], [ %ib_dev_v2.i.i.i, %land.lhs.true6.i.i.i.cleanup.sink.split.i.i_crit_edge ]
  %ib_port.i.sink.i.i = phi ptr [ %ib_port.i.i.i, %land.lhs.true.i.i.i.cleanup.sink.split.i.i_crit_edge ], [ %ib_port_v2.i.i.i, %land.lhs.true6.i.i.i.cleanup.sink.split.i.i_crit_edge ]
  %conv.i.i.le = trunc i32 %i.065.i.i to i8
  %47 = ptrtoint ptr %ib_dev.i.sink.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %ibdev.070.i.i, ptr %ib_dev.i.sink.i.i, align 4
  %48 = ptrtoint ptr %ib_port.i.sink.i.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv.i.i.le, ptr %ib_port.i.sink.i.i, align 8
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %cleanup.sink.split.i.i, %for.inc.i17.i.cleanup.i.i_crit_edge, %for.body.i15.i.cleanup.i.i_crit_edge
  %49 = ptrtoint ptr %ibdev.070.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %ibdev.0.i.i = load ptr, ptr %ibdev.070.i.i, align 4
  %cmp.not.i18.i = icmp eq ptr %ibdev.0.i.i, @smc_ib_devices
  br i1 %cmp.not.i18.i, label %cleanup.i.i.smc_pnet_find_rdma_dev.exit.i_crit_edge, label %cleanup.i.i.for.body.i15.i_crit_edge

cleanup.i.i.for.body.i15.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i15.i

cleanup.i.i.smc_pnet_find_rdma_dev.exit.i_crit_edge: ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_find_rdma_dev.exit.i

smc_pnet_find_rdma_dev.exit.i:                    ; preds = %cleanup.i.i.smc_pnet_find_rdma_dev.exit.i_crit_edge, %if.then.i.smc_pnet_find_rdma_dev.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1)) #15
  br label %smc_pnet_find_roce_by_pnetid.exit

if.end.i:                                         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %pnet_name.i.i = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.024.i.i, i32 0, i32 1
  %50 = call ptr @memcpy(ptr %ndev_pnetid.i, ptr %pnet_name.i.i, i32 16)
  tail call void @mutex_unlock(ptr noundef %call1.i.i) #15
  call fastcc void @_smc_pnet_find_roce_by_pnetid(ptr noundef nonnull %ndev_pnetid.i, ptr noundef %ini, ptr noundef null, ptr noundef %3) #15
  br label %smc_pnet_find_roce_by_pnetid.exit

smc_pnet_find_roce_by_pnetid.exit:                ; preds = %if.end.i, %smc_pnet_find_rdma_dev.exit.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ndev_pnetid.i) #15
  br label %out_rel

out_rel:                                          ; preds = %smc_pnet_find_roce_by_pnetid.exit, %if.end.out_rel_crit_edge
  tail call void @dst_release(ptr noundef nonnull %call) #15
  br label %out

out:                                              ; preds = %out_rel, %entry.out_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sk_dst_get(ptr noundef %sk) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  %0 = tail call i32 @llvm.read_register.i32(metadata !82) #15
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !92
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #15
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %sk_dst_cache = getelementptr inbounds %struct.sock, ptr %sk, i32 0, i32 19
  %4 = ptrtoint ptr %sk_dst_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %sk_dst_cache, align 4
  %call = tail call i32 @rcu_read_lock_held() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @sk_dst_get.__warned, align 1
  br i1 %.b16, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @sk_dst_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 2077, ptr noundef nonnull @.str.4) #15
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tobool9.not = icmp eq ptr %5, null
  br i1 %tobool9.not, label %do.end7.if.end13_crit_edge, label %land.lhs.true10

do.end7.if.end13_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

land.lhs.true10:                                  ; preds = %do.end7
  %__refcnt = getelementptr inbounds %struct.dst_entry, ptr %5, i32 0, i32 18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt, i32 noundef 4) #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !100
  tail call void @llvm.prefetch.p0(ptr %__refcnt, i32 1, i32 3, i32 1) #15
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt, ptr %__refcnt, i32 0, i32 1, ptr elementtype(i32) %__refcnt) #15, !srcloc !101
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true10.if.end13_crit_edge, label %do.end11.i.i.i.i

land.lhs.true10.if.end13_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end13

do.end11.i.i.i.i:                                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #15, !srcloc !102
  br label %if.end13

if.end13:                                         ; preds = %do.end11.i.i.i.i, %land.lhs.true10.if.end13_crit_edge, %do.end7.if.end13_crit_edge
  %dst.0 = phi ptr [ null, %do.end7.if.end13_crit_edge ], [ null, %land.lhs.true10.if.end13_crit_edge ], [ %5, %do.end11.i.i.i.i ]
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #15
  br i1 %call.i17, label %if.end13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.end13.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.end13
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #17
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #15
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.end13.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #15, !srcloc !93
  %7 = tail call i32 @llvm.read_register.i32(metadata !82) #15
  %and.i.i.i.i.i24 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #15
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #15
  ret ptr %dst.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_pnet_find_ism_resource(ptr noundef %sk, ptr nocapture noundef %ini) local_unnamed_addr #1 align 64 {
entry:
  %ndev_pnetid.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sk_dst_get(ptr noundef %sk)
  %ism_dev = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 19
  %0 = ptrtoint ptr %ism_dev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %ism_dev, align 8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %out

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.out_rel_crit_edge, label %if.end3

if.end.out_rel_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_rel

if.end3:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ndev_pnetid.i) #15
  %call.i = tail call fastcc ptr @pnet_find_base_ndev(ptr noundef nonnull %2) #15
  %nd_net.i.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 127
  %3 = ptrtoint ptr %nd_net.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_net_id to i32))
  %5 = load i32, ptr @smc_net_id, align 4
  %call1.i.i = tail call fastcc ptr @net_generic(ptr noundef %4, i32 noundef %5) #15
  tail call void @mutex_lock_nested(ptr noundef %call1.i.i, i32 noundef 0) #15
  %pnetlist.i.i = getelementptr inbounds %struct.smc_pnettable, ptr %call1.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %pnetlist.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %pnetelem.022.i.i = load ptr, ptr %pnetlist.i.i, align 4
  %cmp.not23.i.i = icmp eq ptr %pnetelem.022.i.i, %pnetlist.i.i
  br i1 %cmp.not23.i.i, label %if.end3.smc_pnet_find_ism_by_pnetid.exit_crit_edge, label %if.end3.for.body.i.i_crit_edge

if.end3.for.body.i.i_crit_edge:                   ; preds = %if.end3
  br label %for.body.i.i

if.end3.smc_pnet_find_ism_by_pnetid.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_find_ism_by_pnetid.exit

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end3.for.body.i.i_crit_edge
  %pnetelem.024.i.i = phi ptr [ %pnetelem.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %pnetelem.022.i.i, %if.end3.for.body.i.i_crit_edge ]
  %type.i.i = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.024.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp4.i.i = icmp eq i32 %8, 1
  br i1 %cmp4.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %ndev5.i.i = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.024.i.i, i32 0, i32 3, i32 0, i32 1
  %9 = ptrtoint ptr %ndev5.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ndev5.i.i, align 4
  %cmp6.i.i = icmp eq ptr %10, %call.i
  br i1 %cmp6.i.i, label %if.end.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %11 = ptrtoint ptr %pnetelem.024.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %pnetelem.0.i.i = load ptr, ptr %pnetelem.024.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %pnetelem.0.i.i, %pnetlist.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.smc_pnet_find_ism_by_pnetid.exit_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.smc_pnet_find_ism_by_pnetid.exit_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_find_ism_by_pnetid.exit

if.end.i:                                         ; preds = %land.lhs.true.i.i
  %pnet_name.i.i = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.024.i.i, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %ndev_pnetid.i, ptr %pnet_name.i.i, i32 16)
  tail call void @mutex_unlock(ptr noundef %call1.i.i) #15
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1), i32 noundef 0) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smcd_dev_list to i32))
  %.pn39.i = load ptr, ptr @smcd_dev_list, align 4
  %cmp.not41.i = icmp eq ptr %.pn39.i, @smcd_dev_list
  br i1 %cmp.not41.i, label %if.end.i.smc_pnet_find_ism_by_pnetid.exit_crit_edge, label %for.body.lr.ph.i

if.end.i.smc_pnet_find_ism_by_pnetid.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_find_ism_by_pnetid.exit

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %ism_peer_gid.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 18
  %vlan_id.i = getelementptr inbounds %struct.smc_init_info, ptr %ini, i32 0, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn42.i = phi ptr [ %.pn39.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %ismdev.043.i = getelementptr i8, ptr %.pn42.i, i32 -952
  %pnetid.i = getelementptr i8, ptr %.pn42.i, i32 68
  %call7.i = call fastcc zeroext i1 @smc_pnet_match(ptr noundef %pnetid.i, ptr noundef nonnull %ndev_pnetid.i) #15
  br i1 %call7.i, label %land.lhs.true8.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true8.i:                                 ; preds = %for.body.i
  %going_away.i = getelementptr i8, ptr %.pn42.i, i32 196
  %13 = ptrtoint ptr %going_away.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load.i = load i8, ptr %going_away.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool9.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool9.not.i, label %land.lhs.true10.i, label %land.lhs.true8.i.for.inc.i_crit_edge

land.lhs.true8.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true10.i:                                ; preds = %land.lhs.true8.i
  %14 = ptrtoint ptr %ism_peer_gid.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %ism_peer_gid.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %15)
  %tobool11.not.i = icmp eq i64 %15, 0
  br i1 %tobool11.not.i, label %land.lhs.true10.i.if.then16.i_crit_edge, label %lor.lhs.false.i

land.lhs.true10.i.if.then16.i_crit_edge:          ; preds = %land.lhs.true10.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true10.i
  %16 = ptrtoint ptr %vlan_id.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %vlan_id.i, align 2
  %call14.i = tail call i32 @smc_ism_cantalk(i64 noundef %15, i16 noundef zeroext %17, ptr noundef %ismdev.043.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %lor.lhs.false.i.if.then16.i_crit_edge, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

lor.lhs.false.i.if.then16.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then16.i

if.then16.i:                                      ; preds = %lor.lhs.false.i.if.then16.i_crit_edge, %land.lhs.true10.i.if.then16.i_crit_edge
  %18 = ptrtoint ptr %ism_dev to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %ismdev.043.i, ptr %ism_dev, align 8
  br label %smc_pnet_find_ism_by_pnetid.exit

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %land.lhs.true8.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %19 = ptrtoint ptr %.pn42.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn.i = load ptr, ptr %.pn42.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @smcd_dev_list
  br i1 %cmp.not.i, label %for.inc.i.smc_pnet_find_ism_by_pnetid.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.smc_pnet_find_ism_by_pnetid.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_find_ism_by_pnetid.exit

smc_pnet_find_ism_by_pnetid.exit:                 ; preds = %for.inc.i.smc_pnet_find_ism_by_pnetid.exit_crit_edge, %if.then16.i, %if.end.i.smc_pnet_find_ism_by_pnetid.exit_crit_edge, %for.inc.i.i.smc_pnet_find_ism_by_pnetid.exit_crit_edge, %if.end3.smc_pnet_find_ism_by_pnetid.exit_crit_edge
  %call1.i.sink.i = phi ptr [ %call1.i.i, %if.end3.smc_pnet_find_ism_by_pnetid.exit_crit_edge ], [ getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1), %if.end.i.smc_pnet_find_ism_by_pnetid.exit_crit_edge ], [ getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1), %if.then16.i ], [ getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1), %for.inc.i.smc_pnet_find_ism_by_pnetid.exit_crit_edge ], [ %call1.i.i, %for.inc.i.i.smc_pnet_find_ism_by_pnetid.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %call1.i.sink.i) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ndev_pnetid.i) #15
  br label %out_rel

out_rel:                                          ; preds = %smc_pnet_find_ism_by_pnetid.exit, %if.end.out_rel_crit_edge
  tail call void @dst_release(ptr noundef nonnull %call) #15
  br label %out

out:                                              ; preds = %out_rel, %entry.out_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_pnetid_by_table_ib(ptr nocapture noundef %smcibdev, i8 noundef zeroext %ib_port) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %ibdev = getelementptr inbounds %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 1
  %0 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ibdev, align 8
  %name = getelementptr inbounds %struct.ib_device, ptr %1, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_net_id to i32))
  %2 = load i32, ptr @smc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef nonnull @init_net, i32 noundef %2)
  tail call void @mutex_lock_nested(ptr noundef %call, i32 noundef 0) #15
  %pnetlist = getelementptr inbounds %struct.smc_pnettable, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %pnetlist to i32
  call void @__asan_load4_noabort(i32 %3)
  %tmp_pe.031 = load ptr, ptr %pnetlist, align 4
  %cmp.not32 = icmp eq ptr %tmp_pe.031, %pnetlist
  br i1 %cmp.not32, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %tmp_pe.033 = phi ptr [ %tmp_pe.0, %for.inc.for.body_crit_edge ], [ %tmp_pe.031, %entry.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.smc_pnetentry, ptr %tmp_pe.033, i32 0, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp3 = icmp eq i32 %5, 2
  br i1 %cmp3, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %6 = getelementptr inbounds %struct.smc_pnetentry, ptr %tmp_pe.033, i32 0, i32 3
  %call6 = tail call i32 @strncmp(ptr noundef %6, ptr noundef %name, i32 noundef 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %land.lhs.true7, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true7:                                   ; preds = %land.lhs.true
  %ib_port8 = getelementptr inbounds %struct.smc_pnetentry, ptr %tmp_pe.033, i32 0, i32 3, i32 1, i32 37
  %7 = ptrtoint ptr %ib_port8 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ib_port8, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %ib_port)
  %cmp10 = icmp eq i8 %8, %ib_port
  br i1 %cmp10, label %if.then, label %land.lhs.true7.for.inc_crit_edge

land.lhs.true7.for.inc_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true7
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1), i32 noundef 0) #15
  %conv.i = zext i8 %ib_port to i32
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx.i = getelementptr %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 9, i32 %sub.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %switch.and.i.i = and i8 %10, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i.i)
  %switch.selectcmp.i.not.i = icmp eq i8 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.not.i, label %if.then.i, label %if.then.smc_pnet_apply_ib.exit_crit_edge

if.then.smc_pnet_apply_ib.exit_crit_edge:         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_apply_ib.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %pnet_name = getelementptr inbounds %struct.smc_pnetentry, ptr %tmp_pe.033, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %arrayidx.i, ptr %pnet_name, i32 16)
  %arrayidx8.i = getelementptr %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 10, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %arrayidx8.i, align 1
  br label %smc_pnet_apply_ib.exit

smc_pnet_apply_ib.exit:                           ; preds = %if.then.i, %if.then.smc_pnet_apply_ib.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1)) #15
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true7.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %tmp_pe.033 to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmp_pe.0 = load ptr, ptr %tmp_pe.033, align 4
  %cmp.not = icmp eq ptr %tmp_pe.0, %pnetlist
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %smc_pnet_apply_ib.exit, %entry.for.end_crit_edge
  %rc.0 = phi i32 [ 0, %smc_pnet_apply_ib.exit ], [ -2, %entry.for.end_crit_edge ], [ -2, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %call) #15
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_pnetid_by_table_smcd(ptr nocapture noundef %smcddev) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.smcd_dev, ptr %smcddev, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %dev = getelementptr inbounds %struct.smcd_dev, ptr %smcddev, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_net_id to i32))
  %4 = load i32, ptr @smc_net_id, align 4
  %call1 = tail call fastcc ptr @net_generic(ptr noundef nonnull @init_net, i32 noundef %4)
  tail call void @mutex_lock_nested(ptr noundef %call1, i32 noundef 0) #15
  %pnetlist = getelementptr inbounds %struct.smc_pnettable, ptr %call1, i32 0, i32 1
  %5 = ptrtoint ptr %pnetlist to i32
  call void @__asan_load4_noabort(i32 %5)
  %tmp_pe.025 = load ptr, ptr %pnetlist, align 4
  %cmp.not26 = icmp eq ptr %tmp_pe.025, %pnetlist
  br i1 %cmp.not26, label %dev_name.exit.for.end_crit_edge, label %dev_name.exit.for.body_crit_edge

dev_name.exit.for.body_crit_edge:                 ; preds = %dev_name.exit
  br label %for.body

dev_name.exit.for.end_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %dev_name.exit.for.body_crit_edge
  %tmp_pe.027 = phi ptr [ %tmp_pe.0, %for.inc.for.body_crit_edge ], [ %tmp_pe.025, %dev_name.exit.for.body_crit_edge ]
  %type = getelementptr inbounds %struct.smc_pnetentry, ptr %tmp_pe.027, i32 0, i32 2
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp4 = icmp eq i32 %7, 2
  br i1 %cmp4, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %8 = getelementptr inbounds %struct.smc_pnetentry, ptr %tmp_pe.027, i32 0, i32 3
  %call6 = tail call i32 @strncmp(ptr noundef %8, ptr noundef %retval.0.i, i32 noundef 64)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.then, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.then:                                          ; preds = %land.lhs.true
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1), i32 noundef 0) #15
  %pnetid.i = getelementptr inbounds %struct.smcd_dev, ptr %smcddev, i32 0, i32 9
  %9 = ptrtoint ptr %pnetid.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pnetid.i, align 1
  %switch.and.i.i = and i8 %10, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i.i)
  %switch.selectcmp.i.not.i = icmp eq i8 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.not.i, label %if.then.i, label %if.then.smc_pnet_apply_smcd.exit_crit_edge

if.then.smc_pnet_apply_smcd.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_apply_smcd.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #17
  %pnet_name = getelementptr inbounds %struct.smc_pnetentry, ptr %tmp_pe.027, i32 0, i32 1
  %11 = call ptr @memcpy(ptr %pnetid.i, ptr %pnet_name, i32 16)
  %pnetid_by_user.i = getelementptr inbounds %struct.smcd_dev, ptr %smcddev, i32 0, i32 10
  %12 = ptrtoint ptr %pnetid_by_user.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %pnetid_by_user.i, align 4
  br label %smc_pnet_apply_smcd.exit

smc_pnet_apply_smcd.exit:                         ; preds = %if.then.i, %if.then.smc_pnet_apply_smcd.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1)) #15
  br label %for.end

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %tmp_pe.027 to i32
  call void @__asan_load4_noabort(i32 %13)
  %tmp_pe.0 = load ptr, ptr %tmp_pe.027, align 4
  %cmp.not = icmp eq ptr %tmp_pe.0, %pnetlist
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %smc_pnet_apply_smcd.exit, %dev_name.exit.for.end_crit_edge
  %rc.0 = phi i32 [ 0, %smc_pnet_apply_smcd.exit ], [ -2, %dev_name.exit.for.end_crit_edge ], [ -2, %for.inc.for.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %call1) #15
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

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
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

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
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @netdev_lower_get_next(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_pnet_get(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #15
  %tobool2.not = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %snd_portid = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %6 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %snd_portid, align 4
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %info, align 4
  %10 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %attrs, align 4
  %arrayidx6 = getelementptr ptr, ptr %11, i32 1
  %12 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx6, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  %call8 = tail call fastcc i32 @_smc_pnet_dump(ptr noundef %1, ptr noundef nonnull %call.i.i, i32 noundef %7, i32 noundef %9, ptr noundef %add.ptr.i, i32 noundef 0)
  %14 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %snd_portid, align 4
  %16 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %info, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 7
  %18 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.i.not.i.i, label %skb_tailroom.exit.i, label %if.end4.if.then13_crit_edge

if.end4.if.then13_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

skb_tailroom.exit.i:                              ; preds = %if.end4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 17
  %20 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %22 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i.i)
  %cmp.i = icmp slt i32 %sub.ptr.sub.i.i, 16
  br i1 %cmp.i, label %skb_tailroom.exit.i.if.then13_crit_edge, label %nlmsg_put.exit, !prof !97

skb_tailroom.exit.i.if.then13_crit_edge:          ; preds = %skb_tailroom.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

nlmsg_put.exit:                                   ; preds = %skb_tailroom.exit.i
  %call3.i = tail call ptr @__nlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %15, i32 noundef %17, i32 noundef 3, i32 noundef 0, i32 noundef 2) #15
  %tobool12.not = icmp eq ptr %call3.i, null
  br i1 %tobool12.not, label %nlmsg_put.exit.if.then13_crit_edge, label %if.end14

nlmsg_put.exit.if.then13_crit_edge:               ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then13

if.then13:                                        ; preds = %nlmsg_put.exit.if.then13_crit_edge, %skb_tailroom.exit.i.if.then13_crit_edge, %if.end4.if.then13_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #15
  br label %cleanup

if.end14:                                         ; preds = %nlmsg_put.exit
  call void @__sanitizer_cov_trace_pc() #17
  %24 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %_net.i, align 4
  %26 = ptrtoint ptr %snd_portid to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %snd_portid, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %25, i32 0, i32 21
  %28 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = tail call i32 @netlink_unicast(ptr noundef %29, ptr noundef nonnull %call.i.i, i32 noundef %27, i32 noundef 64) #15
  %30 = tail call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #15
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %if.end14 ], [ -90, %if.then13 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @smc_pnet_dump_start(ptr nocapture noundef writeonly %cb) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_pnet_dump(ptr noundef %skb, ptr nocapture noundef %cb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %skc_net.i = getelementptr inbounds %struct.sock_common, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %skc_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %skc_net.i, align 4
  %5 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cb, align 4
  %portid = getelementptr inbounds %struct.sk_buff, ptr %6, i32 0, i32 3, i32 12
  %7 = ptrtoint ptr %portid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %portid, align 4
  %nlh = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %9 = ptrtoint ptr %nlh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nlh, align 4
  %nlmsg_seq = getelementptr inbounds %struct.nlmsghdr, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %nlmsg_seq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nlmsg_seq, align 4
  %13 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %call3 = tail call fastcc i32 @_smc_pnet_dump(ptr noundef %4, ptr noundef %skb, i32 noundef %8, i32 noundef %12, ptr noundef null, i32 noundef %15)
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call3, ptr %13, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 4
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_pnet_add(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #1 align 64 {
entry:
  %pnet_name.i = alloca [17 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i, align 4
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %2 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attrs, align 4
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %pnet_name.i) #15
  %4 = call ptr @memset(ptr %pnet_name.i, i32 255, i32 17)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_net_id to i32))
  %5 = load i32, ptr @smc_net_id, align 4
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %1, i32 noundef %5) #15
  %arrayidx.i = getelementptr ptr, ptr %3, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %entry.smc_pnet_enter.exit_crit_edge, label %if.end.i

entry.smc_pnet_enter.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_enter.exit

if.end.i:                                         ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %call.i.i = tail call ptr @skip_spaces(ptr noundef %add.ptr.i.i) #15
  %call1.i.i = tail call i32 @strlen(ptr noundef %call.i.i) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.smc_pnet_enter.exit_crit_edge, label %while.cond.preheader.i.i

if.end.i.smc_pnet_enter.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_enter.exit

while.cond.preheader.i.i:                         ; preds = %if.end.i
  %add.ptr.i89.i = getelementptr i8, ptr %call.i.i, i32 %call1.i.i
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %land.rhs.i.i.while.cond.i.i_crit_edge, %while.cond.preheader.i.i
  %end.0.i.i = phi ptr [ %incdec.ptr.i.i, %land.rhs.i.i.while.cond.i.i_crit_edge ], [ %add.ptr.i89.i, %while.cond.preheader.i.i ]
  %incdec.ptr.i.i = getelementptr i8, ptr %end.0.i.i, i32 -1
  %cmp.not.i.i = icmp ult ptr %incdec.ptr.i.i, %call.i.i
  br i1 %cmp.not.i.i, label %while.end.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %while.cond.i.i
  %8 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %incdec.ptr.i.i, align 1
  %conv.i.i = zext i8 %9 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.i.i, align 1
  %12 = and i8 %11, 32
  %cmp3.not.i.i = icmp eq i8 %12, 0
  br i1 %cmp3.not.i.i, label %while.end.thread.i.i, label %land.rhs.i.i.while.cond.i.i_crit_edge

land.rhs.i.i.while.cond.i.i_crit_edge:            ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %incdec.ptr.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %call.i.i to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.ptr.sub.i.i)
  %cmp5.i.i = icmp sgt i32 %sub.ptr.sub.i.i, 15
  br i1 %cmp5.i.i, label %while.end.i.i.smc_pnet_enter.exit_crit_edge, label %while.end.i.i.if.end6.i_crit_edge

while.end.i.i.if.end6.i_crit_edge:                ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

while.end.i.i.smc_pnet_enter.exit_crit_edge:      ; preds = %while.end.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_enter.exit

while.end.thread.i.i:                             ; preds = %land.rhs.i.i
  %sub.ptr.lhs.cast54.i.i = ptrtoint ptr %incdec.ptr.i.i to i32
  %sub.ptr.rhs.cast55.i.i = ptrtoint ptr %call.i.i to i32
  %sub.ptr.sub56.i.i = sub i32 %sub.ptr.lhs.cast54.i.i, %sub.ptr.rhs.cast55.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %sub.ptr.sub56.i.i)
  %cmp557.i.i = icmp sgt i32 %sub.ptr.sub56.i.i, 15
  br i1 %cmp557.i.i, label %while.end.thread.i.i.smc_pnet_enter.exit_crit_edge, label %while.end.thread.i.i.while.body12.i.i_crit_edge

while.end.thread.i.i.while.body12.i.i_crit_edge:  ; preds = %while.end.thread.i.i
  br label %while.body12.i.i

while.end.thread.i.i.smc_pnet_enter.exit_crit_edge: ; preds = %while.end.thread.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_enter.exit

while.body12.i.i:                                 ; preds = %if.end20.i.i.while.body12.i.i_crit_edge, %while.end.thread.i.i.while.body12.i.i_crit_edge
  %bf.053.i.i = phi ptr [ %incdec.ptr32.i.i, %if.end20.i.i.while.body12.i.i_crit_edge ], [ %call.i.i, %while.end.thread.i.i.while.body12.i.i_crit_edge ]
  %pnetid.addr.052.i.i = phi ptr [ %incdec.ptr31.i.i, %if.end20.i.i.while.body12.i.i_crit_edge ], [ %pnet_name.i, %while.end.thread.i.i.while.body12.i.i_crit_edge ]
  %13 = ptrtoint ptr %bf.053.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %bf.053.i.i, align 1
  %conv13.i.i = zext i8 %14 to i32
  %arrayidx14.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv13.i.i
  %15 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i.i = zext i8 %16 to i32
  %and16.i.i = and i32 %conv15.i.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i.i)
  %cmp17.not.i.i = icmp eq i32 %and16.i.i, 0
  br i1 %cmp17.not.i.i, label %while.body12.i.i.smc_pnet_enter.exit_crit_edge, label %if.end20.i.i

while.body12.i.i.smc_pnet_enter.exit_crit_edge:   ; preds = %while.body12.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_enter.exit

if.end20.i.i:                                     ; preds = %while.body12.i.i
  %and24.i.i = and i32 %conv15.i.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %cmp25.not.i.i = icmp eq i32 %and24.i.i, 0
  %17 = and i8 %16, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %cmp.not.i.i.i = icmp eq i8 %17, 0
  %sub.i.i.i = add i8 %14, -32
  %18 = select i1 %cmp25.not.i.i, i1 true, i1 %cmp.not.i.i.i
  %cond.i.i = select i1 %18, i8 %14, i8 %sub.i.i.i
  %incdec.ptr31.i.i = getelementptr i8, ptr %pnetid.addr.052.i.i, i32 1
  %19 = ptrtoint ptr %pnetid.addr.052.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %cond.i.i, ptr %pnetid.addr.052.i.i, align 1
  %incdec.ptr32.i.i = getelementptr i8, ptr %bf.053.i.i, i32 1
  %cmp10.not.i.i = icmp ugt ptr %incdec.ptr32.i.i, %incdec.ptr.i.i
  br i1 %cmp10.not.i.i, label %if.end20.i.i.if.end6.i_crit_edge, label %if.end20.i.i.while.body12.i.i_crit_edge

if.end20.i.i.while.body12.i.i_crit_edge:          ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %while.body12.i.i

if.end20.i.i.if.end6.i_crit_edge:                 ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end20.i.i.if.end6.i_crit_edge, %while.end.i.i.if.end6.i_crit_edge
  %pnetid.addr.0.lcssa.i.i = phi ptr [ %pnet_name.i, %while.end.i.i.if.end6.i_crit_edge ], [ %incdec.ptr31.i.i, %if.end20.i.i.if.end6.i_crit_edge ]
  %20 = ptrtoint ptr %pnetid.addr.0.lcssa.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %pnetid.addr.0.lcssa.i.i, align 1
  %arrayidx7.i = getelementptr ptr, ptr %3, i32 2
  %21 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx7.i, align 4
  %tobool8.not.i = icmp eq ptr %22, null
  br i1 %tobool8.not.i, label %if.end6.i.if.end19.i_crit_edge, label %if.then9.i

if.end6.i.if.end19.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

if.then9.i:                                       ; preds = %if.end6.i
  %add.ptr.i90.i = getelementptr i8, ptr %22, i32 4
  %call.i91.i = tail call ptr @dev_get_by_name(ptr noundef %1, ptr noundef %add.ptr.i90.i) #15
  %tobool.not.i92.i = icmp eq ptr %call.i91.i, null
  br i1 %tobool.not.i92.i, label %if.then9.i.if.end5.i.i_crit_edge, label %if.then.i.i

if.then9.i.if.end5.i.i_crit_edge:                 ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end5.i.i

if.then.i.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #17
  %call1.i93.i = tail call fastcc ptr @pnet_find_base_ndev(ptr noundef nonnull %call.i91.i) #15
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %if.then.i.i, %if.then9.i.if.end5.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 100) #20
  %tobool7.not.i.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool7.not.i.i, label %if.end5.i.i.out_put.i.i_crit_edge, label %if.end9.i.i

if.end5.i.i.out_put.i.i_crit_edge:                ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %out_put.i.i

if.end9.i.i:                                      ; preds = %if.end5.i.i
  %type.i.i = getelementptr inbounds %struct.smc_pnetentry, ptr %call7.i.i.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %type.i.i, align 4
  %pnet_name10.i.i = getelementptr inbounds %struct.smc_pnetentry, ptr %call7.i.i.i.i, i32 0, i32 1
  %25 = call ptr @memcpy(ptr %pnet_name10.i.i, ptr %pnet_name.i, i32 16)
  %26 = getelementptr inbounds %struct.smc_pnetentry, ptr %call7.i.i.i.i, i32 0, i32 3
  %call14.i.i = tail call ptr @strncpy(ptr noundef %26, ptr noundef %add.ptr.i90.i, i32 noundef 16) #15
  tail call void @mutex_lock_nested(ptr noundef %call.i, i32 noundef 0) #15
  %pnetlist.i.i = getelementptr inbounds %struct.smc_pnettable, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %pnetlist.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %tmp_pe.090.i.i = load ptr, ptr %pnetlist.i.i, align 4
  %cmp.not91.i.i = icmp eq ptr %tmp_pe.090.i.i, %pnetlist.i.i
  br i1 %cmp.not91.i.i, label %if.end9.i.i.if.then30.critedge.i.i_crit_edge, label %if.end9.i.i.for.body.i.i_crit_edge

if.end9.i.i.for.body.i.i_crit_edge:               ; preds = %if.end9.i.i
  br label %for.body.i.i

if.end9.i.i.if.then30.critedge.i.i_crit_edge:     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then30.critedge.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end9.i.i.for.body.i.i_crit_edge
  %tmp_pe.092.i.i = phi ptr [ %tmp_pe.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %tmp_pe.090.i.i, %if.end9.i.i.for.body.i.i_crit_edge ]
  %type16.i.i = getelementptr inbounds %struct.smc_pnetentry, ptr %tmp_pe.092.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %type16.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type16.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp17.i.i = icmp eq i32 %29, 1
  br i1 %cmp17.i.i, label %land.lhs.true.i.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %30 = getelementptr inbounds %struct.smc_pnetentry, ptr %tmp_pe.092.i.i, i32 0, i32 3
  %call20.i.i = tail call i32 @strncmp(ptr noundef %30, ptr noundef %add.ptr.i90.i, i32 noundef 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i.i)
  %tobool21.not.i.i = icmp eq i32 %call20.i.i, 0
  br i1 %tobool21.not.i.i, label %if.else.i.i, label %land.lhs.true.i.i.for.inc.i.i_crit_edge

land.lhs.true.i.i.for.inc.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %31 = ptrtoint ptr %tmp_pe.092.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %tmp_pe.0.i.i = load ptr, ptr %tmp_pe.092.i.i, align 4
  %cmp.not.i94.i = icmp eq ptr %tmp_pe.0.i.i, %pnetlist.i.i
  br i1 %cmp.not.i94.i, label %for.inc.i.i.if.then30.critedge.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.if.then30.critedge.i.i_crit_edge:     ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then30.critedge.i.i

if.then30.critedge.i.i:                           ; preds = %for.inc.i.i.if.then30.critedge.i.i_crit_edge, %if.end9.i.i.if.then30.critedge.i.i_crit_edge
  br i1 %tobool.not.i92.i, label %if.end52.critedge.i.i, label %if.then32.i.i

if.then32.i.i:                                    ; preds = %if.then30.critedge.i.i
  %ndev33.i.i = getelementptr inbounds %struct.smc_pnetentry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 0, i32 1
  %32 = ptrtoint ptr %ndev33.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i91.i, ptr %ndev33.i.i, align 4
  %dev_tracker.i.i = getelementptr inbounds %struct.smc_pnetentry, ptr %call7.i.i.i.i, i32 0, i32 3, i32 0, i32 2
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %call.i91.i, i32 0, i32 119
  %call.i.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i.i, i32 noundef 2592) #15
  %prev.i.i.i = getelementptr inbounds %struct.smc_pnettable, ptr %call.i, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %34, ptr noundef %pnetlist.i.i) #15
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then32.i.i.list_add_tail.exit.i.i_crit_edge

if.then32.i.i.list_add_tail.exit.i.i_crit_edge:   ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit.i.i

if.end.i.i.i.i:                                   ; preds = %if.then32.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %35 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i.i.i, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %pnetlist.i.i, ptr %call7.i.i.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i.i.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %call7.i.i.i.i, ptr %34, align 4
  br label %list_add_tail.exit.i.i

list_add_tail.exit.i.i:                           ; preds = %if.end.i.i.i.i, %if.then32.i.i.list_add_tail.exit.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %call.i) #15
  %call42.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @smc_pnet_add_eth._rs, ptr noundef nonnull @__func__.smc_pnet_add_eth) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %tobool43.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool43.not.i.i, label %list_add_tail.exit.i.i.if.end19.i_crit_edge, label %do.end.i.i

list_add_tail.exit.i.i.if.end19.i_crit_edge:      ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

if.else.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %call.i) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #15
  br label %out_put.i.i

do.end.i.i:                                       ; preds = %list_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %call50.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %26, ptr noundef %pnet_name10.i.i) #18
  br label %if.end19.i

if.end52.critedge.i.i:                            ; preds = %if.then30.critedge.i.i
  %prev.i85.i.i = getelementptr inbounds %struct.smc_pnettable, ptr %call.i, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %prev.i85.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i85.i.i, align 4
  %call.i.i86.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i.i, ptr noundef %40, ptr noundef %pnetlist.i.i) #15
  br i1 %call.i.i86.i.i, label %if.end.i.i88.i.i, label %if.end52.critedge.i.i.list_add_tail.exit89.i.i_crit_edge

if.end52.critedge.i.i.list_add_tail.exit89.i.i_crit_edge: ; preds = %if.end52.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %list_add_tail.exit89.i.i

if.end.i.i88.i.i:                                 ; preds = %if.end52.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %41 = ptrtoint ptr %prev.i85.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call7.i.i.i.i, ptr %prev.i85.i.i, align 4
  %42 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %pnetlist.i.i, ptr %call7.i.i.i.i, align 8
  %prev3.i.i87.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i87.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i87.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %call7.i.i.i.i, ptr %40, align 4
  br label %list_add_tail.exit89.i.i

list_add_tail.exit89.i.i:                         ; preds = %if.end.i.i88.i.i, %if.end52.critedge.i.i.list_add_tail.exit89.i.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %call.i) #15
  br label %if.end19.i

out_put.i.i:                                      ; preds = %if.else.i.i, %if.end5.i.i.out_put.i.i_crit_edge
  %rc.0.i.i = phi i32 [ -17, %if.else.i.i ], [ -12, %if.end5.i.i.out_put.i.i_crit_edge ]
  br i1 %tobool.not.i92.i, label %out_put.i.i.smc_pnet_add_eth.exit.i_crit_edge, label %do.body1.i.i.i

out_put.i.i.smc_pnet_add_eth.exit.i_crit_edge:    ; preds = %out_put.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_add_eth.exit.i

do.body1.i.i.i:                                   ; preds = %out_put.i.i
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !95
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %call.i91.i, i32 0, i32 118
  %46 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %48 = ptrtoint ptr %47 to i32
  %49 = tail call i32 @llvm.read_register.i32(metadata !82) #15
  %and.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %54, %48
  %55 = inttoptr i32 %add.i.i.i to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %add13.i.i.i = add i32 %57, -1
  store i32 %add13.i.i.i, ptr %55, align 4
  %58 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !96
  %and.i.i.i.i.i = and i32 %58, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.do.end30.i.i.i_crit_edge, !prof !97

do.body1.i.i.i.do.end30.i.i.i_crit_edge:          ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %do.end30.i.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %do.end30.i.i.i

do.end30.i.i.i:                                   ; preds = %if.then28.i.i.i, %do.body1.i.i.i.do.end30.i.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %45) #15, !srcloc !98
  br label %smc_pnet_add_eth.exit.i

smc_pnet_add_eth.exit.i:                          ; preds = %do.end30.i.i.i, %out_put.i.i.smc_pnet_add_eth.exit.i_crit_edge
  br i1 %tobool7.not.i.i, label %smc_pnet_add_eth.exit.i.smc_pnet_enter.exit_crit_edge, label %smc_pnet_add_eth.exit.i.if.end19.i_crit_edge

smc_pnet_add_eth.exit.i.if.end19.i_crit_edge:     ; preds = %smc_pnet_add_eth.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end19.i

smc_pnet_add_eth.exit.i.smc_pnet_enter.exit_crit_edge: ; preds = %smc_pnet_add_eth.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_enter.exit

if.end19.i:                                       ; preds = %smc_pnet_add_eth.exit.i.if.end19.i_crit_edge, %list_add_tail.exit89.i.i, %do.end.i.i, %list_add_tail.exit.i.i.if.end19.i_crit_edge, %if.end6.i.if.end19.i_crit_edge
  %new_netdev.0.off0.i = phi i1 [ false, %if.end6.i.if.end19.i_crit_edge ], [ true, %list_add_tail.exit89.i.i ], [ true, %list_add_tail.exit.i.i.if.end19.i_crit_edge ], [ true, %do.end.i.i ], [ false, %smc_pnet_add_eth.exit.i.if.end19.i_crit_edge ]
  %cmp20.not.i = icmp eq ptr %1, @init_net
  br i1 %cmp20.not.i, label %if.end23.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #17
  %cond.i = select i1 %new_netdev.0.off0.i, i32 0, i32 -17
  br label %smc_pnet_enter.exit

if.end23.i:                                       ; preds = %if.end19.i
  %arrayidx24.i = getelementptr ptr, ptr %3, i32 3
  %59 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx24.i, align 4
  %tobool25.not.i = icmp eq ptr %60, null
  br i1 %tobool25.not.i, label %if.end23.i.if.end53.i_crit_edge, label %if.then26.i

if.end23.i.if.end53.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53.i

if.then26.i:                                      ; preds = %if.end23.i
  %add.ptr.i96.i = getelementptr i8, ptr %60, i32 4
  %call29.i = tail call ptr @strim(ptr noundef %add.ptr.i96.i) #15
  %arrayidx30.i = getelementptr ptr, ptr %3, i32 4
  %61 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx30.i, align 4
  %tobool31.not.i = icmp eq ptr %62, null
  br i1 %tobool31.not.i, label %if.then26.i.if.end42.i_crit_edge, label %if.then32.i

if.then26.i.if.end42.i_crit_edge:                 ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i

if.then32.i:                                      ; preds = %if.then26.i
  %add.ptr.i.i.i = getelementptr i8, ptr %62, i32 4
  %63 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %add.ptr.i.i.i, align 1
  %65 = add i8 %64, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %65)
  %66 = icmp ult i8 %65, -2
  br i1 %66, label %if.then32.i.smc_pnet_enter.exit_crit_edge, label %if.then32.i.if.end42.i_crit_edge

if.then32.i.if.end42.i_crit_edge:                 ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end42.i

if.then32.i.smc_pnet_enter.exit_crit_edge:        ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_enter.exit

if.end42.i:                                       ; preds = %if.then32.i.if.end42.i_crit_edge, %if.then26.i.if.end42.i_crit_edge
  %ibport.0.i = phi i8 [ 1, %if.then26.i.if.end42.i_crit_edge ], [ %64, %if.then32.i.if.end42.i_crit_edge ]
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1), i32 noundef 0) #15
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %dev_name.exit.i.i.i.for.cond.i.i.i_crit_edge, %if.end42.i
  %ibdev.0.in.i.i.i = phi ptr [ @smc_ib_devices, %if.end42.i ], [ %ibdev.0.i.i.i, %dev_name.exit.i.i.i.for.cond.i.i.i_crit_edge ]
  %67 = ptrtoint ptr %ibdev.0.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %ibdev.0.i.i.i = load ptr, ptr %ibdev.0.in.i.i.i, align 4
  %cmp.not.i.i97.i = icmp eq ptr %ibdev.0.i.i.i, @smc_ib_devices
  br i1 %cmp.not.i.i97.i, label %smc_pnet_find_ib.exit.thread.i.i, label %for.body.i.i.i

smc_pnet_find_ib.exit.thread.i.i:                 ; preds = %for.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1)) #15
  br label %if.end11.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %ibdev1.i.i.i = getelementptr inbounds %struct.smc_ib_device, ptr %ibdev.0.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %ibdev1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ibdev1.i.i.i, align 8
  %name.i.i.i = getelementptr inbounds %struct.ib_device, ptr %69, i32 0, i32 2
  %call.i.i98.i = tail call i32 @strncmp(ptr noundef %name.i.i.i, ptr noundef %call29.i, i32 noundef 64) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i98.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i98.i, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.smc_pnet_find_ib.exit.i.i_crit_edge, label %lor.lhs.false.i.i.i

for.body.i.i.i.smc_pnet_find_ib.exit.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_find_ib.exit.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.body.i.i.i
  %parent.i.i.i = getelementptr inbounds %struct.ib_device, ptr %69, i32 0, i32 13, i32 0, i32 0, i32 1
  %70 = ptrtoint ptr %parent.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %parent.i.i.i, align 8
  %init_name.i.i.i.i = getelementptr inbounds %struct.device, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i99.i, label %lor.lhs.false.i.i.i.dev_name.exit.i.i.i_crit_edge

lor.lhs.false.i.i.i.dev_name.exit.i.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i.i.i

if.end.i.i.i99.i:                                 ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %71, align 4
  br label %dev_name.exit.i.i.i

dev_name.exit.i.i.i:                              ; preds = %if.end.i.i.i99.i, %lor.lhs.false.i.i.i.dev_name.exit.i.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %75, %if.end.i.i.i99.i ], [ %73, %lor.lhs.false.i.i.i.dev_name.exit.i.i.i_crit_edge ]
  %call4.i.i.i = tail call i32 @strncmp(ptr noundef %retval.0.i.i.i.i, ptr noundef %call29.i, i32 noundef 63) #15
  %tobool5.not.i.i.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool5.not.i.i.i, label %dev_name.exit.i.i.i.smc_pnet_find_ib.exit.i.i_crit_edge, label %dev_name.exit.i.i.i.for.cond.i.i.i_crit_edge

dev_name.exit.i.i.i.for.cond.i.i.i_crit_edge:     ; preds = %dev_name.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i.i.i

dev_name.exit.i.i.i.smc_pnet_find_ib.exit.i.i_crit_edge: ; preds = %dev_name.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_find_ib.exit.i.i

smc_pnet_find_ib.exit.i.i:                        ; preds = %dev_name.exit.i.i.i.smc_pnet_find_ib.exit.i.i_crit_edge, %for.body.i.i.i.smc_pnet_find_ib.exit.i.i_crit_edge
  %ibdev1.i.i.i.le = getelementptr inbounds %struct.smc_ib_device, ptr %ibdev.0.i.i.i, i32 0, i32 1
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1)) #15
  %tobool.not.i100.i = icmp eq ptr %ibdev.0.i.i.i, null
  br i1 %tobool.not.i100.i, label %smc_pnet_find_ib.exit.i.i.if.end11.i.i_crit_edge, label %if.then.i103.i

smc_pnet_find_ib.exit.i.i.if.end11.i.i_crit_edge: ; preds = %smc_pnet_find_ib.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i.i

if.then.i103.i:                                   ; preds = %smc_pnet_find_ib.exit.i.i
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1), i32 noundef 0) #15
  %conv.i.i.i = zext i8 %ibport.0.i to i32
  %sub.i.i101.i = add nsw i32 %conv.i.i.i, -1
  %arrayidx.i.i102.i = getelementptr %struct.smc_ib_device, ptr %ibdev.0.i.i.i, i32 0, i32 9, i32 %sub.i.i101.i
  %76 = ptrtoint ptr %arrayidx.i.i102.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i.i102.i, align 1
  %switch.and.i.i.i.i = and i8 %77, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i.i.i.i)
  %switch.selectcmp.i.not.i.i.i = icmp eq i8 %switch.and.i.i.i.i, 0
  br i1 %switch.selectcmp.i.not.i.i.i, label %if.then3.i.i, label %smc_pnet_apply_ib.exit.i.i

smc_pnet_apply_ib.exit.i.i:                       ; preds = %if.then.i103.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1)) #15
  br label %if.end11.i.i

if.then3.i.i:                                     ; preds = %if.then.i103.i
  %78 = call ptr @memcpy(ptr %arrayidx.i.i102.i, ptr %pnet_name.i, i32 16)
  %arrayidx8.i.i.i = getelementptr %struct.smc_ib_device, ptr %ibdev.0.i.i.i, i32 0, i32 10, i32 %sub.i.i101.i
  %79 = ptrtoint ptr %arrayidx8.i.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %arrayidx8.i.i.i, align 1
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1)) #15
  %call4.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @smc_pnet_add_ib._rs, ptr noundef nonnull @__func__.smc_pnet_add_ib) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool5.not.i.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool5.not.i.i, label %if.then3.i.i.if.end11.i.i_crit_edge, label %do.end.i104.i

if.then3.i.i.if.end11.i.i_crit_edge:              ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i.i

do.end.i104.i:                                    ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %80 = ptrtoint ptr %ibdev1.i.i.i.le to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %ibdev1.i.i.i.le, align 8
  %name.i.i = getelementptr inbounds %struct.ib_device, ptr %81, i32 0, i32 2
  %call9.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %name.i.i, i32 noundef %conv.i.i.i, ptr noundef %arrayidx.i.i102.i) #18
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %do.end.i104.i, %if.then3.i.i.if.end11.i.i_crit_edge, %smc_pnet_apply_ib.exit.i.i, %smc_pnet_find_ib.exit.i.i.if.end11.i.i_crit_edge, %smc_pnet_find_ib.exit.thread.i.i
  %ibdev_applied.0.shrunk.i.i = phi i1 [ false, %do.end.i104.i ], [ false, %if.then3.i.i.if.end11.i.i_crit_edge ], [ true, %smc_pnet_apply_ib.exit.i.i ], [ false, %smc_pnet_find_ib.exit.i.i.if.end11.i.i_crit_edge ], [ false, %smc_pnet_find_ib.exit.thread.i.i ]
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1), i32 noundef 0) #15
  br label %for.cond.i111.i.i

for.cond.i111.i.i:                                ; preds = %dev_name.exit.i118.i.i.for.cond.i111.i.i_crit_edge, %if.end11.i.i
  %.pn.in.i.i.i = phi ptr [ @smcd_dev_list, %if.end11.i.i ], [ %.pn.i.i.i, %dev_name.exit.i118.i.i.for.cond.i111.i.i_crit_edge ]
  %82 = ptrtoint ptr %.pn.in.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pn.i.i.i = load ptr, ptr %.pn.in.i.i.i, align 4
  %cmp.not.i110.i.i = icmp eq ptr %.pn.i.i.i, @smcd_dev_list
  br i1 %cmp.not.i110.i.i, label %smc_pnet_find_smcd.exit.thread.i.i, label %for.body.i114.i.i

smc_pnet_find_smcd.exit.thread.i.i:               ; preds = %for.cond.i111.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1)) #15
  br label %if.end32.i.i

for.body.i114.i.i:                                ; preds = %for.cond.i111.i.i
  %init_name.i.i112.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -800
  %83 = ptrtoint ptr %init_name.i.i112.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %init_name.i.i112.i.i, align 8
  %tobool.not.i.i113.i.i = icmp eq ptr %84, null
  br i1 %tobool.not.i.i113.i.i, label %if.end.i.i115.i.i, label %for.body.i114.i.i.dev_name.exit.i118.i.i_crit_edge

for.body.i114.i.i.dev_name.exit.i118.i.i_crit_edge: ; preds = %for.body.i114.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i118.i.i

if.end.i.i115.i.i:                                ; preds = %for.body.i114.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -944
  %85 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev.i.i.i, align 4
  br label %dev_name.exit.i118.i.i

dev_name.exit.i118.i.i:                           ; preds = %if.end.i.i115.i.i, %for.body.i114.i.i.dev_name.exit.i118.i.i_crit_edge
  %retval.0.i.i116.i.i = phi ptr [ %86, %if.end.i.i115.i.i ], [ %84, %for.body.i114.i.i.dev_name.exit.i118.i.i_crit_edge ]
  %call1.i.i.i = tail call i32 @strncmp(ptr noundef %retval.0.i.i116.i.i, ptr noundef %call29.i, i32 noundef 63) #15
  %tobool.not.i117.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i117.i.i, label %smc_pnet_find_smcd.exit.i.i, label %dev_name.exit.i118.i.i.for.cond.i111.i.i_crit_edge

dev_name.exit.i118.i.i.for.cond.i111.i.i_crit_edge: ; preds = %dev_name.exit.i118.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.cond.i111.i.i

smc_pnet_find_smcd.exit.i.i:                      ; preds = %dev_name.exit.i118.i.i
  %init_name.i.i112.i.i.le = getelementptr i8, ptr %.pn.i.i.i, i32 -800
  %smcd_dev.0.le.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -952
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1)) #15
  %tobool13.not.i.i = icmp eq ptr %smcd_dev.0.le.i.i.i, null
  br i1 %tobool13.not.i.i, label %smc_pnet_find_smcd.exit.i.i.if.end32.i.i_crit_edge, label %if.then14.i.i

smc_pnet_find_smcd.exit.i.i.if.end32.i.i_crit_edge: ; preds = %smc_pnet_find_smcd.exit.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i.i

if.then14.i.i:                                    ; preds = %smc_pnet_find_smcd.exit.i.i
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1), i32 noundef 0) #15
  %pnetid.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 68
  %87 = ptrtoint ptr %pnetid.i.i.i to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %pnetid.i.i.i, align 1
  %switch.and.i.i119.i.i = and i8 %88, -33
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and.i.i119.i.i)
  %switch.selectcmp.i.not.i120.i.i = icmp eq i8 %switch.and.i.i119.i.i, 0
  br i1 %switch.selectcmp.i.not.i120.i.i, label %if.then18.i.i, label %if.end32.thread.i.i

if.end32.thread.i.i:                              ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1)) #15
  br label %if.end53.i

if.then18.i.i:                                    ; preds = %if.then14.i.i
  %89 = call ptr @memcpy(ptr %pnetid.i.i.i, ptr %pnet_name.i, i32 16)
  %pnetid_by_user.i.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 84
  %90 = ptrtoint ptr %pnetid_by_user.i.i.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %pnetid_by_user.i.i.i, align 4
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smcd_dev_list, ptr @smcd_dev_list, i32 0, i32 1)) #15
  %call19.i.i = tail call i32 @___ratelimit(ptr noundef nonnull @smc_pnet_add_ib._rs.15, ptr noundef nonnull @__func__.smc_pnet_add_ib) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i.i)
  %tobool20.not.i.i = icmp eq i32 %call19.i.i, 0
  br i1 %tobool20.not.i.i, label %if.then18.i.i.if.end32.i.i_crit_edge, label %do.end24.i.i

if.then18.i.i.if.end32.i.i_crit_edge:             ; preds = %if.then18.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end32.i.i

do.end24.i.i:                                     ; preds = %if.then18.i.i
  %91 = ptrtoint ptr %init_name.i.i112.i.i.le to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %init_name.i.i112.i.i.le, align 8
  %tobool.not.i122.i.i = icmp eq ptr %92, null
  br i1 %tobool.not.i122.i.i, label %if.end.i.i.i, label %do.end24.i.i.dev_name.exit.i.i_crit_edge

do.end24.i.i.dev_name.exit.i.i_crit_edge:         ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %do.end24.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %dev.i.i = getelementptr i8, ptr %.pn.i.i.i, i32 -944
  %93 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %do.end24.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %94, %if.end.i.i.i ], [ %92, %do.end24.i.i.dev_name.exit.i.i_crit_edge ]
  %call29.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %retval.0.i.i.i, ptr noundef %pnetid.i.i.i) #18
  br label %if.end32.i.i

if.end32.i.i:                                     ; preds = %dev_name.exit.i.i, %if.then18.i.i.if.end32.i.i_crit_edge, %smc_pnet_find_smcd.exit.i.i.if.end32.i.i_crit_edge, %smc_pnet_find_smcd.exit.thread.i.i
  br i1 %ibdev_applied.0.shrunk.i.i, label %if.end32.i.i.if.end53.i_crit_edge, label %if.end36.i.i

if.end32.i.i.if.end53.i_crit_edge:                ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end53.i

if.end36.i.i:                                     ; preds = %if.end32.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %95 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i105.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %95, i32 noundef 3520, i32 noundef 100) #20
  %tobool38.not.i.i = icmp eq ptr %call7.i.i.i105.i, null
  br i1 %tobool38.not.i.i, label %if.end36.i.i.smc_pnet_enter.exit_crit_edge, label %if.end40.i.i

if.end36.i.i.smc_pnet_enter.exit_crit_edge:       ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_enter.exit

if.end40.i.i:                                     ; preds = %if.end36.i.i
  %type.i106.i = getelementptr inbounds %struct.smc_pnetentry, ptr %call7.i.i.i105.i, i32 0, i32 2
  %96 = ptrtoint ptr %type.i106.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 2, ptr %type.i106.i, align 4
  %pnet_name41.i.i = getelementptr inbounds %struct.smc_pnetentry, ptr %call7.i.i.i105.i, i32 0, i32 1
  %97 = call ptr @memcpy(ptr %pnet_name41.i.i, ptr %pnet_name.i, i32 16)
  %98 = getelementptr inbounds %struct.smc_pnetentry, ptr %call7.i.i.i105.i, i32 0, i32 3
  %call45.i.i = tail call ptr @strncpy(ptr noundef %98, ptr noundef %call29.i, i32 noundef 64) #15
  %ib_port46.i.i = getelementptr inbounds %struct.smc_pnetentry, ptr %call7.i.i.i105.i, i32 0, i32 3, i32 1, i32 37
  %99 = ptrtoint ptr %ib_port46.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %ibport.0.i, ptr %ib_port46.i.i, align 1
  tail call void @mutex_lock_nested(ptr noundef %call.i, i32 noundef 0) #15
  %pnetlist.i107.i = getelementptr inbounds %struct.smc_pnettable, ptr %call.i, i32 0, i32 1
  %100 = ptrtoint ptr %pnetlist.i107.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %tmp_pe.0134.i.i = load ptr, ptr %pnetlist.i107.i, align 4
  %cmp.not135.i.i = icmp eq ptr %tmp_pe.0134.i.i, %pnetlist.i107.i
  br i1 %cmp.not135.i.i, label %if.end40.i.i.if.then65.critedge.i.i_crit_edge, label %if.end40.i.i.for.body.i108.i_crit_edge

if.end40.i.i.for.body.i108.i_crit_edge:           ; preds = %if.end40.i.i
  br label %for.body.i108.i

if.end40.i.i.if.then65.critedge.i.i_crit_edge:    ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then65.critedge.i.i

for.body.i108.i:                                  ; preds = %for.inc.i112.i.for.body.i108.i_crit_edge, %if.end40.i.i.for.body.i108.i_crit_edge
  %tmp_pe.0136.i.i = phi ptr [ %tmp_pe.0.i110.i, %for.inc.i112.i.for.body.i108.i_crit_edge ], [ %tmp_pe.0134.i.i, %if.end40.i.i.for.body.i108.i_crit_edge ]
  %type50.i.i = getelementptr inbounds %struct.smc_pnetentry, ptr %tmp_pe.0136.i.i, i32 0, i32 2
  %101 = ptrtoint ptr %type50.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %type50.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %102)
  %cmp51.i.i = icmp eq i32 %102, 2
  br i1 %cmp51.i.i, label %land.lhs.true.i109.i, label %for.body.i108.i.for.inc.i112.i_crit_edge

for.body.i108.i.for.inc.i112.i_crit_edge:         ; preds = %for.body.i108.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i112.i

land.lhs.true.i109.i:                             ; preds = %for.body.i108.i
  %103 = getelementptr inbounds %struct.smc_pnetentry, ptr %tmp_pe.0136.i.i, i32 0, i32 3
  %call55.i.i = tail call i32 @strncmp(ptr noundef %103, ptr noundef %call29.i, i32 noundef 64) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i.i)
  %tobool56.not.i.i = icmp eq i32 %call55.i.i, 0
  br i1 %tobool56.not.i.i, label %if.else.i117.i, label %land.lhs.true.i109.i.for.inc.i112.i_crit_edge

land.lhs.true.i109.i.for.inc.i112.i_crit_edge:    ; preds = %land.lhs.true.i109.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i112.i

for.inc.i112.i:                                   ; preds = %land.lhs.true.i109.i.for.inc.i112.i_crit_edge, %for.body.i108.i.for.inc.i112.i_crit_edge
  %104 = ptrtoint ptr %tmp_pe.0136.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %tmp_pe.0.i110.i = load ptr, ptr %tmp_pe.0136.i.i, align 4
  %cmp.not.i111.i = icmp eq ptr %tmp_pe.0.i110.i, %pnetlist.i107.i
  br i1 %cmp.not.i111.i, label %for.inc.i112.i.if.then65.critedge.i.i_crit_edge, label %for.inc.i112.i.for.body.i108.i_crit_edge

for.inc.i112.i.for.body.i108.i_crit_edge:         ; preds = %for.inc.i112.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i108.i

for.inc.i112.i.if.then65.critedge.i.i_crit_edge:  ; preds = %for.inc.i112.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then65.critedge.i.i

if.then65.critedge.i.i:                           ; preds = %for.inc.i112.i.if.then65.critedge.i.i_crit_edge, %if.end40.i.i.if.then65.critedge.i.i_crit_edge
  %prev.i.i113.i = getelementptr inbounds %struct.smc_pnettable, ptr %call.i, i32 0, i32 1, i32 1
  %105 = ptrtoint ptr %prev.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %prev.i.i113.i, align 4
  %call.i.i.i114.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i105.i, ptr noundef %106, ptr noundef %pnetlist.i107.i) #15
  br i1 %call.i.i.i114.i, label %if.end.i.i123.i.i, label %if.then65.critedge.i.i.smc_pnet_add_ib.exit.i_crit_edge

if.then65.critedge.i.i.smc_pnet_add_ib.exit.i_crit_edge: ; preds = %if.then65.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_add_ib.exit.i

if.end.i.i123.i.i:                                ; preds = %if.then65.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #17
  %107 = ptrtoint ptr %prev.i.i113.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %call7.i.i.i105.i, ptr %prev.i.i113.i, align 4
  %108 = ptrtoint ptr %call7.i.i.i105.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %pnetlist.i107.i, ptr %call7.i.i.i105.i, align 8
  %prev3.i.i.i115.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i105.i, i32 0, i32 1
  %109 = ptrtoint ptr %prev3.i.i.i115.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %106, ptr %prev3.i.i.i115.i, align 4
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %110)
  store volatile ptr %call7.i.i.i105.i, ptr %106, align 4
  br label %smc_pnet_add_ib.exit.i

if.else.i117.i:                                   ; preds = %land.lhs.true.i109.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @mutex_unlock(ptr noundef %call.i) #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i105.i) #15
  br label %if.end53.i

smc_pnet_add_ib.exit.i:                           ; preds = %if.end.i.i123.i.i, %if.then65.critedge.i.i.smc_pnet_add_ib.exit.i_crit_edge
  tail call void @mutex_unlock(ptr noundef %call.i) #15
  br label %if.end53.i

if.end53.i:                                       ; preds = %smc_pnet_add_ib.exit.i, %if.else.i117.i, %if.end32.i.i.if.end53.i_crit_edge, %if.end32.thread.i.i, %if.end23.i.if.end53.i_crit_edge
  %new_ibdev.0.off0.i = phi i1 [ false, %if.end23.i.if.end53.i_crit_edge ], [ true, %smc_pnet_add_ib.exit.i ], [ false, %if.end32.i.i.if.end53.i_crit_edge ], [ false, %if.else.i117.i ], [ false, %if.end32.thread.i.i ]
  %spec.select.i = or i1 %new_netdev.0.off0.i, %new_ibdev.0.off0.i
  %cond58.i = select i1 %spec.select.i, i32 0, i32 -17
  br label %smc_pnet_enter.exit

smc_pnet_enter.exit:                              ; preds = %if.end53.i, %if.end36.i.i.smc_pnet_enter.exit_crit_edge, %if.then32.i.smc_pnet_enter.exit_crit_edge, %if.then21.i, %smc_pnet_add_eth.exit.i.smc_pnet_enter.exit_crit_edge, %while.body12.i.i.smc_pnet_enter.exit_crit_edge, %while.end.thread.i.i.smc_pnet_enter.exit_crit_edge, %while.end.i.i.smc_pnet_enter.exit_crit_edge, %if.end.i.smc_pnet_enter.exit_crit_edge, %entry.smc_pnet_enter.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.then21.i ], [ %cond58.i, %if.end53.i ], [ -22, %if.then32.i.smc_pnet_enter.exit_crit_edge ], [ -22, %entry.smc_pnet_enter.exit_crit_edge ], [ %rc.0.i.i, %smc_pnet_add_eth.exit.i.smc_pnet_enter.exit_crit_edge ], [ -22, %if.end.i.smc_pnet_enter.exit_crit_edge ], [ -22, %while.end.i.i.smc_pnet_enter.exit_crit_edge ], [ -22, %while.end.thread.i.i.smc_pnet_enter.exit_crit_edge ], [ -12, %if.end36.i.i.smc_pnet_enter.exit_crit_edge ], [ -22, %while.body12.i.i.smc_pnet_enter.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %pnet_name.i) #15
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_pnet_del(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %4 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %_net.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %call4 = tail call fastcc i32 @smc_pnet_remove_by_pnetid(ptr noundef %5, ptr noundef %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_pnet_flush(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %_net.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %0 = ptrtoint ptr %_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_net.i, align 4
  %call1 = tail call fastcc i32 @smc_pnet_remove_by_pnetid(ptr noundef %1, ptr noundef null)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_smc_pnet_dump(ptr noundef %net, ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef readonly %pnetid, i32 noundef %start_idx) unnamed_addr #1 align 64 {
entry:
  %tmp.i55.i.i = alloca i8, align 1
  %tmp.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_net_id to i32))
  %0 = load i32, ptr @smc_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  tail call void @mutex_lock_nested(ptr noundef %call, i32 noundef 0) #15
  %pnetlist = getelementptr inbounds %struct.smc_pnettable, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %pnetlist to i32
  call void @__asan_load4_noabort(i32 %1)
  %pnetelem.037 = load ptr, ptr %pnetlist, align 4
  %cmp.not38 = icmp eq ptr %pnetelem.037, %pnetlist
  br i1 %cmp.not38, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tobool.not = icmp eq ptr %pnetid, null
  %cmp7.not = icmp eq ptr %net, @init_net
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %pnetelem.041 = phi ptr [ %pnetelem.037, %for.body.lr.ph ], [ %pnetelem.0, %for.inc.for.body_crit_edge ]
  %idx.039 = phi i32 [ 0, %for.body.lr.ph ], [ %idx.1, %for.inc.for.body_crit_edge ]
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %pnet_name = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.041, i32 0, i32 1
  %call3 = call fastcc zeroext i1 @smc_pnet_match(ptr noundef %pnet_name, ptr noundef nonnull %pnetid)
  br i1 %call3, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %inc = add i32 %idx.039, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.039, i32 %start_idx)
  %cmp4 = icmp slt i32 %idx.039, %start_idx
  br i1 %cmp4, label %if.end.for.inc_crit_edge, label %if.end6

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

if.end6:                                          ; preds = %if.end
  br i1 %cmp7.not, label %if.end6.if.end11_crit_edge, label %land.lhs.true8

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

land.lhs.true8:                                   ; preds = %if.end6
  %type = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.041, i32 0, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp9.not = icmp eq i32 %3, 1
  br i1 %cmp9.not, label %land.lhs.true8.if.end11_crit_edge, label %land.lhs.true8.for.inc_crit_edge

land.lhs.true8.for.inc_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc

land.lhs.true8.if.end11_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true8.if.end11_crit_edge, %if.end6.if.end11_crit_edge
  %call.i = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %portid, i32 noundef %seq, ptr noundef nonnull @smc_pnet_nl_family, i32 noundef 2, i8 noundef zeroext 1) #15
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end11.for.end_crit_edge, label %if.end.i

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.end.i:                                         ; preds = %if.end11
  %pnet_name.i.i = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.041, i32 0, i32 1
  %call.i.i.i = call i32 @strlen(ptr noundef %pnet_name.i.i) #19
  %add.i.i.i = add i32 %call.i.i.i, 1
  %call1.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i.i.i, ptr noundef %pnet_name.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

if.end.i.i:                                       ; preds = %if.end.i
  %type.i.i = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.041, i32 0, i32 2
  %4 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.i.i = icmp eq i32 %5, 1
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.else.i.i

if.then1.i.i:                                     ; preds = %if.end.i.i
  %6 = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.041, i32 0, i32 3
  %call.i42.i.i = call i32 @strlen(ptr noundef %6) #19
  %add.i43.i.i = add i32 %call.i42.i.i, 1
  %call1.i44.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef %add.i43.i.i, ptr noundef %6) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i44.i.i, 0
  br i1 %tobool4.not.i.i, label %if.then1.i.i.if.end11.i.i_crit_edge, label %if.then1.i.i.if.then.i.i_crit_edge

if.then1.i.i.if.then.i.i_crit_edge:               ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

if.then1.i.i.if.end11.i.i_crit_edge:              ; preds = %if.then1.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i.i

if.else.i.i:                                      ; preds = %if.end.i.i
  %call1.i47.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i47.i.i)
  %tobool8.not.i.i = icmp eq i32 %call1.i47.i.i, 0
  br i1 %tobool8.not.i.i, label %if.else.i.i.if.end11.i.i_crit_edge, label %if.else.i.i.if.then.i.i_crit_edge

if.else.i.i.if.then.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

if.else.i.i.if.end11.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.else.i.i.if.end11.i.i_crit_edge, %if.then1.i.i.if.end11.i.i_crit_edge
  %7 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp13.i.i = icmp eq i32 %8, 2
  br i1 %cmp13.i.i, label %if.then14.i.i, label %if.else22.i.i

if.then14.i.i:                                    ; preds = %if.end11.i.i
  %9 = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.041, i32 0, i32 3
  %call.i48.i.i = call i32 @strlen(ptr noundef %9) #19
  %add.i49.i.i = add i32 %call.i48.i.i, 1
  %call1.i50.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef %add.i49.i.i, ptr noundef %9) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50.i.i)
  %tobool17.not.i.i = icmp eq i32 %call1.i50.i.i, 0
  br i1 %tobool17.not.i.i, label %lor.lhs.false.i.i, label %if.then14.i.i.if.then.i.i_crit_edge

if.then14.i.i.if.then.i.i_crit_edge:              ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.then14.i.i
  %ib_port.i.i = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.041, i32 0, i32 3, i32 1, i32 37
  %10 = ptrtoint ptr %ib_port.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ib_port.i.i, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i.i) #15
  %12 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %tmp.i.i.i, align 1
  %call.i51.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i.i.i) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i.i)
  %tobool19.not.i.i = icmp eq i32 %call.i51.i.i, 0
  br i1 %tobool19.not.i.i, label %lor.lhs.false.i.i.smc_pnet_dumpinfo.exit_crit_edge, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

lor.lhs.false.i.i.smc_pnet_dumpinfo.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_dumpinfo.exit

if.else22.i.i:                                    ; preds = %if.end11.i.i
  %call1.i54.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull @.str.10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54.i.i)
  %tobool24.not.i.i = icmp eq i32 %call1.i54.i.i, 0
  br i1 %tobool24.not.i.i, label %lor.lhs.false25.i.i, label %if.else22.i.i.if.then.i.i_crit_edge

if.else22.i.i.if.then.i.i_crit_edge:              ; preds = %if.else22.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

lor.lhs.false25.i.i:                              ; preds = %if.else22.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i55.i.i) #15
  %13 = ptrtoint ptr %tmp.i55.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %tmp.i55.i.i, align 1
  %call.i56.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i55.i.i) #15
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i55.i.i) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i56.i.i)
  %tobool27.not.i.i = icmp eq i32 %call.i56.i.i, 0
  br i1 %tobool27.not.i.i, label %lor.lhs.false25.i.i.smc_pnet_dumpinfo.exit_crit_edge, label %lor.lhs.false25.i.i.if.then.i.i_crit_edge

lor.lhs.false25.i.i.if.then.i.i_crit_edge:        ; preds = %lor.lhs.false25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.then.i.i

lor.lhs.false25.i.i.smc_pnet_dumpinfo.exit_crit_edge: ; preds = %lor.lhs.false25.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_dumpinfo.exit

if.then.i.i:                                      ; preds = %lor.lhs.false25.i.i.if.then.i.i_crit_edge, %if.else22.i.i.if.then.i.i_crit_edge, %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.then14.i.i.if.then.i.i_crit_edge, %if.else.i.i.if.then.i.i_crit_edge, %if.then1.i.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %add.ptr1.i.i = getelementptr i8, ptr %call.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.for.end_crit_edge, label %if.then.i.i.i.i

if.then.i.i.for.end_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %14 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %15, %add.ptr1.i.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !97

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.11, i32 noundef 991, i32 noundef 9, ptr noundef null) #15
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %16 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i) #15
  br label %for.end

smc_pnet_dumpinfo.exit:                           ; preds = %lor.lhs.false25.i.i.smc_pnet_dumpinfo.exit_crit_edge, %lor.lhs.false.i.i.smc_pnet_dumpinfo.exit_crit_edge
  %add.ptr1.i3.i = getelementptr i8, ptr %call.i, i32 -20
  %18 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i3.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %20 = ptrtoint ptr %add.ptr1.i3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i3.i, align 4
  br label %for.inc

for.inc:                                          ; preds = %smc_pnet_dumpinfo.exit, %land.lhs.true8.for.inc_crit_edge, %if.end.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %idx.1 = phi i32 [ %inc, %if.end.for.inc_crit_edge ], [ %inc, %land.lhs.true8.for.inc_crit_edge ], [ %inc, %smc_pnet_dumpinfo.exit ], [ %idx.039, %land.lhs.true.for.inc_crit_edge ]
  %21 = ptrtoint ptr %pnetelem.041 to i32
  call void @__asan_load4_noabort(i32 %21)
  %pnetelem.0 = load ptr, ptr %pnetelem.041, align 4
  %cmp.not = icmp eq ptr %pnetelem.0, %pnetlist
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.i.i.i.i, %if.then.i.i.for.end_crit_edge, %if.end11.for.end_crit_edge, %entry.for.end_crit_edge
  %idx.036 = phi i32 [ %idx.039, %if.end.i.i.i.i ], [ %idx.039, %if.then.i.i.for.end_crit_edge ], [ 0, %entry.for.end_crit_edge ], [ %idx.1, %for.inc.for.end_crit_edge ], [ %idx.039, %if.end11.for.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %call) #15
  ret i32 %idx.036
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nlmsg_put(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strim(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skip_spaces(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pnet_find_base_ndev(ptr noundef %ndev) unnamed_addr #1 align 64 {
entry:
  %lower.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rtnl_lock() #15
  %call.i = tail call i32 @rtnl_is_locked() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.rhs.i, label %entry.if.end29.i_crit_edge

entry.if.end29.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i

land.rhs.i:                                       ; preds = %entry
  %.b52.i = load i1, ptr @__pnet_find_base_ndev.__already_done, align 1
  br i1 %.b52.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i, !prof !94

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__pnet_find_base_ndev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 908, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 908) #15
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i, %land.rhs.i.if.end29.i_crit_edge, %entry.if.end29.i_crit_edge
  %lower_level.i = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 58
  %0 = ptrtoint ptr %lower_level.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %lower_level.i, align 1
  %conv.i = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp59.not.i = icmp eq i8 %1, 0
  br i1 %cmp59.not.i, label %if.end29.i.__pnet_find_base_ndev.exit_crit_edge, label %if.end29.i.for.body.i_crit_edge

if.end29.i.for.body.i_crit_edge:                  ; preds = %if.end29.i
  br label %for.body.i

if.end29.i.__pnet_find_base_ndev.exit_crit_edge:  ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__pnet_find_base_ndev.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end29.i.for.body.i_crit_edge
  %ndev.addr.061.i = phi ptr [ %call43.i, %for.inc.i.for.body.i_crit_edge ], [ %ndev, %if.end29.i.for.body.i_crit_edge ]
  %i.060.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end29.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lower.i) #15
  %lower38.i = getelementptr inbounds %struct.net_device, ptr %ndev.addr.061.i, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %lower38.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %lower38.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %lower38.i
  br i1 %cmp.i.not.i, label %cleanup.i, label %for.inc.i

cleanup.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lower.i) #15
  br label %__pnet_find_base_ndev.exit

for.inc.i:                                        ; preds = %for.body.i
  %4 = ptrtoint ptr %lower.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %lower.i, align 4
  %call43.i = call ptr @netdev_lower_get_next(ptr noundef %ndev.addr.061.i, ptr noundef nonnull %lower.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lower.i) #15
  %inc.i = add nuw nsw i32 %i.060.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i.__pnet_find_base_ndev.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.__pnet_find_base_ndev.exit_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %__pnet_find_base_ndev.exit

__pnet_find_base_ndev.exit:                       ; preds = %for.inc.i.__pnet_find_base_ndev.exit_crit_edge, %cleanup.i, %if.end29.i.__pnet_find_base_ndev.exit_crit_edge
  %ndev.addr.058.i = phi ptr [ %ndev.addr.061.i, %cleanup.i ], [ %ndev, %if.end29.i.__pnet_find_base_ndev.exit_crit_edge ], [ %call43.i, %for.inc.i.__pnet_find_base_ndev.exit_crit_edge ]
  call void @rtnl_unlock() #15
  ret ptr %ndev.addr.058.i
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_pnet_netdev_event(ptr nocapture noundef readnone %this, i32 noundef %event, ptr nocapture noundef readonly %ptr) #1 align 64 {
entry:
  %lower.i = alloca ptr, align 4
  %lower.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %nd_net.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 127
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge81
    i32 5, label %sw.bb3
    i32 1, label %sw.bb5
    i32 2, label %sw.bb6
  ]

entry.sw.bb_crit_edge81:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge81
  %3 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nd_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_net_id to i32))
  %5 = load i32, ptr @smc_net_id, align 4
  %call1.i = tail call fastcc ptr @net_generic(ptr noundef %4, i32 noundef %5) #15
  tail call void @mutex_lock_nested(ptr noundef %call1.i, i32 noundef 0) #15
  %pnetlist.i = getelementptr inbounds %struct.smc_pnettable, ptr %call1.i, i32 0, i32 1
  %6 = ptrtoint ptr %pnetlist.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pnetlist.i, align 4
  %cmp.not6.i = icmp eq ptr %7, %pnetlist.i
  br i1 %cmp.not6.i, label %sw.bb.smc_pnet_remove_by_ndev.exit_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.smc_pnet_remove_by_ndev.exit_crit_edge:     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_remove_by_ndev.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %pnetelem.07.i = phi ptr [ %tmp_pe.08.i, %for.inc.i.for.body.i_crit_edge ], [ %7, %sw.bb.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %pnetelem.07.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %tmp_pe.08.i = load ptr, ptr %pnetelem.07.i, align 4
  %type.i = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.07.i, i32 0, i32 2
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp9.i = icmp eq i32 %10, 1
  br i1 %cmp9.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %ndev10.i = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.07.i, i32 0, i32 3, i32 0, i32 1
  %11 = ptrtoint ptr %ndev10.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ndev10.i, align 4
  %cmp11.i = icmp eq ptr %12, %1
  br i1 %cmp11.i, label %if.then.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %ndev10.i.le = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.07.i, i32 0, i32 3, i32 0, i32 1
  %13 = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.07.i, i32 0, i32 3
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.then.i.dev_put_track.exit.i_crit_edge, label %do.body1.i.i.i

if.then.i.dev_put_track.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put_track.exit.i

do.body1.i.i.i:                                   ; preds = %if.then.i
  %dev_tracker.i = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.07.i, i32 0, i32 3, i32 0, i32 2
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 119
  %call.i.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i) #15
  %14 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !95
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %15 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %17 = ptrtoint ptr %16 to i32
  %18 = tail call i32 @llvm.read_register.i32(metadata !82) #15
  %and.i.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %23, %17
  %24 = inttoptr i32 %add.i.i.i to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %add13.i.i.i = add i32 %26, -1
  store i32 %add13.i.i.i, ptr %24, align 4
  %27 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !96
  %and.i.i.i.i.i = and i32 %27, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_put.exit.i.i_crit_edge, !prof !97

do.body1.i.i.i.dev_put.exit.i.i_crit_edge:        ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_put.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %dev_put.exit.i.i

dev_put.exit.i.i:                                 ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_put.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %14) #15, !srcloc !98
  br label %dev_put_track.exit.i

dev_put_track.exit.i:                             ; preds = %dev_put.exit.i.i, %if.then.i.dev_put_track.exit.i_crit_edge
  %28 = ptrtoint ptr %ndev10.i.le to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %ndev10.i.le, align 4
  %call14.i = tail call i32 @___ratelimit(ptr noundef nonnull @smc_pnet_remove_by_ndev._rs, ptr noundef nonnull @__func__.smc_pnet_remove_by_ndev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i, label %dev_put_track.exit.i.smc_pnet_remove_by_ndev.exit_crit_edge, label %do.end.i

dev_put_track.exit.i.smc_pnet_remove_by_ndev.exit_crit_edge: ; preds = %dev_put_track.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_remove_by_ndev.exit

do.end.i:                                         ; preds = %dev_put_track.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %pnet_name.i = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.07.i, i32 0, i32 1
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %13, ptr noundef %pnet_name.i) #18
  br label %smc_pnet_remove_by_ndev.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %tmp_pe.08.i, %pnetlist.i
  br i1 %cmp.not.i, label %for.inc.i.smc_pnet_remove_by_ndev.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i

for.inc.i.smc_pnet_remove_by_ndev.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_remove_by_ndev.exit

smc_pnet_remove_by_ndev.exit:                     ; preds = %for.inc.i.smc_pnet_remove_by_ndev.exit_crit_edge, %do.end.i, %dev_put_track.exit.i.smc_pnet_remove_by_ndev.exit_crit_edge, %sw.bb.smc_pnet_remove_by_ndev.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %call1.i) #15
  tail call void @smc_ib_ndev_change(ptr noundef %1, i32 noundef %event) #15
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  %29 = ptrtoint ptr %nd_net.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %nd_net.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_net_id to i32))
  %31 = load i32, ptr @smc_net_id, align 4
  %call1.i25 = tail call fastcc ptr @net_generic(ptr noundef %30, i32 noundef %31) #15
  tail call void @mutex_lock_nested(ptr noundef %call1.i25, i32 noundef 0) #15
  %pnetlist.i26 = getelementptr inbounds %struct.smc_pnettable, ptr %call1.i25, i32 0, i32 1
  %32 = ptrtoint ptr %pnetlist.i26 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pnetlist.i26, align 4
  %cmp.not3.i = icmp eq ptr %33, %pnetlist.i26
  br i1 %cmp.not3.i, label %sw.bb3.smc_pnet_add_by_ndev.exit_crit_edge, label %sw.bb3.for.body.i29_crit_edge

sw.bb3.for.body.i29_crit_edge:                    ; preds = %sw.bb3
  br label %for.body.i29

sw.bb3.smc_pnet_add_by_ndev.exit_crit_edge:       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_add_by_ndev.exit

for.body.i29:                                     ; preds = %for.inc.i52.for.body.i29_crit_edge, %sw.bb3.for.body.i29_crit_edge
  %pnetelem.04.i = phi ptr [ %tmp_pe.05.i, %for.inc.i52.for.body.i29_crit_edge ], [ %33, %sw.bb3.for.body.i29_crit_edge ]
  %34 = ptrtoint ptr %pnetelem.04.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %tmp_pe.05.i = load ptr, ptr %pnetelem.04.i, align 4
  %type.i27 = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.04.i, i32 0, i32 2
  %35 = ptrtoint ptr %type.i27 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type.i27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp9.i28 = icmp eq i32 %36, 1
  br i1 %cmp9.i28, label %land.lhs.true.i32, label %for.body.i29.for.inc.i52_crit_edge

for.body.i29.for.inc.i52_crit_edge:               ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i52

land.lhs.true.i32:                                ; preds = %for.body.i29
  %ndev10.i30 = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.04.i, i32 0, i32 3, i32 0, i32 1
  %37 = ptrtoint ptr %ndev10.i30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ndev10.i30, align 4
  %tobool.not.i31 = icmp eq ptr %38, null
  br i1 %tobool.not.i31, label %land.lhs.true11.i, label %land.lhs.true.i32.for.inc.i52_crit_edge

land.lhs.true.i32.for.inc.i52_crit_edge:          ; preds = %land.lhs.true.i32
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i52

land.lhs.true11.i:                                ; preds = %land.lhs.true.i32
  %39 = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.04.i, i32 0, i32 3
  %call13.i = tail call i32 @strncmp(ptr noundef %39, ptr noundef %1, i32 noundef 16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.then.i36, label %land.lhs.true11.i.for.inc.i52_crit_edge

land.lhs.true11.i.for.inc.i52_crit_edge:          ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.inc.i52

if.then.i36:                                      ; preds = %land.lhs.true11.i
  %ndev10.i30.le = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.04.i, i32 0, i32 3, i32 0, i32 1
  %dev_tracker.i34 = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.04.i, i32 0, i32 3, i32 0, i32 2
  %tobool.not.i.i35 = icmp eq ptr %1, null
  br i1 %tobool.not.i.i35, label %if.then.i36.dev_hold_track.exit.i_crit_edge, label %do.body1.i.i.i45

if.then.i36.dev_hold_track.exit.i_crit_edge:      ; preds = %if.then.i36
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_hold_track.exit.i

do.body1.i.i.i45:                                 ; preds = %if.then.i36
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #15, !srcloc !95
  %pcpu_refcnt.i.i.i37 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %41 = ptrtoint ptr %pcpu_refcnt.i.i.i37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pcpu_refcnt.i.i.i37, align 4
  %43 = ptrtoint ptr %42 to i32
  %44 = tail call i32 @llvm.read_register.i32(metadata !82) #15
  %and.i.i.i.i38 = and i32 %44, -16384
  %45 = inttoptr i32 %and.i.i.i.i38 to ptr
  %cpu.i.i.i39 = getelementptr inbounds %struct.thread_info, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %cpu.i.i.i39 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %cpu.i.i.i39, align 4
  %arrayidx.i.i.i40 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.i.i.i40, align 4
  %add.i.i.i41 = add i32 %49, %43
  %50 = inttoptr i32 %add.i.i.i41 to ptr
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %50, align 4
  %add13.i.i.i42 = add i32 %52, 1
  store i32 %add13.i.i.i42, ptr %50, align 4
  %53 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #15, !srcloc !96
  %and.i.i.i.i.i43 = and i32 %53, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i43)
  %tobool24.not.i.i.i44 = icmp eq i32 %and.i.i.i.i.i43, 0
  br i1 %tobool24.not.i.i.i44, label %if.then28.i.i.i46, label %do.body1.i.i.i45.dev_hold.exit.i.i_crit_edge, !prof !97

do.body1.i.i.i45.dev_hold.exit.i.i_crit_edge:     ; preds = %do.body1.i.i.i45
  call void @__sanitizer_cov_trace_pc() #17
  br label %dev_hold.exit.i.i

if.then28.i.i.i46:                                ; preds = %do.body1.i.i.i45
  call void @__sanitizer_cov_trace_pc() #17
  tail call void @warn_bogus_irq_restore() #15
  br label %dev_hold.exit.i.i

dev_hold.exit.i.i:                                ; preds = %if.then28.i.i.i46, %do.body1.i.i.i45.dev_hold.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #15, !srcloc !98
  %refcnt_tracker.i.i.i47 = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 119
  %call.i.i.i48 = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i.i47, ptr noundef %dev_tracker.i34, i32 noundef 2592) #15
  br label %dev_hold_track.exit.i

dev_hold_track.exit.i:                            ; preds = %dev_hold.exit.i.i, %if.then.i36.dev_hold_track.exit.i_crit_edge
  %54 = ptrtoint ptr %ndev10.i30.le to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %1, ptr %ndev10.i30.le, align 4
  %call16.i = tail call i32 @___ratelimit(ptr noundef nonnull @smc_pnet_add_by_ndev._rs, ptr noundef nonnull @__func__.smc_pnet_add_by_ndev) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %dev_hold_track.exit.i.smc_pnet_add_by_ndev.exit_crit_edge, label %do.end.i50

dev_hold_track.exit.i.smc_pnet_add_by_ndev.exit_crit_edge: ; preds = %dev_hold_track.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_add_by_ndev.exit

do.end.i50:                                       ; preds = %dev_hold_track.exit.i
  call void @__sanitizer_cov_trace_pc() #17
  %pnet_name.i49 = getelementptr inbounds %struct.smc_pnetentry, ptr %pnetelem.04.i, i32 0, i32 1
  %call23.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %39, ptr noundef %pnet_name.i49) #18
  br label %smc_pnet_add_by_ndev.exit

for.inc.i52:                                      ; preds = %land.lhs.true11.i.for.inc.i52_crit_edge, %land.lhs.true.i32.for.inc.i52_crit_edge, %for.body.i29.for.inc.i52_crit_edge
  %cmp.not.i51 = icmp eq ptr %tmp_pe.05.i, %pnetlist.i26
  br i1 %cmp.not.i51, label %for.inc.i52.smc_pnet_add_by_ndev.exit_crit_edge, label %for.inc.i52.for.body.i29_crit_edge

for.inc.i52.for.body.i29_crit_edge:               ; preds = %for.inc.i52
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i29

for.inc.i52.smc_pnet_add_by_ndev.exit_crit_edge:  ; preds = %for.inc.i52
  call void @__sanitizer_cov_trace_pc() #17
  br label %smc_pnet_add_by_ndev.exit

smc_pnet_add_by_ndev.exit:                        ; preds = %for.inc.i52.smc_pnet_add_by_ndev.exit_crit_edge, %do.end.i50, %dev_hold_track.exit.i.smc_pnet_add_by_ndev.exit_crit_edge, %sw.bb3.smc_pnet_add_by_ndev.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %call1.i25) #15
  tail call void @smc_ib_ndev_change(ptr noundef %1, i32 noundef 5) #15
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  %call.i.i = tail call i32 @rtnl_is_locked() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i53 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i53, label %land.rhs.i.i, label %sw.bb5.if.end29.i.i_crit_edge

sw.bb5.if.end29.i.i_crit_edge:                    ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i.i

land.rhs.i.i:                                     ; preds = %sw.bb5
  %.b52.i.i = load i1, ptr @__pnet_find_base_ndev.__already_done, align 1
  br i1 %.b52.i.i, label %land.rhs.i.i.if.end29.i.i_crit_edge, label %if.then.i.i, !prof !94

land.rhs.i.i.if.end29.i.i_crit_edge:              ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__pnet_find_base_ndev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 908, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 908) #15
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then.i.i, %land.rhs.i.i.if.end29.i.i_crit_edge, %sw.bb5.if.end29.i.i_crit_edge
  %lower_level.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 58
  %55 = ptrtoint ptr %lower_level.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %lower_level.i.i, align 1
  %conv.i.i = zext i8 %56 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %cmp59.not.i.i = icmp eq i8 %56, 0
  br i1 %cmp59.not.i.i, label %if.end29.i.i.cleanup_crit_edge, label %if.end29.i.i.for.body.i.i_crit_edge

if.end29.i.i.for.body.i.i_crit_edge:              ; preds = %if.end29.i.i
  br label %for.body.i.i

if.end29.i.i.cleanup_crit_edge:                   ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end29.i.i.for.body.i.i_crit_edge
  %ndev.addr.061.i.i = phi ptr [ %call43.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %1, %if.end29.i.i.for.body.i.i_crit_edge ]
  %i.060.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %if.end29.i.i.for.body.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lower.i.i) #15
  %lower38.i.i = getelementptr inbounds %struct.net_device, ptr %ndev.addr.061.i.i, i32 0, i32 13, i32 1
  %57 = ptrtoint ptr %lower38.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile ptr, ptr %lower38.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %58, %lower38.i.i
  br i1 %cmp.i.not.i.i, label %cleanup.i.i, label %for.inc.i.i

cleanup.i.i:                                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lower.i.i) #15
  br label %cleanup

for.inc.i.i:                                      ; preds = %for.body.i.i
  %59 = ptrtoint ptr %lower.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %58, ptr %lower.i.i, align 4
  %call43.i.i = call ptr @netdev_lower_get_next(ptr noundef %ndev.addr.061.i.i, ptr noundef nonnull %lower.i.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lower.i.i) #15
  %inc.i.i = add nuw nsw i32 %i.060.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %call.i = tail call i32 @rtnl_is_locked() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i54 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i54, label %land.rhs.i, label %sw.bb6.if.end29.i_crit_edge

sw.bb6.if.end29.i_crit_edge:                      ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i

land.rhs.i:                                       ; preds = %sw.bb6
  %.b52.i = load i1, ptr @__pnet_find_base_ndev.__already_done, align 1
  br i1 %.b52.i, label %land.rhs.i.if.end29.i_crit_edge, label %if.then.i55, !prof !94

land.rhs.i.if.end29.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %if.end29.i

if.then.i55:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #17
  store i1 true, ptr @__pnet_find_base_ndev.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 908, i32 noundef 9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, i32 noundef 908) #15
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then.i55, %land.rhs.i.if.end29.i_crit_edge, %sw.bb6.if.end29.i_crit_edge
  %lower_level.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 58
  %60 = ptrtoint ptr %lower_level.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %lower_level.i, align 1
  %conv.i = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %cmp59.not.i = icmp eq i8 %61, 0
  br i1 %cmp59.not.i, label %if.end29.i.cleanup_crit_edge, label %if.end29.i.for.body.i56_crit_edge

if.end29.i.for.body.i56_crit_edge:                ; preds = %if.end29.i
  br label %for.body.i56

if.end29.i.cleanup_crit_edge:                     ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

for.body.i56:                                     ; preds = %for.inc.i57.for.body.i56_crit_edge, %if.end29.i.for.body.i56_crit_edge
  %ndev.addr.061.i = phi ptr [ %call43.i, %for.inc.i57.for.body.i56_crit_edge ], [ %1, %if.end29.i.for.body.i56_crit_edge ]
  %i.060.i = phi i32 [ %inc.i, %for.inc.i57.for.body.i56_crit_edge ], [ 0, %if.end29.i.for.body.i56_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lower.i) #15
  %lower38.i = getelementptr inbounds %struct.net_device, ptr %ndev.addr.061.i, i32 0, i32 13, i32 1
  %62 = ptrtoint ptr %lower38.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %lower38.i, align 4
  %cmp.i.not.i = icmp eq ptr %63, %lower38.i
  br i1 %cmp.i.not.i, label %cleanup.i, label %for.inc.i57

cleanup.i:                                        ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lower.i) #15
  br label %cleanup

for.inc.i57:                                      ; preds = %for.body.i56
  %64 = ptrtoint ptr %lower.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %lower.i, align 4
  %call43.i = call ptr @netdev_lower_get_next(ptr noundef %ndev.addr.061.i, ptr noundef nonnull %lower.i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lower.i) #15
  %inc.i = add nuw nsw i32 %i.060.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.inc.i57.cleanup_crit_edge, label %for.inc.i57.for.body.i56_crit_edge

for.inc.i57.for.body.i56_crit_edge:               ; preds = %for.inc.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %for.body.i56

for.inc.i57.cleanup_crit_edge:                    ; preds = %for.inc.i57
  call void @__sanitizer_cov_trace_pc() #17
  br label %cleanup

cleanup:                                          ; preds = %for.inc.i57.cleanup_crit_edge, %cleanup.i, %if.end29.i.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %cleanup.i.i, %if.end29.i.i.cleanup_crit_edge, %smc_pnet_add_by_ndev.exit, %smc_pnet_remove_by_ndev.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %smc_pnet_add_by_ndev.exit ], [ 1, %smc_pnet_remove_by_ndev.exit ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end29.i.i.cleanup_crit_edge ], [ 1, %cleanup.i.i ], [ 1, %if.end29.i.cleanup_crit_edge ], [ 1, %cleanup.i ], [ 1, %for.inc.i.i.cleanup_crit_edge ], [ 1, %for.inc.i57.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_ib_ndev_change(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rdma_dev_access_netns(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @smc_ib_port_active(ptr noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ib_determine_gid(ptr noundef, i8 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_ism_cantalk(i64 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #14

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #15

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #16 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #16 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #15 = { nounwind }
attributes #16 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #17 = { nomerge }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin nounwind }
attributes #20 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !21, !23, !25, !27, !29, !31, !33, !34, !35, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !53, !54, !55, !56, !57, !59, !60, !61, !62, !63, !65, !66, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81}
!llvm.named.register.sp = !{!82}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @smc_pnet_net_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../net/smc/smc_pnet.c", i32 867, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @smc_pnet_net_init.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../net/smc/smc_pnet.c", i32 869, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!8 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!10 = distinct !{null, !11, !"__warned", i1 false, i1 false}
!11 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../net/smc/smc_pnet.c", i32 908, i32 2}
!19 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @smc_pnet_nl_family, !22, !"smc_pnet_nl_family", i1 false, i1 false}
!22 = !{!"../net/smc/smc_pnet.c", i32 707, i32 27}
!23 = !{ptr @smc_pnet_policy, !24, !"smc_pnet_policy", i1 false, i1 false}
!24 = !{!"../net/smc/smc_pnet.c", i32 35, i32 32}
!25 = !{ptr @smc_pnet_ops, !26, !"smc_pnet_ops", i1 false, i1 false}
!26 = !{!"../net/smc/smc_pnet.c", i32 677, i32 30}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/smc/smc_pnet.c", i32 538, i32 47}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/net/netlink.h", i32 991, i32 3}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../net/smc/smc_pnet.c", i32 395, i32 3}
!33 = !{ptr @smc_pnet_add_eth._rs, !32, !"_rs", i1 false, i1 false}
!34 = !{ptr @__func__.smc_pnet_add_eth, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @smc_pnet_add_eth._entry, !32, !"_entry", i1 false, i1 false}
!37 = !{ptr @smc_pnet_add_eth._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @smc_pnet_add_ib._rs, !39, !"_rs", i1 false, i1 false}
!39 = !{!"../net/smc/smc_pnet.c", i32 420, i32 4}
!40 = !{ptr @__func__.smc_pnet_add_ib, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @smc_pnet_add_ib._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @smc_pnet_add_ib._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @smc_pnet_add_ib._rs.15, !45, !"_rs", i1 false, i1 false}
!45 = !{!"../net/smc/smc_pnet.c", i32 430, i32 4}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @smc_pnet_add_ib._entry.16, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @smc_pnet_add_ib._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @smc_netdev_notifier, !50, !"smc_netdev_notifier", i1 false, i1 false}
!50 = !{!"../net/smc/smc_pnet.c", i32 855, i32 30}
!51 = !{ptr @smc_pnet_remove_by_ndev._rs, !52, !"_rs", i1 false, i1 false}
!52 = !{!"../net/smc/smc_pnet.c", i32 233, i32 4}
!53 = !{ptr @__func__.smc_pnet_remove_by_ndev, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @smc_pnet_remove_by_ndev._entry, !52, !"_entry", i1 false, i1 false}
!56 = !{ptr @smc_pnet_remove_by_ndev._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @smc_pnet_add_by_ndev._rs, !58, !"_rs", i1 false, i1 false}
!58 = !{!"../net/smc/smc_pnet.c", i32 202, i32 4}
!59 = !{ptr @__func__.smc_pnet_add_by_ndev, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @smc_pnet_add_by_ndev._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @smc_pnet_add_by_ndev._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @smc_pnet_remove_by_pnetid._rs, !64, !"_rs", i1 false, i1 false}
!64 = !{!"../net/smc/smc_pnet.c", i32 124, i32 5}
!65 = !{ptr @__func__.smc_pnet_remove_by_pnetid, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @smc_pnet_remove_by_pnetid._entry, !64, !"_entry", i1 false, i1 false}
!68 = !{ptr @smc_pnet_remove_by_pnetid._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @smc_pnet_remove_by_pnetid._rs.22, !70, !"_rs", i1 false, i1 false}
!70 = !{!"../net/smc/smc_pnet.c", i32 148, i32 5}
!71 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @smc_pnet_remove_by_pnetid._entry.23, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @smc_pnet_remove_by_pnetid._entry_ptr.25, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @smc_pnet_remove_by_pnetid._rs.26, !75, !"_rs", i1 false, i1 false}
!75 = !{!"../net/smc/smc_pnet.c", i32 168, i32 4}
!76 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @smc_pnet_remove_by_pnetid._entry.27, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @smc_pnet_remove_by_pnetid._entry_ptr.29, !75, !"_entry_ptr", i1 false, i1 false}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../include/net/sock.h", i32 2077, i32 8}
!81 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!82 = !{!"sp"}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i64 2149384996}
!93 = !{i64 2149385262}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{i64 772537, i64 772598}
!96 = !{i64 775269}
!97 = !{!"branch_weights", i32 1, i32 2000}
!98 = !{i64 775554}
!99 = !{i8 0, i8 2}
!100 = !{i64 2148368256}
!101 = !{i64 853876, i64 853901, i64 853923, i64 853939, i64 853951, i64 853971, i64 853995, i64 854011, i64 854023}
!102 = !{i64 2148368444}
