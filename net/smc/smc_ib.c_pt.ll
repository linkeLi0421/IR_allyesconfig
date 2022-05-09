; ModuleID = '/llk/IR_all_yes/net/smc/smc_ib.c_pt.bc'
source_filename = "../net/smc/smc_ib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.smc_ib_devices = type { %struct.list_head, %struct.mutex }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.ib_cq_init_attr = type { i32, i32, i32 }
%struct.ib_client = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.refcount_struct, %struct.completion, i32, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.smc_lgr_list = type { %struct.list_head, %struct.spinlock, i32 }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ib_qp_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ib_qp_cap, %struct.rdma_ah_attr, %struct.rdma_ah_attr, i16, i16, i8, i8, i8, i8, i8, i32, i8, i8, i8, i32, i8, i32, ptr }
%struct.ib_qp_cap = type { i32, i32, i32, i32, i32, i32 }
%struct.rdma_ah_attr = type { %struct.ib_global_route, i8, i8, i32, i8, i32, %union.anon.163 }
%struct.ib_global_route = type { ptr, %union.ib_gid, i32, i8, i8, i8 }
%union.ib_gid = type { %struct.anon.158 }
%struct.anon.158 = type { i64, i64 }
%union.anon.163 = type { %struct.opa_ah_attr }
%struct.opa_ah_attr = type { i32, i8, i8 }
%struct.smc_link = type { ptr, i8, ptr, ptr, %struct.ib_qp_attr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.atomic_t, ptr, i32, %struct.wait_queue_head, %struct.atomic_t, ptr, ptr, ptr, i32, i32, i64, i32, i32, %struct.ib_reg_wr, %struct.wait_queue_head, %struct.atomic_t, i32, [16 x i8], i8, i32, i32, i32, i32, i32, [6 x i8], [16 x i8], i8, [4 x i8], [4 x i8], i8, i8, i8, %struct.refcount_struct, ptr, %struct.work_struct, [64 x i8], i32, i32, %struct.delayed_work, %struct.completion, i32, %struct.atomic_t }
%struct.ib_reg_wr = type { %struct.ib_send_wr, ptr, i32, i32 }
%struct.ib_send_wr = type { ptr, %union.anon.159, ptr, i32, i32, i32, %union.anon.160 }
%union.anon.159 = type { i64 }
%union.anon.160 = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.smc_link_group = type { %struct.list_head, %struct.rb_root, %struct.rwlock_t, i32, i16, [16 x %struct.list_head], %struct.mutex, [16 x %struct.list_head], %struct.mutex, [4 x i8], %struct.delayed_work, %struct.work_struct, ptr, i8, %struct.refcount_struct, i8, i8, [32 x i8], i8, i8, [32 x i8], %union.anon.173 }
%union.anon.173 = type { %struct.anon.174 }
%struct.anon.174 = type { i32, [3 x %struct.smc_link], ptr, ptr, [8 x i8], [255 x [3 x %struct.smc_rtoken]], [8 x i32], i8, i32, [17 x i8], %struct.list_head, %struct.spinlock, %struct.mutex, %struct.work_struct, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %struct.wait_queue_head, %struct.smc_llc_flow, %struct.smc_llc_flow, ptr, %struct.spinlock, i32, i32, [6 x i8], i8, i32, ptr }
%struct.smc_rtoken = type { i64, i32 }
%struct.smc_llc_flow = type { i32, ptr }
%struct.smc_ib_device = type { %struct.list_head, ptr, [2 x %struct.ib_port_attr], %struct.ib_event_handler, ptr, ptr, %struct.tasklet_struct, %struct.tasklet_struct, [2 x [6 x i8]], [2 x [16 x i8]], [2 x i8], i8, %struct.work_struct, i32, [1 x i32], %struct.atomic_t, %struct.wait_queue_head, %struct.mutex, [2 x %struct.atomic_t], [2 x i32] }
%struct.ib_port_attr = type { i64, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i16, i32, i32, i8, i8, i8, i8, i8, i8, i16, i8, i16 }
%struct.ib_event_handler = type { ptr, ptr, %struct.list_head }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.172, i32 }
%union.anon.172 = type { ptr }
%struct.ib_device = type { ptr, %struct.ib_device_ops, [64 x i8], %struct.callback_head, %struct.list_head, %struct.rw_semaphore, %struct.spinlock, %struct.rw_semaphore, %struct.xarray, %struct.mutex, %struct.rwlock_t, ptr, i32, %union.anon.171, [4 x ptr], i64, [64 x i8], i64, i32, i8, i8, i32, %struct.ib_device_attr, ptr, %struct.rdmacg_device, i32, %struct.spinlock, [3 x %struct.list_head], ptr, ptr, %struct.refcount_struct, %struct.completion, %struct.work_struct, ptr, %struct.mutex, %struct.xarray, [16 x i8], i32, i32 }
%struct.ib_device_ops = type { ptr, i32, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%union.anon.171 = type { %struct.ib_core_device }
%struct.ib_core_device = type { %struct.device, %struct.possible_net_t, ptr, %struct.list_head, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.possible_net_t = type { ptr }
%struct.ib_device_attr = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i8, i32, i32, %struct.ib_odp_caps, i64, i64, %struct.ib_rss_caps, i32, i32, %struct.ib_tm_caps, %struct.ib_cq_caps, i64, i32 }
%struct.ib_odp_caps = type { i64, %struct.anon.162 }
%struct.anon.162 = type { i32, i32, i32, i32 }
%struct.ib_rss_caps = type { i32, i32, i32 }
%struct.ib_tm_caps = type { i32, i32, i32, i32, i32 }
%struct.ib_cq_caps = type { i16, i16 }
%struct.rdmacg_device = type { %struct.list_head, %struct.list_head, ptr }
%struct.flowi4 = type { %struct.flowi_common, i32, i32, %union.flowi_uli }
%struct.flowi_common = type { i32, i32, i32, i8, i8, i8, i8, i32, %struct.kuid_t, %struct.flowi_tunnel, i32 }
%struct.kuid_t = type { i32 }
%struct.flowi_tunnel = type { i64 }
%union.flowi_uli = type { i32 }
%struct.rtable = type { %struct.dst_entry, i32, i32, i16, i8, i8, i32, i8, %union.anon.182, i32, %struct.list_head, ptr }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%union.anon.182 = type { %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.neighbour = type { ptr, ptr, ptr, i32, i32, %struct.rwlock_t, %struct.refcount_struct, i32, %struct.sk_buff_head, %struct.timer_list, i32, %struct.atomic_t, i8, i8, i8, i8, i32, %struct.seqlock_t, [32 x i8], %struct.hh_cache, ptr, ptr, %struct.list_head, %struct.list_head, %struct.callback_head, ptr, ptr, [0 x i8], [4 x i8] }
%struct.hh_cache = type { i32, %struct.seqlock_t, [32 x i32] }
%struct.smc_init_info_smcrv2 = type { i32, ptr, i32, ptr, i8, [16 x i8], i8, [6 x i8], %struct.smc_gidlist }
%struct.smc_gidlist = type { i8, [2 x [16 x i8]] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.140, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.157, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.140 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.157 = type { ptr }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.ib_gid_attr = type { ptr, ptr, %union.ib_gid, i32, i16, i32 }
%struct.in_device = type { ptr, ptr, %struct.refcount_struct, i32, ptr, ptr, ptr, i32, %struct.spinlock, ptr, i32, i32, i32, i32, i32, i8, i8, i32, %struct.timer_list, %struct.timer_list, ptr, %struct.ipv4_devconf, %struct.callback_head }
%struct.ipv4_devconf = type { ptr, [33 x i32], [2 x i32] }
%struct.in_ifaddr = type { %struct.hlist_node, ptr, ptr, %struct.callback_head, i32, i32, i32, i32, i32, i8, i8, i32, [16 x i8], i32, i32, i32, i32 }
%struct.smc_pci_dev = type { i32, i16, i16, i16, [16 x i8] }
%struct.netlink_callback = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, i32, i32, i32, i8, %union.anon.144 }
%union.anon.144 = type { [6 x i32], [24 x i8] }
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
%struct.nlmsghdr = type { i32, i16, i16, i32, i32 }
%struct.ib_qp_init_attr = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.ib_qp_cap, i32, i32, i32, i32, ptr, i32 }
%struct.ib_event = type { ptr, %union.anon.129, i32 }
%union.anon.129 = type { ptr }
%struct.ib_qp = type { ptr, ptr, ptr, ptr, %struct.spinlock, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, %struct.rdma_restrack_entry, ptr }
%struct.rdma_restrack_entry = type { i8, i8, %struct.kref, %struct.completion, ptr, ptr, i32, i8, i32 }
%struct.smc_buf_desc = type { %struct.list_head, ptr, ptr, i32, i32, %union.anon.176 }
%union.anon.176 = type { %struct.anon.178, [40 x i8] }
%struct.anon.178 = type { i16, i64, i32 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@smc_ib_devices = dso_local global { %struct.smc_ib_devices, [60 x i8] } { %struct.smc_ib_devices { %struct.list_head { ptr @smc_ib_devices, ptr @smc_ib_devices }, %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @smc_ib_devices, i64 60), ptr getelementptr (i8, ptr @smc_ib_devices, i64 60) }, ptr getelementptr (i8, ptr @smc_ib_devices, i64 8), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } } }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"smc_ib_devices.mutex.wait_lock\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"smc_ib_devices.mutex\00", [43 x i8] zeroinitializer }, align 32
@local_systemid = dso_local global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@init_net = external dso_local global %struct.net, align 128
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"smc\00", [28 x i8] zeroinitializer }, align 32
@__const.smc_ib_setup_per_ibdev.cqattr = private unnamed_addr constant %struct.ib_cq_init_attr { i32 32766, i32 0, i32 0 }, align 4
@smc_ib_client = internal global { %struct.ib_client, [32 x i8] } { %struct.ib_client { ptr @.str.15, ptr @smc_ib_add_dev, ptr @smc_ib_remove_dev, ptr null, ptr null, ptr null, ptr null, %struct.refcount_struct zeroinitializer, %struct.completion zeroinitializer, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@smc_ib_determine_gid_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"net/smc/smc_ib.c\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@smc_ib_determine_gid_rcu.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__in_dev_get_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"include/linux/inetdevice.h\00", [37 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@ib_dealloc_pd.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/rdma/ib_verbs.h\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel PD shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@smc_gen_nl_family = external dso_local global %struct.genl_family, align 4
@smc_lgr_list = external dso_local global %struct.smc_lgr_list, align 4
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@ib_destroy_cq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Destroy of kernel CQ shouldn't fail\00", [60 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smc_ib\00", [25 x i8] zeroinitializer }, align 32
@smc_ib_add_dev.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&smcibdev->port_event_work)\00", [50 x i8] zeroinitializer }, align 32
@smc_ib_add_dev.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&smcibdev->lnks_deleted\00", [40 x i8] zeroinitializer }, align 32
@smc_ib_add_dev.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&smcibdev->mutex\00", [47 x i8] zeroinitializer }, align 32
@smc_ib_add_dev._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.smc_ib_add_dev = private unnamed_addr constant [15 x i8] c"smc_ib_add_dev\00", align 1
@smc_ib_add_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.smc_ib_add_dev, ptr @.str.5, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014smc: adding ib device %s with port count %d\0A\00", [49 x i8] zeroinitializer }, align 32
@smc_ib_add_dev._entry_ptr = internal global ptr @smc_ib_add_dev._entry, section ".printk_index", align 4
@smc_ib_add_dev._rs.23 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@smc_ib_add_dev._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @__func__.smc_ib_add_dev, ptr @.str.5, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014smc:    ib device %s port %d has pnetid %.16s%s\0A\00", [45 x i8] zeroinitializer }, align 32
@smc_ib_add_dev._entry_ptr.26 = internal global ptr @smc_ib_add_dev._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" (user defined)\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@smc_ib_remove_dev._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.21, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.smc_ib_remove_dev = private unnamed_addr constant [18 x i8] c"smc_ib_remove_dev\00", align 1
@smc_ib_remove_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @__func__.smc_ib_remove_dev, ptr @.str.5, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014smc: removing ib device %s\0A\00", [34 x i8] zeroinitializer }, align 32
@smc_ib_remove_dev._entry_ptr = internal global ptr @smc_ib_remove_dev._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.30 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.31 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 4]
@__sancov_gen_cov_switch_values.32 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 8, i64 9, i64 10, i64 18]
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"smc_ib_devices\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 40, i32 23 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 41, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [15 x i8] c"local_systemid\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 45, i32 4 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 456, i32 17 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"smc_ib_client\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 971, i32 25 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 695, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 243, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [30 x i8] c"../include/linux/inetdevice.h\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 232, i32 9 }
@___asan_gen_.70 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 723, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 3498, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 576, i32 43 }
@___asan_gen_.82 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 991, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [27 x i8] c"../include/rdma/ib_verbs.h\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 3936, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 972, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 917, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 919, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 920, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 931, i32 2 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 942, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [20 x i8] c"../net/smc/smc_ib.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 962, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @smc_ib_add_dev._entry, ptr @smc_ib_add_dev._entry.24, ptr @smc_ib_add_dev._entry_ptr, ptr @smc_ib_add_dev._entry_ptr.26, ptr @smc_ib_remove_dev._entry, ptr @smc_ib_remove_dev._entry_ptr, ptr @smc_ib_devices, ptr @.str, ptr @.str.1, ptr @local_systemid, ptr @.str.2, ptr @smc_ib_client, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @smc_ib_add_dev.__key, ptr @.str.16, ptr @smc_ib_add_dev.__key.17, ptr @.str.18, ptr @smc_ib_add_dev.__key.19, ptr @.str.20, ptr @smc_ib_add_dev._rs, ptr @.str.21, ptr @.str.22, ptr @smc_ib_add_dev._rs.23, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @smc_ib_remove_dev._rs, ptr @.str.29], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_ib_devices to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @local_systemid to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_ib_client to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_ib_add_dev.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_ib_add_dev.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_ib_add_dev.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_ib_add_dev._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_ib_add_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_ib_add_dev._rs.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_ib_add_dev._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_ib_remove_dev._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @smc_ib_remove_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_ib_modify_qp_rts(ptr nocapture noundef readonly %lnk) local_unnamed_addr #0 align 64 {
entry:
  %qp_attr = alloca %struct.ib_qp_attr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr) #14
  %0 = call ptr @memset(ptr %qp_attr, i32 0, i32 216)
  %1 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %qp_attr, align 8
  %timeout = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 20
  %2 = ptrtoint ptr %timeout to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 15, ptr %timeout, align 8
  %retry_cnt = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 21
  %3 = ptrtoint ptr %retry_cnt to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 7, ptr %retry_cnt, align 1
  %rnr_retry = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 22
  %4 = ptrtoint ptr %rnr_retry to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 7, ptr %rnr_retry, align 2
  %psn_initial = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 39
  %5 = ptrtoint ptr %psn_initial to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %psn_initial, align 4
  %sq_psn = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 6
  %7 = ptrtoint ptr %sq_psn to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %sq_psn, align 8
  %max_rd_atomic = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr, i32 0, i32 16
  %8 = ptrtoint ptr %max_rd_atomic to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %max_rd_atomic, align 2
  %roce_qp = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 3
  %9 = ptrtoint ptr %roce_qp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %roce_qp, align 4
  %call = call i32 @ib_modify_qp(ptr noundef %10, ptr noundef nonnull %qp_attr, i32 noundef 77313) #14
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr) #14
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_modify_qp(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_ib_modify_qp_error(ptr nocapture noundef readonly %lnk) local_unnamed_addr #0 align 64 {
entry:
  %qp_attr = alloca %struct.ib_qp_attr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr) #14
  %0 = call ptr @memset(ptr %qp_attr, i32 0, i32 216)
  %1 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 6, ptr %qp_attr, align 8
  %roce_qp = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 3
  %2 = ptrtoint ptr %roce_qp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %roce_qp, align 4
  %call = call i32 @ib_modify_qp(ptr noundef %3, ptr noundef nonnull %qp_attr, i32 noundef 1) #14
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr) #14
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_ib_ready_link(ptr noundef %lnk) local_unnamed_addr #0 align 64 {
entry:
  %qp_attr.i33 = alloca %struct.ib_qp_attr, align 8
  %qp_attr.i = alloca %struct.ib_qp_attr, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 50
  %0 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr.i, align 4
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr.i) #14
  %2 = call ptr @memset(ptr %qp_attr.i, i32 0, i32 216)
  %3 = ptrtoint ptr %qp_attr.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %qp_attr.i, align 8
  %ibport.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 1
  %4 = ptrtoint ptr %ibport.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ibport.i, align 4
  %conv.i = zext i8 %5 to i32
  %port_num.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i, i32 0, i32 19
  %6 = ptrtoint ptr %port_num.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv.i, ptr %port_num.i, align 4
  %qp_access_flags.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i, i32 0, i32 8
  %7 = ptrtoint ptr %qp_access_flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %qp_access_flags.i, align 8
  %roce_qp.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 3
  %8 = ptrtoint ptr %roce_qp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %roce_qp.i, align 4
  %call.i = call i32 @ib_modify_qp(ptr noundef %9, ptr noundef nonnull %qp_attr.i, i32 noundef 57) #14
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 216, ptr nonnull %qp_attr.i33) #14
  %10 = call ptr @memset(ptr %qp_attr.i33, i32 0, i32 216)
  %11 = ptrtoint ptr %qp_attr.i33 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %qp_attr.i33, align 8
  %path_mtu.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 37
  %12 = ptrtoint ptr %path_mtu.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %path_mtu.i, align 4
  %peer_mtu.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 38
  %14 = ptrtoint ptr %peer_mtu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %peer_mtu.i, align 8
  %16 = call i32 @llvm.umin.i32(i32 %13, i32 %15) #14
  %path_mtu1.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i33, i32 0, i32 2
  %17 = ptrtoint ptr %path_mtu1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %path_mtu1.i, align 8
  %type.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i33, i32 0, i32 10, i32 5
  %18 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %type.i, align 4
  %19 = ptrtoint ptr %ibport.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ibport.i, align 4
  %conv.i35 = zext i8 %20 to i32
  %port_num1.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i33, i32 0, i32 10, i32 3
  %21 = ptrtoint ptr %port_num1.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv.i35, ptr %port_num1.i.i, align 4
  %22 = ptrtoint ptr %lgr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lgr.i, align 4
  %smc_version.i = getelementptr inbounds %struct.smc_link_group, ptr %23, i32 0, i32 16
  %24 = ptrtoint ptr %smc_version.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %smc_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %cmp4.i = icmp eq i8 %25, 2
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %uses_gateway.i = getelementptr inbounds %struct.smc_link_group, ptr %23, i32 0, i32 21, i32 0, i32 25
  %26 = ptrtoint ptr %uses_gateway.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %uses_gateway.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i = icmp eq i8 %27, 0
  %spec.select.i = select i1 %tobool.not.i, i8 1, i8 64
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i, %if.end.if.end.i_crit_edge
  %hop_lim.0.i = phi i8 [ 1, %if.end.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true.i ]
  %sgid_index.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 35
  %28 = ptrtoint ptr %sgid_index.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %sgid_index.i, align 4
  %ah_flags.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i33, i32 0, i32 10, i32 4
  %30 = ptrtoint ptr %ah_flags.i.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %ah_flags.i.i, align 8
  %sgid_index3.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i33, i32 0, i32 10, i32 0, i32 3
  %31 = ptrtoint ptr %sgid_index3.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %29, ptr %sgid_index3.i.i, align 4
  %hop_limit4.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i33, i32 0, i32 10, i32 0, i32 4
  %32 = ptrtoint ptr %hop_limit4.i.i to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %hop_lim.0.i, ptr %hop_limit4.i.i, align 1
  %peer_gid.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 42
  %dgid1.i.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i33, i32 0, i32 10, i32 0, i32 1
  %33 = call ptr @memcpy(ptr %dgid1.i.i, ptr %peer_gid.i, i32 16)
  br i1 %cmp4.i, label %land.lhs.true15.i, label %if.end.i.if.else.i_crit_edge

if.end.i.if.else.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

land.lhs.true15.i:                                ; preds = %if.end.i
  %uses_gateway17.i = getelementptr inbounds %struct.smc_link_group, ptr %23, i32 0, i32 21, i32 0, i32 25
  %34 = ptrtoint ptr %uses_gateway17.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %uses_gateway17.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool19.not.i = icmp eq i8 %35, 0
  br i1 %tobool19.not.i, label %land.lhs.true15.i.if.else.i_crit_edge, label %if.then20.i

land.lhs.true15.i.if.else.i_crit_edge:            ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else.i

if.then20.i:                                      ; preds = %land.lhs.true15.i
  call void @__sanitizer_cov_trace_pc() #16
  %36 = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i33, i32 0, i32 10, i32 6
  %nexthop_mac.i = getelementptr inbounds %struct.smc_link_group, ptr %23, i32 0, i32 21, i32 0, i32 24
  %37 = call ptr @memcpy(ptr %36, ptr %nexthop_mac.i, i32 6)
  br label %smc_ib_modify_qp_rtr.exit

if.else.i:                                        ; preds = %land.lhs.true15.i.if.else.i_crit_edge, %if.end.i.if.else.i_crit_edge
  %38 = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i33, i32 0, i32 10, i32 6
  %peer_mac.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 41
  %39 = call ptr @memcpy(ptr %38, ptr %peer_mac.i, i32 6)
  br label %smc_ib_modify_qp_rtr.exit

smc_ib_modify_qp_rtr.exit:                        ; preds = %if.else.i, %if.then20.i
  %peer_qpn.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 36
  %40 = ptrtoint ptr %peer_qpn.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %peer_qpn.i, align 8
  %dest_qp_num.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i33, i32 0, i32 7
  %42 = ptrtoint ptr %dest_qp_num.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %dest_qp_num.i, align 4
  %peer_psn.i = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 40
  %43 = ptrtoint ptr %peer_psn.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %peer_psn.i, align 8
  %rq_psn.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i33, i32 0, i32 5
  %45 = ptrtoint ptr %rq_psn.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %rq_psn.i, align 4
  %max_dest_rd_atomic.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i33, i32 0, i32 17
  %46 = ptrtoint ptr %max_dest_rd_atomic.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %max_dest_rd_atomic.i, align 1
  %min_rnr_timer.i = getelementptr inbounds %struct.ib_qp_attr, ptr %qp_attr.i33, i32 0, i32 18
  %47 = ptrtoint ptr %min_rnr_timer.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 5, ptr %min_rnr_timer.i, align 8
  %48 = ptrtoint ptr %roce_qp.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %roce_qp.i, align 4
  %call.i38 = call i32 @ib_modify_qp(ptr noundef %49, ptr noundef nonnull %qp_attr.i33, i32 noundef 1216897) #14
  call void @llvm.lifetime.end.p0(i64 216, ptr nonnull %qp_attr.i33) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool3.not = icmp eq i32 %call.i38, 0
  br i1 %tobool3.not, label %if.end5, label %smc_ib_modify_qp_rtr.exit.out_crit_edge

smc_ib_modify_qp_rtr.exit.out_crit_edge:          ; preds = %smc_ib_modify_qp_rtr.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end5:                                          ; preds = %smc_ib_modify_qp_rtr.exit
  call void @smc_wr_remember_qp_attr(ptr noundef %lnk) #14
  %50 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lnk, align 8
  %roce_cq_recv = getelementptr inbounds %struct.smc_ib_device, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %roce_cq_recv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %roce_cq_recv, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %53, align 8
  %req_notify_cq.i = getelementptr inbounds %struct.ib_device, ptr %55, i32 0, i32 1, i32 12
  %56 = ptrtoint ptr %req_notify_cq.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %req_notify_cq.i, align 4
  %call.i39 = call i32 %57(ptr noundef %53, i32 noundef 3) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool7.not = icmp eq i32 %call.i39, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.out_crit_edge

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end9:                                          ; preds = %if.end5
  %call10 = call i32 @smc_wr_rx_post_init(ptr noundef %lnk) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end13:                                         ; preds = %if.end9
  call void @smc_wr_remember_qp_attr(ptr noundef %lnk) #14
  %58 = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 21
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp = icmp eq i32 %60, 1
  br i1 %cmp, label %if.then14, label %if.end13.out_crit_edge

if.end13.out_crit_edge:                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then14:                                        ; preds = %if.end13
  %call15 = call i32 @smc_ib_modify_qp_rts(ptr noundef %lnk)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.then14.out_crit_edge

if.then14.out_crit_edge:                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end18:                                         ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  call void @smc_wr_remember_qp_attr(ptr noundef %lnk) #14
  br label %out

out:                                              ; preds = %if.end18, %if.then14.out_crit_edge, %if.end13.out_crit_edge, %if.end9.out_crit_edge, %if.end5.out_crit_edge, %smc_ib_modify_qp_rtr.exit.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ %call.i, %entry.out_crit_edge ], [ %call.i38, %smc_ib_modify_qp_rtr.exit.out_crit_edge ], [ %call.i39, %if.end5.out_crit_edge ], [ %call10, %if.end9.out_crit_edge ], [ %call15, %if.then14.out_crit_edge ], [ 0, %if.end18 ], [ 0, %if.end13.out_crit_edge ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_wr_remember_qp_attr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_wr_rx_post_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @smc_ib_is_valid_local_systemid() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr getelementptr inbounds ([8 x i8], ptr @local_systemid, i32 0, i32 2), align 4
  %1 = load i16, ptr getelementptr inbounds ([8 x i8], ptr @local_systemid, i32 0, i32 6), align 2
  %conv.i = zext i16 %1 to i32
  %or.i = or i32 %0, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp.i = icmp ne i32 %or.i, 0
  ret i1 %cmp.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @smc_ib_port_active(ptr nocapture noundef readonly %smcibdev, i8 noundef zeroext %ibport) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %ibport to i32
  %sub = add nsw i32 %conv, -1
  %state = getelementptr %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 2, i32 %sub, i32 1
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  ret i1 %cmp
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_ib_find_route(i32 noundef %saddr, i32 noundef %daddr, ptr nocapture noundef writeonly %nexthop_mac, ptr nocapture noundef writeonly %uses_gateway) local_unnamed_addr #0 align 64 {
entry:
  %fl4 = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4) #14
  %0 = call ptr @memset(ptr %fl4, i32 0, i32 56)
  %saddr1 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 1
  %1 = ptrtoint ptr %saddr1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %saddr, ptr %saddr1, align 8
  %daddr2 = getelementptr inbounds %struct.flowi4, ptr %fl4, i32 0, i32 2
  %2 = ptrtoint ptr %daddr2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %daddr, ptr %daddr2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %daddr)
  %cmp = icmp eq i32 %daddr, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef nonnull %fl4, ptr noundef null) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %rt_uses_gateway = getelementptr inbounds %struct.rtable, ptr %call, i32 0, i32 5
  %3 = ptrtoint ptr %rt_uses_gateway to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %rt_uses_gateway, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end5.if.end10_crit_edge, label %land.lhs.true

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  %rt_gw_family = getelementptr inbounds %struct.rtable, ptr %call, i32 0, i32 7
  %5 = ptrtoint ptr %rt_gw_family to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %rt_gw_family, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp7.not = icmp eq i8 %6, 2
  br i1 %cmp7.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end5.if.end10_crit_edge
  %ops = getelementptr inbounds %struct.dst_entry, ptr %call, i32 0, i32 1
  %7 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops, align 4
  %neigh_lookup = getelementptr inbounds %struct.dst_ops, ptr %8, i32 0, i32 14
  %9 = ptrtoint ptr %neigh_lookup to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %neigh_lookup, align 8
  %call13 = call ptr %10(ptr noundef %call, ptr noundef null, ptr noundef %daddr2) #14
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end10.cleanup_crit_edge, label %if.then15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %ha = getelementptr inbounds %struct.neighbour, ptr %call13, i32 0, i32 18
  %11 = call ptr @memcpy(ptr %nexthop_mac, ptr %ha, i32 6)
  %12 = ptrtoint ptr %rt_uses_gateway to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rt_uses_gateway, align 1
  %14 = ptrtoint ptr %uses_gateway to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %uses_gateway, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end10.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then15 ], [ -2, %if.end10.cleanup_crit_edge ], [ -2, %land.lhs.true.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4) #14
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_route_output_flow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_ib_determine_gid(ptr nocapture noundef readonly %smcibdev, i8 noundef zeroext %ibport, i16 noundef zeroext %vlan_id, ptr noundef writeonly %gid, ptr noundef writeonly %sgid_index, ptr noundef %smcrv2) local_unnamed_addr #0 align 64 {
entry:
  %fl4.i.i = alloca %struct.flowi4, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %ibport to i32
  %sub = add nsw i32 %conv, -1
  %gid_tbl_len = getelementptr %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 2, i32 %sub, i32 5
  %0 = ptrtoint ptr %gid_tbl_len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %gid_tbl_len, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp78 = icmp sgt i32 %1, 0
  br i1 %cmp78, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %ibdev = getelementptr inbounds %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %vlan_id)
  %cond = icmp eq i16 %vlan_id, 0
  %tobool.not.i45 = icmp eq ptr %smcrv2, null
  %daddr.i = getelementptr inbounds %struct.smc_init_info_smcrv2, ptr %smcrv2, i32 0, i32 2
  %saddr1.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i.i, i32 0, i32 1
  %daddr2.i.i = getelementptr inbounds %struct.flowi4, ptr %fl4.i.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibdev, align 8
  %call = call ptr @rdma_get_gid_attr(ptr noundef %3, i32 noundef %conv, i32 noundef %i.079) #14
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %4 = call i32 @llvm.read_register.i32(metadata !68) #14
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !78
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #14
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call4 = call ptr @rdma_read_gid_attr_ndev_rcu(ptr noundef %call) #14
  %cmp.i41 = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41, label %rcu_read_lock.exit.if.end24_crit_edge, label %land.lhs.true

rcu_read_lock.exit.if.end24_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 15
  %8 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %9, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %cond, label %land.lhs.true6, label %land.lhs.true10

land.lhs.true6:                                   ; preds = %land.lhs.true
  br i1 %tobool.i.not, label %land.lhs.true6.if.then19_crit_edge, label %land.lhs.true6.if.end24_crit_edge

land.lhs.true6.if.end24_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.lhs.true6.if.then19_crit_edge:               ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

land.lhs.true10:                                  ; preds = %land.lhs.true
  br i1 %tobool.i.not, label %land.lhs.true10.if.end24_crit_edge, label %land.lhs.true13

land.lhs.true10.if.end24_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %call14 = call zeroext i16 @vlan_dev_vlan_id(ptr noundef %call4) #14
  call void @__sanitizer_cov_trace_cmp2(i16 %call14, i16 %vlan_id)
  %cmp17 = icmp eq i16 %call14, %vlan_id
  br i1 %cmp17, label %land.lhs.true13.if.then19_crit_edge, label %land.lhs.true13.if.end24_crit_edge

land.lhs.true13.if.end24_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.lhs.true13.if.then19_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then19

if.then19:                                        ; preds = %land.lhs.true13.if.then19_crit_edge, %land.lhs.true6.if.then19_crit_edge
  %gid_type.i = getelementptr inbounds %struct.ib_gid_attr, ptr %call, i32 0, i32 3
  %10 = ptrtoint ptr %gid_type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gid_type.i, align 8
  br i1 %tobool.not.i45, label %land.lhs.true.i47, label %land.lhs.true9.critedge.i

land.lhs.true.i47:                                ; preds = %if.then19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i46 = icmp eq i32 %11, 1
  br i1 %cmp.i46, label %if.then.i48, label %land.lhs.true.i47.if.end24_crit_edge

land.lhs.true.i47.if.end24_crit_edge:             ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then.i48:                                      ; preds = %land.lhs.true.i47
  %tobool1.not.i = icmp eq ptr %gid, null
  br i1 %tobool1.not.i, label %if.then.i48.if.end.i_crit_edge, label %if.then2.i

if.then.i48.if.end.i_crit_edge:                   ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i48
  call void @__sanitizer_cov_trace_pc() #16
  %gid3.i = getelementptr inbounds %struct.ib_gid_attr, ptr %call, i32 0, i32 2
  %12 = call ptr @memcpy(ptr %gid, ptr %gid3.i, i32 16)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i48.if.end.i_crit_edge
  %tobool4.not.i = icmp eq ptr %sgid_index, null
  br i1 %tobool4.not.i, label %if.end.i.if.then22_crit_edge, label %if.end.i.if.then22.sink.split_crit_edge

if.end.i.if.then22.sink.split_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22.sink.split

if.end.i.if.then22_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

land.lhs.true9.critedge.i:                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp11.i = icmp eq i32 %11, 2
  br i1 %cmp11.i, label %land.lhs.true13.i, label %land.lhs.true9.critedge.i.if.end24_crit_edge

land.lhs.true9.critedge.i.if.end24_crit_edge:     ; preds = %land.lhs.true9.critedge.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

land.lhs.true13.i:                                ; preds = %land.lhs.true9.critedge.i
  %gid14.i = getelementptr inbounds %struct.ib_gid_attr, ptr %call, i32 0, i32 2
  %13 = ptrtoint ptr %gid14.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gid14.i, align 4
  %arrayidx2.i.i.i = getelementptr [4 x i32], ptr %gid14.i, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.i.i.i, align 4
  %or.i.i.i = or i32 %16, %14
  %arrayidx4.i.i.i = getelementptr %struct.ib_gid_attr, ptr %call, i32 0, i32 2, i32 0, i32 1
  %17 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx4.i.i.i, align 4
  %xor.i.i.i = xor i32 %18, 65535
  %or5.i.i.i = or i32 %xor.i.i.i, %or.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i.i)
  %cmp.i.i.i = icmp eq i32 %or5.i.i.i, 0
  %or5.i.i = or i32 %or.i.i.i, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i.i)
  %tobool.not.i.i = icmp eq i32 %or5.i.i, 0
  %or.cond.i.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not.i.i
  br i1 %or.cond.i.i, label %smc_ib_gid_to_ipv4.exit.i, label %land.lhs.true13.i.if.end24_crit_edge

land.lhs.true13.i.if.end24_crit_edge:             ; preds = %land.lhs.true13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

smc_ib_gid_to_ipv4.exit.i:                        ; preds = %land.lhs.true13.i
  %arrayidx7.i.i = getelementptr [4 x i32], ptr %gid14.i, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %20)
  %cmp15.not.i = icmp eq i32 %20, -1
  br i1 %cmp15.not.i, label %smc_ib_gid_to_ipv4.exit.i.if.end24_crit_edge, label %if.then17.i

smc_ib_gid_to_ipv4.exit.i.if.end24_crit_edge:     ; preds = %smc_ib_gid_to_ipv4.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.then17.i:                                      ; preds = %smc_ib_gid_to_ipv4.exit.i
  %ip_ptr.i.i = getelementptr inbounds %struct.net_device, ptr %call4, i32 0, i32 78
  %21 = ptrtoint ptr %ip_ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %ip_ptr.i.i, align 32
  %call.i.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i104.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i104.i, label %land.lhs.true.i.i, label %if.then17.i.__in_dev_get_rcu.exit.i_crit_edge

if.then17.i.__in_dev_get_rcu.exit.i_crit_edge:    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit.i

land.lhs.true.i.i:                                ; preds = %if.then17.i
  %call2.i.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.__in_dev_get_rcu.exit.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @__in_dev_get_rcu.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge, label %if.then.i105.i

land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge: ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %__in_dev_get_rcu.exit.i

if.then.i105.i:                                   ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @__in_dev_get_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 232, ptr noundef nonnull @.str.6) #14
  br label %__in_dev_get_rcu.exit.i

__in_dev_get_rcu.exit.i:                          ; preds = %if.then.i105.i, %land.lhs.true4.i.i.__in_dev_get_rcu.exit.i_crit_edge, %land.lhs.true.i.i.__in_dev_get_rcu.exit.i_crit_edge, %if.then17.i.__in_dev_get_rcu.exit.i_crit_edge
  %tobool19.not.i = icmp eq ptr %22, null
  br i1 %tobool19.not.i, label %__in_dev_get_rcu.exit.i.if.end24_crit_edge, label %if.end21.i

__in_dev_get_rcu.exit.i.if.end24_crit_edge:       ; preds = %__in_dev_get_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.end21.i:                                       ; preds = %__in_dev_get_rcu.exit.i
  %ifa_list.i = getelementptr inbounds %struct.in_device, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %ifa_list.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %ifa_list.i, align 4
  %call23.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true25.i, label %if.end21.i.do.end33.i_crit_edge

if.end21.i.do.end33.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

land.lhs.true25.i:                                ; preds = %if.end21.i
  %call26.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %land.lhs.true25.i.do.end33.i_crit_edge, label %land.lhs.true28.i

land.lhs.true25.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true25.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

land.lhs.true28.i:                                ; preds = %land.lhs.true25.i
  %.b103.i = load i1, ptr @smc_ib_determine_gid_rcu.__warned, align 1
  br i1 %.b103.i, label %land.lhs.true28.i.do.end33.i_crit_edge, label %if.then30.i

land.lhs.true28.i.do.end33.i_crit_edge:           ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end33.i

if.then30.i:                                      ; preds = %land.lhs.true28.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smc_ib_determine_gid_rcu.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 243, ptr noundef nonnull @.str.6) #14
  br label %do.end33.i

do.end33.i:                                       ; preds = %if.then30.i, %land.lhs.true28.i.do.end33.i_crit_edge, %land.lhs.true25.i.do.end33.i_crit_edge, %if.end21.i.do.end33.i_crit_edge
  %tobool35.not119.i = icmp eq ptr %24, null
  br i1 %tobool35.not119.i, label %do.end33.i.if.end24_crit_edge, label %do.end33.i.for.body.i_crit_edge

do.end33.i.for.body.i_crit_edge:                  ; preds = %do.end33.i
  br label %for.body.i

do.end33.i.if.end24_crit_edge:                    ; preds = %do.end33.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

for.body.i:                                       ; preds = %do.end54.i.for.body.i_crit_edge, %do.end33.i.for.body.i_crit_edge
  %ifa.0120.i = phi ptr [ %32, %do.end54.i.for.body.i_crit_edge ], [ %24, %do.end33.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %smcrv2 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %smcrv2, align 4
  %ifa_address.i.i = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.0120.i, i32 0, i32 5
  %27 = ptrtoint ptr %ifa_address.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ifa_address.i.i, align 4
  %xor.i.i = xor i32 %28, %26
  %ifa_mask.i.i = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.0120.i, i32 0, i32 6
  %29 = ptrtoint ptr %ifa_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ifa_mask.i.i, align 4
  %and.i.i = and i32 %xor.i.i, %30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i106.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i106.i, label %if.end58.i, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %ifa_next.i = getelementptr inbounds %struct.in_ifaddr, ptr %ifa.0120.i, i32 0, i32 1
  %31 = ptrtoint ptr %ifa_next.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %ifa_next.i, align 4
  %call44.i = call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44.i)
  %tobool45.not.i = icmp eq i32 %call44.i, 0
  br i1 %tobool45.not.i, label %land.lhs.true46.i, label %for.inc.i.do.end54.i_crit_edge

for.inc.i.do.end54.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end54.i

land.lhs.true46.i:                                ; preds = %for.inc.i
  %call47.i = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %land.lhs.true46.i.do.end54.i_crit_edge, label %land.lhs.true49.i

land.lhs.true46.i.do.end54.i_crit_edge:           ; preds = %land.lhs.true46.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end54.i

land.lhs.true49.i:                                ; preds = %land.lhs.true46.i
  %.b101102.i = load i1, ptr @smc_ib_determine_gid_rcu.__warned.7, align 1
  br i1 %.b101102.i, label %land.lhs.true49.i.do.end54.i_crit_edge, label %if.then51.i

land.lhs.true49.i.do.end54.i_crit_edge:           ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end54.i

if.then51.i:                                      ; preds = %land.lhs.true49.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @smc_ib_determine_gid_rcu.__warned.7, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 243, ptr noundef nonnull @.str.6) #14
  br label %do.end54.i

do.end54.i:                                       ; preds = %if.then51.i, %land.lhs.true49.i.do.end54.i_crit_edge, %land.lhs.true46.i.do.end54.i_crit_edge, %for.inc.i.do.end54.i_crit_edge
  %tobool35.not.i = icmp eq ptr %32, null
  br i1 %tobool35.not.i, label %do.end54.i.if.end24_crit_edge, label %do.end54.i.for.body.i_crit_edge

do.end54.i.for.body.i_crit_edge:                  ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

do.end54.i.if.end24_crit_edge:                    ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end24

if.end58.i:                                       ; preds = %for.body.i
  %33 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %daddr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool59.not.i = icmp eq i32 %34, 0
  br i1 %tobool59.not.i, label %if.end58.i.if.end66.i_crit_edge, label %land.lhs.true60.i

if.end58.i.if.end66.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66.i

land.lhs.true60.i:                                ; preds = %if.end58.i
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %fl4.i.i) #14
  %35 = call ptr @memset(ptr %fl4.i.i, i32 0, i32 56)
  %36 = ptrtoint ptr %saddr1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %26, ptr %saddr1.i.i, align 8
  %37 = ptrtoint ptr %daddr2.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %daddr2.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %cmp.i.i = icmp eq i32 %34, -1
  br i1 %cmp.i.i, label %land.lhs.true60.i.smc_ib_find_route.exit.thread.i_crit_edge, label %if.end.i.i

land.lhs.true60.i.smc_ib_find_route.exit.thread.i_crit_edge: ; preds = %land.lhs.true60.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_ib_find_route.exit.thread.i

if.end.i.i:                                       ; preds = %land.lhs.true60.i
  %call.i107.i = call ptr @ip_route_output_flow(ptr noundef nonnull @init_net, ptr noundef nonnull %fl4.i.i, ptr noundef null) #14
  %cmp.i.i108.i = icmp ugt ptr %call.i107.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i108.i, label %if.end.i.i.smc_ib_find_route.exit.thread.i_crit_edge, label %if.end5.i.i

if.end.i.i.smc_ib_find_route.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_ib_find_route.exit.thread.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  %rt_uses_gateway.i.i = getelementptr inbounds %struct.rtable, ptr %call.i107.i, i32 0, i32 5
  %38 = ptrtoint ptr %rt_uses_gateway.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %rt_uses_gateway.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i109.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i109.i, label %if.end5.i.i.if.end10.i.i_crit_edge, label %land.lhs.true.i110.i

if.end5.i.i.if.end10.i.i_crit_edge:               ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i.i

land.lhs.true.i110.i:                             ; preds = %if.end5.i.i
  %rt_gw_family.i.i = getelementptr inbounds %struct.rtable, ptr %call.i107.i, i32 0, i32 7
  %40 = ptrtoint ptr %rt_gw_family.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rt_gw_family.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %cmp7.not.i.i = icmp eq i8 %41, 2
  br i1 %cmp7.not.i.i, label %land.lhs.true.i110.i.if.end10.i.i_crit_edge, label %land.lhs.true.i110.i.smc_ib_find_route.exit.thread.i_crit_edge

land.lhs.true.i110.i.smc_ib_find_route.exit.thread.i_crit_edge: ; preds = %land.lhs.true.i110.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_ib_find_route.exit.thread.i

land.lhs.true.i110.i.if.end10.i.i_crit_edge:      ; preds = %land.lhs.true.i110.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %land.lhs.true.i110.i.if.end10.i.i_crit_edge, %if.end5.i.i.if.end10.i.i_crit_edge
  %ops.i.i = getelementptr inbounds %struct.dst_entry, ptr %call.i107.i, i32 0, i32 1
  %42 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops.i.i, align 4
  %neigh_lookup.i.i = getelementptr inbounds %struct.dst_ops, ptr %43, i32 0, i32 14
  %44 = ptrtoint ptr %neigh_lookup.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %neigh_lookup.i.i, align 8
  %call13.i.i = call ptr %45(ptr noundef %call.i107.i, ptr noundef null, ptr noundef %daddr2.i.i) #14
  %tobool14.not.i.i = icmp eq ptr %call13.i.i, null
  br i1 %tobool14.not.i.i, label %if.end10.i.i.smc_ib_find_route.exit.thread.i_crit_edge, label %smc_ib_find_route.exit.i

if.end10.i.i.smc_ib_find_route.exit.thread.i_crit_edge: ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_ib_find_route.exit.thread.i

smc_ib_find_route.exit.thread.i:                  ; preds = %if.end10.i.i.smc_ib_find_route.exit.thread.i_crit_edge, %land.lhs.true.i110.i.smc_ib_find_route.exit.thread.i_crit_edge, %if.end.i.i.smc_ib_find_route.exit.thread.i_crit_edge, %land.lhs.true60.i.smc_ib_find_route.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i.i) #14
  br label %if.end24

smc_ib_find_route.exit.i:                         ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %rt_uses_gateway.i.i.le = getelementptr inbounds %struct.rtable, ptr %call.i107.i, i32 0, i32 5
  %nexthop_mac.i.le = getelementptr inbounds %struct.smc_init_info_smcrv2, ptr %smcrv2, i32 0, i32 7
  %uses_gateway.i.le = getelementptr inbounds %struct.smc_init_info_smcrv2, ptr %smcrv2, i32 0, i32 6
  %ha.i.i = getelementptr inbounds %struct.neighbour, ptr %call13.i.i, i32 0, i32 18
  %46 = call ptr @memcpy(ptr %nexthop_mac.i.le, ptr %ha.i.i, i32 6)
  %47 = ptrtoint ptr %rt_uses_gateway.i.i.le to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %rt_uses_gateway.i.i.le, align 1
  %49 = ptrtoint ptr %uses_gateway.i.le to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %uses_gateway.i.le, align 1
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %fl4.i.i) #14
  br label %if.end66.i

if.end66.i:                                       ; preds = %smc_ib_find_route.exit.i, %if.end58.i.if.end66.i_crit_edge
  %tobool67.not.i = icmp eq ptr %gid, null
  br i1 %tobool67.not.i, label %if.end66.i.if.end70.i_crit_edge, label %if.then68.i

if.end66.i.if.end70.i_crit_edge:                  ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end70.i

if.then68.i:                                      ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #16
  %50 = call ptr @memcpy(ptr %gid, ptr %gid14.i, i32 16)
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then68.i, %if.end66.i.if.end70.i_crit_edge
  %tobool71.not.i = icmp eq ptr %sgid_index, null
  br i1 %tobool71.not.i, label %if.end70.i.if.then22_crit_edge, label %if.end70.i.if.then22.sink.split_crit_edge

if.end70.i.if.then22.sink.split_crit_edge:        ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22.sink.split

if.end70.i.if.then22_crit_edge:                   ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then22

if.then22.sink.split:                             ; preds = %if.end70.i.if.then22.sink.split_crit_edge, %if.end.i.if.then22.sink.split_crit_edge
  %index73.i = getelementptr inbounds %struct.ib_gid_attr, ptr %call, i32 0, i32 4
  %51 = ptrtoint ptr %index73.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %index73.i, align 4
  %conv74.i = trunc i16 %52 to i8
  %53 = ptrtoint ptr %sgid_index to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv74.i, ptr %sgid_index, align 1
  br label %if.then22

if.then22:                                        ; preds = %if.then22.sink.split, %if.end70.i.if.then22_crit_edge, %if.end.i.if.then22_crit_edge
  %call.i49 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i49, label %if.then22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i52

if.then22.rcu_read_unlock.exit_crit_edge:         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true.i52:                                ; preds = %if.then22
  %call1.i50 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i50)
  %tobool.not.i51 = icmp eq i32 %call1.i50, 0
  br i1 %tobool.not.i51, label %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i54

land.lhs.true.i52.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i52
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

land.lhs.true2.i54:                               ; preds = %land.lhs.true.i52
  %.b4.i53 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i53, label %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, label %if.then.i55

land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit

if.then.i55:                                      ; preds = %land.lhs.true2.i54
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i55, %land.lhs.true2.i54.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i52.rcu_read_unlock.exit_crit_edge, %if.then22.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !79
  %54 = call i32 @llvm.read_register.i32(metadata !68) #14
  %and.i.i.i.i.i56 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i.i.i.i.i56 to ptr
  %preempt_count.i.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %preempt_count.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %preempt_count.i.i.i.i57, align 4
  %sub.i.i.i = add i32 %57, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i57, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @rdma_put_gid_attr(ptr noundef %call) #14
  br label %cleanup

if.end24:                                         ; preds = %smc_ib_find_route.exit.thread.i, %do.end54.i.if.end24_crit_edge, %do.end33.i.if.end24_crit_edge, %__in_dev_get_rcu.exit.i.if.end24_crit_edge, %smc_ib_gid_to_ipv4.exit.i.if.end24_crit_edge, %land.lhs.true13.i.if.end24_crit_edge, %land.lhs.true9.critedge.i.if.end24_crit_edge, %land.lhs.true.i47.if.end24_crit_edge, %land.lhs.true13.if.end24_crit_edge, %land.lhs.true10.if.end24_crit_edge, %land.lhs.true6.if.end24_crit_edge, %rcu_read_lock.exit.if.end24_crit_edge
  %call.i58 = call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i58, label %if.end24.rcu_read_unlock.exit68_crit_edge, label %land.lhs.true.i61

if.end24.rcu_read_unlock.exit68_crit_edge:        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit68

land.lhs.true.i61:                                ; preds = %if.end24
  %call1.i59 = call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i59)
  %tobool.not.i60 = icmp eq i32 %call1.i59, 0
  br i1 %tobool.not.i60, label %land.lhs.true.i61.rcu_read_unlock.exit68_crit_edge, label %land.lhs.true2.i63

land.lhs.true.i61.rcu_read_unlock.exit68_crit_edge: ; preds = %land.lhs.true.i61
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit68

land.lhs.true2.i63:                               ; preds = %land.lhs.true.i61
  %.b4.i62 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i62, label %land.lhs.true2.i63.rcu_read_unlock.exit68_crit_edge, label %if.then.i64

land.lhs.true2.i63.rcu_read_unlock.exit68_crit_edge: ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit68

if.then.i64:                                      ; preds = %land.lhs.true2.i63
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_unlock.exit68

rcu_read_unlock.exit68:                           ; preds = %if.then.i64, %land.lhs.true2.i63.rcu_read_unlock.exit68_crit_edge, %land.lhs.true.i61.rcu_read_unlock.exit68_crit_edge, %if.end24.rcu_read_unlock.exit68_crit_edge
  call void asm sideeffect "", "~{memory}"() #14, !srcloc !79
  %58 = call i32 @llvm.read_register.i32(metadata !68) #14
  %and.i.i.i.i.i65 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i.i.i65 to ptr
  %preempt_count.i.i.i.i66 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i.i.i66, align 4
  %sub.i.i.i67 = add i32 %61, -1
  store volatile i32 %sub.i.i.i67, ptr %preempt_count.i.i.i.i66, align 4
  call void @rcu_read_unlock_strict() #14
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  call void @rdma_put_gid_attr(ptr noundef %call) #14
  br label %for.inc

for.inc:                                          ; preds = %rcu_read_unlock.exit68, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.079, 1
  %62 = ptrtoint ptr %gid_tbl_len to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %gid_tbl_len, align 8
  %cmp = icmp slt i32 %inc, %63
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %rcu_read_unlock.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %rcu_read_unlock.exit ], [ -19, %entry.cleanup_crit_edge ], [ -19, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_get_gid_attr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rdma_read_gid_attr_ndev_rcu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @vlan_dev_vlan_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rdma_put_gid_attr(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_ib_dealloc_protection_domain(ptr nocapture noundef %lnk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %roce_pd = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 2
  %0 = ptrtoint ptr %roce_pd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %roce_pd, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @ib_dealloc_pd_user(ptr noundef nonnull %1, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %land.rhs.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.rhs.i:                                       ; preds = %if.then
  %.b38.i = load i1, ptr @ib_dealloc_pd.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.if.end_crit_edge, label %if.then.i, !prof !80

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ib_dealloc_pd.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 3498, i32 noundef 9, ptr noundef nonnull @.str.11) #14
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs.i.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %roce_pd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %roce_pd, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_ib_create_protection_domain(ptr nocapture noundef %lnk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnk, align 8
  %ibdev = getelementptr inbounds %struct.smc_ib_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibdev, align 8
  %call = tail call ptr @__ib_alloc_pd(ptr noundef %3, i32 noundef 0, ptr noundef nonnull @.str.2) #14
  %roce_pd = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 2
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  %4 = ptrtoint ptr %call to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %4, i32 0
  %spec.store.select = select i1 %cmp.i.i, ptr null, ptr %call
  %5 = ptrtoint ptr %roce_pd to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.store.select, ptr %roce_pd, align 8
  ret i32 %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_alloc_pd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smcr_nl_get_device(ptr noundef %skb, ptr nocapture noundef %cb) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i8.i.i.i = alloca i32, align 4
  %tmp.i6.i.i.i = alloca i8, align 1
  %tmp.i4.i.i.i = alloca i8, align 1
  %tmp.i2.i.i.i = alloca i32, align 4
  %tmp.i.i78.i.i = alloca i8, align 1
  %smc_pnet.i.i.i = alloca [17 x i8], align 1
  %tmp.i29.i.i.i = alloca i16, align 2
  %tmp.i27.i.i.i = alloca i16, align 2
  %tmp.i25.i.i.i = alloca i16, align 2
  %tmp.i.i.i.i = alloca i32, align 4
  %tmp.i.i.i = alloca i8, align 1
  %smc_ibname.i.i = alloca [64 x i8], align 1
  %smc_pci_dev.i.i = alloca %struct.smc_pci_dev, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 13
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %0, align 4
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1), i32 noundef 0) #14
  %smcibdev.024.i = load ptr, ptr @smc_ib_devices, align 4
  %cmp.not25.i = icmp eq ptr %smcibdev.024.i, @smc_ib_devices
  br i1 %cmp.not25.i, label %entry.smc_nl_prep_smcr_dev.exit_crit_edge, label %for.body.lr.ph.i

entry.smc_nl_prep_smcr_dev.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_nl_prep_smcr_dev.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %nlh3.i.i = getelementptr inbounds %struct.netlink_callback, ptr %cb, i32 0, i32 1
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %pci_vendor.i.i.i = getelementptr inbounds %struct.smc_pci_dev, ptr %smc_pci_dev.i.i, i32 0, i32 2
  %pci_device.i.i.i = getelementptr inbounds %struct.smc_pci_dev, ptr %smc_pci_dev.i.i, i32 0, i32 3
  %pci_id.i.i.i = getelementptr inbounds %struct.smc_pci_dev, ptr %smc_pci_dev.i.i, i32 0, i32 4
  %pci_pchid.i.i.i = getelementptr inbounds %struct.smc_pci_dev, ptr %smc_pci_dev.i.i, i32 0, i32 1
  %3 = getelementptr inbounds [17 x i8], ptr %smc_pnet.i.i.i, i32 0, i32 16
  br label %for.body.i

for.body.i:                                       ; preds = %next7.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %smcibdev.028.i = phi ptr [ %smcibdev.024.i, %for.body.lr.ph.i ], [ %smcibdev.0.i, %next7.i.for.body.i_crit_edge ]
  %num.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %next7.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %num.026.i, i32 %2)
  %cmp3.i = icmp slt i32 %num.026.i, %2
  br i1 %cmp3.i, label %for.body.i.next7.i_crit_edge, label %if.end.i

for.body.i.next7.i_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %next7.i

if.end.i:                                         ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %smc_ibname.i.i) #14
  %4 = call ptr @memset(ptr %smc_ibname.i.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %smc_pci_dev.i.i) #14
  %5 = call ptr @memset(ptr %smc_pci_dev.i.i, i32 255, i32 28)
  %6 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cb, align 4
  %portid.i.i = getelementptr inbounds %struct.sk_buff, ptr %7, i32 0, i32 3, i32 12
  %8 = ptrtoint ptr %portid.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %portid.i.i, align 4
  %10 = ptrtoint ptr %nlh3.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nlh3.i.i, align 4
  %nlmsg_seq.i.i = getelementptr inbounds %struct.nlmsghdr, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %nlmsg_seq.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nlmsg_seq.i.i, align 4
  %call.i.i = call ptr @genlmsg_put(ptr noundef %skb, i32 noundef %9, i32 noundef %13, ptr noundef nonnull @smc_gen_nl_family, i32 noundef 2, i8 noundef zeroext 6) #14
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end.i.smc_nl_handle_smcr_dev.exit.thread.i_crit_edge, label %if.end.i.i

if.end.i.smc_nl_handle_smcr_dev.exit.thread.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_nl_handle_smcr_dev.exit.thread.i

if.end.i.i:                                       ; preds = %if.end.i
  %14 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32774, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool5.not113.i.i = icmp eq ptr %15, null
  %tobool5.not.i.i = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool5.not113.i.i
  br i1 %tobool5.not.i.i, label %if.end.i.i.if.then.i.i.i_crit_edge, label %if.end7.i.i

if.end.i.i.if.then.i.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i

if.end7.i.i:                                      ; preds = %if.end.i.i
  call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.smc_lgr_list, ptr @smc_lgr_list, i32 0, i32 1)) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_lgr_list to i32))
  %lgr.06.i.i.i = load ptr, ptr @smc_lgr_list, align 4
  %cmp.not7.i.i.i = icmp eq ptr %lgr.06.i.i.i, @smc_lgr_list
  br i1 %cmp.not7.i.i.i, label %if.end7.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge, label %if.end7.i.i.for.body.i.i.i_crit_edge

if.end7.i.i.for.body.i.i.i_crit_edge:             ; preds = %if.end7.i.i
  br label %for.body.i.i.i

if.end7.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smcr_diag_is_dev_critical.exit.i.i

for.body.i.i.i:                                   ; preds = %for.inc19.i.i.i.for.body.i.i.i_crit_edge, %if.end7.i.i.for.body.i.i.i_crit_edge
  %lgr.08.i.i.i = phi ptr [ %lgr.0.i.i.i, %for.inc19.i.i.i.for.body.i.i.i_crit_edge ], [ %lgr.06.i.i.i, %if.end7.i.i.for.body.i.i.i_crit_edge ]
  %is_smcd.i.i.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.08.i.i.i, i32 0, i32 15
  %16 = ptrtoint ptr %is_smcd.i.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_smcd.i.i.i, align 8, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i.i, label %for.cond3.preheader.i.i.i, label %for.body.i.i.i.for.inc19.i.i.i_crit_edge

for.body.i.i.i.for.inc19.i.i.i_crit_edge:         ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19.i.i.i

for.cond3.preheader.i.i.i:                        ; preds = %for.body.i.i.i
  %type.i.i.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.08.i.i.i, i32 0, i32 21, i32 0, i32 8
  %state.i.i.i = getelementptr %struct.smc_link_group, ptr %lgr.08.i.i.i, i32 0, i32 21, i32 0, i32 1, i32 0, i32 54
  %18 = ptrtoint ptr %state.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp6.i.i.i = icmp eq i32 %19, 0
  br i1 %cmp6.i.i.i, label %for.cond3.preheader.i.i.i.for.inc.i.i.i_crit_edge, label %lor.lhs.false.i.i.i

for.cond3.preheader.i.i.i.for.inc.i.i.i_crit_edge: ; preds = %for.cond3.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %for.cond3.preheader.i.i.i
  %arrayidx.i.i.i = getelementptr %struct.smc_link_group, ptr %lgr.08.i.i.i, i32 0, i32 21, i32 0, i32 1, i32 0
  %20 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i.i, align 8
  %cmp10.not.i.i.i = icmp eq ptr %21, %smcibdev.028.i
  br i1 %cmp10.not.i.i.i, label %if.end12.i.i.i, label %lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge

lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i

if.end12.i.i.i:                                   ; preds = %lor.lhs.false.i.i.i
  %22 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type.i.i.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %23, label %if.end12.i.i.i.for.inc.i.i.i_crit_edge [
    i32 1, label %if.end12.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge
    i32 4, label %if.end12.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge122
  ]

if.end12.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge122: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smcr_diag_is_dev_critical.exit.i.i

if.end12.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge: ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smcr_diag_is_dev_critical.exit.i.i

if.end12.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %if.end12.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end12.i.i.i.for.inc.i.i.i_crit_edge, %lor.lhs.false.i.i.i.for.inc.i.i.i_crit_edge, %for.cond3.preheader.i.i.i.for.inc.i.i.i_crit_edge
  %state.1.i.i.i = getelementptr %struct.smc_link_group, ptr %lgr.08.i.i.i, i32 0, i32 21, i32 0, i32 1, i32 1, i32 54
  %25 = ptrtoint ptr %state.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %state.1.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp6.1.i.i.i = icmp eq i32 %26, 0
  br i1 %cmp6.1.i.i.i, label %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge, label %lor.lhs.false.1.i.i.i

for.inc.i.i.i.for.inc.1.i.i.i_crit_edge:          ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1.i.i.i

lor.lhs.false.1.i.i.i:                            ; preds = %for.inc.i.i.i
  %arrayidx.1.i.i.i = getelementptr %struct.smc_link_group, ptr %lgr.08.i.i.i, i32 0, i32 21, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.1.i.i.i, align 8
  %cmp10.not.1.i.i.i = icmp eq ptr %28, %smcibdev.028.i
  br i1 %cmp10.not.1.i.i.i, label %if.end12.1.i.i.i, label %lor.lhs.false.1.i.i.i.for.inc.1.i.i.i_crit_edge

lor.lhs.false.1.i.i.i.for.inc.1.i.i.i_crit_edge:  ; preds = %lor.lhs.false.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1.i.i.i

if.end12.1.i.i.i:                                 ; preds = %lor.lhs.false.1.i.i.i
  %29 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %type.i.i.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %30, label %if.end12.1.i.i.i.for.inc.1.i.i.i_crit_edge [
    i32 1, label %if.end12.1.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge
    i32 4, label %if.end12.1.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge123
  ]

if.end12.1.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge123: ; preds = %if.end12.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smcr_diag_is_dev_critical.exit.i.i

if.end12.1.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge: ; preds = %if.end12.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smcr_diag_is_dev_critical.exit.i.i

if.end12.1.i.i.i.for.inc.1.i.i.i_crit_edge:       ; preds = %if.end12.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1.i.i.i

for.inc.1.i.i.i:                                  ; preds = %if.end12.1.i.i.i.for.inc.1.i.i.i_crit_edge, %lor.lhs.false.1.i.i.i.for.inc.1.i.i.i_crit_edge, %for.inc.i.i.i.for.inc.1.i.i.i_crit_edge
  %state.2.i.i.i = getelementptr %struct.smc_link_group, ptr %lgr.08.i.i.i, i32 0, i32 21, i32 0, i32 1, i32 2, i32 54
  %32 = ptrtoint ptr %state.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %state.2.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp6.2.i.i.i = icmp eq i32 %33, 0
  br i1 %cmp6.2.i.i.i, label %for.inc.1.i.i.i.for.inc19.i.i.i_crit_edge, label %lor.lhs.false.2.i.i.i

for.inc.1.i.i.i.for.inc19.i.i.i_crit_edge:        ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19.i.i.i

lor.lhs.false.2.i.i.i:                            ; preds = %for.inc.1.i.i.i
  %arrayidx.2.i.i.i = getelementptr %struct.smc_link_group, ptr %lgr.08.i.i.i, i32 0, i32 21, i32 0, i32 1, i32 2
  %34 = ptrtoint ptr %arrayidx.2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.2.i.i.i, align 8
  %cmp10.not.2.i.i.i = icmp eq ptr %35, %smcibdev.028.i
  br i1 %cmp10.not.2.i.i.i, label %if.end12.2.i.i.i, label %lor.lhs.false.2.i.i.i.for.inc19.i.i.i_crit_edge

lor.lhs.false.2.i.i.i.for.inc19.i.i.i_crit_edge:  ; preds = %lor.lhs.false.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19.i.i.i

if.end12.2.i.i.i:                                 ; preds = %lor.lhs.false.2.i.i.i
  %36 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %type.i.i.i, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %37, label %if.end12.2.i.i.i.for.inc19.i.i.i_crit_edge [
    i32 1, label %if.end12.2.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge
    i32 4, label %if.end12.2.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge124
  ]

if.end12.2.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge124: ; preds = %if.end12.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smcr_diag_is_dev_critical.exit.i.i

if.end12.2.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge: ; preds = %if.end12.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smcr_diag_is_dev_critical.exit.i.i

if.end12.2.i.i.i.for.inc19.i.i.i_crit_edge:       ; preds = %if.end12.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc19.i.i.i

for.inc19.i.i.i:                                  ; preds = %if.end12.2.i.i.i.for.inc19.i.i.i_crit_edge, %lor.lhs.false.2.i.i.i.for.inc19.i.i.i_crit_edge, %for.inc.1.i.i.i.for.inc19.i.i.i_crit_edge, %for.body.i.i.i.for.inc19.i.i.i_crit_edge
  %39 = ptrtoint ptr %lgr.08.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %lgr.0.i.i.i = load ptr, ptr %lgr.08.i.i.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %lgr.0.i.i.i, @smc_lgr_list
  br i1 %cmp.not.i.i.i, label %for.inc19.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge, label %for.inc19.i.i.i.for.body.i.i.i_crit_edge

for.inc19.i.i.i.for.body.i.i.i_crit_edge:         ; preds = %for.inc19.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i.i

for.inc19.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge: ; preds = %for.inc19.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smcr_diag_is_dev_critical.exit.i.i

smcr_diag_is_dev_critical.exit.i.i:               ; preds = %for.inc19.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge, %if.end12.2.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge, %if.end12.2.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge124, %if.end12.1.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge, %if.end12.1.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge123, %if.end12.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge, %if.end12.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge122, %if.end7.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge
  %cmp.not3.i.i.i = phi i1 [ false, %if.end7.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge ], [ true, %if.end12.2.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge ], [ true, %if.end12.2.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge124 ], [ true, %if.end12.1.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge ], [ true, %if.end12.1.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge123 ], [ true, %if.end12.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge ], [ true, %if.end12.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge122 ], [ false, %for.inc19.i.i.i.smcr_diag_is_dev_critical.exit.i.i_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.smc_lgr_list, ptr @smc_lgr_list, i32 0, i32 1)) #14
  %conv.i.i = zext i1 %cmp.not3.i.i.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i.i) #14
  %40 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv.i.i, ptr %tmp.i.i.i, align 1
  %call.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool10.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %smcr_diag_is_dev_critical.exit.i.i.if.then.i.i.i.i_crit_edge

smcr_diag_is_dev_critical.exit.i.i.if.then.i.i.i.i_crit_edge: ; preds = %smcr_diag_is_dev_critical.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i

if.end12.i.i:                                     ; preds = %smcr_diag_is_dev_critical.exit.i.i
  %ibdev.i.i = getelementptr inbounds %struct.smc_ib_device, ptr %smcibdev.028.i, i32 0, i32 1
  %41 = ptrtoint ptr %ibdev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ibdev.i.i, align 8
  %parent.i.i = getelementptr inbounds %struct.ib_device, ptr %42, i32 0, i32 13, i32 0, i32 0, i32 1
  %43 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %parent.i.i, align 8
  %tobool13.not.i.i = icmp eq ptr %44, null
  br i1 %tobool13.not.i.i, label %if.end12.i.i.if.end20.i.i_crit_edge, label %if.then14.i.i

if.end12.i.i.if.end20.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i.i

if.then14.i.i:                                    ; preds = %if.end12.i.i
  %45 = call ptr @memset(ptr %smc_pci_dev.i.i, i32 0, i32 28)
  %vendor.i.i.i = getelementptr i8, ptr %44, i32 -104
  %46 = ptrtoint ptr %vendor.i.i.i to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %vendor.i.i.i, align 8
  %48 = ptrtoint ptr %pci_vendor.i.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %47, ptr %pci_vendor.i.i.i, align 2
  %device.i.i.i = getelementptr i8, ptr %44, i32 -102
  %49 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %device.i.i.i, align 2
  %51 = ptrtoint ptr %pci_device.i.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %pci_device.i.i.i, align 4
  %init_name.i.i.i.i.i = getelementptr i8, ptr %44, i32 144
  %52 = ptrtoint ptr %init_name.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %init_name.i.i.i.i.i, align 8
  %tobool.not.i.i.i.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then14.i.i.smc_set_pci_values.exit.i.i_crit_edge

if.then14.i.i.smc_set_pci_values.exit.i.i_crit_edge: ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_set_pci_values.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %54 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %44, align 4
  br label %smc_set_pci_values.exit.i.i

smc_set_pci_values.exit.i.i:                      ; preds = %if.end.i.i.i.i.i, %if.then14.i.i.smc_set_pci_values.exit.i.i_crit_edge
  %retval.0.i.i.i.i.i = phi ptr [ %55, %if.end.i.i.i.i.i ], [ %53, %if.then14.i.i.smc_set_pci_values.exit.i.i_crit_edge ]
  %call1.i.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %pci_id.i.i.i, i32 noundef 16, ptr noundef nonnull @.str.12, ptr noundef %retval.0.i.i.i.i.i) #14
  %56 = ptrtoint ptr %smc_pci_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %smc_pci_dev.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #14
  %58 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %tmp.i.i.i.i, align 4
  %call.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i70.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i70.i.i, label %if.end.i.i.i, label %smc_set_pci_values.exit.i.i.if.then.i.i.i.i_crit_edge

smc_set_pci_values.exit.i.i.if.then.i.i.i.i_crit_edge: ; preds = %smc_set_pci_values.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i

if.end.i.i.i:                                     ; preds = %smc_set_pci_values.exit.i.i
  %59 = ptrtoint ptr %pci_pchid.i.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %pci_pchid.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i25.i.i.i) #14
  %61 = ptrtoint ptr %tmp.i25.i.i.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %tmp.i25.i.i.i, align 2
  %call.i26.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tmp.i25.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i25.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call.i26.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end4.i.i.i, label %if.end.i.i.i.if.then.i.i.i.i_crit_edge

if.end.i.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %62 = ptrtoint ptr %pci_vendor.i.i.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %pci_vendor.i.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i27.i.i.i) #14
  %64 = ptrtoint ptr %tmp.i27.i.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %63, ptr %tmp.i27.i.i.i, align 2
  %call.i28.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp.i27.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i27.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call.i28.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %if.end8.i.i.i, label %if.end4.i.i.i.if.then.i.i.i.i_crit_edge

if.end4.i.i.i.if.then.i.i.i.i_crit_edge:          ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i

if.end8.i.i.i:                                    ; preds = %if.end4.i.i.i
  %65 = ptrtoint ptr %pci_device.i.i.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %pci_device.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i29.i.i.i) #14
  %67 = ptrtoint ptr %tmp.i29.i.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %66, ptr %tmp.i29.i.i.i, align 2
  %call.i30.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %tmp.i29.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i29.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call.i30.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %smc_nl_handle_pci_values.exit.i.i, label %if.end8.i.i.i.if.then.i.i.i.i_crit_edge

if.end8.i.i.i.if.then.i.i.i.i_crit_edge:          ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i

smc_nl_handle_pci_values.exit.i.i:                ; preds = %if.end8.i.i.i
  %call.i31.i.i.i = call i32 @strlen(ptr noundef %pci_id.i.i.i) #17
  %add.i.i.i.i = add i32 %call.i31.i.i.i, 1
  %call1.i.i74.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef %add.i.i.i.i, ptr noundef %pci_id.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i74.i.i)
  %tobool14.not.i.i.i = icmp eq i32 %call1.i.i74.i.i, 0
  br i1 %tobool14.not.i.i.i, label %smc_nl_handle_pci_values.exit.i.i.if.end20.i.i_crit_edge, label %smc_nl_handle_pci_values.exit.i.i.if.then.i.i.i.i_crit_edge

smc_nl_handle_pci_values.exit.i.i.if.then.i.i.i.i_crit_edge: ; preds = %smc_nl_handle_pci_values.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i

smc_nl_handle_pci_values.exit.i.i.if.end20.i.i_crit_edge: ; preds = %smc_nl_handle_pci_values.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %smc_nl_handle_pci_values.exit.i.i.if.end20.i.i_crit_edge, %if.end12.i.i.if.end20.i.i_crit_edge
  %68 = ptrtoint ptr %ibdev.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ibdev.i.i, align 8
  %name.i.i = getelementptr inbounds %struct.ib_device, ptr %69, i32 0, i32 2
  %call23.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %smc_ibname.i.i, i32 noundef 64, ptr noundef nonnull @.str.12, ptr noundef %name.i.i) #14
  %call.i76.i.i = call i32 @strlen(ptr noundef nonnull %smc_ibname.i.i) #17
  %add.i.i.i = add i32 %call.i76.i.i, 1
  %call1.i77.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef %add.i.i.i, ptr noundef nonnull %smc_ibname.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i77.i.i)
  %tobool26.not.i.i = icmp eq i32 %call1.i77.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end20.i.i.for.body.i.i_crit_edge, label %if.end20.i.i.if.then.i.i.i.i_crit_edge

if.end20.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i

if.end20.i.i.for.body.i.i_crit_edge:              ; preds = %if.end20.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end20.i.i.for.body.i.i_crit_edge
  %i.0115.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 1, %if.end20.i.i.for.body.i.i_crit_edge ]
  %70 = ptrtoint ptr %ibdev.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ibdev.i.i, align 8
  %is_switch.i.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %71, i32 0, i32 19
  %72 = ptrtoint ptr %is_switch.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %bf.load.i.i.i.i.i = load i8, ptr %is_switch.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i.i.i.i.i)
  %tobool.i.i.i.i.i = icmp slt i8 %bf.load.i.i.i.i.i, 0
  br i1 %tobool.i.i.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %rdma_is_port_valid.exit.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

rdma_is_port_valid.exit.i.i:                      ; preds = %for.body.i.i
  %phys_port_cnt.i.i.i.i = getelementptr inbounds %struct.ib_device, ptr %71, i32 0, i32 21
  %73 = ptrtoint ptr %phys_port_cnt.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %phys_port_cnt.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %i.0115.i.i)
  %cmp2.i.not.i.i = icmp ult i32 %74, %i.0115.i.i
  br i1 %cmp2.i.not.i.i, label %rdma_is_port_valid.exit.i.i.for.inc.i.i_crit_edge, label %if.end34.i.i

rdma_is_port_valid.exit.i.i.for.inc.i.i_crit_edge: ; preds = %rdma_is_port_valid.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i.i

if.end34.i.i:                                     ; preds = %rdma_is_port_valid.exit.i.i
  %sub.i.i = add nsw i32 %i.0115.i.i, -1
  call void @llvm.lifetime.start.p0(i64 17, ptr nonnull %smc_pnet.i.i.i) #14
  %add.i79.i.i = add nuw nsw i32 %i.0115.i.i, 7
  %or.i.i.i.i = or i32 %add.i79.i.i, 32768
  %75 = call ptr @memset(ptr %smc_pnet.i.i.i, i32 255, i32 17)
  %76 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %call1.i.i.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef %or.i.i.i.i, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %call1.i.i.i.i.i, 0
  %tobool.not12.i.i.i = icmp eq ptr %77, null
  %tobool.not.i80.i.i = select i1 %cmp.i.i.i.i.i, i1 true, i1 %tobool.not12.i.i.i
  br i1 %tobool.not.i80.i.i, label %if.end34.i.i.smc_nl_handle_dev_port.exit.thread.i.i_crit_edge, label %if.end.i83.i.i

if.end34.i.i.smc_nl_handle_dev_port.exit.thread.i.i_crit_edge: ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_nl_handle_dev_port.exit.thread.i.i

if.end.i83.i.i:                                   ; preds = %if.end34.i.i
  %arrayidx.i81.i.i = getelementptr %struct.smc_ib_device, ptr %smcibdev.028.i, i32 0, i32 10, i32 %sub.i.i
  %78 = ptrtoint ptr %arrayidx.i81.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i81.i.i, align 1, !range !81
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i78.i.i) #14
  %80 = ptrtoint ptr %tmp.i.i78.i.i to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %tmp.i.i78.i.i, align 1
  %call.i.i82.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i.i78.i.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i78.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i82.i.i)
  %tobool3.not.i.i.i = icmp eq i32 %call.i.i82.i.i, 0
  br i1 %tobool3.not.i.i.i, label %if.end5.i.i.i, label %if.end.i83.i.i.if.then.i.i.i.i.i_crit_edge

if.end.i83.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end.i83.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i.i

if.end5.i.i.i:                                    ; preds = %if.end.i83.i.i
  %arrayidx6.i.i.i = getelementptr %struct.smc_ib_device, ptr %smcibdev.028.i, i32 0, i32 9, i32 %sub.i.i
  %81 = call ptr @memcpy(ptr %smc_pnet.i.i.i, ptr %arrayidx6.i.i.i, i32 16)
  %82 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 0, ptr %3, align 1
  %call.i1.i.i.i = call i32 @strlen(ptr noundef nonnull %smc_pnet.i.i.i) #17
  %add.i.i84.i.i = add i32 %call.i1.i.i.i, 1
  %call1.i.i85.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef %add.i.i84.i.i, ptr noundef nonnull %smc_pnet.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i85.i.i)
  %tobool10.not.i86.i.i = icmp eq i32 %call1.i.i85.i.i, 0
  br i1 %tobool10.not.i86.i.i, label %if.end12.i87.i.i, label %if.end5.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end5.i.i.i.if.then.i.i.i.i.i_crit_edge:        ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i.i

if.end12.i87.i.i:                                 ; preds = %if.end5.i.i.i
  %arrayidx13.i.i.i = getelementptr %struct.smc_ib_device, ptr %smcibdev.028.i, i32 0, i32 19, i32 %sub.i.i
  %83 = ptrtoint ptr %arrayidx13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx13.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i2.i.i.i) #14
  %85 = ptrtoint ptr %tmp.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %tmp.i2.i.i.i, align 4
  %call.i3.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i2.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i2.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i3.i.i.i)
  %tobool15.not.i.i.i = icmp eq i32 %call.i3.i.i.i, 0
  br i1 %tobool15.not.i.i.i, label %if.end17.i.i.i, label %if.end12.i87.i.i.if.then.i.i.i.i.i_crit_edge

if.end12.i87.i.i.if.then.i.i.i.i.i_crit_edge:     ; preds = %if.end12.i87.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i.i

if.end17.i.i.i:                                   ; preds = %if.end12.i87.i.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i4.i.i.i) #14
  %86 = ptrtoint ptr %tmp.i4.i.i.i to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 1, ptr %tmp.i4.i.i.i, align 1
  %call.i5.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i4.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i4.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i5.i.i.i)
  %tobool19.not.i.i.i = icmp eq i32 %call.i5.i.i.i, 0
  br i1 %tobool19.not.i.i.i, label %if.end21.i.i.i, label %if.end17.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end17.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i.i

if.end21.i.i.i:                                   ; preds = %if.end17.i.i.i
  %state.i.i.i.i = getelementptr %struct.smc_ib_device, ptr %smcibdev.028.i, i32 0, i32 2, i32 %sub.i.i, i32 1
  %87 = ptrtoint ptr %state.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %state.i.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %88)
  %cmp.i.i88.i.i = icmp eq i32 %88, 4
  %conv25.i.i.i = zext i1 %cmp.i.i88.i.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i6.i.i.i) #14
  %89 = ptrtoint ptr %tmp.i6.i.i.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %conv25.i.i.i, ptr %tmp.i6.i.i.i, align 1
  %call.i7.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i6.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i6.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i7.i.i.i)
  %tobool27.not.i.i.i = icmp eq i32 %call.i7.i.i.i, 0
  br i1 %tobool27.not.i.i.i, label %if.end29.i.i.i, label %if.end21.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end21.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end21.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i.i

if.end29.i.i.i:                                   ; preds = %if.end21.i.i.i
  %arrayidx30.i.i.i = getelementptr %struct.smc_ib_device, ptr %smcibdev.028.i, i32 0, i32 18, i32 %sub.i.i
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx30.i.i.i, i32 noundef 4) #14
  %90 = ptrtoint ptr %arrayidx30.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile i32, ptr %arrayidx30.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i8.i.i.i) #14
  %92 = ptrtoint ptr %tmp.i8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %tmp.i8.i.i.i, align 4
  %call.i9.i.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i8.i.i.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i8.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i9.i.i.i)
  %tobool33.not.i.i.i = icmp eq i32 %call.i9.i.i.i, 0
  br i1 %tobool33.not.i.i.i, label %smc_nl_handle_dev_port.exit.i.i, label %if.end29.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end29.i.i.i.if.then.i.i.i.i.i_crit_edge:       ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end29.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end21.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end17.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end12.i87.i.i.if.then.i.i.i.i.i_crit_edge, %if.end5.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end.i83.i.i.if.then.i.i.i.i.i_crit_edge
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %93 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data.i.i.i.i.i, align 4
  %cmp.i.i11.i.i.i = icmp ugt ptr %94, %77
  br i1 %cmp.i.i11.i.i.i, label %do.end.i.i.i.i.i, label %if.then.i.i.i.i.i.nla_nest_cancel.exit.i.i.i_crit_edge, !prof !82

if.then.i.i.i.i.i.nla_nest_cancel.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_nest_cancel.exit.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %nla_nest_cancel.exit.i.i.i

nla_nest_cancel.exit.i.i.i:                       ; preds = %do.end.i.i.i.i.i, %if.then.i.i.i.i.i.nla_nest_cancel.exit.i.i.i_crit_edge
  %95 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data.i.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %77 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %96 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i.i.i) #14
  br label %smc_nl_handle_dev_port.exit.thread.i.i

smc_nl_handle_dev_port.exit.thread.i.i:           ; preds = %nla_nest_cancel.exit.i.i.i, %if.end34.i.i.smc_nl_handle_dev_port.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %smc_pnet.i.i.i) #14
  br label %if.then.i.i.i.i

smc_nl_handle_dev_port.exit.i.i:                  ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %97 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %98 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv.i10.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i to i16
  %99 = ptrtoint ptr %77 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv.i10.i.i.i, ptr %77, align 2
  call void @llvm.lifetime.end.p0(i64 17, ptr nonnull %smc_pnet.i.i.i) #14
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %smc_nl_handle_dev_port.exit.i.i, %rdma_is_port_valid.exit.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.0115.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 3
  br i1 %exitcond.not.i.i, label %smc_nl_handle_smcr_dev.exit.i, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

if.then.i.i.i.i:                                  ; preds = %smc_nl_handle_dev_port.exit.thread.i.i, %if.end20.i.i.if.then.i.i.i.i_crit_edge, %smc_nl_handle_pci_values.exit.i.i.if.then.i.i.i.i_crit_edge, %if.end8.i.i.i.if.then.i.i.i.i_crit_edge, %if.end4.i.i.i.if.then.i.i.i.i_crit_edge, %if.end.i.i.i.if.then.i.i.i.i_crit_edge, %smc_set_pci_values.exit.i.i.if.then.i.i.i.i_crit_edge, %smcr_diag_is_dev_critical.exit.i.i.if.then.i.i.i.i_crit_edge
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %100 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i94.i.i = icmp ugt ptr %101, %15
  br i1 %cmp.i.i94.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge, !prof !82

if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_nest_cancel.exit.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %nla_nest_cancel.exit.i.i

nla_nest_cancel.exit.i.i:                         ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge
  %102 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i95.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i96.i.i = ptrtoint ptr %103 to i32
  %sub.ptr.sub.i.i97.i.i = sub i32 %sub.ptr.lhs.cast.i.i95.i.i, %sub.ptr.rhs.cast.i.i96.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i97.i.i) #14
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %nla_nest_cancel.exit.i.i, %if.end.i.i.if.then.i.i.i_crit_edge
  %add.ptr1.i99.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %tobool.not.i.i.i100.i.i = icmp eq ptr %add.ptr1.i99.i.i, null
  br i1 %tobool.not.i.i.i100.i.i, label %if.then.i.i.i.smc_nl_handle_smcr_dev.exit.thread.i_crit_edge, label %if.then.i.i.i103.i.i

if.then.i.i.i.smc_nl_handle_smcr_dev.exit.thread.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_nl_handle_smcr_dev.exit.thread.i

if.then.i.i.i103.i.i:                             ; preds = %if.then.i.i.i
  %data.i.i.i101.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %104 = ptrtoint ptr %data.i.i.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %data.i.i.i101.i.i, align 4
  %cmp.i.i.i102.i.i = icmp ugt ptr %105, %add.ptr1.i99.i.i
  br i1 %cmp.i.i.i102.i.i, label %do.end.i.i.i104.i.i, label %if.then.i.i.i103.i.i.if.end.i.i.i108.i.i_crit_edge, !prof !82

if.then.i.i.i103.i.i.if.end.i.i.i108.i.i_crit_edge: ; preds = %if.then.i.i.i103.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i.i.i108.i.i

do.end.i.i.i104.i.i:                              ; preds = %if.then.i.i.i103.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 991, i32 noundef 9, ptr noundef null) #14
  br label %if.end.i.i.i108.i.i

if.end.i.i.i108.i.i:                              ; preds = %do.end.i.i.i104.i.i, %if.then.i.i.i103.i.i.if.end.i.i.i108.i.i_crit_edge
  %106 = ptrtoint ptr %data.i.i.i101.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %data.i.i.i101.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i105.i.i = ptrtoint ptr %add.ptr1.i99.i.i to i32
  %sub.ptr.rhs.cast.i.i.i106.i.i = ptrtoint ptr %107 to i32
  %sub.ptr.sub.i.i.i107.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i105.i.i, %sub.ptr.rhs.cast.i.i.i106.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i107.i.i) #14
  br label %smc_nl_handle_smcr_dev.exit.thread.i

smc_nl_handle_smcr_dev.exit.thread.i:             ; preds = %if.end.i.i.i108.i.i, %if.then.i.i.i.smc_nl_handle_smcr_dev.exit.thread.i_crit_edge, %if.end.i.smc_nl_handle_smcr_dev.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %smc_pci_dev.i.i) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %smc_ibname.i.i) #14
  br label %smc_nl_prep_smcr_dev.exit

smc_nl_handle_smcr_dev.exit.i:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %108 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %109 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %110 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %conv.i.i.i, ptr %15, align 2
  %add.ptr1.i.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %111 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i91.i.i = ptrtoint ptr %111 to i32
  %sub.ptr.rhs.cast.i.i92.i.i = ptrtoint ptr %add.ptr1.i.i.i to i32
  %sub.ptr.sub.i.i93.i.i = sub i32 %sub.ptr.lhs.cast.i.i91.i.i, %sub.ptr.rhs.cast.i.i92.i.i
  %112 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %sub.ptr.sub.i.i93.i.i, ptr %add.ptr1.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %smc_pci_dev.i.i) #14
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %smc_ibname.i.i) #14
  br label %next7.i

next7.i:                                          ; preds = %smc_nl_handle_smcr_dev.exit.i, %for.body.i.next7.i_crit_edge
  %inc.i = add i32 %num.026.i, 1
  %113 = ptrtoint ptr %smcibdev.028.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %smcibdev.0.i = load ptr, ptr %smcibdev.028.i, align 4
  %cmp.not.i = icmp eq ptr %smcibdev.0.i, @smc_ib_devices
  br i1 %cmp.not.i, label %next7.i.smc_nl_prep_smcr_dev.exit_crit_edge, label %next7.i.for.body.i_crit_edge

next7.i.for.body.i_crit_edge:                     ; preds = %next7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

next7.i.smc_nl_prep_smcr_dev.exit_crit_edge:      ; preds = %next7.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_nl_prep_smcr_dev.exit

smc_nl_prep_smcr_dev.exit:                        ; preds = %next7.i.smc_nl_prep_smcr_dev.exit_crit_edge, %smc_nl_handle_smcr_dev.exit.thread.i, %entry.smc_nl_prep_smcr_dev.exit_crit_edge
  %num.09.i = phi i32 [ %num.026.i, %smc_nl_handle_smcr_dev.exit.thread.i ], [ 0, %entry.smc_nl_prep_smcr_dev.exit_crit_edge ], [ %inc.i, %next7.i.smc_nl_prep_smcr_dev.exit_crit_edge ]
  call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1)) #14
  %114 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %num.09.i, ptr %0, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %115 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %len, align 4
  ret i32 %116
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_ib_destroy_queue_pair(ptr nocapture noundef %lnk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %roce_qp = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 3
  %0 = ptrtoint ptr %roce_qp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %roce_qp, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %call.i = tail call i32 @ib_destroy_qp_user(ptr noundef nonnull %1, ptr noundef null) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %roce_qp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %roce_qp, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_ib_create_queue_pair(ptr noundef %lnk) local_unnamed_addr #0 align 64 {
entry:
  %qp_attr = alloca %struct.ib_qp_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %lgr = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 50
  %0 = ptrtoint ptr %lgr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lgr, align 4
  %smc_version = getelementptr inbounds %struct.smc_link_group, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %smc_version to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %smc_version, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  %cond = select i1 %cmp, i32 2, i32 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %qp_attr) #14
  %4 = ptrtoint ptr %qp_attr to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @smc_ib_qp_event_handler, ptr %qp_attr, align 4
  %qp_context = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 1
  %5 = ptrtoint ptr %qp_context to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %lnk, ptr %qp_context, align 4
  %send_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 2
  %6 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lnk, align 8
  %roce_cq_send = getelementptr inbounds %struct.smc_ib_device, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %roce_cq_send to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %roce_cq_send, align 8
  %10 = ptrtoint ptr %send_cq to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %send_cq, align 4
  %recv_cq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 3
  %roce_cq_recv = getelementptr inbounds %struct.smc_ib_device, ptr %7, i32 0, i32 5
  %11 = ptrtoint ptr %roce_cq_recv to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %roce_cq_recv, align 4
  %13 = ptrtoint ptr %recv_cq to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %recv_cq, align 4
  %srq = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 4
  %14 = ptrtoint ptr %srq to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %srq, align 4
  %xrcd = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 5
  %15 = ptrtoint ptr %xrcd to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %xrcd, align 4
  %cap = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6
  %16 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 48, ptr %cap, align 4
  %max_recv_wr = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %max_recv_wr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 48, ptr %max_recv_wr, align 4
  %max_send_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6, i32 2
  %18 = ptrtoint ptr %max_send_sge to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %max_send_sge, align 4
  %max_recv_sge = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6, i32 3
  %19 = ptrtoint ptr %max_recv_sge to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond, ptr %max_recv_sge, align 4
  %max_inline_data = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6, i32 4
  %20 = ptrtoint ptr %max_inline_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %max_inline_data, align 4
  %max_rdma_ctxs = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 6, i32 5
  %21 = ptrtoint ptr %max_rdma_ctxs to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %max_rdma_ctxs, align 4
  %sq_sig_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 7
  %22 = ptrtoint ptr %sq_sig_type to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %sq_sig_type, align 4
  %qp_type = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 8
  %23 = ptrtoint ptr %qp_type to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %qp_type, align 4
  %create_flags = getelementptr inbounds %struct.ib_qp_init_attr, ptr %qp_attr, i32 0, i32 9
  %roce_pd = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 2
  %24 = call ptr @memset(ptr %create_flags, i32 0, i32 16)
  %25 = ptrtoint ptr %roce_pd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %roce_pd, align 8
  %call.i = call ptr @ib_create_qp_kernel(ptr noundef %26, ptr noundef nonnull %qp_attr, ptr noundef nonnull @.str.2) #14
  %roce_qp = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 3
  %27 = ptrtoint ptr %roce_qp to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %roce_qp, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %call.i to i32
  %29 = ptrtoint ptr %roce_qp to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %roce_qp, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  call void @smc_wr_remember_qp_attr(ptr noundef %lnk) #14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %spec.select.i = phi i32 [ 0, %if.else ], [ %28, %if.then ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %qp_attr) #14
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_ib_qp_event_handler(ptr nocapture noundef readonly %ibevent, ptr nocapture noundef readonly %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %event = getelementptr inbounds %struct.ib_event, ptr %ibevent, i32 0, i32 2
  %2 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %event, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 1, label %entry.sw.bb_crit_edge
    i32 3, label %entry.sw.bb_crit_edge14
  ]

entry.sw.bb_crit_edge14:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge14
  %element = getelementptr inbounds %struct.ib_event, ptr %ibevent, i32 0, i32 1
  %5 = ptrtoint ptr %element to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %element, align 4
  %port = getelementptr inbounds %struct.ib_qp, ptr %6, i32 0, i32 25
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %port, align 4
  %conv = add i32 %8, 255
  %conv2 = and i32 %conv, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv2)
  %cmp = icmp ugt i32 %conv2, 1
  br i1 %cmp, label %sw.bb.sw.epilog_crit_edge, label %if.end

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end:                                           ; preds = %sw.bb
  %port_event_mask = getelementptr inbounds %struct.smc_ib_device, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef %conv2, ptr noundef %port_event_mask) #14
  %ports_going_away = getelementptr inbounds %struct.smc_ib_device, ptr %1, i32 0, i32 14
  %call = tail call i32 @_test_and_set_bit(i32 noundef %conv2, ptr noundef %ports_going_away) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then6, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %port_event_work = getelementptr inbounds %struct.smc_ib_device, ptr %1, i32 0, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %port_event_work) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then6, %if.end.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_ib_put_memory_region(ptr noundef %mr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @ib_dereg_mr_user(ptr noundef %mr, ptr noundef null) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_ib_get_memory_region(ptr noundef %pd, i32 noundef %access_flags, ptr nocapture noundef %buf_slot, i8 noundef zeroext %link_idx) local_unnamed_addr #0 align 64 {
entry:
  %offset.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mr_rx = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_slot, i32 0, i32 5, i32 1, i32 12
  %idxprom = zext i8 %link_idx to i32
  %arrayidx = getelementptr [3 x ptr], ptr %mr_rx, i32 0, i32 %idxprom
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %order = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_slot, i32 0, i32 5, i32 1, i32 24
  %2 = ptrtoint ptr %order to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %order, align 8
  %shl = shl nuw i32 1, %3
  %call = tail call ptr @ib_alloc_mr(ptr noundef %pd, i32 noundef 0, i32 noundef %shl) #14
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %arrayidx, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end16

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %call to i32
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  br label %return

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset.i) #14
  %7 = ptrtoint ptr %offset.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %offset.i, align 4
  %8 = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_slot, i32 0, i32 5
  %arrayidx2.i = getelementptr [3 x %struct.sg_table], ptr %8, i32 0, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx2.i, align 4
  %orig_nents.i = getelementptr [3 x %struct.sg_table], ptr %8, i32 0, i32 %idxprom, i32 2
  %11 = ptrtoint ptr %orig_nents.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %orig_nents.i, align 4
  %call.i = call i32 @ib_map_mr_sg(ptr noundef %call, ptr noundef %10, i32 noundef %12, ptr noundef nonnull %offset.i, i32 noundef 4096) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 1
  %. = select i1 %cmp.not, i32 0, i32 -22
  br label %return

return:                                           ; preds = %if.end16, %if.then8, %entry.return_crit_edge
  %retval.0 = phi i32 [ %5, %if.then8 ], [ 0, %entry.return_crit_edge ], [ %., %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_alloc_mr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_ib_sync_sg_for_cpu(ptr nocapture noundef readonly %lnk, ptr nocapture noundef readonly %buf_slot, i32 noundef %data_direction) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_slot, i32 0, i32 5
  %link_idx = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 46
  %1 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %link_idx, align 1
  %idxprom = zext i8 %2 to i32
  %nents14 = getelementptr [3 x %struct.sg_table], ptr %0, i32 0, i32 %idxprom, i32 1
  %3 = ptrtoint ptr %nents14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nents14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp15.not = icmp eq i32 %4, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr [3 x %struct.sg_table], ptr %0, i32 0, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.017 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.016 = phi ptr [ %call, %if.end.for.body_crit_edge ], [ %6, %for.body.preheader ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.016, i32 0, i32 4
  %7 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lnk, align 8
  %ibdev = getelementptr inbounds %struct.smc_ib_device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ibdev, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.016, i32 0, i32 3
  %13 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_address, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 8
  tail call void @dma_sync_single_for_cpu(ptr noundef %16, i32 noundef %14, i32 noundef %8, i32 noundef %data_direction) #14
  %inc = add nuw i32 %i.017, 1
  %call = tail call ptr @sg_next(ptr noundef %sg.016) #14
  %17 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %link_idx, align 1
  %idxprom3 = zext i8 %18 to i32
  %nents = getelementptr [3 x %struct.sg_table], ptr %0, i32 0, i32 %idxprom3, i32 1
  %19 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nents, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_ib_sync_sg_for_device(ptr nocapture noundef readonly %lnk, ptr nocapture noundef readonly %buf_slot, i32 noundef %data_direction) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_slot, i32 0, i32 5
  %link_idx = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 46
  %1 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %link_idx, align 1
  %idxprom = zext i8 %2 to i32
  %nents14 = getelementptr [3 x %struct.sg_table], ptr %0, i32 0, i32 %idxprom, i32 1
  %3 = ptrtoint ptr %nents14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nents14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp15.not = icmp eq i32 %4, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %for.body.preheader

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.preheader:                               ; preds = %entry
  %arrayidx = getelementptr [3 x %struct.sg_table], ptr %0, i32 0, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.preheader
  %i.017 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sg.016 = phi ptr [ %call, %if.end.for.body_crit_edge ], [ %6, %for.body.preheader ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.016, i32 0, i32 4
  %7 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end:                                           ; preds = %for.body
  %9 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lnk, align 8
  %ibdev = getelementptr inbounds %struct.smc_ib_device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ibdev, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.016, i32 0, i32 3
  %13 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_address, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 8
  tail call void @dma_sync_single_for_device(ptr noundef %16, i32 noundef %14, i32 noundef %8, i32 noundef %data_direction) #14
  %inc = add nuw i32 %i.017, 1
  %call = tail call ptr @sg_next(ptr noundef %sg.016) #14
  %17 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %link_idx, align 1
  %idxprom3 = zext i8 %18 to i32
  %nents = getelementptr [3 x %struct.sg_table], ptr %0, i32 0, i32 %idxprom3, i32 1
  %19 = ptrtoint ptr %nents to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nents, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_ib_buf_map_sg(ptr nocapture noundef readonly %lnk, ptr nocapture noundef readonly %buf_slot, i32 noundef %data_direction) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lnk, align 8
  %ibdev = getelementptr inbounds %struct.smc_ib_device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibdev, align 8
  %4 = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_slot, i32 0, i32 5
  %link_idx = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 46
  %5 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %link_idx, align 1
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr [3 x %struct.sg_table], ptr %4, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %orig_nents = getelementptr [3 x %struct.sg_table], ptr %4, i32 0, i32 %idxprom, i32 2
  %9 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %orig_nents, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %3, align 8
  %call2.i.i = tail call i32 @dma_map_sg_attrs(ptr noundef %12, ptr noundef %8, i32 noundef %10, i32 noundef %data_direction, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not = icmp eq i32 %call2.i.i, 0
  %.call = select i1 %tobool.not, i32 -12, i32 %call2.i.i
  ret i32 %.call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_ib_buf_unmap_sg(ptr nocapture noundef readonly %lnk, ptr nocapture noundef readonly %buf_slot, i32 noundef %data_direction) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.smc_buf_desc, ptr %buf_slot, i32 0, i32 5
  %link_idx = getelementptr inbounds %struct.smc_link, ptr %lnk, i32 0, i32 46
  %1 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %link_idx, align 1
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr [3 x %struct.sg_table], ptr %0, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %7 = ptrtoint ptr %lnk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lnk, align 8
  %ibdev = getelementptr inbounds %struct.smc_ib_device, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ibdev, align 8
  %orig_nents = getelementptr [3 x %struct.sg_table], ptr %0, i32 0, i32 %idxprom, i32 2
  %11 = ptrtoint ptr %orig_nents to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %orig_nents, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %14, ptr noundef %4, i32 noundef %12, i32 noundef %data_direction, i32 noundef 0) #14
  %15 = ptrtoint ptr %link_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %link_idx, align 1
  %idxprom12 = zext i8 %16 to i32
  %arrayidx13 = getelementptr [3 x %struct.sg_table], ptr %0, i32 0, i32 %idxprom12
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx13, align 4
  %dma_address15 = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %dma_address15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %dma_address15, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_ib_setup_per_ibdev(ptr noundef %smcibdev) local_unnamed_addr #0 align 64 {
entry:
  %cqattr = alloca %struct.ib_cq_init_attr, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %cqattr) #14
  %0 = call ptr @memcpy(ptr %cqattr, ptr @__const.smc_ib_setup_per_ibdev.cqattr, i32 12)
  %mutex = getelementptr inbounds %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #14
  %initialized = getelementptr inbounds %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 11
  %1 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %initialized, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end6, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.end6:                                          ; preds = %entry
  %ibdev = getelementptr inbounds %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 1
  %2 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ibdev, align 8
  %call = call ptr @__ib_create_cq(ptr noundef %3, ptr noundef nonnull @smc_wr_tx_cq_handler, ptr noundef null, ptr noundef %smcibdev, ptr noundef nonnull %cqattr, ptr noundef nonnull @.str.2) #14
  %roce_cq_send = getelementptr inbounds %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 4
  %4 = ptrtoint ptr %roce_cq_send to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %roce_cq_send, align 8
  %cmp.i.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #16
  %5 = ptrtoint ptr %call to i32
  %6 = ptrtoint ptr %roce_cq_send to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %roce_cq_send, align 8
  br label %out

if.end13:                                         ; preds = %if.end6
  %7 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ibdev, align 8
  %call15 = call ptr @__ib_create_cq(ptr noundef %8, ptr noundef nonnull @smc_wr_rx_cq_handler, ptr noundef null, ptr noundef %smcibdev, ptr noundef nonnull %cqattr, ptr noundef nonnull @.str.2) #14
  %roce_cq_recv = getelementptr inbounds %struct.smc_ib_device, ptr %smcibdev, i32 0, i32 5
  %9 = ptrtoint ptr %roce_cq_recv to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call15, ptr %roce_cq_recv, align 4
  %cmp.i.i45 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  %10 = ptrtoint ptr %call15 to i32
  br i1 %cmp.i.i45, label %if.then20, label %if.end22

if.then20:                                        ; preds = %if.end13
  %11 = ptrtoint ptr %roce_cq_recv to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %roce_cq_recv, align 4
  %12 = ptrtoint ptr %roce_cq_send to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %roce_cq_send, align 8
  %call.i = call i32 @ib_destroy_cq_user(ptr noundef %13, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then20.out_crit_edge, label %land.rhs.i

if.then20.out_crit_edge:                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

land.rhs.i:                                       ; preds = %if.then20
  %.b38.i = load i1, ptr @ib_destroy_cq.__already_done, align 1
  br i1 %.b38.i, label %land.rhs.i.out_crit_edge, label %if.then.i, !prof !80

land.rhs.i.out_crit_edge:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %out

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ib_destroy_cq.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 3936, i32 noundef 9, ptr noundef nonnull @.str.14) #14
  br label %out

if.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  call void @smc_wr_add_dev(ptr noundef %smcibdev) #14
  %14 = ptrtoint ptr %initialized to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load24 = load i8, ptr %initialized, align 2
  %bf.set = or i8 %bf.load24, -128
  store i8 %bf.set, ptr %initialized, align 2
  br label %out

out:                                              ; preds = %if.end22, %if.then.i, %land.rhs.i.out_crit_edge, %if.then20.out_crit_edge, %if.then11, %entry.out_crit_edge
  %rc.0 = phi i32 [ 0, %entry.out_crit_edge ], [ %5, %if.then11 ], [ 0, %if.end22 ], [ %10, %if.then20.out_crit_edge ], [ %10, %land.rhs.i.out_crit_edge ], [ %10, %if.then.i ]
  call void @mutex_unlock(ptr noundef %mutex) #14
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %cqattr) #14
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ib_create_cq(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_wr_tx_cq_handler(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_wr_rx_cq_handler(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_wr_add_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_ib_ndev_change(ptr noundef readonly %ndev, i32 noundef %event) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1), i32 noundef 0) #14
  %smcibdev.051 = load ptr, ptr @smc_ib_devices, align 4
  %cmp.not52 = icmp eq ptr %smcibdev.051, @smc_ib_devices
  br i1 %cmp.not52, label %entry.for.end31_crit_edge, label %for.body.lr.ph

entry.for.end31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end31

for.body.lr.ph:                                   ; preds = %entry
  %ifindex = getelementptr inbounds %struct.net_device, ptr %ndev, i32 0, i32 17
  br label %for.body

for.cond.loopexit:                                ; preds = %for.inc.sink.split.1, %if.end15.1.for.cond.loopexit_crit_edge, %dev_put.exit.1.for.cond.loopexit_crit_edge, %for.body8.1.for.cond.loopexit_crit_edge, %for.inc.for.cond.loopexit_crit_edge, %for.body.for.cond.loopexit_crit_edge
  %0 = ptrtoint ptr %smcibdev.053 to i32
  call void @__asan_load4_noabort(i32 %0)
  %smcibdev.0 = load ptr, ptr %smcibdev.053, align 4
  %cmp.not = icmp eq ptr %smcibdev.0, @smc_ib_devices
  br i1 %cmp.not, label %for.cond.loopexit.for.end31_crit_edge, label %for.cond.loopexit.for.body_crit_edge

for.cond.loopexit.for.body_crit_edge:             ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.loopexit.for.end31_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end31

for.body:                                         ; preds = %for.cond.loopexit.for.body_crit_edge, %for.body.lr.ph
  %smcibdev.053 = phi ptr [ %smcibdev.051, %for.body.lr.ph ], [ %smcibdev.0, %for.cond.loopexit.for.body_crit_edge ]
  %ibdev = getelementptr inbounds %struct.smc_ib_device, ptr %smcibdev.053, i32 0, i32 1
  %1 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ibdev, align 8
  %phys_port_cnt = getelementptr inbounds %struct.ib_device, ptr %2, i32 0, i32 21
  %3 = ptrtoint ptr %phys_port_cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phys_port_cnt, align 8
  %conv2 = and i32 %4, 255
  %5 = tail call i32 @llvm.umin.i32(i32 %conv2, i32 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp648.not = icmp eq i32 %5, 0
  br i1 %cmp648.not, label %for.body.for.cond.loopexit_crit_edge, label %for.body8

for.body.for.cond.loopexit_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.loopexit

for.body8:                                        ; preds = %for.body
  %6 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ibdev, align 8
  %get_netdev = getelementptr inbounds %struct.ib_device, ptr %7, i32 0, i32 1, i32 23
  %8 = ptrtoint ptr %get_netdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %get_netdev, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.body8.for.inc_crit_edge, label %if.end

for.body8.for.inc_crit_edge:                      ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body8
  %call = tail call ptr %9(ptr noundef %7, i32 noundef 1) #14
  %tobool.not.i = icmp eq ptr %call, null
  br i1 %tobool.not.i, label %if.end.dev_put.exit_crit_edge, label %do.body1.i

if.end.dev_put.exit_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit

do.body1.i:                                       ; preds = %if.end
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !83
  %pcpu_refcnt.i = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 118
  %11 = ptrtoint ptr %pcpu_refcnt.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pcpu_refcnt.i, align 4
  %13 = ptrtoint ptr %12 to i32
  %14 = tail call i32 @llvm.read_register.i32(metadata !68) #14
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %19, %13
  %20 = inttoptr i32 %add.i to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %add13.i = add i32 %22, -1
  store i32 %add13.i, ptr %20, align 4
  %23 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !84
  %and.i.i.i = and i32 %23, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool24.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool24.not.i, label %if.then28.i, label %do.body1.i.do.end30.i_crit_edge, !prof !82

do.body1.i.do.end30.i_crit_edge:                  ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30.i

if.then28.i:                                      ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end30.i

do.end30.i:                                       ; preds = %if.then28.i, %do.body1.i.do.end30.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #14, !srcloc !85
  br label %dev_put.exit

dev_put.exit:                                     ; preds = %do.end30.i, %if.end.dev_put.exit_crit_edge
  %cmp12.not = icmp eq ptr %call, %ndev
  br i1 %cmp12.not, label %if.end15, label %dev_put.exit.for.inc_crit_edge

dev_put.exit.for.inc_crit_edge:                   ; preds = %dev_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end15:                                         ; preds = %dev_put.exit
  %24 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %event, label %if.end15.for.inc_crit_edge [
    i32 5, label %if.then18
    i32 6, label %if.end15.for.inc.sink.split_crit_edge
  ]

if.end15.for.inc.sink.split_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.sink.split

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #16
  %25 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ifindex, align 4
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then18, %if.end15.for.inc.sink.split_crit_edge
  %.sink = phi i32 [ %26, %if.then18 ], [ 0, %if.end15.for.inc.sink.split_crit_edge ]
  %arrayidx = getelementptr %struct.smc_ib_device, ptr %smcibdev.053, i32 0, i32 19, i32 0
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end15.for.inc_crit_edge, %dev_put.exit.for.inc_crit_edge, %for.body8.for.inc_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %exitcond.not = icmp eq i32 %5, 1
  br i1 %exitcond.not, label %for.inc.for.cond.loopexit_crit_edge, label %for.body8.1

for.inc.for.cond.loopexit_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.loopexit

for.body8.1:                                      ; preds = %for.inc
  %28 = ptrtoint ptr %ibdev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ibdev, align 8
  %get_netdev.1 = getelementptr inbounds %struct.ib_device, ptr %29, i32 0, i32 1, i32 23
  %30 = ptrtoint ptr %get_netdev.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_netdev.1, align 4
  %tobool.not.1 = icmp eq ptr %31, null
  br i1 %tobool.not.1, label %for.body8.1.for.cond.loopexit_crit_edge, label %if.end.1

for.body8.1.for.cond.loopexit_crit_edge:          ; preds = %for.body8.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.loopexit

if.end.1:                                         ; preds = %for.body8.1
  %call.1 = tail call ptr %31(ptr noundef %29, i32 noundef 2) #14
  %tobool.not.i.1 = icmp eq ptr %call.1, null
  br i1 %tobool.not.i.1, label %if.end.1.dev_put.exit.1_crit_edge, label %do.body1.i.1

if.end.1.dev_put.exit.1_crit_edge:                ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit.1

do.body1.i.1:                                     ; preds = %if.end.1
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !83
  %pcpu_refcnt.i.1 = getelementptr inbounds %struct.net_device, ptr %call.1, i32 0, i32 118
  %33 = ptrtoint ptr %pcpu_refcnt.i.1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pcpu_refcnt.i.1, align 4
  %35 = ptrtoint ptr %34 to i32
  %36 = tail call i32 @llvm.read_register.i32(metadata !68) #14
  %and.i.i.1 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.1 to ptr
  %cpu.i.1 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu.i.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu.i.1, align 4
  %arrayidx.i.1 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i.1, align 4
  %add.i.1 = add i32 %41, %35
  %42 = inttoptr i32 %add.i.1 to ptr
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %42, align 4
  %add13.i.1 = add i32 %44, -1
  store i32 %add13.i.1, ptr %42, align 4
  %45 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !84
  %and.i.i.i.1 = and i32 %45, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.1)
  %tobool24.not.i.1 = icmp eq i32 %and.i.i.i.1, 0
  br i1 %tobool24.not.i.1, label %if.then28.i.1, label %do.body1.i.1.do.end30.i.1_crit_edge, !prof !82

do.body1.i.1.do.end30.i.1_crit_edge:              ; preds = %do.body1.i.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end30.i.1

if.then28.i.1:                                    ; preds = %do.body1.i.1
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %do.end30.i.1

do.end30.i.1:                                     ; preds = %if.then28.i.1, %do.body1.i.1.do.end30.i.1_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %32) #14, !srcloc !85
  br label %dev_put.exit.1

dev_put.exit.1:                                   ; preds = %do.end30.i.1, %if.end.1.dev_put.exit.1_crit_edge
  %cmp12.not.1 = icmp eq ptr %call.1, %ndev
  br i1 %cmp12.not.1, label %if.end15.1, label %dev_put.exit.1.for.cond.loopexit_crit_edge

dev_put.exit.1.for.cond.loopexit_crit_edge:       ; preds = %dev_put.exit.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.loopexit

if.end15.1:                                       ; preds = %dev_put.exit.1
  %46 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %event, label %if.end15.1.for.cond.loopexit_crit_edge [
    i32 5, label %if.then18.1
    i32 6, label %if.end15.1.for.inc.sink.split.1_crit_edge
  ]

if.end15.1.for.inc.sink.split.1_crit_edge:        ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.sink.split.1

if.end15.1.for.cond.loopexit_crit_edge:           ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.loopexit

if.then18.1:                                      ; preds = %if.end15.1
  call void @__sanitizer_cov_trace_pc() #16
  %47 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ifindex, align 4
  br label %for.inc.sink.split.1

for.inc.sink.split.1:                             ; preds = %if.then18.1, %if.end15.1.for.inc.sink.split.1_crit_edge
  %.sink.1 = phi i32 [ %48, %if.then18.1 ], [ 0, %if.end15.1.for.inc.sink.split.1_crit_edge ]
  %arrayidx.1 = getelementptr %struct.smc_ib_device, ptr %smcibdev.053, i32 0, i32 19, i32 1
  %49 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %.sink.1, ptr %arrayidx.1, align 4
  br label %for.cond.loopexit

for.end31:                                        ; preds = %for.cond.loopexit.for.end31_crit_edge, %entry.for.end31_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1)) #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @smc_ib_register_client() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @get_random_bytes(ptr noundef nonnull @local_systemid, i32 noundef 2) #14
  %call = tail call i32 @ib_register_client(ptr noundef nonnull @smc_ib_client) #14
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_register_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @smc_ib_unregister_client() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ib_unregister_client(ptr noundef nonnull @smc_ib_client) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_client(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #14
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dealloc_pd_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_qp_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ib_create_qp_kernel(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_dereg_mr_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_map_mr_sg(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_destroy_cq_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @smc_ib_add_dev(ptr noundef %ibdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %node_type = getelementptr inbounds %struct.ib_device, ptr %ibdev, i32 0, i32 20
  %0 = ptrtoint ptr %node_type to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %node_type, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp.not = icmp eq i8 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 496) #18
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %ibdev4 = getelementptr inbounds %struct.smc_ib_device, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %ibdev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ibdev, ptr %ibdev4, align 8
  %port_event_work = getelementptr inbounds %struct.smc_ib_device, ptr %call7.i.i, i32 0, i32 12
  tail call void @__init_work(ptr noundef %port_event_work, i32 noundef 0) #14
  %4 = ptrtoint ptr %port_event_work to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -64, ptr %port_event_work, align 8
  %lockdep_map = getelementptr inbounds %struct.smc_ib_device, ptr %call7.i.i, i32 0, i32 12, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.16, ptr noundef nonnull @smc_ib_add_dev.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #14
  %entry8 = getelementptr inbounds %struct.smc_ib_device, ptr %call7.i.i, i32 0, i32 12, i32 1
  %5 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %entry8, ptr %entry8, align 4
  %prev.i = getelementptr inbounds %struct.smc_ib_device, ptr %call7.i.i, i32 0, i32 12, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %entry8, ptr %prev.i, align 8
  %func = getelementptr inbounds %struct.smc_ib_device, ptr %call7.i.i, i32 0, i32 12, i32 2
  %7 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @smc_ib_port_event_work, ptr %func, align 4
  %lnk_cnt = getelementptr inbounds %struct.smc_ib_device, ptr %call7.i.i, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %lnk_cnt, i32 noundef 4) #14
  %8 = ptrtoint ptr %lnk_cnt to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile i32 0, ptr %lnk_cnt, align 4
  %lnks_deleted = getelementptr inbounds %struct.smc_ib_device, ptr %call7.i.i, i32 0, i32 16
  tail call void @__init_waitqueue_head(ptr noundef %lnks_deleted, ptr noundef nonnull @.str.18, ptr noundef nonnull @smc_ib_add_dev.__key.17) #14
  %mutex = getelementptr inbounds %struct.smc_ib_device, ptr %call7.i.i, i32 0, i32 17
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.20, ptr noundef nonnull @smc_ib_add_dev.__key.19) #14
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1), i32 noundef 0) #14
  %9 = load ptr, ptr getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 0, i32 1), align 4
  %call.i.i115 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %9, ptr noundef nonnull @smc_ib_devices) #14
  br i1 %call.i.i115, label %if.end.i.i, label %if.end3.list_add_tail.exit_crit_edge

if.end3.list_add_tail.exit_crit_edge:             ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #16
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 0, i32 1), align 4
  %10 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @smc_ib_devices, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %call7.i.i, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end3.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1)) #14
  tail call void @ib_set_client_data(ptr noundef %ibdev, ptr noundef nonnull @smc_ib_client, ptr noundef nonnull %call7.i.i) #14
  %13 = ptrtoint ptr %ibdev4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ibdev4, align 8
  %event_handler = getelementptr inbounds %struct.smc_ib_device, ptr %call7.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %event_handler to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %event_handler, align 8
  %handler = getelementptr inbounds %struct.smc_ib_device, ptr %call7.i.i, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @smc_ib_global_event_handler, ptr %handler, align 4
  %list20 = getelementptr inbounds %struct.smc_ib_device, ptr %call7.i.i, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %list20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %list20, ptr %list20, align 8
  %prev.i116 = getelementptr inbounds %struct.smc_ib_device, ptr %call7.i.i, i32 0, i32 3, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i116 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %list20, ptr %prev.i116, align 4
  tail call void @ib_register_event_handler(ptr noundef %event_handler) #14
  %19 = ptrtoint ptr %ibdev4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ibdev4, align 8
  %phys_port_cnt = getelementptr inbounds %struct.ib_device, ptr %20, i32 0, i32 21
  %21 = ptrtoint ptr %phys_port_cnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %phys_port_cnt, align 8
  %call26 = tail call i32 @___ratelimit(ptr noundef nonnull @smc_ib_add_dev._rs, ptr noundef nonnull @__func__.smc_ib_add_dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %list_add_tail.exit.if.end35_crit_edge, label %do.end31

list_add_tail.exit.if.end35_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  %.pre = and i32 %22, 255
  br label %if.end35

do.end31:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %ibdev4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ibdev4, align 8
  %name = getelementptr inbounds %struct.ib_device, ptr %24, i32 0, i32 2
  %conv33 = and i32 %22, 255
  %call34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name, i32 noundef %conv33) #19
  br label %if.end35

if.end35:                                         ; preds = %do.end31, %list_add_tail.exit.if.end35_crit_edge
  %conv36.pre-phi = phi i32 [ %.pre, %list_add_tail.exit.if.end35_crit_edge ], [ %conv33, %do.end31 ]
  %25 = tail call i32 @llvm.umin.i32(i32 %conv36.pre-phi, i32 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp40118.not = icmp eq i32 %25, 0
  br i1 %cmp40118.not, label %if.end35.for.end_crit_edge, label %for.body.lr.ph

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end35
  %port_event_mask = getelementptr inbounds %struct.smc_ib_device, ptr %call7.i.i, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.pre-phi, %for.inc.for.body_crit_edge ]
  tail call void @_set_bit(i32 noundef %i.0119, ptr noundef %port_event_mask) #14
  %arrayidx = getelementptr %struct.smc_ib_device, ptr %call7.i.i, i32 0, i32 9, i32 %i.0119
  %26 = trunc i32 %i.0119 to i8
  %conv47 = add i8 %26, 1
  %call48 = tail call i32 @smc_pnetid_by_table_ib(ptr noundef nonnull %call7.i.i, i8 noundef zeroext %conv47) #14
  %27 = ptrtoint ptr %ibdev4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ibdev4, align 8
  %get_netdev.i = getelementptr inbounds %struct.ib_device, ptr %28, i32 0, i32 1, i32 23
  %29 = ptrtoint ptr %get_netdev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %get_netdev.i, align 4
  %tobool.not.i = icmp eq ptr %30, null
  br i1 %tobool.not.i, label %for.body.smc_copy_netdev_ifindex.exit_crit_edge, label %if.end.i

for.body.smc_copy_netdev_ifindex.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_copy_netdev_ifindex.exit

if.end.i:                                         ; preds = %for.body
  %add.i = add nuw nsw i32 %i.0119, 1
  %call.i = tail call ptr %30(ptr noundef %28, i32 noundef %add.i) #14
  %tobool4.not.i = icmp eq ptr %call.i, null
  br i1 %tobool4.not.i, label %if.end.i.smc_copy_netdev_ifindex.exit_crit_edge, label %do.body1.i.i

if.end.i.smc_copy_netdev_ifindex.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_copy_netdev_ifindex.exit

do.body1.i.i:                                     ; preds = %if.end.i
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 17
  %31 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ifindex.i, align 4
  %arrayidx.i = getelementptr %struct.smc_ib_device, ptr %call7.i.i, i32 0, i32 19, i32 %i.0119
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx.i, align 4
  %34 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #14, !srcloc !83
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %call.i, i32 0, i32 118
  %35 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  %38 = tail call i32 @llvm.read_register.i32(metadata !68) #14
  %and.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %43, %37
  %44 = inttoptr i32 %add.i.i to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %add13.i.i = add i32 %46, -1
  store i32 %add13.i.i, ptr %44, align 4
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #14, !srcloc !84
  %and.i.i.i.i = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !82

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @warn_bogus_irq_restore() #14
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %34) #14, !srcloc !85
  br label %smc_copy_netdev_ifindex.exit

smc_copy_netdev_ifindex.exit:                     ; preds = %dev_put.exit.i, %if.end.i.smc_copy_netdev_ifindex.exit_crit_edge, %for.body.smc_copy_netdev_ifindex.exit_crit_edge
  %call50 = tail call i32 @___ratelimit(ptr noundef nonnull @smc_ib_add_dev._rs.23, ptr noundef nonnull @__func__.smc_ib_add_dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %smc_copy_netdev_ifindex.exit.for.inc_crit_edge, label %do.end55

smc_copy_netdev_ifindex.exit.for.inc_crit_edge:   ; preds = %smc_copy_netdev_ifindex.exit
  call void @__sanitizer_cov_trace_pc() #16
  %.pre122 = add nuw nsw i32 %i.0119, 1
  br label %for.inc

do.end55:                                         ; preds = %smc_copy_netdev_ifindex.exit
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %ibdev4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ibdev4, align 8
  %name58 = getelementptr inbounds %struct.ib_device, ptr %49, i32 0, i32 2
  %add60 = add nuw nsw i32 %i.0119, 1
  %arrayidx64 = getelementptr %struct.smc_ib_device, ptr %call7.i.i, i32 0, i32 10, i32 %i.0119
  %50 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %arrayidx64, align 1, !range !81
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool65.not = icmp eq i8 %51, 0
  %cond67 = select i1 %tobool65.not, ptr @.str.28, ptr @.str.27
  %call68 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %name58, i32 noundef %add60, ptr noundef %arrayidx, ptr noundef nonnull %cond67) #19
  br label %for.inc

for.inc:                                          ; preds = %do.end55, %smc_copy_netdev_ifindex.exit.for.inc_crit_edge
  %inc.pre-phi = phi i32 [ %.pre122, %smc_copy_netdev_ifindex.exit.for.inc_crit_edge ], [ %add60, %do.end55 ]
  %exitcond.not = icmp eq i32 %inc.pre-phi, %25
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end35.for.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %52 = load ptr, ptr @system_wq, align 4
  %call.i.i117 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %52, ptr noundef %port_event_work) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -95, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_ib_remove_dev(ptr nocapture noundef readnone %ibdev, ptr noundef %client_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1), i32 noundef 0) #14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %client_data) #14
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %client_data, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %client_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %client_data, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %6 = ptrtoint ptr %client_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %client_data, ptr %client_data, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %client_data, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client_data, ptr %prev.i3.i, align 4
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.smc_ib_devices, ptr @smc_ib_devices, i32 0, i32 1)) #14
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @smc_ib_remove_dev._rs, ptr noundef nonnull @__func__.smc_ib_remove_dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %list_del_init.exit.if.end_crit_edge, label %do.end

list_del_init.exit.if.end_crit_edge:              ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

do.end:                                           ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #16
  %ibdev1 = getelementptr inbounds %struct.smc_ib_device, ptr %client_data, i32 0, i32 1
  %8 = ptrtoint ptr %ibdev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ibdev1, align 8
  %name = getelementptr inbounds %struct.ib_device, ptr %9, i32 0, i32 2
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %name) #19
  br label %if.end

if.end:                                           ; preds = %do.end, %list_del_init.exit.if.end_crit_edge
  tail call void @smc_smcr_terminate_all(ptr noundef %client_data) #14
  %mutex.i = getelementptr inbounds %struct.smc_ib_device, ptr %client_data, i32 0, i32 17
  tail call void @mutex_lock_nested(ptr noundef %mutex.i, i32 noundef 0) #14
  %initialized.i = getelementptr inbounds %struct.smc_ib_device, ptr %client_data, i32 0, i32 11
  %10 = ptrtoint ptr %initialized.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i = load i8, ptr %initialized.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.end.smc_ib_cleanup_per_ibdev.exit_crit_edge, label %if.end.i

if.end.smc_ib_cleanup_per_ibdev.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_ib_cleanup_per_ibdev.exit

if.end.i:                                         ; preds = %if.end
  %bf.clear.i = and i8 %bf.load.i, 127
  %11 = ptrtoint ptr %initialized.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %bf.clear.i, ptr %initialized.i, align 2
  %roce_cq_recv.i = getelementptr inbounds %struct.smc_ib_device, ptr %client_data, i32 0, i32 5
  %12 = ptrtoint ptr %roce_cq_recv.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %roce_cq_recv.i, align 4
  %call.i.i10 = tail call i32 @ib_destroy_cq_user(ptr noundef %13, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10)
  %tobool.not.i.i = icmp eq i32 %call.i.i10, 0
  br i1 %tobool.not.i.i, label %if.end.i.ib_destroy_cq.exit.i_crit_edge, label %land.rhs.i.i

if.end.i.ib_destroy_cq.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ib_destroy_cq.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b38.i.i = load i1, ptr @ib_destroy_cq.__already_done, align 1
  br i1 %.b38.i.i, label %land.rhs.i.i.ib_destroy_cq.exit.i_crit_edge, label %if.then.i.i, !prof !80

land.rhs.i.i.ib_destroy_cq.exit.i_crit_edge:      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ib_destroy_cq.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ib_destroy_cq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 3936, i32 noundef 9, ptr noundef nonnull @.str.14) #14
  br label %ib_destroy_cq.exit.i

ib_destroy_cq.exit.i:                             ; preds = %if.then.i.i, %land.rhs.i.i.ib_destroy_cq.exit.i_crit_edge, %if.end.i.ib_destroy_cq.exit.i_crit_edge
  %roce_cq_send.i = getelementptr inbounds %struct.smc_ib_device, ptr %client_data, i32 0, i32 4
  %14 = ptrtoint ptr %roce_cq_send.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %roce_cq_send.i, align 8
  %call.i10.i = tail call i32 @ib_destroy_cq_user(ptr noundef %15, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10.i)
  %tobool.not.i11.i = icmp eq i32 %call.i10.i, 0
  br i1 %tobool.not.i11.i, label %ib_destroy_cq.exit.i.ib_destroy_cq.exit15.i_crit_edge, label %land.rhs.i13.i

ib_destroy_cq.exit.i.ib_destroy_cq.exit15.i_crit_edge: ; preds = %ib_destroy_cq.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ib_destroy_cq.exit15.i

land.rhs.i13.i:                                   ; preds = %ib_destroy_cq.exit.i
  %.b38.i12.i = load i1, ptr @ib_destroy_cq.__already_done, align 1
  br i1 %.b38.i12.i, label %land.rhs.i13.i.ib_destroy_cq.exit15.i_crit_edge, label %if.then.i14.i, !prof !80

land.rhs.i13.i.ib_destroy_cq.exit15.i_crit_edge:  ; preds = %land.rhs.i13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %ib_destroy_cq.exit15.i

if.then.i14.i:                                    ; preds = %land.rhs.i13.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @ib_destroy_cq.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 3936, i32 noundef 9, ptr noundef nonnull @.str.14) #14
  br label %ib_destroy_cq.exit15.i

ib_destroy_cq.exit15.i:                           ; preds = %if.then.i14.i, %land.rhs.i13.i.ib_destroy_cq.exit15.i_crit_edge, %ib_destroy_cq.exit.i.ib_destroy_cq.exit15.i_crit_edge
  tail call void @smc_wr_remove_dev(ptr noundef %client_data) #14
  br label %smc_ib_cleanup_per_ibdev.exit

smc_ib_cleanup_per_ibdev.exit:                    ; preds = %ib_destroy_cq.exit15.i, %if.end.smc_ib_cleanup_per_ibdev.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex.i) #14
  %event_handler = getelementptr inbounds %struct.smc_ib_device, ptr %client_data, i32 0, i32 3
  tail call void @ib_unregister_event_handler(ptr noundef %event_handler) #14
  %port_event_work = getelementptr inbounds %struct.smc_ib_device, ptr %client_data, i32 0, i32 12
  %call3 = tail call zeroext i1 @cancel_work_sync(ptr noundef %port_event_work) #14
  tail call void @kfree(ptr noundef %client_data) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_ib_port_event_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -280
  %port_event_mask = getelementptr i8, ptr %work, i32 44
  %call = tail call i32 @_find_next_bit_be(ptr noundef %port_event_mask, i32 noundef 2, i32 noundef 0) #14
  %conv159 = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %conv159)
  %cmp60 = icmp ult i32 %conv159, 2
  br i1 %cmp60, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ibdev.i = getelementptr i8, ptr %work, i32 -272
  %ports_going_away = getelementptr i8, ptr %work, i32 48
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %conv161 = phi i32 [ %conv159, %for.body.lr.ph ], [ %conv1, %for.inc.for.body_crit_edge ]
  %add = add nuw nsw i32 %conv161, 1
  %conv4 = trunc i32 %add to i8
  %arrayidx.i = getelementptr %struct.smc_ib_device, ptr %add.ptr, i32 0, i32 2, i32 %conv161
  %0 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 72)
  %1 = ptrtoint ptr %ibdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ibdev.i, align 8
  %call.i = tail call i32 @ib_query_port(ptr noundef %2, i32 noundef %add, ptr noundef %arrayidx.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %for.body.smc_ib_remember_port_attr.exit_crit_edge

for.body.smc_ib_remember_port_attr.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_ib_remember_port_attr.exit

if.end.i:                                         ; preds = %for.body
  %3 = ptrtoint ptr %ibdev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ibdev.i, align 8
  %call.i.i = tail call ptr @rdma_get_gid_attr(ptr noundef %4, i32 noundef %add, i32 noundef 0) #14
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end.i.smc_ib_remember_port_attr.exit_crit_edge, label %smc_ib_fill_mac.exit.i

if.end.i.smc_ib_remember_port_attr.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_ib_remember_port_attr.exit

smc_ib_fill_mac.exit.i:                           ; preds = %if.end.i
  %arrayidx.i.i = getelementptr %struct.smc_ib_device, ptr %add.ptr, i32 0, i32 8, i32 %conv161
  %call3.i.i = tail call i32 @rdma_read_gid_l2_fields(ptr noundef %call.i.i, ptr noundef null, ptr noundef %arrayidx.i.i) #14
  tail call void @rdma_put_gid_attr(ptr noundef %call.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool7.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool7.not.i, label %if.end9.i, label %smc_ib_fill_mac.exit.i.smc_ib_remember_port_attr.exit_crit_edge

smc_ib_fill_mac.exit.i.smc_ib_remember_port_attr.exit_crit_edge: ; preds = %smc_ib_fill_mac.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_ib_remember_port_attr.exit

if.end9.i:                                        ; preds = %smc_ib_fill_mac.exit.i
  %5 = load i32, ptr getelementptr inbounds ([8 x i8], ptr @local_systemid, i32 0, i32 2), align 4
  %6 = load i16, ptr getelementptr inbounds ([8 x i8], ptr @local_systemid, i32 0, i32 6), align 2
  %conv.i.i.i = zext i16 %6 to i32
  %or.i.i.i = or i32 %5, %conv.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i.i.i)
  %cmp.i.i1.not.i = icmp eq i32 %or.i.i.i, 0
  br i1 %cmp.i.i1.not.i, label %land.lhs.true.i, label %if.end9.i.smc_ib_remember_port_attr.exit_crit_edge

if.end9.i.smc_ib_remember_port_attr.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_ib_remember_port_attr.exit

land.lhs.true.i:                                  ; preds = %if.end9.i
  %state.i.i = getelementptr %struct.smc_ib_device, ptr %add.ptr, i32 0, i32 2, i32 %conv161, i32 1
  %7 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %state.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %8)
  %cmp.i.i = icmp eq i32 %8, 4
  br i1 %cmp.i.i, label %if.then13.i, label %land.lhs.true.i.smc_ib_remember_port_attr.exit_crit_edge

land.lhs.true.i.smc_ib_remember_port_attr.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_ib_remember_port_attr.exit

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  %9 = call ptr @memcpy(ptr getelementptr inbounds ([8 x i8], ptr @local_systemid, i32 0, i32 2), ptr %arrayidx.i.i, i32 6)
  br label %smc_ib_remember_port_attr.exit

smc_ib_remember_port_attr.exit:                   ; preds = %if.then13.i, %land.lhs.true.i.smc_ib_remember_port_attr.exit_crit_edge, %if.end9.i.smc_ib_remember_port_attr.exit_crit_edge, %smc_ib_fill_mac.exit.i.smc_ib_remember_port_attr.exit_crit_edge, %if.end.i.smc_ib_remember_port_attr.exit_crit_edge, %for.body.smc_ib_remember_port_attr.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %conv161, ptr noundef %port_event_mask) #14
  %state.i = getelementptr %struct.smc_ib_device, ptr %add.ptr, i32 0, i32 2, i32 %conv161, i32 1
  %10 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %state.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp.i = icmp eq i32 %11, 4
  br i1 %cmp.i, label %if.else, label %if.then

if.then:                                          ; preds = %smc_ib_remember_port_attr.exit
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef %conv161, ptr noundef %ports_going_away) #14
  tail call void @smcr_port_err(ptr noundef %add.ptr, i8 noundef zeroext %conv4) #14
  br label %for.inc

if.else:                                          ; preds = %smc_ib_remember_port_attr.exit
  tail call void @_clear_bit(i32 noundef %conv161, ptr noundef %ports_going_away) #14
  tail call void @smcr_port_add(ptr noundef %add.ptr, i8 noundef zeroext %conv4) #14
  tail call void @_raw_spin_lock_bh(ptr noundef getelementptr inbounds (%struct.smc_lgr_list, ptr @smc_lgr_list, i32 0, i32 1)) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @smc_lgr_list to i32))
  %lgr.058.i = load ptr, ptr @smc_lgr_list, align 4
  %cmp.not59.i = icmp eq ptr %lgr.058.i, @smc_lgr_list
  br i1 %cmp.not59.i, label %if.else.smc_ib_gid_check.exit_crit_edge, label %for.body.lr.ph.i

if.else.smc_ib_gid_check.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_ib_gid_check.exit

for.body.lr.ph.i:                                 ; preds = %if.else
  %arrayidx.i52 = getelementptr %struct.smc_ib_device, ptr %add.ptr, i32 0, i32 9, i32 %conv161
  %gid_tbl_len.i.i = getelementptr %struct.smc_ib_device, ptr %add.ptr, i32 0, i32 2, i32 %conv161, i32 5
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc30.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %lgr.060.i = phi ptr [ %lgr.058.i, %for.body.lr.ph.i ], [ %lgr.0.i, %for.inc30.i.for.body.i_crit_edge ]
  %pnet_id.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.060.i, i32 0, i32 21, i32 0, i32 9
  %call.i53 = tail call i32 @strncmp(ptr noundef %arrayidx.i52, ptr noundef %pnet_id.i, i32 noundef 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i53)
  %tobool.not.i54 = icmp eq i32 %call.i53, 0
  br i1 %tobool.not.i54, label %if.end.i55, label %for.body.i.for.inc30thread-pre-split.i_crit_edge

for.body.i.for.inc30thread-pre-split.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc30thread-pre-split.i

if.end.i55:                                       ; preds = %for.body.i
  %12 = ptrtoint ptr %lgr.060.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %lgr.060.i, align 4
  %cmp.i.not.i = icmp eq ptr %13, %lgr.060.i
  br i1 %cmp.i.not.i, label %if.end.i55.for.inc30.i_crit_edge, label %for.cond7.preheader.i

if.end.i55.for.inc30.i_crit_edge:                 ; preds = %if.end.i55
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc30.i

for.cond7.preheader.i:                            ; preds = %if.end.i55
  %smc_version.i = getelementptr inbounds %struct.smc_link_group, ptr %lgr.060.i, i32 0, i32 16
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc.i.for.body10.i_crit_edge, %for.cond7.preheader.i
  %i.056.i = phi i32 [ 0, %for.cond7.preheader.i ], [ %inc.i, %for.inc.i.for.body10.i_crit_edge ]
  %state.i56 = getelementptr %struct.smc_link_group, ptr %lgr.060.i, i32 0, i32 21, i32 0, i32 1, i32 %i.056.i, i32 54
  %14 = ptrtoint ptr %state.i56 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %state.i56, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp12.i = icmp eq i32 %15, 0
  br i1 %cmp12.i, label %for.body10.i.for.inc.i_crit_edge, label %lor.lhs.false.i

for.body10.i.for.inc.i_crit_edge:                 ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body10.i
  %arrayidx11.i = getelementptr %struct.smc_link_group, ptr %lgr.060.i, i32 0, i32 21, i32 0, i32 1, i32 %i.056.i
  %16 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx11.i, align 8
  %cmp17.not.i = icmp eq ptr %17, %add.ptr
  br i1 %cmp17.not.i, label %if.end20.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

if.end20.i:                                       ; preds = %lor.lhs.false.i
  %gid.i = getelementptr %struct.smc_link_group, ptr %lgr.060.i, i32 0, i32 21, i32 0, i32 1, i32 %i.056.i, i32 34
  %18 = ptrtoint ptr %smc_version.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %smc_version.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %19)
  %cmp25.i = icmp eq i8 %19, 2
  %20 = ptrtoint ptr %gid_tbl_len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %gid_tbl_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i5354.i = icmp sgt i32 %21, 0
  br i1 %cmp.i5354.i, label %if.end20.i.for.body.i.i_crit_edge, label %if.end20.i.if.then28.i_crit_edge

if.end20.i.if.then28.i_crit_edge:                 ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28.i

if.end20.i.for.body.i.i_crit_edge:                ; preds = %if.end20.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %land.rhs.backedge.i.i.for.body.i.i_crit_edge, %if.end20.i.for.body.i.i_crit_edge
  %i.053.i55.i = phi i32 [ %i.053.be.i.i, %land.rhs.backedge.i.i.for.body.i.i_crit_edge ], [ 0, %if.end20.i.for.body.i.i_crit_edge ]
  %22 = ptrtoint ptr %ibdev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ibdev.i, align 8
  %call.i.i57 = tail call ptr @rdma_get_gid_attr(ptr noundef %23, i32 noundef %add, i32 noundef %i.053.i55.i) #14
  %cmp.i.i.i58 = icmp ugt ptr %call.i.i57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i58, label %for.body.i.i.land.rhs.backedge.i.i_crit_edge, label %if.end.i.i

for.body.i.i.land.rhs.backedge.i.i_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.backedge.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %24 = tail call i32 @llvm.read_register.i32(metadata !68) #14
  %and.i.i.i.i.i.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !78
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #14
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i.i.i, label %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end.i.i.rcu_read_lock.exit.i.i_crit_edge:      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end.i.i
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 696, ptr noundef nonnull @.str.4) #14
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %if.end.i.i.rcu_read_lock.exit.i.i_crit_edge
  %gid_type10.i.i = getelementptr inbounds %struct.ib_gid_attr, ptr %call.i.i57, i32 0, i32 3
  %28 = ptrtoint ptr %gid_type10.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %gid_type10.i.i, align 8
  br i1 %cmp25.i, label %land.lhs.true9.critedge.i.i, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp5.i.i = icmp eq i32 %29, 1
  br i1 %cmp5.i.i, label %land.lhs.true.i.i.if.then17.i.i_crit_edge, label %land.lhs.true.i.i.if.end23.i.i_crit_edge

land.lhs.true.i.i.if.end23.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.i.i

land.lhs.true.i.i.if.then17.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then17.i.i

land.lhs.true9.critedge.i.i:                      ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp11.i.i = icmp eq i32 %29, 2
  br i1 %cmp11.i.i, label %land.lhs.true13.i.i, label %land.lhs.true9.critedge.i.i.if.end23.i.i_crit_edge

land.lhs.true9.critedge.i.i.if.end23.i.i_crit_edge: ; preds = %land.lhs.true9.critedge.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.i.i

land.lhs.true13.i.i:                              ; preds = %land.lhs.true9.critedge.i.i
  %gid14.i.i = getelementptr inbounds %struct.ib_gid_attr, ptr %call.i.i57, i32 0, i32 2
  %call.i42.i.i = tail call i32 @__ipv6_addr_type(ptr noundef %gid14.i.i) #14
  %and.i.i = and i32 %call.i42.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool16.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool16.not.i.i, label %land.lhs.true13.i.i.if.then17.i.i_crit_edge, label %land.lhs.true13.i.i.if.end23.i.i_crit_edge

land.lhs.true13.i.i.if.end23.i.i_crit_edge:       ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end23.i.i

land.lhs.true13.i.i.if.then17.i.i_crit_edge:      ; preds = %land.lhs.true13.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then17.i.i

if.then17.i.i:                                    ; preds = %land.lhs.true13.i.i.if.then17.i.i_crit_edge, %land.lhs.true.i.i.if.then17.i.i_crit_edge
  %gid18.i.i = getelementptr inbounds %struct.ib_gid_attr, ptr %call.i.i57, i32 0, i32 2
  %bcmp.i.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %gid.i, ptr noundef dereferenceable(16) %gid18.i.i, i32 16) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i.i)
  %tobool20.not.i.i = icmp eq i32 %bcmp.i.i, 0
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then17.i.i, %land.lhs.true13.i.i.if.end23.i.i_crit_edge, %land.lhs.true9.critedge.i.i.if.end23.i.i_crit_edge, %land.lhs.true.i.i.if.end23.i.i_crit_edge
  %rc.1.off0.i.i = phi i1 [ false, %land.lhs.true13.i.i.if.end23.i.i_crit_edge ], [ false, %land.lhs.true9.critedge.i.i.if.end23.i.i_crit_edge ], [ %tobool20.not.i.i, %if.then17.i.i ], [ false, %land.lhs.true.i.i.if.end23.i.i_crit_edge ]
  %call.i43.i.i = tail call zeroext i1 @rcu_is_watching() #14
  br i1 %call.i43.i.i, label %if.end23.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true.i46.i.i

if.end23.i.i.rcu_read_unlock.exit.i.i_crit_edge:  ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i.i

land.lhs.true.i46.i.i:                            ; preds = %if.end23.i.i
  %call1.i44.i.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44.i.i)
  %tobool.not.i45.i.i = icmp eq i32 %call1.i44.i.i, 0
  br i1 %tobool.not.i45.i.i, label %land.lhs.true.i46.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %land.lhs.true2.i48.i.i

land.lhs.true.i46.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i46.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i.i

land.lhs.true2.i48.i.i:                           ; preds = %land.lhs.true.i46.i.i
  %.b4.i47.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i47.i.i, label %land.lhs.true2.i48.i.i.rcu_read_unlock.exit.i.i_crit_edge, label %if.then.i49.i.i

land.lhs.true2.i48.i.i.rcu_read_unlock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %rcu_read_unlock.exit.i.i

if.then.i49.i.i:                                  ; preds = %land.lhs.true2.i48.i.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.3, i32 noundef 724, ptr noundef nonnull @.str.9) #14
  br label %rcu_read_unlock.exit.i.i

rcu_read_unlock.exit.i.i:                         ; preds = %if.then.i49.i.i, %land.lhs.true2.i48.i.i.rcu_read_unlock.exit.i.i_crit_edge, %land.lhs.true.i46.i.i.rcu_read_unlock.exit.i.i_crit_edge, %if.end23.i.i.rcu_read_unlock.exit.i.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !79
  %30 = tail call i32 @llvm.read_register.i32(metadata !68) #14
  %and.i.i.i.i.i50.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i50.i.i to ptr
  %preempt_count.i.i.i.i51.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i.i.i51.i.i, align 4
  %sub.i.i.i.i.i = add i32 %33, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i51.i.i, align 4
  tail call void @rcu_read_unlock_strict() #14
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #14
  tail call void @rdma_put_gid_attr(ptr noundef %call.i.i57) #14
  br i1 %rc.1.off0.i.i, label %rcu_read_unlock.exit.i.i.for.inc.i_crit_edge, label %rcu_read_unlock.exit.i.i.land.rhs.backedge.i.i_crit_edge

rcu_read_unlock.exit.i.i.land.rhs.backedge.i.i_crit_edge: ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %land.rhs.backedge.i.i

rcu_read_unlock.exit.i.i.for.inc.i_crit_edge:     ; preds = %rcu_read_unlock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.rhs.backedge.i.i:                            ; preds = %rcu_read_unlock.exit.i.i.land.rhs.backedge.i.i_crit_edge, %for.body.i.i.land.rhs.backedge.i.i_crit_edge
  %i.053.be.i.i = add nuw nsw i32 %i.053.i55.i, 1
  %34 = ptrtoint ptr %gid_tbl_len.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %gid_tbl_len.i.i, align 8
  %cmp.i53.i = icmp slt i32 %i.053.be.i.i, %35
  br i1 %cmp.i53.i, label %land.rhs.backedge.i.i.for.body.i.i_crit_edge, label %land.rhs.backedge.i.i.if.then28.i_crit_edge

land.rhs.backedge.i.i.if.then28.i_crit_edge:      ; preds = %land.rhs.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then28.i

land.rhs.backedge.i.i.for.body.i.i_crit_edge:     ; preds = %land.rhs.backedge.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i.i

if.then28.i:                                      ; preds = %land.rhs.backedge.i.i.if.then28.i_crit_edge, %if.end20.i.if.then28.i_crit_edge
  tail call void @smcr_port_err(ptr noundef %add.ptr, i8 noundef zeroext %conv4) #14
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then28.i, %rcu_read_unlock.exit.i.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body10.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.056.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 3
  br i1 %exitcond.not.i, label %for.inc.i.for.inc30thread-pre-split.i_crit_edge, label %for.inc.i.for.body10.i_crit_edge

for.inc.i.for.body10.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body10.i

for.inc.i.for.inc30thread-pre-split.i_crit_edge:  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc30thread-pre-split.i

for.inc30thread-pre-split.i:                      ; preds = %for.inc.i.for.inc30thread-pre-split.i_crit_edge, %for.body.i.for.inc30thread-pre-split.i_crit_edge
  %36 = ptrtoint ptr %lgr.060.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %lgr.0.pr.i = load ptr, ptr %lgr.060.i, align 4
  br label %for.inc30.i

for.inc30.i:                                      ; preds = %for.inc30thread-pre-split.i, %if.end.i55.for.inc30.i_crit_edge
  %lgr.0.i = phi ptr [ %lgr.0.pr.i, %for.inc30thread-pre-split.i ], [ %lgr.060.i, %if.end.i55.for.inc30.i_crit_edge ]
  %cmp.not.i = icmp eq ptr %lgr.0.i, @smc_lgr_list
  br i1 %cmp.not.i, label %for.inc30.i.smc_ib_gid_check.exit_crit_edge, label %for.inc30.i.for.body.i_crit_edge

for.inc30.i.for.body.i_crit_edge:                 ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

for.inc30.i.smc_ib_gid_check.exit_crit_edge:      ; preds = %for.inc30.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %smc_ib_gid_check.exit

smc_ib_gid_check.exit:                            ; preds = %for.inc30.i.smc_ib_gid_check.exit_crit_edge, %if.else.smc_ib_gid_check.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef getelementptr inbounds (%struct.smc_lgr_list, ptr @smc_lgr_list, i32 0, i32 1)) #14
  br label %for.inc

for.inc:                                          ; preds = %smc_ib_gid_check.exit, %if.then
  %call28 = tail call i32 @_find_next_bit_be(ptr noundef %port_event_mask, i32 noundef 2, i32 noundef %add) #14
  %conv1 = and i32 %call28, 255
  %cmp = icmp ult i32 %conv1, 2
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
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_set_client_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @smc_ib_global_event_handler(ptr noundef %handler, ptr nocapture noundef readonly %ibevent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %event = getelementptr inbounds %struct.ib_event, ptr %ibevent, i32 0, i32 2
  %0 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %event, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 8, label %for.cond.preheader
    i32 9, label %sw.bb8
    i32 10, label %sw.bb26
    i32 18, label %sw.bb46
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

for.cond.preheader:                               ; preds = %entry
  %port_event_mask = getelementptr i8, ptr %handler, i32 164
  %ports_going_away = getelementptr i8, ptr %handler, i32 168
  tail call void @_set_bit(i32 noundef 0, ptr noundef %port_event_mask) #14
  %call = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %ports_going_away) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  tail call void @_set_bit(i32 noundef 1, ptr noundef %port_event_mask) #14
  %call.1 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %ports_going_away) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %tobool.not.1 = icmp eq i32 %call.1, 0
  %spec.select.1 = select i1 %tobool.not.1, i1 true, i1 %tobool.not
  br i1 %spec.select.1, label %for.cond.preheader.sw.epilog.sink.split_crit_edge, label %for.cond.preheader.sw.epilog_crit_edge

for.cond.preheader.sw.epilog_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

for.cond.preheader.sw.epilog.sink.split_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

sw.bb8:                                           ; preds = %entry
  %element = getelementptr inbounds %struct.ib_event, ptr %ibevent, i32 0, i32 1
  %3 = ptrtoint ptr %element to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %element, align 4
  %conv9 = add i32 %4, 255
  %conv10 = and i32 %conv9, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv10)
  %cmp11 = icmp ugt i32 %conv10, 1
  br i1 %cmp11, label %sw.bb8.sw.epilog_crit_edge, label %if.end14

sw.bb8.sw.epilog_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end14:                                         ; preds = %sw.bb8
  %port_event_mask16 = getelementptr i8, ptr %handler, i32 164
  tail call void @_set_bit(i32 noundef %conv10, ptr noundef %port_event_mask16) #14
  %ports_going_away18 = getelementptr i8, ptr %handler, i32 168
  %call20 = tail call i32 @_test_and_clear_bit(i32 noundef %conv10, ptr noundef %ports_going_away18) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end14.sw.epilog_crit_edge, label %if.end14.sw.epilog.sink.split_crit_edge

if.end14.sw.epilog.sink.split_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

if.end14.sw.epilog_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %element27 = getelementptr inbounds %struct.ib_event, ptr %ibevent, i32 0, i32 1
  %5 = ptrtoint ptr %element27 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %element27, align 4
  %conv29 = add i32 %6, 255
  %conv30 = and i32 %conv29, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv30)
  %cmp31 = icmp ugt i32 %conv30, 1
  br i1 %cmp31, label %sw.bb26.sw.epilog_crit_edge, label %if.end34

sw.bb26.sw.epilog_crit_edge:                      ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end34:                                         ; preds = %sw.bb26
  %port_event_mask36 = getelementptr i8, ptr %handler, i32 164
  tail call void @_set_bit(i32 noundef %conv30, ptr noundef %port_event_mask36) #14
  %ports_going_away38 = getelementptr i8, ptr %handler, i32 168
  %call40 = tail call i32 @_test_and_set_bit(i32 noundef %conv30, ptr noundef %ports_going_away38) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end34.sw.epilog.sink.split_crit_edge, label %if.end34.sw.epilog_crit_edge

if.end34.sw.epilog_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end34.sw.epilog.sink.split_crit_edge:          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

sw.bb46:                                          ; preds = %entry
  %element47 = getelementptr inbounds %struct.ib_event, ptr %ibevent, i32 0, i32 1
  %7 = ptrtoint ptr %element47 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %element47, align 4
  %conv49 = add i32 %8, 255
  %conv50 = and i32 %conv49, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv50)
  %cmp51 = icmp ugt i32 %conv50, 1
  br i1 %cmp51, label %sw.bb46.sw.epilog_crit_edge, label %if.end54

sw.bb46.sw.epilog_crit_edge:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

if.end54:                                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #16
  %port_event_mask56 = getelementptr i8, ptr %handler, i32 164
  tail call void @_set_bit(i32 noundef %conv50, ptr noundef %port_event_mask56) #14
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end54, %if.end34.sw.epilog.sink.split_crit_edge, %if.end14.sw.epilog.sink.split_crit_edge, %for.cond.preheader.sw.epilog.sink.split_crit_edge
  %port_event_work43 = getelementptr i8, ptr %handler, i32 120
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %9 = load ptr, ptr @system_wq, align 4
  %call.i.i85 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %9, ptr noundef %port_event_work43) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb46.sw.epilog_crit_edge, %if.end34.sw.epilog_crit_edge, %sw.bb26.sw.epilog_crit_edge, %if.end14.sw.epilog_crit_edge, %sw.bb8.sw.epilog_crit_edge, %for.cond.preheader.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_register_event_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smc_pnetid_by_table_ib(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smcr_port_err(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smcr_port_add(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ib_query_port(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rdma_read_gid_l2_fields(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ipv6_addr_type(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_smcr_terminate_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ib_unregister_event_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @smc_wr_remove_dev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind readonly }
attributes #8 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !15, !16, !17, !18, !20, !21, !23, !24, !26, !27, !28, !30, !32, !34, !35, !37, !39, !41, !42, !44, !45, !47, !48, !50, !51, !52, !53, !54, !55, !57, !58, !59, !60, !61, !62, !64, !65, !66, !67}
!llvm.named.register.sp = !{!68}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/smc/smc_ib.c", i32 41, i32 11}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @smc_ib_devices, !4, !"smc_ib_devices", i1 false, i1 false}
!4 = !{!"../net/smc/smc_ib.c", i32 40, i32 23}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/smc/smc_ib.c", i32 456, i32 17}
!7 = !{ptr @local_systemid, !8, !"local_systemid", i1 false, i1 false}
!8 = !{!"../net/smc/smc_ib.c", i32 45, i32 4}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/smc/smc_ib.c", i32 243, i32 3}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/inetdevice.h", i32 232, i32 9}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/rdma/ib_verbs.h", i32 3498, i32 2}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../net/smc/smc_ib.c", i32 576, i32 43}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../include/net/netlink.h", i32 991, i32 3}
!32 = distinct !{null, !33, !"__already_done", i1 false, i1 false}
!33 = !{!"../include/rdma/ib_verbs.h", i32 3936, i32 2}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../net/smc/smc_ib.c", i32 972, i32 10}
!37 = !{ptr @smc_ib_client, !38, !"smc_ib_client", i1 false, i1 false}
!38 = !{!"../net/smc/smc_ib.c", i32 971, i32 25}
!39 = !{ptr @smc_ib_add_dev.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../net/smc/smc_ib.c", i32 917, i32 2}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @smc_ib_add_dev.__key.17, !43, !"__key", i1 false, i1 false}
!43 = !{!"../net/smc/smc_ib.c", i32 919, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @smc_ib_add_dev.__key.19, !46, !"__key", i1 false, i1 false}
!46 = !{!"../net/smc/smc_ib.c", i32 920, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../net/smc/smc_ib.c", i32 931, i32 2}
!50 = !{ptr @smc_ib_add_dev._rs, !49, !"_rs", i1 false, i1 false}
!51 = !{ptr @__func__.smc_ib_add_dev, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @smc_ib_add_dev._entry, !49, !"_entry", i1 false, i1 false}
!54 = !{ptr @smc_ib_add_dev._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @smc_ib_add_dev._rs.23, !56, !"_rs", i1 false, i1 false}
!56 = !{!"../net/smc/smc_ib.c", i32 942, i32 3}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @smc_ib_add_dev._entry.24, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @smc_ib_add_dev._entry_ptr.26, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @smc_ib_remove_dev._rs, !63, !"_rs", i1 false, i1 false}
!63 = !{!"../net/smc/smc_ib.c", i32 962, i32 2}
!64 = !{ptr @__func__.smc_ib_remove_dev, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @smc_ib_remove_dev._entry, !63, !"_entry", i1 false, i1 false}
!67 = !{ptr @smc_ib_remove_dev._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!68 = !{!"sp"}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 2149689604}
!79 = !{i64 2149689870}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i8 0, i8 2}
!82 = !{!"branch_weights", i32 1, i32 2000}
!83 = !{i64 785448, i64 785509}
!84 = !{i64 788180}
!85 = !{i64 788465}
